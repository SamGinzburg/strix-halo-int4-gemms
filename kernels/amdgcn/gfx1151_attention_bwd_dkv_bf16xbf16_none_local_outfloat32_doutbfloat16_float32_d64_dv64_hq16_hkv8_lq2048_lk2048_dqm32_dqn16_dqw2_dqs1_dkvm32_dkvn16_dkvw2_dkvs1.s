	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x74
	s_load_b128 s[44:47], s[0:1], 0x0
.Ltmp0:
	.loc	1 514 33 prologue_end           ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v9, 3, v0
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_and_b32_e32 v33, 7, v0
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s34, s2, 4
	.loc	1 533 24                        ; attention_backward.py:533:24
	s_lshl_b32 s2, s3, 11
	s_mov_b32 s7, 0x31027000
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_add_i32 s10, s2, s34
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_lshlrev_b32_e32 v34, 3, v33
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v2, s34, v9
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 514 33 is_stmt 0              ; attention_backward.py:514:33
	v_and_b32_e32 v35, 56, v0
	.loc	1 534 24 is_stmt 1              ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v36, 4, v0
	s_load_b64 s[12:13], s[0:1], 0x10
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v2
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_mov_b32 s14, s6
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v10, 1, v35
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_mov_b32 s15, s7
	s_clause 0x4
	s_load_b32 s31, s[0:1], 0x7c
	s_load_b64 s[8:9], s[0:1], 0x94
	s_load_b64 s[28:29], s[0:1], 0x58
	s_load_b256 s[36:43], s[0:1], 0x38
	s_load_b32 s1, s[0:1], 0x9c
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s18, v9
	s_mul_i32 s30, s18, s10
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_cmp_gt_i32_e64 s2, s18, v34
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_lshl_b32 s4, s18, 3
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_and_b32 s5, s47, 0xffff
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_mul_lo_u32 v9, s19, v9
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xad_u32 v73, v36, v10, 0
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_mul_i32 s33, s19, s10
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add3_u32 v1, s30, v34, v1
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_u32 v175, v0, 4, 1
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_bfe_i32 v39, v0, 5, 1
	v_bfe_i32 v41, v0, 3, 1
	s_lshl_b32 s56, s3, 12
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v2, 1, v1
	v_add_lshl_u32 v1, v1, s4, 1
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s4, vcc_lo, s2
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_and_b32 s13, s13, 0xffff
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s3, s34, s8
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_cndmask_b32_e64 v5, 0x80000000, v1, s4
	s_mov_b32 s4, s46
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_sub_i32 s3, s3, s1
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_add_i32 s57, s9, s1
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_clause 0x1
	buffer_load_b128 v[1:4], v2, s[4:7], 0 offen
	buffer_load_b128 v[5:8], v5, s[4:7], 0 offen
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_lshl_b32 s5, s19, 3
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s3, s3, 16
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v176, s34, v175
	s_mov_b32 s46, s6
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_sub_i32 s6, s34, s57
	s_mov_b32 s52, s40
	.loc	1 589 24 is_stmt 0              ; attention_backward.py:589:24
	s_max_i32 s6, s6, 0
	.loc	1 517 21 is_stmt 1              ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s0, 0x800, v176
	.loc	1 597 45                        ; attention_backward.py:597:45
	s_and_b32 s40, s6, 0x7fffffe0
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v207, 2, v176
	v_or_b32_e32 v208, 4, v176
	v_or_b32_e32 v209, 6, v176
	v_or_b32_e32 v210, 8, v176
	v_or_b32_e32 v211, 10, v176
	v_or_b32_e32 v212, 12, v176
	v_or_b32_e32 v213, 14, v176
	.loc	1 672 31                        ; attention_backward.py:672:31
	s_mul_f32 s58, s31, 0x3fb8aa3b
	s_mov_b32 s20, 0
	s_mov_b32 s35, -1
	s_mov_b32 s47, s7
	s_mov_b32 s48, s38
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(1)
	ds_store_b128 v73, v[1:4]
	s_waitcnt vmcnt(0)
	ds_store_b128 v73, v[5:8] offset:1024
	v_mov_b32_e32 v1, 0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add3_u32 v9, s33, v34, v9
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s4, s19, v34
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v4, v1 :: v_dual_lshlrev_b32 v11, 1, v9
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_lshl_u32 v9, v9, s5, 1
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, vcc_lo, s4
	v_dual_mov_b32 v7, v1 :: v_dual_and_b32 v174, 15, v0
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v10, 0x80000000, v11 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	v_dual_mov_b32 v6, v1 :: v_dual_and_b32 v37, 16, v0
	s_clause 0x1
	buffer_load_b128 v[65:68], v10, s[12:15], 0 offen
	buffer_load_b128 v[69:72], v9, s[12:15], 0 offen
	v_dual_mov_b32 v9, v1 :: v_dual_and_b32 v38, 32, v0
	v_dual_mov_b32 v11, v1 :: v_dual_lshlrev_b32 v40, 6, v0
	v_dual_mov_b32 v13, v1 :: v_dual_lshlrev_b32 v0, 3, v0
	v_dual_mov_b32 v12, v1 :: v_dual_lshlrev_b32 v37, 2, v37
	v_dual_mov_b32 v14, v1 :: v_dual_lshlrev_b32 v47, 1, v174
	v_dual_mov_b32 v27, v1 :: v_dual_and_b32 v36, 48, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v8, v1 :: v_dual_and_b32 v45, 48, v0
	v_dual_mov_b32 v10, v1 :: v_dual_and_b32 v39, 0x420, v39
	v_dual_mov_b32 v15, v1 :: v_dual_lshlrev_b32 v42, 4, v33
	v_mov_b32_e32 v2, v1
	v_dual_mov_b32 v29, v1 :: v_dual_lshlrev_b32 v46, 6, v35
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_lshrrev_b32_e32 v43, 1, v35
	v_xor_b32_e32 v35, v36, v35
	v_or3_b32 v177, v47, v37, v38
	v_dual_mov_b32 v25, v1 :: v_dual_and_b32 v44, 0x240, v41
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshl_or_b32 v48, v174, 7, v42
	v_and_or_b32 v40, 0xc00, v40, v42
	v_lshl_or_b32 v36, v33, 6, v45
	v_and_or_b32 v39, 0x210, v41, v39
	v_lshl_or_b32 v179, v174, 6, v45
	v_lshl_or_b32 v181, v33, 9, v35
	v_xor_b32_e32 v35, 0x120, v177
	v_dual_mov_b32 v16, v1 :: v_dual_add_nc_u32 v49, 0, v42
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_lshrrev_b32_e32 v0, 1, v38
	v_add3_u32 v178, 0, v38, v47
	v_xor_b32_e32 v180, v40, v44
	v_xor_b32_e32 v182, v39, v36
	v_lshl_or_b32 v184, v38, 6, v48
	v_xor_b32_e32 v33, 0x90, v177
	v_xor_b32_e32 v36, 0x1b0, v177
	v_xor_b32_e32 v37, 16, v179
	v_xor_b32_e32 v38, 32, v179
	v_xor_b32_e32 v39, 48, v179
	v_mad_u64_u32 v[169:170], null, s18, v43, v[34:35]
	v_dual_mov_b32 v26, v1 :: v_dual_add_nc_u32 v185, 0, v33
	v_dual_mov_b32 v28, v1 :: v_dual_add_nc_u32 v187, 0, v36
	v_dual_mov_b32 v30, v1 :: v_dual_add_nc_u32 v189, 0, v38
	v_dual_mov_b32 v31, v1 :: v_dual_add_nc_u32 v74, 0, v48
	v_dual_mov_b32 v17, v1 :: v_dual_add_nc_u32 v186, 0, v35
	v_dual_mov_b32 v19, v1 :: v_dual_add_nc_u32 v188, 0, v37
	v_dual_mov_b32 v21, v1 :: v_dual_add_nc_u32 v190, 0, v39
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xad_u32 v75, v48, 16, 0
	v_xad_u32 v76, v48, 32, 0
	v_xad_u32 v77, v48, 48, 0
	v_xad_u32 v81, v48, 64, 0
	v_xad_u32 v85, 0x50, v48, 0
	v_xad_u32 v89, 0x60, v48, 0
	v_xad_u32 v93, 0x70, v48, 0
	v_add_nc_u32_e32 v183, v49, v46
	v_mad_u64_u32 v[170:171], null, s19, v43, v[34:35]
	v_xor_b32_e32 v33, 0x90, v180
	v_xor_b32_e32 v34, 0x120, v180
	v_xor_b32_e32 v35, 0x1b0, v180
	v_xor_b32_e32 v36, 16, v184
	v_xor_b32_e32 v37, 32, v184
	v_xor_b32_e32 v38, 48, v184
	v_xor_b32_e32 v39, 64, v184
	v_xor_b32_e32 v40, 0x50, v184
	v_xor_b32_e32 v41, 0x60, v184
	v_xor_b32_e32 v42, 0x70, v184
	v_xor_b32_e32 v43, 0x90, v181
	v_xor_b32_e32 v44, 0x120, v181
	v_xor_b32_e32 v45, 0x1b0, v181
	v_xor_b32_e32 v46, 16, v182
	v_xor_b32_e32 v47, 32, v182
	v_xor_b32_e32 v48, 48, v182
	.loc	1 590 24                        ; attention_backward.py:590:24
	v_med3_i32 v49, s3, 0, 0x800
	v_dual_mov_b32 v32, v1 :: v_dual_add_nc_u32 v191, 0, v33
	v_dual_mov_b32 v18, v1 :: v_dual_add_nc_u32 v193, 0, v35
	v_dual_mov_b32 v20, v1 :: v_dual_add_nc_u32 v195, 0, v37
	v_dual_mov_b32 v22, v1 :: v_dual_add_nc_u32 v197, 0, v39
	v_dual_mov_b32 v23, v1 :: v_dual_add_nc_u32 v192, 0, v34
	v_dual_mov_b32 v24, v1 :: v_dual_add_nc_u32 v199, 0, v41
	v_add_nc_u32_e32 v194, 0, v36
	v_add_nc_u32_e32 v196, 0, v38
	v_add_nc_u32_e32 v198, 0, v40
	.loc	1 600 19                        ; attention_backward.py:600:19
	v_readfirstlane_b32 s3, v49
	v_add_nc_u32_e32 v200, 0, v42
	v_add_nc_u32_e32 v201, 0, v43
	v_add_nc_u32_e32 v202, 0, v44
	v_add_nc_u32_e32 v203, 0, v45
	v_add_nc_u32_e32 v204, 0, v46
	v_add_nc_u32_e32 v205, 0, v47
	v_add_nc_u32_e32 v206, 0, v48
	.loc	1 534 24                        ; attention_backward.py:534:24
	ds_load_b128 v[33:36], v74
	ds_load_b128 v[37:40], v75
	ds_load_b128 v[41:44], v76
	ds_load_b128 v[45:48], v77
	ds_load_b128 v[49:52], v81
	ds_load_b128 v[53:56], v85
	ds_load_b128 v[57:60], v89
	ds_load_b128 v[61:64], v93
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mad_u64_u32 v[171:172], null, s18, 3, v[169:170]
	.loc	1 600 19                        ; attention_backward.py:600:19
	s_add_i32 s3, s3, 31
	v_mov_b32_e32 v3, v1
	.loc	1 600 17 is_stmt 0              ; attention_backward.py:600:17
	s_and_b32 s3, s3, 0x1fe0
	v_mov_b32_e32 v5, v1
	.loc	1 598 24 is_stmt 1              ; attention_backward.py:598:24
	s_min_u32 s59, s3, 0x800
	v_add_nc_u32_e32 v214, s19, v170
	v_mad_u64_u32 v[172:173], null, s19, 3, v[170:171]
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v173, v0, v174
	v_lshl_add_u32 v215, s19, 1, v170
	s_cmp_lt_u32 s40, s59
	s_mov_b32 s5, 0
	s_cselect_b32 s60, -1, 0
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s49, s39, 0xffff
	s_and_b32 s53, s41, 0xffff
	s_and_b32 s37, s37, 0xffff
	s_sub_i32 s41, s1, s8
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt vmcnt(1)
	ds_store_b128 v73, v[65:68]
	s_waitcnt vmcnt(0)
	ds_store_b128 v73, v[69:72] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[65:68], v74
	ds_load_b128 v[69:72], v75
	ds_load_b128 v[73:76], v76
	ds_load_b128 v[77:80], v77
	ds_load_b128 v[81:84], v81
	ds_load_b128 v[85:88], v85
	ds_load_b128 v[89:92], v89
	ds_load_b128 v[93:96], v93
	s_branch .LBB0_2
