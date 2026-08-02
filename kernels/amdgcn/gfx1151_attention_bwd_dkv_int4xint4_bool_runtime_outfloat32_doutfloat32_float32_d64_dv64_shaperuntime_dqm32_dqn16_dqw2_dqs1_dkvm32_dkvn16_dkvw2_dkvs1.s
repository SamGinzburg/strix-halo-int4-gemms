	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[36:39], s[0:1], 0x94
	s_load_b128 s[48:51], s[0:1], 0x64
	v_mov_b32_e32 v53, v0
	s_clause 0x2
	s_load_b64 s[76:77], s[0:1], 0x78
	s_load_b128 s[24:27], s[0:1], 0x8
	s_load_b128 s[20:23], s[0:1], 0x20
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
.Ltmp0:
	.loc	1 514 33 prologue_end           ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v8, 5, v53
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v1, 2, v8
	v_or_b32_e32 v2, 4, v8
	v_or_b32_e32 v3, 6, v8
	v_or_b32_e32 v4, 8, v8
	v_or_b32_e32 v6, 12, v8
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v1, off offset:28
	scratch_store_b32 off, v2, off offset:32
	scratch_store_b32 off, v3, off offset:36
	scratch_store_b32 off, v4, off offset:40
	s_waitcnt lgkmcnt(0)
	s_and_b32 s4, 1, s36
	s_bitcmp1_b32 s36, 8
	v_or_b32_e32 v5, 10, v8
	s_cselect_b32 s79, -1, 0
	s_cmp_eq_u32 s4, 1
	v_or_b32_e32 v7, 14, v8
	s_cselect_b32 s80, -1, 0
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_abs_i32 s35, s49
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_abs_i32 s5, s3
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cvt_f32_u32 s4, s35
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s33, s2, 4
	.loc	1 521 24                        ; attention_backward.py:521:24
	s_mul_i32 s78, s3, s51
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v2, s33, v2
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_rcp_iflag_f32_e32 v0, s4
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v3, s33, v3
	v_or_b32_e32 v4, s33, v4
	v_or_b32_e32 v1, s33, v1
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s14, s51, v2
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_and_b32_e32 v2, 31, v53
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s15, s51, v3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_3)
	.loc	1 513 22                        ; attention_backward.py:513:22
	v_readfirstlane_b32 s4, v0
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, s33, v8
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_cvt_u32_f32 s43, s4
	s_sub_i32 s4, 0, s35
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s4, s4, s43
	s_mul_hi_u32 s4, s43, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s43, s43, s4
	.loc	1 511 23                        ; attention_backward.py:511:23
	s_mul_hi_u32 s4, s5, s43
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s4, s35
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
	s_ashr_i32 s40, s48, 31
	s_ashr_i32 s41, s49, 31
	s_abs_i32 s42, s48
	.loc	1 514 23                        ; attention_backward.py:514:23
	s_or_b32 s4, s33, 1
	s_or_b32 s5, s33, 2
	s_or_b32 s6, s33, 3
	s_or_b32 s7, s33, 4
	s_or_b32 s8, s33, 5
	s_or_b32 s10, s33, 6
	s_or_b32 s11, s33, 7
	s_or_b32 s12, s33, 8
	s_or_b32 s13, s33, 9
	s_or_b32 s16, s33, 10
	s_or_b32 s17, s33, 11
	s_or_b32 s18, s33, 12
	s_or_b32 s19, s33, 13
	s_or_b32 s28, s33, 14
	s_or_b32 s29, s33, 15
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cmp_lt_i32 s33, s51
	s_cselect_b32 s53, -1, 0
	s_cmp_lt_i32 s4, s51
	v_cmp_gt_i32_e64 s4, s51, v0
	s_cselect_b32 vcc_lo, -1, 0
	s_cmp_lt_i32 s5, s51
	s_cselect_b32 s54, -1, 0
	s_cmp_lt_i32 s6, s51
	s_cselect_b32 s6, -1, 0
	s_cmp_lt_i32 s7, s51
	v_cmp_gt_i32_e64 s7, s51, v1
	s_cselect_b32 s52, -1, 0
	s_cmp_lt_i32 s8, s51
	s_cselect_b32 s9, -1, 0
	s_cmp_lt_i32 s10, s51
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s11, s51
	s_cselect_b32 s5, -1, 0
	s_cmp_lt_i32 s12, s51
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s13, s51
	s_cselect_b32 s8, -1, 0
	s_cmp_lt_i32 s16, s51
	v_cmp_gt_i32_e64 s16, s51, v4
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[3:4], null, s76, v8, v[2:3]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s45, -1, 0
	s_cmp_lt_i32 s17, s51
	s_cselect_b32 s10, -1, 0
	s_cmp_lt_i32 s18, s51
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v1, s76, 1, v3
	v_mov_b32_e32 v0, v3
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v5, off offset:44
	scratch_store_b32 off, v8, off offset:24
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v5, s33, v5
	scratch_store_b32 off, v6, off offset:48 ; 4-byte Folded Spill
	v_or_b32_e32 v6, s33, v6
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s44, -1, 0
	s_cmp_lt_i32 s19, s51
	v_cmp_gt_i32_e64 s17, s51, v5
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_lshl_add_u32 v5, s76, 2, v3
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v7, off offset:52
	scratch_store_b64 off, v[0:1], off offset:16
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v7, s33, v7
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s18, s51, v6
	s_cselect_b32 s11, -1, 0
	s_cmp_lt_i32 s28, s51
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[8:9], null, s76, 10, v[3:4]
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s19, s51, v7
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[6:7], null, s76, 6, v[3:4]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s55, -1, 0
	s_cmp_lt_i32 s29, s51
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[9:10], null, s76, 12, v[3:4]
	.loc	1 517 21                        ; attention_backward.py:517:21
	s_cselect_b32 s12, -1, 0
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_add_i32 s56, s78, s33
	v_lshl_add_u32 v7, s76, 3, v3
	s_mul_i32 s28, s56, s76
	v_mad_u64_u32 v[10:11], null, s76, 14, v[3:4]
	v_add_nc_u32_e32 v0, s28, v3
	v_dual_mov_b32 v4, v6 :: v_dual_add_nc_u32 v3, s28, v5
	scratch_store_b32 off, v1, off offset:56 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, s28, v1
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v44, 0, v53
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b32 off, v5, off offset:60
	scratch_store_b32 off, v7, off offset:72
	scratch_store_b64 off, v[4:5], off offset:64
	v_add_nc_u32_e32 v4, s28, v6
	v_dual_mov_b32 v6, v8 :: v_dual_add_nc_u32 v5, s28, v7
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_and_b32 s29, s25, 0xffff
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_u32 v43, v53, 4, 1
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xor_b32_e32 v11, 0x198, v53
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[6:7], off offset:76 ; 8-byte Folded Spill
	v_mov_b32_e32 v7, v9
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_cmp_gt_i32_e64 s13, s76, v2
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_add_nc_u32_e32 v6, s28, v8
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v12, s33, v43
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_add_lshl_u32 v17, s56, v43, 1
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[7:8], off offset:84 ; 8-byte Folded Spill
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s4, s13
	v_mov_b32_e32 v8, v10
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v0, 0x80000000, v0, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s7, s13
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_add_nc_u32_e32 v7, s28, v9
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s14, s13
	.loc	1 523 17                        ; attention_backward.py:523:17
	scratch_store_b64 off, v[8:9], off offset:92 ; 8-byte Folded Spill
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s15, s13
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_add_nc_u32_e32 v8, s28, v10
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s16, s13
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_mov_b32 s28, s24
	v_cndmask_b32_e64 v5, 0x80000000, v5, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s17, s13
	.loc	1 542 37                        ; attention_backward.py:542:37
	s_add_i32 s7, s51, 15
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s18, s13
	.loc	1 542 36                        ; attention_backward.py:542:36
	s_ashr_i32 s14, s7, 31
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v7, 0x80000000, v7, s4
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 s4, s19, s13
	.loc	1 542 36                        ; attention_backward.py:542:36
	s_lshr_b32 s14, s14, 28
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e64 v8, 0x80000000, v8, s4
	s_clause 0x7
	buffer_load_u8 v9, v0, s[28:31], 0 offen
	buffer_load_u8 v10, v1, s[28:31], 0 offen
	buffer_load_u8 v3, v3, s[28:31], 0 offen
	buffer_load_u8 v4, v4, s[28:31], 0 offen
	buffer_load_u8 v5, v5, s[28:31], 0 offen
	buffer_load_u8 v6, v6, s[28:31], 0 offen
	buffer_load_u8 v7, v7, s[28:31], 0 offen
	buffer_load_u8 v8, v8, s[28:31], 0 offen
	v_xor_b32_e32 v0, 0x88, v53
	v_xor_b32_e32 v1, 0x110, v53
	.loc	1 542 36                        ; attention_backward.py:542:36
	s_add_i32 s14, s7, s14
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s7, s51, v12
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v32, 0, v11
	v_add_nc_u32_e32 v122, 0, v0
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, 2, v12
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v205, 0, v1
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v1, 4, v12
	v_or_b32_e32 v11, 6, v12
	v_or_b32_e32 v13, 8, v12
	v_or_b32_e32 v14, 10, v12
	v_or_b32_e32 v15, 12, v12
	v_or_b32_e32 v16, 14, v12
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v12, 0x80000000, v17, s7
	.loc	1 542 36                        ; attention_backward.py:542:36
	s_ashr_i32 s7, s14, 4
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v18, 4, v17
	.loc	1 542 35                        ; attention_backward.py:542:35
	s_lshl_b32 s14, s7, 3
	.loc	1 565 17                        ; attention_backward.py:565:17
	s_mul_i32 s16, s3, s7
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s7, s51, v0
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v19, 8, v17
	v_add_nc_u32_e32 v20, 12, v17
	v_add_nc_u32_e32 v21, 16, v17
	v_add_nc_u32_e32 v22, 20, v17
	v_cndmask_b32_e64 v18, 0x80000000, v18, s7
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s7, s51, v1
	.loc	1 541 32                        ; attention_backward.py:541:32
	s_ashr_i32 s15, s33, 1
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_and_b32 s29, s21, 0xffff
	.loc	1 549 23                        ; attention_backward.py:549:23
	s_cmp_lt_i32 s15, s14
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v23, 24, v17
	v_cndmask_b32_e64 v19, 0x80000000, v19, s7
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s7, s51, v11
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s4, s77, v53
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_add_nc_u32_e32 v17, 28, v17
	s_mov_b32 s28, s20
	scratch_store_b32 off, v44, off offset:100 ; 4-byte Folded Spill
	v_cndmask_b32_e64 v11, 0x80000000, v20, s7
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s7, s51, v13
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt vmcnt(6)
	ds_store_b8 v44, v10 offset:64
	s_waitcnt vmcnt(5)
	ds_store_b8 v122, v3
	s_waitcnt vmcnt(4)
	ds_store_b8 v122, v4 offset:64
	s_waitcnt vmcnt(3)
	ds_store_b8 v205, v5
	s_waitcnt vmcnt(2)
	ds_store_b8 v205, v6 offset:64
	s_waitcnt vmcnt(1)
	ds_store_b8 v32, v7
	s_waitcnt vmcnt(0)
	ds_store_b8 v32, v8 offset:64
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v20, 0x80000000, v21, s7
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s7, s51, v14
	.loc	1 522 24                        ; attention_backward.py:522:24
	ds_store_b8 v44, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v10, 12, v53
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v14, 0x80000000, v22, s7
	.loc	1 543 26                        ; attention_backward.py:543:26
	s_mul_i32 s7, s3, s14
	.loc	1 549 23                        ; attention_backward.py:549:23
	s_cselect_b32 s14, -1, 0
	.loc	1 545 17                        ; attention_backward.py:545:17
	s_add_i32 s7, s7, s15
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_bfe_i32 s15, s2, 0x1c0000
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_mad_u64_u32 v[0:1], null, s7, s77, v[53:54]
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, s51, v15
	.loc	1 568 17                        ; attention_backward.py:568:17
	s_add_i32 s7, s16, s15
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v54, 15, v53
	.loc	1 568 17                        ; attention_backward.py:568:17
	s_mul_i32 s7, s7, s77
	.loc	1 588 9                         ; attention_backward.py:588:9
	scratch_store_b32 off, v43, off offset:976 ; 4-byte Folded Spill
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_add_lshl_u32 v22, s7, v53, 1
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v13, s77, v0
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v1, 0x80000000, v23, s2
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, s51, v16
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s7, s53, s4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v16, s77, v13
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v23, 0x80000000, v22, s7
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s7, vcc_lo, s4
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v15, 0x80000000, v17, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v24, 0x80000000, v22, s7
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v17, s77, v16
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s7, s54, s4
	.loc	1 549 22                        ; attention_backward.py:549:22
	s_and_b32 s2, s14, s4
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v25, 0x80000000, v22, s7
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s7, s6, s4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v21, s77, v17
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v26, 0x80000000, v22, s7
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s7, s52, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v40, 0x80000000, v13, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v27, 0x80000000, v22, s7
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s7, s9, s4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v37, s77, v21
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v28, 0x80000000, v22, s7
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s7, s47, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v0, 0x80000000, v0, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v29, 0x80000000, v22, s7
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s7, s5, s4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v13, s77, v37
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v30, 0x80000000, v22, s7
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s7, s46, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v41, 0x80000000, v21, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v31, 0x80000000, v22, s7
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s7, s8, s4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v21, s77, v13
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v33, 0x80000000, v22, s7
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s7, s45, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v16, 0x80000000, v16, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v34, 0x80000000, v22, s7
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s7, s10, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v35, 0x80000000, v22, s7
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s7, s44, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v42, 0x80000000, v13, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v36, 0x80000000, v22, s7
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s7, s11, s4
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_clause 0x7
	buffer_load_u16 v13, v12, s[28:31], 0 offen
	buffer_load_u16 v9, v18, s[28:31], 0 offen
	buffer_load_u16 v8, v19, s[28:31], 0 offen
	buffer_load_u16 v7, v11, s[28:31], 0 offen
	buffer_load_u16 v6, v20, s[28:31], 0 offen
	buffer_load_u16 v5, v14, s[28:31], 0 offen
	buffer_load_u16 v4, v1, s[28:31], 0 offen
	buffer_load_u16 v3, v15, s[28:31], 0 offen
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_and_b32 s29, s27, 0xffff
	s_mov_b32 s28, s26
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v38, 0x80000000, v22, s7
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s7, s55, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v37, 0x80000000, v37, s2
	v_cndmask_b32_e64 v1, 0x80000000, v21, s2
	s_clause 0x7
	buffer_load_u8 v20, v0, s[28:31], 0 offen
	buffer_load_u8 v21, v40, s[28:31], 0 offen
	buffer_load_u8 v16, v16, s[28:31], 0 offen
	buffer_load_u8 v17, v17, s[28:31], 0 offen
	buffer_load_u8 v18, v41, s[28:31], 0 offen
	buffer_load_u8 v19, v37, s[28:31], 0 offen
	buffer_load_u8 v14, v42, s[28:31], 0 offen
	buffer_load_u8 v15, v1, s[28:31], 0 offen
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_and_b32 s29, s23, 0xffff
	s_mov_b32 s28, s22
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s2, s12, s4
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v39, 0x80000000, v22, s7
	v_cndmask_b32_e64 v0, 0x80000000, v22, s2
	s_clause 0xf
	buffer_load_u16 v1, v23, s[28:31], 0 offen
	buffer_load_u16 v22, v24, s[28:31], 0 offen
	buffer_load_u16 v23, v25, s[28:31], 0 offen
	buffer_load_u16 v24, v26, s[28:31], 0 offen
	buffer_load_u16 v25, v27, s[28:31], 0 offen
	buffer_load_u16 v26, v28, s[28:31], 0 offen
	buffer_load_u16 v27, v29, s[28:31], 0 offen
	buffer_load_u16 v28, v30, s[28:31], 0 offen
	buffer_load_u16 v29, v31, s[28:31], 0 offen
	buffer_load_u16 v30, v33, s[28:31], 0 offen
	buffer_load_u16 v31, v34, s[28:31], 0 offen
	buffer_load_u16 v33, v35, s[28:31], 0 offen
	buffer_load_u16 v34, v36, s[28:31], 0 offen
	buffer_load_u16 v35, v38, s[28:31], 0 offen
	buffer_load_u16 v36, v39, s[28:31], 0 offen
	buffer_load_u16 v37, v0, s[28:31], 0 offen
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshlrev_b32_e32 v11, 5, v54
	v_lshlrev_b32_e32 v12, 1, v10
	.loc	1 587 22                        ; attention_backward.py:587:22
	s_add_i32 s2, s50, 31
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v0, 32, v53
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_ashr_i32 s7, s2, 31
	s_mov_b32 s14, 0
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_or_b32_e32 v38, v11, v12
	.loc	1 587 21                        ; attention_backward.py:587:21
	s_lshr_b32 s7, s7, 27
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_add_i32 s7, s2, s7
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_hi_u32 s2, s42, s43
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v39, 0, v38
	v_xad_u32 v40, v38, 8, 0
	v_xad_u32 v41, v38, 16, 0
	v_xad_u32 v38, v38, 24, 0
	.loc	1 587 20                        ; attention_backward.py:587:20
	s_and_b32 s82, s7, 0xffffffe0
	.loc	1 522 24                        ; attention_backward.py:522:24
	ds_load_b64 v[44:45], v39
	ds_load_b64 v[39:40], v40
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_bfe_u32 s7, s36, 0x10008
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt lgkmcnt(1)
	scratch_store_b64 off, v[44:45], off offset:104 ; 8-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[39:40], off offset:112 ; 8-byte Folded Spill
	ds_load_b64 v[39:40], v41
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[39:40], off offset:120 ; 8-byte Folded Spill
	ds_load_b64 v[38:39], v38
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[38:39], off offset:128 ; 8-byte Folded Spill
	s_waitcnt vmcnt(15)
	v_mov_b16_e32 v56.h, v1.l
	s_waitcnt vmcnt(14)
	v_mov_b16_e32 v17.h, v22.l
	s_waitcnt vmcnt(13)
	v_mov_b16_e32 v18.h, v23.l
	s_waitcnt vmcnt(12)
	v_mov_b16_e32 v19.h, v24.l
	s_waitcnt vmcnt(11)
	v_mov_b16_e32 v20.h, v25.l
	s_waitcnt vmcnt(10)
	v_mov_b16_e32 v21.h, v26.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e32 v22.h, v27.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e32 v23.h, v28.l
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v24.h, v29.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v25.h, v30.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v26.h, v31.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v27.h, v33.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v28.h, v34.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v14.h, v35.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v15.h, v36.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v16.h, v37.l
	.loc	1 588 9                         ; attention_backward.py:588:9
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s7, s33, s37
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_add_i32 s15, s38, s39
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_sub_i32 s7, s7, s39
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_sub_i32 s15, s33, s15
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s7, s7, 16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 592 17                        ; attention_backward.py:592:17
	s_min_i32 s7, s50, s7
	.loc	1 590 24                        ; attention_backward.py:590:24
	s_max_i32 s7, s7, 0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 600 19                        ; attention_backward.py:600:19
	s_add_i32 s7, s7, 31
	.loc	1 600 18 is_stmt 0              ; attention_backward.py:600:18
	s_ashr_i32 s14, s7, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s14, s14, 27
	s_add_i32 s7, s7, s14
	.loc	1 589 24 is_stmt 1              ; attention_backward.py:589:24
	s_max_i32 s14, s15, 0
	.loc	1 600 17                        ; attention_backward.py:600:17
	s_and_not1_b32 s7, s7, 31
	.loc	1 597 45                        ; attention_backward.py:597:45
	s_and_b32 s14, s14, 0x7fffffe0
	.loc	1 598 24                        ; attention_backward.py:598:24
	s_min_i32 s82, s82, s7
