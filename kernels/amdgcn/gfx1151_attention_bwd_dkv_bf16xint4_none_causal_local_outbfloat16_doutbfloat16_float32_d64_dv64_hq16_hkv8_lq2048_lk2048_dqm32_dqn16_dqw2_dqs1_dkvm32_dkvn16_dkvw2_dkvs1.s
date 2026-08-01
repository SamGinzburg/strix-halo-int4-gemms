	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x74
	s_load_b64 s[12:13], s[0:1], 0x10
.Ltmp0:
	.loc	1 536 23 prologue_end           ; attention_backward.py:536:23
	v_and_b32_e32 v33, 7, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v10, 3, v0
	s_clause 0x2
	s_load_b128 s[44:47], s[0:1], 0x0
	s_load_b32 s35, s[0:1], 0x7c
	s_load_b64 s[28:29], s[0:1], 0x58
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s56, s2, 4
	.loc	1 533 24                        ; attention_backward.py:533:24
	s_lshl_b32 s34, s3, 11
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_lshlrev_b32_e32 v9, 3, v33
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v12, s56, v10
	.loc	1 514 33 is_stmt 0              ; attention_backward.py:514:33
	v_and_b32_e32 v11, 56, v0
	.loc	1 535 17 is_stmt 1              ; attention_backward.py:535:17
	s_add_i32 s34, s34, s56
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v153, 4, v0
	s_mov_b32 s11, 0x31027000
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s6, 0x800, v12
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v11, 1, v11
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 541 32                        ; attention_backward.py:541:32
	s_ashr_i32 s7, s56, 1
	.loc	1 543 26                        ; attention_backward.py:543:26
	s_lshl_b32 s4, s3, 10
	.loc	1 541 32                        ; attention_backward.py:541:32
	v_or_b32_e32 v13, s7, v10
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v14, v153, v11
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[145:146], null, s18, v10, v[9:10]
	s_mul_i32 s33, s18, s34
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_cmp_gt_i32_e64 s5, s18, v9
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_and_b32 s9, s47, 0xffff
	s_mov_b32 s8, s46
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_mad_u64_u32 v[147:148], null, s19, v10, v[9:10]
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_lshl_add_u32 v152, s18, 3, v145
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_lshl_u32 v1, v145, s33, 1
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s6, s5
	.loc	1 545 17                        ; attention_backward.py:545:17
	s_add_i32 s7, s7, s4
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s4, s19, v9
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_lshl_u32 v2, v152, s33, 1
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_add_nc_u32 v154, 0, v14
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_mad_u64_u32 v[10:11], null, s19, s7, v[147:148]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_dual_cndmask_b32 v5, 0x80000000, v2 :: v_dual_and_b32 v34, 16, v0
	.loc	1 549 23                        ; attention_backward.py:549:23
	v_cmp_gt_i32_e32 vcc_lo, 0x400, v13
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_mov_b32 s14, s10
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_clause 0x1
	buffer_load_b128 v[1:4], v1, s[8:11], 0 offen
	buffer_load_b128 v[5:8], v5, s[8:11], 0 offen
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_mov_b32 s15, s11
	s_and_b32 s13, s13, 0xffff
	.loc	1 549 22                        ; attention_backward.py:549:22
	s_and_b32 s7, vcc_lo, s4
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_bfe_i32 s2, s2, 0x1001b
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v10, 0x80000000, v10, s7
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_lshr_b32 s2, s2, 28
	s_clause 0x1
	s_load_b256 s[36:43], s[0:1], 0x38
	s_load_b32 s58, s[0:1], 0x9c
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_bfe_i32 v37, v0, 3, 1
	s_lshl_b32 s59, s3, 12
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_mov_b16_e32 v71.l, 0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_i32 v35, v0, 4, 1
	v_bfe_u32 v156, v0, 4, 1
	s_mov_b32 s46, s10
	s_mov_b32 s47, s11
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v72.h, v71.l
	v_mov_b16_e32 v84.h, v71.l
	v_mov_b16_e32 v79.h, v71.l
	v_mov_b16_e32 v85.h, v71.l
	v_mov_b16_e32 v86.h, v71.l
	v_mov_b16_e32 v87.h, v71.l
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v75.l, v71.l
	v_mov_b16_e32 v74.l, v71.l
	v_mov_b16_e32 v73.l, v71.l
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v157, s56, v156
	v_mad_u64_u32 v[149:150], null, s18, 24, v[145:146]
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s52, s40
	v_mad_u64_u32 v[150:151], null, s19, 24, v[147:148]
	v_or_b32_e32 v175, 2, v157
	v_or_b32_e32 v176, 4, v157
	v_or_b32_e32 v177, 6, v157
	v_or_b32_e32 v178, 8, v157
	v_or_b32_e32 v179, 10, v157
	v_or_b32_e32 v180, 12, v157
	v_or_b32_e32 v181, 14, v157
	v_lshl_add_u32 v146, s18, 4, v145
	v_lshl_add_u32 v148, s19, 3, v147
	v_lshl_add_u32 v151, s19, 4, v147
	.loc	1 672 31                        ; attention_backward.py:672:31
	s_mul_f32 s60, s35, 0x3fb8aa3b
	s_mov_b32 s20, 0
	s_mov_b32 s57, -1
	s_mov_b32 s21, 0
	s_mov_b32 s48, s38
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(1)
	ds_store_b128 v154, v[1:4]
	s_waitcnt vmcnt(0)
	ds_store_b128 v154, v[5:8] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 544 28                        ; attention_backward.py:544:28
	buffer_load_b64 v[69:70], v10, s[12:15], 0 offen
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x28
	s_load_b64 s[30:31], s[0:1], 0x94
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s0, 0x800, v157
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_and_b32_e32 v36, 32, v0
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_and_b32_e32 v37, 0x440, v37
	v_lshlrev_b32_e32 v34, 2, v34
	v_and_b32_e32 v35, 0x440, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_lshlrev_b32_e32 v41, 3, v36
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s1, s56, s30
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_add_i32 s31, s31, s58
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_sub_i32 s1, s1, s58
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s1, s1, 16
	.loc	1 556 26                        ; attention_backward.py:556:26
	s_waitcnt vmcnt(0)
	v_bfe_u32 v89, v69, 20, 4
	.loc	1 570 20                        ; attention_backward.py:570:20
	v_add_nc_u32_e32 v1, s2, v12
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s2, s6, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b32_e32 v76, 8, v69
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v71.h, v69.h, 15
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v82, v69, 16, 4
	.loc	1 570 20                        ; attention_backward.py:570:20
	v_ashrrev_i32_e32 v1, 4, v1
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b64 v[77:78], 24, v[69:70]
	v_alignbit_b32 v80, v70, v69, 24
	v_lshrrev_b32_e32 v78, 8, v70
	v_lshrrev_b32_e32 v81, 24, v70
	.loc	1 568 17                        ; attention_backward.py:568:17
	v_lshl_add_u32 v1, s3, 7, v1
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_sub_i32 s3, s56, s31
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v83, v69, 8, 4
	.loc	1 589 24                        ; attention_backward.py:589:24
	s_max_i32 s3, s3, 0
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v88, 15, v69
	.loc	1 568 17                        ; attention_backward.py:568:17
	v_mul_lo_u32 v1, v1, s19
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v69.h, v70.l, 15
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v90, v70, 24, 4
	v_bfe_u32 v91, v70, 16, 4
	v_bfe_u32 v105, v70, 8, 4
	v_and_b32_e32 v106, 15, v70
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v74.h, 4, v70.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_bfe_u32 v107, v70, 20, 4
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_add_lshl_u32 v1, v1, v9, 1
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v70.l, v76.l, 15
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v108, -16, v82
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v72.l, v69.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v73.h, 4, v69.l
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 603 39                        ; attention_backward.py:603:39
	s_sub_i32 s2, s56, s58
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v109, -16, v83
	.loc	1 603 25                        ; attention_backward.py:603:25
	s_max_i32 s2, s2, 0
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v87.l, v74.h, 15
	.loc	1 567 32                        ; attention_backward.py:567:32
	buffer_load_b128 v[65:68], v1, s[12:15], 0 offen
	v_dual_mov_b32 v1, 0 :: v_dual_lshlrev_b32 v38, 3, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v155, 15, v0
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v74.h, v78.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v75.h, 4, v78.l
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v3, v1
	v_dual_mov_b32 v11, v1 :: v_dual_and_b32 v38, 48, v38
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v12, v1
	v_dual_mov_b32 v16, v1 :: v_dual_and_b32 v39, 0x370, v153
	v_mov_b32_e32 v26, v1
	v_lshl_or_b32 v160, v155, 6, v38
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v17, v1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_xad_u32 v92, v37, v39, 0
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v69.l, v70.h, 15
	v_xor_b32_e32 v37, 32, v160
	v_mov_b32_e32 v25, v1
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v84.l, v73.h, 15
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v111, -16, v88
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v70.h, 4, v76.l
	v_add_nc_u32_e32 v166, 0, v37
	.loc	1 590 24                        ; attention_backward.py:590:24
	v_med3_i32 v37, s1, 0, 0x800
	.loc	1 604 45                        ; attention_backward.py:604:45
	s_and_b32 s1, s2, 0x7fffffe0
	.loc	1 597 45                        ; attention_backward.py:597:45
	s_and_b32 s2, s3, 0x7fffffe0
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v73.h, v81.l, 15
	.loc	1 604 24                        ; attention_backward.py:604:24
	s_max_u32 s40, s2, s1
	.loc	1 600 19                        ; attention_backward.py:600:19
	v_readfirstlane_b32 s1, v37
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v76.l, v77.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v76.h, 4, v77.l
	v_lshrrev_b16 v85.l, 4, v81.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v81, -16, v90
	.loc	1 600 19                        ; attention_backward.py:600:19
	s_add_i32 s2, s1, 31
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v71.h
	.loc	1 557 50 is_stmt 0              ; attention_backward.py:557:50
	v_or_b32_e32 v112, -16, v91
	.loc	1 556 28 is_stmt 1              ; attention_backward.py:556:28
	v_and_b16 v79.l, v70.h, 15
	v_mov_b32_e32 v2, v1
	v_dual_mov_b32 v14, v1 :: v_dual_lshlrev_b32 v33, 4, v33
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v78, v82, v108, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v70.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v113, -16, v105
	v_mov_b32_e32 v7, v1
	v_dual_mov_b32 v9, v1 :: v_dual_lshlrev_b32 v42, 1, v155
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v77, v83, v109, s1
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v72.l
	v_dual_mov_b32 v19, v1 :: v_dual_and_b32 v80, 15, v80
	.loc	1 534 24 is_stmt 1              ; attention_backward.py:534:24
	v_lshl_or_b32 v33, v155, 7, v33
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v110, -16, v106
	.loc	1 557 25 is_stmt 0              ; attention_backward.py:557:25
	v_cndmask_b32_e64 v82, v88, v111, s1
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v73.h
	v_mov_b32_e32 v30, v1
	.loc	1 550 20 is_stmt 1              ; attention_backward.py:550:20
	v_lshrrev_b32_e32 v0, 1, v36
	v_or3_b32 v158, v42, v34, v36
	v_add3_u32 v159, 0, v36, v42
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v70, v90, v81, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v69.l
	v_lshl_or_b32 v161, v36, 6, v33
	v_xor_b32_e32 v36, 16, v160
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v83, -16, v80
	.loc	1 556 28 is_stmt 1              ; attention_backward.py:556:28
	v_and_b16 v72.l, v76.h, 15
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v88, v91, v112, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v74.h
	v_dual_mov_b32 v20, v1 :: v_dual_add_nc_u32 v165, 0, v36
	v_dual_mov_b32 v23, v1 :: v_dual_cndmask_b32 v84, 0, v84
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v81, v105, v113, s1
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v69.h
	v_xor_b32_e32 v36, 64, v161
	.loc	1 556 28 is_stmt 1              ; attention_backward.py:556:28
	v_and_b16 v86.l, v75.h, 15
	v_mov_b32_e32 v21, v1
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v105, -16, v84
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v69, v106, v110, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v76.l
	v_add_nc_u32_e32 v171, 0, v36
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v76, v82
	v_cvt_f32_i32_e32 v82, v88
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v88, 0, v107, vcc_lo
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v90, v80, v83, s1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v80, v69
	v_cvt_f32_i32_e32 v83, v70
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_dual_cndmask_b32 v69, 0, v72 :: v_dual_cndmask_b32 v86, 0, v86
	v_cndmask_b32_e32 v70, 0, v89, vcc_lo
	v_cndmask_b32_e32 v72, 0, v79, vcc_lo
	v_cndmask_b32_e32 v87, 0, v87, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v79, v90
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v89, -16, v69
	v_or_b32_e32 v90, -16, v70
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v85, 0, v85, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v69
	.loc	1 558 52 is_stmt 0              ; attention_backward.py:558:52
	v_or_b32_e32 v91, -16, v72
	v_or_b32_e32 v107, -16, v88
	v_dual_mov_b32 v5, v1 :: v_dual_lshlrev_b32 v40, 4, v155
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v69, v69, v89, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v70
	v_mov_b32_e32 v28, v1
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v108, -16, v86
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_xor_b32_e32 v35, v35, v40
	v_dual_mov_b32 v32, v1 :: v_dual_add_nc_u32 v93, 0, v33
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v70, v70, v90, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v72
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v106, -16, v85
	.loc	1 534 24 is_stmt 1              ; attention_backward.py:534:24
	v_xad_u32 v94, v33, 16, 0
	v_xad_u32 v95, v33, 32, 0
	v_xad_u32 v96, v33, 48, 0
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v72, v72, v91, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v84
	.loc	1 534 24 is_stmt 1              ; attention_backward.py:534:24
	v_xad_u32 v97, v33, 64, 0
	v_xad_u32 v98, 0x50, v33, 0
	v_xad_u32 v99, 0x60, v33, 0
	v_xad_u32 v100, 0x70, v33, 0
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v84, v84, v105, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v85
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v109, -16, v87
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_add3_u32 v101, 0, v41, v35
	v_xor_b32_e32 v33, 0x90, v158
	v_xor_b32_e32 v34, 0x120, v158
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v89, v85, v106, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v88
	v_xor_b32_e32 v35, 0x1b0, v158
	v_dual_mov_b32 v13, v1 :: v_dual_add_nc_u32 v162, 0, v33
	v_dual_mov_b32 v15, v1 :: v_dual_cndmask_b32 v88, v88, v107
	v_cmp_lt_u32_e32 vcc_lo, 7, v86
	v_dual_mov_b32 v18, v1 :: v_dual_add_nc_u32 v163, 0, v34
	v_xor_b32_e32 v38, 48, v160
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_dual_cndmask_b32 v105, v86, v108 :: v_dual_add_nc_u32 v164, 0, v35
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v87
	v_xor_b32_e32 v33, 16, v161
	v_xor_b32_e32 v34, 32, v161
	v_xor_b32_e32 v35, 48, v161
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v77, v77
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v106, v87, v109, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v86, v70
	v_cvt_f32_i32_e32 v84, v84
	v_cvt_f32_i32_e32 v87, v69
	v_cvt_f32_i32_e32 v85, v72
	v_cvt_f32_i32_e32 v90, v88
	v_cvt_f32_i32_e32 v91, v89
	v_cvt_f32_i32_e32 v88, v106
	v_cvt_f32_i32_e32 v89, v105
	v_dual_mov_b32 v27, v1 :: v_dual_add_nc_u32 v168, 0, v33
	v_dual_mov_b32 v29, v1 :: v_dual_add_nc_u32 v170, 0, v35
	v_dual_mov_b32 v22, v1 :: v_dual_add_nc_u32 v167, 0, v38
	v_dual_mov_b32 v24, v1 :: v_dual_add_nc_u32 v169, 0, v34
	.loc	1 534 24                        ; attention_backward.py:534:24
	ds_load_b128 v[33:36], v93
	ds_load_b128 v[37:40], v94
	ds_load_b128 v[41:44], v95
	ds_load_b128 v[45:48], v96
	ds_load_b128 v[49:52], v97
	ds_load_b128 v[53:56], v98
	ds_load_b128 v[57:60], v99
	ds_load_b128 v[61:64], v100
	.loc	1 575 27                        ; attention_backward.py:575:27
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v92, v[76:79]
	ds_store_b128 v92, v[84:87] offset:128
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[76:79], v101
	ds_load_b128 v[84:87], v101 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v92, v[80:83]
	ds_store_b128 v92, v[88:91] offset:128
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[80:83], v101
	ds_load_b128 v[88:91], v101 offset:512
	v_xor_b32_e32 v102, 0x50, v161
	v_xor_b32_e32 v103, 0x60, v161
	v_xor_b32_e32 v104, 0x70, v161
	.loc	1 600 17                        ; attention_backward.py:600:17
	s_and_b32 s1, s2, 0x1fe0
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	.loc	1 598 24                        ; attention_backward.py:598:24
	s_min_u32 s61, s1, 0x800
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_barrier
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v10, v1
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v182, v0, v155
	s_cmp_lt_u32 s40, s61
	s_cselect_b32 s62, -1, 0
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s49, s39, 0xffff
	s_and_b32 s53, s41, 0xffff
	s_and_b32 s37, s37, 0xffff
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v71.h, v65.l
	v_mov_b16_e32 v75.h, v66.l
	v_and_b32_e32 v65, 0xffff0000, v65
	v_mov_b16_e32 v74.h, v67.l
	v_mov_b16_e32 v73.h, v68.l
	v_and_b32_e32 v66, 0xffff0000, v66
	v_and_b32_e32 v67, 0xffff0000, v67
	v_and_b32_e32 v68, 0xffff0000, v68
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_dual_mul_f32 v69, v76, v71 :: v_dual_add_nc_u32 v172, 0, v102
	v_add_nc_u32_e32 v174, 0, v104
	v_mul_f32_e32 v72, v78, v75
	v_dual_mul_f32 v70, v77, v65 :: v_dual_add_nc_u32 v173, 0, v103
	v_mul_f32_e32 v76, v79, v66
	v_dual_mul_f32 v77, v80, v74 :: v_dual_mul_f32 v78, v81, v67
	v_mul_f32_e32 v79, v82, v73
	v_dual_mul_f32 v71, v84, v71 :: v_dual_mul_f32 v80, v83, v68
	v_mul_f32_e32 v65, v85, v65
	v_dual_mul_f32 v75, v86, v75 :: v_dual_mul_f32 v66, v87, v66
	v_dual_mul_f32 v74, v88, v74 :: v_dual_mul_f32 v67, v89, v67
	v_dual_mul_f32 v73, v90, v73 :: v_dual_mul_f32 v68, v91, v68
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_bfe_u32 v81, v69, 16, 1
	v_bfe_u32 v82, v70, 16, 1
	v_bfe_u32 v83, v72, 16, 1
	v_bfe_u32 v84, v76, 16, 1
	v_bfe_u32 v85, v77, 16, 1
	v_bfe_u32 v86, v78, 16, 1
	v_bfe_u32 v87, v79, 16, 1
	v_bfe_u32 v88, v80, 16, 1
	v_bfe_u32 v89, v71, 16, 1
	v_bfe_u32 v90, v65, 16, 1
	v_bfe_u32 v91, v75, 16, 1
	v_bfe_u32 v92, v66, 16, 1
	v_bfe_u32 v101, v74, 16, 1
	v_bfe_u32 v102, v67, 16, 1
	v_bfe_u32 v103, v73, 16, 1
	v_bfe_u32 v104, v68, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v69, v69
	v_cmp_o_f32_e64 s1, v70, v70
	v_cmp_o_f32_e64 s2, v72, v72
	v_cmp_o_f32_e64 s3, v76, v76
	v_cmp_o_f32_e64 s6, v77, v77
	v_cmp_o_f32_e64 s7, v78, v78
	v_cmp_o_f32_e64 s8, v79, v79
	v_cmp_o_f32_e64 s9, v80, v80
	v_add3_u32 v69, v69, v81, 0x7fff
	v_add3_u32 v70, v70, v82, 0x7fff
	v_add3_u32 v72, v72, v83, 0x7fff
	v_add3_u32 v76, v76, v84, 0x7fff
	v_add3_u32 v77, v77, v85, 0x7fff
	v_add3_u32 v78, v78, v86, 0x7fff
	v_add3_u32 v79, v79, v87, 0x7fff
	v_add3_u32 v80, v80, v88, 0x7fff
	v_cmp_o_f32_e64 s10, v71, v71
	v_cmp_o_f32_e64 s11, v65, v65
	v_cmp_o_f32_e64 s12, v75, v75
	v_cmp_o_f32_e64 s13, v66, v66
	v_cmp_o_f32_e64 s14, v74, v74
	v_cmp_o_f32_e64 s15, v67, v67
	v_cmp_o_f32_e64 s16, v73, v73
	v_cmp_o_f32_e64 s17, v68, v68
	v_add3_u32 v71, v71, v89, 0x7fff
	v_add3_u32 v81, v65, v90, 0x7fff
	v_add3_u32 v75, v75, v91, 0x7fff
	v_add3_u32 v82, v66, v92, 0x7fff
	v_add3_u32 v74, v74, v101, 0x7fff
	v_add3_u32 v83, v67, v102, 0x7fff
	v_add3_u32 v73, v73, v103, 0x7fff
	v_add3_u32 v84, v68, v104, 0x7fff
	v_cndmask_b16 v65.l, 0x7fff, v69.h, vcc_lo
	v_cndmask_b16 v65.h, 0x7fff, v70.h, s1
	v_cndmask_b16 v66.l, 0x7fff, v72.h, s2
	v_cndmask_b16 v66.h, 0x7fff, v76.h, s3
	v_cndmask_b16 v67.l, 0x7fff, v77.h, s6
	v_cndmask_b16 v67.h, 0x7fff, v78.h, s7
	v_cndmask_b16 v68.l, 0x7fff, v79.h, s8
	v_cndmask_b16 v68.h, 0x7fff, v80.h, s9
	v_cndmask_b16 v69.l, 0x7fff, v71.h, s10
	v_cndmask_b16 v69.h, 0x7fff, v81.h, s11
	v_cndmask_b16 v70.l, 0x7fff, v75.h, s12
	v_cndmask_b16 v70.h, 0x7fff, v82.h, s13
	v_cndmask_b16 v71.l, 0x7fff, v74.h, s14
	v_cndmask_b16 v71.h, 0x7fff, v83.h, s15
	v_cndmask_b16 v72.l, 0x7fff, v73.h, s16
	v_cndmask_b16 v72.h, 0x7fff, v84.h, s17
	.loc	1 717 21 is_stmt 1              ; attention_backward.py:717:21
	ds_store_b128 v154, v[65:68]
	ds_store_b128 v154, v[69:72] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[65:68], v93
	ds_load_b128 v[69:72], v94
	ds_load_b128 v[73:76], v95
	ds_load_b128 v[77:80], v96
	ds_load_b128 v[81:84], v97
	ds_load_b128 v[85:88], v98
	ds_load_b128 v[89:92], v99
	ds_load_b128 v[93:96], v100
	s_branch .LBB0_2
