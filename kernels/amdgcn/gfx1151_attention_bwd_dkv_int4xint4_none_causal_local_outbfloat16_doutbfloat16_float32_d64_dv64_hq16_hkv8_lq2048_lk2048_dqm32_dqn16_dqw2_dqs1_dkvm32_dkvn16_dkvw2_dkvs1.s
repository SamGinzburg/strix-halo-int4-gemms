	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[28:31], s[0:1], 0x74
	s_load_b256 s[36:43], s[0:1], 0x0
.Ltmp0:
	.loc	1 524 23 prologue_end           ; attention_backward.py:524:23
	v_and_b32_e32 v37, 3, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s33, s2, 4
	.loc	1 521 24                        ; attention_backward.py:521:24
	s_lshl_b32 s34, s3, 11
	s_mov_b32 s11, 0x31027000
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_add_i32 s34, s34, s33
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_lshlrev_b32_e32 v1, 3, v37
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_or_b32_e32 v3, s34, v2
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v4, s33, v2
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 514 33 is_stmt 0              ; attention_backward.py:514:33
	v_bfe_u32 v157, v0, 4, 1
	s_clause 0x1
	s_load_b64 s[52:53], s[0:1], 0x58
	s_load_b128 s[16:19], s[0:1], 0x20
	.loc	1 517 21 is_stmt 1              ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	v_lshlrev_b32_e32 v53, 3, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v45, 2, v157
	v_lshrrev_b32_e32 v5, 3, v0
	v_or_b32_e32 v46, 4, v157
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[2:3], null, s29, v3, v[1:2]
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_cmp_gt_i32_e64 s4, s29, v1
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_and_b32 s9, s39, 0xffff
	s_mov_b32 s8, s38
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v47, 6, v157
	v_or_b32_e32 v48, 8, v157
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_dual_cndmask_b32 v1, 0x80000000, v2 :: v_dual_and_b32 v52, 48, v0
	.loc	1 541 32                        ; attention_backward.py:541:32
	s_ashr_i32 s5, s33, 1
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_and_b32_e32 v44, 7, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v49, 10, v157
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshrrev_b32_e32 v3, 1, v52
	buffer_load_b64 v[1:2], v1, s[8:11], 0 offen
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v50, 12, v157
	v_or_b32_e32 v51, 14, v157
	.loc	1 514 23 is_stmt 0              ; attention_backward.py:514:23
	v_or_b32_e32 v158, s33, v157
	.loc	1 528 17 is_stmt 1              ; attention_backward.py:528:17
	v_or_b32_e32 v4, s34, v157
	.loc	1 543 26                        ; attention_backward.py:543:26
	s_lshl_b32 s4, s3, 10
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xad_u32 v8, v53, v3, 0
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_or_b32_e32 v3, s34, v45
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_mov_b16_e32 v36.l, 0
	.loc	1 541 32                        ; attention_backward.py:541:32
	v_or_b32_e32 v6, s5, v5
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_or_b32_e32 v9, s34, v46
	.loc	1 545 17                        ; attention_backward.py:545:17
	s_add_i32 s4, s5, s4
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_or_b32_e32 v10, s34, v47
	v_or_b32_e32 v11, s34, v48
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_lshlrev_b32_e32 v16, 3, v44
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_or_b32_e32 v7, s4, v5
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_or_b32_e32 v12, s34, v49
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_lshlrev_b32_e32 v4, 1, v4
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_or_b32_e32 v13, s34, v50
	v_or_b32_e32 v14, s34, v51
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s12, 0x800, v158
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_lshlrev_b32_e32 v15, 1, v3
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v43.h, v36.l
	.loc	1 549 23                        ; attention_backward.py:549:23
	v_cmp_gt_i32_e32 vcc_lo, 0x400, v6
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_lshlrev_b32_e32 v9, 1, v9
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v10, 1, v10
	v_lshlrev_b32_e32 v11, 1, v11
	v_cndmask_b32_e64 v6, 0x80000000, v4, s12
	v_lshlrev_b32_e32 v12, 1, v12
	v_lshlrev_b32_e32 v13, 1, v13
	v_lshlrev_b32_e32 v14, 1, v14
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_mad_u64_u32 v[3:4], null, s30, v7, v[16:17]
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v4, 0x80000000, v15, s12
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_bfe_i32 s2, s2, 0x1001b
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v7, 0x80000000, v9, s12
	v_cndmask_b32_e64 v9, 0x80000000, v10, s12
	s_and_b32 s9, s17, 0xffff
	s_mov_b32 s8, s16
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_lshr_b32 s2, s2, 28
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v10, 0x80000000, v11, s12
	v_cndmask_b32_e64 v11, 0x80000000, v12, s12
	v_cndmask_b32_e64 v12, 0x80000000, v13, s12
	v_cndmask_b32_e64 v13, 0x80000000, v14, s12
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s6, s30, v16
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_i32 v56, v0, 4, 1
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v160, 1, v0
	v_bfe_i32 v58, v0, 5, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_bfe_i32 v70, v0, 3, 1
	.loc	1 549 22                        ; attention_backward.py:549:22
	s_and_b32 s4, vcc_lo, s6
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v62.l, v36.l
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v165, s33, v45
	s_clause 0x2
	s_load_b256 s[44:51], s[0:1], 0x38
	s_load_b64 s[26:27], s[0:1], 0x98
	s_load_b32 s54, s[0:1], 0xa0
	v_or_b32_e32 v166, s33, v46
	v_or_b32_e32 v167, s33, v47
	v_or_b32_e32 v168, s33, v48
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v64.h, v36.l
	v_mov_b16_e32 v66.h, v36.l
	v_mov_b16_e32 v67.h, v36.l
	v_mov_b16_e32 v68.h, v36.l
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_and_b32_e32 v75, 0x440, v70
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v65.h, v36.l
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v80, 0x240, v70
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v170, s33, v50
	v_or_b32_e32 v171, s33, v51
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v61.l, v36.l
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v169, s33, v49
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v63.l, v36.l
	s_lshl_b32 s55, s3, 12
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_waitcnt lgkmcnt(0)
	s_add_i32 s27, s27, s54
	s_mov_b32 s60, s48
	s_sub_i32 s7, s33, s27
	.loc	1 641 25                        ; attention_backward.py:641:25
	s_mul_f32 s64, s31, 0x3fb8aa3b
	.loc	1 589 24                        ; attention_backward.py:589:24
	s_max_i32 s7, s7, 0
	s_mov_b32 s21, 0
	.loc	1 597 45                        ; attention_backward.py:597:45
	s_and_b32 s7, s7, 0x7fffffe0
	s_mov_b32 s35, -1
	s_mov_b32 s56, s46
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt vmcnt(0)
	ds_store_b64 v8, v[1:2]
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v1, s33, v5
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_clause 0x7
	buffer_load_u16 v38, v6, s[8:11], 0 offen
	buffer_load_u16 v39, v4, s[8:11], 0 offen
	buffer_load_u16 v40, v7, s[8:11], 0 offen
	buffer_load_u16 v41, v9, s[8:11], 0 offen
	buffer_load_u16 v42, v10, s[8:11], 0 offen
	buffer_load_u16 v35, v11, s[8:11], 0 offen
	buffer_load_u16 v33, v12, s[8:11], 0 offen
	buffer_load_u16 v34, v13, s[8:11], 0 offen
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v2, s2, v1
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, 0x800, v1
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_and_b32 s9, s41, 0xffff
	s_mov_b32 s8, s40
	v_mov_b32_e32 v7, v9
	.loc	1 570 20                        ; attention_backward.py:570:20
	v_ashrrev_i32_e32 v2, 4, v2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s2, s2, s6
	.loc	1 544 28                        ; attention_backward.py:544:28
	buffer_load_b64 v[14:15], v3, s[8:11], 0 offen
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_and_b32 s9, s19, 0xffff
	s_mov_b32 s8, s18
	.loc	1 568 17                        ; attention_backward.py:568:17
	v_lshl_add_u32 v2, s3, 7, v2
	v_dual_mov_b32 v28, v9 :: v_dual_lshlrev_b32 v59, 1, v0
	v_dual_mov_b32 v19, v9 :: v_dual_and_b32 v54, 56, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v2, v2, s30
	v_dual_mov_b32 v22, v9 :: v_dual_and_b32 v159, 15, v0
	v_dual_mov_b32 v24, v9 :: v_dual_and_b32 v55, 16, v0
	v_dual_mov_b32 v26, v9 :: v_dual_and_b32 v57, 32, v0
	v_dual_mov_b32 v21, v9 :: v_dual_and_b32 v60, 1, v0
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_add_lshl_u32 v1, v2, v16, 1
	v_dual_mov_b32 v30, v9 :: v_dual_lshlrev_b32 v69, 4, v0
	v_dual_mov_b32 v23, v9 :: v_dual_lshlrev_b32 v0, 6, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v27, v9 :: v_dual_and_b32 v72, 24, v59
	v_dual_mov_b32 v32, v9 :: v_dual_lshlrev_b32 v73, 5, v60
	buffer_load_b128 v[10:13], v1, s[8:11], 0 offen
	v_add_nc_u32_e32 v162, 0, v0
	.loc	1 620 52                        ; attention_backward.py:620:52
	v_lshlrev_b32_e32 v0, 4, v60
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshl_or_b32 v60, v159, 5, v72
	v_mov_b32_e32 v2, v9
	v_mov_b32_e32 v6, v9
	v_dual_mov_b32 v29, v9 :: v_dual_and_b32 v74, 0x370, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_xad_u32 v46, v60, 8, 0
	v_xad_u32 v47, v60, 16, 0
	v_xad_u32 v48, v60, 24, 0
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshlrev_b32_e32 v79, 4, v44
	v_and_b32_e32 v53, 48, v53
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cmp_eq_u32_e64 s0, 0, v55
	v_lshlrev_b32_e32 v55, 2, v55
	v_lshlrev_b32_e32 v82, 1, v159
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v71, 1, v54
	v_lshlrev_b32_e32 v81, 6, v54
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_xad_u32 v74, v75, v74, 0
	v_lshl_or_b32 v52, v52, 6, v79
	v_lshl_or_b32 v75, v44, 6, v53
	v_or3_b32 v163, v82, v55, v57
	v_lshl_or_b32 v173, v159, 6, v53
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s2, s33, s26
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v72, 16, v73
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_sub_i32 s2, s2, s54
	v_xor_b32_e32 v176, v52, v80
	s_add_i32 s2, s2, 16
	v_xor_b32_e32 v50, 16, v173
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s4, s28, v72
	.loc	1 590 24                        ; attention_backward.py:590:24
	v_med3_i32 v72, s2, 0, 0x800
	v_mov_b32_e32 v1, 0
	v_xor_b32_e32 v51, 32, v173
	v_xor_b32_e32 v52, 48, v173
	v_mad_u64_u32 v[145:146], null, s30, v71, v[16:17]
	v_xor_b32_e32 v53, 0x120, v176
	.loc	1 600 19                        ; attention_backward.py:600:19
	v_readfirstlane_b32 s2, v72
	v_dual_mov_b32 v31, v9 :: v_dual_lshlrev_b32 v76, 4, v159
	v_xor_b32_e32 v49, 0x1b0, v163
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v192, 0, v53
	s_add_i32 s2, s2, 31
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_lshlrev_b32_e32 v77, 3, v57
	.loc	1 600 17                        ; attention_backward.py:600:17
	s_and_b32 s2, s2, 0x1fe0
	v_and_or_b32 v59, v59, 30, v157
	.loc	1 598 24                        ; attention_backward.py:598:24
	s_min_u32 s65, s2, 0x800
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v161, 1, v57
	v_add3_u32 v164, 0, v57, v82
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s1, s28, v73
	.loc	1 603 39                        ; attention_backward.py:603:39
	s_sub_i32 s3, s33, s54
	v_mad_u64_u32 v[155:156], null, s30, 3, v[145:146]
	.loc	1 603 25 is_stmt 0              ; attention_backward.py:603:25
	s_max_i32 s3, s3, 0
	v_mov_b32_e32 v3, v9
	.loc	1 604 45 is_stmt 1              ; attention_backward.py:604:45
	s_and_b32 s3, s3, 0x7fffffe0
	v_mov_b32_e32 v4, v9
	.loc	1 604 24 is_stmt 0              ; attention_backward.py:604:24
	s_max_u32 s48, s7, s3
	v_mov_b32_e32 v5, v9
	v_mov_b32_e32 v8, v9
	v_mov_b32_e32 v18, v9
	v_mov_b32_e32 v20, v9
	.loc	1 520 26 is_stmt 1              ; attention_backward.py:520:26
	v_or_b32_e32 v209, v161, v159
	v_add_nc_u32_e32 v156, s30, v145
	v_lshl_add_u32 v210, s30, 1, v145
	s_cmp_lt_u32 s48, s65
	s_mov_b32 s40, s42
	s_cselect_b32 s66, -1, 0
	s_and_b32 s37, s37, 0xffff
	s_and_b32 s41, s43, 0xffff
	s_and_b32 s57, s47, 0xffff
	s_and_b32 s61, s49, 0xffff
	s_and_b32 s45, s45, 0xffff
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v201, 16, v38
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v202, 16, v39
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v203, 16, v40
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v204, 16, v41
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v205, 16, v42
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v206, 16, v35
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v207, 16, v33
	s_waitcnt vmcnt(2)
	v_dual_mov_b32 v35, v9 :: v_dual_lshlrev_b32 v208, 16, v34
	v_dual_mov_b32 v34, v9 :: v_dual_mov_b32 v33, 0
	.loc	1 556 28                        ; attention_backward.py:556:28
	s_waitcnt vmcnt(1)
	v_lshrrev_b16 v36.h, 4, v14.l
	v_lshrrev_b16 v43.l, 4, v15.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_bfe_u32 v53, v14, 20, 4
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_and_b32_e32 v56, 0x440, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v65.l, v36.h, 15
	v_and_b16 v68.l, v43.l, 15
	v_lshlrev_b32_e32 v37, 4, v37
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshlrev_b32_e32 v78, 1, v54
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_xor_b32_e32 v56, v56, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v37, v37, v54
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v69, v69, v78, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_add3_u32 v76, 0, v77, v56
	v_lshl_or_b32 v174, v44, 9, v37
	v_xor_b32_e32 v44, 0x120, v163
	v_xor_b32_e32 v37, 0x90, v163
	s_delay_alu instid0(VALU_DEP_3)
	v_xor_b32_e32 v16, 0x90, v174
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v62.h, v12.l
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v45, 0, v60
	ds_load_b64 v[147:148], v45
	ds_load_b64 v[149:150], v46
	ds_load_b64 v[151:152], v47
	ds_load_b64 v[153:154], v48
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b32_e32 v48, 8, v15
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_and_b32_e32 v12, 0xffff0000, v12
	v_add_nc_u32_e32 v182, 0, v50
	v_mov_b16_e32 v63.h, v13.l
	v_and_b32_e32 v13, 0xffff0000, v13
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v36.h, 4, v48.l
	v_add_nc_u32_e32 v180, 0, v44
	v_xor_b32_e32 v44, 0x1b0, v174
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v61.h, v11.l
	v_add_nc_u32_e32 v183, 0, v51
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v67.l, v36.h, 15
	v_and_b32_e32 v58, 0x420, v58
	v_add_nc_u32_e32 v187, 0, v44
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b32_e32 v44, 8, v14
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v36.h, v10.l
	v_and_b32_e32 v10, 0xffff0000, v10
	v_and_or_b32 v54, 0x210, v70, v58
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshl_or_b32 v58, v159, 7, v79
	v_add_nc_u32_e32 v185, 0, v16
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v16.l, v14.h, 15
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_and_b32_e32 v11, 0xffff0000, v11
	v_xor_b32_e32 v175, v54, v75
	v_add_nc_u32_e32 v184, 0, v52
	v_xor_b32_e32 v52, 0x90, v176
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b64 v[45:46], 24, v[14:15]
	v_lshl_or_b32 v178, v57, 6, v58
	v_xor_b32_e32 v50, 32, v175
	v_xor_b32_e32 v51, 48, v175
	v_add_nc_u32_e32 v181, 0, v49
	v_xor_b32_e32 v49, 16, v175
	v_add_nc_u32_e32 v191, 0, v52
	v_add_nc_u32_e32 v189, 0, v50
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v50, v14, 16, 4
	v_add_nc_u32_e32 v190, 0, v51
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_alignbit_b32 v47, v15, v14, 24
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v16.h, v14.l, 15
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v51, v14, 8, 4
	v_and_b32_e32 v52, 15, v14
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v46, -16, v50
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v14.l, v44.l, 15
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v16.l
	v_add_nc_u32_e32 v70, 0, v79
	v_lshlrev_b32_e32 v172, 2, v59
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_add_nc_u32_e32 v60, 0, v58
	v_xad_u32 v77, v58, 16, 0
	v_xad_u32 v78, v58, 32, 0
	v_xad_u32 v79, v58, 48, 0
	v_xad_u32 v82, v58, 64, 0
	v_xad_u32 v83, 0x50, v58, 0
	v_xad_u32 v84, 0x60, v58, 0
	v_xad_u32 v75, 0x70, v58, 0
	v_add_nc_u32_e32 v179, 0, v37
	v_xor_b32_e32 v37, 0x120, v174
	v_xor_b32_e32 v54, 0x1b0, v176
	v_xor_b32_e32 v55, 16, v178
	v_xor_b32_e32 v56, 32, v178
	v_xor_b32_e32 v57, 48, v178
	v_xor_b32_e32 v58, 64, v178
	v_xor_b32_e32 v59, 0x50, v178
	v_add_nc_u32_e32 v188, 0, v49
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b32_e32 v49, 24, v15
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v72, -16, v51
	.loc	1 557 25 is_stmt 0              ; attention_backward.py:557:25
	v_cndmask_b32_e64 v46, v50, v46, s2
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v14.l
	v_add_nc_u32_e32 v186, 0, v37
	v_add_nc_u32_e32 v193, 0, v54
	v_add_nc_u32_e32 v194, 0, v55
	v_add_nc_u32_e32 v195, 0, v56
	v_add_nc_u32_e32 v196, 0, v57
	v_add_nc_u32_e32 v197, 0, v58
	v_add_nc_u32_e32 v198, 0, v59
	.loc	1 554 72 is_stmt 1              ; attention_backward.py:554:72
	v_and_b16 v37.h, v15.l, 15
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v54, v15, 24, 4
	v_bfe_u32 v55, v15, 16, 4
	v_bfe_u32 v56, v15, 8, 4
	v_and_b32_e32 v57, 15, v15
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_bfe_u32 v58, v15, 20, 4
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v59, -16, v52
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v14.h, 4, v44.l
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v15.l, v49.l, 15
	v_and_b16 v44.l, v45.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v43.l, 4, v45.l
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v45, v51, v72, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v16.h
	v_add_nc_u32_e32 v177, v70, v81
	v_xor_b32_e32 v70, 0x60, v178
	.loc	1 554 72 is_stmt 1              ; attention_backward.py:554:72
	v_and_b16 v37.l, v15.h, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v66.l, 4, v49.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v49, -16, v54
	.loc	1 557 25 is_stmt 0              ; attention_backward.py:557:25
	v_cndmask_b32_e64 v16, v52, v59, s2
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v15.l
	v_add_nc_u32_e32 v199, 0, v70
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v70, -16, v55
	.loc	1 554 72 is_stmt 1              ; attention_backward.py:554:72
	v_and_b16 v15.h, v48.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v64.l, v14.h, 15
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v14, v54, v49, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v37.l
	v_xor_b32_e32 v71, 0x70, v178
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v73, -16, v56
	.loc	1 555 25 is_stmt 1              ; attention_backward.py:555:25
	v_and_b32_e32 v47, 15, v47
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v43.l, v43.l, 15
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v50, v55, v70, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v15.h
	v_add_nc_u32_e32 v200, 0, v71
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v71, -16, v57
	v_or_b32_e32 v48, -16, v47
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v51, v14
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v15, v56, v73, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v37.h
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_dual_cndmask_b32 v14, 0, v43 :: v_dual_cndmask_b32 v43, 0, v66
	v_cndmask_b32_e32 v52, 0, v58, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v49, v15
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v37, v57, v71, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v44.l
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v44, v16
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_dual_cndmask_b32 v15, 0, v53 :: v_dual_cndmask_b32 v16, 0, v64
	v_cndmask_b32_e32 v53, 0, v67, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v47, v47, v48, s2
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v48, v37
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_dual_cndmask_b32 v37, 0, v65 :: v_dual_cndmask_b32 v54, 0, v68
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v55, -16, v14
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v14
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v56, -16, v15
	v_or_b32_e32 v57, -16, v16
	v_or_b32_e32 v58, -16, v37
	v_or_b32_e32 v59, -16, v43
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v14, v14, v55, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v15
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v64, -16, v52
	v_or_b32_e32 v65, -16, v53
	v_or_b32_e32 v66, -16, v54
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v15, v15, v56, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v16
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v55, v14
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v16, v16, v57, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v37
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v37, v37, v58, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v43
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v43, v43, v59, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v52
	.loc	1 620 52 is_stmt 1              ; attention_backward.py:620:52
	v_cmp_gt_i32_e64 s5, s29, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v59, v43
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v56, v52, v64, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v53
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v52, v37
	v_cvt_f32_i32_e32 v58, v56
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v57, v53, v65, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v54
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v53, v16
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v57, v57
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v64, v54, v66, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v54, v15
	ds_store_b128 v74, v[44:47]
	ds_store_b128 v74, v[52:55] offset:128
	v_cvt_f32_i32_e32 v56, v64
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[43:46], v76
	ds_load_b128 v[52:55], v76 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v74, v[48:51]
	ds_store_b128 v74, v[56:59] offset:128
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[47:50], v76
	ds_load_b128 v[37:40], v76 offset:512
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_dual_mul_f32 v14, v43, v36 :: v_dual_mul_f32 v15, v44, v10
	v_dual_mul_f32 v16, v45, v61 :: v_dual_mul_f32 v41, v46, v11
	v_mul_f32_e32 v36, v52, v36
	v_mul_f32_e32 v10, v53, v10
	v_mul_f32_e32 v46, v54, v61
	v_dual_mul_f32 v42, v47, v62 :: v_dual_mul_f32 v43, v48, v12
	v_dual_mul_f32 v44, v49, v63 :: v_dual_mul_f32 v45, v50, v13
	v_mul_f32_e32 v11, v55, v11
	v_dual_mul_f32 v37, v37, v62 :: v_dual_mul_f32 v12, v38, v12
	v_dual_mul_f32 v38, v39, v63 :: v_dual_mul_f32 v13, v40, v13
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_bfe_u32 v39, v14, 16, 1
	v_bfe_u32 v40, v15, 16, 1
	v_bfe_u32 v47, v16, 16, 1
	v_bfe_u32 v48, v41, 16, 1
	v_bfe_u32 v49, v42, 16, 1
	v_bfe_u32 v50, v43, 16, 1
	v_bfe_u32 v51, v44, 16, 1
	v_bfe_u32 v52, v45, 16, 1
	v_bfe_u32 v53, v36, 16, 1
	v_bfe_u32 v54, v10, 16, 1
	v_bfe_u32 v55, v46, 16, 1
	v_bfe_u32 v56, v11, 16, 1
	v_bfe_u32 v57, v37, 16, 1
	v_bfe_u32 v58, v12, 16, 1
	v_bfe_u32 v59, v38, 16, 1
	v_bfe_u32 v61, v13, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	v_cmp_o_f32_e64 s2, v15, v15
	v_cmp_o_f32_e64 s3, v16, v16
	v_cmp_o_f32_e64 s7, v41, v41
	v_cmp_o_f32_e64 s8, v42, v42
	v_cmp_o_f32_e64 s9, v43, v43
	v_cmp_o_f32_e64 s10, v44, v44
	v_cmp_o_f32_e64 s11, v45, v45
	v_add3_u32 v14, v14, v39, 0x7fff
	v_add3_u32 v15, v15, v40, 0x7fff
	v_add3_u32 v16, v16, v47, 0x7fff
	v_add3_u32 v39, v41, v48, 0x7fff
	v_add3_u32 v40, v42, v49, 0x7fff
	v_add3_u32 v41, v43, v50, 0x7fff
	v_add3_u32 v42, v44, v51, 0x7fff
	v_add3_u32 v43, v45, v52, 0x7fff
	v_cmp_o_f32_e64 s13, v36, v36
	v_cmp_o_f32_e64 s14, v10, v10
	v_cmp_o_f32_e64 s15, v46, v46
	v_cmp_o_f32_e64 s16, v11, v11
	v_cmp_o_f32_e64 s17, v37, v37
	v_cmp_o_f32_e64 s18, v12, v12
	v_cmp_o_f32_e64 s19, v38, v38
	v_cmp_o_f32_e64 s20, v13, v13
	v_add3_u32 v36, v36, v53, 0x7fff
	v_add3_u32 v44, v10, v54, 0x7fff
	v_add3_u32 v45, v46, v55, 0x7fff
	v_add3_u32 v46, v11, v56, 0x7fff
	v_add3_u32 v47, v37, v57, 0x7fff
	v_add3_u32 v48, v12, v58, 0x7fff
	v_add3_u32 v49, v38, v59, 0x7fff
	v_add3_u32 v50, v13, v61, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v14.h, vcc_lo
	v_cndmask_b16 v10.h, 0x7fff, v15.h, s2
	v_cndmask_b16 v11.l, 0x7fff, v16.h, s3
	v_cndmask_b16 v11.h, 0x7fff, v39.h, s7
	v_cndmask_b16 v12.l, 0x7fff, v40.h, s8
	v_cndmask_b16 v12.h, 0x7fff, v41.h, s9
	v_cndmask_b16 v13.l, 0x7fff, v42.h, s10
	v_cndmask_b16 v13.h, 0x7fff, v43.h, s11
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s13
	v_cndmask_b16 v36.h, 0x7fff, v44.h, s14
	v_cndmask_b16 v37.l, 0x7fff, v45.h, s15
	v_cndmask_b16 v37.h, 0x7fff, v46.h, s16
	v_cndmask_b16 v38.l, 0x7fff, v47.h, s17
	v_cndmask_b16 v38.h, 0x7fff, v48.h, s18
	v_cndmask_b16 v39.l, 0x7fff, v49.h, s19
	v_cndmask_b16 v39.h, 0x7fff, v50.h, s20
	.loc	1 717 21 is_stmt 1              ; attention_backward.py:717:21
	ds_store_b128 v69, v[10:13]
	ds_store_b128 v69, v[36:39] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v60
	ds_load_b128 v[45:48], v77
	ds_load_b128 v[49:52], v78
	ds_load_b128 v[53:56], v79
	ds_load_b128 v[57:60], v82
	ds_load_b128 v[61:64], v83
	ds_load_b128 v[65:68], v84
	ds_load_b128 v[69:72], v75
	v_mov_b32_e32 v36, v9
	v_mov_b32_e32 v37, v9
	v_mov_b32_e32 v38, v9
	v_mov_b32_e32 v39, v9
	v_mov_b32_e32 v40, v9
	v_xor_b32_e32 v146, 4, v172
	s_branch .LBB0_2