.LBB0_2:
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v56.l, 0
	.loc	1 556 28 is_stmt 0              ; attention_backward.py:556:28
	v_lshrrev_b16 v37.l, 4, v20.l
	.loc	1 554 72 is_stmt 1              ; attention_backward.py:554:72
	v_and_b16 v3.h, v20.l, 15
	v_and_b16 v4.h, v21.l, 15
	v_and_b16 v5.h, v16.l, 15
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v37.h, v56.l
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v30, 15, v16
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v6.h, v17.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v38.l, 4, v21.l
	v_lshrrev_b16 v40.l, 4, v17.l
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v37, 0, v37, vcc_lo
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v47, -16, v30
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v1, 15, v20
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.h
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v38.h, v56.l
	v_mov_b16_e32 v40.h, v56.l
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v7.h, v18.l, 15
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v45, -16, v1
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v34, 15, v19
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v38, 0, v38, s6
	v_cndmask_b32_e64 v40, 0, v40, s5
	.loc	1 554 72 is_stmt 0              ; attention_backward.py:554:72
	v_and_b16 v8.h, v19.l, 15
	.loc	1 557 25 is_stmt 1              ; attention_backward.py:557:25
	v_cndmask_b32_e32 v1, v1, v45, vcc_lo
	.loc	1 557 50 is_stmt 0              ; attention_backward.py:557:50
	v_or_b32_e32 v50, -16, v34
	.loc	1 555 25 is_stmt 1              ; attention_backward.py:555:25
	v_and_b32_e32 v29, 15, v21
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v4.h
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v42.l, 4, v19.l
	v_lshrrev_b16 v44.l, 4, v15.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_mov_b16_e32 v42.h, v56.l
	.loc	1 557 50 is_stmt 1              ; attention_backward.py:557:50
	v_or_b32_e32 v46, -16, v29
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v36, 15, v15
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v44.h, v56.l
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v9.h, v14.l, 15
	.loc	1 554 28 is_stmt 0              ; attention_backward.py:554:28
	v_cndmask_b32_e64 v42, 0, v42, s10
	.loc	1 557 25 is_stmt 1              ; attention_backward.py:557:25
	v_cndmask_b32_e32 v29, v29, v46, vcc_lo
	.loc	1 557 50 is_stmt 0              ; attention_backward.py:557:50
	v_or_b32_e32 v52, -16, v36
	.loc	1 555 25 is_stmt 1              ; attention_backward.py:555:25
	v_and_b32_e32 v31, 15, v17
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v5.h
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v46, -16, v38
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v44, 0, v44, s12
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v35, 15, v14
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v48, -16, v31
	.loc	1 557 25 is_stmt 0              ; attention_backward.py:557:25
	v_cndmask_b32_e32 v30, v30, v47, vcc_lo
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v6.h
	.loc	1 554 72 is_stmt 1              ; attention_backward.py:554:72
	v_and_b16 v13.h, v15.l, 15
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v51, -16, v35
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v41.l, 4, v18.l
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v29, v29
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v31, v31, v48, vcc_lo
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v48, -16, v40
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v33, 15, v18
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v7.h
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v18.l, v56.l
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v39.l, 4, v16.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_mov_b16_e32 v39.h, v56.l
	.loc	1 557 50 is_stmt 1              ; attention_backward.py:557:50
	v_or_b32_e32 v49, -16, v33
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v45, -16, v37
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v20.l, v56.l
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v30, v30
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v39, 0, v39, s9
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v33, v33, v49, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v8.h
	.loc	1 556 26 is_stmt 1              ; attention_backward.py:556:26
	v_mov_b16_e32 v41.h, v56.l
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v24.l, v56.l
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v47, -16, v39
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v43.l, 4, v14.l
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v34, v34, v50, vcc_lo
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v9.h
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e64 v41, 0, v41, s8
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v43.h, v56.l
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v50, -16, v42
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v22.l, v56.l
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_dual_cndmask_b32 v35, v35, v51 :: v_dual_mul_f32 v18, v29, v18
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e32 vcc_lo, 7, v13.h
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v49, -16, v41
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e64 v43, 0, v43, s11
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v26.l, v56.l
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v1, v1
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e32 v36, v36, v52, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v37
	.loc	1 558 52 is_stmt 0              ; attention_backward.py:558:52
	v_or_b32_e32 v51, -16, v43
	v_or_b32_e32 v52, -16, v44
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v34, v34
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v19.l, v56.l
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_dual_cndmask_b32 v37, v37, v45 :: v_dual_mul_f32 v20, v30, v20
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v38
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_mov_b16_e32 v14.l, v56.l
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_mul_i32 s7, s2, s35
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v17.l, v56.l
	v_mov_b16_e32 v15.l, v56.l
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v38, v38, v46, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v39
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v31, v31
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v16.l, v56.l
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v39, v39, v47, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v40
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_mul_f32_e32 v26, v34, v26
	v_cvt_f32_i32_e32 v36, v36
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_sub_i32 s7, s42, s7
	s_xor_b32 s15, s40, s41
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v40, v40, v48, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v41
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_add_i32 s16, s2, 1
	s_sub_i32 s17, s7, s35
	s_cmp_ge_u32 s7, s35
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v21.l, v56.l
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_dual_cndmask_b32 v41, v41, v49 :: v_dual_mul_f32 v22, v31, v22
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v42
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_mov_b16_e32 v28.l, v56.l
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v35, v35
	v_mul_f32_e32 v17, v37, v17
	v_dual_mul_f32 v31, v36, v15 :: v_dual_cndmask_b32 v42, v42, v50
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v43
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v33, v33
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cselect_b32 s2, s16, s2
	s_cselect_b32 s7, s17, s7
	s_add_i32 s16, s2, 1
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v43, v43, v51, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v44
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_mul_f32_e32 v24, v33, v24
	v_cvt_f32_i32_e32 v39, v39
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_cmp_ge_u32 s7, s35
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v43, v43
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v44, v44, v52, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v1, v1, v56
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v178, s33, v54
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v21, v39, v21
	v_mul_f32_e32 v30, v43, v14
	v_cvt_f32_i32_e32 v44, v44
	v_mul_f32_e32 v19, v38, v19
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_bfe_u32 v29, v1, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v28, v35, v28
	v_mul_f32_e32 v16, v44, v16
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_bfe_u32 v14, v17, 16, 1
	v_add3_u32 v15, v1, v29, 0x7fff
	v_bfe_u32 v1, v19, 16, 1
	v_cmp_o_f32_e64 s6, v19, v19
	.loc	1 513 22 is_stmt 1              ; attention_backward.py:513:22
	s_cselect_b32 s2, s16, s2
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v23.l, v56.l
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_xor_b32 s2, s2, s15
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_add3_u32 v1, v19, v1, 0x7fff
	.loc	1 575 27 is_stmt 0              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v40, v40
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_bfe_u32 v29, v18, 16, 1
	.loc	1 517 21 is_stmt 1              ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s7, s51, v178
	.loc	1 513 22                        ; attention_backward.py:513:22
	s_sub_i32 s51, s2, s15
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v25.l, v56.l
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_add3_u32 v14, v17, v14, 0x7fff
	v_cmp_o_f32_e64 s2, v17, v17
	v_cndmask_b16 v3.h, 0x7fff, v15.h, vcc_lo
	v_bfe_u32 v15, v20, 16, 1
	v_cndmask_b16 v6.h, 0x7fff, v1.h, s6
	v_bfe_u32 v1, v21, 16, 1
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x50
	s_load_b32 s81, s[0:1], 0x74
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v23, v40, v23
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_add3_u32 v17, v18, v29, 0x7fff
	v_cmp_o_f32_e64 s5, v18, v18
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v25, v41, v25
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cndmask_b16 v4.h, 0x7fff, v14.h, s2
	v_add3_u32 v14, v20, v15, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_add3_u32 v1, v21, v1, 0x7fff
	v_cmp_o_f32_e64 s2, v21, v21
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_mov_b16_e32 v27.l, v56.l
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v42, v42
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_cndmask_b16 v5.h, 0x7fff, v17.h, s5
	v_bfe_u32 v15, v22, 16, 1
	v_bfe_u32 v17, v23, 16, 1
	v_cndmask_b16 v7.h, 0x7fff, v14.h, vcc_lo
	v_bfe_u32 v14, v24, 16, 1
	v_cndmask_b16 v8.h, 0x7fff, v1.h, s2
	v_bfe_u32 v1, v25, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v27, v42, v27
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_add3_u32 v15, v22, v15, 0x7fff
	v_cmp_o_f32_e64 s5, v22, v22
	v_add3_u32 v17, v23, v17, 0x7fff
	v_cmp_o_f32_e64 s6, v23, v23
	v_add3_u32 v14, v24, v14, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	v_add3_u32 v1, v25, v1, 0x7fff
	v_cmp_o_f32_e64 s2, v25, v25
	v_cndmask_b16 v9.h, 0x7fff, v15.h, s5
	v_cndmask_b16 v13.h, 0x7fff, v17.h, s6
	v_bfe_u32 v15, v26, 16, 1
	v_bfe_u32 v17, v27, 16, 1
	v_cndmask_b16 v14.l, 0x7fff, v14.h, vcc_lo
	v_cndmask_b16 v14.h, 0x7fff, v1.h, s2
	v_bfe_u32 v1, v30, 16, 1
                                        ; implicit-def: $vgpr255 : SGPR spill to VGPR lane
	v_add3_u32 v15, v26, v15, 0x7fff
	s_waitcnt lgkmcnt(0)
	v_writelane_b32 v255, s16, 0
	v_cmp_o_f32_e64 s5, v26, v26
	v_add3_u32 v17, v27, v17, 0x7fff
	v_cmp_o_f32_e64 s6, v27, v27
	v_bfe_u32 v18, v28, 16, 1
	v_bfe_u32 v19, v16, 16, 1
	v_add3_u32 v1, v30, v1, 0x7fff
	v_cmp_o_f32_e64 s2, v30, v30
	v_writelane_b32 v255, s17, 1
	v_cndmask_b16 v15.l, 0x7fff, v15.h, s5
	v_cndmask_b16 v15.h, 0x7fff, v17.h, s6
	v_add3_u32 v17, v28, v18, 0x7fff
	v_bfe_u32 v18, v31, 16, 1
	v_add3_u32 v19, v16, v19, 0x7fff
	v_cmp_o_f32_e64 s6, v16, v16
	v_cndmask_b16 v16.h, 0x7fff, v1.h, s2
	.loc	1 715 36 is_stmt 1              ; attention_backward.py:715:36
	v_add_nc_u32_e32 v1, 0, v53
	v_lshlrev_b32_e32 v21, 1, v53
	v_writelane_b32 v255, s18, 2
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_add3_u32 v18, v31, v18, 0x7fff
	v_cmp_o_f32_e64 s5, v31, v31
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_add_nc_u32_e32 v22, v1, v53
	v_xad_u32 v1, 0x90, v21, 0
	v_writelane_b32 v255, s19, 3
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v55, 1, v0
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cndmask_b16 v17.l, 0x7fff, v18.h, s5
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_xad_u32 v18, 0x120, v21, 0
	v_xad_u32 v20, 0x240, v21, 0
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cndmask_b16 v16.l, 0x7fff, v17.h, vcc_lo
	v_cndmask_b16 v17.h, 0x7fff, v19.h, s6
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xad_u32 v19, 0x1b0, v21, 0
	ds_store_b16 v22, v14 offset:1024
	ds_store_b16_d16_hi v1, v4
	ds_store_b16_d16_hi v1, v14 offset:1024
	ds_store_b16_d16_hi v18, v5
	ds_store_b16 v18, v15 offset:1024
	ds_store_b16_d16_hi v19, v6
	ds_store_b16_d16_hi v19, v15 offset:1024
	v_xad_u32 v1, 0x2d0, v21, 0
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_cmp_lt_i32 s51, 1
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_xad_u32 v14, 0x360, v21, 0
	ds_store_b16_d16_hi v22, v3
	scratch_store_b32 off, v22, off offset:136 ; 4-byte Folded Spill
	v_xad_u32 v15, 0x3f0, v21, 0
	ds_store_b16_d16_hi v20, v7
	ds_store_b16 v20, v16 offset:1024
	ds_store_b16_d16_hi v1, v8
	ds_store_b16_d16_hi v1, v16 offset:1024
	ds_store_b16_d16_hi v14, v9
	ds_store_b16 v14, v17 offset:1024
	ds_store_b16_d16_hi v15, v13
	ds_store_b16_d16_hi v15, v17 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 605 9                         ; attention_backward.py:605:9
	scratch_store_b32 off, v54, off offset:980 ; 4-byte Folded Spill
	s_cbranch_scc1 .LBB0_29
; %bb.3:                                ; %.lr.ph119
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_and_b32_e32 v1, 7, v53
	v_dual_mov_b32 v41, 0 :: v_dual_lshlrev_b32 v2, 1, v2
	v_lshlrev_b32_e32 v15, 4, v0
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v56.h, v13.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_lshlrev_b32_e32 v14, 4, v1
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v16, 1, v2
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s5, s81, v2
	v_or3_b32 v20, v12, v15, v11
	v_lshlrev_b32_e32 v13, 2, v53
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_lshl_or_b32 v17, v54, 7, v14
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s6, s81, v16
	v_and_b32_e32 v18, 16, v53
	v_lshrrev_b32_e32 v19, 5, v53
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_xad_u32 v2, 0x70, v17, 0
	v_xad_u32 v11, 0x60, v17, 0
	v_xad_u32 v12, 0x50, v17, 0
	v_xad_u32 v15, v17, 64, 0
	v_xad_u32 v16, v17, 48, 0
	ds_load_b128 v[26:29], v2
	ds_load_b128 v[22:25], v11
	v_dual_mov_b32 v33, 0 :: v_dual_and_b32 v2, 52, v13
	v_lshrrev_b32_e32 v11, 1, v18
	v_lshlrev_b32_e32 v1, 7, v1
	s_mov_b32 s53, s56
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v2, v10, 5, v2
	s_clause 0x1
	s_load_b128 s[56:59], s[0:1], 0x80
	s_load_b32 s8, s[0:1], 0x90
	v_and_or_b32 v10, v53, 2, v11
	v_lshrrev_b32_e32 v11, 1, v53
	s_clause 0x2
	s_load_b256 s[40:47], s[0:1], 0x30
	s_load_b64 s[60:61], s[0:1], 0x0
	s_load_b64 s[64:65], s[0:1], 0x18
	s_xor_b32 s2, s3, s49
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_sub_i32 s0, s33, s39
	v_and_or_b32 v11, v11, 12, v14
	s_ashr_i32 s2, s2, 31
	s_max_i32 s0, s0, 0
	s_xor_b32 s9, s34, s2
	s_and_b32 s0, s0, 0x7fffffe0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[22:25], off offset:160
	scratch_store_b128 off, v[26:29], off offset:176
	.loc	1 715 36                        ; attention_backward.py:715:36
	ds_load_b128 v[26:29], v12
	ds_load_b128 v[22:25], v15
	v_xad_u32 v12, v17, 32, 0
	v_xad_u32 v15, v17, 16, 0
	v_add_nc_u32_e32 v17, 0, v17
	s_sub_i32 s2, s9, s2
	.loc	1 602 9                         ; attention_backward.py:602:9
	s_max_u32 s0, s14, s0
	s_mul_i32 s1, s2, s49
	v_mov_b32_e32 v154, 0
	s_sub_i32 s1, s3, s1
	s_and_b32 s3, s80, exec_lo
	s_cselect_b32 s83, s0, s14
	.loc	1 641 25                        ; attention_backward.py:641:25
	s_mul_f32 s85, s56, 0x3fb8aa3b
	s_cmp_lt_i32 s83, s82
	s_mov_b32 s49, 0
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_mul_i32 s84, s51, s1
	.loc	1 613 26                        ; attention_backward.py:613:26
	s_mul_i32 s48, s2, s48
	.loc	1 683 27                        ; attention_backward.py:683:27
	s_mul_i32 s57, s2, s57
	s_cselect_b32 s86, -1, 0
	s_and_b32 s61, s61, 0xffff
	s_mov_b32 s63, 0x31027000
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[22:25], off offset:192
	scratch_store_b128 off, v[26:29], off offset:208
	.loc	1 715 36                        ; attention_backward.py:715:36
	ds_load_b128 v[26:29], v16
	ds_load_b128 v[22:25], v12
	v_lshrrev_b32_e32 v12, 2, v18
	v_and_b32_e32 v16, 0x70, v21
	s_mov_b32 s62, 0x7ffffffe
	s_and_b32 s65, s65, 0xffff
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s69, s47, 0xffff
	s_mov_b32 s68, s46
	s_and_b32 s73, s43, 0xffff
	s_mov_b32 s72, s42
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[22:25], off offset:224
	scratch_store_b128 off, v[26:29], off offset:240
	ds_load_b128 v[26:29], v15
	ds_load_b128 v[22:25], v17
	v_lshrrev_b32_e32 v15, 4, v0
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[22:25], off offset:256
	scratch_store_b128 off, v[26:29], off offset:272
	v_or3_b32 v22, v10, v2, v19
	v_bfe_i32 v2, v53, 3, 1
	v_cndmask_b32_e64 v10, 0x820, 0, vcc_lo
	v_lshlrev_b32_e32 v23, 3, v54
	v_or3_b32 v24, v11, v1, v15
	v_mov_b32_e32 v57, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_or_b32 v2, 0x410, v2, v10
	v_or_b32_e32 v10, v1, v14
	v_xor_b32_e32 v1, v14, v16
	v_xor_b32_e32 v25, v2, v10
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_mov_b16_e32 v2.h, v9.l
	v_mov_b16_e32 v2.l, v56.l
	scratch_store_b32 off, v21, off offset:152 ; 4-byte Folded Spill
	v_or3_b32 v21, v12, v15, v23
	v_lshl_or_b32 v27, v53, 7, v1
	v_xor_b32_e32 v1, 0x110, v13
	scratch_store_b32 off, v2, off offset:308 ; 4-byte Folded Spill
	v_mov_b16_e32 v2.h, v8.l
	scratch_store_b32 off, v2, off offset:312 ; 4-byte Folded Spill
	v_mov_b16_e32 v2.h, v7.l
	scratch_store_b32 off, v2, off offset:316 ; 4-byte Folded Spill
	v_mov_b16_e32 v2.h, v6.l
	scratch_store_b32 off, v2, off offset:320 ; 4-byte Folded Spill
	v_mov_b16_e32 v2.h, v5.l
	scratch_store_b32 off, v2, off offset:324 ; 4-byte Folded Spill
	v_mov_b16_e32 v2.h, v4.l
	scratch_store_b32 off, v2, off offset:328 ; 4-byte Folded Spill
	v_mov_b16_e32 v2.h, v3.l
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v3, 4, v53
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v56, off offset:148
	scratch_store_b32 off, v2, off offset:332
	v_mul_lo_u32 v2, s8, v178
	v_or_b32_e32 v4, 4, v3
	v_or_b32_e32 v5, 8, v3
	v_or_b32_e32 v6, 12, v3
	v_or_b32_e32 v7, 16, v3
	v_or_b32_e32 v8, 20, v3
	scratch_store_b32 off, v4, off offset:340 ; 4-byte Folded Spill
	v_or_b32_e32 v9, 24, v3
	v_mad_u64_u32 v[11:12], null, s59, v4, v[2:3]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[11:12], off offset:912
	scratch_store_b32 off, v5, off offset:344
	v_mad_u64_u32 v[4:5], null, s59, v5, v[2:3]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[4:5], off offset:920
	scratch_store_b32 off, v6, off offset:348
	v_mad_u64_u32 v[4:5], null, s59, v6, v[2:3]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[4:5], off offset:928
	scratch_store_b32 off, v7, off offset:352
	v_mad_u64_u32 v[4:5], null, s59, v7, v[2:3]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[4:5], off offset:936
	scratch_store_b32 off, v8, off offset:356
	v_mad_u64_u32 v[4:5], null, s59, v8, v[2:3]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[4:5], off offset:944
	scratch_store_b32 off, v9, off offset:360
	v_mad_u64_u32 v[4:5], null, s59, v9, v[2:3]
	v_or_b32_e32 v10, 28, v3
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[4:5], off offset:952
	scratch_store_b32 off, v10, off offset:364
	v_mad_u64_u32 v[4:5], null, s59, v10, v[2:3]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[4:5], off offset:960
	scratch_store_b32 off, v3, off offset:336
	v_mad_u64_u32 v[2:3], null, s59, v3, v[2:3]
	scratch_store_b64 off, v[2:3], off offset:968 ; 8-byte Folded Spill
	v_mul_u32_u24_e32 v3, 0x110, v54
	v_lshlrev_b32_e32 v2, 2, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v18, v0, 7, v3
	v_lshlrev_b32_e32 v3, 1, v54
	v_or3_b32 v26, v3, v2, v0
	v_add3_u32 v14, 0, v0, v3
	v_lshl_add_u32 v0, v0, 1, 0
	v_xor_b32_e32 v2, 0x220, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_add_u32 v15, v54, 2, v0
	v_lshlrev_b32_e32 v0, 3, v53
	v_and_b32_e32 v0, 48, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v28, v54, 6, v0
	v_xor_b32_e32 v0, 8, v20
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:388
	scratch_store_b32 off, v20, off offset:156
	v_xor_b32_e32 v0, 24, v20
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x90, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x120, v21
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:400
	scratch_store_b32 off, v21, off offset:296
	v_xor_b32_e32 v0, 0x1b0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:404 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v22
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:408 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:412
	scratch_store_b32 off, v22, off offset:288
	v_xor_b32_e32 v0, 48, v22
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:420 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v27
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:424 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:428 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 64, v27
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:432 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x50, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:436 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x60, v27
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:440
	scratch_store_b32 off, v27, off offset:376
	v_xor_b32_e32 v0, 0x70, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:444 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v25
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:448 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:452 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v25
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:456 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 64, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:460 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x50, v25
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:464 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x60, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:468 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x70, v25
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:472 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1040, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:476 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1050, v25
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:480 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1060, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:484 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1070, v25
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:488 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1010, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:492 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1020, v25
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:496
	scratch_store_b32 off, v25, off offset:304
	v_xor_b32_e32 v0, 0x1030, v25
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:500 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v1
	scratch_store_b32 off, v0, off offset:504 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v2
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v0, off offset:508 ; 4-byte Folded Spill
	v_mov_b32_e32 v44, v2
	v_xor_b32_e32 v3, 0x330, v13
	v_xor_b32_e32 v4, 0x440, v13
	v_xor_b32_e32 v5, 0x550, v13
	v_xor_b32_e32 v6, 0x660, v13
	v_xor_b32_e32 v7, 0x770, v13
	v_add_nc_u32_e32 v0, 0, v3
	v_xor_b32_e32 v8, 0x880, v13
	v_xor_b32_e32 v9, 0x990, v13
	v_xor_b32_e32 v10, 0xaa0, v13
	v_xor_b32_e32 v11, 0xbb0, v13
	scratch_store_b32 off, v0, off offset:512 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v4
	v_xor_b32_e32 v12, 0xcc0, v13
	v_xor_b32_e32 v16, 0xdd0, v13
	v_xor_b32_e32 v17, 0xee0, v13
	v_xor_b32_e32 v13, 0xff0, v13
	scratch_store_b32 off, v0, off offset:516 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v5
	v_mov_b32_e32 v48, v2
	v_mov_b32_e32 v42, v2
	v_mov_b32_e32 v43, v2
	v_mov_b32_e32 v45, v2
	scratch_store_b32 off, v0, off offset:520 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v6
	v_mov_b32_e32 v46, v2
	v_mov_b32_e32 v47, v2
	v_mov_b32_e32 v34, v2
	v_mov_b32_e32 v35, v2
	scratch_store_b32 off, v0, off offset:524 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v7
	v_mov_b32_e32 v36, v2
	v_mov_b32_e32 v37, v2
	v_mov_b32_e32 v38, v2
	v_mov_b32_e32 v39, v2
	scratch_store_b32 off, v0, off offset:528 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v8
	v_mov_b32_e32 v40, v2
	v_mov_b32_e32 v58, v2
	v_mov_b32_e32 v59, v2
	v_mov_b32_e32 v60, v2
	scratch_store_b32 off, v0, off offset:532 ; 4-byte Folded Spill
	v_dual_mov_b32 v61, v2 :: v_dual_add_nc_u32 v0, 0, v9
	v_mov_b32_e32 v62, v2
	v_mov_b32_e32 v63, v2
	v_mov_b32_e32 v64, v2
	scratch_store_b32 off, v0, off offset:536 ; 4-byte Folded Spill
	v_dual_mov_b32 v155, v2 :: v_dual_add_nc_u32 v0, 0, v10
	v_mov_b32_e32 v156, v2
	v_mov_b32_e32 v157, v2
	v_mov_b32_e32 v158, v2
	scratch_store_b32 off, v0, off offset:540 ; 4-byte Folded Spill
	v_dual_mov_b32 v159, v2 :: v_dual_add_nc_u32 v0, 0, v11
	v_mov_b32_e32 v160, v2
	v_mov_b32_e32 v161, v2
	scratch_store_b32 off, v0, off offset:544 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v12
	scratch_store_b32 off, v0, off offset:548 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v16
	scratch_store_b32 off, v0, off offset:552 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v17
	scratch_store_b32 off, v0, off offset:556 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v13
	scratch_store_b32 off, v0, off offset:560 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:564 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v18
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:568 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:572 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 64, v18
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:576 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x50, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:580 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x60, v18
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:584 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x70, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:588 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x80, v18
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:592 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x90, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:596 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xa0, v18
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:600 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xb0, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:604 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xc0, v18
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:608 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xd0, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:612 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0xe0, v18
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:616
	scratch_store_b32 off, v18, off offset:368
	v_xor_b32_e32 v0, 0xf0, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:620 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x90, v26
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:624 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x120, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:628
	scratch_store_b32 off, v26, off offset:372
	v_xor_b32_e32 v0, 0x1b0, v26
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:632 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:636 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v28
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:640
	scratch_store_b32 off, v28, off offset:380
	v_xor_b32_e32 v0, 48, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:644 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 16, v24
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:648 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 32, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:652 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 48, v24
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:656 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 64, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:660 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x50, v24
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:664 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x60, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:668
	scratch_store_b32 off, v24, off offset:300
	v_xor_b32_e32 v0, 0x70, v24
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:672 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x90, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:676 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x120, v23
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:680 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x1b0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:684 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x240, v23
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:688 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x2d0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:692 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 0x360, v23
	v_add_nc_u32_e32 v0, 0, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:696
	scratch_store_b32 off, v23, off offset:292
	v_xor_b32_e32 v0, 0x3f0, v23
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:700 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, v53
	.loc	1 545 17                        ; attention_backward.py:545:17
	scratch_store_b64 off, v[0:1], off offset:140 ; 8-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v53
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v1, 16, v19
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:704
	scratch_store_b32 off, v1, off offset:816
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v0, s77, v0
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v1, 18, v19
	scratch_store_b32 off, v0, off offset:708 ; 4-byte Folded Spill
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:712 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:716 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:720 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:724 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:728 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:732 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:736 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:740 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:744 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:748 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:752 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:756 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:760 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:764 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:768 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:772 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:776 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:780 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:784 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:788 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:792 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:796 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:800 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:804 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v0, off offset:808 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s77, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:820
	scratch_store_b32 off, v0, off offset:812
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v1, 20, v19
	v_add_nc_u32_e32 v0, s77, v0
	scratch_store_b32 off, v1, off offset:828 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 22, v19
	v_add_nc_u32_e32 v28, s77, v0
	scratch_store_b32 off, v1, off offset:832 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 24, v19
	scratch_store_b32 off, v1, off offset:836 ; 4-byte Folded Spill
	v_or_b32_e32 v1, 26, v19
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:840
	scratch_store_b32 off, v0, off offset:824
	v_or_b32_e32 v0, 28, v19
	scratch_store_b32 off, v0, off offset:844 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 30, v19
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:848
	scratch_store_b32 off, v55, off offset:984
	v_or_b32_e32 v0, v55, v54
	scratch_store_b32 off, v0, off offset:852 ; 4-byte Folded Spill
	scratch_load_b64 v[0:1], off, off offset:16 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[3:4], null, s76, 18, v[0:1]
	scratch_store_b64 off, v[3:4], off offset:856 ; 8-byte Folded Spill
	v_mad_u64_u32 v[3:4], null, s76, 20, v[0:1]
	scratch_store_b64 off, v[3:4], off offset:864 ; 8-byte Folded Spill
	v_mad_u64_u32 v[3:4], null, s76, 22, v[0:1]
	scratch_store_b64 off, v[3:4], off offset:872 ; 8-byte Folded Spill
	v_mad_u64_u32 v[3:4], null, s76, 24, v[0:1]
	scratch_store_b64 off, v[3:4], off offset:880 ; 8-byte Folded Spill
	v_mad_u64_u32 v[3:4], null, s76, 26, v[0:1]
	scratch_store_b64 off, v[3:4], off offset:888 ; 8-byte Folded Spill
	v_mad_u64_u32 v[3:4], null, s76, 28, v[0:1]
	v_mad_u64_u32 v[0:1], null, s76, 30, v[0:1]
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[3:4], off offset:896
	scratch_store_b64 off, v[0:1], off offset:904
	s_branch .LBB0_5