.LBB0_1:                                ; %Flow164
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 21 is_stmt 0                ; attention_backward.py:0:21
	s_xor_b32 s1, s57, -1
	s_movk_i32 s21, 0x800
	.loc	1 605 9 is_stmt 1               ; attention_backward.py:605:9
	s_and_not1_b32 vcc_lo, exec_lo, s1
	s_mov_b32 s57, 0
	s_cbranch_vccz .LBB0_5
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_and_not1_b32 vcc_lo, exec_lo, s62
	s_cbranch_vccnz .LBB0_1
; %bb.3:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 662 34                        ; attention_backward.py:662:34
	s_or_b32 s41, s59, s21
	s_mov_b32 s63, s40
	v_or_b32_e32 v183, s41, v182
.LBB0_4:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_add_i32 s1, s63, s41
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_mov_b32 s21, s20
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_mul_i32 s2, s1, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_mov_b32 s22, s20
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v97, s2, v145, 1
	v_add_lshl_u32 v98, s2, v152, 1
	v_add_lshl_u32 v99, s2, v146, 1
	v_add_lshl_u32 v100, s2, v149, 1
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_mov_b32 s23, s20
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e64 v97, 0x80000000, v97, s5
	v_cndmask_b32_e64 v98, 0x80000000, v98, s5
	v_cndmask_b32_e64 v99, 0x80000000, v99, s5
	v_cndmask_b32_e64 v100, 0x80000000, v100, s5
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_mov_b32 s24, s20
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x3
	buffer_load_b128 v[129:132], v97, s[44:47], 0 offen
	buffer_load_b128 v[133:136], v98, s[44:47], 0 offen
	buffer_load_b128 v[137:140], v99, s[44:47], 0 offen
	buffer_load_b128 v[141:144], v100, s[44:47], 0 offen
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_mov_b32 s25, s20
	s_mov_b32 s26, s20
	s_mov_b32 s27, s20
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v224, s27 :: v_dual_add_nc_u32 v209, 0, v161
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v223, s26 :: v_dual_mov_b32 v222, s25
	v_dual_mov_b32 v221, s24 :: v_dual_mov_b32 v220, s23
	v_dual_mov_b32 v219, s22 :: v_dual_mov_b32 v218, s21
	v_dual_mov_b32 v217, s20 :: v_dual_add_nc_u32 v250, 0, v153
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s50, s46
	s_mov_b32 s51, s47
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s1, s1, s19
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s54, s46
	s_mov_b32 s55, s47
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s38, s46
	s_mov_b32 s39, s47
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(3)
	ds_store_b128 v154, v[129:132]
	s_waitcnt vmcnt(2)
	ds_store_b128 v154, v[133:136] offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b128 v154, v[137:140] offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b128 v154, v[141:144] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[97:100], v209
	ds_load_b128 v[101:104], v168
	ds_load_b128 v[105:108], v169
	ds_load_b128 v[109:112], v170
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[113:120], v[33:40], v[97:104], v[217:224]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[97:100], v171
	ds_load_b128 v[101:104], v172
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[113:120], v[41:48], v[105:112], v[113:120]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[113:120], v[49:56], v[97:104], v[113:120]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[97:100], v173
	ds_load_b128 v[101:104], v174
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[113:120], v[57:64], v[97:104], v[113:120]
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_add_lshl_u32 v97, v183, s63, 2
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v99, s1, v148, 1
	v_add_lshl_u32 v100, s1, v151, 1
	v_add_lshl_u32 v101, s1, v150, 1
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v98, v97, s[48:51], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v99, 0x80000000, v99, s4
	v_cndmask_b32_e64 v100, 0x80000000, v100, s4
	v_cndmask_b32_e64 v101, 0x80000000, v101, s4
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v241, s60, v113, -v98
	v_fma_f32 v242, s60, v114, -v98
	v_fma_f32 v243, s60, v115, -v98
	v_fma_f32 v244, s60, v116, -v98
	v_fma_f32 v245, s60, v117, -v98
	v_fma_f32 v246, s60, v118, -v98
	v_fma_f32 v247, s60, v119, -v98
	v_fma_f32 v248, s60, v120, -v98
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v98, s1, v147, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v98, 0x80000000, v98, s4
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v249, v97, s[52:55], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x3
	buffer_load_b128 v[225:228], v98, s[36:39], 0 offen
	buffer_load_b128 v[229:232], v99, s[36:39], 0 offen
	buffer_load_b128 v[233:236], v100, s[36:39], 0 offen
	buffer_load_b128 v[237:240], v101, s[36:39], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	ds_store_b128 v250, v[225:228]
	s_waitcnt vmcnt(2)
	ds_store_b128 v250, v[229:232] offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b128 v250, v[233:236] offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b128 v250, v[237:240] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16_hi v123, v159 offset:640
	ds_load_u16_d16_hi v124, v159 offset:896
	ds_load_u16_d16_hi v100, v159 offset:960
	ds_load_u16_d16_hi v99, v159 offset:704
	ds_load_u16_d16_hi v125, v159 offset:1152
	ds_load_u16_d16_hi v126, v159 offset:1408
	ds_load_u16_d16_hi v102, v159 offset:1472
	ds_load_u16_d16_hi v101, v159 offset:1216
	ds_load_u16_d16_hi v127, v159 offset:1664
	ds_load_u16_d16_hi v128, v159 offset:1920
	ds_load_u16_d16_hi v104, v159 offset:1984
	ds_load_u16_d16_hi v103, v159 offset:1728
	ds_load_u16_d16_hi v105, v159 offset:2176
	ds_load_u16_d16_hi v106, v159 offset:2432
	ds_load_u16_d16_hi v114, v159 offset:2496
	ds_load_u16_d16_hi v113, v159 offset:2240
	ds_load_u16_d16_hi v107, v159 offset:2688
	ds_load_u16_d16_hi v108, v159 offset:2944
	ds_load_u16_d16_hi v116, v159 offset:3008
	ds_load_u16_d16_hi v115, v159 offset:2752
	ds_load_u16_d16_hi v109, v159 offset:3200
	ds_load_u16_d16_hi v110, v159 offset:3456
	ds_load_u16_d16_hi v118, v159 offset:3520
	ds_load_u16_d16_hi v117, v159 offset:3264
	ds_load_u16_d16_hi v111, v159 offset:3712
	ds_load_u16_d16_hi v112, v159 offset:3968
	ds_load_u16_d16_hi v120, v159 offset:4032
	ds_load_u16_d16_hi v119, v159 offset:3776
	ds_load_u16_d16_hi v121, v159 offset:128
	ds_load_u16_d16_hi v122, v159 offset:384
	ds_load_u16_d16_hi v98, v159 offset:448
	ds_load_u16_d16_hi v97, v159 offset:192
	ds_load_u16_d16_hi v206, v159 offset:320
	ds_load_u16_d16_hi v215, v159 offset:256
	ds_load_u16_d16_hi v216, v159
	ds_load_u16_d16_hi v207, v159 offset:64
	ds_load_u16_d16_hi v204, v159 offset:832
	ds_load_u16_d16_hi v213, v159 offset:768
	ds_load_u16_d16_hi v214, v159 offset:512
	ds_load_u16_d16_hi v205, v159 offset:576
	ds_load_u16_d16_hi v202, v159 offset:1344
	ds_load_u16_d16_hi v211, v159 offset:1280
	ds_load_u16_d16_hi v212, v159 offset:1024
	ds_load_u16_d16_hi v203, v159 offset:1088
	ds_load_u16_d16_hi v200, v159 offset:1856
	ds_load_u16_d16_hi v208, v159 offset:1792
	ds_load_u16_d16_hi v210, v159 offset:1536
	ds_load_u16_d16_hi v201, v159 offset:1600
	ds_load_u16_d16_hi v190, v159 offset:2368
	ds_load_u16_d16_hi v198, v159 offset:2304
	ds_load_u16_d16_hi v199, v159 offset:2048
	ds_load_u16_d16_hi v191, v159 offset:2112
	ds_load_u16_d16_hi v188, v159 offset:2880
	ds_load_u16_d16_hi v196, v159 offset:2816
	ds_load_u16_d16_hi v197, v159 offset:2560
	ds_load_u16_d16_hi v189, v159 offset:2624
	ds_load_u16_d16_hi v186, v159 offset:3392
	ds_load_u16_d16_hi v194, v159 offset:3328
	ds_load_u16_d16_hi v195, v159 offset:3072
	ds_load_u16_d16_hi v187, v159 offset:3136
	ds_load_u16_d16_hi v184, v159 offset:3904
	ds_load_u16_d16_hi v192, v159 offset:3840
	ds_load_u16_d16_hi v193, v159 offset:3584
	ds_load_u16_d16_hi v185, v159 offset:3648
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v154, v[225:228]
	ds_store_b128 v154, v[229:232] offset:1024
	ds_store_b128 v154, v[233:236] offset:2048
	ds_store_b128 v154, v[237:240] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[225:228], v209
	ds_load_b128 v[229:232], v168
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[217:224], v[65:72], v[225:232], v[217:224]
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[225:228], v169
	ds_load_b128 v[229:232], v170
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[217:224], v[73:80], v[225:232], v[217:224]
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[225:228], v171
	ds_load_b128 v[229:232], v172
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[217:224], v[81:88], v[225:232], v[217:224]
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[225:228], v173
	ds_load_b128 v[229:232], v174
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_wmma_f32_16x16x16_bf16 v[217:224], v[89:96], v[225:232], v[217:224]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v209, v217, v249
	v_sub_f32_e32 v217, v218, v249
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_sub_f32_e32 v218, v219, v249
	v_sub_f32_e32 v219, v220, v249
	v_sub_f32_e32 v220, v221, v249
	v_sub_f32_e32 v221, v222, v249
	v_sub_f32_e32 v222, v223, v249
	v_sub_f32_e32 v223, v224, v249
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v224, s63, v182
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s63, s63, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v225, s58, v224
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v224, s31, v224
	.loc	1 678 21                        ; attention_backward.py:678:21
	v_min_i32_e32 v224, v225, v224
	.loc	1 678 47 is_stmt 0              ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v225, s30, v225
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 678 21                        ; attention_backward.py:678:21
	v_cmp_ge_i32_e64 s10, v224, v157
	v_cmp_ge_i32_e64 s11, v224, v175
	v_cmp_ge_i32_e64 s12, v224, v176
	v_cmp_ge_i32_e64 s13, v224, v177
	v_cmp_ge_i32_e64 s14, v224, v178
	v_cmp_ge_i32_e64 s15, v224, v179
	v_cmp_ge_i32_e64 s16, v224, v180
	v_cmp_ge_i32_e64 s17, v224, v181
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v224, v241
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v157, v225
	v_cmp_ge_i32_e64 s1, v175, v225
	v_cmp_ge_i32_e64 s2, v176, v225
	v_cmp_ge_i32_e64 s3, v177, v225
	v_cmp_ge_i32_e64 s6, v178, v225
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s10, s10, vcc_lo
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s7, v179, v225
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 vcc_lo, s0, s10
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s8, v180, v225
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v224, 0, v224, vcc_lo
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s9, v181, v225
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s1, s11, s1
	s_and_b32 s2, s12, s2
	s_and_b32 s1, s0, s1
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v209, v224, v209
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s2, s0, s2
	s_and_b32 s3, s13, s3
	s_and_b32 s6, s14, s6
	s_and_b32 s3, s0, s3
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v209, s35, v209
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s6, s0, s6
	s_and_b32 s7, s15, s7
	s_and_b32 s8, s16, s8
	s_and_b32 s7, s0, s7
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v225, v209, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v209, v209
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s8, s0, s8
	s_and_b32 s9, s17, s9
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v209, v209, v225, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v225, v242
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_mov_b16_e64 v209.l, 0
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s9, s0, s9
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_u32 s63, s61
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v97.l, 0x7fff, v209.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v224, v224
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v127.l, v209.l
	v_mov_b16_e64 v123.l, v209.l
	v_mov_b16_e64 v125.l, v209.l
	v_mov_b16_e64 v121.l, v209.l
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v225, 0, v225, s1
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v111.l, v209.l
	v_mov_b16_e64 v108.l, v209.l
	v_mov_b16_e64 v119.l, v209.l
	v_mov_b16_e64 v104.l, v209.l
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v217, v225, v217
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v110.l, v209.l
	v_mov_b16_e64 v122.l, v209.l
	v_mov_b16_e64 v124.l, v209.l
	v_mov_b16_e64 v126.l, v209.l
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v217, s35, v217
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v128.l, v209.l
	v_mov_b16_e64 v105.l, v209.l
	v_mov_b16_e64 v106.l, v209.l
	v_mov_b16_e64 v107.l, v209.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v226, v217, 16, 1
	v_cmp_o_f32_e64 s1, v217, v217
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v109.l, v209.l
	v_mov_b16_e64 v112.l, v209.l
	v_mov_b16_e64 v100.l, v209.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v227, v217, v226, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v217, v243
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v102.l, v209.l
	v_mov_b16_e64 v117.l, v209.l
	v_mov_b16_e64 v113.l, v209.l
	v_mov_b16_e64 v115.l, v209.l
	v_mov_b16_e64 v99.l, v209.l
	v_mov_b16_e64 v101.l, v209.l
	v_mov_b16_e64 v103.l, v209.l
	v_mov_b16_e64 v114.l, v209.l
	v_mov_b16_e64 v116.l, v209.l
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v217, 0, v217, s2
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v118.l, v209.l
	v_mov_b16_e64 v120.l, v209.l
	v_mov_b16_e64 v208.l, v209.l
	v_mov_b16_e64 v211.l, v209.l
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v218, v217, v218
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v210.l, v209.l
	v_mov_b16_e64 v216.l, v209.l
	v_mov_b16_e64 v215.l, v209.l
	v_mov_b16_e64 v214.l, v209.l
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v218, s35, v218
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v213.l, v209.l
	v_mov_b16_e64 v212.l, v209.l
	v_mov_b16_e64 v203.l, v209.l
	v_mov_b16_e64 v204.l, v209.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v226, v218, 16, 1
	v_cmp_o_f32_e64 s2, v218, v218
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v202.l, v209.l
	v_mov_b16_e64 v201.l, v209.l
	v_mov_b16_e64 v206.l, v209.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v228, v218, v226, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v218, v244
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v205.l, v209.l
	v_mov_b16_e64 v207.l, v209.l
	v_mov_b16_e64 v200.l, v209.l
	v_mov_b16_e64 v199.l, v209.l
	v_mov_b16_e64 v195.l, v209.l
	v_mov_b16_e64 v198.l, v209.l
	v_mov_b16_e64 v197.l, v209.l
	v_mov_b16_e64 v194.l, v209.l
	v_mov_b16_e64 v196.l, v209.l
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v218, 0, v218, s3
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v192.l, v209.l
	v_mov_b16_e64 v193.l, v209.l
	v_mov_b16_e64 v190.l, v209.l
	v_mov_b16_e64 v188.l, v209.l
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v219, v218, v219
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v187.l, v209.l
	v_mov_b16_e64 v186.l, v209.l
	v_mov_b16_e64 v184.l, v209.l
	v_mov_b16_e64 v191.l, v209.l
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v219, s35, v219
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v189.l, v209.l
	v_mov_b16_e64 v185.l, v209.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v226, v219, 16, 1
	v_cmp_o_f32_e64 s3, v219, v219
	v_add3_u32 v219, v219, v226, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v226, v245
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v226, 0, v226, s6
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v220, v226, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v220, s35, v220
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v229, v220, 16, 1
	v_cmp_o_f32_e64 s6, v220, v220
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v229, v220, v229, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v220, v246
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v98.l, 0x7fff, v229.h, s6
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s6, v218, v218
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v220, 0, v220, s7
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v221, v220, v221
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v221, s35, v221
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v230, v221, 16, 1
	v_cmp_o_f32_e64 s7, v221, v221
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v230, v221, v230, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v221, v247
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v221, 0, v221, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v222, v221, v222
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v222, s35, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v231, v222, 16, 1
	v_cmp_o_f32_e64 s8, v222, v222
	v_add3_u32 v231, v222, v231, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v222, v248
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v222, 0, v222, s9
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v223, v222, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v223, s35, v223
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v232, v223, 16, 1
	v_cmp_o_f32_e64 s9, v223, v223
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v232, v223, v232, 0x7fff
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	v_add_nc_u32_e32 v223, 0, v158
	ds_store_b16 v223, v97
	ds_store_b16 v223, v98 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v97.l, 0x7fff, v227.h, s1
	v_cndmask_b16 v98.l, 0x7fff, v230.h, s7
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s7, v221, v221
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v162, v97
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v97.l, 0x7fff, v228.h, s2
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v162, v98 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v98.l, 0x7fff, v231.h, s8
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s2, v226, v226
	v_cmp_o_f32_e64 s8, v222, v222
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v163, v97
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v97.l, 0x7fff, v219.h, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v219, 0, v160
	ds_store_b16 v163, v98 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v98.l, 0x7fff, v232.h, s9
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v164, v97
	ds_store_b16 v164, v98 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[227:230], v219
	ds_load_b128 v[231:234], v165
	ds_load_b128 v[235:238], v166
	ds_load_b128 v[239:242], v167
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v250, v[129:132]
	ds_store_b128 v250, v[133:136] offset:1024
	ds_store_b128 v250, v[137:140] offset:2048
	ds_store_b128 v250, v[141:144] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v129, v159
	ds_load_u16_d16 v130, v159 offset:256
	ds_load_u16_d16 v131, v159 offset:512
	ds_load_u16_d16 v132, v159 offset:768
	ds_load_u16_d16 v135, v159 offset:1536
	ds_load_u16_d16 v136, v159 offset:1792
	ds_load_u16_d16 v133, v159 offset:1024
	ds_load_u16_d16 v134, v159 offset:1280
	ds_load_u16_d16 v140, v159 offset:832
	ds_load_u16_d16 v142, v159 offset:1344
	ds_load_u16_d16 v139, v159 offset:576
	ds_load_u16_d16 v138, v159 offset:320
	ds_load_u16_d16 v243, v159 offset:2048
	ds_load_u16_d16 v244, v159 offset:2304
	ds_load_u16_d16 v245, v159 offset:2560
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v133, v159 offset:1152
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v134, v159 offset:1408
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v140, v159 offset:960
	ds_load_u16_d16 v137, v159 offset:64
	ds_load_u16_d16_hi v130, v159 offset:384
	ds_load_u16_d16_hi v129, v159 offset:128
	ds_load_u16_d16_hi v136, v159 offset:1920
	ds_load_u16_d16_hi v135, v159 offset:1664
	ds_load_u16_d16 v144, v159 offset:1856
	ds_load_u16_d16 v143, v159 offset:1600
	ds_load_u16_d16_hi v131, v159 offset:640
	ds_load_u16_d16_hi v132, v159 offset:896
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v139, v159 offset:704
	ds_load_u16_d16_hi v142, v159 offset:1472
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v243, v159 offset:2176
	ds_load_u16_d16 v141, v159 offset:1088
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v137, v159 offset:192
	ds_load_u16_d16_hi v138, v159 offset:448
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v144, v159 offset:1984
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v143, v159 offset:1728
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[129:136], v[227:234], v[25:32]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_u16_d16 v247, v159 offset:3072
	ds_load_u16_d16 v249, v159 offset:3584
	ds_load_u16_d16 v250, v159 offset:3840
	ds_load_u16_d16 v248, v159 offset:3328
	ds_load_u16_d16 v246, v159 offset:2816
	ds_load_u16_d16 v131, v159 offset:2624
	ds_load_u16_d16 v136, v159 offset:3904
	ds_load_u16_d16 v132, v159 offset:2880
	ds_load_u16_d16 v130, v159 offset:2368
	ds_load_u16_d16 v129, v159 offset:2112
	s_waitcnt lgkmcnt(1)
	ds_load_u16_d16_hi v130, v159 offset:2496
	ds_load_u16_d16_hi v246, v159 offset:2944
	ds_load_u16_d16_hi v131, v159 offset:2752
	ds_load_u16_d16_hi v247, v159 offset:3200
	ds_load_u16_d16_hi v248, v159 offset:3456
	ds_load_u16_d16 v135, v159 offset:3648
	ds_load_u16_d16 v134, v159 offset:3392
	ds_load_u16_d16_hi v249, v159 offset:3712
	ds_load_u16_d16_hi v250, v159 offset:3968
	ds_load_u16_d16_hi v136, v159 offset:4032
	ds_load_u16_d16 v133, v159 offset:3136
	ds_load_u16_d16_hi v132, v159 offset:3008
	ds_load_u16_d16_hi v245, v159 offset:2688
	ds_load_u16_d16_hi v244, v159 offset:2432
	s_waitcnt lgkmcnt(3)
	ds_load_u16_d16_hi v133, v159 offset:3264
	ds_load_u16_d16_hi v135, v159 offset:3776
	ds_load_u16_d16_hi v134, v159 offset:3520
	ds_load_u16_d16_hi v129, v159 offset:2240
	ds_load_u16_d16_hi v141, v159 offset:1216
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[243:250], v[235:242], v[25:32]
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v243, v101, v101
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v101.l, v203.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v244, v100, v100
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v100.l, v204.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v245, v99, v99
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v99.l, v205.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v248, v113, v113
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v113.l, v191.h
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[17:24], v[137:144], v[227:234], v[17:24]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v232, v125, v125
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v227.l, v209.l
	v_mov_b16_e64 v228.l, v209.l
	v_mov_b16_e64 v229.l, v209.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[17:24], v[129:136], v[235:242], v[17:24]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v129, v224, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v238, v108, v108
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v134, v222, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v236, v121, v121
	v_sub_f32_e32 v230, v127, v127
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v129, v224, v129, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v127.l, v210.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v134, v222, v134, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v231, v126, v126
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v126.l, v211.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v209.h, 0x7fff, v129.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v225, v225
	v_cndmask_b16 v229.h, 0x7fff, v134.h, s8
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v125.l, v212.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v233, v124, v124 :: v_dual_sub_f32 v242, v102, v102
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v129, v224, v209
	s_delay_alu instid0(VALU_DEP_4)
	v_sub_f32_e32 v222, v222, v229
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v124.l, v213.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v234, v123, v123
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v123.l, v214.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v130, v129, 16, 1
	v_cmp_o_f32_e64 s1, v129, v129
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v235, v122, v122
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v122.l, v215.h
	v_mov_b16_e64 v121.l, v216.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v129, v129, v130, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v130, v225, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v237, v109, v109
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v109.l, v195.h
	v_mov_b16_e64 v108.l, v196.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v97.l, 0x7fff, v129.h, s1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v130, v225, v130, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v130.l, v209.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v239, v107, v107
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v107.l, v197.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v240, v106, v106
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v130.h, 0x7fff, v130.h, vcc_lo
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v106.l, v198.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v241, v105, v105
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v105.l, v199.h
	v_mov_b16_e64 v102.l, v202.h
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v131, v225, v130
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v162, v130
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v130, v217, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v225.l, v209.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s9, v233, v233
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v132, v131, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v131, v131
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v130, v217, v130, 0x7fff
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s11, v232, v232
	v_cmp_o_f32_e64 s13, v231, v231
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v224, v131, v132, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v131, v226, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v132.l, v209.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s15, v230, v230
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v131, v226, v131, 0x7fff
	v_cndmask_b16 v132.h, 0x7fff, v131.h, s2
	v_cmp_o_f32_e64 s2, v220, v220
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v131, v226, v132
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v223, v132 offset:512
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v132, v220, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v226.l, v209.l
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_bfe_u32 v133, v131, 16, 1
	v_cmp_o_f32_e64 s3, v131, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_add3_u32 v132, v220, v132, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v131, v131, v133, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v133, v221, 16, 1
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b16 v225.h, 0x7fff, v132.h, s2
	v_cmp_o_f32_e64 s2, v217, v217
	v_bfe_u32 v132, v218, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v98.l, 0x7fff, v131.h, s3
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v133, v221, v133, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v220, v220, v225
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v226.h, 0x7fff, v130.h, s2
	v_add3_u32 v132, v218, v132, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v228.h, 0x7fff, v133.h, s7
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s2, v220, v220
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v217, v217, v226
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_cndmask_b16 v227.h, 0x7fff, v132.h, s6
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v223, v209
	ds_store_b16_d16_hi v162, v225 offset:512
	ds_store_b16_d16_hi v163, v226
	ds_store_b16_d16_hi v163, v228 offset:512
	ds_store_b16_d16_hi v164, v227
	ds_store_b16_d16_hi v164, v229 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[137:140], v219
	ds_load_b128 v[141:144], v165
	ds_load_b128 v[129:132], v166
	ds_load_b128 v[133:136], v167
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v223, v97
	ds_store_b16 v223, v98 offset:512
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v218, v218, v227
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_bfe_u32 v223, v217, 16, 1
	v_cndmask_b16 v97.l, 0x7fff, v224.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v217, v217
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v221, v221, v228
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s1, v218, v218
	v_add3_u32 v217, v217, v223, 0x7fff
	v_bfe_u32 v223, v218, 16, 1
	v_cmp_o_f32_e64 s6, v222, v222
	.loc	1 732 35 is_stmt 1              ; attention_backward.py:732:35
	v_sub_f32_e32 v229, v128, v128
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v128.l, v208.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s7, v234, v234
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v218, v218, v223, 0x7fff
	v_bfe_u32 v223, v220, 16, 1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s17, v229, v229
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[121:128], v[137:144], v[1:8]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v220, v220, v223, 0x7fff
	v_cndmask_b16 v98.l, 0x7fff, v220.h, s2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v220, v110, v110
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v223, v221, 16, 1
	v_cmp_o_f32_e64 s3, v221, v221
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v162, v97
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v97.l, 0x7fff, v217.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v162, v98 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v221, v221, v223, 0x7fff
	v_bfe_u32 v223, v222, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v110.l, v194.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v98.l, 0x7fff, v221.h, s3
	v_add3_u32 v222, v222, v223, 0x7fff
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v163, v97
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v97.l, 0x7fff, v218.h, s1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v218, v111, v111
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v163, v98 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v98.l, 0x7fff, v222.h, s6
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v164, v97
	ds_store_b16 v164, v98 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[221:224], v219
	ds_load_b128 v[225:228], v165
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v111.l, v193.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v98.l, v209.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v217, v112, v112
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v112.l, v192.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v97.l, v209.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v219, v103, v103
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v103.l, v201.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v246, v98, v98
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[105:112], v[129:136], v[1:8]
	v_mov_b16_e64 v98.l, v206.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v247, v97, v97
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v97.l, v207.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s1, v236, v236
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[121:128], v[221:228], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v128, v104, v104
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v104.l, v200.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v121, v120, v120
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v120.l, v184.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v122, v119, v119
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v119.l, v185.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v123, v118, v118
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v118.l, v186.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v124, v117, v117
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v117.l, v187.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v125, v116, v116
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v116.l, v188.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v126, v115, v115
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v115.l, v189.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v127, v114, v114
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v114.l, v190.h
	v_wmma_f32_16x16x16_bf16 v[9:16], v[97:104], v[137:144], v[9:16]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v235, v235
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[113:120], v[129:136], v[9:16]
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[97:104], v[221:228], v[9:16]
	ds_load_b128 v[97:100], v166
	ds_load_b128 v[101:104], v167
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[105:112], v[97:104], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v111, v208, v208
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e64 v112.h, v209.l
	v_mov_b16_e64 v108.h, v209.l
	v_mov_b16_e64 v110.h, v209.l
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[113:120], v[97:104], v[9:16]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v112.l, v111.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v107, v211, v211
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s16, v111, v111
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v105, v212, v212
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v98.h, v209.l
	v_and_b32_e32 v112, 1, v112
	v_mov_b16_e32 v108.l, v107.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v99, v215, v215
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s12, v107, v107
	v_mov_b16_e64 v100.h, v209.l
	v_add3_u32 v111, v111, v112, 0x7fff
	v_mov_b16_e64 v112.h, v209.l
	v_mov_b16_e64 v112.l, v229.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v109, v210, v210 :: v_dual_and_b32 v108, 1, v108
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v100.l, v99.h
	v_mov_b16_e64 v102.h, v209.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v112, 1, v112
	v_mov_b16_e32 v110.l, v109.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v97, v216, v216
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v107, v107, v108, 0x7fff
	v_mov_b16_e64 v108.h, v209.l
	v_mov_b16_e64 v108.l, v231.h
	v_and_b32_e32 v110, 1, v110
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v101, v214, v214
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s14, v109, v109
	v_mov_b16_e32 v98.l, v97.h
	v_mov_b16_e64 v104.h, v209.l
	v_add3_u32 v109, v109, v110, 0x7fff
	v_mov_b16_e64 v110.h, v209.l
	v_mov_b16_e64 v110.l, v230.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v103, v213, v213
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v106.h, v209.l
	v_mov_b16_e32 v106.l, v105.h
	v_and_b32_e32 v108, 1, v108
	v_mov_b16_e32 v102.l, v101.h
	v_and_b32_e32 v110, 1, v110
	v_mov_b16_e32 v104.l, v103.h
	v_and_b32_e32 v98, 1, v98
	v_and_b32_e32 v100, 1, v100
	v_and_b32_e32 v102, 1, v102
	v_and_b32_e32 v106, 1, v106
	v_and_b32_e32 v104, 1, v104
	v_cmp_o_f32_e32 vcc_lo, v97, v97
	v_add3_u32 v98, v97, v98, 0x7fff
	v_mov_b16_e64 v97.h, v209.l
	v_mov_b16_e64 v97.l, v236.h
	v_cmp_o_f32_e64 s2, v99, v99
	v_add3_u32 v99, v99, v100, 0x7fff
	v_mov_b16_e64 v100.h, v209.l
	v_mov_b16_e64 v100.l, v235.h
	v_cmp_o_f32_e64 s6, v101, v101
	v_add3_u32 v101, v101, v102, 0x7fff
	v_mov_b16_e64 v102.h, v209.l
	v_mov_b16_e64 v102.l, v234.h
	v_cmp_o_f32_e64 s8, v103, v103
	v_add3_u32 v103, v103, v104, 0x7fff
	v_mov_b16_e64 v104.h, v209.l
	v_mov_b16_e64 v104.l, v233.h
	v_cmp_o_f32_e64 s10, v105, v105
	v_add3_u32 v105, v105, v106, 0x7fff
	v_mov_b16_e64 v106.h, v209.l
	v_mov_b16_e64 v106.l, v232.h
	v_and_b32_e32 v97, 1, v97
	v_and_b32_e32 v100, 1, v100
	v_and_b32_e32 v102, 1, v102
	v_and_b32_e32 v104, 1, v104
	v_and_b32_e32 v106, 1, v106
	v_add3_u32 v97, v236, v97, 0x7fff
	v_add3_u32 v100, v235, v100, 0x7fff
	v_add3_u32 v102, v234, v102, 0x7fff
	v_add3_u32 v104, v233, v104, 0x7fff
	v_add3_u32 v106, v232, v106, 0x7fff
	v_add3_u32 v108, v231, v108, 0x7fff
	v_add3_u32 v110, v230, v110, 0x7fff
	v_add3_u32 v112, v229, v112, 0x7fff
	v_cndmask_b16 v97.h, 0x7fff, v97.h, s1
	v_cndmask_b16 v97.l, 0x7fff, v98.h, vcc_lo
	v_cndmask_b16 v98.h, 0x7fff, v100.h, s3
	v_cndmask_b16 v98.l, 0x7fff, v99.h, s2
	v_cndmask_b16 v99.h, 0x7fff, v102.h, s7
	v_cndmask_b16 v99.l, 0x7fff, v101.h, s6
	v_cndmask_b16 v100.h, 0x7fff, v104.h, s9
	v_cndmask_b16 v100.l, 0x7fff, v103.h, s8
	v_cndmask_b16 v101.h, 0x7fff, v106.h, s11
	v_cndmask_b16 v101.l, 0x7fff, v105.h, s10
	v_cndmask_b16 v102.h, 0x7fff, v108.h, s13
	v_cndmask_b16 v102.l, 0x7fff, v107.h, s12
	v_cndmask_b16 v103.h, 0x7fff, v110.h, s15
	v_cndmask_b16 v103.l, 0x7fff, v109.h, s14
	v_cndmask_b16 v104.h, 0x7fff, v112.h, s17
	v_cndmask_b16 v104.l, 0x7fff, v111.h, s16
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v105, v203, v203
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v106.h, v209.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v107, v202, v202
	v_sub_f32_e32 v109, v201, v201
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[97:104], v[137:144], v[1:8]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v106.l, v105.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v103, v204, v204
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v104.h, v209.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v99, v206, v206
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v110.h, v209.l
	v_and_b32_e32 v106, 1, v106
	v_mov_b16_e32 v104.l, v103.h
	v_cmp_o_f32_e64 s8, v103, v103
	v_mov_b16_e32 v110.l, v109.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v101, v205, v205
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v100.h, v209.l
	v_and_b32_e32 v104, 1, v104
	v_mov_b16_e32 v100.l, v99.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v97, v207, v207 :: v_dual_and_b32 v110, 1, v110
	v_sub_f32_e32 v111, v200, v200
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v103, v103, v104, 0x7fff
	v_mov_b16_e64 v104.h, v209.l
	v_mov_b16_e64 v104.l, v244.h
	v_mov_b16_e64 v102.h, v209.l
	v_mov_b16_e32 v102.l, v101.h
	v_mov_b16_e64 v98.h, v209.l
	v_and_b32_e32 v100, 1, v100
	v_and_b32_e32 v104, 1, v104
	v_mov_b16_e32 v98.l, v97.h
	v_mov_b16_e64 v108.h, v209.l
	v_mov_b16_e32 v108.l, v107.h
	v_mov_b16_e64 v112.h, v209.l
	v_mov_b16_e32 v112.l, v111.h
	v_and_b32_e32 v102, 1, v102
	v_and_b32_e32 v98, 1, v98
	v_cmp_o_f32_e64 s10, v105, v105
	v_add3_u32 v105, v105, v106, 0x7fff
	v_and_b32_e32 v108, 1, v108
	v_and_b32_e32 v112, 1, v112
	v_cmp_o_f32_e64 s6, v101, v101
	v_add3_u32 v101, v101, v102, 0x7fff
	v_mov_b16_e64 v102.h, v209.l
	v_mov_b16_e64 v102.l, v245.h
	v_cmp_o_f32_e32 vcc_lo, v97, v97
	v_add3_u32 v98, v97, v98, 0x7fff
	v_mov_b16_e64 v97.h, v209.l
	v_mov_b16_e64 v97.l, v247.h
	v_cmp_o_f32_e64 s2, v99, v99
	v_add3_u32 v99, v99, v100, 0x7fff
	v_mov_b16_e64 v100.h, v209.l
	v_mov_b16_e64 v100.l, v246.h
	v_mov_b16_e64 v106.h, v209.l
	v_mov_b16_e64 v106.l, v243.h
	v_cmp_o_f32_e64 s12, v107, v107
	v_add3_u32 v107, v107, v108, 0x7fff
	v_mov_b16_e64 v108.h, v209.l
	v_mov_b16_e64 v108.l, v242.h
	v_cmp_o_f32_e64 s14, v109, v109
	v_add3_u32 v109, v109, v110, 0x7fff
	v_mov_b16_e64 v110.h, v209.l
	v_mov_b16_e64 v110.l, v219.h
	v_cmp_o_f32_e64 s16, v111, v111
	v_cndmask_b16 v101.l, 0x7fff, v105.h, s10
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v105, v195, v195
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v111, v111, v112, 0x7fff
	v_mov_b16_e64 v112.h, v209.l
	v_mov_b16_e64 v112.l, v128.h
	v_and_b32_e32 v102, 1, v102
	v_and_b32_e32 v97, 1, v97
	v_and_b32_e32 v100, 1, v100
	v_and_b32_e32 v106, 1, v106
	v_and_b32_e32 v108, 1, v108
	v_and_b32_e32 v110, 1, v110
	v_and_b32_e32 v112, 1, v112
	v_add3_u32 v102, v245, v102, 0x7fff
	v_cmp_o_f32_e64 s1, v247, v247
	v_add3_u32 v97, v247, v97, 0x7fff
	v_cmp_o_f32_e64 s3, v246, v246
	v_add3_u32 v100, v246, v100, 0x7fff
	v_cmp_o_f32_e64 s7, v245, v245
	v_cmp_o_f32_e64 s9, v244, v244
	v_add3_u32 v104, v244, v104, 0x7fff
	v_cmp_o_f32_e64 s11, v243, v243
	v_add3_u32 v106, v243, v106, 0x7fff
	v_cmp_o_f32_e64 s13, v242, v242
	v_add3_u32 v108, v242, v108, 0x7fff
	v_cmp_o_f32_e64 s15, v219, v219
	v_add3_u32 v110, v219, v110, 0x7fff
	v_cmp_o_f32_e64 s17, v128, v128
	v_cndmask_b16 v102.l, 0x7fff, v107.h, s12
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v107, v194, v194
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v112, v128, v112, 0x7fff
	v_cndmask_b16 v97.h, 0x7fff, v97.h, s1
	v_cndmask_b16 v97.l, 0x7fff, v98.h, vcc_lo
	v_cndmask_b16 v98.h, 0x7fff, v100.h, s3
	v_cndmask_b16 v98.l, 0x7fff, v99.h, s2
	v_cndmask_b16 v99.h, 0x7fff, v102.h, s7
	v_cndmask_b16 v99.l, 0x7fff, v101.h, s6
	v_cndmask_b16 v100.h, 0x7fff, v104.h, s9
	v_cndmask_b16 v100.l, 0x7fff, v103.h, s8
	v_cndmask_b16 v101.h, 0x7fff, v106.h, s11
	v_cndmask_b16 v102.h, 0x7fff, v108.h, s13
	v_cndmask_b16 v103.h, 0x7fff, v110.h, s15
	v_cndmask_b16 v103.l, 0x7fff, v109.h, s14
	v_cndmask_b16 v104.h, 0x7fff, v112.h, s17
	v_cndmask_b16 v104.l, 0x7fff, v111.h, s16
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v111, v192, v192
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v106.h, v209.l
	v_mov_b16_e32 v106.l, v105.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v109, v193, v193
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[97:104], v[137:144], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v97, v199, v199
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e64 v98.h, v209.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v101, v197, v197
	v_sub_f32_e32 v103, v196, v196
	v_sub_f32_e32 v99, v198, v198
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v98.l, v97.h
	v_mov_b16_e64 v102.h, v209.l
	v_mov_b16_e32 v102.l, v101.h
	v_mov_b16_e64 v104.h, v209.l
	v_mov_b16_e32 v104.l, v103.h
	v_and_b32_e32 v98, 1, v98
	v_mov_b16_e64 v100.h, v209.l
	v_mov_b16_e32 v100.l, v99.h
	v_and_b32_e32 v102, 1, v102
	v_and_b32_e32 v104, 1, v104
	v_mov_b16_e64 v112.h, v209.l
	v_mov_b16_e32 v112.l, v111.h
	v_and_b32_e32 v100, 1, v100
	v_cmp_o_f32_e64 s8, v103, v103
	v_add3_u32 v103, v103, v104, 0x7fff
	v_mov_b16_e64 v104.h, v209.l
	v_mov_b16_e64 v104.l, v238.h
	v_and_b32_e32 v106, 1, v106
	v_mov_b16_e64 v108.h, v209.l
	v_mov_b16_e32 v108.l, v107.h
	v_mov_b16_e64 v110.h, v209.l
	v_mov_b16_e32 v110.l, v109.h
	v_and_b32_e32 v112, 1, v112
	v_and_b32_e32 v104, 1, v104
	v_cmp_o_f32_e64 s10, v105, v105
	v_add3_u32 v105, v105, v106, 0x7fff
	v_and_b32_e32 v108, 1, v108
	v_and_b32_e32 v110, 1, v110
	v_cmp_o_f32_e64 s16, v111, v111
	v_add3_u32 v111, v111, v112, 0x7fff
	v_cmp_o_f32_e64 s6, v101, v101
	v_add3_u32 v101, v101, v102, 0x7fff
	v_cndmask_b16 v101.l, 0x7fff, v105.h, s10
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v105, v187, v187
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v104, v238, v104, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v97, v97
	v_add3_u32 v98, v97, v98, 0x7fff
	v_mov_b16_e64 v97.h, v209.l
	v_mov_b16_e64 v97.l, v241.h
	v_cmp_o_f32_e64 s2, v99, v99
	v_add3_u32 v99, v99, v100, 0x7fff
	v_mov_b16_e64 v100.h, v209.l
	v_mov_b16_e64 v100.l, v240.h
	v_mov_b16_e64 v102.h, v209.l
	v_mov_b16_e64 v102.l, v239.h
	v_mov_b16_e64 v106.h, v209.l
	v_mov_b16_e64 v106.l, v237.h
	v_cmp_o_f32_e64 s12, v107, v107
	v_add3_u32 v107, v107, v108, 0x7fff
	v_mov_b16_e64 v108.h, v209.l
	v_mov_b16_e64 v108.l, v220.h
	v_cmp_o_f32_e64 s14, v109, v109
	v_mov_b16_e64 v112.h, v209.l
	v_mov_b16_e64 v112.l, v217.h
	v_cndmask_b16 v104.l, 0x7fff, v111.h, s16
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v111, v184, v184
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v109, v109, v110, 0x7fff
	v_mov_b16_e64 v110.h, v209.l
	v_mov_b16_e64 v110.l, v218.h
	v_and_b32_e32 v97, 1, v97
	v_and_b32_e32 v100, 1, v100
	v_and_b32_e32 v102, 1, v102
	v_and_b32_e32 v106, 1, v106
	v_and_b32_e32 v108, 1, v108
	v_and_b32_e32 v110, 1, v110
	v_and_b32_e32 v112, 1, v112
	v_cmp_o_f32_e64 s1, v241, v241
	v_add3_u32 v97, v241, v97, 0x7fff
	v_cmp_o_f32_e64 s3, v240, v240
	v_add3_u32 v100, v240, v100, 0x7fff
	v_cmp_o_f32_e64 s7, v239, v239
	v_add3_u32 v102, v239, v102, 0x7fff
	v_cmp_o_f32_e64 s9, v238, v238
	v_cmp_o_f32_e64 s11, v237, v237
	v_cmp_o_f32_e64 s13, v220, v220
	v_add3_u32 v108, v220, v108, 0x7fff
	v_cmp_o_f32_e64 s15, v218, v218
	v_add3_u32 v110, v218, v110, 0x7fff
	v_cmp_o_f32_e64 s17, v217, v217
	v_add3_u32 v112, v217, v112, 0x7fff
	v_cndmask_b16 v103.l, 0x7fff, v109.h, s14
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v109, v185, v185
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v106, v237, v106, 0x7fff
	v_cndmask_b16 v97.h, 0x7fff, v97.h, s1
	v_cndmask_b16 v97.l, 0x7fff, v98.h, vcc_lo
	v_cndmask_b16 v98.h, 0x7fff, v100.h, s3
	v_cndmask_b16 v98.l, 0x7fff, v99.h, s2
	v_cndmask_b16 v99.h, 0x7fff, v102.h, s7
	v_cndmask_b16 v99.l, 0x7fff, v101.h, s6
	v_cndmask_b16 v100.h, 0x7fff, v104.h, s9
	v_cndmask_b16 v100.l, 0x7fff, v103.h, s8
	v_cndmask_b16 v101.h, 0x7fff, v106.h, s11
	v_cndmask_b16 v102.h, 0x7fff, v108.h, s13
	v_cndmask_b16 v102.l, 0x7fff, v107.h, s12
	v_cndmask_b16 v103.h, 0x7fff, v110.h, s15
	v_cndmask_b16 v104.h, 0x7fff, v112.h, s17
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v107, v186, v186
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v106.h, v209.l
	v_mov_b16_e32 v106.l, v105.h
	v_mov_b16_e64 v108.h, v209.l
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[97:104], v[129:136], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v97, v191, v191
	v_sub_f32_e32 v99, v190, v190
	v_sub_f32_e32 v101, v189, v189
	v_sub_f32_e32 v103, v188, v188
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e64 v98.h, v209.l
	v_mov_b16_e32 v98.l, v97.h
	v_mov_b16_e64 v100.h, v209.l
	v_mov_b16_e32 v100.l, v99.h
	v_mov_b16_e64 v102.h, v209.l
	v_mov_b16_e32 v102.l, v101.h
	v_mov_b16_e64 v104.h, v209.l
	v_mov_b16_e32 v104.l, v103.h
	v_mov_b16_e32 v108.l, v107.h
	v_mov_b16_e64 v110.h, v209.l
	v_mov_b16_e32 v110.l, v109.h
	v_mov_b16_e64 v112.h, v209.l
	v_mov_b16_e32 v112.l, v111.h
	v_and_b32_e32 v98, 1, v98
	v_and_b32_e32 v100, 1, v100
	v_and_b32_e32 v102, 1, v102
	v_and_b32_e32 v104, 1, v104
	v_and_b32_e32 v106, 1, v106
	v_and_b32_e32 v108, 1, v108
	v_and_b32_e32 v110, 1, v110
	v_and_b32_e32 v112, 1, v112
	v_cmp_o_f32_e32 vcc_lo, v97, v97
	v_add3_u32 v98, v97, v98, 0x7fff
	v_mov_b16_e64 v97.h, v209.l
	v_mov_b16_e64 v97.l, v248.h
	v_cmp_o_f32_e64 s2, v99, v99
	v_add3_u32 v99, v99, v100, 0x7fff
	v_mov_b16_e64 v100.h, v209.l
	v_mov_b16_e32 v100.l, v127.h
	v_cmp_o_f32_e64 s6, v101, v101
	v_add3_u32 v101, v101, v102, 0x7fff
	v_mov_b16_e64 v102.h, v209.l
	v_mov_b16_e32 v102.l, v126.h
	v_cmp_o_f32_e64 s8, v103, v103
	v_add3_u32 v103, v103, v104, 0x7fff
	v_mov_b16_e64 v104.h, v209.l
	v_mov_b16_e32 v104.l, v125.h
	v_cmp_o_f32_e64 s10, v105, v105
	v_add3_u32 v105, v105, v106, 0x7fff
	v_mov_b16_e64 v106.h, v209.l
	v_mov_b16_e32 v106.l, v124.h
	v_cmp_o_f32_e64 s12, v107, v107
	v_add3_u32 v107, v107, v108, 0x7fff
	v_mov_b16_e64 v108.h, v209.l
	v_mov_b16_e32 v108.l, v123.h
	v_cmp_o_f32_e64 s14, v109, v109
	v_add3_u32 v109, v109, v110, 0x7fff
	v_mov_b16_e64 v110.h, v209.l
	v_mov_b16_e32 v110.l, v122.h
	v_cmp_o_f32_e64 s16, v111, v111
	v_add3_u32 v111, v111, v112, 0x7fff
	v_mov_b16_e64 v112.h, v209.l
	v_mov_b16_e32 v112.l, v121.h
	v_and_b32_e32 v97, 1, v97
	v_and_b32_e32 v100, 1, v100
	v_and_b32_e32 v102, 1, v102
	v_and_b32_e32 v104, 1, v104
	v_and_b32_e32 v106, 1, v106
	v_and_b32_e32 v108, 1, v108
	v_and_b32_e32 v110, 1, v110
	v_and_b32_e32 v112, 1, v112
	v_cmp_o_f32_e64 s1, v248, v248
	v_add3_u32 v97, v248, v97, 0x7fff
	v_cmp_o_f32_e64 s3, v127, v127
	v_add3_u32 v100, v127, v100, 0x7fff
	v_cmp_o_f32_e64 s7, v126, v126
	v_add3_u32 v102, v126, v102, 0x7fff
	v_cmp_o_f32_e64 s9, v125, v125
	v_add3_u32 v104, v125, v104, 0x7fff
	v_cmp_o_f32_e64 s11, v124, v124
	v_add3_u32 v106, v124, v106, 0x7fff
	v_cmp_o_f32_e64 s13, v123, v123
	v_add3_u32 v108, v123, v108, 0x7fff
	v_cmp_o_f32_e64 s15, v122, v122
	v_add3_u32 v110, v122, v110, 0x7fff
	v_cmp_o_f32_e64 s17, v121, v121
	v_add3_u32 v112, v121, v112, 0x7fff
	v_cndmask_b16 v97.h, 0x7fff, v97.h, s1
	v_cndmask_b16 v97.l, 0x7fff, v98.h, vcc_lo
	v_cndmask_b16 v98.h, 0x7fff, v100.h, s3
	v_cndmask_b16 v98.l, 0x7fff, v99.h, s2
	v_cndmask_b16 v99.h, 0x7fff, v102.h, s7
	v_cndmask_b16 v99.l, 0x7fff, v101.h, s6
	v_cndmask_b16 v100.h, 0x7fff, v104.h, s9
	v_cndmask_b16 v100.l, 0x7fff, v103.h, s8
	v_cndmask_b16 v101.h, 0x7fff, v106.h, s11
	v_cndmask_b16 v101.l, 0x7fff, v105.h, s10
	v_cndmask_b16 v102.h, 0x7fff, v108.h, s13
	v_cndmask_b16 v102.l, 0x7fff, v107.h, s12
	v_cndmask_b16 v103.h, 0x7fff, v110.h, s15
	v_cndmask_b16 v103.l, 0x7fff, v109.h, s14
	v_cndmask_b16 v104.h, 0x7fff, v112.h, s17
	v_cndmask_b16 v104.l, 0x7fff, v111.h, s16
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[97:104], v[129:136], v[9:16]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc1 .LBB0_4
	s_branch .LBB0_1