.LBB0_1:                                ; %Flow192
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 21 is_stmt 0                ; attention_backward.py:0:21
	s_xor_b32 s2, s35, -1
	s_movk_i32 s21, 0x800
	.loc	1 605 9 is_stmt 1               ; attention_backward.py:605:9
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s35, 0
	s_cbranch_vccz .LBB0_5
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_and_not1_b32 vcc_lo, exec_lo, s66
	s_cbranch_vccnz .LBB0_1
; %bb.3:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 613 25                        ; attention_backward.py:613:25
	s_or_b32 s49, s55, s21
	s_mov_b32 s67, s48
	v_or_b32_e32 v211, s49, v209
	v_or_b32_e32 v212, s49, v160
.LBB0_4:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_add_i32 s2, s67, s49
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_mov_b32 s42, s38
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_or_b32_e32 v10, s2, v160
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s2, s2, s30
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_mov_b32 s43, s39
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v15, s2, v210, 1
	v_add_lshl_u32 v16, s2, v155, 1
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_mad_u64_u32 v[10:11], null, v10, s29, v[0:1]
	.loc	1 624 25                        ; attention_backward.py:624:25
	v_add_nc_u32_e32 v11, s67, v211
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v13, s2, v145, 1
	v_add_lshl_u32 v14, s2, v156, 1
	v_cndmask_b32_e64 v15, 0x80000000, v15, s6
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s58, s38
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v12, 1, v11
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_lshlrev_b32_e32 v11, 2, v11
	s_mov_b32 s59, s39
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v16, 0x80000000, v16, s6
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v10, 0x80000000, v10, s5
	.loc	1 623 39                        ; attention_backward.py:623:39
	buffer_load_u16 v77, v12, s[40:43], 0 offen
	v_add_lshl_u32 v12, v212, s67, 1
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s62, s38
	s_mov_b32 s63, s39
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s46, s38
	s_mov_b32 s47, s39
	v_cndmask_b32_e64 v13, 0x80000000, v13, s6
	v_cndmask_b32_e64 v14, 0x80000000, v14, s6
	.loc	1 623 39                        ; attention_backward.py:623:39
	buffer_load_u16 v79, v12, s[40:43], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v78, v11, s[56:59], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v73, v11, s[60:63], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x3
	buffer_load_b128 v[89:92], v15, s[44:47], 0 offen
	buffer_load_b128 v[93:96], v16, s[44:47], 0 offen
	buffer_load_b128 v[97:100], v13, s[44:47], 0 offen
	buffer_load_b128 v[101:104], v14, s[44:47], 0 offen
	.loc	1 615 36                        ; attention_backward.py:615:36
	buffer_load_b128 v[137:140], v10, s[36:39], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v14, 0, v174
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v16, v9
	.loc	1 651 43                        ; attention_backward.py:651:43
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v15, v9
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v77, 16, v77
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v11.l, v89.l
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v11.h, v93.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v10.l, v97.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v10.h, v101.l
	v_mov_b16_e32 v13.l, v89.h
	v_mov_b16_e32 v13.h, v93.h
	v_mov_b16_e32 v12.l, v97.h
	v_mov_b16_e32 v12.h, v101.h
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v75, v146, v137
	ds_bpermute_b32 v76, v172, v138
	ds_bpermute_b32 v144, v146, v140
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v227, v140, 8, 4
	.loc	1 732 34                        ; attention_backward.py:732:34
	ds_store_2addr_b64 v14, v[10:11], v[12:13] offset1:8
	v_mov_b16_e32 v11.l, v90.l
	v_mov_b16_e32 v11.h, v94.l
	v_mov_b16_e32 v10.l, v98.l
	v_mov_b16_e32 v10.h, v102.l
	v_mov_b16_e32 v13.l, v90.h
	v_mov_b16_e32 v13.h, v94.h
	v_mov_b16_e32 v12.l, v98.h
	v_mov_b16_e32 v12.h, v102.h
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v14, v9
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v225, v139, 16, 4
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v228, v140, 20, 4
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v229, v140, 16, 4
	.loc	1 732 34                        ; attention_backward.py:732:34
	ds_store_2addr_b64 v185, v[10:11], v[12:13] offset1:8
	v_mov_b16_e32 v11.l, v91.l
	v_mov_b16_e32 v11.h, v95.l
	v_mov_b16_e32 v10.l, v99.l
	v_mov_b16_e32 v10.h, v103.l
	v_mov_b16_e32 v13.l, v91.h
	v_mov_b16_e32 v13.h, v95.h
	v_mov_b16_e32 v12.l, v99.h
	v_mov_b16_e32 v12.h, v103.h
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v230, v140, 24, 4
	v_and_b32_e32 v226, 15, v140
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v231, -16, v225
	v_or_b32_e32 v233, -16, v229
	.loc	1 732 34                        ; attention_backward.py:732:34
	ds_store_2addr_b64 v186, v[10:11], v[12:13] offset1:8
	v_mov_b16_e32 v11.l, v92.l
	v_mov_b16_e32 v11.h, v96.l
	v_mov_b16_e32 v10.l, v100.l
	v_mov_b16_e32 v10.h, v104.l
	v_mov_b16_e32 v13.l, v92.h
	v_mov_b16_e32 v13.h, v96.h
	v_mov_b16_e32 v12.l, v100.h
	v_mov_b16_e32 v12.h, v104.h
	.loc	1 640 41                        ; attention_backward.py:640:41
	v_mul_f32_e32 v77, s64, v77
	.loc	1 732 34                        ; attention_backward.py:732:34
	ds_store_2addr_b64 v187, v[10:11], v[12:13] offset1:8
	v_add_nc_u32_e32 v10, 0, v175
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[133:136], v10
	ds_load_b128 v[125:128], v10 offset:2048
	ds_load_b128 v[129:132], v188
	ds_load_b128 v[121:124], v188 offset:2048
	ds_load_b128 v[117:120], v189
	ds_load_b128 v[109:112], v189 offset:2048
	ds_load_b128 v[113:116], v190
	ds_load_b128 v[105:108], v190 offset:2048
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_nc_u32_e32 v10, 0, v176
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v11, v9
	v_mov_b32_e32 v12, v9
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_store_b128 v10, v[97:100]
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v10, v9
	v_dual_mov_b32 v13, v9 :: v_dual_add_nc_u32 v74, 0, v178
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v220, v16
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_store_b128 v191, v[101:104]
	ds_store_b128 v192, v[89:92]
	ds_store_b128 v193, v[93:96]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v219, v15
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[80:83], v74
	ds_load_b128 v[84:87], v194
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v218, v14 :: v_dual_mov_b32 v215, v11
	v_dual_mov_b32 v217, v13 :: v_dual_mov_b32 v216, v12
	v_dual_mov_b32 v213, v9 :: v_dual_mov_b32 v214, v10
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_bpermute_b32 v74, v172, v137
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[213:220], v[41:48], v[80:87], v[213:220]
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[80:83], v195
	ds_load_b128 v[84:87], v196
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[213:220], v[49:56], v[80:87], v[213:220]
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[80:83], v197
	ds_load_b128 v[84:87], v198
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[213:220], v[57:64], v[80:87], v[213:220]
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[80:83], v199
	ds_load_b128 v[84:87], v200
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_wmma_f32_16x16x16_bf16 v[213:220], v[65:72], v[80:87], v[213:220]
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_bpermute_b32 v80, v146, v138
	ds_bpermute_b32 v81, v172, v139
	ds_bpermute_b32 v85, v146, v139
	ds_bpermute_b32 v86, v172, v140
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v82, v213, v73
	v_sub_f32_e32 v87, v214, v73
	v_sub_f32_e32 v88, v215, v73
	v_sub_f32_e32 v141, v216, v73
	v_sub_f32_e32 v142, v217, v73
	v_sub_f32_e32 v143, v218, v73
	v_sub_f32_e32 v83, v219, v73
	v_sub_f32_e32 v84, v220, v73
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v73, v75, v74, s0
	v_cndmask_b32_e64 v75, v74, v75, s0
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v74, v80, v76, s0
	v_cndmask_b32_e64 v76, v76, v80, s0
	s_waitcnt lgkmcnt(1)
	v_cndmask_b32_e64 v80, v85, v81, s0
	v_cndmask_b32_e64 v85, v81, v85, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v81, v144, v86, s0
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_wmma_i32_16x16x16_iu4 v[213:220], v[147:148], v[73:74], v[9:16] neg_lo:[1,1,0]
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v10, s67, v209
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v86, v86, v144, s0
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v73, 15, v137
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_wmma_i32_16x16x16_iu4 v[213:220], v[149:150], v[80:81], v[213:220] neg_lo:[1,1,0]
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v12, v137, 0, 8
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v11, s54, v10
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v10, s27, v10
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v74, -16, v73
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_wmma_i32_16x16x16_iu4 v[213:220], v[151:152], v[75:76], v[213:220] neg_lo:[1,1,0]
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s25, 0, v12.l
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v75, v137, 16, 4
	.loc	1 678 21                        ; attention_backward.py:678:21
	v_min_i32_e32 v10, v11, v10
	.loc	1 678 47 is_stmt 0              ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v11, s26, v11
	.loc	1 630 33 is_stmt 1              ; attention_backward.py:630:33
	v_wmma_i32_16x16x16_iu4 v[213:220], v[153:154], v[85:86], v[213:220] neg_lo:[1,1,0]
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e32 v14.h, 0
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v76, -16, v75
	.loc	1 678 21                        ; attention_backward.py:678:21
	v_cmp_ge_i32_e64 s21, v10, v158
	v_cmp_ge_i32_e64 s20, v10, v165
	v_cmp_ge_i32_e64 s18, v10, v166
	v_cmp_ge_i32_e64 s17, v10, v167
	v_cmp_ge_i32_e64 s16, v10, v168
	v_cmp_ge_i32_e64 s15, v10, v169
	v_cmp_ge_i32_e64 s13, v10, v170
	v_cmp_ge_i32_e64 s11, v10, v171
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v10.l, v137.l, 15
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s19, v158, v11
	v_cmp_ge_i32_e64 s3, v165, v11
	v_cmp_ge_i32_e64 s7, v166, v11
	v_cmp_ge_i32_e64 s8, v167, v11
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v10.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v10.l, v137.h, 15
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s14, v168, v11
	v_cmp_ge_i32_e64 s9, v169, v11
	v_cmp_ge_i32_e64 s10, v170, v11
	v_cmp_ge_i32_e64 s2, v171, v11
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s22, 7, v10.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v10.l, v138.l, 15
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v13, v213
	v_cvt_f32_i32_e32 v81, v217
	v_cvt_f32_i32_e32 v144, v220
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v213, 15, v138
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s23, 7, v10.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v10.l, v138.h, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v220, 8, v137
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v15, v214
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v214, -16, v213
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v12, v73, v74, vcc_lo
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s24, 7, v10.l
	.loc	1 615 36 is_stmt 1              ; attention_backward.py:615:36
	v_lshrrev_b64 v[10:11], 24, v[137:138]
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v73, v137, 8, 4
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v213, v213, v214, s23
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v214, 8, v138
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v16, v215
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v215, v138, 16, 4
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v217, v10, 0, 8
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v10.h, 4, v137.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v74, -16, v73
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e64 v222, v75, v76, s22
	.loc	1 644 25 is_stmt 1              ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v80, v216
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v216, -16, v215
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v14.l, v10.h, 15
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v10.h, v220.l, 15
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v11.l, 4, v10.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v10.l, v10.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v75, v215, v216, s24
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v86, v219
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v10.h
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v10.h, v214.l, 15
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v85, v218
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v218, -16, v14
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v11.h, 4, v138.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v221, v73, v74, vcc_lo
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v73, v138, 8, 4
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v10.h
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s19, s21, s19
	s_and_b32 s3, s20, s3
	s_and_b32 s19, s12, s19
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v74, -16, v73
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v81, v77, v81
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s3, s12, s3
	s_and_b32 s7, s18, s7
	s_and_b32 s8, s17, s8
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v76, v73, v74, vcc_lo
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v74, 24, v138
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v73, v138, 24, 4
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v223, v81, v205, -v78
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s7, s12, s7
	s_and_b32 s8, s12, s8
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v10.h, v74.l, 15
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v215, -16, v73
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s14, s16, s14
	s_and_b32 s9, s15, s9
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v13, v77, v13
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v10.h
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s14, s12, s14
	s_and_b32 s9, s12, s9
	s_and_b32 s10, s13, s10
	s_and_b32 s2, s11, s2
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v73, v73, v215, vcc_lo
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_alignbit_b32 v215, v138, v137, 24
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v10.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e64 v10.l, v137.h
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v137, v137, 20, 4
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v15, v77, v15
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v215, 15, v215
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s10, s12, s10
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v10, v10, 0, 8
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v219, -16, v137
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s2, s12, s2
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v216, -16, v215
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v75, v75
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s22, 0, v10.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e64 v10.l, v138.h
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v85, v77, v85
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v215, v215, v216, vcc_lo
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v216, v138, 20, 4
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v137, v137, v219, s22
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v10, v10, 0, 8
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v85, v85, v206, -v78
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v73, v73
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v219, -16, v216
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v137, v137
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v10.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v10, v12
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v12, v14, v218, s25
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s67, s67, 32
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v216, v216, v219, vcc_lo
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v219, 16, v79
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v12, v12
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v80, v77, v80
	v_mul_f32_e32 v86, v77, v86
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v216, v216
	v_mul_f32_e32 v10, v219, v10
	v_mul_f32_e32 v12, v219, v12
	v_mul_f32_e32 v137, v219, v137
	v_cvt_f32_i32_e32 v76, v76
	v_mul_f32_e32 v216, v219, v216
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v79, 0, v10, s1
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v10.l, 4, v220.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v12, 0, v12, s1
	v_cndmask_b32_e64 v137, 0, v137, s1
	v_cndmask_b32_e64 v216, 0, v216, s1
	v_mov_b16_e32 v14.l, v79.h
	v_cmp_o_f32_e32 vcc_lo, v79, v79
	v_cmp_o_f32_e64 s23, v12, v12
	v_cmp_o_f32_e64 s24, v137, v137
	v_cmp_o_f32_e64 s25, v216, v216
	v_and_b32_e32 v218, 1, v14
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v14.l, v10.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v75, v219, v75
	v_mul_f32_e32 v73, v219, v73
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_u32 s67, s65
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v10, v79, v218, 0x7fff
	v_mov_b16_e64 v218.h, v14.h
	v_mov_b16_e64 v218.l, v12.h
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v79, v220, 0, 8
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v220, v13, v201, -v78
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v75, 0, v75, s1
	v_cndmask_b32_e64 v73, 0, v73, s1
	v_and_b32_e32 v218, 1, v218
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v10.l, v79.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v79, -16, v14
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_mul_f32_e32 v76, v219, v76
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v12, v12, v218, 0x7fff
	v_mov_b16_e64 v218.h, v14.h
	v_mov_b16_e64 v218.l, v137.h
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s22, 0, v10.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v10.l, 0x7fff, v10.h, vcc_lo
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s23
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v12.l, v217.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v218, 1, v218
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v79, v14, v79, s22
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v76, 0, v76, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s22, 0, v12.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v137, v137, v218, 0x7fff
	v_mov_b16_e64 v218.h, v14.h
	v_mov_b16_e64 v218.l, v216.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v12.h, 0x7fff, v137.h, s24
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v137, v221
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v16, v77, v16
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v218, 1, v218
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v221, v15, v202, -v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v137, v219, v137
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v16, v16, v203, -v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v218, v216, v218, 0x7fff
	v_cndmask_b32_e64 v137, 0, v137, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v14.l, v137.h
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v77, v77, v144
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v137, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v144, 1, v14
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v224, v77, v208, -v78
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v77, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v137, v137, v144, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v144, v222
	v_mul_f32_e32 v77, v219, v77
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v86, v86, v207, -v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v144, v219, v144
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v77, 0, v77, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v144, 0, v144, s1
	v_mov_b16_e64 v14.l, v144.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_b32_e32 v216, 1, v14
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v14.l, v11.l, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v11.l, 0x7fff, v137.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v144, v144
	v_add3_u32 v13, v144, v216, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v15, -16, v14
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v12.l, 0x7fff, v13.h, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v13, v215
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v144, v14, v15, s22
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v77, v77
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v13, v219, v13
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v222, v80, v204, -v78
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v78.h, v14.h
	v_mov_b16_e32 v78.l, v77.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v13, 0, v13, s1
	v_and_b32_e32 v78, 1, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v14.l, v13.h
	v_cmp_o_f32_e64 s22, v13, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v77, v77, v78, 0x7fff
	v_and_b32_e32 v15, 1, v14
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v14.l, v11.h, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v11.h, 0x7fff, v77.h, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v77, v213
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v13, v13, v15, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v15, v138, 0, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v77, v219, v77
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v13.l, v15.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v15, -16, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b32_e64 v78, 0, v77, s1
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s23, 0, v13.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s22
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v13.h, 4, v214.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s22, v78, v78
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v77, v14, v15, s23
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v14.l, v78.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v77, v77
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v15, 1, v14
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v14.l, v13.h, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v77, v219, v77
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v217, v78, v15, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v15, v214, 0, 8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v78, -16, v14
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v77, 0, v77, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v15.l
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v15, v220
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v78, v14, v78, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v77, v77
	v_mov_b16_e32 v14.l, v76.h
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v214, 0, v15, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v15, v214, v82
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v15, s31, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v79, v15, 16, 1
	v_cmp_o_f32_e64 s19, v15, v15
	v_add3_u32 v220, v15, v79, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v15, v221
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e64 v220.l, v140.h
	v_lshrrev_b32_e32 v221, 24, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v74.h, 0x7fff, v220.h, s19
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v215, 0, v15, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v15, v215, v87
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v15, s31, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v79, v15, 16, 1
	v_cmp_o_f32_e64 s3, v15, v15
	v_add3_u32 v79, v15, v79, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v15, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v15, 0, v15, s7
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v16, v15, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v16, s31, v16
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v80, v16, 16, 1
	v_cmp_o_f32_e64 s7, v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_add3_u32 v80, v16, v80, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v16, v222
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v222, 15, v139
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v16, 0, v16, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v81, v16, v141
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v141.l, 0x7fff, v217.h, s22
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v217, 0, v163
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v81, s31, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v82, v81, 16, 1
	v_cmp_o_f32_e64 s8, v81, v81
	v_add3_u32 v81, v81, v82, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v82, v223
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v223, v139, 8, 4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v216, 0, v82, s14
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v82, v216, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v82, s31, v82
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v87, v82, 16, 1
	v_cmp_o_f32_e64 s14, v82, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v87, v82, v87, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v82, v85
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v79.l, 0x7fff, v87.h, s14
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v217, v74
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v74.h, 0x7fff, v79.h, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v217, v79 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v137, 0, v82, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v82, v137, v143
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v143.h, 0x7fff, v218.h, s25
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v218, 0, v173
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v82, s31, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v85, v82, 16, 1
	v_cmp_o_f32_e64 s9, v82, v82
	v_add3_u32 v82, v82, v85, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v85, v86
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v86.h, v14.h
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v79.l, 0x7fff, v82.h, s9
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v179, v74
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v74.h, 0x7fff, v80.h, s7
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s9, v137, v137
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v179, v79 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v138, 0, v85, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v83, v138, v83
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v83, s31, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v85, v83, 16, 1
	v_cmp_o_f32_e64 s10, v83, v83
	v_add3_u32 v83, v83, v85, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v85, v224
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v224, v139, 20, 4
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v79.l, 0x7fff, v83.h, s10
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v180, v74
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v74.h, 0x7fff, v81.h, s8
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s8, v216, v216
	v_cmp_o_f32_e64 s10, v138, v138
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v180, v79 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v213, 0, v85, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v84, v213, v84
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v84, s31, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v85, v84, 16, 1
	v_cmp_o_f32_e64 s11, v84, v84
	v_add3_u32 v84, v84, v85, 0x7fff
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v85, v144
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v79.l, 0x7fff, v84.h, s11
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v85, v219, v85
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v181, v74
	ds_store_b16 v181, v79 offset:512
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v79, 1, v14
	v_cndmask_b32_e64 v85, 0, v85, s1
	v_mov_b16_e32 v14.l, v75.h
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s11, v213, v213
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v86.l, v85.h
	v_cmp_o_f32_e64 s2, v85, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v86, 1, v86
	v_add3_u32 v85, v85, v86, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cndmask_b16 v13.h, 0x7fff, v85.h, s2
	v_cmp_o_f32_e64 s2, v76, v76
	v_add3_u32 v76, v76, v79, 0x7fff
	v_mov_b16_e32 v79.h, v14.h
	v_mov_b16_e32 v79.l, v77.h
	v_cndmask_b16 v142.l, 0x7fff, v76.h, s2
	v_and_b32_e32 v76, 1, v14
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v14.l, 4, v74.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v74, v74, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s2, v75, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v75, v75, v76, 0x7fff
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v76, -16, v14
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s3, 0, v74.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v74, v78
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v79, 1, v79
	v_cndmask_b16 v143.l, 0x7fff, v75.h, s2
	v_mov_b16_e32 v75.h, v14.h
	v_cmp_o_f32_e64 s2, v73, v73
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v74, v219, v74
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v77, v77, v79, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v74, 0, v74, s1
	v_cndmask_b16 v141.h, 0x7fff, v77.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v75.l, v74.h
	v_cmp_o_f32_e32 vcc_lo, v74, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v75, 1, v75
	v_add3_u32 v74, v74, v75, 0x7fff
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v75, v14, v76, s3
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v14.l, v73.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v142.h, 0x7fff, v74.h, vcc_lo
	v_mov_b16_e32 v74.h, v14.h
	v_and_b32_e32 v76, 1, v14
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e64 v14.l, v139.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v73, v73, v76, 0x7fff
	v_cndmask_b16 v144.l, 0x7fff, v73.h, s2
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v73, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v73, v219, v73
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v73, 0, v73, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v74.l, v73.h
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v74, 1, v74
	v_add3_u32 v73, v73, v74, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v144.h, 0x7fff, v73.h, vcc_lo
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_load_b128 v[81:84], v218
	ds_load_b128 v[85:88], v182
	ds_load_b128 v[73:76], v183
	ds_load_b128 v[77:80], v184
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v162, v[10:13]
	ds_store_b128 v162, v[141:144] offset:16
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v141, 8, v139
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v10.h, v139.l, 15
	v_and_b16 v12.l, v140.l, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v13, v139, 0, 8
	v_alignbit_b32 v142, v140, v139, 24
	v_bfe_i32 v143, v140, 0, 8
	v_lshrrev_b32_e32 v144, 8, v140
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v10.l, 4, v139.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v11.l, v139.h, 15
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v11.h, 4, v140.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v12.h, v140.h, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b64 v[139:140], 24, v[139:140]
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v140, -16, v222
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v10.h
	v_cmp_lt_u16_e64 s3, 7, v12.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v12.l, v141.l, 15
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s2, 7, v11.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v234, v139, 0, 8
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v10.h, 4, v139.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v11.l, v139.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v139, v222, v140, vcc_lo
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v140, -16, v223
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v12.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v12.l, v144.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v222, v225, v231, s2
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v225, -16, v227
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s7, 7, v12.h
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v140, v223, v140, vcc_lo
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v12.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v12.l, v221.l, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v143.h, v14.h
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v225, v227, v225, vcc_lo
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v227, -16, v230
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v12.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v227, v230, v227, vcc_lo
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v232, -16, v226
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v11.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v223, v226, v232, s3
	v_cndmask_b32_e64 v226, v229, v233, s7
	.loc	1 615 36 is_stmt 1              ; attention_backward.py:615:36
	v_bfe_i32 v229, v14, 0, 8
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v14.l, v10.l, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v10.l, v13.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v13, v139
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v12, 15, v142
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v11.l, v229.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v229, -16, v224
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s3, 0, v10.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_mul_f32_e32 v13, v219, v13
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v142, -16, v12
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s2, 0, v11.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v10.l, 4, v141.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v13, 0, v13, s4
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v142, v12, v142, vcc_lo
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v12, v220, 0, 8
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v224, v224, v229, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_mov_b16_e32 v11.l, v12.l
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v12, -16, v228
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v220, v224
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v224.h, v14.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v11.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v220, v219, v220
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v12, v228, v12, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v220, 0, v220, s4
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v12, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v224.l, v220.h
	v_cmp_o_f32_e64 s2, v220, v220
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v12, v219, v12
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v224, 1, v224
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v12, 0, v12, s4
	v_add3_u32 v220, v220, v224, 0x7fff
	v_mov_b16_e64 v224.h, v14.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v224.l, v12.h
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v224, 1, v224
	v_add3_u32 v224, v12, v224, 0x7fff
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v12, -16, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e64 v139, v14, v12, s3
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_mov_b16_e32 v14.l, v13.h
	v_cmp_o_f32_e64 s3, v13, v13
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v139, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v12, 1, v14
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v14.l, v10.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v139, v219, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v13, v13, v12, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v12, v141, 0, 8
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v141, -16, v14
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v12.h, 0x7fff, v220.h, s2
	v_cndmask_b32_e64 v139, 0, v139, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v10.l, v12.l
	v_mov_b16_e64 v12.l, v234.l
	v_cmp_gt_i16_e64 s7, 0, v10.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v10.l, 0x7fff, v13.h, s3
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v13, v140
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s3, v139, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v140, v14, v141, s7
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s7, 0, v12.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_mul_f32_e32 v13, v219, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v140, v140
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v13, 0, v13, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v140, v219, v140
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v14.l, v13.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s2, v13, v13
	v_cndmask_b32_e64 v140, 0, v140, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v141, 1, v14
	v_add3_u32 v13, v13, v141, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v141, v222
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v222.h, v14.h
	v_mov_b16_e64 v222.l, v139.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v11.l, 0x7fff, v13.h, s2
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_dual_mul_f32 v141, v219, v141 :: v_dual_and_b32 v222, 1, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v141, 0, v141, s4
	v_add3_u32 v139, v139, v222, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v14.l, v141.h
	v_cmp_o_f32_e64 s2, v141, v141
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v220, 1, v14
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v14.l, v10.h, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v10.h, 0x7fff, v139.h, s3
	v_add3_u32 v13, v141, v220, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v141, -16, v14
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v12.l, 0x7fff, v13.h, s2
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v13, v142
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v141, v14, v141, s7
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v142.h, v14.h
	v_mov_b16_e64 v142.l, v140.h
	v_cmp_o_f32_e64 s2, v140, v140
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v13, v219, v13
	v_cvt_f32_i32_e32 v141, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v142, 1, v142
	v_cndmask_b32_e64 v13, 0, v13, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v141, v219, v141
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v140, v140, v142, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v14.l, v13.h
	v_cndmask_b32_e64 v141, 0, v141, s4
	v_cmp_o_f32_e64 s3, v13, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_b32_e32 v139, 1, v14
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v14.l, v11.h, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v11.h, 0x7fff, v140.h, s2
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v140, v223
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v13, v13, v139, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v13.l, v143.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v143.l, v141.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v140, v219, v140
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v139, -16, v14
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s7, 0, v13.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_and_b32_e32 v143, 1, v143
	v_cndmask_b32_e64 v140, 0, v140, s4
	v_cndmask_b16 v13.l, 0x7fff, v13.h, s3
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v13.h, 4, v144.l
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v142, v14, v139, s7
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s7, v141, v141
	v_mov_b16_e64 v14.l, v140.h
	v_add3_u32 v143, v141, v143, 0x7fff
	v_cmp_o_f32_e64 s2, v140, v140
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v142, v142
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v141.h, 0x7fff, v224.h, vcc_lo
	v_and_b32_e32 v139, 1, v14
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v14.l, v13.h, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v13.h, 0x7fff, v143.h, s7
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v143, v225
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s7, v16, v16
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v139, v140, v139, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v140, v144, 0, 8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v143, v219, v143
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v139.l, v140.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v140, -16, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b32_e64 v143, 0, v143, s4
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s3, 0, v139.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v139.l, 0x7fff, v139.h, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e32 vcc_lo, v143, v143
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v144, v14, v140, s3
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v14.l, v143.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v140, 1, v14
	v_add3_u32 v140, v143, v140, 0x7fff
	v_mov_b16_e64 v143.h, v14.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v142, v219, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v140.l, 0x7fff, v140.h, vcc_lo
	v_cndmask_b32_e64 v142, 0, v142, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e64 v143.l, v142.h
	v_cmp_o_f32_e64 s2, v142, v142
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v143, 1, v143
	v_add3_u32 v142, v142, v143, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v143, v226
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v139.h, 0x7fff, v142.h, s2
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v143, v219, v143
	v_cvt_f32_i32_e32 v142, v144
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v143, 0, v143, s4
	v_mov_b16_e64 v14.l, v143.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v143, v143
	v_and_b32_e32 v220, 1, v14
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v14.l, 4, v221.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v143, v143, v220, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v220, v221, 0, 8
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v141.l, v220.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v220, -16, v14
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s3, 0, v141.l
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b16 v141.l, 0x7fff, v143.h, vcc_lo
	v_mov_b16_e64 v143.h, v14.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v142, v219, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v144, v14, v220, s3
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s3, v15, v15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v142, 0, v142, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v144, v144
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v143.l, v142.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v142, v142
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_dual_mul_f32 v144, v219, v144 :: v_dual_and_b32 v143, 1, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v142, v142, v143, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v143, v227
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v140.h, 0x7fff, v142.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v143, v219, v143
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v143, 0, v143, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e64 v14.l, v143.h
	v_cmp_o_f32_e64 s2, v143, v143
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v220, 1, v14
	v_add3_u32 v143, v143, v220, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b16 v142.l, 0x7fff, v143.h, s2
	v_cndmask_b32_e64 v143, 0, v144, s4
	v_mov_b16_e64 v144.h, v14.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s2, v215, v215
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v144.l, v143.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v143, v143
	v_and_b32_e32 v144, 1, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v143, v143, v144, 0x7fff
	v_cndmask_b16 v142.h, 0x7fff, v143.h, vcc_lo
	ds_store_b128 v162, v[10:13] offset:32
	ds_store_b128 v162, v[139:142] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v219, v164
	ds_load_u16_d16 v220, v164 offset:256
	ds_load_u16_d16 v221, v164 offset:512
	ds_load_u16_d16 v222, v164 offset:768
	ds_load_u16_d16 v223, v164 offset:1024
	ds_load_u16_d16 v224, v164 offset:1280
	ds_load_u16_d16 v225, v164 offset:1536
	ds_load_u16_d16 v226, v164 offset:1792
	ds_load_u16_d16 v227, v164 offset:64
	ds_load_u16_d16 v229, v164 offset:576
	ds_load_u16_d16 v231, v164 offset:1088
	ds_load_u16_d16 v230, v164 offset:832
	ds_load_u16_d16 v232, v164 offset:1344
	ds_load_u16_d16 v228, v164 offset:320
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v12, v15, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v139.l, v14.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v10, v214, 16, 1
	v_bfe_u32 v11, v215, 16, 1
	v_bfe_u32 v13, v16, 16, 1
	v_add3_u32 v12, v15, v12, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v214, v214
	v_add3_u32 v10, v214, v10, 0x7fff
	v_add3_u32 v11, v215, v11, 0x7fff
	v_add3_u32 v13, v16, v13, 0x7fff
	v_cndmask_b16 v139.h, 0x7fff, v12.h, s3
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v142.l, v14.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v142.h, 0x7fff, v10.h, vcc_lo
	v_cndmask_b16 v141.h, 0x7fff, v11.h, s2
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s7
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v15, v15, v139
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v220, v164 offset:384
	ds_load_u16_d16_hi v219, v164 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v227, v164 offset:192
	ds_load_u16_d16_hi v221, v164 offset:640
	ds_load_u16_d16_hi v222, v164 offset:896
	ds_load_u16_d16_hi v223, v164 offset:1152
	ds_load_u16_d16_hi v224, v164 offset:1408
	ds_load_u16_d16_hi v225, v164 offset:1664
	ds_load_u16_d16 v235, v164 offset:2048
	ds_load_u16_d16 v236, v164 offset:2304
	ds_load_u16_d16 v237, v164 offset:2560
	ds_load_u16_d16 v238, v164 offset:2816
	ds_load_u16_d16_hi v226, v164 offset:1920
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v231, v164 offset:1216
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v230, v164 offset:960
	ds_load_u16_d16_hi v229, v164 offset:704
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v228, v164 offset:448
	ds_load_u16_d16 v233, v164 offset:1600
	ds_load_u16_d16 v243, v164 offset:2112
	ds_load_u16_d16 v245, v164 offset:2624
	ds_load_u16_d16 v244, v164 offset:2368
	ds_load_u16_d16 v246, v164 offset:2880
	ds_load_u16_d16 v234, v164 offset:1856
	ds_load_u16_d16 v239, v164 offset:3072
	ds_load_u16_d16 v241, v164 offset:3584
	ds_load_u16_d16 v242, v164 offset:3840
	ds_load_u16_d16 v240, v164 offset:3328
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v235, v164 offset:2176
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v236, v164 offset:2432
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v237, v164 offset:2688
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v238, v164 offset:2944
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v239, v164 offset:3200
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v241, v164 offset:3712
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v242, v164 offset:3968
	ds_load_u16_d16 v247, v164 offset:3136
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v240, v164 offset:3456
	ds_load_u16_d16 v250, v164 offset:3904
	ds_load_u16_d16 v249, v164 offset:3648
	ds_load_u16_d16 v248, v164 offset:3392
	ds_load_u16_d16_hi v232, v164 offset:1472
	ds_load_u16_d16_hi v233, v164 offset:1728
	ds_load_u16_d16_hi v245, v164 offset:2752
	ds_load_u16_d16_hi v244, v164 offset:2496
	ds_load_u16_d16_hi v243, v164 offset:2240
	ds_load_u16_d16_hi v234, v164 offset:1984
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v250, v164 offset:4032
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v249, v164 offset:3776
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v248, v164 offset:3520
	ds_load_u16_d16_hi v246, v164 offset:3008
	ds_load_u16_d16_hi v247, v164 offset:3264
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[219:226], v[81:88], v[25:32]
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[227:234], v[81:88], v[33:40]
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v140.l, v14.h
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[235:242], v[73:80], v[25:32]
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v141.l, v14.h
	v_mov_b16_e32 v12.l, v14.h
	v_mov_b16_e32 v13.l, v14.h
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[33:40], v[243:250], v[73:80], v[33:40]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v73, v216, 16, 1
	v_bfe_u32 v74, v137, 16, 1
	v_bfe_u32 v75, v138, 16, 1
	v_bfe_u32 v76, v213, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v73, v216, v73, 0x7fff
	v_add3_u32 v74, v137, v74, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v75, v138, v75, 0x7fff
	v_add3_u32 v76, v213, v76, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v140.h, 0x7fff, v73.h, s8
	v_cndmask_b16 v13.h, 0x7fff, v74.h, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v11.h, 0x7fff, v75.h, s10
	v_cndmask_b16 v10.h, 0x7fff, v76.h, s11
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v217, v142
	ds_store_b16_d16_hi v217, v140 offset:512
	ds_store_b16_d16_hi v179, v141
	ds_store_b16_d16_hi v179, v13 offset:512
	ds_store_b16_d16_hi v180, v139
	ds_store_b16_d16_hi v180, v11 offset:512
	ds_store_b16_d16_hi v181, v12
	ds_store_b16_d16_hi v181, v10 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[81:84], v218
	ds_load_b128 v[85:88], v182
	ds_load_b128 v[73:76], v183
	ds_load_b128 v[77:80], v184
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v177, v[97:100]
	ds_store_b128 v177, v[101:104] offset:128
	ds_store_b128 v177, v[89:92] offset:256
	ds_store_b128 v177, v[93:96] offset:384
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v89, v214, v142
	v_dual_sub_f32 v91, v216, v140 :: v_dual_sub_f32 v90, v215, v141
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v92, v89, 16, 1
	v_cmp_o_f32_e64 s2, v89, v89
	v_cmp_o_f32_e64 s3, v91, v91
	v_cmp_o_f32_e32 vcc_lo, v90, v90
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v12, v16, v12
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v89, v89, v92, 0x7fff
	v_bfe_u32 v92, v91, 16, 1
	v_bfe_u32 v16, v15, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v13, v137, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v10.l, 0x7fff, v89.h, s2
	v_add3_u32 v91, v91, v92, 0x7fff
	v_bfe_u32 v92, v90, 16, 1
	v_cmp_o_f32_e64 s2, v12, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v11.l, 0x7fff, v91.h, s3
	v_add3_u32 v140, v90, v92, 0x7fff
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	ds_load_u16_d16 v91, v164 offset:512
	ds_load_u16_d16 v92, v164 offset:768
	ds_load_u16_d16 v93, v164 offset:1024
	ds_load_u16_d16 v94, v164 offset:1280
	ds_load_u16_d16 v95, v164 offset:1536
	ds_load_u16_d16 v90, v164 offset:256
	ds_load_u16_d16 v89, v164
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v91, v164 offset:640
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v92, v164 offset:896
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v93, v164 offset:1152
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v94, v164 offset:1408
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v95, v164 offset:1664
	ds_load_u16_d16 v96, v164 offset:1792
	ds_load_u16_d16 v97, v164 offset:64
	ds_load_u16_d16 v102, v164 offset:1344
	ds_load_u16_d16 v223, v164 offset:3072
	ds_load_u16_d16 v219, v164 offset:2048
	ds_load_u16_d16 v220, v164 offset:2304
	ds_load_u16_d16 v221, v164 offset:2560
	ds_load_u16_d16 v222, v164 offset:2816
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v90, v164 offset:384
	ds_load_u16_d16 v99, v164 offset:576
	ds_load_u16_d16 v100, v164 offset:832
	ds_load_u16_d16 v101, v164 offset:1088
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v89, v164 offset:128
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v97, v164 offset:192
	ds_load_u16_d16 v98, v164 offset:320
	ds_load_u16_d16 v225, v164 offset:3584
	ds_load_u16_d16 v226, v164 offset:3840
	ds_load_u16_d16 v103, v164 offset:1600
	ds_load_u16_d16 v229, v164 offset:2624
	ds_load_u16_d16 v228, v164 offset:2368
	ds_load_u16_d16 v227, v164 offset:2112
	ds_load_u16_d16 v230, v164 offset:2880
	ds_load_u16_d16_hi v96, v164 offset:1920
	ds_load_u16_d16 v224, v164 offset:3328
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v223, v164 offset:3200
	ds_load_u16_d16_hi v102, v164 offset:1472
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v219, v164 offset:2176
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v220, v164 offset:2432
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v221, v164 offset:2688
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v222, v164 offset:2944
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v101, v164 offset:1216
	ds_load_u16_d16_hi v100, v164 offset:960
	ds_load_u16_d16_hi v99, v164 offset:704
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v98, v164 offset:448
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v225, v164 offset:3712
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v226, v164 offset:3968
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v103, v164 offset:1728
	ds_load_u16_d16 v104, v164 offset:1856
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v229, v164 offset:2752
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v228, v164 offset:2496
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v227, v164 offset:2240
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v230, v164 offset:3008
	ds_load_u16_d16 v231, v164 offset:3136
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v224, v164 offset:3456
	ds_load_u16_d16 v234, v164 offset:3904
	ds_load_u16_d16 v233, v164 offset:3648
	ds_load_u16_d16 v232, v164 offset:3392
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v231, v164 offset:3264
	ds_load_u16_d16_hi v104, v164 offset:1984
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v234, v164 offset:4032
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v233, v164 offset:3776
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v232, v164 offset:3520
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v217, v10
	ds_store_b16 v217, v11 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v14.l, 0x7fff, v140.h, vcc_lo
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e32 v11.l, v14.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	v_add3_u32 v15, v15, v16, 0x7fff
	v_bfe_u32 v16, v12, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v10.l, v14.h
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v11, v138, v11
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s3, v13, v13
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[89:96], v[81:88], v[1:8]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v12, v12, v16, 0x7fff
	v_bfe_u32 v16, v13, 16, 1
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v10, v213, v10
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s7, v11, v11
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[219:226], v[73:80], v[1:8]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[97:104], v[81:88], v[17:24]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v13, v13, v16, 0x7fff
	v_bfe_u32 v16, v11, 16, 1
	v_cmp_o_f32_e64 s8, v10, v10
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v13.l, v14.h
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[17:24], v[227:234], v[73:80], v[17:24]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v11, v11, v16, 0x7fff
	v_bfe_u32 v16, v10, 16, 1
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v11.l, v14.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v16, v10, v16, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v13.h, s3
	v_cndmask_b16 v10.h, 0x7fff, v15.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v179, v14
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v13.h, v134.l
	v_mov_b16_e32 v16.l, v14.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v179, v10 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v10.l, 0x7fff, v11.h, s7
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v180, v10
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s2
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v11.h, v133.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v13, v13, v13 :: v_dual_and_b32 v12, 0xffff0000, v134
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v180, v10 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v10.l, 0x7fff, v16.h, s8
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v181, v10
	ds_store_b16 v181, v10 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[137:140], v218
	ds_load_b128 v[141:144], v182
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v11, v11, v11 :: v_dual_and_b32 v10, 0xffff0000, v133
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v16.h, v135.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v13, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v10, v10, v10 :: v_dual_and_b32 v15, 0xffff0000, v135
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v16, v16, v16
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v14.l, v10.h
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v16, v16
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[89:96], v[137:144], v[1:8]
	ds_load_b128 v[89:92], v183
	ds_load_b128 v[93:96], v184
	v_wmma_f32_16x16x16_bf16 v[17:24], v[97:104], v[137:144], v[17:24]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v99, 0xffff0000, v130
	v_and_b32_e32 v97, 0xffff0000, v136
	v_and_b32_e32 v102, 0xffff0000, v120
	v_and_b32_e32 v103, 0xffff0000, v113
	v_and_b32_e32 v104, 0xffff0000, v114
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v102, v102, v102 :: v_dual_sub_f32 v103, v103, v103
	v_sub_f32_e32 v104, v104, v104
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[219:226], v[89:96], v[1:8]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[227:234], v[89:96], v[17:24]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v94.h, v14.h
	v_mov_b16_e32 v94.l, v11.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v93.h, v132.l
	v_mov_b16_e32 v93.l, v14.h
	v_mov_b16_e64 v89.h, v136.l
	v_mov_b16_e32 v89.l, v14.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v94, 1, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v93, v93, v93 :: v_dual_and_b32 v100, 0xffff0000, v131
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v90.h, v129.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v89, v89, v89
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v11, v11, v94, 0x7fff
	v_mov_b16_e32 v94.h, v14.h
	v_mov_b16_e32 v94.l, v13.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v90.l, v14.h
	v_and_b32_e32 v101, 0xffff0000, v132
	v_mov_b16_e64 v91.h, v130.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s7, v89, v89
	v_and_b32_e32 v94, 1, v94
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v90, v90, v90
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v91.l, v14.h
	v_and_b32_e32 v98, 0xffff0000, v129
	v_mov_b16_e64 v92.h, v131.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v13, v13, v94, 0x7fff
	v_mov_b16_e32 v94.h, v14.h
	v_mov_b16_e32 v94.l, v16.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v91, v91, v91
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s8, v90, v90
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v92.l, v14.h
	v_mov_b16_e32 v13.l, v14.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v94, 1, v94
	v_cmp_o_f32_e64 s9, v91, v91
	v_cmp_o_f32_e64 s11, v93, v93
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v92, v92, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v16, v16, v94, 0x7fff
	v_mov_b16_e32 v94.h, v14.h
	v_mov_b16_e32 v94.l, v89.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v16.l, v14.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v94, 1, v94
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v89, v89, v94, 0x7fff
	v_mov_b16_e32 v94.h, v14.h
	v_mov_b16_e32 v94.l, v90.h
	v_cndmask_b16 v89.l, 0x7fff, v11.h, vcc_lo
	v_and_b32_e32 v11, 1, v14
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_cmp_o_f32_e64 s10, v92, v92
	v_and_b32_e32 v94, 1, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v10, v10, v11, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v12, v12
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v90, v90, v94, 0x7fff
	v_mov_b16_e32 v94.h, v14.h
	v_mov_b16_e32 v94.l, v91.h
	v_cndmask_b16 v90.l, 0x7fff, v13.h, s2
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v13.h, v126.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v14.l, v11.h
	v_cmp_o_f32_e64 s2, v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v13, v13, v13 :: v_dual_and_b32 v94, 1, v94
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v12, 1, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v91, v91, v94, 0x7fff
	v_mov_b16_e32 v94.h, v14.h
	v_mov_b16_e32 v94.l, v92.h
	v_add3_u32 v11, v11, v12, 0x7fff
	v_cndmask_b16 v91.l, 0x7fff, v16.h, s3
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v16.h, v127.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v94, 1, v94
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v92, v92, v94, 0x7fff
	v_mov_b16_e32 v94.h, v14.h
	v_mov_b16_e32 v94.l, v93.h
	v_cndmask_b16 v92.l, 0x7fff, v89.h, s7
	v_cndmask_b16 v89.h, 0x7fff, v10.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v15, v15
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v95.l, 0x7fff, v92.h, s10
	v_and_b32_e32 v94, 1, v94
	v_cmp_o_f32_e64 s3, v16, v16
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v15, 0xffff0000, v127
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v14.l, v10.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v93, v93, v94, 0x7fff
	v_cndmask_b16 v93.l, 0x7fff, v90.h, s8
	v_cndmask_b16 v90.h, 0x7fff, v11.h, s2
	v_and_b32_e32 v11, 1, v14
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_cndmask_b16 v94.l, 0x7fff, v91.h, s9
	v_cndmask_b16 v96.l, 0x7fff, v93.h, s11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v10, v10, v11, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v97, v97
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v97, 0xffff0000, v128
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v91.h, 0x7fff, v10.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v14.l, v11.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v98, v98
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v11, v11
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v98, 0xffff0000, v121
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v12, 1, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v14.l, v10.h
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_add3_u32 v11, v11, v12, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v92.h, 0x7fff, v11.h, s2
	v_and_b32_e32 v11, 1, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v10, v10, v11, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v99, v99
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v93.h, 0x7fff, v10.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v14.l, v11.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v100, v100
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v11, v11
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v100, 0xffff0000, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v12, 1, v14
	v_mov_b16_e32 v14.l, v10.h
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v11, v11, v12, 0x7fff
	v_cndmask_b16 v94.h, 0x7fff, v11.h, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v11, 1, v14
	v_add3_u32 v10, v10, v11, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v101, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v95.h, 0x7fff, v10.h, vcc_lo
	v_mov_b16_e32 v14.l, v11.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s2, v11, v11
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v10, 0xffff0000, v125
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v12, 1, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v10, v10
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v11, v11, v12, 0x7fff
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v11.l, v14.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v96.h, 0x7fff, v11.h, s2
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v11.h, v125.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v13, v13
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[89:96], v[81:88], v[1:8]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v11, v11
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e32 v94.h, v14.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v89.h, v128.l
	v_mov_b16_e32 v89.l, v14.h
	v_mov_b16_e32 v90.h, v121.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v94.l, v11.h
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v90.l, v14.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v89, v89, v89
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v101, 0xffff0000, v124
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v94, 1, v94
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v91.h, v122.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v90, v90, v90
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s7, v89, v89
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v91.l, v14.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v11, v11, v94, 0x7fff
	v_mov_b16_e32 v94.h, v14.h
	v_mov_b16_e32 v94.l, v13.h
	v_cmp_o_f32_e64 s8, v90, v90
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v91, v91, v91
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v121, 0xffff0000, v115
	v_and_b32_e32 v12, 0xffff0000, v126
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v94, 1, v94
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v92.h, v123.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s9, v91, v91
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v121, v121, v121
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v93.h, v124.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v13, v13, v94, 0x7fff
	v_mov_b16_e32 v94.h, v14.h
	v_mov_b16_e32 v94.l, v16.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v92.l, v14.h
	v_and_b32_e32 v99, 0xffff0000, v122
	v_and_b32_e32 v122, 0xffff0000, v116
	v_mov_b16_e32 v93.l, v14.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v94, 1, v94
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v92, v92, v92
	v_sub_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v122, v122, v122 :: v_dual_sub_f32 v93, v93, v93
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v16, v16, v94, 0x7fff
	v_mov_b16_e32 v94.h, v14.h
	v_mov_b16_e32 v94.l, v89.h
	v_cmp_o_f32_e64 s10, v92, v92
	v_cmp_o_f32_e64 s11, v93, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v94, 1, v94
	v_add3_u32 v89, v89, v94, 0x7fff
	v_mov_b16_e32 v94.h, v14.h
	v_mov_b16_e32 v94.l, v90.h
	v_cndmask_b16 v89.l, 0x7fff, v11.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v94, 1, v94
	v_add3_u32 v90, v90, v94, 0x7fff
	v_mov_b16_e32 v94.h, v14.h
	v_mov_b16_e32 v94.l, v91.h
	v_cndmask_b16 v90.l, 0x7fff, v13.h, s2
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v13, 0xffff0000, v118
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v12, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v13, v13, v13 :: v_dual_and_b32 v94, 1, v94
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v91, v91, v94, 0x7fff
	v_cndmask_b16 v91.l, 0x7fff, v16.h, s3
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v16, 0xffff0000, v119
	v_and_b32_e32 v11, 0xffff0000, v117
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v94.h, v14.h
	v_mov_b16_e32 v94.l, v92.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v16, v16, v16 :: v_dual_sub_f32 v11, v11, v11
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v94, 1, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v14.l, v11.h
	v_add3_u32 v92, v92, v94, 0x7fff
	v_mov_b16_e32 v94.h, v14.h
	v_mov_b16_e32 v94.l, v93.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_and_b32_e32 v123, 1, v14
	v_mov_b16_e32 v14.l, v13.h
	v_cndmask_b16 v92.l, 0x7fff, v89.h, s7
	v_cndmask_b16 v95.l, 0x7fff, v92.h, s10
	v_and_b32_e32 v94, 1, v94
	v_and_b32_e32 v124, 1, v14
	v_mov_b16_e32 v14.l, v16.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v93, v93, v94, 0x7fff
	v_cndmask_b16 v93.l, 0x7fff, v90.h, s8
	v_cndmask_b16 v94.l, 0x7fff, v91.h, s9
	v_and_b32_e32 v125, 1, v14
	v_mov_b16_e32 v14.l, v102.h
	v_cndmask_b16 v96.l, 0x7fff, v93.h, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v126, 1, v14
	v_mov_b16_e32 v14.l, v103.h
	v_and_b32_e32 v127, 1, v14
	v_mov_b16_e32 v14.l, v104.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v128, 1, v14
	v_mov_b16_e32 v14.l, v121.h
	v_and_b32_e32 v129, 1, v14
	v_mov_b16_e32 v14.l, v122.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v130, 1, v14
	v_mov_b16_e32 v14.l, v10.h
	v_and_b32_e32 v131, 1, v14
	v_mov_b16_e32 v14.l, v12.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v10, v10, v131, 0x7fff
	v_and_b32_e32 v131, 1, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v89.h, 0x7fff, v10.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v15, v15
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v12, v12, v131, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v14.l, v10.h
	v_cndmask_b16 v90.h, 0x7fff, v12.h, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_and_b32_e32 v12, 1, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v10, v10, v12, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v12, v97, v97
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v91.h, 0x7fff, v10.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v14.l, v12.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v98, v98
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v12, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v15, 1, v14
	v_mov_b16_e32 v14.l, v10.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_add3_u32 v12, v12, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v92.h, 0x7fff, v12.h, s2
	v_and_b32_e32 v12, 1, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v10, v10, v12, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v12, v99, v99
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v93.h, 0x7fff, v10.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v14.l, v12.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v100, v100
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v12, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v15, 1, v14
	v_mov_b16_e32 v14.l, v10.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_add3_u32 v12, v12, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v94.h, 0x7fff, v12.h, s2
	v_and_b32_e32 v12, 1, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v10, v10, v12, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v12, v101, v101
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v10.l, v14.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v95.h, 0x7fff, v10.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v14.l, v12.h
	v_cmp_o_f32_e64 s2, v12, v12
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v10.h, v117.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v15, 1, v14
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v12, v12, v15, 0x7fff
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v12.l, v14.h
	v_mov_b16_e32 v15.h, v119.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v15.l, v14.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v96.h, 0x7fff, v12.h, s2
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v12.h, v118.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v15, v15, v15
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[17:24], v[89:96], v[81:88], v[17:24]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v86.h, v14.h
	v_mov_b16_e32 v86.l, v10.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v12, v12, v12
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v81.h, v120.l
	v_mov_b16_e32 v81.l, v14.h
	v_mov_b16_e32 v82.h, v113.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v86, 1, v86
	v_cmp_o_f32_e64 s2, v12, v12
	v_cmp_o_f32_e64 s3, v15, v15
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v81, v81, v81
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v82.l, v14.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v10, v10, v86, 0x7fff
	v_mov_b16_e32 v86.h, v14.h
	v_mov_b16_e32 v86.l, v12.h
	v_mov_b16_e32 v91.h, v14.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v82, v82, v82
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v83.h, v114.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s7, v81, v81
	v_and_b32_e32 v86, 1, v86
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v83.l, v14.h
	v_mov_b16_e32 v84.h, v115.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s8, v82, v82
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v84.l, v14.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v12, v12, v86, 0x7fff
	v_mov_b16_e32 v86.h, v14.h
	v_mov_b16_e32 v86.l, v15.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v83, v83, v83 :: v_dual_sub_f32 v84, v84, v84
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v85.h, v116.l
	v_mov_b16_e32 v85.l, v14.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v86, 1, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s9, v83, v83
	v_cmp_o_f32_e64 s10, v84, v84
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v85, v85, v85 :: v_dual_and_b32 v90, 0xffff0000, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v15, v15, v86, 0x7fff
	v_mov_b16_e32 v86.h, v14.h
	v_mov_b16_e32 v86.l, v81.h
	v_cmp_o_f32_e64 s11, v85, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v86, 1, v86
	v_add3_u32 v81, v81, v86, 0x7fff
	v_mov_b16_e32 v86.h, v14.h
	v_mov_b16_e32 v86.l, v82.h
	v_cndmask_b16 v81.l, 0x7fff, v10.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_add3_u32 v10, v11, v123, 0x7fff
	v_add3_u32 v11, v13, v124, 0x7fff
	v_and_b32_e32 v86, 1, v86
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v82, v82, v86, 0x7fff
	v_mov_b16_e32 v86.h, v14.h
	v_mov_b16_e32 v86.l, v83.h
	v_cndmask_b16 v82.l, 0x7fff, v12.h, s2
	v_cmp_o_f32_e64 s2, v13, v13
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v12, 0xffff0000, v106
	v_and_b32_e32 v13, 0xffff0000, v105
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v86, 1, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v12, v12, v12 :: v_dual_sub_f32 v13, v13, v13
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v83, v83, v86, 0x7fff
	v_mov_b16_e32 v86.h, v14.h
	v_mov_b16_e32 v86.l, v84.h
	v_cndmask_b16 v83.l, 0x7fff, v15.h, s3
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v15, 0xffff0000, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v15, v15, v15 :: v_dual_and_b32 v86, 1, v86
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v84, v84, v86, 0x7fff
	v_mov_b16_e32 v86.h, v14.h
	v_mov_b16_e32 v86.l, v85.h
	v_cndmask_b16 v84.l, 0x7fff, v81.h, s7
	v_cndmask_b16 v81.h, 0x7fff, v10.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_add3_u32 v10, v16, v125, 0x7fff
	v_and_b32_e32 v86, 1, v86
	v_cndmask_b16 v87.l, 0x7fff, v84.h, s10
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v16, 0xffff0000, v109
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v85, v85, v86, 0x7fff
	v_cndmask_b16 v85.l, 0x7fff, v82.h, s8
	v_cndmask_b16 v82.h, 0x7fff, v11.h, s2
	v_cmp_o_f32_e64 s2, v102, v102
	v_add3_u32 v11, v102, v126, 0x7fff
	v_cndmask_b16 v86.l, 0x7fff, v83.h, s9
	v_cndmask_b16 v83.h, 0x7fff, v10.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v103, v103
	v_add3_u32 v10, v103, v127, 0x7fff
	v_cndmask_b16 v84.h, 0x7fff, v11.h, s2
	v_cmp_o_f32_e64 s2, v104, v104
	v_add3_u32 v11, v104, v128, 0x7fff
	v_cndmask_b16 v88.l, 0x7fff, v85.h, s11
	v_cndmask_b16 v85.h, 0x7fff, v10.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v121, v121
	v_add3_u32 v10, v121, v129, 0x7fff
	v_cndmask_b16 v86.h, 0x7fff, v11.h, s2
	v_cmp_o_f32_e64 s2, v122, v122
	v_add3_u32 v11, v122, v130, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v16, v16, v16
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v87.h, 0x7fff, v10.h, vcc_lo
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v10, 0xffff0000, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v88.h, 0x7fff, v11.h, s2
	v_mov_b16_e32 v14.l, v16.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v10, v10, v10 :: v_dual_and_b32 v11, 0xffff0000, v107
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[81:88], v[73:80], v[1:8]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v81.h, v109.l
	v_mov_b16_e32 v81.l, v14.h
	v_mov_b16_e32 v82.h, v110.l
	v_mov_b16_e32 v82.l, v14.h
	v_mov_b16_e32 v83.h, v111.l
	v_mov_b16_e32 v83.l, v14.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v81, v81, v81
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v84.h, v112.l
	v_mov_b16_e32 v84.l, v14.h
	v_mov_b16_e32 v86.h, v106.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v83, v83, v83
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e32 v91.l, v81.h
	v_cmp_o_f32_e32 vcc_lo, v81, v81
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v84, v84, v84
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v86.l, v14.h
	v_mov_b16_e32 v85.h, v105.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v91, 1, v91
	v_cmp_o_f32_e64 s3, v83, v83
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v85.l, v14.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v86, v86, v86
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s7, v84, v84
	v_add3_u32 v81, v81, v91, 0x7fff
	v_mov_b16_e32 v91.h, v14.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v82, v82, v82 :: v_dual_sub_f32 v85, v85, v85
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v87.h, v107.l
	v_mov_b16_e32 v87.l, v14.h
	v_mov_b16_e32 v88.h, v108.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v91.l, v82.h
	v_cmp_o_f32_e64 s8, v85, v85
	v_cmp_o_f32_e64 s9, v86, v86
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v87, v87, v87
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v88.l, v14.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v91, 1, v91
	v_cmp_o_f32_e64 s2, v82, v82
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v89, 0xffff0000, v110
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s10, v87, v87
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v88, v88, v88
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v82, v82, v91, 0x7fff
	v_mov_b16_e32 v91.h, v14.h
	v_mov_b16_e32 v91.l, v83.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v89, v89, v89
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s11, v88, v88
	v_cndmask_b16 v81.l, 0x7fff, v81.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_and_b32_e32 v91, 1, v91
	v_cndmask_b16 v82.l, 0x7fff, v82.h, s2
	v_cmp_o_f32_e64 s2, v89, v89
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v83, v83, v91, 0x7fff
	v_mov_b16_e32 v91.h, v14.h
	v_mov_b16_e32 v91.l, v84.h
	v_cndmask_b16 v83.l, 0x7fff, v83.h, s3
	v_cmp_o_f32_e64 s3, v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v91, 1, v91
	v_add3_u32 v84, v84, v91, 0x7fff
	v_mov_b16_e32 v91.h, v14.h
	v_mov_b16_e32 v91.l, v85.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v84.l, 0x7fff, v84.h, s7
	v_cmp_o_f32_e64 s7, v10, v10
	v_and_b32_e32 v91, 1, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v85, v85, v91, 0x7fff
	v_mov_b16_e32 v91.h, v14.h
	v_mov_b16_e32 v91.l, v86.h
	v_cndmask_b16 v85.l, 0x7fff, v85.h, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v91, 1, v91
	v_add3_u32 v86, v86, v91, 0x7fff
	v_mov_b16_e32 v91.h, v14.h
	v_mov_b16_e32 v91.l, v87.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v86.l, 0x7fff, v86.h, s9
	v_and_b32_e32 v91, 1, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v87, v87, v91, 0x7fff
	v_mov_b16_e32 v91.h, v14.h
	v_mov_b16_e32 v91.l, v88.h
	v_cndmask_b16 v87.l, 0x7fff, v87.h, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v91, 1, v91
	v_add3_u32 v88, v88, v91, 0x7fff
	v_and_b32_e32 v91, 1, v14
	v_mov_b16_e32 v14.l, v89.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v88.l, 0x7fff, v88.h, s11
	v_add3_u32 v16, v16, v91, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v91, 1, v14
	v_cndmask_b16 v81.h, 0x7fff, v16.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v16, v90, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v89, v89, v91, 0x7fff
	v_mov_b16_e32 v14.l, v16.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v82.h, 0x7fff, v89.h, s2
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_cmp_o_f32_e64 s2, v15, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v89, 1, v14
	v_mov_b16_e32 v14.l, v15.h
	v_add3_u32 v16, v16, v89, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v89, 1, v14
	v_mov_b16_e32 v14.l, v13.h
	v_cndmask_b16 v83.h, 0x7fff, v16.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v15, v15, v89, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	v_cndmask_b16 v84.h, 0x7fff, v15.h, s2
	v_and_b32_e32 v15, 1, v14
	v_mov_b16_e32 v14.l, v12.h
	v_cmp_o_f32_e64 s2, v12, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v13, v13, v15, 0x7fff
	v_and_b32_e32 v15, 1, v14
	v_mov_b16_e32 v14.l, v11.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v85.h, 0x7fff, v13.h, vcc_lo
	v_add3_u32 v12, v12, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v15, 1, v14
	v_mov_b16_e32 v14.l, v10.h
	v_cndmask_b16 v86.h, 0x7fff, v12.h, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v11, v11, v15, 0x7fff
	v_and_b32_e32 v14, 1, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v87.h, 0x7fff, v11.h, s3
	v_add3_u32 v10, v10, v14, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v88.h, 0x7fff, v10.h, s7
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[17:24], v[81:88], v[73:80], v[17:24]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc1 .LBB0_4
	s_branch .LBB0_1