.LBB0_4:                                ; %._crit_edge
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_add_i32 s49, s49, 1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_cmp_lg_u32 s49, s51
	s_cbranch_scc0 .LBB0_28
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_and_not1_b32 vcc_lo, exec_lo, s86
	s_cbranch_vccnz .LBB0_4
; %bb.6:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 606 26                        ; attention_backward.py:606:26
	s_add_i32 s0, s49, s84
	s_mov_b32 s87, s83
	.loc	1 613 26                        ; attention_backward.py:613:26
	s_add_i32 s42, s0, s48
	.loc	1 684 27                        ; attention_backward.py:684:27
	s_mul_i32 s43, s0, s58
	.loc	1 613 25                        ; attention_backward.py:613:25
	s_mul_i32 s42, s42, s50
	.loc	1 682 25                        ; attention_backward.py:682:25
	s_add_i32 s43, s43, s57
	s_branch .LBB0_8
.LBB0_7:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 25 is_stmt 0                ; attention_backward.py:0:25
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 608 29 is_stmt 1              ; attention_backward.py:608:29
	s_or_b32 s2, s87, 1
	s_or_b32 s3, s87, 2
	s_or_b32 s8, s87, 3
	s_or_b32 s9, s87, 4
	s_or_b32 s10, s87, 5
	s_or_b32 s11, s87, 6
	s_or_b32 s12, s87, 7
	s_or_b32 s14, s87, 8
	s_or_b32 s15, s87, 9
	s_or_b32 s16, s87, 10
	s_or_b32 s17, s87, 11
	s_or_b32 s18, s87, 12
	s_or_b32 s19, s87, 13
	s_or_b32 s20, s87, 14
	s_or_b32 s30, s87, 15
	s_or_b32 s31, s87, 16
	s_or_b32 s33, s87, 17
	s_or_b32 s94, s87, 18
	s_or_b32 s95, s87, 19
	s_or_b32 s96, s87, 20
	s_or_b32 s97, s87, 21
	s_or_b32 s98, s87, 22
	s_or_b32 s99, s87, 23
	s_or_b32 s100, s87, 24
	s_or_b32 s101, s87, 25
	s_or_b32 s102, s87, 26
	s_or_b32 s103, s87, 27
	s_or_b32 s104, s87, 28
	s_or_b32 vcc_hi, s87, 29
	s_or_b32 s78, s87, 30
	s_or_b32 s52, s87, 31
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cmp_lt_i32 s87, s50
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_waitcnt vmcnt(0)
	v_and_b16 v3.l, 0xff, v69.h
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s75, -1, 0
	s_cmp_lt_i32 s2, s50
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_and_b16 v3.h, 0xff, v67.h
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s74, -1, 0
	s_cmp_lt_i32 s3, s50
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e32 vcc_lo, 0, v3.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s93, -1, 0
	s_cmp_lt_i32 s8, s50
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_and_b16 v3.l, 0xff, v69.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s92, -1, 0
	s_cmp_lt_i32 s9, s50
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_waitcnt lgkmcnt(0)
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s91, -1, 0
	s_cmp_lt_i32 s10, s50
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s1, 0, v3.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s90, -1, 0
	s_cmp_lt_i32 s11, s50
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_barrier
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s89, -1, 0
	s_cmp_lt_i32 s12, s50
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s21, s21, s77
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s88, -1, 0
	s_cmp_lt_i32 s14, s50
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v123, 0xc00, v15
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s71, -1, 0
	s_cmp_lt_i32 s15, s50
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v124, 0x1000, v15
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s70, -1, 0
	s_cmp_lt_i32 s16, s50
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v125, 0x1400, v15
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s67, -1, 0
	s_cmp_lt_i32 s17, s50
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v126, 0x1800, v15
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s66, -1, 0
	s_cmp_lt_i32 s18, s50
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v127, 0x1c00, v15
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s47, -1, 0
	s_cmp_lt_i32 s19, s50
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v13.h, v13.l
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s46, -1, 0
	s_cmp_lt_i32 s20, s50
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e32 v13.l, 0
	.loc	1 609 29                        ; attention_backward.py:609:29
	s_cselect_b32 s36, -1, 0
	s_cmp_lt_i32 s30, s50
	s_cselect_b32 s35, -1, 0
	s_cmp_lt_i32 s31, s50
	s_cselect_b32 s34, -1, 0
	s_cmp_lt_i32 s33, s50
	s_cselect_b32 s33, -1, 0
	s_cmp_lt_i32 s94, s50
	s_cselect_b32 s31, -1, 0
	s_cmp_lt_i32 s95, s50
	s_cselect_b32 s30, -1, 0
	s_cmp_lt_i32 s96, s50
	s_cselect_b32 s20, -1, 0
	s_cmp_lt_i32 s97, s50
	s_cselect_b32 s19, -1, 0
	s_cmp_lt_i32 s98, s50
	s_cselect_b32 s18, -1, 0
	s_cmp_lt_i32 s99, s50
	s_cselect_b32 s17, -1, 0
	s_cmp_lt_i32 s100, s50
	s_cselect_b32 s16, -1, 0
	s_cmp_lt_i32 s101, s50
	s_cselect_b32 s15, -1, 0
	s_cmp_lt_i32 s102, s50
	s_cselect_b32 s14, -1, 0
	s_cmp_lt_i32 s103, s50
	s_cselect_b32 s12, -1, 0
	s_cmp_lt_i32 s104, s50
	s_cselect_b32 s11, -1, 0
	s_cmp_lt_i32 vcc_hi, s50
	s_cselect_b32 s10, -1, 0
	s_cmp_lt_i32 s78, s50
	s_cselect_b32 s9, -1, 0
	s_cmp_lt_i32 s52, s50
	s_cselect_b32 s8, -1, 0
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_and_b32 s1, s29, s1
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s87, s87, 32
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cndmask_b32_e64 v0, 0, 1, s1
	s_and_b32 s1, s28, vcc_lo
	.loc	1 689 34 is_stmt 0              ; attention_backward.py:689:34
	v_cmp_ne_u16_e32 vcc_lo, 0, v3.h
	v_and_b16 v3.h, 0xff, v66.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_mov_b16_e32 v3.l, v0.l
	v_cndmask_b32_e64 v0, 0, 1, s1
	s_and_b32 s2, s27, vcc_lo
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s1, 0, v3.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_lshlrev_b16 v3.l, 8, v3.l
	v_mov_b16_e32 v4.l, v0.l
	v_cndmask_b32_e64 v0, 0, 1, s2
	s_and_b32 s1, s26, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v3.l, v4.l, v3.l
	v_mov_b16_e32 v4.l, v0.l
	v_cndmask_b32_e64 v0, 0, 1, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v3.h, 8, v4.l
	v_mov_b16_e32 v4.l, v0.l
	scratch_load_b32 v0, off, off offset:296 ; 4-byte Folded Reload
	v_or_b16 v3.h, v4.l, v3.h
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, 0, v0
	ds_store_b16 v0, v3
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_and_b16 v3.l, 0xff, v67.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_ne_u16_e32 vcc_lo, 0, v3.l
	v_and_b16 v3.l, 0xff, v66.h
	v_cmp_ne_u16_e64 s1, 0, v3.l
	v_and_b16 v3.l, 0xff, v68.h
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_and_b32 s1, s22, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s2, 0, v3.l
	v_and_b16 v3.l, 0xff, v68.l
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_and_b32 s2, s25, s2
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_cmp_ne_u16_e64 s3, 0, v3.l
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cndmask_b32_e64 v0, 0, 1, s2
	s_and_b32 s2, s24, vcc_lo
	.loc	1 712 26 is_stmt 1              ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s75
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s75, s63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_mov_b16_e32 v3.l, v0.l
	v_cndmask_b32_e64 v0, 0, 1, s2
	s_and_b32 s2, s23, s3
	v_lshlrev_b16 v3.l, 8, v3.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v4.l, v0.l
	v_cndmask_b32_e64 v0, 0, 1, s2
	v_or_b16 v3.l, v4.l, v3.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v4.l, v0.l
	v_cndmask_b32_e64 v0, 0, 1, s1
	v_lshlrev_b16 v4.l, 8, v4.l
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b16_e32 v5.l, v0.l
	scratch_load_b32 v0, off, off offset:396 ; 4-byte Folded Reload
	v_or_b16 v4.l, v5.l, v4.l
	s_waitcnt vmcnt(0)
	ds_store_b16_d16_hi v0, v3
	scratch_load_b32 v0, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v3
	scratch_load_b32 v0, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v4
	s_waitcnt lgkmcnt(0)
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[0:1], off, off offset:140
	scratch_load_b32 v1, off, off offset:704
	.loc	1 689 25                        ; attention_backward.py:689:25
	s_barrier
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v0, s21, v0, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s21, v1, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s74
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s74, s62
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_b32 v3, v0, s[72:75], 0 offen
	buffer_load_b32 v4, v1, s[72:75], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:708
	scratch_load_b32 v1, off, off offset:720
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s93
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v0, s21, v0, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s21, v1, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s92
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v5, v0, s[72:75], 0 offen
	scratch_load_b32 v0, off, off offset:712 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s21, v0, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s91
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v6, v0, s[72:75], 0 offen
	scratch_load_b32 v0, off, off offset:716 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s21, v0, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s90
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_b32 v7, v0, s[72:75], 0 offen
	buffer_load_b32 v8, v1, s[72:75], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:724
	scratch_load_b32 v1, off, off offset:736
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s89
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v0, s21, v0, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s21, v1, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s88
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v9, v0, s[72:75], 0 offen
	scratch_load_b32 v0, off, off offset:728 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s21, v0, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s71
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s71, s63
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v10, v0, s[72:75], 0 offen
	scratch_load_b32 v0, off, off offset:732 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s21, v0, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s70
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s70, s62
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_b32 v49, v0, s[72:75], 0 offen
	buffer_load_b32 v50, v1, s[72:75], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:740
	scratch_load_b32 v1, off, off offset:752
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s67
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v0, s21, v0, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s21, v1, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s66
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v51, v0, s[72:75], 0 offen
	scratch_load_b32 v0, off, off offset:744 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s21, v0, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s47
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s47, s63
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v52, v0, s[72:75], 0 offen
	scratch_load_b32 v0, off, off offset:748 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s21, v0, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s46
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s46, s62
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_b32 v53, v0, s[72:75], 0 offen
	buffer_load_b32 v54, v1, s[72:75], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:756
	scratch_load_b32 v1, off, off offset:768
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s36
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v0, s21, v0, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s21, v1, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s35
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v55, v0, s[72:75], 0 offen
	scratch_load_b32 v0, off, off offset:760 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s21, v0, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s34
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v56, v0, s[72:75], 0 offen
	scratch_load_b32 v0, off, off offset:764 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s21, v0, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s33
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_b32 v65, v0, s[72:75], 0 offen
	buffer_load_b32 v66, v1, s[72:75], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:772
	scratch_load_b32 v1, off, off offset:784
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s31
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v0, s21, v0, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s21, v1, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s30
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v67, v0, s[72:75], 0 offen
	scratch_load_b32 v0, off, off offset:776 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s21, v0, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s20
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v68, v0, s[72:75], 0 offen
	scratch_load_b32 v0, off, off offset:780 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s21, v0, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s19
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_b32 v69, v0, s[72:75], 0 offen
	buffer_load_b32 v70, v1, s[72:75], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:788
	scratch_load_b32 v1, off, off offset:800
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s18
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v0, s21, v0, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s21, v1, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s17
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v71, v0, s[72:75], 0 offen
	scratch_load_b32 v0, off, off offset:792 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s21, v0, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s16
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v72, v0, s[72:75], 0 offen
	scratch_load_b32 v0, off, off offset:796 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s21, v0, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s15
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_b32 v81, v0, s[72:75], 0 offen
	buffer_load_b32 v82, v1, s[72:75], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:804
	scratch_load_b32 v1, off, off offset:824
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s14
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v0, s21, v0, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v1, s21, v1, 2
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s12
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v83, v0, s[72:75], 0 offen
	scratch_load_b32 v0, off, off offset:808 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s21, v0, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s11
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v84, v0, s[72:75], 0 offen
	scratch_load_b32 v0, off, off offset:812 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v0, s21, v0, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s10
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x1
	buffer_load_b32 v85, v0, s[72:75], 0 offen
	buffer_load_b32 v86, v1, s[72:75], 0 offen
	v_add_lshl_u32 v0, s21, v28, 2
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 712 26                        ; attention_backward.py:712:26
	s_and_b32 vcc_lo, s4, s8
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_i32 s87, s82
	.loc	1 707 36                        ; attention_backward.py:707:36
	buffer_load_b32 v87, v0, s[72:75], 0 offen
	v_add_nc_u32_e32 v0, s77, v28
	v_add_lshl_u32 v0, s21, v0, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_load_b32 v88, v0, s[72:75], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_lshlrev_b32_e32 v0, 2, v30
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_load_b32 v204, v0, s[44:47], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v30, v0, s[68:71], 0 offen
	.loc	1 689 25                        ; attention_backward.py:689:25
	scratch_load_b32 v0, off, off offset:288 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, 0, v0
	ds_load_u8_d16_hi v92, v0
	s_waitcnt lgkmcnt(0)
	ds_load_u8_d16 v92, v0 offset:64
	scratch_load_b32 v0, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8_d16_hi v91, v0
	ds_load_u8_d16 v90, v0 offset:64
	scratch_load_b32 v0, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0) lgkmcnt(1)
	ds_load_u8_d16 v91, v0
	ds_load_u8_d16_hi v89, v0 offset:64
	scratch_load_b32 v0, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0) lgkmcnt(2)
	ds_load_u8_d16_hi v90, v0
	s_waitcnt lgkmcnt(1)
	ds_load_u8_d16 v89, v0 offset:64
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, 0, v0
	ds_store_b128 v0, v[3:6]
	scratch_load_b32 v0, off, off offset:420 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v0, v[7:10]
	scratch_load_b32 v0, off, off offset:424 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v0, v[49:52]
	scratch_load_b32 v0, off, off offset:428 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v0, v[53:56]
	scratch_load_b32 v0, off, off offset:432 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v0, v[65:68]
	scratch_load_b32 v0, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v0, v[69:72]
	scratch_load_b32 v0, off, off offset:440 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v0, v[81:84]
	scratch_load_b32 v0, off, off offset:444 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b128 v0, v[85:88]
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:304 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, 0, v0
	ds_load_b128 v[162:165], v0
	ds_load_b128 v[114:117], v0 offset:4096
	scratch_load_b32 v0, off, off offset:448 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[174:177], v0
	scratch_load_b32 v0, off, off offset:452 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[170:173], v0
	scratch_load_b32 v0, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[166:169], v0
	scratch_load_b32 v0, off, off offset:460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[142:145], v0
	scratch_load_b32 v0, off, off offset:464 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[24:27], v0
	scratch_load_b32 v0, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[187:190], v0
	scratch_load_b32 v0, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[17:20], v0
	scratch_load_b32 v0, off, off offset:476 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[17:20], off   ; 16-byte Folded Spill
	s_waitcnt vmcnt(0)
	ds_load_b128 v[17:20], v0
	scratch_load_b32 v0, off, off offset:480 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[134:137], v0
	scratch_load_b32 v0, off, off offset:484 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[150:153], v0
	scratch_load_b32 v0, off, off offset:488 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[146:149], v0
	scratch_load_b32 v0, off, off offset:492 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[138:141], v0
	scratch_load_b32 v0, off, off offset:496 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[130:133], v0
	scratch_load_b32 v0, off, off offset:500 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[118:121], v0
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:152
	scratch_load_b32 v1, off, off offset:136
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v203, v1, v0
	v_add_nc_u32_e32 v0, 0x400, v15
	v_add_nc_u32_e32 v1, 0x800, v15
	ds_store_2addr_stride64_b32 v203, v3, v4 offset1:1
	ds_store_2addr_stride64_b32 v203, v5, v6 offset0:2 offset1:3
	ds_store_2addr_stride64_b32 v203, v7, v8 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v203, v9, v10 offset0:6 offset1:7
	ds_store_2addr_stride64_b32 v203, v49, v50 offset0:8 offset1:9
	ds_store_2addr_stride64_b32 v203, v51, v52 offset0:10 offset1:11
	ds_store_2addr_stride64_b32 v203, v53, v54 offset0:12 offset1:13
	ds_store_2addr_stride64_b32 v203, v55, v56 offset0:14 offset1:15
	ds_store_2addr_stride64_b32 v203, v65, v66 offset0:16 offset1:17
	ds_store_2addr_stride64_b32 v203, v67, v68 offset0:18 offset1:19
	ds_store_2addr_stride64_b32 v203, v69, v70 offset0:20 offset1:21
	ds_store_2addr_stride64_b32 v203, v71, v72 offset0:22 offset1:23
	ds_store_2addr_stride64_b32 v203, v81, v82 offset0:24 offset1:25
	ds_store_2addr_stride64_b32 v203, v83, v84 offset0:26 offset1:27
	ds_store_2addr_stride64_b32 v203, v85, v86 offset0:28 offset1:29
	ds_store_2addr_stride64_b32 v203, v87, v88 offset0:30 offset1:31
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[197:198], v0 offset1:32
	ds_load_2addr_b32 v[195:196], v0 offset0:64 offset1:96
	ds_load_2addr_b32 v[193:194], v0 offset0:128 offset1:160
	ds_load_2addr_b32 v[191:192], v0 offset0:192 offset1:224
	ds_load_2addr_b32 v[252:253], v1 offset1:32
	ds_load_2addr_b32 v[250:251], v1 offset0:64 offset1:96
	ds_load_2addr_b32 v[248:249], v1 offset0:128 offset1:160
	ds_load_2addr_b32 v[246:247], v1 offset0:192 offset1:224
	ds_load_2addr_b32 v[244:245], v123 offset1:32
	ds_load_2addr_b32 v[242:243], v123 offset0:64 offset1:96
	ds_load_2addr_b32 v[240:241], v123 offset0:128 offset1:160
	ds_load_2addr_b32 v[238:239], v123 offset0:192 offset1:224
	ds_load_2addr_b32 v[236:237], v124 offset1:32
	ds_load_2addr_b32 v[234:235], v124 offset0:64 offset1:96
	ds_load_2addr_b32 v[232:233], v124 offset0:128 offset1:160
	ds_load_2addr_b32 v[230:231], v124 offset0:192 offset1:224
	ds_load_2addr_b32 v[228:229], v125 offset1:32
	ds_load_2addr_b32 v[226:227], v125 offset0:64 offset1:96
	ds_load_2addr_b32 v[224:225], v125 offset0:128 offset1:160
	ds_load_2addr_b32 v[222:223], v125 offset0:192 offset1:224
	ds_load_2addr_b32 v[220:221], v126 offset1:32
	ds_load_2addr_b32 v[218:219], v126 offset0:64 offset1:96
	ds_load_2addr_b32 v[216:217], v126 offset0:128 offset1:160
	ds_load_2addr_b32 v[214:215], v126 offset0:192 offset1:224
	ds_load_2addr_b32 v[212:213], v127 offset1:32
	ds_load_2addr_b32 v[210:211], v127 offset0:64 offset1:96
	ds_load_2addr_b32 v[208:209], v127 offset0:128 offset1:160
	ds_load_2addr_b32 v[206:207], v127 offset0:192 offset1:224
	ds_load_2addr_b32 v[185:186], v15 offset1:32
	ds_load_2addr_b32 v[183:184], v15 offset0:64 offset1:96
	ds_load_2addr_b32 v[181:182], v15 offset0:128 offset1:160
	ds_load_2addr_b32 v[179:180], v15 offset0:192 offset1:224
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:504 ; 4-byte Folded Reload
	ds_store_2addr_stride64_b32 v203, v3, v65 offset1:16
	v_cmp_o_f32_e64 s24, v228, v228
	v_cmp_o_f32_e64 s25, v226, v226
	v_cmp_o_f32_e64 s21, v234, v234
	v_cmp_o_f32_e64 s23, v230, v230
	v_cmp_o_f32_e64 s20, v236, v236
	v_cmp_o_f32_e64 s29, v218, v218
	v_cmp_o_f32_e64 s30, v216, v216
	v_cmp_o_f32_e64 s31, v214, v214
	v_cmp_o_f32_e64 s33, v212, v212
	v_cmp_o_f32_e64 s22, v232, v232
	v_cmp_o_f32_e64 s35, v208, v208
	v_cmp_o_f32_e64 s36, v206, v206
	v_cmp_o_f32_e64 s26, v224, v224
	v_cmp_o_f32_e64 s27, v222, v222
	v_cmp_o_f32_e64 s28, v220, v220
	v_cmp_o_f32_e64 s34, v210, v210
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v4, v66 offset1:16
	scratch_load_b32 v0, off, off offset:508 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v5, v67 offset1:16
	scratch_load_b32 v0, off, off offset:512 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v6, v68 offset1:16
	scratch_load_b32 v0, off, off offset:516 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v7, v69 offset1:16
	scratch_load_b32 v0, off, off offset:520 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v8, v70 offset1:16
	scratch_load_b32 v0, off, off offset:524 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v9, v71 offset1:16
	scratch_load_b32 v0, off, off offset:528 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v10, v72 offset1:16
	scratch_load_b32 v0, off, off offset:532 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v49, v81 offset1:16
	scratch_load_b32 v0, off, off offset:536 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v50, v82 offset1:16
	scratch_load_b32 v0, off, off offset:540 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v51, v83 offset1:16
	scratch_load_b32 v0, off, off offset:544 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v52, v84 offset1:16
	scratch_load_b32 v0, off, off offset:548 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v53, v85 offset1:16
	scratch_load_b32 v0, off, off offset:552 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v54, v86 offset1:16
	scratch_load_b32 v0, off, off offset:556 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v55, v87 offset1:16
	scratch_load_b32 v0, off, off offset:560 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b32 v0, v56, v88 offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, 0, v0
	ds_load_b128 v[3:6], v0
	scratch_load_b32 v0, off, off offset:564 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_bfe_u32 v1, v4, 16, 1
	v_cmp_o_f32_e64 s0, v4, v4
	v_cmp_o_f32_e64 s1, v5, v5
	v_cmp_o_f32_e64 s2, v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v1, v4, v1, 0x7fff
	v_cndmask_b16 v81.h, 0x7fff, v1.h, s0
	s_waitcnt vmcnt(0)
	ds_load_b128 v[7:10], v0
	v_bfe_u32 v0, v3, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v0, v3, v0, 0x7fff
	v_bfe_u32 v3, v5, 16, 1
	v_cndmask_b16 v81.l, 0x7fff, v0.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v49, v5, v3, 0x7fff
	v_bfe_u32 v3, v6, 16, 1
	scratch_load_b32 v0, off, off offset:576 ; 4-byte Folded Reload
	v_cndmask_b16 v82.l, 0x7fff, v49.h, s1
	v_add3_u32 v50, v6, v3, 0x7fff
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v3, v7, 16, 1
	v_cmp_o_f32_e64 s3, v7, v7
	v_cmp_o_f32_e64 s8, v8, v8
	v_cmp_o_f32_e64 s9, v9, v9
	v_cmp_o_f32_e64 s10, v10, v10
	v_add3_u32 v51, v7, v3, 0x7fff
	v_bfe_u32 v3, v8, 16, 1
	scratch_load_b32 v7, off, off offset:572 ; 4-byte Folded Reload
	v_cndmask_b16 v82.h, 0x7fff, v50.h, s2
	v_cndmask_b16 v83.l, 0x7fff, v51.h, s3
	v_add3_u32 v52, v8, v3, 0x7fff
	v_bfe_u32 v3, v9, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.h, 0x7fff, v52.h, s8
	v_add3_u32 v53, v9, v3, 0x7fff
	v_bfe_u32 v3, v10, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v84.l, 0x7fff, v53.h, s9
	v_add3_u32 v54, v10, v3, 0x7fff
	scratch_load_b32 v3, off, off offset:568 ; 4-byte Folded Reload
	v_cndmask_b16 v84.h, 0x7fff, v54.h, s10
	s_waitcnt vmcnt(1)
	ds_load_b128 v[7:10], v7
	s_waitcnt vmcnt(0)
	ds_load_b128 v[3:6], v3
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s16, v7, v7
	v_cmp_o_f32_e64 s17, v8, v8
	v_cmp_o_f32_e64 s18, v9, v9
	v_cmp_o_f32_e64 s19, v10, v10
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v55, v3, 16, 1
	v_cmp_o_f32_e64 s11, v3, v3
	v_cmp_o_f32_e64 s12, v4, v4
	v_cmp_o_f32_e64 s14, v5, v5
	v_cmp_o_f32_e64 s15, v6, v6
	v_add3_u32 v55, v3, v55, 0x7fff
	v_bfe_u32 v3, v4, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.l, 0x7fff, v55.h, s11
	v_add3_u32 v3, v4, v3, 0x7fff
	v_bfe_u32 v4, v5, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.h, 0x7fff, v3.h, s12
	v_add3_u32 v4, v5, v4, 0x7fff
	v_bfe_u32 v5, v6, 16, 1
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v3, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v86.l, 0x7fff, v4.h, s14
	v_add3_u32 v5, v6, v5, 0x7fff
	v_bfe_u32 v6, v7, 16, 1
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v4, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v86.h, 0x7fff, v5.h, s15
	v_add3_u32 v6, v7, v6, 0x7fff
	v_bfe_u32 v7, v8, 16, 1
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v5, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v87.l, 0x7fff, v6.h, s16
	v_add3_u32 v7, v8, v7, 0x7fff
	v_bfe_u32 v8, v9, 16, 1
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v6, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v87.h, 0x7fff, v7.h, s17
	v_add3_u32 v8, v9, v8, 0x7fff
	v_bfe_u32 v9, v10, 16, 1
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v7, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v88.l, 0x7fff, v8.h, s18
	v_add3_u32 v9, v10, v9, 0x7fff
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v8, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v88.h, 0x7fff, v9.h, s19
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v9, v2
	v_dual_mov_b32 v72, v9 :: v_dual_mov_b32 v71, v8
	v_dual_mov_b32 v70, v7 :: v_dual_mov_b32 v69, v6
	v_dual_mov_b32 v68, v5 :: v_dual_mov_b32 v67, v4
	v_dual_mov_b32 v66, v3 :: v_dual_mov_b32 v65, v2
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[3:6], off, off offset:256
	scratch_load_b128 v[7:10], off, off offset:272
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[3:10], v[81:88], v[65:72]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[3:6], v0
	scratch_load_b32 v0, off, off offset:580 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_bfe_u32 v1, v4, 16, 1
	v_cmp_o_f32_e64 s0, v4, v4
	v_cmp_o_f32_e64 s1, v5, v5
	v_cmp_o_f32_e64 s2, v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v1, v4, v1, 0x7fff
	v_cndmask_b16 v81.h, 0x7fff, v1.h, s0
	s_waitcnt vmcnt(0)
	ds_load_b128 v[7:10], v0
	v_bfe_u32 v0, v3, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v0, v3, v0, 0x7fff
	v_bfe_u32 v3, v5, 16, 1
	v_cndmask_b16 v81.l, 0x7fff, v0.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v49, v5, v3, 0x7fff
	v_bfe_u32 v3, v6, 16, 1
	scratch_load_b32 v0, off, off offset:592 ; 4-byte Folded Reload
	v_cndmask_b16 v82.l, 0x7fff, v49.h, s1
	v_add3_u32 v50, v6, v3, 0x7fff
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v3, v7, 16, 1
	v_cmp_o_f32_e64 s3, v7, v7
	v_cmp_o_f32_e64 s8, v8, v8
	v_cmp_o_f32_e64 s9, v9, v9
	v_cmp_o_f32_e64 s10, v10, v10
	v_add3_u32 v51, v7, v3, 0x7fff
	v_bfe_u32 v3, v8, 16, 1
	scratch_load_b32 v7, off, off offset:588 ; 4-byte Folded Reload
	v_cndmask_b16 v82.h, 0x7fff, v50.h, s2
	v_cndmask_b16 v83.l, 0x7fff, v51.h, s3
	v_add3_u32 v52, v8, v3, 0x7fff
	v_bfe_u32 v3, v9, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.h, 0x7fff, v52.h, s8
	v_add3_u32 v53, v9, v3, 0x7fff
	v_bfe_u32 v3, v10, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v84.l, 0x7fff, v53.h, s9
	v_add3_u32 v54, v10, v3, 0x7fff
	scratch_load_b32 v3, off, off offset:584 ; 4-byte Folded Reload
	v_cndmask_b16 v84.h, 0x7fff, v54.h, s10
	s_waitcnt vmcnt(1)
	ds_load_b128 v[7:10], v7
	s_waitcnt vmcnt(0)
	ds_load_b128 v[3:6], v3
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s16, v7, v7
	v_cmp_o_f32_e64 s17, v8, v8
	v_cmp_o_f32_e64 s18, v9, v9
	v_cmp_o_f32_e64 s19, v10, v10
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v55, v3, 16, 1
	v_cmp_o_f32_e64 s11, v3, v3
	v_cmp_o_f32_e64 s12, v4, v4
	v_cmp_o_f32_e64 s14, v5, v5
	v_cmp_o_f32_e64 s15, v6, v6
	v_add3_u32 v55, v3, v55, 0x7fff
	v_bfe_u32 v3, v4, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.l, 0x7fff, v55.h, s11
	v_add3_u32 v3, v4, v3, 0x7fff
	v_bfe_u32 v4, v5, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.h, 0x7fff, v3.h, s12
	v_add3_u32 v4, v5, v4, 0x7fff
	v_bfe_u32 v5, v6, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.l, 0x7fff, v4.h, s14
	v_add3_u32 v5, v6, v5, 0x7fff
	v_bfe_u32 v6, v7, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.h, 0x7fff, v5.h, s15
	v_add3_u32 v6, v7, v6, 0x7fff
	v_bfe_u32 v7, v8, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.l, 0x7fff, v6.h, s16
	v_add3_u32 v7, v8, v7, 0x7fff
	v_bfe_u32 v8, v9, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.h, 0x7fff, v7.h, s17
	v_add3_u32 v8, v9, v8, 0x7fff
	v_bfe_u32 v9, v10, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v88.l, 0x7fff, v8.h, s18
	v_add3_u32 v9, v10, v9, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v88.h, 0x7fff, v9.h, s19
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[3:6], off, off offset:224
	scratch_load_b128 v[7:10], off, off offset:240
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[3:10], v[81:88], v[65:72]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[3:6], v0
	scratch_load_b32 v0, off, off offset:596 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_bfe_u32 v1, v4, 16, 1
	v_cmp_o_f32_e64 s0, v4, v4
	v_cmp_o_f32_e64 s1, v5, v5
	v_cmp_o_f32_e64 s2, v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v1, v4, v1, 0x7fff
	v_cndmask_b16 v81.h, 0x7fff, v1.h, s0
	s_waitcnt vmcnt(0)
	ds_load_b128 v[7:10], v0
	v_bfe_u32 v0, v3, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v0, v3, v0, 0x7fff
	v_bfe_u32 v3, v5, 16, 1
	v_cndmask_b16 v81.l, 0x7fff, v0.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v49, v5, v3, 0x7fff
	v_bfe_u32 v3, v6, 16, 1
	scratch_load_b32 v0, off, off offset:608 ; 4-byte Folded Reload
	v_cndmask_b16 v82.l, 0x7fff, v49.h, s1
	v_add3_u32 v50, v6, v3, 0x7fff
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v3, v7, 16, 1
	v_cmp_o_f32_e64 s3, v7, v7
	v_cmp_o_f32_e64 s8, v8, v8
	v_cmp_o_f32_e64 s9, v9, v9
	v_cmp_o_f32_e64 s10, v10, v10
	v_add3_u32 v51, v7, v3, 0x7fff
	v_bfe_u32 v3, v8, 16, 1
	scratch_load_b32 v7, off, off offset:604 ; 4-byte Folded Reload
	v_cndmask_b16 v82.h, 0x7fff, v50.h, s2
	v_cndmask_b16 v83.l, 0x7fff, v51.h, s3
	v_add3_u32 v52, v8, v3, 0x7fff
	v_bfe_u32 v3, v9, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.h, 0x7fff, v52.h, s8
	v_add3_u32 v53, v9, v3, 0x7fff
	v_bfe_u32 v3, v10, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v84.l, 0x7fff, v53.h, s9
	v_add3_u32 v54, v10, v3, 0x7fff
	scratch_load_b32 v3, off, off offset:600 ; 4-byte Folded Reload
	v_cndmask_b16 v84.h, 0x7fff, v54.h, s10
	s_waitcnt vmcnt(1)
	ds_load_b128 v[7:10], v7
	s_waitcnt vmcnt(0)
	ds_load_b128 v[3:6], v3
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s16, v7, v7
	v_cmp_o_f32_e64 s17, v8, v8
	v_cmp_o_f32_e64 s18, v9, v9
	v_cmp_o_f32_e64 s19, v10, v10
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v55, v3, 16, 1
	v_cmp_o_f32_e64 s11, v3, v3
	v_cmp_o_f32_e64 s12, v4, v4
	v_cmp_o_f32_e64 s14, v5, v5
	v_cmp_o_f32_e64 s15, v6, v6
	v_add3_u32 v55, v3, v55, 0x7fff
	v_bfe_u32 v3, v4, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.l, 0x7fff, v55.h, s11
	v_add3_u32 v3, v4, v3, 0x7fff
	v_bfe_u32 v4, v5, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v85.h, 0x7fff, v3.h, s12
	v_add3_u32 v4, v5, v4, 0x7fff
	v_bfe_u32 v5, v6, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.l, 0x7fff, v4.h, s14
	v_add3_u32 v5, v6, v5, 0x7fff
	v_bfe_u32 v6, v7, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.h, 0x7fff, v5.h, s15
	v_add3_u32 v6, v7, v6, 0x7fff
	v_bfe_u32 v7, v8, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.l, 0x7fff, v6.h, s16
	v_add3_u32 v7, v8, v7, 0x7fff
	v_bfe_u32 v8, v9, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.h, 0x7fff, v7.h, s17
	v_add3_u32 v8, v9, v8, 0x7fff
	v_bfe_u32 v9, v10, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v88.l, 0x7fff, v8.h, s18
	v_add3_u32 v9, v10, v9, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v88.h, 0x7fff, v9.h, s19
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[3:6], off, off offset:192
	scratch_load_b128 v[7:10], off, off offset:208
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[3:10], v[81:88], v[65:72]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[3:6], v0
	scratch_load_b32 v0, off, off offset:612 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_bfe_u32 v1, v4, 16, 1
	v_cmp_o_f32_e64 s0, v4, v4
	v_cmp_o_f32_e64 s1, v5, v5
	v_cmp_o_f32_e64 s2, v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v1, v4, v1, 0x7fff
	v_cndmask_b16 v81.h, 0x7fff, v1.h, s0
	s_waitcnt vmcnt(0)
	ds_load_b128 v[7:10], v0
	v_bfe_u32 v0, v3, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v0, v3, v0, 0x7fff
	v_bfe_u32 v3, v5, 16, 1
	v_cndmask_b16 v81.l, 0x7fff, v0.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v49, v5, v3, 0x7fff
	v_bfe_u32 v3, v6, 16, 1
	v_cndmask_b16 v82.l, 0x7fff, v49.h, s1
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v50, v6, v3, 0x7fff
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v49, v75
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v3, v7, 16, 1
	v_cmp_o_f32_e64 s3, v7, v7
	v_cmp_o_f32_e64 s8, v8, v8
	v_cmp_o_f32_e64 s9, v9, v9
	v_cmp_o_f32_e64 s10, v10, v10
	v_add3_u32 v51, v7, v3, 0x7fff
	v_bfe_u32 v3, v8, 16, 1
	scratch_load_b32 v7, off, off offset:620 ; 4-byte Folded Reload
	v_cndmask_b16 v82.h, 0x7fff, v50.h, s2
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v50, v76
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v83.l, 0x7fff, v51.h, s3
	v_add3_u32 v52, v8, v3, 0x7fff
	v_bfe_u32 v3, v9, 16, 1
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v51, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v83.h, 0x7fff, v52.h, s8
	v_add3_u32 v53, v9, v3, 0x7fff
	v_bfe_u32 v3, v10, 16, 1
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v52, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v84.l, 0x7fff, v53.h, s9
	v_add3_u32 v54, v10, v3, 0x7fff
	scratch_load_b32 v3, off, off offset:616 ; 4-byte Folded Reload
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v53, v80
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v84.h, 0x7fff, v54.h, s10
	.loc	1 640 41                        ; attention_backward.py:640:41
	v_mul_f32_e32 v54, s85, v13
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s10, v191, v191
	s_waitcnt vmcnt(0)
	ds_load_b128 v[3:6], v3
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v55, v3, 16, 1
	v_cmp_o_f32_e64 s11, v3, v3
	v_cmp_o_f32_e64 s12, v4, v4
	v_cmp_o_f32_e64 s14, v5, v5
	v_cmp_o_f32_e64 s15, v6, v6
	v_add3_u32 v55, v3, v55, 0x7fff
	v_bfe_u32 v3, v4, 16, 1
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v85.l, 0x7fff, v55.h, s11
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v55, off, off offset:148 ; 4-byte Folded Reload
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[7:10], v7
	v_add3_u32 v3, v4, v3, 0x7fff
	v_bfe_u32 v4, v5, 16, 1
	v_cmp_o_f32_e64 s11, v252, v252
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v85.h, 0x7fff, v3.h, s12
	v_add3_u32 v4, v5, v4, 0x7fff
	v_bfe_u32 v5, v6, 16, 1
	v_cmp_o_f32_e64 s12, v250, v250
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v86.l, 0x7fff, v4.h, s14
	v_add3_u32 v5, v6, v5, 0x7fff
	v_cmp_o_f32_e64 s14, v248, v248
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v86.h, 0x7fff, v5.h, s15
	v_cmp_o_f32_e64 s15, v246, v246
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v6, v7, 16, 1
	v_cmp_o_f32_e64 s16, v7, v7
	v_cmp_o_f32_e64 s17, v8, v8
	v_cmp_o_f32_e64 s18, v9, v9
	v_cmp_o_f32_e64 s19, v10, v10
	v_add3_u32 v6, v7, v6, 0x7fff
	v_bfe_u32 v7, v8, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.l, 0x7fff, v6.h, s16
	v_add3_u32 v7, v8, v7, 0x7fff
	v_bfe_u32 v8, v9, 16, 1
	v_cmp_o_f32_e64 s16, v244, v244
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v87.h, 0x7fff, v7.h, s17
	v_add3_u32 v8, v9, v8, 0x7fff
	v_bfe_u32 v9, v10, 16, 1
	v_cmp_o_f32_e64 s17, v242, v242
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v88.l, 0x7fff, v8.h, s18
	v_add3_u32 v9, v10, v9, 0x7fff
	v_cmp_o_f32_e64 s18, v240, v240
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v88.h, 0x7fff, v9.h, s19
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[3:6], off, off offset:160
	scratch_load_b128 v[7:10], off, off offset:176
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s19, v238, v238
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[3:10], v[81:88], v[65:72]
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v3, v73
	v_cvt_f32_i32_e32 v10, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_dual_sub_f32 v0, v65, v30 :: v_dual_mul_f32 v3, v54, v3
	v_sub_f32_e32 v1, v66, v30
	v_sub_f32_e32 v4, v67, v30
	v_sub_f32_e32 v5, v68, v30
	v_sub_f32_e32 v6, v69, v30
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v3, v3, v55, -v204
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v7, v70, v30
	v_sub_f32_e32 v8, v71, v30
	v_sub_f32_e32 v9, v72, v30
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v30, v77
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v55, v3
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_and_b16 v3.l, 1, v92.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_eq_u16_e32 vcc_lo, 1, v3.l
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v87, 0, v55, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v0, v87, v0
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v0, s56, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v3, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_add3_u32 v3, v0, v3, 0x7fff
	.loc	1 644 25 is_stmt 1              ; attention_backward.py:644:25
	v_mul_f32_e32 v0, v54, v30
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v30, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_and_b16 v3.l, 1, v92.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s0, 1, v3.l
	v_and_b16 v3.l, 1, v91.h
	v_cmp_eq_u16_e64 s1, 1, v3.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v3.l, 0x7fff, v3.h, vcc_lo
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v0, v0, v30, -v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v0, v0
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v202, 0, v0, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v0, v202, v6
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v0, s56, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v6, v0, 16, 1
	v_cmp_o_f32_e64 s0, v0, v0
	v_add3_u32 v6, v0, v6, 0x7fff
	.loc	1 644 25 is_stmt 1              ; attention_backward.py:644:25
	v_mul_f32_e32 v0, v54, v10
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v10, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v3.h, 0x7fff, v6.h, s0
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v0, v0, v10, -v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v0, v0
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v30, 0, v0, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v0, v30, v1
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v0, s56, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v1, v0, 16, 1
	v_cmp_o_f32_e64 s1, v0, v0
	v_add3_u32 v1, v0, v1, 0x7fff
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	scratch_load_b32 v0, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, 0, v0
	ds_store_b16 v0, v3
	ds_store_b16_d16_hi v0, v3 offset:512
	v_bfe_i32 v0, v199, 0, 8
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v3.l, 0x7fff, v1.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v1, 15, v0
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v3.h, v0.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v6, -16, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v3.h, 4, v0.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v1, v1, v6, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v6.l, v3.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e32 v6.h, v13.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v0.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v10, -16, v6
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v0, v6, v10, vcc_lo
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e64 v6.h, v201.l
	v_mov_b16_e32 v6.l, v13.l
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e32 v10.h, v13.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v0, v0
	v_mul_f32_e32 v1, v1, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v0, v0, v6
	v_bfe_i32 v6, v22, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v1, 0, v1, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v0, 0, v0, s6
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v3.h, 4, v6.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v6.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s1, v1, v1
	v_cmp_o_f32_e64 s2, v0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v10.l, v3.h, 15
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v3.h, v6.l, 15
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v22, -16, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v10, v10, v22, vcc_lo
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v22, 15, v6
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.h
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_and_b16 v3.h, 1, v91.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v10, v10
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v6, -16, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v6, v22, v6, vcc_lo
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e64 v22.h, v200.l
	v_mov_b16_e32 v22.l, v13.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v6, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v10, v22, v10
	v_mul_f32_e32 v6, v22, v6
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v22.h, v13.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v10, 0, v10, s6
	v_cndmask_b32_e64 v6, 0, v6, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v22.l, v10.h
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s0, v6, v6
	v_and_b32_e32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v22, v10, v22, 0x7fff
	v_mov_b16_e32 v10.l, v6.h
	v_mov_b16_e32 v10.h, v13.l
	v_and_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v10, v6, v10, 0x7fff
	v_bfe_u32 v6, v1, 16, 1
	v_add3_u32 v6, v1, v6, 0x7fff
	v_bfe_u32 v1, v0, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v1, v0, v1, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v6.h, s1
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v6, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v0, v54, v49
	v_mul_f32_e32 v49, v54, v50
	v_mul_f32_e32 v50, v54, v51
	v_mul_f32_e32 v51, v54, v52
	v_mul_f32_e32 v52, v54, v53
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v53.h, 0x7fff, v22.h, vcc_lo
	v_cndmask_b16 v53.l, 0x7fff, v10.h, s0
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v10, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v3.h
	v_and_b16 v3.h, 1, v90.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s2
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v22, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 689 25                        ; attention_backward.py:689:25
	v_cmp_eq_u16_e64 s0, 1, v3.h
	v_and_b16 v3.h, 1, v90.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s1, 1, v3.h
	v_and_b16 v3.h, 1, v89.h
	v_cmp_eq_u16_e64 s2, 1, v3.h
	v_and_b16 v3.h, 1, v89.l
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u16_e64 s3, 1, v3.h
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(2)
	v_fma_f32 v0, v0, v6, -v204
	scratch_load_b32 v6, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v0, v0
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(2)
	v_fma_f32 v10, v50, v10, -v204
	s_waitcnt vmcnt(0)
	v_fma_f32 v6, v49, v6, -v204
	v_fma_f32 v49, v51, v22, -v204
	scratch_load_b32 v22, off, off offset:332 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fma_f32 v50, v52, v22, -v204
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e32 v22, 0, v0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v0, v22, v4
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v0, s56, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v4, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_add3_u32 v4, v0, v4, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v0, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v199, 0, v0, s0
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v0, v199, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v0, s56, v0
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v5, v0, 16, 1
	v_cmp_o_f32_e64 s0, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_add3_u32 v5, v0, v5, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v0, v10
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v10.l, v13.l
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v200, 0, v0, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v0, v200, v7
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v0, s56, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v6, v0, 16, 1
	v_cmp_o_f32_e64 s1, v0, v0
	v_add3_u32 v6, v0, v6, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v0, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v3.h, 0x7fff, v6.h, s1
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v201, 0, v0, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v0, v201, v8
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v0, s56, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v7, v0, 16, 1
	v_cmp_o_f32_e64 s2, v0, v0
	v_add3_u32 v7, v0, v7, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v0, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v204, 0, v0, s3
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v0, v204, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v0, s56, v0
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v8, v0, 16, 1
	v_cmp_o_f32_e64 s3, v0, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v8, v0, v8, 0x7fff
	scratch_load_b32 v0, off, off offset:624 ; 4-byte Folded Reload
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v3
	ds_store_b16_d16_hi v0, v3 offset:512
	scratch_load_b32 v0, off, off offset:628 ; 4-byte Folded Reload
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v3.l, 0x7fff, v4.h, vcc_lo
	v_cndmask_b16 v3.h, 0x7fff, v7.h, s2
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v3
	ds_store_b16_d16_hi v0, v3 offset:512
	v_bfe_i32 v0, v31, 0, 8
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v3.l, 0x7fff, v5.h, s0
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v31.l, v13.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v4, 15, v0
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v3.h, v0.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v5, -16, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.h
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v4, v4, v5, vcc_lo
	v_bfe_i32 v5, v29, 0, 8
	.loc	1 728 51 is_stmt 1              ; attention_backward.py:728:51
	v_mov_b16_e32 v29.l, v13.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v4, v4
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v6, 15, v5
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v3.h, v5.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v7, -16, v6
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v3.h, 4, v0.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v6, v6, v7, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v7.l, v3.h, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e32 v7.h, v13.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v0.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v3.h, 4, v5.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v9, -16, v7
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v0, v7, v9, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v7.l, v3.h, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v5.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v3.h, 0x7fff, v8.h, s3
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v9, -16, v7
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v5, v7, v9, vcc_lo
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v7.h, v12.l
	v_mov_b16_e32 v7.l, v13.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v9.l, v13.l
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v12.l, v13.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v5, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v4, v4, v7
	v_mul_f32_e32 v0, v0, v7
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v7.h, v16.l
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v16.l, v13.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v4, 0, v4, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v0, 0, v0, s6
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v6, v6, v7
	v_mul_f32_e32 v5, v5, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v7, v4, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_cmp_o_f32_e64 s0, v0, v0
	v_add3_u32 v7, v4, v7, 0x7fff
	v_bfe_u32 v4, v0, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v4, v0, v4, 0x7fff
	v_cndmask_b32_e64 v0, 0, v6, s5
	v_bfe_u32 v6, v0, 16, 1
	v_cmp_o_f32_e64 s1, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v6, v0, v6, 0x7fff
	v_cndmask_b32_e64 v0, 0, v5, s6
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v5, v0, 16, 1
	v_cmp_o_f32_e64 s2, v0, v0
	v_add3_u32 v5, v0, v5, 0x7fff
	scratch_load_b32 v0, off, off offset:632 ; 4-byte Folded Reload
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	ds_store_b16 v0, v3
	ds_store_b16_d16_hi v0, v3 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v3, off, off offset:380 ; 4-byte Folded Reload
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v0.l, 0x7fff, v7.h, vcc_lo
	v_cndmask_b16 v0.h, 0x7fff, v4.h, s0
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s2
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v3, 0, v3
	ds_load_b128 v[74:77], v3
	scratch_load_b32 v3, off, off offset:636 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[78:81], v3
	scratch_load_b32 v3, off, off offset:640 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[66:69], v3
	scratch_load_b32 v3, off, off offset:644 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[70:73], v3
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_stride64_b32 v203, v53, v1 offset1:1
	ds_store_2addr_stride64_b32 v203, v0, v4 offset0:2 offset1:3
	v_bfe_i32 v1, v21, 0, 8
	v_bfe_i32 v0, v113, 0, 8
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v113.l, v13.l
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v21.l, v13.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v5, 15, v1
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v3.l, v1.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v6, -16, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.l
	v_bfe_i32 v3, v112, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e32 v3.h, v13.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v112.l, v13.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v5, v5, v6, vcc_lo
	v_mov_b16_e32 v6.l, v3.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v5, v5
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v3.l, v6.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v7, 15, v6
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v6.h, v23.l
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v23.l, v13.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v3.l, 4, v1.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v8, -16, v7
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v3.l, v3.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v7, v7, v8, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v1.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v8, -16, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v7, v7
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v1, v3, v8, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v3.l, 4, v6.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v6.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v6.l, v13.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v1, v1
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v3.l, v3.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v5, v5, v6
	v_mul_f32_e32 v1, v1, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v8, -16, v3
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v6.h, v11.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v5, 0, v5, s5
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v11.l, v13.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v1, 0, v1, s6
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v3, v3, v8, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v7, v7, v6
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v4, 15, v0
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s0, v1, v1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v3, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v3, v3, v6
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v6, v5, 16, 1
	v_add3_u32 v6, v5, v6, 0x7fff
	v_bfe_u32 v5, v1, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v5, v1, v5, 0x7fff
	v_cndmask_b32_e64 v1, 0, v7, s5
	v_bfe_u32 v7, v1, 16, 1
	v_cmp_o_f32_e64 s1, v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v7, v1, v7, 0x7fff
	v_cndmask_b32_e64 v1, 0, v3, s6
	v_cndmask_b16 v5.l, 0x7fff, v7.h, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v3, v1, 16, 1
	v_cmp_o_f32_e64 s2, v1, v1
	v_add3_u32 v3, v1, v3, 0x7fff
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v3.l, v0.l, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v1.l, 0x7fff, v6.h, vcc_lo
	v_cndmask_b16 v1.h, 0x7fff, v5.h, s0
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v6, -16, v4
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v5.h, 0x7fff, v3.h, s2
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.l
	v_bfe_i32 v3, v110, 0, 8
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_mov_b16_e32 v3.h, v13.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v4, v4, v6, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v6.l, v3.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v3.l, v6.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v7, 15, v6
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v6.h, v111.l
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v3.l, 4, v0.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v8, -16, v7
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v3.l, v3.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v7, v7, v8, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v0.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v8, -16, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v7, v7
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v0, v3, v8, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v3.l, 4, v6.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v6.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v6.l, v13.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v0, v0
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v3.l, v3.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v4, v4, v6
	v_mul_f32_e32 v0, v0, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v8, -16, v3
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v6.h, v109.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v4, 0, v4, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v0, 0, v0, s6
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v3, v3, v8, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v7, v7, v6
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v3, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v3, v3, v6
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v6, v4, 16, 1
	v_add3_u32 v6, v4, v6, 0x7fff
	v_bfe_u32 v4, v0, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v4, v0, v4, 0x7fff
	v_cndmask_b32_e64 v0, 0, v7, s5
	v_bfe_u32 v7, v0, 16, 1
	v_cmp_o_f32_e64 s1, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v7, v0, v7, 0x7fff
	v_cndmask_b32_e64 v0, 0, v3, s6
	v_bfe_u32 v3, v0, 16, 1
	v_cmp_o_f32_e64 s2, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v3, v0, v3, 0x7fff
	v_cndmask_b16 v0.l, 0x7fff, v6.h, vcc_lo
	v_cndmask_b16 v0.h, 0x7fff, v4.h, s0
	v_cndmask_b16 v3.l, 0x7fff, v7.h, s1
	v_cndmask_b16 v3.h, 0x7fff, v3.h, s2
	ds_store_2addr_stride64_b32 v203, v1, v5 offset0:4 offset1:5
	ds_store_2addr_stride64_b32 v203, v0, v3 offset0:6 offset1:7
	v_bfe_i32 v0, v108, 0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v1, 15, v0
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v3.l, v0.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v4, -16, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.l
	v_bfe_i32 v3, v106, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e32 v3.h, v13.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v1, v1, v4, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v4.l, v3.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v3.l, v4.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v5, 15, v4
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v4.h, v107.l
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v3.l, 4, v0.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v6, -16, v5
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v3.l, v3.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v5, v5, v6, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v0.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v6, -16, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v5, v5
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v0, v3, v6, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v3.l, 4, v4.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v4.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v4.l, v13.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v0, v0
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v3.l, v3.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v1, v1, v4
	v_mul_f32_e32 v0, v0, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v6, -16, v3
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v4.h, v105.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v1, 0, v1, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v0, 0, v0, s6
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v3, v3, v6, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v5, v5, v4
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s0, v0, v0
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v3, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v3, v3, v4
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v4, v1, 16, 1
	v_add3_u32 v4, v1, v4, 0x7fff
	v_bfe_u32 v1, v0, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v1, v0, v1, 0x7fff
	v_cndmask_b32_e64 v0, 0, v5, s5
	v_bfe_u32 v5, v0, 16, 1
	v_cmp_o_f32_e64 s1, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v5, v0, v5, 0x7fff
	v_cndmask_b32_e64 v0, 0, v3, s6
	v_bfe_u32 v3, v0, 16, 1
	v_cmp_o_f32_e64 s2, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v3, v0, v3, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v1.h, s0
	v_bfe_i32 v1, v102, 0, 8
	v_cndmask_b16 v0.l, 0x7fff, v4.h, vcc_lo
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v4, 15, v1
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v3.l, v1.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v6, -16, v4
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v4, v4, v6, vcc_lo
	v_bfe_i32 v6, v101, 0, 8
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v5.l, v6.l
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v6, 15, v5
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v3.l, v5.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v7, -16, v6
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.l
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v3.l, 4, v1.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v6, v6, v7, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v7.l, v3.l, 15
	.loc	1 649 34 is_stmt 0              ; attention_backward.py:649:34
	v_mov_b16_e32 v7.h, v13.l
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v1.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v3.l, 4, v5.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v8, -16, v7
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v1, v7, v8, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v7.l, v3.l, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v5.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v8, -16, v7
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e32 v7, v7, v8, vcc_lo
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v8.h, v104.l
	v_mov_b16_e32 v8.l, v13.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v7, v7
	v_mul_f32_e32 v4, v4, v8
	v_mul_f32_e32 v1, v1, v8
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v8.h, v103.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v4, 0, v4, s5
	v_cndmask_b32_e64 v1, 0, v1, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v6, v6, v8
	v_mul_f32_e32 v7, v7, v8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v8, v4, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v4, v4
	v_cmp_o_f32_e64 s0, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v8, v4, v8, 0x7fff
	v_bfe_u32 v4, v1, 16, 1
	v_add3_u32 v4, v1, v4, 0x7fff
	v_cndmask_b32_e64 v1, 0, v6, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v4.l, 0x7fff, v8.h, vcc_lo
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v6, v1, 16, 1
	v_cmp_o_f32_e64 s3, v1, v1
	v_add3_u32 v6, v1, v6, 0x7fff
	v_cndmask_b32_e64 v1, 0, v7, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s3
	v_bfe_u32 v7, v1, 16, 1
	v_cmp_o_f32_e64 s8, v1, v1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s3, v201, v201
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v7, v1, v7, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v5.h, s1
	v_cndmask_b16 v1.h, 0x7fff, v3.h, s2
	v_cndmask_b16 v5.h, 0x7fff, v7.h, s8
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s8, v204, v204
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_store_2addr_stride64_b32 v203, v0, v1 offset0:8 offset1:9
	v_bfe_i32 v0, v100, 0, 8
	ds_store_2addr_stride64_b32 v203, v4, v5 offset0:10 offset1:11
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v1, 15, v0
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v3.l, v0.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v6, -16, v1
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.l
	v_bfe_i32 v3, v99, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e32 v3.h, v13.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v1, v1, v6, vcc_lo
	v_mov_b16_e32 v6.l, v3.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v1, v1
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v3.l, v6.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v7, 15, v6
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v6.h, v98.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v3.l, 4, v0.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v8, -16, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v3.l, v3.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v7, v7, v8, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v0.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v8, -16, v3
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v7, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v0, v3, v8, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v3.l, 4, v6.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v6.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v6.l, v13.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v3.l, v3.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v1, v1, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v0, v0, v6
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v8, -16, v3
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v6.h, v97.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v1, 0, v1, s5
	v_cndmask_b32_e64 v0, 0, v0, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v3, v3, v8, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v7, v7, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cmp_o_f32_e64 s0, v0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v3, v3
	v_mul_f32_e32 v3, v3, v6
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v6, v1, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v6, v1, v6, 0x7fff
	v_bfe_u32 v1, v0, 16, 1
	v_add3_u32 v1, v0, v1, 0x7fff
	v_cndmask_b32_e64 v0, 0, v7, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v7, v0, 16, 1
	v_cmp_o_f32_e64 s1, v0, v0
	v_add3_u32 v7, v0, v7, 0x7fff
	v_cndmask_b32_e64 v0, 0, v3, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v1.l, 0x7fff, v7.h, s1
	v_bfe_u32 v3, v0, 16, 1
	v_cmp_o_f32_e64 s2, v0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v3, v0, v3, 0x7fff
	v_cndmask_b16 v0.h, 0x7fff, v1.h, s0
	v_cndmask_b16 v0.l, 0x7fff, v6.h, vcc_lo
	v_cndmask_b16 v1.h, 0x7fff, v3.h, s2
	v_bfe_i32 v3, v96, 0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v4.l, v3.l
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v5, 15, v4
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v3.l, v4.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v6, -16, v5
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.l
	v_bfe_i32 v3, v95, 0, 8
	.loc	1 649 34 is_stmt 1              ; attention_backward.py:649:34
	v_mov_b16_e32 v3.h, v13.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v5, v5, v6, vcc_lo
	v_mov_b16_e32 v6.l, v3.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v5, v5
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v3.l, v6.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v7, 15, v6
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_mov_b16_e32 v6.h, v94.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v3.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v3.l, 4, v4.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v8, -16, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v3.l, v3.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v7, v7, v8, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v4.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v8, -16, v3
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v7, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v4, v3, v8, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v3.l, 4, v6.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v6.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v6.l, v13.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v3.l, v3.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v5, v5, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v4, v4, v6
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v8, -16, v3
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_mov_b16_e32 v6.h, v93.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v5, 0, v5, s5
	v_cndmask_b32_e64 v4, 0, v4, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v3, v3, v8, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v7, v7, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v8.l, v13.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s0, v4, v4
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v3, v3
	v_mul_f32_e32 v3, v3, v6
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_bfe_u32 v6, v5, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v3, 0, v3, s6
	v_add3_u32 v6, v5, v6, 0x7fff
	v_bfe_u32 v5, v4, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v3, v3
	v_add3_u32 v5, v4, v5, 0x7fff
	v_cndmask_b32_e64 v4, 0, v7, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_bfe_u32 v7, v4, 16, 1
	v_cmp_o_f32_e64 s1, v4, v4
	v_add3_u32 v7, v4, v7, 0x7fff
	v_bfe_u32 v4, v3, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v7.l, v13.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v4, v3, v4, 0x7fff
	v_cndmask_b16 v3.l, 0x7fff, v6.h, vcc_lo
	v_cndmask_b16 v3.h, 0x7fff, v5.h, s0
	v_cndmask_b16 v4.l, 0x7fff, v7.h, s1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v87, v87
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s2
	ds_store_2addr_stride64_b32 v203, v0, v1 offset0:12 offset1:13
	ds_store_2addr_stride64_b32 v203, v3, v4 offset0:14 offset1:15
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v95, v14 offset:512
	ds_load_u16_d16 v96, v14 offset:768
	ds_load_u16_d16 v97, v14 offset:1024
	ds_load_u16_d16 v100, v14 offset:1792
	ds_load_u16_d16 v98, v14 offset:1280
	ds_load_u16_d16 v105, v14 offset:1088
	ds_load_u16_d16 v104, v14 offset:832
	s_waitcnt lgkmcnt(1)
	ds_load_u16_d16_hi v105, v14 offset:1216
	ds_load_u16_d16 v94, v14 offset:256
	ds_load_u16_d16 v93, v14
	ds_load_u16_d16 v99, v14 offset:1536
	ds_load_u16_d16_hi v95, v14 offset:640
	ds_load_u16_d16_hi v96, v14 offset:896
	ds_load_u16_d16_hi v97, v14 offset:1152
	ds_load_u16_d16 v106, v14 offset:1344
	ds_load_u16_d16 v85, v14 offset:2816
	ds_load_u16_d16 v86, v14 offset:3072
	ds_load_u16_d16 v92, v14 offset:2624
	ds_load_u16_d16 v91, v14 offset:2368
	ds_load_u16_d16 v82, v14 offset:2048
	ds_load_u16_d16 v83, v14 offset:2304
	ds_load_u16_d16 v84, v14 offset:2560
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v92, v14 offset:2752
	ds_load_u16_d16_hi v99, v14 offset:1664
	ds_load_u16_d16_hi v100, v14 offset:1920
	ds_load_u16_d16_hi v98, v14 offset:1408
	ds_load_u16_d16 v101, v14 offset:64
	ds_load_u16_d16_hi v94, v14 offset:384
	ds_load_u16_d16 v103, v14 offset:576
	ds_load_u16_d16 v102, v14 offset:320
	ds_load_u16_d16_hi v93, v14 offset:128
	ds_load_u16_d16 v107, v14 offset:1600
	ds_load_u16_d16 v90, v14 offset:2112
	ds_load_u16_d16 v108, v14 offset:1856
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v0, v87, 16, 1
	v_cmp_o_f32_e64 s0, v30, v30
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v101, v14 offset:192
	ds_load_u16_d16_hi v104, v14 offset:960
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v103, v14 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v102, v14 offset:448
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v0, v87, v0, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(7)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[93:100], v[74:81], v[57:64]
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_load_u16_d16_hi v106, v14 offset:1472
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v107, v14 offset:1728
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v108, v14 offset:1984
	ds_load_u16_d16_hi v85, v14 offset:2944
	ds_load_u16_d16_hi v84, v14 offset:2688
	ds_load_u16_d16_hi v83, v14 offset:2432
	ds_load_u16_d16_hi v82, v14 offset:2176
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v3, v22, 16, 1
	v_cndmask_b16 v13.h, 0x7fff, v0.h, vcc_lo
	v_cmp_o_f32_e64 s1, v22, v22
	v_bfe_u32 v4, v200, 16, 1
	v_bfe_u32 v5, v201, 16, 1
	v_add3_u32 v3, v22, v3, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v0, v87, v13
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_load_u16_d16 v93, v14 offset:2880
	ds_load_u16_d16 v87, v14 offset:3328
	ds_load_u16_d16 v94, v14 offset:3136
	ds_load_u16_d16_hi v91, v14 offset:2496
	ds_load_u16_d16_hi v90, v14 offset:2240
	ds_load_u16_d16 v88, v14 offset:3584
	ds_load_u16_d16 v89, v14 offset:3840
	ds_load_u16_d16_hi v86, v14 offset:3200
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v93, v14 offset:3008
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v87, v14 offset:3456
	ds_load_u16_d16 v97, v14 offset:3904
	ds_load_u16_d16 v96, v14 offset:3648
	ds_load_u16_d16 v95, v14 offset:3392
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v94, v14 offset:3264
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v1, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v88, v14 offset:3712
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v89, v14 offset:3968
	s_waitcnt lgkmcnt(5)
	ds_load_u16_d16_hi v97, v14 offset:4032
	s_waitcnt lgkmcnt(5)
	ds_load_u16_d16_hi v96, v14 offset:3776
	s_waitcnt lgkmcnt(5)
	ds_load_u16_d16_hi v95, v14 offset:3520
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v1, v0, v1, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v0, v30, 16, 1
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v49, off, off offset:648
	scratch_load_b32 v50, off, off offset:652
	scratch_load_b32 v51, off, off offset:656
	scratch_load_b32 v52, off, off offset:660
	scratch_load_b32 v53, off, off offset:664
	scratch_load_b32 v54, off, off offset:668
	scratch_load_b32 v55, off, off offset:672
	v_add3_u32 v0, v30, v0, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v3.h, s1
	v_bfe_u32 v3, v202, 16, 1
	v_bfe_u32 v6, v204, 16, 1
	v_cmp_o_f32_e64 s1, v202, v202
	v_cndmask_b16 v12.h, 0x7fff, v0.h, s0
	v_bfe_u32 v0, v199, 16, 1
	v_cmp_o_f32_e64 s0, v199, v199
	v_add3_u32 v3, v202, v3, 0x7fff
	v_add3_u32 v4, v200, v4, 0x7fff
	v_cmp_o_f32_e64 s2, v200, v200
	v_add3_u32 v0, v199, v0, 0x7fff
	v_add3_u32 v5, v201, v5, 0x7fff
	v_add3_u32 v6, v204, v6, 0x7fff
	v_cndmask_b16 v29.h, 0x7fff, v3.h, s1
	v_cndmask_b16 v23.h, 0x7fff, v4.h, s2
	v_cndmask_b16 v31.h, 0x7fff, v0.h, s0
	scratch_load_b32 v0, off, off offset:300 ; 4-byte Folded Reload
	v_cndmask_b16 v21.h, 0x7fff, v5.h, s3
	v_cndmask_b16 v16.h, 0x7fff, v6.h, s8
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v3.l, 0x7fff, v1.h, vcc_lo
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[154:161], v[101:108], v[74:81], v[154:161]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v184, v184
	v_cmp_o_f32_e64 s0, v180, v180
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v4.l, v13.l
	v_mov_b16_e32 v5.l, v13.l
	v_mov_b16_e32 v6.l, v13.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[57:64], v[82:89], v[66:73], v[57:64]
	v_wmma_f32_16x16x16_bf16 v[154:161], v[90:97], v[66:73], v[154:161]
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, 0, v0
	ds_store_b16_d16_hi v0, v13
	ds_store_b16_d16_hi v49, v12
	ds_store_b16_d16_hi v50, v11
	ds_store_b16_d16_hi v51, v31
	ds_store_b16_d16_hi v52, v29
	ds_store_b16_d16_hi v53, v23
	ds_store_b16_d16_hi v54, v21
	ds_store_b16_d16_hi v55, v16
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v56, off, off offset:676
	scratch_load_b32 v127, off, off offset:692
	scratch_load_b32 v123, off, off offset:680
	scratch_load_b32 v124, off, off offset:684
	scratch_load_b32 v128, off, off offset:696
	scratch_load_b32 v129, off, off offset:700
	scratch_load_b32 v126, off, off offset:688
	scratch_load_b32 v1, off, off offset:292
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v21, v201, v21 :: v_dual_sub_f32 v16, v204, v16
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v201.l, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s8, v21, v21
	v_cmp_o_f32_e64 s9, v16, v16
	.loc	1 727 34                        ; attention_backward.py:727:34
	s_waitcnt vmcnt(7)
	ds_load_b64 v[77:78], v56
	s_waitcnt vmcnt(6)
	ds_load_b64 v[79:80], v127
	s_waitcnt vmcnt(5)
	ds_load_b64 v[100:101], v123
	s_waitcnt vmcnt(3)
	ds_load_b64 v[74:75], v128
	s_waitcnt vmcnt(2)
	ds_load_b64 v[108:109], v129
	s_waitcnt vmcnt(1)
	ds_load_b64 v[110:111], v126
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v203, 0, v1
	ds_load_b64 v[106:107], v124
	ds_load_b64 v[103:104], v203
	.loc	1 728 34                        ; attention_backward.py:728:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v0, v3
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v0, v184, 16, 1
	v_bfe_u32 v1, v180, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v0, v184, v0, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v98.h, v77.l
	v_mov_b16_e32 v102.h, v78.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v1, v180, v1, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v105.l, v75.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v3.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v196, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v196, v196
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v105.h, v109.l
	v_mov_b16_e32 v109.l, v75.h
	v_mov_b16_e32 v99.h, v106.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v0, v196, v0, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v106.l, v100.h
	v_mov_b16_e32 v77.l, v103.h
	v_mov_b16_e32 v103.h, v107.l
	v_mov_b16_e32 v107.l, v101.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v5.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v192, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v192, v192
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b32_e32 v75, v106
	v_mov_b16_e32 v101.h, v108.l
	v_mov_b16_e32 v108.l, v74.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v0, v192, v0, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v98.l, v103.l
	v_mov_b16_e32 v103.l, v101.l
	v_mov_b16_e32 v101.l, v74.l
	v_mov_b32_e32 v74, v77
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v6.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v251, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v251, v251
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b32_e32 v77, v108
	v_mov_b32_e32 v81, v109
	v_mov_b16_e32 v100.h, v79.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v0, v251, v0, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v79.l, v110.h
	v_mov_b16_e32 v78.l, v104.h
	v_mov_b16_e32 v104.h, v80.l
	v_mov_b16_e32 v80.l, v111.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v7.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v247, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v247, v247
	v_cndmask_b16 v4.h, 0x7fff, v1.h, s0
	v_bfe_u32 v1, v231, 16, 1
	v_cmp_o_f32_e64 s0, v231, v231
	v_add3_u32 v0, v247, v0, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b32_e32 v76, v79
	v_mov_b32_e32 v79, v107
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v1, v231, v1, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v102.l, v104.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v8.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v243, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v243, v243
	v_cndmask_b16 v107.h, 0x7fff, v1.h, s0
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v1, v22, v11
	v_sub_f32_e32 v22, v200, v23
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v0, v243, v0, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v11, v199, v31
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v104.l, v111.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s0, v1, v1
	v_cmp_o_f32_e64 s3, v22, v22
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v9.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v239, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v239, v239
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s1, v11, v11
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v109.l, v13.l
	v_mov_b16_e32 v111.l, v13.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v0, v239, v0, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v99.l, v100.l
	v_mov_b16_e32 v100.l, v110.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v106.l, v13.l
	v_mov_b16_e32 v107.l, v13.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v10.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v235, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v235, v235
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v108.l, v13.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v147, v147, v9
	v_sub_f32_e32 v149, v149, v10
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v0, v235, v0, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v153, v153, v8
	v_sub_f32_e32 v151, v151, v7
	v_sub_f32_e32 v65, v137, v6
	v_sub_f32_e32 v135, v135, v5
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v106.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v227, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v227, v227
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v110.l, v13.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v117, v117, v107
	v_sub_f32_e32 v115, v115, v106
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v0, v227, v0, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v200.l, v13.l
	v_mov_b16_e64 v192.l, v13.l
	v_mov_b16_e64 v199.l, v13.l
	v_mov_b16_e64 v196.l, v13.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v108.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v223, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v223, v223
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v184.l, v13.l
	v_mov_b16_e64 v180.l, v13.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v0, v223, v0, 0x7fff
	v_mov_b32_e32 v223, v138
	v_cndmask_b16 v109.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v219, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v219, v219
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v0, v219, v0, 0x7fff
	v_mov_b32_e32 v219, v130
	v_cndmask_b16 v110.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v215, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v215, v215
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v215, v0, 0x7fff
	v_cndmask_b16 v111.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v211, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v211, v211
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v0, v211, v0, 0x7fff
	v_cndmask_b16 v112.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v207, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v207, v207
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v0, v207, v0, 0x7fff
	v_bfe_u32 v207, v222, 16, 1
	v_cndmask_b16 v113.h, 0x7fff, v0.h, vcc_lo
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v0, v30, v12
	v_sub_f32_e32 v12, v202, v29
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v202.l, v13.l
	v_mov_b16_e32 v30.l, v13.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v23, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cmp_o_f32_e64 s2, v12, v12
	v_add3_u32 v23, v0, v23, 0x7fff
	v_bfe_u32 v0, v1, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v23.l, v13.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v3.l, 0x7fff, v23.h, vcc_lo
	v_add3_u32 v0, v1, v0, 0x7fff
	v_bfe_u32 v1, v11, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v186, v186
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v49, v3
	v_cndmask_b16 v3.l, 0x7fff, v0.h, s0
	v_add3_u32 v1, v11, v1, 0x7fff
	v_bfe_u32 v11, v12, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v0, v186, 16, 1
	v_cmp_o_f32_e64 s0, v198, v198
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v50, v3
	v_cndmask_b16 v3.l, 0x7fff, v1.h, s1
	v_add3_u32 v11, v12, v11, 0x7fff
	v_bfe_u32 v12, v22, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s1, v194, v194
	v_add3_u32 v0, v186, v0, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v51, v3
	v_cndmask_b16 v3.l, 0x7fff, v11.h, s2
	v_add3_u32 v12, v22, v12, 0x7fff
	v_bfe_u32 v22, v21, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v11, v194, 16, 1
	v_cmp_o_f32_e64 s2, v253, v253
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v52, v3
	v_cndmask_b16 v3.l, 0x7fff, v12.h, s3
	v_add3_u32 v22, v21, v22, 0x7fff
	v_bfe_u32 v21, v16, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s3, v249, v249
	v_add3_u32 v11, v194, v11, 0x7fff
	v_bfe_u32 v12, v253, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v53, v3
	v_add3_u32 v21, v16, v21, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v16, v249, 16, 1
	v_cndmask_b16 v199.h, 0x7fff, v11.h, s1
	v_add3_u32 v12, v253, v12, 0x7fff
	v_bfe_u32 v11, v237, 16, 1
	v_cmp_o_f32_e64 s1, v237, v237
	v_add3_u32 v16, v249, v16, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v3.l, 0x7fff, v22.h, s8
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v194.h, 0x7fff, v12.h, s2
	v_add3_u32 v11, v237, v11, 0x7fff
	v_bfe_u32 v12, v233, 16, 1
	v_cndmask_b16 v196.h, 0x7fff, v16.h, s3
	v_bfe_u32 v16, v229, 16, 1
	v_cmp_o_f32_e64 s3, v229, v229
	v_cndmask_b16 v192.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v182, 16, 1
	v_bfe_u32 v1, v198, 16, 1
	v_add3_u32 v16, v229, v16, 0x7fff
	v_add3_u32 v12, v233, v12, 0x7fff
	v_cmp_o_f32_e64 s2, v233, v233
	v_cndmask_b16 v29.h, 0x7fff, v11.h, s1
	v_bfe_u32 v11, v217, 16, 1
	v_cndmask_b16 v23.h, 0x7fff, v16.h, s3
	v_bfe_u32 v16, v209, 16, 1
	v_cmp_o_f32_e64 s3, v209, v209
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v54, v3
	v_cndmask_b16 v3.l, 0x7fff, v21.h, s9
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v0, v182, v0, 0x7fff
	v_add3_u32 v16, v209, v16, 0x7fff
	v_add3_u32 v209, v222, v207, 0x7fff
	v_bfe_u32 v207, v220, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v182, v182
	v_add3_u32 v1, v198, v1, 0x7fff
	v_cndmask_b16 v30.h, 0x7fff, v12.h, s2
	v_add3_u32 v11, v217, v11, 0x7fff
	v_add3_u32 v215, v220, v207, 0x7fff
	v_bfe_u32 v207, v218, 16, 1
	v_cmp_o_f32_e64 s1, v217, v217
	v_bfe_u32 v12, v213, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_store_b16 v55, v3
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v200.h, 0x7fff, v0.h, vcc_lo
	v_add3_u32 v211, v218, v207, 0x7fff
	v_bfe_u32 v207, v216, 16, 1
	v_cndmask_b16 v198.h, 0x7fff, v1.h, s0
	v_bfe_u32 v0, v245, 16, 1
	v_bfe_u32 v1, v241, 16, 1
	v_add3_u32 v12, v213, v12, 0x7fff
	v_add3_u32 v217, v216, v207, 0x7fff
	v_bfe_u32 v207, v214, 16, 1
	v_cmp_o_f32_e64 s2, v213, v213
	.loc	1 728 34                        ; attention_backward.py:728:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[49:50], v203
	ds_load_b64 v[203:204], v123
	ds_load_b64 v[253:254], v124
	ds_load_b64 v[52:53], v56
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v213, v214, v207, 0x7fff
	v_bfe_u32 v207, v212, 16, 1
	v_add3_u32 v0, v245, v0, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v245, v245
	v_add3_u32 v1, v241, v1, 0x7fff
	v_cmp_o_f32_e64 s0, v241, v241
	v_add3_u32 v214, v212, v207, 0x7fff
	v_bfe_u32 v207, v210, 16, 1
	v_cndmask_b16 v201.h, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v225, 16, 1
	v_cndmask_b16 v202.h, 0x7fff, v1.h, s0
	v_bfe_u32 v1, v221, 16, 1
	v_add3_u32 v212, v210, v207, 0x7fff
	v_bfe_u32 v207, v208, 16, 1
	v_add3_u32 v0, v225, v0, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v225, v225
	v_add3_u32 v1, v221, v1, 0x7fff
	v_cmp_o_f32_e64 s0, v221, v221
	v_add3_u32 v216, v208, v207, 0x7fff
	v_bfe_u32 v207, v206, 16, 1
	v_cndmask_b16 v186.h, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v180.h, 0x7fff, v16.h, s3
	v_cndmask_b16 v182.h, 0x7fff, v1.h, s0
	v_mov_b32_e32 v221, v132
	v_mov_b32_e32 v225, v140
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e32 v124.h, v52.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v218, v206, v207, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v206.l, v13.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v16, v133, v111
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_mov_b16_e32 v52.l, v49.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v22, v141, v109
	.loc	1 728 34                        ; attention_backward.py:728:34
	ds_load_b64 v[54:55], v127
	ds_load_b64 v[140:141], v128
	ds_load_b64 v[0:1], v129
	ds_load_b64 v[132:133], v126
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v3.l, v13.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v184.h, 0x7fff, v11.h, s1
	v_cndmask_b16 v31.h, 0x7fff, v12.h, s2
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v10.l, v202.h
	v_mov_b16_e64 v9.l, v201.h
	v_mov_b16_e64 v8.l, v196.h
	v_mov_b16_e64 v7.l, v194.h
	v_mov_b16_e64 v6.l, v199.h
	v_mov_b16_e64 v5.l, v198.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v207.l, v13.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v20, v20, v4
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v4.l, v200.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v208.l, v13.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v18, v18, v3
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v3.l, v192.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v121, v113
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v113.l, v180.h
	v_mov_b16_e64 v111.l, v184.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v21, v131, v110
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[3:10], v[98:105], v[33:40]
	v_mov_b16_e64 v110.l, v182.h
	v_mov_b16_e64 v109.l, v186.h
	v_mov_b16_e32 v107.l, v30.h
	v_mov_b16_e32 v106.l, v29.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(3)
	v_mov_b16_e32 v126.h, v54.l
	s_waitcnt lgkmcnt(0)
	v_mov_b16_e64 v54.l, v132.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v12, v119, v112
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v112.l, v31.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v119, v139, v108
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v108.l, v23.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e32 v124.l, v49.l
	v_mov_b16_e64 v125.l, v203.l
	v_mov_b16_e64 v125.h, v253.l
	v_mov_b16_e64 v126.l, v132.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[106:113], v[74:81], v[33:40]
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v127.l, v140.l
	v_mov_b16_e32 v127.h, v0.l
	v_mov_b16_e64 v128.l, v50.l
	v_mov_b16_e64 v128.h, v53.l
	v_mov_b16_e64 v129.l, v204.l
	v_mov_b16_e64 v129.h, v254.l
	v_mov_b16_e64 v130.l, v133.l
	v_mov_b16_e64 v130.h, v55.l
	v_mov_b16_e64 v131.l, v141.l
	v_mov_b16_e64 v131.h, v1.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s8, v195, v195
	v_cmp_o_f32_e64 s9, v193, v193
	v_cmp_o_f32_e64 s0, v183, v183
	v_cmp_o_f32_e64 s2, v179, v179
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[3:10], v[124:131], v[33:40]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v5, v197, 16, 1
	v_bfe_u32 v6, v193, 16, 1
	v_bfe_u32 v4, v183, 16, 1
	v_bfe_u32 v7, v252, 16, 1
	v_bfe_u32 v8, v248, 16, 1
	v_add3_u32 v121, v197, v5, 0x7fff
	v_bfe_u32 v5, v195, 16, 1
	v_add3_u32 v123, v193, v6, 0x7fff
	v_bfe_u32 v193, v228, 16, 1
	v_add3_u32 v51, v183, v4, 0x7fff
	v_bfe_u32 v4, v181, 16, 1
	v_add3_u32 v5, v195, v5, 0x7fff
	v_bfe_u32 v195, v226, 16, 1
	v_add3_u32 v193, v228, v193, 0x7fff
	v_bfe_u32 v6, v191, 16, 1
	v_add3_u32 v56, v181, v4, 0x7fff
	v_bfe_u32 v4, v179, 16, 1
	v_add3_u32 v195, v226, v195, 0x7fff
	scratch_load_b128 v[226:229], off, off  ; 16-byte Folded Reload
	v_bfe_u32 v9, v244, 16, 1
	v_bfe_u32 v10, v240, 16, 1
	v_bfe_u32 v3, v185, 16, 1
	v_add3_u32 v4, v179, v4, 0x7fff
	v_add3_u32 v6, v191, v6, 0x7fff
	v_add3_u32 v137, v252, v7, 0x7fff
	v_bfe_u32 v7, v250, 16, 1
	v_add3_u32 v138, v248, v8, 0x7fff
	v_bfe_u32 v8, v246, 16, 1
	v_add3_u32 v139, v244, v9, 0x7fff
	v_bfe_u32 v9, v242, 16, 1
	v_add3_u32 v179, v240, v10, 0x7fff
	v_bfe_u32 v10, v238, 16, 1
	v_bfe_u32 v183, v234, 16, 1
	v_bfe_u32 v191, v230, 16, 1
	v_add3_u32 v3, v185, v3, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v185, v185
	v_cmp_o_f32_e64 s1, v181, v181
	v_cmp_o_f32_e64 s3, v197, v197
	v_add3_u32 v7, v250, v7, 0x7fff
	v_add3_u32 v8, v246, v8, 0x7fff
	v_add3_u32 v9, v242, v9, 0x7fff
	v_add3_u32 v10, v238, v10, 0x7fff
	v_bfe_u32 v181, v236, 16, 1
	v_add3_u32 v183, v234, v183, 0x7fff
	v_bfe_u32 v185, v232, 16, 1
	v_add3_u32 v191, v230, v191, 0x7fff
	v_bfe_u32 v197, v224, 16, 1
	v_add3_u32 v181, v236, v181, 0x7fff
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s2
	v_add3_u32 v185, v232, v185, 0x7fff
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s8
	v_add3_u32 v197, v224, v197, 0x7fff
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s10
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s12
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s15
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s17
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s19
	v_cndmask_b16 v206.h, 0x7fff, v183.h, s21
	v_cndmask_b16 v207.h, 0x7fff, v191.h, s23
	v_cndmask_b16 v208.h, 0x7fff, v195.h, s25
	v_cndmask_b16 v210.h, 0x7fff, v211.h, s29
	v_cndmask_b16 v211.h, 0x7fff, v213.h, s31
	v_cndmask_b16 v213.h, 0x7fff, v218.h, s36
	v_cndmask_b16 v183.h, 0x7fff, v51.h, s0
	v_cndmask_b16 v191.h, 0x7fff, v56.h, s1
	v_cndmask_b16 v195.h, 0x7fff, v121.h, s3
	v_cndmask_b16 v218.h, 0x7fff, v123.h, s9
	v_cndmask_b16 v137.h, 0x7fff, v137.h, s11
	v_cndmask_b16 v138.h, 0x7fff, v138.h, s14
	v_cndmask_b16 v139.h, 0x7fff, v139.h, s16
	v_cndmask_b16 v179.h, 0x7fff, v179.h, s18
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v4.l, v13.l
	v_mov_b16_e32 v5.l, v13.l
	v_mov_b16_e32 v6.l, v13.l
	v_mov_b16_e32 v7.l, v13.l
	v_mov_b16_e32 v8.l, v13.l
	v_mov_b16_e32 v9.l, v13.l
	v_mov_b16_e32 v10.l, v13.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v3.l, 0x7fff, v3.h, vcc_lo
	v_cndmask_b16 v209.h, 0x7fff, v209.h, s27
	v_cndmask_b16 v212.h, 0x7fff, v212.h, s34
	v_cndmask_b16 v181.h, 0x7fff, v181.h, s20
	v_cndmask_b16 v185.h, 0x7fff, v185.h, s22
	v_cndmask_b16 v193.h, 0x7fff, v193.h, s24
	v_cndmask_b16 v197.h, 0x7fff, v197.h, s26
	v_cndmask_b16 v215.h, 0x7fff, v215.h, s28
	v_cndmask_b16 v217.h, 0x7fff, v217.h, s30
	v_cndmask_b16 v214.h, 0x7fff, v214.h, s33
	v_cndmask_b16 v216.h, 0x7fff, v216.h, s35
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v209.l, v13.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v169, v169, v10
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v10.l, v179.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v167, v167, v9
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v9.l, v139.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v173, v173, v8
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v8.l, v138.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v171, v171, v7
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v7.l, v137.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v177, v177, v6
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v6.l, v218.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v175, v175, v5
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v5.l, v195.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v165, v165, v4
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v4.l, v191.h
	v_mov_b16_e64 v3.h, v183.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v213.l, v13.l
	v_mov_b16_e64 v210.l, v13.l
	v_mov_b16_e64 v212.l, v13.l
	v_mov_b16_e64 v211.l, v13.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[3:10], v[98:105], v[41:48]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v27, v209
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v209.l, v197.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v25, v25, v208
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v208.l, v193.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v145, v145, v207
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v207.l, v185.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v143, v143, v206
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v206.l, v181.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v218.l, v13.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v190, v190, v211
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v211.l, v217.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v139.l, v13.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v188, v188, v210
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v210.l, v215.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v0.l, v140.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v13.h, v3.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v254.l, v204.h
	v_mov_b32_e32 v49, v52
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v183.l, v13.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_dual_mov_b32 v52, v0 :: v_dual_mov_b32 v51, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v54, v254
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v191.l, v13.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e64 v253.l, v203.h
	v_mov_b16_e64 v1.l, v141.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v194.l, v13.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b16_e32 v53.l, v50.h
	v_mov_b16_e64 v55.l, v133.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v195.l, v13.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b32_e32 v56, v1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v138.l, v13.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_mov_b32_e32 v50, v253
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v185.l, v13.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v174, v195
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v137.l, v13.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v1, v176, v218
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s8, v175, v175
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v215.l, v13.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v0, v0
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v179.l, v13.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v165, v165
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v198.l, v13.l
	v_mov_b16_e64 v214.l, v13.l
	v_mov_b16_e64 v181.l, v13.l
	v_mov_b16_e64 v193.l, v13.l
	v_mov_b16_e64 v186.l, v13.l
	v_mov_b16_e64 v197.l, v13.l
	v_mov_b16_e64 v182.l, v13.l
	v_mov_b16_e64 v217.l, v13.l
	v_mov_b16_e64 v216.l, v13.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	s_waitcnt vmcnt(0)
	v_sub_f32_e32 v121, v229, v213
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v213.l, v216.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v123, v227, v212
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v212.l, v214.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[206:213], v[74:81], v[41:48]
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[3:10], v[124:131], v[41:48]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v5, v162, v13
	v_sub_f32_e32 v3, v163, v183
	v_sub_f32_e32 v4, v164, v191
	v_sub_f32_e32 v7, v172, v138
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[206:213], v[49:56], v[41:48]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v8, v5, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_cmp_o_f32_e64 s0, v3, v3
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[106:113], v[49:56], v[33:40]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s1, v4, v4
	v_add3_u32 v8, v5, v8, 0x7fff
	v_bfe_u32 v5, v3, 16, 1
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v6, v170, v137
	v_sub_f32_e32 v9, v166, v139
	v_sub_f32_e32 v10, v168, v179
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v5, v3, v5, 0x7fff
	v_bfe_u32 v3, v4, 16, 1
	v_add3_u32 v49, v4, v3, 0x7fff
	v_bfe_u32 v3, v165, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v4, v165, v3, 0x7fff
	v_bfe_u32 v3, v0, 16, 1
	v_cndmask_b16 v4.l, 0x7fff, v49.h, s1
	v_cmp_o_f32_e64 s1, v6, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v4.h, 0x7fff, v4.h, s2
	v_add3_u32 v50, v0, v3, 0x7fff
	v_bfe_u32 v0, v175, 16, 1
	v_cndmask_b16 v3.l, 0x7fff, v8.h, vcc_lo
	v_cndmask_b16 v3.h, 0x7fff, v5.h, s0
	v_bfe_u32 v8, v6, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_add3_u32 v0, v175, v0, 0x7fff
	v_cmp_o_f32_e64 s0, v177, v177
	v_cmp_o_f32_e64 s2, v171, v171
	v_add3_u32 v8, v6, v8, 0x7fff
	v_bfe_u32 v6, v171, 16, 1
	v_cndmask_b16 v5.h, 0x7fff, v0.h, s8
	v_bfe_u32 v0, v1, 16, 1
	v_cndmask_b16 v5.l, 0x7fff, v50.h, s3
	v_cmp_o_f32_e64 s3, v7, v7
	v_add3_u32 v49, v171, v6, 0x7fff
	v_bfe_u32 v6, v7, 16, 1
	v_add3_u32 v0, v1, v0, 0x7fff
	v_bfe_u32 v1, v177, 16, 1
	v_cmp_o_f32_e64 s8, v135, v135
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v50, v7, v6, 0x7fff
	v_cndmask_b16 v7.h, 0x7fff, v49.h, s2
	v_add3_u32 v1, v177, v1, 0x7fff
	v_bfe_u32 v49, v10, 16, 1
	v_cndmask_b16 v6.l, 0x7fff, v0.h, vcc_lo
	v_bfe_u32 v0, v173, 16, 1
	v_cmp_o_f32_e64 s2, v10, v10
	v_cndmask_b16 v6.h, 0x7fff, v1.h, s0
	v_bfe_u32 v1, v9, 16, 1
	v_cmp_o_f32_e64 s0, v9, v9
	v_add3_u32 v49, v10, v49, 0x7fff
	v_bfe_u32 v10, v169, 16, 1
	v_cndmask_b16 v7.l, 0x7fff, v8.h, s1
	v_add3_u32 v1, v9, v1, 0x7fff
	v_bfe_u32 v9, v167, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v50.h, s3
	v_add3_u32 v0, v173, v0, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v173, v173
	v_cmp_o_f32_e64 s1, v167, v167
	v_add3_u32 v9, v167, v9, 0x7fff
	v_add3_u32 v10, v169, v10, 0x7fff
	v_cmp_o_f32_e64 s3, v169, v169
	v_cndmask_b16 v8.h, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v9.l, 0x7fff, v1.h, s0
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s1
	v_cndmask_b16 v10.l, 0x7fff, v49.h, s2
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v17, v192
	v_sub_f32_e32 v1, v19, v200
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s0, v18, v18
	v_cmp_o_f32_e64 s2, v20, v20
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[3:10], v[98:105], v[41:48]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v3, v134, v198
	v_sub_f32_e32 v9, v146, v201
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v4, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v6, v136, v199
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v17, v3, 16, 1
	v_bfe_u32 v5, v1, 16, 1
	v_add3_u32 v4, v0, v4, 0x7fff
	v_bfe_u32 v0, v18, 16, 1
	v_cmp_o_f32_e64 s3, v3, v3
	v_add3_u32 v17, v3, v17, 0x7fff
	v_bfe_u32 v3, v135, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v7, v150, v194
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v0, v18, v0, 0x7fff
	v_add3_u32 v5, v1, v5, 0x7fff
	v_cmp_o_f32_e64 s1, v1, v1
	v_bfe_u32 v1, v20, 16, 1
	v_add3_u32 v18, v135, v3, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v0.h, s0
	v_bfe_u32 v0, v6, 16, 1
	v_cndmask_b16 v3.l, 0x7fff, v4.h, vcc_lo
	v_add3_u32 v1, v20, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v8, v152, v196
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v0, v6, v0, 0x7fff
	v_bfe_u32 v6, v7, 16, 1
	v_cndmask_b16 v4.h, 0x7fff, v1.h, s2
	v_cndmask_b16 v5.l, 0x7fff, v17.h, s3
	v_bfe_u32 v1, v65, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v148, v202
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v17, v7, v6, 0x7fff
	v_bfe_u32 v6, v151, 16, 1
	v_cndmask_b16 v4.l, 0x7fff, v5.h, s1
	v_add3_u32 v1, v65, v1, 0x7fff
	v_cmp_o_f32_e64 s0, v65, v65
	v_cmp_o_f32_e64 s1, v7, v7
	v_add3_u32 v7, v151, v6, 0x7fff
	v_bfe_u32 v6, v8, 16, 1
	v_cndmask_b16 v5.h, 0x7fff, v18.h, s8
	v_cmp_o_f32_e64 s2, v151, v151
	v_cndmask_b16 v7.l, 0x7fff, v17.h, s1
	v_bfe_u32 v17, v10, 16, 1
	v_add3_u32 v18, v8, v6, 0x7fff
	v_cndmask_b16 v6.h, 0x7fff, v1.h, s0
	v_bfe_u32 v1, v9, 16, 1
	v_cmp_o_f32_e64 s3, v8, v8
	v_cndmask_b16 v6.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s2
	v_bfe_u32 v0, v153, 16, 1
	v_add3_u32 v1, v9, v1, 0x7fff
	v_cmp_o_f32_e64 s0, v9, v9
	v_bfe_u32 v9, v147, 16, 1
	v_add3_u32 v17, v10, v17, 0x7fff
	v_cmp_o_f32_e64 s2, v10, v10
	v_bfe_u32 v10, v149, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v18.h, s3
	v_add3_u32 v0, v153, v0, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v153, v153
	v_add3_u32 v9, v147, v9, 0x7fff
	v_cmp_o_f32_e64 s1, v147, v147
	v_add3_u32 v10, v149, v10, 0x7fff
	v_cmp_o_f32_e64 s3, v149, v149
	v_cndmask_b16 v8.h, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v9.l, 0x7fff, v1.h, s0
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s1
	v_cndmask_b16 v10.l, 0x7fff, v17.h, s2
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v142, v181
	v_sub_f32_e32 v1, v144, v185
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s0, v143, v143
	v_cmp_o_f32_e64 s2, v145, v145
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[3:10], v[98:105], v[33:40]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v3, v24, v193
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v4, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v6, v26, v197
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v5, v1, 16, 1
	v_bfe_u32 v17, v3, 16, 1
	v_add3_u32 v4, v0, v4, 0x7fff
	v_bfe_u32 v0, v143, 16, 1
	v_cmp_o_f32_e64 s3, v3, v3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v7, v187, v215
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v17, v3, v17, 0x7fff
	v_bfe_u32 v3, v25, 16, 1
	v_add3_u32 v0, v143, v0, 0x7fff
	v_add3_u32 v5, v1, v5, 0x7fff
	v_cmp_o_f32_e64 s1, v1, v1
	v_bfe_u32 v1, v145, 16, 1
	v_add3_u32 v18, v25, v3, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v0.h, s0
	v_bfe_u32 v0, v6, 16, 1
	v_cndmask_b16 v3.l, 0x7fff, v4.h, vcc_lo
	v_add3_u32 v1, v145, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v8, v189, v217
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v0, v6, v0, 0x7fff
	v_bfe_u32 v6, v7, 16, 1
	v_cndmask_b16 v4.h, 0x7fff, v1.h, s2
	v_cndmask_b16 v5.l, 0x7fff, v17.h, s3
	v_bfe_u32 v1, v27, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v9, v226, v214
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v17, v7, v6, 0x7fff
	v_bfe_u32 v6, v188, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v228, v216
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s8, v25, v25
	v_cndmask_b16 v4.l, 0x7fff, v5.h, s1
	v_add3_u32 v1, v27, v1, 0x7fff
	v_cmp_o_f32_e64 s0, v27, v27
	v_cmp_o_f32_e64 s1, v7, v7
	v_add3_u32 v7, v188, v6, 0x7fff
	v_bfe_u32 v6, v8, 16, 1
	v_cndmask_b16 v5.h, 0x7fff, v18.h, s8
	v_cmp_o_f32_e64 s2, v188, v188
	v_cndmask_b16 v7.l, 0x7fff, v17.h, s1
	v_bfe_u32 v17, v10, 16, 1
	v_add3_u32 v18, v8, v6, 0x7fff
	v_cndmask_b16 v6.h, 0x7fff, v1.h, s0
	v_bfe_u32 v1, v9, 16, 1
	v_cmp_o_f32_e64 s3, v8, v8
	v_cndmask_b16 v6.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s2
	v_bfe_u32 v0, v190, 16, 1
	v_add3_u32 v1, v9, v1, 0x7fff
	v_cmp_o_f32_e64 s0, v9, v9
	v_bfe_u32 v9, v123, 16, 1
	v_add3_u32 v17, v10, v17, 0x7fff
	v_cmp_o_f32_e64 s2, v10, v10
	v_bfe_u32 v10, v121, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v18.h, s3
	v_add3_u32 v0, v190, v0, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v190, v190
	v_add3_u32 v9, v123, v9, 0x7fff
	v_cmp_o_f32_e64 s1, v123, v123
	v_add3_u32 v10, v121, v10, 0x7fff
	v_cmp_o_f32_e64 s3, v121, v121
	v_cndmask_b16 v8.h, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v9.l, 0x7fff, v1.h, s0
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s1
	v_cndmask_b16 v10.l, 0x7fff, v17.h, s2
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v0, v114, v29 :: v_dual_sub_f32 v1, v116, v30
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s0, v115, v115
	v_cmp_o_f32_e64 s2, v117, v117
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[41:48], v[3:10], v[74:81], v[41:48]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v3, v223, v23
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v4, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v6, v225, v186
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v5, v1, 16, 1
	v_bfe_u32 v13, v3, 16, 1
	v_add3_u32 v4, v0, v4, 0x7fff
	v_bfe_u32 v0, v115, 16, 1
	v_cmp_o_f32_e64 s3, v3, v3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v7, v219, v182
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v13, v3, v13, 0x7fff
	v_bfe_u32 v3, v119, 16, 1
	v_add3_u32 v0, v115, v0, 0x7fff
	v_add3_u32 v5, v1, v5, 0x7fff
	v_cmp_o_f32_e64 s1, v1, v1
	v_bfe_u32 v1, v117, 16, 1
	v_add3_u32 v17, v119, v3, 0x7fff
	v_cndmask_b16 v3.h, 0x7fff, v0.h, s0
	v_bfe_u32 v0, v6, 16, 1
	v_cndmask_b16 v3.l, 0x7fff, v4.h, vcc_lo
	v_add3_u32 v1, v117, v1, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v6, v6
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v8, v221, v184
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v0, v6, v0, 0x7fff
	v_bfe_u32 v6, v7, 16, 1
	v_cndmask_b16 v4.h, 0x7fff, v1.h, s2
	v_cndmask_b16 v5.l, 0x7fff, v13.h, s3
	v_bfe_u32 v1, v22, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v9, v118, v31
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v13, v7, v6, 0x7fff
	v_bfe_u32 v6, v21, 16, 1
	v_cmp_o_f32_e64 s8, v119, v119
	v_cndmask_b16 v4.l, 0x7fff, v5.h, s1
	v_add3_u32 v1, v22, v1, 0x7fff
	v_cmp_o_f32_e64 s0, v22, v22
	v_cmp_o_f32_e64 s1, v7, v7
	v_add3_u32 v7, v21, v6, 0x7fff
	v_bfe_u32 v6, v8, 16, 1
	v_cndmask_b16 v5.h, 0x7fff, v17.h, s8
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v120, v180
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v21, v21
	v_cndmask_b16 v7.l, 0x7fff, v13.h, s1
	v_add3_u32 v17, v8, v6, 0x7fff
	v_cndmask_b16 v6.h, 0x7fff, v1.h, s0
	v_bfe_u32 v1, v9, 16, 1
	v_cmp_o_f32_e64 s0, v9, v9
	v_cmp_o_f32_e64 s1, v12, v12
	v_cmp_o_f32_e64 s3, v8, v8
	v_cndmask_b16 v6.l, 0x7fff, v0.h, vcc_lo
	v_add3_u32 v1, v9, v1, 0x7fff
	v_bfe_u32 v9, v12, 16, 1
	v_cndmask_b16 v7.h, 0x7fff, v7.h, s2
	v_bfe_u32 v0, v16, 16, 1
	v_cmp_o_f32_e64 s2, v10, v10
	v_cndmask_b16 v8.l, 0x7fff, v17.h, s3
	v_add3_u32 v9, v12, v9, 0x7fff
	v_bfe_u32 v12, v10, 16, 1
	v_add3_u32 v0, v16, v0, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_cmp_o_f32_e64 s3, v11, v11
	v_cndmask_b16 v9.l, 0x7fff, v1.h, s0
	v_add3_u32 v12, v10, v12, 0x7fff
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v8.h, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v12.h, s2
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[33:40], v[3:10], v[74:81], v[33:40]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc0 .LBB0_4
.LBB0_8:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_clause 0x12                           ; 84-byte Folded Reload
	scratch_load_b32 v1, off, off offset:24
	scratch_load_b32 v3, off, off offset:28
	scratch_load_b32 v4, off, off offset:32
	scratch_load_b32 v5, off, off offset:36
	scratch_load_b32 v6, off, off offset:40
	scratch_load_b32 v7, off, off offset:44
	scratch_load_b32 v8, off, off offset:48
	scratch_load_b64 v[21:22], off, off offset:16
	scratch_load_b32 v9, off, off offset:52
	scratch_load_b32 v22, off, off offset:60
	scratch_load_b64 v[24:25], off, off offset:64
	scratch_load_b32 v10, off, off offset:816
	scratch_load_b32 v11, off, off offset:820
	scratch_load_b32 v12, off, off offset:828
	scratch_load_b32 v13, off, off offset:832
	scratch_load_b32 v16, off, off offset:836
	scratch_load_b32 v17, off, off offset:840
	scratch_load_b32 v18, off, off offset:844
	scratch_load_b32 v19, off, off offset:848
	s_add_i32 s21, s87, s42
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_mov_b32 s66, s62
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_mul_i32 s22, s21, s76
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_mov_b32 s67, s63
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b64 v[49:50], off, off offset:76 ; 8-byte Folded Reload
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(19)
	v_or_b32_e32 v0, s87, v1
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v1, s21, v1, 1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s1, s50, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(18)
	v_or_b32_e32 v0, s87, v3
	s_waitcnt vmcnt(12)
	v_mov_b32_e32 v27, v21
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b32 v21, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(11)
	v_add_nc_u32_e32 v22, s22, v22
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v3, s21, v3, 1
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s2, s50, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s87, v4
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v4, s21, v4, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s3, s50, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s87, v5
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v5, s21, v5, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s8, s50, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s87, v6
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v6, s21, v6, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v5, 0x80000000, v5, s8
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s9, s50, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s87, v7
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v7, s21, v7, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v6, 0x80000000, v6, s9
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s10, s50, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s87, v8
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v8, s21, v8, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v7, 0x80000000, v7, s10
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s11, s50, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s87, v9
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v9, s21, v9, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s50, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(9)
	v_or_b32_e32 v0, s87, v10
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v10, s21, v10, 1
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s12, s50, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(8)
	v_or_b32_e32 v0, s87, v11
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s13, vcc_lo
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v11, s21, v11, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s14, s50, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(7)
	v_or_b32_e32 v0, s87, v12
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v12, s21, v12, 1
	v_cndmask_b32_e64 v11, 0x80000000, v11, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s15, s50, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(6)
	v_or_b32_e32 v0, s87, v13
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v13, s21, v13, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s16, s50, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(5)
	v_or_b32_e32 v0, s87, v16
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v16, s21, v16, 1
	v_cndmask_b32_e64 v13, 0x80000000, v13, s16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s17, s50, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(4)
	v_or_b32_e32 v0, s87, v17
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v17, s21, v17, 1
	v_cndmask_b32_e64 v16, 0x80000000, v16, s17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s18, s50, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v0, s87, v18
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v18, s21, v18, 1
	v_cndmask_b32_e64 v17, 0x80000000, v17, s18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s19, s50, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v0, s87, v19
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v19, s21, v19, 1
	v_cndmask_b32_e64 v18, 0x80000000, v18, s19
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s20, s50, v0
	scratch_load_b32 v0, off, off offset:852 ; 4-byte Folded Reload
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v19, 0x80000000, v19, s20
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v21, s22, v21
	.loc	1 624 25                        ; attention_backward.py:624:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v30, s21, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v0, s87, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v20, 1, v30
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s0, s50, v0
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v0, 0x80000000, v1, s1
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_add_nc_u32_e32 v1, s22, v27
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s1, s13, s1
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v1, 0x80000000, v1, s1
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s1, s13, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s1, s13, s3
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v23, 0x80000000, v22, s1
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_add_nc_u32_e32 v22, s22, v24
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s1, s13, s8
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v24, 0x80000000, v22, s1
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b32 v22, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s1, s13, s9
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v22, s22, v22
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v25, 0x80000000, v22, s1
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_add_nc_u32_e32 v22, s22, v49
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s1, s13, s10
	.loc	1 616 25                        ; attention_backward.py:616:25
	scratch_load_b64 v[49:50], off, off offset:92 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v26, 0x80000000, v22, s1
	s_clause 0x5
	buffer_load_u8 v22, v1, s[60:63], 0 offen
	buffer_load_u8 v199, v21, s[60:63], 0 offen
	buffer_load_u8 v31, v23, s[60:63], 0 offen
	buffer_load_u8 v29, v24, s[60:63], 0 offen
	buffer_load_u8 v21, v25, s[60:63], 0 offen
	buffer_load_u8 v112, v26, s[60:63], 0 offen
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[23:24], off, off offset:84
	scratch_load_b64 v[24:25], off, off offset:856
	scratch_load_b64 v[25:26], off, off offset:864
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v1, 0x80000000, v8, s11
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s1, s13, s11
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v8, s22, v23
	v_lshl_add_u32 v23, s76, 4, v27
	scratch_load_b64 v[26:27], off, off offset:872 ; 8-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v24, s22, v24
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v25, s22, v25
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v8, 0x80000000, v8, s1
	v_add_nc_u32_e32 v23, s22, v23
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s1, s13, s12
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v27, s22, v49
	scratch_load_b64 v[49:50], off, off offset:904 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v23, 0x80000000, v23, s1
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s1, s13, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v24, 0x80000000, v24, s1
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s1, s13, s15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v25, 0x80000000, v25, s1
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 s1, s13, s16
	v_add_nc_u32_e32 v26, s22, v26
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v26, 0x80000000, v26, s1
	s_clause 0x3
	buffer_load_u8 v108, v23, s[60:63], 0 offen
	buffer_load_u8 v106, v24, s[60:63], 0 offen
	buffer_load_u8 v102, v25, s[60:63], 0 offen
	buffer_load_u8 v101, v26, s[60:63], 0 offen
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[23:24], off, off offset:880
	scratch_load_b64 v[24:25], off, off offset:888
	scratch_load_b64 v[25:26], off, off offset:896
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v26, s22, v49
	v_add_nc_u32_e32 v23, s22, v23
	v_add_nc_u32_e32 v24, s22, v24
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s13, s17
	v_add_nc_u32_e32 v25, s22, v25
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v23, 0x80000000, v23, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s13, s18
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s13, s19
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	.loc	1 620 30                        ; attention_backward.py:620:30
	s_and_b32 vcc_lo, s13, s20
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	s_clause 0x5
	buffer_load_u8 v100, v23, s[60:63], 0 offen
	buffer_load_u8 v99, v24, s[60:63], 0 offen
	buffer_load_u8 v113, v8, s[60:63], 0 offen
	buffer_load_u8 v110, v27, s[60:63], 0 offen
	buffer_load_u8 v96, v25, s[60:63], 0 offen
	buffer_load_u8 v95, v26, s[60:63], 0 offen
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_cndmask_b32_e64 v8, 0x80000000, v20, s0
	s_clause 0x10
	buffer_load_u16 v109, v9, s[64:67], 0 offen
	buffer_load_u16 v107, v10, s[64:67], 0 offen
	buffer_load_u16 v105, v11, s[64:67], 0 offen
	buffer_load_u16 v104, v12, s[64:67], 0 offen
	buffer_load_u16 v103, v13, s[64:67], 0 offen
	buffer_load_u16 v98, v16, s[64:67], 0 offen
	buffer_load_u16 v97, v17, s[64:67], 0 offen
	buffer_load_u16 v94, v18, s[64:67], 0 offen
	buffer_load_u16 v93, v19, s[64:67], 0 offen
	buffer_load_u16 v200, v0, s[64:67], 0 offen
	buffer_load_u16 v201, v3, s[64:67], 0 offen
	buffer_load_u16 v12, v4, s[64:67], 0 offen
	buffer_load_u16 v16, v5, s[64:67], 0 offen
	buffer_load_u16 v23, v6, s[64:67], 0 offen
	buffer_load_u16 v11, v7, s[64:67], 0 offen
	buffer_load_u16 v111, v1, s[64:67], 0 offen
	buffer_load_u16 v13, v8, s[64:67], 0 offen
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:100 ; 4-byte Folded Reload
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v9, v2
	v_mov_b32_e32 v3, v2
	v_mov_b32_e32 v4, v2
	v_mov_b32_e32 v5, v2
	v_mov_b32_e32 v6, v2
	v_mov_b32_e32 v7, v2
	v_mov_b32_e32 v8, v2
	v_mov_b32_e32 v80, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v76, v5 :: v_dual_mov_b32 v77, v6
	v_dual_mov_b32 v78, v7 :: v_dual_mov_b32 v79, v8
	v_dual_mov_b32 v75, v4 :: v_dual_mov_b32 v74, v3
	v_mov_b32_e32 v73, v2
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v22
	ds_store_b8 v0, v199 offset:64
	ds_store_b8 v0, v108 offset:512
	ds_store_b8 v0, v106 offset:576
	ds_store_b8 v122, v31
	ds_store_b8 v122, v29 offset:64
	ds_store_b8 v122, v102 offset:512
	ds_store_b8 v122, v101 offset:576
	ds_store_b8 v205, v21
	ds_store_b8 v205, v112 offset:64
	ds_store_b8 v205, v100 offset:512
	ds_store_b8 v205, v99 offset:576
	ds_store_b8 v32, v113
	ds_store_b8 v32, v110 offset:64
	ds_store_b8 v32, v96 offset:512
	ds_store_b8 v32, v95 offset:576
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v0, off, off offset:156
	scratch_load_b32 v7, off, off offset:360
	scratch_load_b32 v3, off, off offset:344
	scratch_load_b32 v4, off, off offset:348
	scratch_load_b32 v5, off, off offset:352
	scratch_load_b32 v6, off, off offset:356
	scratch_load_b32 v8, off, off offset:364
	s_waitcnt vmcnt(6)
	v_add_nc_u32_e32 v0, 0, v0
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(5)
	v_or_b32_e32 v7, s87, v7
	s_waitcnt vmcnt(4)
	v_or_b32_e32 v3, s87, v3
	s_waitcnt vmcnt(3)
	v_or_b32_e32 v4, s87, v4
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v5, s87, v5
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_load_b64 v[17:18], v0
	scratch_load_b32 v0, off, off offset:384 ; 4-byte Folded Reload
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v6, s87, v6
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s2, s50, v3
	v_cmp_gt_i32_e64 s3, s50, v4
	v_cmp_gt_i32_e64 s8, s50, v5
	v_cmp_gt_i32_e64 s10, s50, v7
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v68, s39, v3
	v_add_nc_u32_e32 v69, s39, v4
	v_add_nc_u32_e32 v70, s39, v5
	v_add_nc_u32_e32 v72, s39, v7
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s24, s7, s2
	s_and_b32 s22, s7, s3
	s_and_b32 s29, s7, s8
	s_and_b32 s25, s7, s10
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s9, s50, v6
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v71, s39, v6
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v8, s87, v8
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s27, s7, s9
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e64 s11, s50, v8
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v81, s39, v8
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s23, s7, s11
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt vmcnt(0)
	ds_load_b64 v[19:20], v0
	scratch_load_b32 v0, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[24:25], v0
	scratch_load_b32 v0, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b64 v[26:27], v0
	.loc	1 630 33                        ; attention_backward.py:630:33
	scratch_load_b64 v[0:1], off, off offset:104 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[0:1], v[17:18], v[73:80] neg_lo:[1,1,0]
	scratch_load_b64 v[0:1], off, off offset:112 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[0:1], v[19:20], v[73:80] neg_lo:[1,1,0]
	scratch_load_b64 v[0:1], off, off offset:120 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[0:1], v[24:25], v[73:80] neg_lo:[1,1,0]
	scratch_load_b64 v[0:1], off, off offset:128 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[0:1], v[26:27], v[73:80] neg_lo:[1,1,0]
	.loc	1 608 29                        ; attention_backward.py:608:29
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:336
	scratch_load_b32 v1, off, off offset:340
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v0, s87, v0
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v1, s87, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 609 29                        ; attention_backward.py:609:29
	v_cmp_gt_i32_e32 vcc_lo, s50, v0
	v_cmp_gt_i32_e64 s1, s50, v1
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v66, s39, v0
	v_add_nc_u32_e32 v67, s39, v1
	.loc	1 673 25                        ; attention_backward.py:673:25
	s_and_b32 s28, s7, vcc_lo
	s_and_b32 s26, s7, s1
	.loc	1 675 17                        ; attention_backward.py:675:17
	s_and_not1_b32 vcc_lo, exec_lo, s80
	s_cbranch_vccnz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e32 vcc_lo, v178, v66
	v_cmp_le_i32_e64 s1, v178, v67
	v_cmp_le_i32_e64 s2, v178, v68
	v_cmp_le_i32_e64 s3, v178, v69
	v_cmp_le_i32_e64 s8, v178, v70
	v_cmp_le_i32_e64 s9, v178, v71
	.loc	1 676 21 is_stmt 0              ; attention_backward.py:676:21
	s_and_b32 s12, s28, vcc_lo
	s_and_b32 s1, s26, s1
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s10, v178, v72
	v_cmp_le_i32_e64 s11, v178, v81
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s2, s24, s2
	s_and_b32 s3, s22, s3
	s_and_not1_b32 s14, s28, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s15, s26, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_b32 s8, s29, s8
	s_and_b32 s9, s27, s9
	s_or_b32 s28, s14, s12
	s_or_b32 s26, s15, s1
	s_and_not1_b32 s1, s24, exec_lo
	s_and_b32 s2, s2, exec_lo
	s_and_not1_b32 s12, s22, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s10, s25, s10
	s_and_b32 s11, s23, s11
	s_or_b32 s24, s1, s2
	s_or_b32 s22, s12, s3
	s_and_not1_b32 s1, s29, exec_lo
	s_and_b32 s2, s8, exec_lo
	s_and_not1_b32 s3, s27, exec_lo
	s_and_b32 s8, s9, exec_lo
	s_or_b32 s29, s1, s2
	s_or_b32 s27, s3, s8
	s_and_not1_b32 s1, s25, exec_lo
	s_and_b32 s2, s10, exec_lo
	s_and_not1_b32 s3, s23, exec_lo
	s_and_b32 s8, s11, exec_lo
	s_or_b32 s25, s1, s2
	s_or_b32 s23, s3, s8