.LBB0_1:                                ; %Flow187
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 21 is_stmt 0                ; attention_backward.py:0:21
	s_xor_b32 s1, s35, -1
	s_movk_i32 s5, 0x800
	.loc	1 605 9 is_stmt 1               ; attention_backward.py:605:9
	s_and_not1_b32 vcc_lo, exec_lo, s1
	s_mov_b32 s35, 0
	s_cbranch_vccz .LBB0_5
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_and_not1_b32 vcc_lo, exec_lo, s60
	s_cbranch_vccnz .LBB0_1
; %bb.3:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 662 34                        ; attention_backward.py:662:34
	s_or_b32 s61, s56, s5
	s_mov_b32 s62, s40
.LBB0_4:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 34 is_stmt 0                ; attention_backward.py:0:34
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 664 25 is_stmt 1              ; attention_backward.py:664:25
	s_add_i32 s1, s62, s61
	v_lshl_add_u32 v98, s18, 1, v169
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_mov_b32 s21, s20
	s_mov_b32 s22, s20
	s_mov_b32 s23, s20
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	s_mov_b32 s26, s20
	s_mov_b32 s27, s20
	v_add_nc_u32_e32 v97, s18, v169
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_mul_i32 s3, s1, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v223, s27 :: v_dual_add_nc_u32 v102, 0, v184
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v99, s3, v169, 1
	v_add_lshl_u32 v98, s3, v98, 1
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v222, s26
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v97, s3, v97, 1
	v_add_lshl_u32 v100, s3, v171, 1
	v_cndmask_b32_e64 v99, 0x80000000, v99, s2
	v_cndmask_b32_e64 v98, 0x80000000, v98, s2
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v220, s24 :: v_dual_add_nc_u32 v101, 0, v180
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e64 v97, 0x80000000, v97, s2
	v_cndmask_b32_e64 v100, 0x80000000, v100, s2
	s_clause 0x3
	buffer_load_b128 v[113:116], v99, s[44:47], 0 offen
	buffer_load_b128 v[117:120], v98, s[44:47], 0 offen
	buffer_load_b128 v[104:107], v97, s[44:47], 0 offen
	buffer_load_b128 v[109:112], v100, s[44:47], 0 offen
	v_or_b32_e32 v97, s61, v173
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s50, s46
	s_mov_b32 s51, s47
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_add_lshl_u32 v97, v97, s62, 2
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v221, s25 :: v_dual_mov_b32 v218, s22
	v_dual_mov_b32 v219, s23 :: v_dual_mov_b32 v216, s20
	v_dual_mov_b32 v217, s21 :: v_dual_add_nc_u32 v240, 0, v182
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s1, s1, s19
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s54, s46
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v99, s1, v215, 1
	v_add_lshl_u32 v100, s1, v172, 1
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s55, s47
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s38, s46
	s_mov_b32 s39, s47
	v_cndmask_b32_e64 v99, 0x80000000, v99, s4
	v_cndmask_b32_e64 v100, 0x80000000, v100, s4
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(3)
	ds_store_b128 v101, v[113:116]
	s_waitcnt vmcnt(1)
	ds_store_b128 v191, v[104:107]
	ds_store_b128 v192, v[117:120]
	s_waitcnt vmcnt(0)
	ds_store_b128 v193, v[109:112]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v98, v97, s[48:51], 0 offen
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[121:124], v102
	ds_load_b128 v[125:128], v194
	ds_load_b128 v[129:132], v195
	ds_load_b128 v[133:136], v196
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[137:144], v[33:40], v[121:128], v[216:223]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[121:124], v197
	ds_load_b128 v[125:128], v198
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[137:144], v[41:48], v[129:136], v[137:144]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[137:144], v[49:56], v[121:128], v[137:144]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[121:124], v199
	ds_load_b128 v[125:128], v200
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[137:144], v[57:64], v[121:128], v[137:144]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v121, s1, v214, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v121, 0x80000000, v121, s4
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v103, s58, v137, -v98
	v_fma_f32 v108, s58, v138, -v98
	v_fma_f32 v232, s58, v139, -v98
	v_fma_f32 v233, s58, v140, -v98
	v_fma_f32 v234, s58, v141, -v98
	v_fma_f32 v235, s58, v142, -v98
	v_fma_f32 v236, s58, v143, -v98
	v_fma_f32 v237, s58, v144, -v98
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v98, s1, v170, 1
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v103, v103
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v98, 0x80000000, v98, s4
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v238, v97, s[52:55], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x3
	buffer_load_b128 v[153:156], v99, s[36:39], 0 offen
	buffer_load_b128 v[157:160], v100, s[36:39], 0 offen
	buffer_load_b128 v[161:164], v98, s[36:39], 0 offen
	buffer_load_b128 v[165:168], v121, s[36:39], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v239, 0, v181
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v98.l, v153.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v98.h, v157.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v97.l, v161.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v97.h, v165.l
	v_mov_b16_e64 v100.l, v153.h
	v_mov_b16_e64 v100.h, v157.h
	v_mov_b16_e64 v99.l, v161.h
	v_mov_b16_e64 v99.h, v165.h
	ds_store_2addr_b64 v239, v[97:98], v[99:100] offset1:8
	v_mov_b16_e64 v98.l, v154.l
	v_mov_b16_e64 v98.h, v158.l
	v_mov_b16_e64 v97.l, v162.l
	v_mov_b16_e64 v97.h, v166.l
	v_mov_b16_e64 v100.l, v154.h
	v_mov_b16_e64 v100.h, v158.h
	v_mov_b16_e64 v99.l, v162.h
	v_mov_b16_e64 v99.h, v166.h
	ds_store_2addr_b64 v201, v[97:98], v[99:100] offset1:8
	v_mov_b16_e64 v98.l, v155.l
	v_mov_b16_e64 v98.h, v159.l
	v_mov_b16_e64 v97.l, v163.l
	v_mov_b16_e64 v97.h, v167.l
	v_mov_b16_e64 v100.l, v155.h
	v_mov_b16_e64 v100.h, v159.h
	v_mov_b16_e64 v99.l, v163.h
	v_mov_b16_e64 v99.h, v167.h
	ds_store_2addr_b64 v202, v[97:98], v[99:100] offset1:8
	v_mov_b16_e64 v98.l, v156.l
	v_mov_b16_e64 v98.h, v160.l
	v_mov_b16_e64 v97.l, v164.l
	v_mov_b16_e64 v97.h, v168.l
	v_mov_b16_e64 v100.l, v156.h
	v_mov_b16_e64 v100.h, v160.h
	v_mov_b16_e64 v99.l, v164.h
	v_mov_b16_e64 v99.h, v168.h
	ds_store_2addr_b64 v203, v[97:98], v[99:100] offset1:8
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[149:152], v240
	ds_load_b128 v[141:144], v240 offset:2048
	ds_load_b128 v[145:148], v204
	ds_load_b128 v[137:140], v204 offset:2048
	ds_load_b128 v[133:136], v205
	ds_load_b128 v[125:128], v205 offset:2048
	ds_load_b128 v[129:132], v206
	ds_load_b128 v[121:124], v206 offset:2048
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v101, v[161:164]
	ds_store_b128 v191, v[165:168]
	ds_store_b128 v192, v[153:156]
	ds_store_b128 v193, v[157:160]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[224:227], v102
	ds_load_b128 v[228:231], v194
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[65:72], v[224:231], v[216:223]
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[224:227], v195
	ds_load_b128 v[228:231], v196
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[73:80], v[224:231], v[216:223]
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[224:227], v197
	ds_load_b128 v[228:231], v198
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[216:223], v[81:88], v[224:231], v[216:223]
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[224:227], v199
	ds_load_b128 v[228:231], v200
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_wmma_f32_16x16x16_bf16 v[216:223], v[89:96], v[224:231], v[216:223]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v97, v216, v238
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v216, s62, v173
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v98, v217, v238
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_sub_f32_e32 v100, v219, v238
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s62, s62, 32
	v_add_nc_u32_e32 v217, s41, v216
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_dual_sub_f32 v99, v218, v238 :: v_dual_add_nc_u32 v216, s57, v216
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v176, v217
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s10, v176, v216
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s1, v207, v217
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s11, v207, v216
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s3, v208, v217
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s12, v208, v216
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s10, vcc_lo, s10
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s13, v209, v216
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 vcc_lo, s0, s10
	.loc	1 720 47 is_stmt 1              ; attention_backward.py:720:47
	v_dual_sub_f32 v102, v221, v238 :: v_dual_cndmask_b32 v219, 0, v103
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s1, s1, s11
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v221, v222, v238
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s1, s0, s1
	s_and_b32 s3, s3, s12
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v97, v219, v97
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s3, s0, s3
	.loc	1 679 30 is_stmt 0              ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s14, v210, v216
	v_cmp_le_i32_e64 s15, v211, v216
	v_cmp_le_i32_e64 s16, v212, v216
	.loc	1 721 38 is_stmt 1              ; attention_backward.py:721:38
	v_mul_f32_e32 v97, s31, v97
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s17, v213, v216
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s5, v209, v217
	v_cmp_ge_i32_e64 s6, v210, v217
	v_cmp_ge_i32_e64 s7, v211, v217
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v103, v97, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v97, v97
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s5, s5, s13
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s8, v212, v217
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s5, s0, s5
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v97, v97, v103, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v103, v108
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s9, v213, v217
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s6, s6, s14
	s_and_b32 s7, s7, s15
	s_and_b32 s6, s0, s6
	s_and_b32 s7, s0, s7
	s_and_b32 s8, s8, s16
	s_and_b32 s9, s9, s17
	s_and_b32 s8, s0, s8
	s_and_b32 s9, s0, s9
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v222, 0, v103, s1
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v97.l, 0x7fff, v97.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v219, v219
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_u32 s62, s59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v98, v222, v98
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v98, s31, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v103, v98, 16, 1
	v_cmp_o_f32_e64 s1, v98, v98
	v_add3_u32 v98, v98, v103, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v103, v232
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v216, 0, v103, s3
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v99, v216, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v99, s31, v99
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v103, v99, 16, 1
	v_cmp_o_f32_e64 s3, v99, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v99, v99, v103, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v103, v233
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v217, 0, v103, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_dual_mul_f32 v100, v217, v100 :: v_dual_sub_f32 v101, v220, v238
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v100, s31, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v103, v100, 16, 1
	v_cmp_o_f32_e64 s5, v100, v100
	v_add3_u32 v100, v100, v103, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v103, v234
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b16_e64 v234.h, v104.l
	v_mov_b16_e32 v104.l, v113.h
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v223, v223, v238
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b16_e64 v234.l, v113.l
	v_mov_b16_e32 v113.h, v105.l
	v_mov_b16_e32 v105.l, v114.h
	v_mov_b16_e32 v113.l, v114.l
	v_mov_b16_e32 v114.l, v118.l
	v_mov_b16_e32 v114.h, v110.l
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v224, 0, v103, s6
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b16_e32 v110.l, v118.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v101, v224, v101
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v101, s31, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v103, v101, 16, 1
	v_cmp_o_f32_e64 s6, v101, v101
	v_add3_u32 v101, v101, v103, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v103, v235
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b16_e64 v235.l, v117.l
	v_mov_b16_e64 v235.h, v109.l
	v_mov_b16_e32 v109.l, v117.h
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v97.h, 0x7fff, v101.h, s6
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s6, v224, v224
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v218, 0, v103, s7
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_dual_mul_f32 v102, v218, v102 :: v_dual_add_nc_u32 v225, 0, v179
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v102, s31, v102
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v103, v102, 16, 1
	v_cmp_o_f32_e64 s7, v102, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v102, v102, v103, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v103, v236
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v220, 0, v103, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v103, v220, v221
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v103, s31, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v108, v103, 16, 1
	v_cmp_o_f32_e64 s8, v103, v103
	v_add3_u32 v103, v103, v108, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v108, v237
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v221, 0, v108, s9
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v108, v221, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v108, s31, v108
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v223, v108, 16, 1
	v_cmp_o_f32_e64 s9, v108, v108
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v108, v108, v223, 0x7fff
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	v_add_nc_u32_e32 v223, 0, v177
	ds_store_b16 v223, v97
	ds_store_b16_d16_hi v223, v97 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v97.l, 0x7fff, v98.h, s1
	v_cndmask_b16 v97.h, 0x7fff, v102.h, s7
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s1, v222, v222
	v_cmp_o_f32_e64 s7, v218, v218
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v185, v97
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v97.l, 0x7fff, v99.h, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v185, v97 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v97.h, 0x7fff, v103.h, s8
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s3, v216, v216
	v_cmp_o_f32_e64 s8, v220, v220
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v186, v97
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v97.l, 0x7fff, v100.h, s5
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v186, v97 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v97.h, 0x7fff, v108.h, s9
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b32_e32 v108, v104
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v187, v97
	ds_store_b16_d16_hi v187, v97 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[226:229], v225
	ds_load_b128 v[230:233], v188
	ds_load_b128 v[97:100], v189
	ds_load_b128 v[101:104], v190
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b64 v239, v[234:235], v[108:109] offset1:8
	v_mov_b32_e32 v109, v105
	v_mov_b16_e32 v108.h, v106.l
	v_mov_b16_e32 v106.l, v115.h
	v_mov_b16_e32 v108.l, v115.l
	v_mov_b16_e32 v105.l, v116.l
	ds_store_2addr_b64 v201, v[113:114], v[109:110] offset1:8
	v_mov_b16_e32 v109.l, v119.l
	v_mov_b16_e32 v109.h, v111.l
	v_mov_b16_e32 v111.l, v119.h
	v_mov_b32_e32 v110, v106
	v_mov_b16_e32 v106.h, v112.l
	v_mov_b16_e32 v112.l, v120.h
	v_mov_b16_e32 v106.l, v120.l
	v_mov_b16_e32 v105.h, v107.l
	ds_store_2addr_b64 v202, v[108:109], v[110:111] offset1:8
	v_mov_b16_e32 v107.l, v116.h
	v_mov_b32_e32 v108, v112
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s5, v217, v217
	v_cmp_o_f32_e64 s9, v221, v221
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_store_2addr_b64 v203, v[105:106], v[107:108] offset1:8
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[109:112], v204
	ds_load_b128 v[105:108], v240
	ds_load_b128 v[113:116], v240 offset:2048
	ds_load_b128 v[117:120], v204 offset:2048
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[105:112], v[226:233], v[25:32]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[113:120], v[226:233], v[17:24]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[109:112], v206
	ds_load_b128 v[105:108], v205
	ds_load_b128 v[113:116], v205 offset:2048
	ds_load_b128 v[117:120], v206 offset:2048
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[105:112], v[97:104], v[25:32]
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b16_e32 v105.l, 0
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[17:24], v[113:120], v[97:104], v[17:24]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v97, v219, 16, 1
	v_bfe_u32 v101, v224, 16, 1
	v_bfe_u32 v98, v222, 16, 1
	v_bfe_u32 v102, v218, 16, 1
	v_bfe_u32 v99, v216, 16, 1
	v_add3_u32 v97, v219, v97, 0x7fff
	v_bfe_u32 v100, v217, 16, 1
	v_bfe_u32 v103, v220, 16, 1
	v_bfe_u32 v104, v221, 16, 1
	v_add3_u32 v101, v224, v101, 0x7fff
	v_add3_u32 v98, v222, v98, 0x7fff
	v_add3_u32 v102, v218, v102, 0x7fff
	v_add3_u32 v99, v216, v99, 0x7fff
	v_add3_u32 v100, v217, v100, 0x7fff
	v_add3_u32 v103, v220, v103, 0x7fff
	v_add3_u32 v104, v221, v104, 0x7fff
	v_cndmask_b16 v105.h, 0x7fff, v97.h, vcc_lo
	v_cndmask_b16 v117.h, 0x7fff, v101.h, s6
	v_cndmask_b16 v114.h, 0x7fff, v98.h, s1
	v_cndmask_b16 v118.h, 0x7fff, v102.h, s7
	v_cndmask_b16 v115.h, 0x7fff, v99.h, s3
	v_cndmask_b16 v116.h, 0x7fff, v100.h, s5
	v_cndmask_b16 v119.h, 0x7fff, v103.h, s8
	v_cndmask_b16 v120.h, 0x7fff, v104.h, s9
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v223, v105
	ds_store_b16_d16_hi v223, v117 offset:512
	ds_store_b16_d16_hi v185, v114
	ds_store_b16_d16_hi v185, v118 offset:512
	ds_store_b16_d16_hi v186, v115
	ds_store_b16_d16_hi v186, v119 offset:512
	ds_store_b16_d16_hi v187, v116
	ds_store_b16_d16_hi v187, v120 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[106:109], v225
	ds_load_b128 v[110:113], v188
	ds_load_b128 v[97:100], v189
	ds_load_b128 v[101:104], v190
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v183, v[161:164]
	ds_store_b128 v183, v[165:168] offset:128
	ds_store_b128 v183, v[153:156] offset:256
	ds_store_b128 v183, v[157:160] offset:384
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v153, v219, v105
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e32 v117.l, v105.l
	v_mov_b16_e32 v114.l, v105.l
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v154, v153, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v153, v153
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e32 v120.l, v105.l
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v117, v224, v117 :: v_dual_sub_f32 v114, v222, v114
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v153, v153, v154, 0x7fff
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	ds_load_u16_d16 v155, v178 offset:512
	ds_load_u16_d16 v156, v178 offset:768
	ds_load_u16_d16 v159, v178 offset:1536
	ds_load_u16_d16 v160, v178 offset:1792
	ds_load_u16_d16 v166, v178 offset:1344
	ds_load_u16_d16 v165, v178 offset:1088
	ds_load_u16_d16 v157, v178 offset:1024
	ds_load_u16_d16 v158, v178 offset:1280
	ds_load_u16_d16 v163, v178 offset:576
	ds_load_u16_d16 v164, v178 offset:832
	ds_load_u16_d16 v162, v178 offset:320
	ds_load_u16_d16 v229, v178 offset:2816
	ds_load_u16_d16 v232, v178 offset:3584
	ds_load_u16_d16 v233, v178 offset:3840
	ds_load_u16_d16 v241, v178 offset:3904
	ds_load_u16_d16 v236, v178 offset:2624
	ds_load_u16_d16 v235, v178 offset:2368
	ds_load_u16_d16 v234, v178 offset:2112
	ds_load_u16_d16 v230, v178 offset:3072
	ds_load_u16_d16 v237, v178 offset:2880
	ds_load_u16_d16 v226, v178 offset:2048
	ds_load_u16_d16 v227, v178 offset:2304
	ds_load_u16_d16 v228, v178 offset:2560
	ds_load_u16_d16 v167, v178 offset:1600
	ds_load_u16_d16 v168, v178 offset:1856
	ds_load_u16_d16 v238, v178 offset:3136
	ds_load_u16_d16 v240, v178 offset:3648
	ds_load_u16_d16 v239, v178 offset:3392
	ds_load_u16_d16 v153, v178
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v115.l, v105.l
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_bfe_u32 v154, v117, 16, 1
	v_cmp_o_f32_e64 s1, v117, v117
	v_cmp_o_f32_e64 s3, v114, v114
	s_waitcnt lgkmcnt(0)
	v_cndmask_b16 v105.h, 0x7fff, v153.h, vcc_lo
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v116.l, v105.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v117, v117, v154, 0x7fff
	v_bfe_u32 v154, v114, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v119.l, v105.l
	v_mov_b16_e32 v118.l, v105.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v114, v114, v154, 0x7fff
	v_cndmask_b16 v114.l, 0x7fff, v117.h, s1
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	ds_load_u16_d16_hi v157, v178 offset:1152
	ds_load_u16_d16_hi v158, v178 offset:1408
	ds_load_u16_d16_hi v164, v178 offset:960
	ds_load_u16_d16 v154, v178 offset:256
	ds_load_u16_d16 v161, v178 offset:64
	ds_load_u16_d16_hi v241, v178 offset:4032
	ds_load_u16_d16 v231, v178 offset:3328
	ds_load_u16_d16_hi v155, v178 offset:640
	ds_load_u16_d16_hi v156, v178 offset:896
	ds_load_u16_d16_hi v159, v178 offset:1664
	ds_load_u16_d16_hi v166, v178 offset:1472
	ds_load_u16_d16_hi v165, v178 offset:1216
	ds_load_u16_d16_hi v232, v178 offset:3712
	ds_load_u16_d16_hi v233, v178 offset:3968
	ds_load_u16_d16_hi v160, v178 offset:1920
	ds_load_u16_d16_hi v226, v178 offset:2176
	ds_load_u16_d16_hi v168, v178 offset:1984
	ds_load_u16_d16_hi v167, v178 offset:1728
	ds_load_u16_d16_hi v227, v178 offset:2432
	ds_load_u16_d16_hi v228, v178 offset:2688
	ds_load_u16_d16_hi v229, v178 offset:2944
	ds_load_u16_d16_hi v236, v178 offset:2752
	ds_load_u16_d16_hi v235, v178 offset:2496
	ds_load_u16_d16_hi v234, v178 offset:2240
	ds_load_u16_d16_hi v230, v178 offset:3200
	ds_load_u16_d16_hi v237, v178 offset:3008
	ds_load_u16_d16_hi v153, v178 offset:128
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v154, v178 offset:384
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v161, v178 offset:192
	ds_load_u16_d16_hi v163, v178 offset:704
	ds_load_u16_d16_hi v162, v178 offset:448
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v231, v178 offset:3456
	ds_load_u16_d16_hi v238, v178 offset:3264
	ds_load_u16_d16_hi v240, v178 offset:3776
	ds_load_u16_d16_hi v239, v178 offset:3520
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16_d16_hi v223, v105
	ds_store_b16 v223, v114 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v105.h, 0x7fff, v114.h, s3
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_dual_sub_f32 v114, v216, v115 :: v_dual_sub_f32 v115, v217, v116
	v_dual_sub_f32 v117, v220, v119 :: v_dual_sub_f32 v116, v218, v118
	v_sub_f32_e32 v118, v221, v120
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v119, v114, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v114, v114
	v_cmp_o_f32_e64 s1, v115, v115
	v_cmp_o_f32_e64 s3, v116, v116
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v120, 0xffff0000, v152
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v114, v114, v119, 0x7fff
	v_bfe_u32 v119, v115, 16, 1
	v_cmp_o_f32_e64 s5, v117, v117
	v_cmp_o_f32_e64 s6, v118, v118
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[153:160], v[106:113], v[1:8]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[161:168], v[106:113], v[9:16]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v115, v115, v119, 0x7fff
	v_bfe_u32 v119, v116, 16, 1
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v115.l, v105.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[226:233], v[97:104], v[1:8]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[234:241], v[97:104], v[9:16]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v116, v116, v119, 0x7fff
	v_bfe_u32 v119, v117, 16, 1
	v_cndmask_b16 v114.l, 0x7fff, v116.h, s3
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v117, v117, v119, 0x7fff
	v_bfe_u32 v119, v118, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v185, v105
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v105.h, 0x7fff, v114.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v185, v114 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v114.l, 0x7fff, v117.h, s5
	v_add3_u32 v118, v118, v119, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v116, 0xffff0000, v150
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v186, v105
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v105.h, 0x7fff, v115.h, s1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v186, v114 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v114.l, 0x7fff, v118.h, s6
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v187, v105
	ds_store_b16 v187, v114 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[216:219], v225
	ds_load_b128 v[220:223], v188
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v115.h, v149.l
	v_mov_b16_e64 v117.h, v150.l
	v_and_b32_e32 v150, 0xffff0000, v145
	v_and_b32_e32 v114, 0xffff0000, v149
	v_mov_b16_e64 v119.h, v151.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v115, v115, v115
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v119.l, v105.l
	v_mov_b16_e32 v117.l, v105.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v114, v114, v114
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v149.h, v152.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v115, v115
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v119, v119, v119
	v_dual_sub_f32 v117, v117, v117 :: v_dual_and_b32 v152, 0xffff0000, v147
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v149.l, v105.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s1, v114, v114
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v118, 0xffff0000, v151
	v_mov_b16_e64 v145.h, v145.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v116, v116, v116 :: v_dual_and_b32 v151, 0xffff0000, v146
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[153:160], v[216:223], v[1:8]
	ds_load_b128 v[153:156], v189
	ds_load_b128 v[157:160], v190
	v_wmma_f32_16x16x16_bf16 v[9:16], v[161:168], v[216:223], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v149, v149, v149
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v145.l, v105.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v117, v117
	v_cmp_o_f32_e64 s5, v116, v116
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v147.h, v147.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v118, v118, v118 :: v_dual_sub_f32 v145, v145, v145
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v147.l, v105.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v119, v119
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v120, v120, v120
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s7, v118, v118
	v_cmp_o_f32_e64 s8, v149, v149
	v_cmp_o_f32_e64 s10, v145, v145
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v146.h, v146.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s9, v120, v120
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v146.l, v105.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v105.h, v105.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[226:233], v[153:160], v[1:8]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[234:241], v[153:160], v[9:16]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v154.h, v105.l
	v_mov_b16_e64 v154.l, v115.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v153, 0xffff0000, v148
	v_mov_b16_e64 v148.h, v148.l
	v_mov_b16_e64 v148.l, v105.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v154, 1, v154
	v_add3_u32 v115, v115, v154, 0x7fff
	v_mov_b16_e64 v154.h, v105.l
	v_mov_b16_e64 v154.l, v114.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v115.l, v105.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v154, 1, v154
	v_add3_u32 v114, v114, v154, 0x7fff
	v_mov_b16_e64 v154.h, v105.l
	v_mov_b16_e64 v154.l, v117.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v154, 1, v154
	v_add3_u32 v117, v117, v154, 0x7fff
	v_mov_b16_e64 v154.h, v105.l
	v_mov_b16_e64 v154.l, v116.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v117.l, v105.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v154, 1, v154
	v_add3_u32 v116, v116, v154, 0x7fff
	v_mov_b16_e64 v154.h, v105.l
	v_mov_b16_e64 v154.l, v119.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v154, 1, v154
	v_add3_u32 v119, v119, v154, 0x7fff
	v_mov_b16_e64 v154.h, v105.l
	v_mov_b16_e64 v154.l, v118.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v119.l, v105.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v154, 1, v154
	v_add3_u32 v118, v118, v154, 0x7fff
	v_mov_b16_e64 v154.h, v105.l
	v_mov_b16_e64 v154.l, v149.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v154, 1, v154
	v_add3_u32 v149, v149, v154, 0x7fff
	v_mov_b16_e64 v154.h, v105.l
	v_mov_b16_e64 v154.l, v120.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v154, 1, v154
	v_add3_u32 v120, v120, v154, 0x7fff
	v_mov_b16_e64 v154.h, v105.l
	v_mov_b16_e64 v154.l, v145.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v154, 1, v154
	v_add3_u32 v154, v145, v154, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v145, v150, v150
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v150.h, v105.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v149.l, 0x7fff, v154.h, s10
	v_mov_b16_e64 v150.l, v145.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s11, v145, v145
	v_and_b32_e32 v150, 1, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v150, v145, v150, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v145, v146, v146
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v146.h, v105.l
	v_mov_b16_e64 v146.l, v145.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s12, v145, v145
	v_and_b32_e32 v146, 1, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v155, v145, v146, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v145, v151, v151
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v146.h, v105.l
	v_cndmask_b16 v150.l, 0x7fff, v155.h, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v146.l, v145.h
	v_cmp_o_f32_e64 s13, v145, v145
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v146, 1, v146
	v_add3_u32 v151, v145, v146, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v145, v147, v147
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v146.h, v105.l
	v_cndmask_b16 v147.h, 0x7fff, v118.h, s7
	v_cndmask_b16 v147.l, 0x7fff, v119.h, s6
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v118, 0xffff0000, v143
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v146.l, v145.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v119.h, v143.l
	v_and_b32_e32 v143, 0xffff0000, v138
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s14, v145, v145
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v118, v118, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v119, v119, v119 :: v_dual_and_b32 v146, 1, v146
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v138.h, v138.l
	v_mov_b16_e64 v138.l, v105.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s7, v118, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v156, v145, v146, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v145, v152, v152
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v146.h, v105.l
	v_cmp_o_f32_e64 s6, v119, v119
	v_cndmask_b16 v151.l, 0x7fff, v156.h, s14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e64 v146.l, v145.h
	v_cmp_o_f32_e64 s15, v145, v145
	v_and_b32_e32 v146, 1, v146
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v152, v145, v146, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v145, v148, v148
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v146.h, v105.l
	v_cndmask_b16 v148.h, 0x7fff, v120.h, s9
	v_cndmask_b16 v148.l, 0x7fff, v149.h, s8
	v_cndmask_b16 v149.h, 0x7fff, v150.h, s11
	v_mov_b16_e64 v146.l, v145.h
	v_cmp_o_f32_e64 s16, v145, v145
	v_cndmask_b16 v150.h, 0x7fff, v151.h, s13
	v_cndmask_b16 v151.h, 0x7fff, v152.h, s15
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v120, 0xffff0000, v144
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v146, 1, v146
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v120, v120, v120
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v157, v145, v146, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v145, v153, v153
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v146.h, v105.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s9, v120, v120
	v_cndmask_b16 v152.l, 0x7fff, v157.h, s16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e64 v146.l, v145.h
	v_cmp_o_f32_e64 s17, v145, v145
	v_and_b32_e32 v146, 1, v146
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v153, v145, v146, 0x7fff
	v_cndmask_b16 v145.l, 0x7fff, v115.h, vcc_lo
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v115.h, v141.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v145.h, 0x7fff, v114.h, s1
	v_cndmask_b16 v146.h, 0x7fff, v116.h, s5
	v_cndmask_b16 v146.l, 0x7fff, v117.h, s3
	v_cndmask_b16 v152.h, 0x7fff, v153.h, s17
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v115, v115, v115 :: v_dual_and_b32 v114, 0xffff0000, v141
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v117.h, v142.l
	v_mov_b16_e64 v141.h, v144.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[145:152], v[106:113], v[1:8]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v146.h, v105.l
	v_mov_b16_e64 v146.l, v115.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v114, v114, v114 :: v_dual_and_b32 v145, 0xffff0000, v140
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v115, v115
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v117, v117, v117 :: v_dual_and_b32 v146, 1, v146
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v116, 0xffff0000, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s1, v114, v114
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v141.l, v105.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v117, v117
	v_add3_u32 v115, v115, v146, 0x7fff
	v_mov_b16_e64 v146.h, v105.l
	v_mov_b16_e64 v146.l, v114.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v116, v116, v116
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v115.l, v105.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v141, v141, v141
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v142, 0xffff0000, v137
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v146, 1, v146
	v_cmp_o_f32_e64 s5, v116, v116
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v137.h, v137.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s8, v141, v141
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v137.l, v105.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v114, v114, v146, 0x7fff
	v_mov_b16_e64 v146.h, v105.l
	v_mov_b16_e64 v146.l, v117.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v137, v137, v137 :: v_dual_and_b32 v144, 0xffff0000, v139
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v139.h, v139.l
	v_mov_b16_e64 v139.l, v105.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v146, 1, v146
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v140.h, v140.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s10, v137, v137
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v140.l, v105.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v117, v117, v146, 0x7fff
	v_mov_b16_e64 v146.h, v105.l
	v_mov_b16_e64 v146.l, v116.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v117.l, v105.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v146, 1, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v116, v116, v146, 0x7fff
	v_mov_b16_e64 v146.h, v105.l
	v_mov_b16_e64 v146.l, v119.h
	v_and_b32_e32 v146, 1, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v119, v119, v146, 0x7fff
	v_mov_b16_e64 v146.h, v105.l
	v_mov_b16_e64 v146.l, v118.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v119.l, v105.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v146, 1, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v118, v118, v146, 0x7fff
	v_mov_b16_e64 v146.h, v105.l
	v_mov_b16_e64 v146.l, v141.h
	v_and_b32_e32 v146, 1, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v141, v141, v146, 0x7fff
	v_mov_b16_e64 v146.h, v105.l
	v_mov_b16_e64 v146.l, v120.h
	v_and_b32_e32 v146, 1, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v120, v120, v146, 0x7fff
	v_mov_b16_e64 v146.h, v105.l
	v_mov_b16_e64 v146.l, v137.h
	v_and_b32_e32 v146, 1, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v146, v137, v146, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v137, v142, v142
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v142.h, v105.l
	v_cndmask_b16 v141.l, 0x7fff, v146.h, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v142.l, v137.h
	v_cmp_o_f32_e64 s11, v137, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v142, 1, v142
	v_add3_u32 v142, v137, v142, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v137, v138, v138
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v138.h, v105.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v138.l, v137.h
	v_cmp_o_f32_e64 s12, v137, v137
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v138, 1, v138
	v_add3_u32 v147, v137, v138, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v137, v143, v143
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v138.h, v105.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v142.l, 0x7fff, v147.h, s12
	v_mov_b16_e64 v138.l, v137.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s13, v137, v137
	v_and_b32_e32 v138, 1, v138
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v143, v137, v138, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v137, v139, v139
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v138.h, v105.l
	v_cndmask_b16 v139.h, 0x7fff, v118.h, s7
	v_cndmask_b16 v139.l, 0x7fff, v119.h, s6
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v119.h, v131.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v138.l, v137.h
	v_cmp_o_f32_e64 s14, v137, v137
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v118, 0xffff0000, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v119, v119, v119 :: v_dual_and_b32 v138, 1, v138
	v_sub_f32_e32 v118, v118, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v148, v137, v138, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v137, v144, v144
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v138.h, v105.l
	v_cndmask_b16 v143.l, 0x7fff, v148.h, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v138.l, v137.h
	v_cmp_o_f32_e64 s15, v137, v137
	v_cmp_o_f32_e64 s14, v119, v119
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v138, 1, v138
	v_add3_u32 v144, v137, v138, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v137, v140, v140
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v138.h, v105.l
	v_cndmask_b16 v140.h, 0x7fff, v120.h, s9
	v_cndmask_b16 v140.l, 0x7fff, v141.h, s8
	v_cndmask_b16 v141.h, 0x7fff, v142.h, s11
	v_mov_b16_e64 v138.l, v137.h
	v_cmp_o_f32_e64 s16, v137, v137
	v_cndmask_b16 v142.h, 0x7fff, v143.h, s13
	v_cndmask_b16 v143.h, 0x7fff, v144.h, s15
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v120, 0xffff0000, v132
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v138, 1, v138
	v_cmp_o_f32_e64 s15, v118, v118
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v120, v120, v120
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v149, v137, v138, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v137, v145, v145
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v138.h, v105.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v144.l, 0x7fff, v149.h, s16
	v_mov_b16_e64 v138.l, v137.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s17, v137, v137
	v_and_b32_e32 v138, 1, v138
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v145, v137, v138, 0x7fff
	v_cndmask_b16 v137.h, 0x7fff, v114.h, s1
	v_cndmask_b16 v137.l, 0x7fff, v115.h, vcc_lo
	v_cndmask_b16 v138.h, 0x7fff, v116.h, s5
	v_cndmask_b16 v138.l, 0x7fff, v117.h, s3
	v_cndmask_b16 v144.h, 0x7fff, v145.h, s17
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v116, 0xffff0000, v130
	v_mov_b16_e64 v117.h, v130.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v130.h, v105.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v115.h, v129.l
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[137:144], v[106:113], v[9:16]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v107.h, v133.l
	v_mov_b16_e32 v107.l, v105.l
	v_and_b32_e32 v106, 0xffff0000, v133
	v_mov_b16_e64 v109.h, v134.l
	v_mov_b16_e32 v109.l, v105.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v107, v107, v107 :: v_dual_and_b32 v108, 0xffff0000, v134
	v_sub_f32_e32 v106, v106, v106
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v111.h, v135.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v109, v109, v109 :: v_dual_sub_f32 v108, v108, v108
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e64 v130.l, v107.h
	v_cmp_o_f32_e32 vcc_lo, v107, v107
	v_cmp_o_f32_e64 s1, v106, v106
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v109, v109
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v111.l, v105.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v130, 1, v130
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v110, 0xffff0000, v135
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s5, v108, v108
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v113.h, v136.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v111, v111, v111
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v107, v107, v130, 0x7fff
	v_mov_b16_e64 v130.h, v105.l
	v_mov_b16_e64 v130.l, v106.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v110, v110, v110
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v111, v111
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v113.l, v105.l
	v_and_b32_e32 v112, 0xffff0000, v136
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v130, 1, v130
	v_cmp_o_f32_e64 s7, v110, v110
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v115, v115, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v113, v113, v113 :: v_dual_sub_f32 v112, v112, v112
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v106, v106, v130, 0x7fff
	v_mov_b16_e64 v130.h, v105.l
	v_mov_b16_e64 v130.l, v109.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s8, v113, v113
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v114, 0xffff0000, v129
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s9, v112, v112
	v_cmp_o_f32_e64 s10, v115, v115
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v117, v117, v117 :: v_dual_and_b32 v130, 1, v130
	v_sub_f32_e32 v114, v114, v114
	v_sub_f32_e32 v116, v116, v116
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v129.h, v132.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v109, v109, v130, 0x7fff
	v_mov_b16_e64 v130.h, v105.l
	v_mov_b16_e64 v130.l, v108.h
	v_cmp_o_f32_e64 s11, v114, v114
	v_cmp_o_f32_e64 s12, v117, v117
	v_cmp_o_f32_e64 s13, v116, v116
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v129.l, v105.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v130, 1, v130
	v_cmp_o_f32_e64 s17, v120, v120
	v_cndmask_b16 v106.h, 0x7fff, v106.h, s1
	v_cndmask_b16 v106.l, 0x7fff, v107.h, vcc_lo
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v129, v129, v129
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v108, v108, v130, 0x7fff
	v_mov_b16_e64 v130.h, v105.l
	v_mov_b16_e64 v130.l, v111.h
	v_cndmask_b16 v107.l, 0x7fff, v109.h, s3
	v_cmp_o_f32_e64 s16, v129, v129
	v_cndmask_b16 v107.h, 0x7fff, v108.h, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v130, 1, v130
	v_add3_u32 v111, v111, v130, 0x7fff
	v_mov_b16_e64 v130.h, v105.l
	v_mov_b16_e64 v130.l, v110.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v108.l, 0x7fff, v111.h, s6
	v_and_b32_e32 v130, 1, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v110, v110, v130, 0x7fff
	v_mov_b16_e64 v130.h, v105.l
	v_mov_b16_e64 v130.l, v113.h
	v_cndmask_b16 v108.h, 0x7fff, v110.h, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v130, 1, v130
	v_add3_u32 v113, v113, v130, 0x7fff
	v_mov_b16_e64 v130.h, v105.l
	v_mov_b16_e64 v130.l, v112.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v109.l, 0x7fff, v113.h, s8
	v_and_b32_e32 v130, 1, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v112, v112, v130, 0x7fff
	v_mov_b16_e64 v130.h, v105.l
	v_mov_b16_e64 v130.l, v115.h
	v_cndmask_b16 v109.h, 0x7fff, v112.h, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v130, 1, v130
	v_add3_u32 v115, v115, v130, 0x7fff
	v_mov_b16_e64 v130.h, v105.l
	v_mov_b16_e64 v130.l, v114.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v115.l, v105.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v110.l, 0x7fff, v115.h, s10
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v115.h, v121.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v115, v115, v115 :: v_dual_and_b32 v130, 1, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v114, v114, v130, 0x7fff
	v_mov_b16_e64 v130.h, v105.l
	v_mov_b16_e64 v130.l, v117.h
	v_cmp_o_f32_e64 s10, v115, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v110.h, 0x7fff, v114.h, s11
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v114, 0xffff0000, v121
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v130, 1, v130
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v121.h, v124.l
	v_mov_b16_e32 v121.l, v105.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v114, v114, v114
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v117, v117, v130, 0x7fff
	v_mov_b16_e64 v130.h, v105.l
	v_mov_b16_e64 v130.l, v116.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v117.l, v105.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s11, v114, v114
	v_cndmask_b16 v111.l, 0x7fff, v117.h, s12
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v117.h, v122.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v121, v121, v121 :: v_dual_and_b32 v130, 1, v130
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_sub_f32_e32 v117, v117, v117
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v116, v116, v130, 0x7fff
	v_mov_b16_e64 v130.h, v105.l
	v_mov_b16_e64 v130.l, v119.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s12, v117, v117
	v_cndmask_b16 v111.h, 0x7fff, v116.h, s13
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v116, 0xffff0000, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v130, 1, v130
	v_mov_b16_e32 v122.h, v105.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v116, v116, v116
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v119, v119, v130, 0x7fff
	v_mov_b16_e64 v130.h, v105.l
	v_mov_b16_e64 v130.l, v118.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v119.l, v105.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v116, v116
	v_cndmask_b16 v112.l, 0x7fff, v119.h, s14
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v119.h, v123.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v119, v119, v119 :: v_dual_and_b32 v130, 1, v130
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v118, v118, v130, 0x7fff
	v_mov_b16_e64 v130.h, v105.l
	v_mov_b16_e64 v130.l, v129.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s14, v119, v119
	v_cndmask_b16 v112.h, 0x7fff, v118.h, s15
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v118, 0xffff0000, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v130, 1, v130
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v118, v118, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v129, v129, v130, 0x7fff
	v_mov_b16_e64 v130.h, v105.l
	v_mov_b16_e64 v130.l, v120.h
	v_cmp_o_f32_e64 s15, v118, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v113.l, 0x7fff, v129.h, s16
	v_cmp_o_f32_e64 s16, v121, v121
	v_and_b32_e32 v130, 1, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v120, v120, v130, 0x7fff
	v_cndmask_b16 v113.h, 0x7fff, v120.h, s17
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v120, 0xffff0000, v124
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[106:113], v[97:104], v[1:8]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v107.h, v125.l
	v_mov_b16_e32 v107.l, v105.l
	v_and_b32_e32 v106, 0xffff0000, v125
	v_mov_b16_e32 v109.h, v126.l
	v_mov_b16_e32 v109.l, v105.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v107, v107, v107 :: v_dual_and_b32 v108, 0xffff0000, v126
	v_sub_f32_e32 v106, v106, v106
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v111.h, v127.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v109, v109, v109 :: v_dual_sub_f32 v108, v108, v108
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e32 v122.l, v107.h
	v_cmp_o_f32_e32 vcc_lo, v107, v107
	v_cmp_o_f32_e64 s1, v106, v106
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v109, v109
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v111.l, v105.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v122, 1, v122
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v110, 0xffff0000, v127
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s5, v108, v108
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v113.h, v128.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v111, v111, v111
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v107, v107, v122, 0x7fff
	v_mov_b16_e32 v122.h, v105.l
	v_mov_b16_e32 v122.l, v106.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v110, v110, v110
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v111, v111
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v113.l, v105.l
	v_and_b32_e32 v112, 0xffff0000, v128
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v122, 1, v122
	v_cmp_o_f32_e64 s7, v110, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v120, v120, v120 :: v_dual_sub_f32 v113, v113, v113
	v_sub_f32_e32 v112, v112, v112
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v106, v106, v122, 0x7fff
	v_mov_b16_e32 v122.h, v105.l
	v_mov_b16_e32 v122.l, v109.h
	v_cmp_o_f32_e64 s8, v113, v113
	v_cmp_o_f32_e64 s9, v112, v112
	v_cmp_o_f32_e64 s17, v120, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v122, 1, v122
	v_add3_u32 v109, v109, v122, 0x7fff
	v_mov_b16_e32 v122.h, v105.l
	v_mov_b16_e32 v122.l, v108.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v106.l, 0x7fff, v109.h, s3
	v_and_b32_e32 v122, 1, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v108, v108, v122, 0x7fff
	v_mov_b16_e32 v122.h, v105.l
	v_mov_b16_e32 v122.l, v111.h
	v_and_b32_e32 v122, 1, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v111, v111, v122, 0x7fff
	v_mov_b16_e32 v122.h, v105.l
	v_mov_b16_e32 v122.l, v110.h
	v_cndmask_b16 v107.l, 0x7fff, v111.h, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v122, 1, v122
	v_add3_u32 v110, v110, v122, 0x7fff
	v_mov_b16_e32 v122.h, v105.l
	v_mov_b16_e32 v122.l, v113.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v122, 1, v122
	v_add3_u32 v113, v113, v122, 0x7fff
	v_mov_b16_e32 v122.h, v105.l
	v_mov_b16_e32 v122.l, v112.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v108.l, 0x7fff, v113.h, s8
	v_and_b32_e32 v122, 1, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v112, v112, v122, 0x7fff
	v_mov_b16_e32 v122.h, v105.l
	v_mov_b16_e32 v122.l, v115.h
	v_and_b32_e32 v122, 1, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v115, v115, v122, 0x7fff
	v_mov_b16_e32 v122.h, v105.l
	v_mov_b16_e32 v122.l, v114.h
	v_cndmask_b16 v109.l, 0x7fff, v115.h, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v122, 1, v122
	v_add3_u32 v114, v114, v122, 0x7fff
	v_mov_b16_e32 v122.h, v105.l
	v_mov_b16_e32 v122.l, v117.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v109.h, 0x7fff, v114.h, s11
	v_and_b32_e32 v122, 1, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v117, v117, v122, 0x7fff
	v_mov_b16_e32 v122.h, v105.l
	v_mov_b16_e32 v122.l, v116.h
	v_cndmask_b16 v110.l, 0x7fff, v117.h, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v122, 1, v122
	v_add3_u32 v116, v116, v122, 0x7fff
	v_mov_b16_e32 v122.h, v105.l
	v_mov_b16_e32 v122.l, v119.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v122, 1, v122
	v_add3_u32 v119, v119, v122, 0x7fff
	v_mov_b16_e32 v122.h, v105.l
	v_mov_b16_e32 v122.l, v118.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v111.l, 0x7fff, v119.h, s14
	v_and_b32_e32 v122, 1, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v118, v118, v122, 0x7fff
	v_mov_b16_e32 v122.h, v105.l
	v_mov_b16_e32 v122.l, v121.h
	v_mov_b16_e32 v105.l, v120.h
	v_cndmask_b16 v111.h, 0x7fff, v118.h, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v122, 1, v122
	v_and_b32_e32 v105, 1, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v121, v121, v122, 0x7fff
	v_add3_u32 v120, v120, v105, 0x7fff
	v_cndmask_b16 v105.h, 0x7fff, v106.h, s1
	v_cndmask_b16 v105.l, 0x7fff, v107.h, vcc_lo
	v_cndmask_b16 v106.h, 0x7fff, v108.h, s5
	v_cndmask_b16 v107.h, 0x7fff, v110.h, s7
	v_cndmask_b16 v108.h, 0x7fff, v112.h, s9
	v_cndmask_b16 v110.h, 0x7fff, v116.h, s13
	v_cndmask_b16 v112.h, 0x7fff, v120.h, s17
	v_cndmask_b16 v112.l, 0x7fff, v121.h, s16
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[105:112], v[97:104], v[9:16]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc1 .LBB0_4
	s_branch .LBB0_1