.LBB0_5:
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v43, s18, v155
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v0, v156, v0
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v33, s56, v155
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s5, s43, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v47, 2, v0
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v49, v43, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s2, s18, v0
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v46, 6, v0
	v_or_b32_e32 v48, 4, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v50, v43, v47
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v49, v49, s33, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v45, 8, v0
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v51, v43, v48
	v_add_nc_u32_e32 v52, v43, v46
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	v_add_lshl_u32 v50, v50, s33, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v53, v43, v45
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_mov_b32 s4, s42
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v41, 14, v0
	v_or_b32_e32 v42, 12, v0
	v_or_b32_e32 v44, 10, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v51, v51, s33, 2
	buffer_store_b32 v25, v49, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v50, s2
	v_add_lshl_u32 v49, v52, s33, 2
	v_add_lshl_u32 v50, v53, s33, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v33, 32, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v54, v43, v44
	v_add_nc_u32_e32 v55, v43, v42
	v_add_nc_u32_e32 v56, v43, v41
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v51, 0x80000000, v51, s2
	buffer_store_b32 v26, v25, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v49, s2
	v_cndmask_b32_e64 v26, 0x80000000, v50, s2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s0, s19, v0
	v_cmp_gt_i32_e64 s1, s19, v33
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s3, s18, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v52, v54, s33, 2
	buffer_store_b32 v27, v51, s[4:7], 0 offen
	v_add_lshl_u32 v49, v55, s33, 2
	s_clause 0x1
	buffer_store_b32 v28, v25, s[4:7], 0 offen
	buffer_store_b32 v29, v26, s[4:7], 0 offen
	v_add_lshl_u32 v25, v56, s33, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v40, 34, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v27, 0x80000000, v52, s2
	v_cndmask_b32_e64 v26, 0x80000000, v49, s2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s0, vcc_lo, s0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s3
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v57, v43, v33
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v39, 36, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v58, v43, v40
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v30, v27, s[4:7], 0 offen
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v38, 38, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v27, v57, s33, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v59, v43, v39
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v28, v58, s33, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v35, 44, v0
	v_or_b32_e32 v37, 40, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v60, v43, v38
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v29, v59, s33, 2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v36, 42, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x3
	buffer_store_b32 v31, v26, s[4:7], 0 offen
	buffer_store_b32 v32, v25, s[4:7], 0 offen
	buffer_store_b32 v17, v27, s[4:7], 0 offen
	buffer_store_b32 v18, v28, s[4:7], 0 offen
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_or_b32_e32 v18, s34, v155
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v34, 46, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v61, v43, v37
	v_add_nc_u32_e32 v63, v43, v35
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v26, 0x80000000, v29, s2
	v_add_lshl_u32 v17, v60, s33, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v62, v43, v36
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v18, s19, v18
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v43, v43, v34
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v19, v26, s[4:7], 0 offen
	v_add_lshl_u32 v19, v61, s33, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	v_add_lshl_u32 v26, v63, s33, 2
	v_add_lshl_u32 v25, v62, s33, 2
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_and_b32 s29, s29, 0xffff
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	buffer_store_b32 v20, v17, s[4:7], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v26, s2
	v_add_lshl_u32 v20, v43, s33, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v0, v18, v0, 2
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x2
	buffer_store_b32 v21, v19, s[4:7], 0 offen
	buffer_store_b32 v22, v25, s[4:7], 0 offen
	buffer_store_b32 v23, v17, s[4:7], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v20, s2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	v_add_lshl_u32 v19, v18, v47, 2
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v24, v17, s[4:7], 0 offen
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v1, v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, v18, v48, 2
	v_cndmask_b32_e64 v1, 0x80000000, v19, s0
	v_add_lshl_u32 v17, v18, v46, 2
	v_add_lshl_u32 v19, v18, v45, 2
	v_add_lshl_u32 v20, v18, v44, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	buffer_store_b32 v2, v1, s[28:31], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v17, s0
	v_cndmask_b32_e64 v2, 0x80000000, v19, s0
	v_cndmask_b32_e64 v17, 0x80000000, v20, s0
	buffer_store_b32 v3, v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, v18, v42, 2
	s_clause 0x2
	buffer_store_b32 v4, v1, s[28:31], 0 offen
	buffer_store_b32 v5, v2, s[28:31], 0 offen
	buffer_store_b32 v6, v17, s[28:31], 0 offen
	v_add_lshl_u32 v1, v18, v41, 2
	v_add_lshl_u32 v2, v18, v33, 2
	v_add_lshl_u32 v3, v18, v40, 2
	v_add_lshl_u32 v4, v18, v39, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b32 v7, v0, s[28:31], 0 offen
	buffer_store_b32 v8, v1, s[28:31], 0 offen
	buffer_store_b32 v9, v2, s[28:31], 0 offen
	buffer_store_b32 v10, v3, s[28:31], 0 offen
	buffer_store_b32 v11, v4, s[28:31], 0 offen
	v_add_lshl_u32 v0, v18, v38, 2
	v_add_lshl_u32 v1, v18, v37, 2
	v_add_lshl_u32 v2, v18, v36, 2
	v_add_lshl_u32 v3, v18, v35, 2
	v_add_lshl_u32 v4, v18, v34, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b32 v12, v0, s[28:31], 0 offen
	buffer_store_b32 v13, v1, s[28:31], 0 offen
	buffer_store_b32 v14, v2, s[28:31], 0 offen
	buffer_store_b32 v15, v3, s[28:31], 0 offen
	buffer_store_b32 v16, v4, s[28:31], 0 offen
	.loc	1 451 5                         ; attention_backward.py:451:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 176
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 251
		.amdhsa_next_free_sgpr 64
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 251
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 64
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12260
; TotalNumSgprs: 66
; NumVgprs: 251
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 66
; NumVGPRsForWavesPerEU: 251
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
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
        .size:           1
        .value_kind:     by_value
      - .offset:         145
        .size:           1
        .value_kind:     by_value
      - .offset:         148
        .size:           4
        .value_kind:     by_value
      - .offset:         152
        .size:           4
        .value_kind:     by_value
      - .offset:         156
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         160
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         168
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 176
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 0
    .sgpr_count:     66
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     251
    .vgpr_spill_count: 0
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