.LBB0_10:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 677 17 is_stmt 1              ; attention_backward.py:677:17
	s_and_not1_b32 vcc_lo, exec_lo, s79
	s_cbranch_vccnz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v0, s37, v66
	v_subrev_nc_u32_e32 v1, s37, v67
	v_subrev_nc_u32_e32 v3, s37, v68
	v_subrev_nc_u32_e32 v4, s37, v69
	v_subrev_nc_u32_e32 v5, s37, v70
	v_subrev_nc_u32_e32 v6, s37, v71
	.loc	1 678 30 is_stmt 0              ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v178, v0
	v_cmp_ge_i32_e64 s1, v178, v1
	.loc	1 679 47 is_stmt 1              ; attention_backward.py:679:47
	v_add_nc_u32_e32 v0, s38, v66
	v_add_nc_u32_e32 v1, s38, v67
	.loc	1 678 47                        ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v7, s37, v72
	v_subrev_nc_u32_e32 v8, s37, v81
	.loc	1 678 30 is_stmt 0              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s2, v178, v3
	v_cmp_ge_i32_e64 s3, v178, v4
	.loc	1 679 47 is_stmt 1              ; attention_backward.py:679:47
	v_add_nc_u32_e32 v3, s38, v68
	v_add_nc_u32_e32 v4, s38, v69
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s8, v178, v5
	v_cmp_ge_i32_e64 s9, v178, v6
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v5, s38, v70
	v_add_nc_u32_e32 v6, s38, v71
	.loc	1 679 30 is_stmt 0              ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s12, v178, v0
	v_cmp_le_i32_e64 s14, v178, v1
	.loc	1 678 30 is_stmt 1              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s10, v178, v7
	v_cmp_ge_i32_e64 s11, v178, v8
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v7, s38, v72
	v_add_nc_u32_e32 v8, s38, v81
	.loc	1 679 30 is_stmt 0              ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s15, v178, v3
	v_cmp_le_i32_e64 s16, v178, v4
	v_cmp_le_i32_e64 s17, v178, v5
	v_cmp_le_i32_e64 s18, v178, v6
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s12, vcc_lo, s12
	s_and_b32 s1, s1, s14
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s19, v178, v7
	v_cmp_le_i32_e64 s20, v178, v8
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s12, s12, s28
	s_and_b32 s1, s1, s26
	s_and_b32 s2, s2, s15
	s_and_b32 s3, s3, s16
	s_and_b32 s2, s2, s24
	s_and_b32 s3, s3, s22
	s_and_b32 s8, s8, s17
	s_and_b32 s9, s9, s18
	s_and_not1_b32 s14, s28, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s15, s26, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_b32 s8, s8, s29
	s_and_b32 s9, s9, s27
	s_and_b32 s10, s10, s19
	s_and_b32 s11, s11, s20
	s_or_b32 s28, s14, s12
	s_or_b32 s26, s15, s1
	s_and_not1_b32 s1, s24, exec_lo
	s_and_b32 s2, s2, exec_lo
	s_and_not1_b32 s12, s22, exec_lo
	s_and_b32 s3, s3, exec_lo
	s_and_b32 s10, s10, s25
	s_and_b32 s11, s11, s23
	s_or_b32 s24, s1, s2
	s_or_b32 s22, s12, s3
	s_and_not1_b32 s1, s29, exec_lo
	s_and_b32 s2, s8, exec_lo
	s_and_not1_b32 s3, s27, exec_lo
	s_and_b32 s8, s9, exec_lo
	s_or_b32 s29, s1, s2
	s_or_b32 s27, s3, s8
	s_and_not1_b32 s1, s25, exec_lo
	s_and_b32 s2, s10, exec_lo
	s_and_not1_b32 s3, s23, exec_lo
	s_and_b32 s8, s11, exec_lo
	s_or_b32 s25, s1, s2
	s_or_b32 s23, s3, s8
