	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b64 s[18:19], s[0:1], 0x74
	s_load_b64 s[30:31], s[0:1], 0x94
	s_load_b64 s[8:9], s[0:1], 0x10
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
	s_lshl_b32 s2, s3, 11
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_lshlrev_b32_e32 v9, 3, v33
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v1, s56, v10
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_add_i32 s12, s2, s56
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v11, 56, v0
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v1
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v153, 4, v0
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
	s_clause 0x1
	s_load_b32 s58, s[0:1], 0x9c
	s_load_b256 s[36:43], s[0:1], 0x38
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_u32 v157, v0, 4, 1
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[145:146], null, s18, v10, v[9:10]
	s_mul_i32 s34, s18, s12
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_cmp_gt_i32_e64 s2, s18, v9
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_and_b32 s5, s47, 0xffff
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_mad_u64_u32 v[147:148], null, s19, v10, v[9:10]
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v10, 1, v11
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_lshl_add_u32 v152, s18, 3, v145
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_lshl_u32 v1, v145, s34, 1
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s4, vcc_lo, s2
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_mul_i32 s33, s19, s12
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v10, v153, v10
	v_add_lshl_u32 v2, v152, s34, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_lshl_add_u32 v154, s19, 3, v147
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v155, 0, v10
	v_cndmask_b32_e64 v5, 0x80000000, v2, s4
	s_mov_b32 s4, s46
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_lshl_u32 v11, v154, s33, 1
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s1, s56, s30
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_clause 0x1
	buffer_load_b128 v[1:4], v1, s[4:7], 0 offen
	buffer_load_b128 v[5:8], v5, s[4:7], 0 offen
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_sub_i32 s1, s1, s58
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_add_i32 s31, s31, s58
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s1, s1, 16
	s_lshl_b32 s59, s3, 12
	.loc	1 603 39                        ; attention_backward.py:603:39
	s_sub_i32 s3, s56, s58
	s_mov_b32 s46, s6
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_sub_i32 s6, s56, s31
	.loc	1 590 24                        ; attention_backward.py:590:24
	v_med3_i32 v39, s1, 0, 0x800
	.loc	1 603 25                        ; attention_backward.py:603:25
	s_max_i32 s3, s3, 0
	.loc	1 589 24                        ; attention_backward.py:589:24
	s_max_i32 s6, s6, 0
	.loc	1 604 45                        ; attention_backward.py:604:45
	s_and_b32 s1, s3, 0x7fffffe0
	.loc	1 597 45                        ; attention_backward.py:597:45
	s_and_b32 s3, s6, 0x7fffffe0
	s_mov_b32 s52, s40
	.loc	1 604 24                        ; attention_backward.py:604:24
	s_max_u32 s40, s3, s1
	.loc	1 600 19                        ; attention_backward.py:600:19
	v_readfirstlane_b32 s1, v39
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v158, s56, v157
	v_mad_u64_u32 v[149:150], null, s18, 24, v[145:146]
	v_mad_u64_u32 v[150:151], null, s19, 24, v[147:148]
	.loc	1 600 19                        ; attention_backward.py:600:19
	s_add_i32 s1, s1, 31
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s0, 0x800, v158
	.loc	1 600 17                        ; attention_backward.py:600:17
	s_and_b32 s1, s1, 0x1fe0
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v176, 2, v158
	.loc	1 598 24                        ; attention_backward.py:598:24
	s_min_u32 s61, s1, 0x800
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v177, 4, v158
	v_or_b32_e32 v178, 6, v158
	v_or_b32_e32 v179, 8, v158
	v_or_b32_e32 v180, 10, v158
	v_or_b32_e32 v181, 12, v158
	v_or_b32_e32 v182, 14, v158
	v_lshl_add_u32 v148, s18, 4, v145
	v_lshl_add_u32 v151, s19, 4, v147
	.loc	1 672 31                        ; attention_backward.py:672:31
	s_mul_f32 s60, s35, 0x3fb8aa3b
	s_mov_b32 s20, 0
	s_mov_b32 s57, -1
	s_mov_b32 s4, 0
	s_mov_b32 s47, s7
	s_mov_b32 s48, s38
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(1)
	ds_store_b128 v155, v[1:4]
	s_waitcnt vmcnt(0)
	ds_store_b128 v155, v[5:8] offset:1024
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v156, 15, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v3, v1 :: v_dual_and_b32 v34, 16, v0
	v_mov_b32_e32 v2, v1
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s5, s19, v9
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_lshl_u32 v9, v147, s33, 1
	v_dual_mov_b32 v5, v1 :: v_dual_lshlrev_b32 v36, 3, v0
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_and_b32_e32 v35, 32, v0
	.loc	1 580 22 is_stmt 0              ; attention_backward.py:580:22
	s_and_b32 vcc_lo, vcc_lo, s5
	v_dual_mov_b32 v7, v1 :: v_dual_lshlrev_b32 v34, 2, v34
	.loc	1 578 26 is_stmt 1              ; attention_backward.py:578:26
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v11
	s_clause 0x1
	buffer_load_b128 v[65:68], v9, s[8:11], 0 offen
	buffer_load_b128 v[69:72], v10, s[8:11], 0 offen
	v_dual_mov_b32 v9, v1 :: v_dual_and_b32 v36, 48, v36
	v_dual_mov_b32 v12, v1 :: v_dual_lshlrev_b32 v33, 4, v33
	v_dual_mov_b32 v14, v1 :: v_dual_lshlrev_b32 v37, 1, v156
	v_mov_b32_e32 v10, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v161, v156, 6, v36
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshl_or_b32 v33, v156, 7, v33
	v_mov_b32_e32 v16, v1
	v_or3_b32 v159, v37, v34, v35
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_lshrrev_b32_e32 v0, 1, v35
	v_add3_u32 v160, 0, v35, v37
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v73, 0, v33
	v_xad_u32 v74, v33, 16, 0
	v_xad_u32 v75, v33, 32, 0
	v_xad_u32 v77, v33, 48, 0
	v_xad_u32 v81, v33, 64, 0
	v_xad_u32 v85, 0x50, v33, 0
	v_xad_u32 v89, 0x60, v33, 0
	v_xad_u32 v93, 0x70, v33, 0
	v_lshl_or_b32 v162, v35, 6, v33
	v_xor_b32_e32 v33, 0x90, v159
	v_xor_b32_e32 v34, 0x120, v159
	v_xor_b32_e32 v35, 0x1b0, v159
	v_xor_b32_e32 v36, 16, v161
	v_xor_b32_e32 v37, 32, v161
	v_xor_b32_e32 v38, 48, v161
	v_dual_mov_b32 v11, v1 :: v_dual_add_nc_u32 v164, 0, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v13, v1 :: v_dual_add_nc_u32 v166, 0, v36
	v_dual_mov_b32 v15, v1 :: v_dual_add_nc_u32 v168, 0, v38
	v_dual_mov_b32 v26, v1 :: v_dual_add_nc_u32 v163, 0, v33
	v_dual_mov_b32 v28, v1 :: v_dual_add_nc_u32 v165, 0, v35
	v_dual_mov_b32 v30, v1 :: v_dual_add_nc_u32 v167, 0, v37
	v_xor_b32_e32 v33, 16, v162
	v_xor_b32_e32 v34, 32, v162
	v_xor_b32_e32 v35, 48, v162
	v_xor_b32_e32 v36, 64, v162
	v_xor_b32_e32 v37, 0x50, v162
	v_xor_b32_e32 v38, 0x60, v162
	v_xor_b32_e32 v40, 0x70, v162
	v_mov_b32_e32 v8, v1
	v_dual_mov_b32 v25, v1 :: v_dual_add_nc_u32 v170, 0, v34
	v_dual_mov_b32 v27, v1 :: v_dual_add_nc_u32 v172, 0, v36
	v_dual_mov_b32 v29, v1 :: v_dual_add_nc_u32 v174, 0, v38
	v_dual_mov_b32 v32, v1 :: v_dual_add_nc_u32 v169, 0, v33
	v_dual_mov_b32 v18, v1 :: v_dual_add_nc_u32 v171, 0, v35
	v_dual_mov_b32 v20, v1 :: v_dual_add_nc_u32 v173, 0, v37
	v_dual_mov_b32 v22, v1 :: v_dual_add_nc_u32 v175, 0, v40
	ds_load_b128 v[33:36], v73
	ds_load_b128 v[37:40], v74
	ds_load_b128 v[41:44], v75
	ds_load_b128 v[45:48], v77
	ds_load_b128 v[49:52], v81
	ds_load_b128 v[53:56], v85
	ds_load_b128 v[57:60], v89
	ds_load_b128 v[61:64], v93
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v146, v0, v156
	s_cmp_lt_u32 s40, s61
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt vmcnt(1)
	ds_store_b128 v155, v[65:68]
	s_waitcnt vmcnt(0)
	ds_store_b128 v155, v[69:72] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[65:68], v73
	ds_load_b128 v[69:72], v74
	ds_load_b128 v[73:76], v75
	ds_load_b128 v[77:80], v77
	ds_load_b128 v[81:84], v81
	ds_load_b128 v[85:88], v85
	ds_load_b128 v[89:92], v89
	ds_load_b128 v[93:96], v93
	s_cselect_b32 s62, -1, 0
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s49, s39, 0xffff
	s_and_b32 s53, s41, 0xffff
	s_and_b32 s37, s37, 0xffff
	s_branch .LBB0_2