.LBB0_5:
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v43, s18, v174
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v0, v175, v0
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v33, s34, v174
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
	v_add_lshl_u32 v49, v49, s30, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v45, 8, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v51, v43, v48
	v_add_nc_u32_e32 v52, v43, v46
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	v_add_lshl_u32 v50, v50, s30, 2
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
	v_add_lshl_u32 v51, v51, s30, 2
	buffer_store_b32 v25, v49, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v50, s2
	v_add_lshl_u32 v49, v52, s30, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v54, v43, v44
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v33, 32, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v55, v43, v42
	v_add_nc_u32_e32 v56, v43, v41
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v50, 0x80000000, v51, s2
	v_add_lshl_u32 v51, v53, s30, 2
	buffer_store_b32 v26, v25, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v49, s2
	v_add_lshl_u32 v52, v54, s30, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s0, s19, v0
	v_cmp_gt_i32_e64 s1, s19, v33
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s3, s18, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v27, v50, s[4:7], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v51, s2
	v_add_lshl_u32 v49, v55, s30, 2
	buffer_store_b32 v28, v25, s[4:7], 0 offen
	v_add_lshl_u32 v25, v56, s30, 2
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
	v_add_lshl_u32 v27, v57, s30, 2
	v_add_lshl_u32 v28, v58, s30, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v36, 42, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v29, v59, s30, 2
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
	v_mul_lo_u32 v27, s19, v174
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v62, v43, v36
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v28, 0x80000000, v29, s2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v63, v43, v35
	v_add_nc_u32_e32 v43, v43, v34
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v17, v60, s30, 2
	s_clause 0x1
	buffer_store_b32 v18, v26, s[4:7], 0 offen
	buffer_store_b32 v19, v28, s[4:7], 0 offen
	v_add_lshl_u32 v18, v61, s30, 2
	v_add_lshl_u32 v19, v62, s30, 2
	v_add_lshl_u32 v25, v63, s30, 2
	v_add_lshl_u32 v26, v43, s30, 2
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
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
		.amdhsa_next_free_vgpr 242
		.amdhsa_next_free_sgpr 63
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 242
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 63
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11172
; TotalNumSgprs: 65
; NumVgprs: 242
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 65
; NumVGPRsForWavesPerEU: 242
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 0
    .sgpr_count:     65
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     242
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