.LBB0_12:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 21                          ; attention_backward.py:0:21
	v_mov_b16_e32 v66.l, 0
	.loc	1 682 25 is_stmt 1              ; attention_backward.py:682:25
	s_mul_i32 s1, s87, s59
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s1, s43, s1
	v_mov_b16_e32 v69.h, v66.l
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s2, s28
	s_cbranch_execz .LBB0_14
; %bb.13:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34 is_stmt 0                ; attention_backward.py:0:34
	scratch_load_b64 v[0:1], off, off offset:968 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v1, 31, v0
	v_add_co_u32 v3, vcc_lo, s40, v0
	v_add_co_ci_u32_e64 v4, null, s41, v1, vcc_lo
	global_load_d16_hi_u8 v69, v[3:4], off
.LBB0_14:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s2, s26
	s_cbranch_execz .LBB0_16
; %bb.15:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[0:1], off, off offset:912 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v1, 31, v0
	v_add_co_u32 v3, vcc_lo, s40, v0
	v_add_co_ci_u32_e64 v4, null, s41, v1, vcc_lo
	global_load_d16_u8 v66, v[3:4], off
.LBB0_16:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s2
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v66.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v67.l, v66.h
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s2, s24
	s_cbranch_execz .LBB0_18
; %bb.17:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[0:1], off, off offset:920 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v1, 31, v0
	v_add_co_u32 v3, vcc_lo, s40, v0
	v_add_co_ci_u32_e64 v4, null, s41, v1, vcc_lo
	global_load_d16_u8 v67, v[3:4], off