.LBB0_5:
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_or_b32_e32 v10, s34, v159
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, s33, v159
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v9, v157, v161
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s5, s51, 0xffff
	s_mov_b32 s7, 0x31027000
	.loc	1 753 13                        ; attention_backward.py:753:13
	s_waitcnt lgkmcnt(7)
	v_mul_lo_u32 v43, s28, v10
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s2, s28, v9
	.loc	1 550 20                        ; attention_backward.py:550:20
	s_waitcnt lgkmcnt(5)
	v_or_b32_e32 v49, 2, v9
	v_or_b32_e32 v48, 4, v9
	v_or_b32_e32 v47, 6, v9
	v_or_b32_e32 v46, 8, v9
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s2
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v50, v43, v9, 2
	v_add_lshl_u32 v51, v43, v49, 2
	v_add_lshl_u32 v52, v43, v48, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v45, 10, v9
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v50, 0x80000000, v50, s2
	s_mov_b32 s4, s50
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v0, 32, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_waitcnt lgkmcnt(4)
	v_add_lshl_u32 v53, v43, v45, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v42, 14, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v25, v50, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v51, s2
	v_add_lshl_u32 v50, v43, v47, 2
	v_cndmask_b32_e64 v51, 0x80000000, v52, s2
	v_add_lshl_u32 v52, v43, v46, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v44, 12, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v26, v25, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v50, s2
	buffer_store_b32 v27, v51, s[4:7], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v52, s2
	v_cndmask_b32_e64 v27, 0x80000000, v53, s2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s3, s28, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v50, v43, v44, 2
	buffer_store_b32 v28, v25, s[4:7], 0 offen
	v_add_lshl_u32 v25, v43, v42, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v41, 34, v9
	v_or_b32_e32 v16, 36, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v29, v26, s[4:7], 0 offen
	buffer_store_b32 v30, v27, s[4:7], 0 offen
	v_add_lshl_u32 v27, v43, v0, 2
	v_cndmask_b32_e64 v26, 0x80000000, v50, s2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s3
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v15, 38, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v28, v43, v41, 2
	v_add_lshl_u32 v29, v43, v16, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v12, 44, v9
	v_or_b32_e32 v14, 40, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v31, v26, s[4:7], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v28, s2
	s_clause 0x1
	buffer_store_b32 v32, v25, s[4:7], 0 offen
	buffer_store_b32 v33, v27, s[4:7], 0 offen
	v_add_lshl_u32 v25, v43, v15, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v13, 42, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v28, 0x80000000, v29, s2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v10, s30, v10
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v11, 46, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v34, v26, s[4:7], 0 offen
	buffer_store_b32 v35, v28, s[4:7], 0 offen
	v_add_lshl_u32 v26, v43, v14, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	v_add_lshl_u32 v28, v43, v12, 2
	v_add_lshl_u32 v27, v43, v13, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s0, s30, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	buffer_store_b32 v36, v25, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v28, s2
	v_add_lshl_u32 v28, v43, v11, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v9, v10, v9, 2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s0, vcc_lo, s0
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x2
	buffer_store_b32 v37, v26, s[4:7], 0 offen
	buffer_store_b32 v38, v27, s[4:7], 0 offen
	buffer_store_b32 v39, v25, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v28, s2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	v_add_lshl_u32 v26, v10, v49, 2
	s_and_b32 s53, s53, 0xffff
	s_mov_b32 s54, s6
	s_mov_b32 s55, s7
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v40, v25, s[4:7], 0 offen
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v1, v9, s[52:55], 0 offen
	v_add_lshl_u32 v1, v10, v48, 2
	v_cndmask_b32_e64 v9, 0x80000000, v26, s0
	v_add_lshl_u32 v25, v10, v47, 2
	v_add_lshl_u32 v26, v10, v46, 2
	v_add_lshl_u32 v27, v10, v45, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	buffer_store_b32 v2, v9, s[52:55], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v25, s0
	v_cndmask_b32_e64 v9, 0x80000000, v26, s0
	v_cndmask_b32_e64 v25, 0x80000000, v27, s0
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s1, s30, v0
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v3, v1, s[52:55], 0 offen
	v_add_lshl_u32 v1, v10, v44, 2
	s_clause 0x2
	buffer_store_b32 v4, v2, s[52:55], 0 offen
	buffer_store_b32 v5, v9, s[52:55], 0 offen
	buffer_store_b32 v6, v25, s[52:55], 0 offen
	v_add_lshl_u32 v2, v10, v42, 2
	v_add_lshl_u32 v0, v10, v0, 2
	v_add_lshl_u32 v3, v10, v41, 2
	v_add_lshl_u32 v4, v10, v16, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b32 v7, v1, s[52:55], 0 offen
	buffer_store_b32 v8, v2, s[52:55], 0 offen
	buffer_store_b32 v17, v0, s[52:55], 0 offen
	buffer_store_b32 v18, v3, s[52:55], 0 offen
	buffer_store_b32 v19, v4, s[52:55], 0 offen
	v_add_lshl_u32 v0, v10, v15, 2
	v_add_lshl_u32 v1, v10, v14, 2
	v_add_lshl_u32 v2, v10, v13, 2
	v_add_lshl_u32 v3, v10, v12, 2
	v_add_lshl_u32 v4, v10, v11, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b32 v20, v0, s[52:55], 0 offen
	buffer_store_b32 v21, v1, s[52:55], 0 offen
	buffer_store_b32 v22, v2, s[52:55], 0 offen
	buffer_store_b32 v23, v3, s[52:55], 0 offen
	buffer_store_b32 v24, v4, s[52:55], 0 offen
	.loc	1 451 5                         ; attention_backward.py:451:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 184
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
		.amdhsa_next_free_sgpr 68
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 251
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 68
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16352
; TotalNumSgprs: 70
; NumVgprs: 251
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 70
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 0
    .sgpr_count:     70
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
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