.LBB0_1:                                ; %Flow164
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 21 is_stmt 0                ; attention_backward.py:0:21
	s_xor_b32 s1, s57, -1
	s_movk_i32 s4, 0x800
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
	s_or_b32 s41, s59, s4
	s_mov_b32 s63, s40
	v_or_b32_e32 v183, s41, v146
.LBB0_4:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_add_i32 s1, s63, s41
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_mov_b32 s21, s20
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_mul_i32 s3, s1, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_mov_b32 s22, s20
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v97, s3, v145, 1
	v_add_lshl_u32 v98, s3, v152, 1
	v_add_lshl_u32 v99, s3, v148, 1
	v_add_lshl_u32 v100, s3, v149, 1
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_mov_b32 s23, s20
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e64 v97, 0x80000000, v97, s2
	v_cndmask_b32_e64 v98, 0x80000000, v98, s2
	v_cndmask_b32_e64 v99, 0x80000000, v99, s2
	v_cndmask_b32_e64 v100, 0x80000000, v100, s2
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
	v_dual_mov_b32 v224, s27 :: v_dual_add_nc_u32 v209, 0, v162
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
	ds_store_b128 v155, v[129:132]
	s_waitcnt vmcnt(2)
	ds_store_b128 v155, v[133:136] offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b128 v155, v[137:140] offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b128 v155, v[141:144] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[97:100], v209
	ds_load_b128 v[101:104], v169
	ds_load_b128 v[105:108], v170
	ds_load_b128 v[109:112], v171
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[113:120], v[33:40], v[97:104], v[217:224]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[97:100], v172
	ds_load_b128 v[101:104], v173
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[113:120], v[41:48], v[105:112], v[113:120]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[113:120], v[49:56], v[97:104], v[113:120]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[97:100], v174
	ds_load_b128 v[101:104], v175
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[113:120], v[57:64], v[97:104], v[113:120]
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_add_lshl_u32 v97, v183, s63, 2
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v99, s1, v154, 1
	v_add_lshl_u32 v100, s1, v151, 1
	v_add_lshl_u32 v101, s1, v150, 1
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v98, v97, s[48:51], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v99, 0x80000000, v99, s5
	v_cndmask_b32_e64 v100, 0x80000000, v100, s5
	v_cndmask_b32_e64 v101, 0x80000000, v101, s5
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
	v_cndmask_b32_e64 v98, 0x80000000, v98, s5
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
	ds_load_u16_d16_hi v123, v160 offset:640
	ds_load_u16_d16_hi v124, v160 offset:896
	ds_load_u16_d16_hi v100, v160 offset:960
	ds_load_u16_d16_hi v99, v160 offset:704
	ds_load_u16_d16_hi v125, v160 offset:1152
	ds_load_u16_d16_hi v126, v160 offset:1408
	ds_load_u16_d16_hi v102, v160 offset:1472
	ds_load_u16_d16_hi v101, v160 offset:1216
	ds_load_u16_d16_hi v127, v160 offset:1664
	ds_load_u16_d16_hi v128, v160 offset:1920
	ds_load_u16_d16_hi v104, v160 offset:1984
	ds_load_u16_d16_hi v103, v160 offset:1728
	ds_load_u16_d16_hi v105, v160 offset:2176
	ds_load_u16_d16_hi v106, v160 offset:2432
	ds_load_u16_d16_hi v114, v160 offset:2496
	ds_load_u16_d16_hi v113, v160 offset:2240
	ds_load_u16_d16_hi v107, v160 offset:2688
	ds_load_u16_d16_hi v108, v160 offset:2944
	ds_load_u16_d16_hi v116, v160 offset:3008
	ds_load_u16_d16_hi v115, v160 offset:2752
	ds_load_u16_d16_hi v109, v160 offset:3200
	ds_load_u16_d16_hi v110, v160 offset:3456
	ds_load_u16_d16_hi v118, v160 offset:3520
	ds_load_u16_d16_hi v117, v160 offset:3264
	ds_load_u16_d16_hi v111, v160 offset:3712
	ds_load_u16_d16_hi v112, v160 offset:3968
	ds_load_u16_d16_hi v120, v160 offset:4032
	ds_load_u16_d16_hi v119, v160 offset:3776
	ds_load_u16_d16_hi v121, v160 offset:128
	ds_load_u16_d16_hi v122, v160 offset:384
	ds_load_u16_d16_hi v98, v160 offset:448
	ds_load_u16_d16_hi v97, v160 offset:192
	ds_load_u16_d16_hi v206, v160 offset:320
	ds_load_u16_d16_hi v215, v160 offset:256
	ds_load_u16_d16_hi v216, v160
	ds_load_u16_d16_hi v207, v160 offset:64
	ds_load_u16_d16_hi v204, v160 offset:832
	ds_load_u16_d16_hi v213, v160 offset:768
	ds_load_u16_d16_hi v214, v160 offset:512
	ds_load_u16_d16_hi v205, v160 offset:576
	ds_load_u16_d16_hi v202, v160 offset:1344
	ds_load_u16_d16_hi v211, v160 offset:1280
	ds_load_u16_d16_hi v212, v160 offset:1024
	ds_load_u16_d16_hi v203, v160 offset:1088
	ds_load_u16_d16_hi v200, v160 offset:1856
	ds_load_u16_d16_hi v208, v160 offset:1792
	ds_load_u16_d16_hi v210, v160 offset:1536
	ds_load_u16_d16_hi v201, v160 offset:1600
	ds_load_u16_d16_hi v190, v160 offset:2368
	ds_load_u16_d16_hi v198, v160 offset:2304
	ds_load_u16_d16_hi v199, v160 offset:2048
	ds_load_u16_d16_hi v191, v160 offset:2112
	ds_load_u16_d16_hi v188, v160 offset:2880
	ds_load_u16_d16_hi v196, v160 offset:2816
	ds_load_u16_d16_hi v197, v160 offset:2560
	ds_load_u16_d16_hi v189, v160 offset:2624
	ds_load_u16_d16_hi v186, v160 offset:3392
	ds_load_u16_d16_hi v194, v160 offset:3328
	ds_load_u16_d16_hi v195, v160 offset:3072
	ds_load_u16_d16_hi v187, v160 offset:3136
	ds_load_u16_d16_hi v184, v160 offset:3904
	ds_load_u16_d16_hi v192, v160 offset:3840
	ds_load_u16_d16_hi v193, v160 offset:3584
	ds_load_u16_d16_hi v185, v160 offset:3648
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v155, v[225:228]
	ds_store_b128 v155, v[229:232] offset:1024
	ds_store_b128 v155, v[233:236] offset:2048
	ds_store_b128 v155, v[237:240] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[225:228], v209
	ds_load_b128 v[229:232], v169
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[217:224], v[65:72], v[225:232], v[217:224]
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[225:228], v170
	ds_load_b128 v[229:232], v171
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[217:224], v[73:80], v[225:232], v[217:224]
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[225:228], v172
	ds_load_b128 v[229:232], v173
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[217:224], v[81:88], v[225:232], v[217:224]
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[225:228], v174
	ds_load_b128 v[229:232], v175
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
	v_or_b32_e32 v224, s63, v146
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
	v_cmp_ge_i32_e64 s10, v224, v158
	v_cmp_ge_i32_e64 s11, v224, v176
	v_cmp_ge_i32_e64 s12, v224, v177
	v_cmp_ge_i32_e64 s13, v224, v178
	v_cmp_ge_i32_e64 s14, v224, v179
	v_cmp_ge_i32_e64 s15, v224, v180
	v_cmp_ge_i32_e64 s16, v224, v181
	v_cmp_ge_i32_e64 s17, v224, v182
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v224, v241
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v158, v225
	v_cmp_ge_i32_e64 s1, v176, v225
	v_cmp_ge_i32_e64 s3, v177, v225
	v_cmp_ge_i32_e64 s4, v178, v225
	v_cmp_ge_i32_e64 s6, v179, v225
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s10, s10, vcc_lo
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s7, v180, v225
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 vcc_lo, s0, s10
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s8, v181, v225
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v224, 0, v224, vcc_lo
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s9, v182, v225
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s1, s11, s1
	s_and_b32 s3, s12, s3
	s_and_b32 s1, s0, s1
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v209, v224, v209
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s3, s0, s3
	s_and_b32 s4, s13, s4
	s_and_b32 s6, s14, s6
	s_and_b32 s4, s0, s4
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
	v_mov_b16_e64 v111.l, v209.l
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v225, 0, v225, s1
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v110.l, v209.l
	v_mov_b16_e64 v108.l, v209.l
	v_mov_b16_e64 v121.l, v209.l
	v_mov_b16_e64 v104.l, v209.l
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v217, v225, v217
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v106.l, v209.l
	v_mov_b16_e64 v122.l, v209.l
	v_mov_b16_e64 v124.l, v209.l
	v_mov_b16_e64 v126.l, v209.l
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v217, s35, v217
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v128.l, v209.l
	v_mov_b16_e64 v105.l, v209.l
	v_mov_b16_e64 v107.l, v209.l
	v_mov_b16_e64 v109.l, v209.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v226, v217, 16, 1
	v_cmp_o_f32_e64 s1, v217, v217
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v112.l, v209.l
	v_mov_b16_e64 v100.l, v209.l
	v_mov_b16_e64 v102.l, v209.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v227, v217, v226, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v217, v243
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v119.l, v209.l
	v_mov_b16_e64 v113.l, v209.l
	v_mov_b16_e64 v115.l, v209.l
	v_mov_b16_e64 v117.l, v209.l
	v_mov_b16_e64 v99.l, v209.l
	v_mov_b16_e64 v101.l, v209.l
	v_mov_b16_e64 v103.l, v209.l
	v_mov_b16_e64 v114.l, v209.l
	v_mov_b16_e64 v116.l, v209.l
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v217, 0, v217, s3
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
	v_cmp_o_f32_e64 s3, v218, v218
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
	v_cndmask_b32_e64 v218, 0, v218, s4
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
	v_cmp_o_f32_e64 s4, v219, v219
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
	v_add_nc_u32_e32 v223, 0, v159
	ds_store_b16 v223, v97
	ds_store_b16 v223, v98 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v97.l, 0x7fff, v227.h, s1
	v_cndmask_b16 v98.l, 0x7fff, v230.h, s7
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s7, v221, v221
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v163, v97
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v97.l, 0x7fff, v228.h, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v163, v98 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v98.l, 0x7fff, v231.h, s8
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s3, v226, v226
	v_cmp_o_f32_e64 s8, v222, v222
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v164, v97
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v97.l, 0x7fff, v219.h, s4
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v219, 0, v161
	ds_store_b16 v164, v98 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v98.l, 0x7fff, v232.h, s9
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v165, v97
	ds_store_b16 v165, v98 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[227:230], v219
	ds_load_b128 v[231:234], v166
	ds_load_b128 v[235:238], v167
	ds_load_b128 v[239:242], v168
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v250, v[129:132]
	ds_store_b128 v250, v[133:136] offset:1024
	ds_store_b128 v250, v[137:140] offset:2048
	ds_store_b128 v250, v[141:144] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v129, v160
	ds_load_u16_d16 v130, v160 offset:256
	ds_load_u16_d16 v131, v160 offset:512
	ds_load_u16_d16 v132, v160 offset:768
	ds_load_u16_d16 v135, v160 offset:1536
	ds_load_u16_d16 v136, v160 offset:1792
	ds_load_u16_d16 v133, v160 offset:1024
	ds_load_u16_d16 v134, v160 offset:1280
	ds_load_u16_d16 v140, v160 offset:832
	ds_load_u16_d16 v142, v160 offset:1344
	ds_load_u16_d16 v139, v160 offset:576
	ds_load_u16_d16 v138, v160 offset:320
	ds_load_u16_d16 v243, v160 offset:2048
	ds_load_u16_d16 v244, v160 offset:2304
	ds_load_u16_d16 v245, v160 offset:2560
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v133, v160 offset:1152
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v134, v160 offset:1408
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v140, v160 offset:960
	ds_load_u16_d16 v137, v160 offset:64
	ds_load_u16_d16_hi v130, v160 offset:384
	ds_load_u16_d16_hi v129, v160 offset:128
	ds_load_u16_d16_hi v136, v160 offset:1920
	ds_load_u16_d16_hi v135, v160 offset:1664
	ds_load_u16_d16 v144, v160 offset:1856
	ds_load_u16_d16 v143, v160 offset:1600
	ds_load_u16_d16_hi v131, v160 offset:640
	ds_load_u16_d16_hi v132, v160 offset:896
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v139, v160 offset:704
	ds_load_u16_d16_hi v142, v160 offset:1472
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v243, v160 offset:2176
	ds_load_u16_d16 v141, v160 offset:1088
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v137, v160 offset:192
	ds_load_u16_d16_hi v138, v160 offset:448
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v144, v160 offset:1984
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v143, v160 offset:1728
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[129:136], v[227:234], v[25:32]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_u16_d16 v247, v160 offset:3072
	ds_load_u16_d16 v249, v160 offset:3584
	ds_load_u16_d16 v250, v160 offset:3840
	ds_load_u16_d16 v248, v160 offset:3328
	ds_load_u16_d16 v246, v160 offset:2816
	ds_load_u16_d16 v131, v160 offset:2624
	ds_load_u16_d16 v136, v160 offset:3904
	ds_load_u16_d16 v132, v160 offset:2880
	ds_load_u16_d16 v130, v160 offset:2368
	ds_load_u16_d16 v129, v160 offset:2112
	s_waitcnt lgkmcnt(1)
	ds_load_u16_d16_hi v130, v160 offset:2496
	ds_load_u16_d16_hi v246, v160 offset:2944
	ds_load_u16_d16_hi v131, v160 offset:2752
	ds_load_u16_d16_hi v247, v160 offset:3200
	ds_load_u16_d16_hi v248, v160 offset:3456
	ds_load_u16_d16 v135, v160 offset:3648
	ds_load_u16_d16 v134, v160 offset:3392
	ds_load_u16_d16_hi v249, v160 offset:3712
	ds_load_u16_d16_hi v250, v160 offset:3968
	ds_load_u16_d16_hi v136, v160 offset:4032
	ds_load_u16_d16 v133, v160 offset:3136
	ds_load_u16_d16_hi v132, v160 offset:3008
	ds_load_u16_d16_hi v245, v160 offset:2688
	ds_load_u16_d16_hi v244, v160 offset:2432
	s_waitcnt lgkmcnt(3)
	ds_load_u16_d16_hi v133, v160 offset:3264
	ds_load_u16_d16_hi v135, v160 offset:3776
	ds_load_u16_d16_hi v134, v160 offset:3520
	ds_load_u16_d16_hi v129, v160 offset:2240
	ds_load_u16_d16_hi v141, v160 offset:1216
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
	v_sub_f32_e32 v236, v121, v121
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v134, v222, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v230, v127, v127
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v129, v224, v129, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v127.l, v210.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v231, v126, v126
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v134, v222, v134, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v126.l, v211.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v209.h, 0x7fff, v129.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v225, v225
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v125.l, v212.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v229.h, 0x7fff, v134.h, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v234, v123, v123 :: v_dual_sub_f32 v129, v224, v209
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v123.l, v214.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v235, v122, v122
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v222, v222, v229
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v122.l, v215.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v130, v129, 16, 1
	v_cmp_o_f32_e64 s1, v129, v129
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v240, v106, v106
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v121.l, v216.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v237, v109, v109
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v129, v129, v130, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v130, v225, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v109.l, v195.h
	v_mov_b16_e64 v108.l, v196.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v239, v107, v107
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v97.l, 0x7fff, v129.h, s1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v130, v225, v130, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v130.l, v209.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v107.l, v197.h
	v_mov_b16_e64 v106.l, v198.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v241, v105, v105
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v130.h, 0x7fff, v130.h, vcc_lo
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v105.l, v199.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v242, v102, v102
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v102.l, v202.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s11, v232, v232
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v131, v225, v130
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v163, v130
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v130, v217, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v225.l, v209.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v231, v231
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v132, v131, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v131, v131
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v130, v217, v130, 0x7fff
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s15, v230, v230
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v224, v131, v132, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v131, v226, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v132.l, v209.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v131, v226, v131, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v132.h, 0x7fff, v131.h, s3
	v_cmp_o_f32_e64 s3, v220, v220
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
	v_cmp_o_f32_e64 s4, v131, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_add3_u32 v132, v220, v132, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v131, v131, v133, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v133, v221, 16, 1
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b16 v225.h, 0x7fff, v132.h, s3
	v_cmp_o_f32_e64 s3, v217, v217
	v_bfe_u32 v132, v218, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v98.l, 0x7fff, v131.h, s4
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v133, v221, v133, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v220, v220, v225
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v226.h, 0x7fff, v130.h, s3
	v_add3_u32 v132, v218, v132, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v228.h, 0x7fff, v133.h, s7
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s3, v220, v220
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v217, v217, v226
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_cndmask_b16 v227.h, 0x7fff, v132.h, s6
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v223, v209
	ds_store_b16_d16_hi v163, v225 offset:512
	ds_store_b16_d16_hi v164, v226
	ds_store_b16_d16_hi v164, v228 offset:512
	ds_store_b16_d16_hi v165, v227
	ds_store_b16_d16_hi v165, v229 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[137:140], v219
	ds_load_b128 v[141:144], v166
	ds_load_b128 v[129:132], v167
	ds_load_b128 v[133:136], v168
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
	v_cmp_o_f32_e64 s4, v221, v221
	.loc	1 732 35 is_stmt 1              ; attention_backward.py:732:35
	v_sub_f32_e32 v229, v128, v128
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v128.l, v208.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v218, v218, v223, 0x7fff
	v_bfe_u32 v223, v220, 16, 1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s7, v234, v234
	v_cmp_o_f32_e64 s17, v229, v229
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v220, v220, v223, 0x7fff
	v_bfe_u32 v223, v221, 16, 1
	v_cndmask_b16 v98.l, 0x7fff, v220.h, s3
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v221, v221, v223, 0x7fff
	v_bfe_u32 v223, v222, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v163, v97
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v97.l, 0x7fff, v217.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v163, v98 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v98.l, 0x7fff, v221.h, s4
	v_add3_u32 v222, v222, v223, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v217, v112, v112
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v164, v97
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v97.l, 0x7fff, v218.h, s1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v164, v98 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v98.l, 0x7fff, v222.h, s6
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v165, v97
	ds_store_b16 v165, v98 offset:512
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v218, v111, v111
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[221:224], v219
	ds_load_b128 v[225:228], v166
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v98.l, v209.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v233, v124, v124
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v124.l, v213.h
	v_mov_b16_e64 v112.l, v192.h
	v_mov_b16_e64 v111.l, v193.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v220, v110, v110
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v110.l, v194.h
	v_wmma_f32_16x16x16_bf16 v[1:8], v[121:128], v[137:144], v[1:8]
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
	v_cmp_o_f32_e64 s9, v233, v233
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
	v_cmp_o_f32_e64 s4, v235, v235
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[113:120], v[129:136], v[9:16]
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[97:104], v[221:228], v[9:16]
	ds_load_b128 v[97:100], v167
	ds_load_b128 v[101:104], v168
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
	v_cmp_o_f32_e64 s3, v99, v99
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
	v_cndmask_b16 v98.h, 0x7fff, v100.h, s4
	v_cndmask_b16 v98.l, 0x7fff, v99.h, s3
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
	v_cmp_o_f32_e64 s3, v99, v99
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
	v_cmp_o_f32_e64 s4, v246, v246
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
	v_cndmask_b16 v98.h, 0x7fff, v100.h, s4
	v_cndmask_b16 v98.l, 0x7fff, v99.h, s3
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
	v_cmp_o_f32_e64 s3, v99, v99
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
	v_cmp_o_f32_e64 s4, v240, v240
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
	v_cndmask_b16 v98.h, 0x7fff, v100.h, s4
	v_cndmask_b16 v98.l, 0x7fff, v99.h, s3
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
	v_cmp_o_f32_e64 s3, v99, v99
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
	v_cmp_o_f32_e64 s4, v127, v127
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
	v_cndmask_b16 v98.h, 0x7fff, v100.h, s4
	v_cndmask_b16 v98.l, 0x7fff, v99.h, s3
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
	v_mul_lo_u32 v43, s18, v156
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v0, v157, v0
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v33, s56, v156
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s5, s43, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v47, 2, v0
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v49, v43, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s2, s18, v0
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v46, 6, v0
	v_or_b32_e32 v48, 4, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v50, v43, v47
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v49, v49, s34, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v45, 8, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v51, v43, v48
	v_add_nc_u32_e32 v52, v43, v46
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	v_add_lshl_u32 v50, v50, s34, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v44, 10, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_mov_b32 s4, s42
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v41, 14, v0
	v_or_b32_e32 v42, 12, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v53, v43, v45
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v51, v51, s34, 2
	buffer_store_b32 v25, v49, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v50, s2
	v_add_lshl_u32 v49, v52, s34, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v54, v43, v44
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v33, 32, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v55, v43, v42
	v_add_nc_u32_e32 v56, v43, v41
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v50, 0x80000000, v51, s2
	v_add_lshl_u32 v51, v53, s34, 2
	buffer_store_b32 v26, v25, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v49, s2
	v_add_lshl_u32 v52, v54, s34, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s0, s19, v0
	v_cmp_gt_i32_e64 s1, s19, v33
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s3, s18, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v27, v50, s[4:7], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v51, s2
	v_add_lshl_u32 v49, v55, s34, 2
	buffer_store_b32 v28, v25, s[4:7], 0 offen
	v_add_lshl_u32 v25, v56, s34, 2
	v_cndmask_b32_e64 v27, 0x80000000, v52, s2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v40, 34, v0
	v_or_b32_e32 v39, 36, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v29, v26, s[4:7], 0 offen
	buffer_store_b32 v30, v27, s[4:7], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v49, s2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s3
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s0, vcc_lo, s0
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v57, v43, v33
	v_add_nc_u32_e32 v58, v43, v40
	v_add_nc_u32_e32 v59, v43, v39
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v38, 38, v0
	v_or_b32_e32 v37, 40, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v27, v57, s34, 2
	v_add_lshl_u32 v28, v58, s34, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v36, 42, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v29, v59, s34, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v35, 44, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v34, 46, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v60, v43, v38
	v_add_nc_u32_e32 v61, v43, v37
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v31, v26, s[4:7], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v28, s2
	s_clause 0x1
	buffer_store_b32 v32, v25, s[4:7], 0 offen
	buffer_store_b32 v17, v27, s[4:7], 0 offen
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v27, s19, v156
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v62, v43, v36
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v28, 0x80000000, v29, s2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v63, v43, v35
	v_add_nc_u32_e32 v43, v43, v34
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v17, v60, s34, 2
	s_clause 0x1
	buffer_store_b32 v18, v26, s[4:7], 0 offen
	buffer_store_b32 v19, v28, s[4:7], 0 offen
	v_add_lshl_u32 v18, v61, s34, 2
	v_add_lshl_u32 v19, v62, s34, 2
	v_add_lshl_u32 v25, v63, s34, 2
	v_add_lshl_u32 v26, v43, s34, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v0, v27, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v0, v0, s33, 2
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x4
	buffer_store_b32 v20, v17, s[4:7], 0 offen
	buffer_store_b32 v21, v18, s[4:7], 0 offen
	buffer_store_b32 v22, v19, s[4:7], 0 offen
	buffer_store_b32 v23, v25, s[4:7], 0 offen
	buffer_store_b32 v24, v26, s[4:7], 0 offen
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v17, v27, v47
	v_add_nc_u32_e32 v18, v27, v48
	v_add_nc_u32_e32 v19, v27, v46
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v20, v27, v45
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v17, v17, s33, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v21, v27, v44
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v22, v27, v42
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v1, v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, v18, s33, 2
	v_cndmask_b32_e64 v1, 0x80000000, v17, s0
	v_add_lshl_u32 v17, v19, s33, 2
	v_add_lshl_u32 v18, v20, s33, 2
	v_add_lshl_u32 v19, v21, s33, 2
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v23, v27, v41
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v2, v1, s[28:31], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v17, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v24, v27, v33
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v2, 0x80000000, v18, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v25, v27, v40
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v17, 0x80000000, v19, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v26, v27, v39
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v3, v0, s[28:31], 0 offen
	v_add_lshl_u32 v0, v22, s33, 2
	s_clause 0x2
	buffer_store_b32 v4, v1, s[28:31], 0 offen
	buffer_store_b32 v5, v2, s[28:31], 0 offen
	buffer_store_b32 v6, v17, s[28:31], 0 offen
	v_add_lshl_u32 v1, v23, s33, 2
	v_add_lshl_u32 v2, v24, s33, 2
	v_add_lshl_u32 v3, v25, s33, 2
	v_add_lshl_u32 v4, v26, s33, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v28, v27, v38
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v29, v27, v37
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v30, v27, v36
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_add_nc_u32 v31, v27, v35
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_add_nc_u32 v27, v27, v34
	s_clause 0x4
	buffer_store_b32 v7, v0, s[28:31], 0 offen
	buffer_store_b32 v8, v1, s[28:31], 0 offen
	buffer_store_b32 v9, v2, s[28:31], 0 offen
	buffer_store_b32 v10, v3, s[28:31], 0 offen
	buffer_store_b32 v11, v4, s[28:31], 0 offen
	v_add_lshl_u32 v0, v28, s33, 2
	v_add_lshl_u32 v1, v29, s33, 2
	v_add_lshl_u32 v2, v30, s33, 2
	v_add_lshl_u32 v3, v31, s33, 2
	v_add_lshl_u32 v4, v27, s33, 2
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
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 251
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 64
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10668
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 0
    .sgpr_count:     66
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_local_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
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