.LBB0_18:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s2, s22
	s_cbranch_execz .LBB0_20
; %bb.19:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[0:1], off, off offset:928 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v1, 31, v0
	v_add_co_u32 v3, vcc_lo, s40, v0
	v_add_co_ci_u32_e64 v4, null, s41, v1, vcc_lo
	global_load_d16_hi_u8 v66, v[3:4], off
.LBB0_20:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s2
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v67.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v69.l, v67.h
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s2, s29
	s_cbranch_execz .LBB0_22
; %bb.21:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[0:1], off, off offset:936 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v1, 31, v0
	v_add_co_u32 v3, vcc_lo, s40, v0
	v_add_co_ci_u32_e64 v4, null, s41, v1, vcc_lo
	global_load_d16_u8 v69, v[3:4], off
.LBB0_22:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s2, s27
	s_cbranch_execz .LBB0_24
; %bb.23:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[0:1], off, off offset:944 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v1, 31, v0
	v_add_co_u32 v3, vcc_lo, s40, v0
	v_add_co_ci_u32_e64 v4, null, s41, v1, vcc_lo
	global_load_d16_hi_u8 v67, v[3:4], off
.LBB0_24:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s2
	v_mov_b16_e32 v68.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v68.h, v68.l
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s2, s25
	s_cbranch_execz .LBB0_26
; %bb.25:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[0:1], off, off offset:952 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v1, 31, v0
	v_add_co_u32 v3, vcc_lo, s40, v0
	v_add_co_ci_u32_e64 v4, null, s41, v1, vcc_lo
	global_load_d16_hi_u8 v68, v[3:4], off
.LBB0_26:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 689 34                        ; attention_backward.py:689:34
	s_and_saveexec_b32 s2, s23
	s_cbranch_execz .LBB0_7
; %bb.27:                               ;   in Loop: Header=BB0_8 Depth=2
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b64 v[0:1], off, off offset:960 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, s1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 689 34                        ; attention_backward.py:689:34
	v_ashrrev_i32_e32 v1, 31, v0
	v_add_co_u32 v3, vcc_lo, s40, v0
	v_add_co_ci_u32_e64 v4, null, s41, v1, vcc_lo
	global_load_d16_u8 v68, v[3:4], off
	s_branch .LBB0_7
.LBB0_28:                               ; %Flow415
	.loc	1 0 34                          ; attention_backward.py:0:34
	scratch_load_b32 v55, off, off offset:984 ; 4-byte Folded Reload
	s_mov_b32 s56, s53
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
	v_mov_b32_e32 v161, v40
	v_mov_b32_e32 v160, v40
	v_mov_b32_e32 v159, v40
	v_mov_b32_e32 v158, v40
	v_mov_b32_e32 v157, v40
	v_mov_b32_e32 v156, v40
	v_mov_b32_e32 v155, v40
	v_mov_b32_e32 v154, v40
	v_mov_b32_e32 v64, v40
	v_mov_b32_e32 v63, v40
	v_mov_b32_e32 v62, v40
	v_mov_b32_e32 v61, v40
	v_mov_b32_e32 v60, v40
	v_mov_b32_e32 v59, v40
	v_mov_b32_e32 v58, v40
	v_mov_b32_e32 v57, v40
.LBB0_30:                               ; %._crit_edge120
	.loc	1 550 20 is_stmt 1              ; attention_backward.py:550:20
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:976
	scratch_load_b32 v16, off, off offset:980
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
	v_or_b32_e32 v0, v0, v55
	.loc	1 753 13                        ; attention_backward.py:753:13
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v16, s56, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v14, 2, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v17, v16, s81
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v13, 4, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s15, s81, v0
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v15, 6, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s16, s81, v14
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v12, 8, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s17, s81, v13
	.loc	1 755 18 is_stmt 0              ; attention_backward.py:755:18
	s_and_b32 s15, s7, s15
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	v_add_lshl_u32 v18, v17, v0, 2
	v_add_lshl_u32 v19, v17, v14, 2
	v_add_lshl_u32 v20, v17, v13, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v11, 10, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s18, s81, v15
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, s7, s16
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v10, 12, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s15
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s15, s7, s17
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s19, s81, v12
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s15
	buffer_store_b32 v57, v18, s[36:39], 0 offen
	v_add_lshl_u32 v18, v17, v15, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s20, s81, v11
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v58, v19, s[36:39], 0 offen
	buffer_store_b32 v59, v20, s[36:39], 0 offen
	v_add_lshl_u32 v19, v17, v12, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s7, s18
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v9, 14, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s21, s81, v10
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v20, v17, v11, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s7, s19
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v8, 32, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v21, v17, v10, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s7, s20
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v7, 34, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s22, s81, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s7, s21
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v6, 36, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s23, s81, v8
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v21, 0x80000000, v21, s16
	s_clause 0x1
	buffer_store_b32 v60, v18, s[36:39], 0 offen
	buffer_store_b32 v61, v19, s[36:39], 0 offen
	v_add_lshl_u32 v18, v17, v9, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s24, s81, v7
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v19, v17, v8, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s7, s22
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v5, 38, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s25, s81, v6
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v62, v20, s[36:39], 0 offen
	buffer_store_b32 v63, v21, s[36:39], 0 offen
	v_add_lshl_u32 v20, v17, v7, 2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s7, s23
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v4, 40, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v21, v17, v6, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s7, s24
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v3, 42, v0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v16, v16, s77
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s26, s81, v5
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s7, s25
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v2, 44, v0
	v_or_b32_e32 v1, 46, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s27, s81, v4
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v21, 0x80000000, v21, s16
	s_clause 0x1
	buffer_store_b32 v64, v18, s[36:39], 0 offen
	buffer_store_b32 v154, v19, s[36:39], 0 offen
	v_add_lshl_u32 v18, v17, v5, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s28, s81, v3
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v19, v17, v4, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s14, s77, v0
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s7, s26
	.loc	1 755 40 is_stmt 0              ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s29, s81, v2
	.loc	1 752 9 is_stmt 1               ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v155, v20, s[36:39], 0 offen
	buffer_store_b32 v156, v21, s[36:39], 0 offen
	v_add_lshl_u32 v20, v17, v3, 2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s15, s81, v1
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s7, s27
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v0, v16, v0, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s12, s77, v13
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v21, v17, v2, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s7, s28
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v17, v17, v1, 2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v13, v16, v13, 2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s14, s7, s14
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v20, s16
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s16, s7, s29
	s_and_b32 s15, s7, s15
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s14
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v21, 0x80000000, v21, s16
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s12, s7, s12
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s15
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s13, s77, v14
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x4
	buffer_store_b32 v157, v18, s[36:39], 0 offen
	buffer_store_b32 v158, v19, s[36:39], 0 offen
	buffer_store_b32 v159, v20, s[36:39], 0 offen
	buffer_store_b32 v160, v21, s[36:39], 0 offen
	buffer_store_b32 v161, v17, s[36:39], 0 offen
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_and_b32 s37, s43, 0xffff
	s_mov_b32 s36, s42
	v_cndmask_b32_e64 v13, 0x80000000, v13, s12
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s12, s77, v15
	v_cmp_gt_i32_e64 s11, s77, v12
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v14, v16, v14, 2
	buffer_store_b32 v41, v0, s[36:39], 0 offen
	v_add_lshl_u32 v0, v16, v15, 2
	v_add_lshl_u32 v12, v16, v12, 2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s13, s7, s13
	s_and_b32 s12, s7, s12
	s_and_b32 s11, s7, s11
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v14, 0x80000000, v14, s13
	v_cndmask_b32_e64 v0, 0x80000000, v0, s12
	v_cndmask_b32_e64 v12, 0x80000000, v12, s11
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s8, s77, v9
	v_cmp_gt_i32_e64 s10, s77, v11
	v_cmp_gt_i32_e64 s6, s77, v8
	v_cmp_gt_i32_e64 s9, s77, v10
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
	s_and_b32 s10, s7, s10
	s_and_b32 s8, s7, s8
	s_and_b32 s9, s7, s9
	s_and_b32 s6, s7, s6
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v11, 0x80000000, v11, s10
	v_cndmask_b32_e64 v0, 0x80000000, v0, s8
	v_cndmask_b32_e64 v10, 0x80000000, v10, s9
	v_cndmask_b32_e64 v8, 0x80000000, v8, s6
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s3, s77, v5
	v_cmp_gt_i32_e64 s5, s77, v7
	v_cmp_gt_i32_e64 s2, s77, v4
	v_cmp_gt_i32_e64 s4, s77, v6
	v_cmp_gt_i32_e64 s1, s77, v3
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
	v_cmp_gt_i32_e64 s0, s77, v2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v6, v16, v6, 2
	v_add_lshl_u32 v4, v16, v4, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e32 vcc_lo, s77, v1
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v3, v16, v3, 2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s5, s7, s5
	s_and_b32 s3, s7, s3
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v2, v16, v2, 2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s4, s7, s4
	s_and_b32 s2, s7, s2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v1, v16, v1, 2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s5
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s1, s7, s1
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v6, 0x80000000, v6, s4
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s0, s7, s0
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v3, 0x80000000, v3, s1
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 vcc_lo, s7, vcc_lo
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
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 992
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 992
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 32808
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 992
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 992
    .sgpr_count:     107
    .sgpr_spill_count: 4
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_bool_runtime_outfloat32_doutfloat32_float32_d64_dv64_shaperuntime_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 247
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
