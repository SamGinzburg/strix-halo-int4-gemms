	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[18:19], s[0:1], 0x74
.Ltmp0:
	.loc	1 514 33 prologue_end           ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v9, 3, v0
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_and_b32_e32 v23, 7, v0
	s_clause 0x1
	s_load_b128 s[44:47], s[0:1], 0x0
	s_load_b64 s[8:9], s[0:1], 0x10
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s34, s2, 4
	.loc	1 533 24                        ; attention_backward.py:533:24
	s_lshl_b32 s2, s3, 11
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_lshlrev_b32_e32 v22, 3, v23
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_add_i32 s5, s2, s34
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v2, s34, v9
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	.loc	1 514 33 is_stmt 0              ; attention_backward.py:514:33
	v_and_b32_e32 v24, 56, v0
	.loc	1 534 24 is_stmt 1              ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v33, 4, v0
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v2
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_mov_b32 s10, s50
	s_mov_b32 s11, s51
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v10, 1, v24
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_u32 v173, v0, 4, 1
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_bfe_i32 v36, v0, 5, 1
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s18, v9
	s_mul_i32 s30, s18, s5
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_cmp_gt_i32_e64 s2, s18, v22
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_lshl_b32 s4, s18, 3
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_and_b32 s49, s47, 0xffff
	s_mov_b32 s48, s46
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_mul_lo_u32 v9, s19, v9
	s_mul_i32 s33, s19, s5
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add3_u32 v1, s30, v22, v1
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xad_u32 v73, v33, v10, 0
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_lshl_b32 s5, s19, 3
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_and_b32 s9, s9, 0xffff
	v_bfe_i32 v38, v0, 3, 1
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v2, 1, v1
	v_add_lshl_u32 v1, v1, s4, 1
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s4, vcc_lo, s2
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add3_u32 v9, s33, v22, v9
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v39, s34, v173
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_cndmask_b32_e64 v5, 0x80000000, v1, s4
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s4, s19, v22
	s_clause 0x2
	s_load_b32 s31, s[0:1], 0x7c
	s_load_b64 s[28:29], s[0:1], 0x58
	s_load_b256 s[36:43], s[0:1], 0x38
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_clause 0x1
	buffer_load_b128 v[1:4], v2, s[48:51], 0 offen
	buffer_load_b128 v[5:8], v5, s[48:51], 0 offen
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s0, 0x800, v39
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, vcc_lo, s4
	s_mov_b32 s20, 0
	s_lshl_b32 s35, s3, 12
	s_mov_b32 s21, s20
	s_mov_b32 s22, s20
	s_mov_b32 s23, s20
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	s_mov_b32 s26, s20
	s_mov_b32 s27, s20
	s_mov_b32 s54, s50
	s_mov_b32 s55, s51
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s46, s50
	s_mov_b32 s47, s51
	.loc	1 672 31                        ; attention_backward.py:672:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s56, s31, 0x3fb8aa3b
	s_mov_b32 s1, s20
	s_and_b32 s39, s39, 0xffff
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s52, s40
	s_mov_b32 s53, s41
	s_mov_b32 s48, s38
	s_mov_b32 s49, s39
	s_mov_b32 s38, s50
	s_mov_b32 s39, s51
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(1)
	ds_store_b128 v73, v[1:4]
	s_waitcnt vmcnt(0)
	ds_store_b128 v73, v[5:8] offset:1024
	v_mov_b32_e32 v1, 0
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v11, 1, v9
	v_add_lshl_u32 v9, v9, s5, 1
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v4, v1
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v10, 0x80000000, v11 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	v_dual_mov_b32 v7, v1 :: v_dual_and_b32 v172, 15, v0
	s_clause 0x1
	buffer_load_b128 v[65:68], v10, s[8:11], 0 offen
	buffer_load_b128 v[69:72], v9, s[8:11], 0 offen
	v_dual_mov_b32 v9, v1 :: v_dual_and_b32 v34, 16, v0
	v_dual_mov_b32 v6, v1 :: v_dual_and_b32 v35, 32, v0
	v_dual_mov_b32 v8, v1 :: v_dual_lshlrev_b32 v37, 6, v0
	v_dual_mov_b32 v11, v1 :: v_dual_lshlrev_b32 v0, 3, v0
	v_mov_b32_e32 v2, v1
	v_dual_mov_b32 v10, v1 :: v_dual_and_b32 v33, 48, v33
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v12, v1 :: v_dual_and_b32 v43, 48, v0
	v_dual_mov_b32 v13, v1 :: v_dual_lshlrev_b32 v40, 4, v23
	v_dual_mov_b32 v14, v1 :: v_dual_lshlrev_b32 v45, 1, v172
	v_dual_mov_b32 v25, v1 :: v_dual_and_b32 v36, 0x420, v36
	v_dual_mov_b32 v27, v1 :: v_dual_lshlrev_b32 v34, 2, v34
	v_mov_b32_e32 v3, v1
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_lshrrev_b32_e32 v41, 1, v24
	v_lshl_add_u32 v44, v24, 6, 0
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshl_or_b32 v39, v172, 7, v40
	v_xor_b32_e32 v24, v33, v24
	v_lshl_or_b32 v33, v23, 6, v43
	v_and_or_b32 v36, 0x210, v38, v36
	v_or3_b32 v175, v45, v34, v35
	v_lshl_or_b32 v177, v172, 6, v43
	v_dual_mov_b32 v15, v1 :: v_dual_and_b32 v42, 0x240, v38
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_lshrrev_b32_e32 v0, 1, v35
	v_and_or_b32 v37, 0xc00, v37, v40
	v_add3_u32 v176, 0, v35, v45
	v_lshl_or_b32 v179, v23, 9, v24
	v_xor_b32_e32 v180, v36, v33
	v_lshl_or_b32 v181, v35, 6, v39
	v_xor_b32_e32 v23, 0x90, v175
	v_xor_b32_e32 v33, 0x1b0, v175
	v_xor_b32_e32 v34, 16, v177
	v_xor_b32_e32 v35, 32, v177
	v_xor_b32_e32 v36, 48, v177
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v28, v1
	v_dual_mov_b32 v29, v1 :: v_dual_add_nc_u32 v174, v44, v40
	v_dual_mov_b32 v31, v1 :: v_dual_add_nc_u32 v74, 0, v39
	v_dual_mov_b32 v19, v1 :: v_dual_add_nc_u32 v184, 0, v33
	v_dual_mov_b32 v21, v1 :: v_dual_add_nc_u32 v186, 0, v35
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xad_u32 v75, v39, 16, 0
	v_xad_u32 v76, v39, 32, 0
	v_xad_u32 v77, v39, 48, 0
	v_xad_u32 v81, v39, 64, 0
	v_xad_u32 v85, 0x50, v39, 0
	v_xad_u32 v89, 0x60, v39, 0
	v_xad_u32 v93, 0x70, v39, 0
	v_xor_b32_e32 v178, v37, v42
	v_mad_u64_u32 v[165:166], null, s18, v41, v[22:23]
	v_mad_u64_u32 v[167:168], null, s19, v41, v[22:23]
	v_add_nc_u32_e32 v185, 0, v34
	v_add_nc_u32_e32 v187, 0, v36
	v_xor_b32_e32 v33, 16, v181
	v_xor_b32_e32 v34, 32, v181
	v_xor_b32_e32 v35, 48, v181
	v_xor_b32_e32 v36, 64, v181
	v_xor_b32_e32 v37, 0x50, v181
	v_xor_b32_e32 v38, 0x60, v181
	v_xor_b32_e32 v39, 0x70, v181
	v_xor_b32_e32 v40, 0x90, v179
	v_xor_b32_e32 v41, 0x120, v179
	v_xor_b32_e32 v42, 0x1b0, v179
	v_xor_b32_e32 v43, 16, v180
	v_dual_mov_b32 v32, v1 :: v_dual_add_nc_u32 v191, 0, v33
	v_dual_mov_b32 v18, v1 :: v_dual_add_nc_u32 v193, 0, v35
	v_dual_mov_b32 v20, v1 :: v_dual_add_nc_u32 v195, 0, v37
	v_add_nc_u32_e32 v192, 0, v34
	v_add_nc_u32_e32 v194, 0, v36
	v_add_nc_u32_e32 v196, 0, v38
	v_add_nc_u32_e32 v197, 0, v39
	v_add_nc_u32_e32 v198, 0, v40
	v_add_nc_u32_e32 v199, 0, v41
	v_add_nc_u32_e32 v200, 0, v42
	v_add_nc_u32_e32 v201, 0, v43
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
	v_xor_b32_e32 v24, 0x120, v175
	v_mov_b32_e32 v16, v1
	v_dual_mov_b32 v17, v1 :: v_dual_add_nc_u32 v182, 0, v23
	v_xor_b32_e32 v22, 0x90, v178
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v183, 0, v24
	v_xor_b32_e32 v23, 0x120, v178
	v_xor_b32_e32 v24, 0x1b0, v178
	v_xor_b32_e32 v97, 32, v180
	v_xor_b32_e32 v98, 48, v180
	v_mad_u64_u32 v[169:170], null, s18, 3, v[165:166]
	v_mad_u64_u32 v[170:171], null, s19, 3, v[167:168]
	v_mov_b32_e32 v5, v1
	v_dual_mov_b32 v30, v1 :: v_dual_add_nc_u32 v189, 0, v23
	v_dual_mov_b32 v23, v1 :: v_dual_add_nc_u32 v188, 0, v22
	v_add_nc_u32_e32 v190, 0, v24
	v_add_nc_u32_e32 v202, 0, v97
	v_dual_mov_b32 v22, v1 :: v_dual_add_nc_u32 v203, 0, v98
	v_mov_b32_e32 v24, v1
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v204, v0, v172
	v_add_nc_u32_e32 v205, s18, v165
	v_lshl_add_u32 v166, s18, 1, v165
	v_add_nc_u32_e32 v168, s19, v167
	v_lshl_add_u32 v171, s19, 1, v167
	s_mov_b32 s5, -1
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
.LBB0_1:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_2 Depth 2
	.loc	1 662 34                        ; attention_backward.py:662:34
	s_or_b32 s40, s35, s1
	s_xor_b32 s41, s5, -1
	v_or_b32_e32 v206, s40, v204
	s_mov_b32 s57, 0
.LBB0_2:                                ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 34 is_stmt 0                ; attention_backward.py:0:34
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 664 25 is_stmt 1              ; attention_backward.py:664:25
	s_or_b32 s1, s57, s40
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_nc_u32_e32 v215, 0, v181
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_mul_i32 s3, s1, s18
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s1, s1, s19
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v99, s3, v166, 1
	v_add_lshl_u32 v97, s3, v165, 1
	v_add_lshl_u32 v98, s3, v205, 1
	v_add_lshl_u32 v100, s3, v169, 1
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v214, s27
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e64 v99, 0x80000000, v99, s2
	v_cndmask_b32_e64 v97, 0x80000000, v97, s2
	v_cndmask_b32_e64 v98, 0x80000000, v98, s2
	v_cndmask_b32_e64 v101, 0x80000000, v100, s2
	s_clause 0x3
	buffer_load_b128 v[106:109], v99, s[44:47], 0 offen
	buffer_load_b128 v[161:164], v97, s[44:47], 0 offen
	buffer_load_b128 v[97:100], v98, s[44:47], 0 offen
	buffer_load_b128 v[102:105], v101, s[44:47], 0 offen
	v_add_nc_u32_e32 v101, 0, v178
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v212, s25 :: v_dual_mov_b32 v213, s26
	v_dual_mov_b32 v210, s23 :: v_dual_mov_b32 v211, s24
	v_dual_mov_b32 v208, s21 :: v_dual_mov_b32 v209, s22
	v_dual_mov_b32 v207, s20 :: v_dual_add_nc_u32 v240, 0, v180
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(2)
	ds_store_b128 v101, v[161:164]
	s_waitcnt vmcnt(1)
	ds_store_b128 v188, v[97:100]
	ds_store_b128 v189, v[106:109]
	s_waitcnt vmcnt(0)
	ds_store_b128 v190, v[102:105]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[110:113], v215
	ds_load_b128 v[114:117], v191
	ds_load_b128 v[118:121], v192
	ds_load_b128 v[122:125], v193
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[126:133], v[33:40], v[110:117], v[207:214]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[110:113], v194
	ds_load_b128 v[114:117], v195
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[126:133], v[41:48], v[118:125], v[126:133]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[126:133], v[49:56], v[110:117], v[126:133]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[110:113], v196
	ds_load_b128 v[114:117], v197
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[126:133], v[57:64], v[110:117], v[126:133]
	.loc	1 699 33                        ; attention_backward.py:699:33
	v_or_b32_e32 v110, s57, v206
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v114, s1, v170, 1
	v_add_lshl_u32 v113, s1, v171, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_lshlrev_b32_e32 v110, 2, v110
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v117, 0x80000000, v114, s4
	v_add_lshl_u32 v114, s1, v168, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v113, 0x80000000, v113, s4
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v111, v110, s[48:51], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v121, 0x80000000, v114, s4
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v112, s56, v126, -v111
	v_fma_f32 v231, s56, v127, -v111
	v_fma_f32 v232, s56, v128, -v111
	v_fma_f32 v233, s56, v129, -v111
	v_fma_f32 v234, s56, v130, -v111
	v_fma_f32 v235, s56, v131, -v111
	v_fma_f32 v236, s56, v132, -v111
	v_fma_f32 v237, s56, v133, -v111
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v111, s1, v167, 1
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v112, v112
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v111, 0x80000000, v111, s4
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v238, v110, s[52:55], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x3
	buffer_load_b128 v[113:116], v113, s[36:39], 0 offen
	buffer_load_b128 v[117:120], v117, s[36:39], 0 offen
	buffer_load_b128 v[153:156], v111, s[36:39], 0 offen
	buffer_load_b128 v[157:160], v121, s[36:39], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v239, 0, v179
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v111.l, v113.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v111.h, v117.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v110.l, v153.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v110.h, v157.l
	v_mov_b16_e32 v122.l, v113.h
	v_mov_b16_e32 v122.h, v117.h
	v_mov_b16_e64 v121.l, v153.h
	v_mov_b16_e64 v121.h, v157.h
	ds_store_2addr_b64 v239, v[110:111], v[121:122] offset1:8
	v_mov_b16_e32 v111.l, v114.l
	v_mov_b16_e32 v111.h, v118.l
	v_mov_b16_e64 v110.l, v154.l
	v_mov_b16_e64 v110.h, v158.l
	v_mov_b16_e32 v122.l, v114.h
	v_mov_b16_e32 v122.h, v118.h
	v_mov_b16_e64 v121.l, v154.h
	v_mov_b16_e64 v121.h, v158.h
	ds_store_2addr_b64 v198, v[110:111], v[121:122] offset1:8
	v_mov_b16_e32 v111.l, v115.l
	v_mov_b16_e32 v111.h, v119.l
	v_mov_b16_e64 v110.l, v155.l
	v_mov_b16_e64 v110.h, v159.l
	v_mov_b16_e32 v122.l, v115.h
	v_mov_b16_e32 v122.h, v119.h
	v_mov_b16_e64 v121.l, v155.h
	v_mov_b16_e64 v121.h, v159.h
	ds_store_2addr_b64 v199, v[110:111], v[121:122] offset1:8
	v_mov_b16_e32 v111.l, v116.l
	v_mov_b16_e32 v111.h, v120.l
	v_mov_b16_e64 v110.l, v156.l
	v_mov_b16_e64 v110.h, v160.l
	v_mov_b16_e32 v122.l, v116.h
	v_mov_b16_e32 v122.h, v120.h
	v_mov_b16_e64 v121.l, v156.h
	v_mov_b16_e64 v121.h, v160.h
	ds_store_2addr_b64 v200, v[110:111], v[121:122] offset1:8
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[149:152], v240
	ds_load_b128 v[141:144], v240 offset:2048
	ds_load_b128 v[145:148], v201
	ds_load_b128 v[137:140], v201 offset:2048
	ds_load_b128 v[133:136], v202
	ds_load_b128 v[125:128], v202 offset:2048
	ds_load_b128 v[129:132], v203
	ds_load_b128 v[121:124], v203 offset:2048
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v101, v[153:156]
	ds_store_b128 v188, v[157:160]
	ds_store_b128 v189, v[113:116]
	ds_store_b128 v190, v[117:120]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[215:218], v215
	ds_load_b128 v[219:222], v191
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[223:230], v[65:72], v[215:222], v[207:214]
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[207:210], v192
	ds_load_b128 v[211:214], v193
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v216, 0, v112, s0
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[223:230], v[73:80], v[207:214], v[223:230]
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[207:210], v194
	ds_load_b128 v[211:214], v195
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[223:230], v[81:88], v[207:214], v[223:230]
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[207:210], v196
	ds_load_b128 v[211:214], v197
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_wmma_f32_16x16x16_bf16 v[223:230], v[89:96], v[207:214], v[223:230]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v211, v228, v238
	v_sub_f32_e32 v213, v230, v238
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_sub_f32_e32 v209, v226, v238
	v_sub_f32_e32 v101, v223, v238
	v_sub_f32_e32 v210, v227, v238
	v_sub_f32_e32 v110, v224, v238
	v_sub_f32_e32 v111, v225, v238
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30 is_stmt 0              ; attention_backward.py:720:30
	v_dual_mul_f32 v101, v216, v101 :: v_dual_sub_f32 v212, v229, v238
	.loc	1 721 38 is_stmt 1              ; attention_backward.py:721:38
	v_mul_f32_e32 v101, s31, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v112, v101, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v101, v101
	v_add3_u32 v101, v101, v112, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v112, v231
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v101.l, 0x7fff, v101.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v216, v216
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v217, 0, v112, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v110, v217, v110
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v110, s31, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v112, v110, 16, 1
	v_cmp_o_f32_e64 s1, v110, v110
	v_add3_u32 v110, v110, v112, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v112, v232
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b16_e64 v110.l, v161.l
	v_mov_b16_e64 v161.l, 0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v207, 0, v112, s0
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v111, v207, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v111, s31, v111
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v112, v111, 16, 1
	v_cmp_o_f32_e64 s3, v111, v111
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_add3_u32 v111, v111, v112, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v112, v233
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b16_e32 v111.l, v106.l
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v208, 0, v112, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v112, v208, v209
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v112, s31, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v209, v112, 16, 1
	v_cmp_o_f32_e64 s5, v112, v112
	v_add3_u32 v112, v112, v209, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v209, v234
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v218, 0, v209, s0
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v209, v218, v210
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v209, s31, v209
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v210, v209, 16, 1
	v_cmp_o_f32_e64 s6, v209, v209
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v214, v209, v210, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v209, v235
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v214.l, v161.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v101.h, 0x7fff, v214.h, s6
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s6, v218, v218
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v209, 0, v209, s0
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v210, v209, v211
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v210, s31, v210
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v211, v210, 16, 1
	v_cmp_o_f32_e64 s7, v210, v210
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_add3_u32 v215, v210, v211, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v210, v236
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v215.l, v161.l
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v210, 0, v210, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v211, v210, v212
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v211, s31, v211
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v212, v211, 16, 1
	v_cmp_o_f32_e64 s8, v211, v211
	v_add3_u32 v219, v211, v212, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v211, v237
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v211, 0, v211, s0
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v212, v211, v213
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v212, s31, v212
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v213, v212, 16, 1
	v_cmp_o_f32_e64 s9, v212, v212
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v213, v212, v213, 0x7fff
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	v_add_nc_u32_e32 v212, 0, v175
	ds_store_b16 v212, v101
	ds_store_b16_d16_hi v212, v101 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v101.l, 0x7fff, v110.h, s1
	v_cndmask_b16 v101.h, 0x7fff, v215.h, s7
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b16_e32 v110.h, v97.l
	v_mov_b16_e64 v97.l, v161.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s1, v217, v217
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v182, v101
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v101.l, 0x7fff, v111.h, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v182, v101 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v101.h, 0x7fff, v219.h, s8
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b16_e32 v111.h, v102.l
	v_mov_b16_e32 v102.l, v106.h
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v183, v101
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v101.l, 0x7fff, v112.h, s5
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v183, v101 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v101.h, 0x7fff, v213.h, s9
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v184, v101
	ds_store_b16_d16_hi v184, v101 offset:512
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b32_e32 v101, v97
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v213, 0, v177
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[219:222], v213
	ds_load_b128 v[223:226], v185
	ds_load_b128 v[227:230], v186
	ds_load_b128 v[231:234], v187
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b64 v239, v[110:111], v[101:102] offset1:8
	v_mov_b16_e32 v110.h, v98.l
	v_mov_b16_e64 v98.l, v162.h
	v_mov_b16_e32 v111.l, v107.l
	v_mov_b16_e32 v111.h, v103.l
	v_mov_b16_e64 v110.l, v162.l
	v_mov_b16_e32 v103.l, v107.h
	v_mov_b32_e32 v102, v98
	v_mov_b16_e32 v97.h, v99.l
	v_mov_b16_e64 v99.l, v163.h
	v_mov_b16_e32 v98.l, v108.l
	v_mov_b16_e32 v98.h, v104.l
	ds_store_2addr_b64 v198, v[110:111], v[102:103] offset1:8
	v_mov_b16_e64 v97.l, v163.l
	v_mov_b16_e32 v104.l, v108.h
	v_mov_b32_e32 v103, v99
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s5, v208, v208
	v_cmp_o_f32_e64 s7, v209, v209
	v_cmp_o_f32_e64 s3, v207, v207
	v_cmp_o_f32_e64 s8, v210, v210
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_store_2addr_b64 v199, v[97:98], v[103:104] offset1:8
	v_mov_b16_e32 v98.h, v105.l
	v_mov_b16_e32 v105.l, v109.h
	v_mov_b16_e32 v98.l, v109.l
	v_mov_b16_e64 v97.l, v164.l
	v_mov_b16_e32 v97.h, v100.l
	v_mov_b16_e64 v100.l, v164.h
	v_mov_b32_e32 v101, v105
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s9, v211, v211
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v164.l, v161.l
	v_mov_b16_e64 v163.l, v161.l
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_store_2addr_b64 v200, v[97:98], v[100:101] offset1:8
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[101:104], v201
	ds_load_b128 v[97:100], v240
	ds_load_b128 v[105:108], v240 offset:2048
	ds_load_b128 v[109:112], v201 offset:2048
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[97:104], v[219:226], v[25:32]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[105:112], v[219:226], v[17:24]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[101:104], v203
	ds_load_b128 v[97:100], v202
	ds_load_b128 v[105:108], v202 offset:2048
	ds_load_b128 v[109:112], v203 offset:2048
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v219.l, v161.l
	v_mov_b16_e64 v220.l, v161.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[97:104], v[227:234], v[25:32]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v97, v216, 16, 1
	v_bfe_u32 v100, v208, 16, 1
	v_bfe_u32 v101, v218, 16, 1
	v_bfe_u32 v98, v217, 16, 1
	v_bfe_u32 v102, v209, 16, 1
	v_bfe_u32 v99, v207, 16, 1
	v_add3_u32 v97, v216, v97, 0x7fff
	v_add3_u32 v100, v208, v100, 0x7fff
	v_bfe_u32 v103, v210, 16, 1
	v_bfe_u32 v104, v211, 16, 1
	v_add3_u32 v101, v218, v101, 0x7fff
	v_add3_u32 v98, v217, v98, 0x7fff
	v_add3_u32 v102, v209, v102, 0x7fff
	v_add3_u32 v99, v207, v99, 0x7fff
	v_add3_u32 v103, v210, v103, 0x7fff
	v_add3_u32 v104, v211, v104, 0x7fff
	v_cndmask_b16 v161.h, 0x7fff, v97.h, vcc_lo
	v_cndmask_b16 v164.h, 0x7fff, v100.h, s5
	v_cndmask_b16 v219.h, 0x7fff, v101.h, s6
	v_cndmask_b16 v220.h, 0x7fff, v98.h, s1
	v_cndmask_b16 v214.h, 0x7fff, v102.h, s7
	v_cndmask_b16 v215.h, 0x7fff, v99.h, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[17:24], v[105:112], v[227:234], v[17:24]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v163.h, 0x7fff, v103.h, s8
	v_cndmask_b16 v162.h, 0x7fff, v104.h, s9
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v212, v161
	ds_store_b16_d16_hi v212, v219 offset:512
	ds_store_b16_d16_hi v182, v220
	ds_store_b16_d16_hi v182, v214 offset:512
	ds_store_b16_d16_hi v183, v215
	ds_store_b16_d16_hi v183, v163 offset:512
	ds_store_b16_d16_hi v184, v164
	ds_store_b16_d16_hi v184, v162 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v164, v208, v164
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_load_b128 v[105:108], v213
	ds_load_b128 v[109:112], v185
	ds_load_b128 v[97:100], v186
	ds_load_b128 v[101:104], v187
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v174, v[153:156]
	ds_store_b128 v174, v[157:160] offset:128
	ds_store_b128 v174, v[113:116] offset:256
	ds_store_b128 v174, v[117:120] offset:384
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v115, v216, v161 :: v_dual_sub_f32 v114, v218, v219
	v_sub_f32_e32 v113, v217, v220
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v116, v115, 16, 1
	v_cmp_o_f32_e64 s1, v115, v115
	v_cmp_o_f32_e64 s3, v114, v114
	v_cmp_o_f32_e32 vcc_lo, v113, v113
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v207, v207, v215
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v115, v115, v116, 0x7fff
	v_bfe_u32 v116, v114, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v208, v209, v214 :: v_dual_sub_f32 v163, v210, v163
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v209, v207, 16, 1
	v_cndmask_b16 v161.h, 0x7fff, v115.h, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v114, v114, v116, 0x7fff
	v_bfe_u32 v116, v113, 16, 1
	v_cmp_o_f32_e64 s1, v164, v164
	v_cmp_o_f32_e64 s5, v163, v163
	v_cndmask_b16 v162.l, 0x7fff, v114.h, s3
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v232, v113, v116, 0x7fff
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	ds_load_u16_d16 v115, v176 offset:512
	ds_load_u16_d16 v116, v176 offset:768
	ds_load_u16_d16 v117, v176 offset:1024
	ds_load_u16_d16 v118, v176 offset:1280
	ds_load_u16_d16 v119, v176 offset:1536
	ds_load_u16_d16 v114, v176 offset:256
	ds_load_u16_d16 v157, v176 offset:3072
	ds_load_u16_d16 v158, v176 offset:3328
	ds_load_u16_d16 v219, v176 offset:2880
	ds_load_u16_d16 v218, v176 offset:2624
	ds_load_u16_d16 v113, v176
	ds_load_u16_d16 v224, v176 offset:64
	ds_load_u16_d16 v229, v176 offset:1344
	ds_load_u16_d16 v159, v176 offset:3584
	ds_load_u16_d16 v160, v176 offset:3840
	ds_load_u16_d16 v155, v176 offset:2560
	ds_load_u16_d16 v156, v176 offset:2816
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v115, v176 offset:640
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v116, v176 offset:896
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v117, v176 offset:1152
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v118, v176 offset:1408
	ds_load_u16_d16 v120, v176 offset:1792
	ds_load_u16_d16 v153, v176 offset:2048
	ds_load_u16_d16 v154, v176 offset:2304
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v219, v176 offset:3008
	ds_load_u16_d16 v217, v176 offset:2368
	ds_load_u16_d16_hi v114, v176 offset:384
	ds_load_u16_d16 v226, v176 offset:576
	ds_load_u16_d16 v227, v176 offset:832
	ds_load_u16_d16 v228, v176 offset:1088
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v113, v176 offset:128
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v224, v176 offset:192
	ds_load_u16_d16 v225, v176 offset:320
	ds_load_u16_d16 v216, v176 offset:2112
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v160, v176 offset:3968
	ds_load_u16_d16_hi v157, v176 offset:3200
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v156, v176 offset:2944
	ds_load_u16_d16 v221, v176 offset:3392
	ds_load_u16_d16 v220, v176 offset:3136
	ds_load_u16_d16 v223, v176 offset:3904
	ds_load_u16_d16 v222, v176 offset:3648
	ds_load_u16_d16_hi v159, v176 offset:3712
	ds_load_u16_d16_hi v158, v176 offset:3456
	ds_load_u16_d16_hi v119, v176 offset:1664
	ds_load_u16_d16_hi v155, v176 offset:2688
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v217, v176 offset:2496
	ds_load_u16_d16_hi v120, v176 offset:1920
	ds_load_u16_d16 v230, v176 offset:1600
	ds_load_u16_d16_hi v229, v176 offset:1472
	ds_load_u16_d16_hi v154, v176 offset:2432
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v228, v176 offset:1216
	ds_load_u16_d16_hi v227, v176 offset:960
	ds_load_u16_d16_hi v226, v176 offset:704
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v225, v176 offset:448
	ds_load_u16_d16_hi v218, v176 offset:2752
	ds_load_u16_d16_hi v153, v176 offset:2176
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v216, v176 offset:2240
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v221, v176 offset:3520
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v220, v176 offset:3264
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v223, v176 offset:4032
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v222, v176 offset:3776
	ds_load_u16_d16 v231, v176 offset:1856
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v230, v176 offset:1728
	s_waitcnt lgkmcnt(1)
	ds_load_u16_d16_hi v231, v176 offset:1984
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16_d16_hi v212, v161
	ds_store_b16 v212, v162 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v161.h, 0x7fff, v232.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v207, v207
	v_add3_u32 v207, v207, v209, 0x7fff
	v_bfe_u32 v209, v164, 16, 1
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e64 v162.l, v161.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s3, v208, v208
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[113:120], v[105:112], v[1:8]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v164, v164, v209, 0x7fff
	v_bfe_u32 v209, v208, 16, 1
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v162, v211, v162
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[153:160], v[97:104], v[1:8]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v208, v208, v209, 0x7fff
	v_bfe_u32 v209, v163, 16, 1
	v_cmp_o_f32_e64 s6, v162, v162
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[224:231], v[105:112], v[9:16]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v163, v163, v209, 0x7fff
	v_bfe_u32 v209, v162, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[216:223], v[97:104], v[9:16]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v162, v162, v209, 0x7fff
	v_cndmask_b16 v162.l, 0x7fff, v208.h, s3
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v182, v161
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v161.h, 0x7fff, v207.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v182, v162 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v162.l, 0x7fff, v163.h, s5
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v183, v161
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v161.h, 0x7fff, v164.h, s1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v183, v162 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v162.l, 0x7fff, v162.h, s6
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v184, v161
	ds_store_b16 v184, v162 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[207:210], v213
	ds_load_b128 v[211:214], v185
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[113:120], v[207:214], v[1:8]
	ds_load_b128 v[113:116], v186
	ds_load_b128 v[117:120], v187
	v_wmma_f32_16x16x16_bf16 v[9:16], v[224:231], v[207:214], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[153:160], v[113:120], v[1:8]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[216:223], v[113:120], v[9:16]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v114.h, v149.l
	v_mov_b16_e64 v114.l, v161.l
	v_mov_b16_e64 v118.h, v151.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v153.h, v161.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v118.l, v161.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v114, v114, v114 :: v_dual_and_b32 v113, 0xffff0000, v149
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v116.h, v150.l
	v_mov_b16_e64 v116.l, v161.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v118, v118, v118 :: v_dual_sub_f32 v113, v113, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e64 v153.l, v114.h
	v_cmp_o_f32_e32 vcc_lo, v114, v114
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v116, v116, v116
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v119, 0xffff0000, v152
	v_mov_b16_e64 v120.h, v152.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v153, 1, v153
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v152, 0xffff0000, v148
	v_mov_b16_e64 v148.h, v148.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s1, v113, v113
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v148.l, v161.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v114, v114, v153, 0x7fff
	v_mov_b16_e64 v153.h, v161.l
	v_mov_b16_e64 v153.l, v113.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v148, v148, v148 :: v_dual_and_b32 v115, 0xffff0000, v150
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v116, v116
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v150, 0xffff0000, v146
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v153, 1, v153
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v115, v115, v115
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v146.h, v146.l
	v_mov_b16_e64 v146.l, v161.l
	v_and_b32_e32 v117, 0xffff0000, v151
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v113, v113, v153, 0x7fff
	v_mov_b16_e64 v153.h, v161.l
	v_mov_b16_e64 v153.l, v116.h
	v_cmp_o_f32_e64 s5, v115, v115
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v146, v146, v146 :: v_dual_sub_f32 v117, v117, v117
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v118, v118
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v153, 1, v153
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v120.l, v161.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v150, v150, v150
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s7, v117, v117
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v119, v119, v119
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v116, v116, v153, 0x7fff
	v_mov_b16_e64 v153.h, v161.l
	v_mov_b16_e64 v153.l, v115.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v120, v120, v120 :: v_dual_and_b32 v149, 0xffff0000, v145
	v_sub_f32_e32 v152, v152, v152
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v145.h, v145.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v153, 1, v153
	v_cmp_o_f32_e64 s8, v120, v120
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v145.l, v161.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s9, v119, v119
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v149, v149, v149
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v115, v115, v153, 0x7fff
	v_mov_b16_e64 v153.h, v161.l
	v_mov_b16_e64 v153.l, v118.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v145, v145, v145
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s11, v149, v149
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v151, 0xffff0000, v147
	v_mov_b16_e64 v147.h, v147.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v153, 1, v153
	v_cmp_o_f32_e64 s10, v145, v145
	v_cmp_o_f32_e64 s12, v146, v146
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v147.l, v161.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v150, v150
	v_add3_u32 v118, v118, v153, 0x7fff
	v_mov_b16_e64 v153.h, v161.l
	v_mov_b16_e64 v153.l, v117.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v147, v147, v147
	v_sub_f32_e32 v151, v151, v151
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s16, v148, v148
	v_cmp_o_f32_e64 s17, v152, v152
	v_and_b32_e32 v153, 1, v153
	v_cmp_o_f32_e64 s14, v147, v147
	v_cmp_o_f32_e64 s15, v151, v151
	v_cndmask_b16 v113.h, 0x7fff, v113.h, s1
	v_cndmask_b16 v113.l, 0x7fff, v114.h, vcc_lo
	v_add3_u32 v117, v117, v153, 0x7fff
	v_mov_b16_e64 v153.h, v161.l
	v_mov_b16_e64 v153.l, v120.h
	v_cndmask_b16 v114.h, 0x7fff, v115.h, s5
	v_cndmask_b16 v114.l, 0x7fff, v116.h, s3
	v_cndmask_b16 v115.h, 0x7fff, v117.h, s7
	v_cndmask_b16 v115.l, 0x7fff, v118.h, s6
	v_and_b32_e32 v153, 1, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v120, v120, v153, 0x7fff
	v_mov_b16_e64 v153.h, v161.l
	v_mov_b16_e64 v153.l, v119.h
	v_cndmask_b16 v116.l, 0x7fff, v120.h, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v153, 1, v153
	v_add3_u32 v119, v119, v153, 0x7fff
	v_mov_b16_e64 v153.h, v161.l
	v_mov_b16_e64 v153.l, v145.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v116.h, 0x7fff, v119.h, s9
	v_and_b32_e32 v153, 1, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v145, v145, v153, 0x7fff
	v_mov_b16_e64 v153.h, v161.l
	v_mov_b16_e64 v153.l, v149.h
	v_cndmask_b16 v117.l, 0x7fff, v145.h, s10
	v_mov_b16_e64 v145.h, v161.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v153, 1, v153
	v_add3_u32 v149, v149, v153, 0x7fff
	v_mov_b16_e64 v153.h, v161.l
	v_mov_b16_e64 v153.l, v146.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v117.h, 0x7fff, v149.h, s11
	v_and_b32_e32 v153, 1, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v146, v146, v153, 0x7fff
	v_mov_b16_e64 v153.h, v161.l
	v_mov_b16_e64 v153.l, v150.h
	v_cndmask_b16 v118.l, 0x7fff, v146.h, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v153, 1, v153
	v_add3_u32 v150, v150, v153, 0x7fff
	v_mov_b16_e64 v153.h, v161.l
	v_mov_b16_e64 v153.l, v147.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v118.h, 0x7fff, v150.h, s13
	v_and_b32_e32 v153, 1, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v147, v147, v153, 0x7fff
	v_mov_b16_e64 v153.h, v161.l
	v_mov_b16_e64 v153.l, v151.h
	v_cndmask_b16 v119.l, 0x7fff, v147.h, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v153, 1, v153
	v_add3_u32 v151, v151, v153, 0x7fff
	v_mov_b16_e64 v153.h, v161.l
	v_mov_b16_e64 v153.l, v148.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v119.h, 0x7fff, v151.h, s15
	v_and_b32_e32 v153, 1, v153
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v148, v148, v153, 0x7fff
	v_mov_b16_e64 v153.h, v161.l
	v_mov_b16_e64 v153.l, v152.h
	v_cndmask_b16 v120.l, 0x7fff, v148.h, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v153, 1, v153
	v_add3_u32 v152, v152, v153, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v120.h, 0x7fff, v152.h, s17
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[113:120], v[105:112], v[1:8]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v114.h, v141.l
	v_mov_b16_e64 v114.l, v161.l
	v_and_b32_e32 v113, 0xffff0000, v141
	v_mov_b16_e64 v116.h, v142.l
	v_mov_b16_e64 v116.l, v161.l
	v_and_b32_e32 v115, 0xffff0000, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v114, v114, v114 :: v_dual_sub_f32 v113, v113, v113
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v118.h, v143.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v116, v116, v116 :: v_dual_sub_f32 v115, v115, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e64 v145.l, v114.h
	v_cmp_o_f32_e32 vcc_lo, v114, v114
	v_cmp_o_f32_e64 s1, v113, v113
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v116, v116
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v118.l, v161.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v145, 1, v145
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v117, 0xffff0000, v143
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s5, v115, v115
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v120.h, v144.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v118, v118, v118
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v114, v114, v145, 0x7fff
	v_mov_b16_e64 v145.h, v161.l
	v_mov_b16_e64 v145.l, v113.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v117, v117, v117
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v118, v118
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v120.l, v161.l
	v_and_b32_e32 v119, 0xffff0000, v144
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v145, 1, v145
	v_cmp_o_f32_e64 s7, v117, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v120, v120, v120 :: v_dual_and_b32 v141, 0xffff0000, v137
	v_sub_f32_e32 v119, v119, v119
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v113, v113, v145, 0x7fff
	v_mov_b16_e64 v145.h, v161.l
	v_mov_b16_e64 v145.l, v116.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v137.h, v137.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s8, v120, v120
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v137.l, v161.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s9, v119, v119
	v_and_b32_e32 v145, 1, v145
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v141, v141, v141 :: v_dual_and_b32 v142, 0xffff0000, v138
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_sub_f32_e32 v137, v137, v137
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v138.h, v138.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v116, v116, v145, 0x7fff
	v_mov_b16_e64 v145.h, v161.l
	v_mov_b16_e64 v145.l, v115.h
	v_cmp_o_f32_e64 s10, v137, v137
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v138.l, v161.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s11, v141, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v142, v142, v142 :: v_dual_and_b32 v145, 1, v145
	v_dual_sub_f32 v138, v138, v138 :: v_dual_and_b32 v143, 0xffff0000, v139
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v139.h, v139.l
	v_mov_b16_e64 v139.l, v161.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v115, v115, v145, 0x7fff
	v_mov_b16_e64 v145.h, v161.l
	v_mov_b16_e64 v145.l, v118.h
	v_cmp_o_f32_e64 s12, v138, v138
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v139, v139, v139
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v142, v142
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v143, v143, v143
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v145, 1, v145
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v144, 0xffff0000, v140
	v_mov_b16_e64 v140.h, v140.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s14, v139, v139
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v140.l, v161.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v118, v118, v145, 0x7fff
	v_mov_b16_e64 v145.h, v161.l
	v_mov_b16_e64 v145.l, v117.h
	v_cmp_o_f32_e64 s15, v143, v143
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v140, v140, v140
	v_sub_f32_e32 v144, v144, v144
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v113.h, 0x7fff, v113.h, s1
	v_and_b32_e32 v145, 1, v145
	v_cndmask_b16 v113.l, 0x7fff, v114.h, vcc_lo
	v_cmp_o_f32_e64 s16, v140, v140
	v_cmp_o_f32_e64 s17, v144, v144
	v_cndmask_b16 v114.h, 0x7fff, v115.h, s5
	v_add3_u32 v117, v117, v145, 0x7fff
	v_mov_b16_e64 v145.h, v161.l
	v_mov_b16_e64 v145.l, v120.h
	v_cndmask_b16 v114.l, 0x7fff, v116.h, s3
	v_cndmask_b16 v115.l, 0x7fff, v118.h, s6
	v_cndmask_b16 v115.h, 0x7fff, v117.h, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v145, 1, v145
	v_add3_u32 v120, v120, v145, 0x7fff
	v_mov_b16_e64 v145.h, v161.l
	v_mov_b16_e64 v145.l, v119.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v116.l, 0x7fff, v120.h, s8
	v_and_b32_e32 v145, 1, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v119, v119, v145, 0x7fff
	v_mov_b16_e64 v145.h, v161.l
	v_mov_b16_e64 v145.l, v137.h
	v_cndmask_b16 v116.h, 0x7fff, v119.h, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v145, 1, v145
	v_add3_u32 v137, v137, v145, 0x7fff
	v_mov_b16_e64 v145.h, v161.l
	v_mov_b16_e64 v145.l, v141.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v117.l, 0x7fff, v137.h, s10
	v_and_b32_e32 v145, 1, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v141, v141, v145, 0x7fff
	v_mov_b16_e64 v145.h, v161.l
	v_mov_b16_e64 v145.l, v138.h
	v_cndmask_b16 v117.h, 0x7fff, v141.h, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v145, 1, v145
	v_add3_u32 v138, v138, v145, 0x7fff
	v_mov_b16_e64 v145.h, v161.l
	v_mov_b16_e64 v145.l, v142.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v118.l, 0x7fff, v138.h, s12
	v_and_b32_e32 v145, 1, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v142, v142, v145, 0x7fff
	v_mov_b16_e64 v145.h, v161.l
	v_mov_b16_e64 v145.l, v139.h
	v_cndmask_b16 v118.h, 0x7fff, v142.h, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v145, 1, v145
	v_add3_u32 v139, v139, v145, 0x7fff
	v_mov_b16_e64 v145.h, v161.l
	v_mov_b16_e64 v145.l, v143.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v119.l, 0x7fff, v139.h, s14
	v_and_b32_e32 v145, 1, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v143, v143, v145, 0x7fff
	v_mov_b16_e64 v145.h, v161.l
	v_mov_b16_e64 v145.l, v140.h
	v_cndmask_b16 v119.h, 0x7fff, v143.h, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v145, 1, v145
	v_add3_u32 v140, v140, v145, 0x7fff
	v_mov_b16_e64 v145.h, v161.l
	v_mov_b16_e64 v145.l, v144.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v120.l, 0x7fff, v140.h, s16
	v_and_b32_e32 v145, 1, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v144, v144, v145, 0x7fff
	v_cndmask_b16 v120.h, 0x7fff, v144.h, s17
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[113:120], v[105:112], v[9:16]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v106.h, v133.l
	v_mov_b16_e64 v106.l, v161.l
	v_and_b32_e32 v105, 0xffff0000, v133
	v_and_b32_e32 v113, 0xffff0000, v129
	v_mov_b16_e64 v114.h, v129.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v129.h, v161.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v106, v106, v106 :: v_dual_sub_f32 v105, v105, v105
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v108.h, v134.l
	v_mov_b16_e64 v108.l, v161.l
	v_and_b32_e32 v107, 0xffff0000, v134
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v129.l, v106.h
	v_cmp_o_f32_e32 vcc_lo, v106, v106
	v_cmp_o_f32_e64 s1, v105, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v108, v108, v108 :: v_dual_sub_f32 v107, v107, v107
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v129, 1, v129
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v110.h, v135.l
	v_mov_b16_e64 v110.l, v161.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v108, v108
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v109, 0xffff0000, v135
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v106, v106, v129, 0x7fff
	v_mov_b16_e64 v129.h, v161.l
	v_mov_b16_e64 v129.l, v105.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v110, v110, v110
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s5, v107, v107
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v109, v109, v109
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v112.h, v136.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v129, 1, v129
	v_cmp_o_f32_e64 s6, v110, v110
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v112.l, v161.l
	v_and_b32_e32 v111, 0xffff0000, v136
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s7, v109, v109
	v_add3_u32 v105, v105, v129, 0x7fff
	v_mov_b16_e64 v129.h, v161.l
	v_mov_b16_e64 v129.l, v108.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v112, v112, v112 :: v_dual_sub_f32 v111, v111, v111
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v114.l, v161.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v113, v113, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_and_b32_e32 v129, 1, v129
	v_cmp_o_f32_e64 s8, v112, v112
	v_cmp_o_f32_e64 s9, v111, v111
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v114, v114, v114
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v116.h, v130.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v108, v108, v129, 0x7fff
	v_mov_b16_e64 v129.h, v161.l
	v_mov_b16_e64 v129.l, v107.h
	v_cmp_o_f32_e64 s10, v114, v114
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v116.l, v161.l
	v_and_b32_e32 v115, 0xffff0000, v130
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s11, v113, v113
	v_and_b32_e32 v129, 1, v129
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v118.h, v131.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v116, v116, v116 :: v_dual_sub_f32 v115, v115, v115
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v118.l, v161.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v107, v107, v129, 0x7fff
	v_mov_b16_e64 v129.h, v161.l
	v_mov_b16_e64 v129.l, v110.h
	v_cmp_o_f32_e64 s12, v116, v116
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v118, v118, v118 :: v_dual_and_b32 v117, 0xffff0000, v131
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v115, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v129, 1, v129
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v120.h, v132.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s14, v118, v118
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v117, v117, v117
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v120.l, v161.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v110, v110, v129, 0x7fff
	v_mov_b16_e64 v129.h, v161.l
	v_mov_b16_e64 v129.l, v109.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v119, 0xffff0000, v132
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v120, v120, v120
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s15, v117, v117
	v_cndmask_b16 v105.h, 0x7fff, v105.h, s1
	v_and_b32_e32 v129, 1, v129
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v119, v119, v119
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s16, v120, v120
	v_cndmask_b16 v105.l, 0x7fff, v106.h, vcc_lo
	v_cndmask_b16 v106.h, 0x7fff, v107.h, s5
	v_add3_u32 v109, v109, v129, 0x7fff
	v_mov_b16_e64 v129.h, v161.l
	v_mov_b16_e64 v129.l, v112.h
	v_cmp_o_f32_e64 s17, v119, v119
	v_cndmask_b16 v106.l, 0x7fff, v108.h, s3
	v_cndmask_b16 v107.h, 0x7fff, v109.h, s7
	v_cndmask_b16 v107.l, 0x7fff, v110.h, s6
	v_and_b32_e32 v129, 1, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v112, v112, v129, 0x7fff
	v_mov_b16_e64 v129.h, v161.l
	v_mov_b16_e64 v129.l, v111.h
	v_cndmask_b16 v108.l, 0x7fff, v112.h, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v129, 1, v129
	v_add3_u32 v111, v111, v129, 0x7fff
	v_mov_b16_e64 v129.h, v161.l
	v_mov_b16_e64 v129.l, v114.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v108.h, 0x7fff, v111.h, s9
	v_and_b32_e32 v129, 1, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v114, v114, v129, 0x7fff
	v_mov_b16_e64 v129.h, v161.l
	v_mov_b16_e64 v129.l, v113.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v114.l, v161.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v109.l, 0x7fff, v114.h, s10
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v114.h, v121.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v114, v114, v114 :: v_dual_and_b32 v129, 1, v129
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v113, v113, v129, 0x7fff
	v_mov_b16_e64 v129.h, v161.l
	v_mov_b16_e64 v129.l, v116.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s10, v114, v114
	v_cndmask_b16 v109.h, 0x7fff, v113.h, s11
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v113, 0xffff0000, v121
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v129, 1, v129
	v_mov_b16_e64 v121.h, v161.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v113, v113, v113
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v116, v116, v129, 0x7fff
	v_mov_b16_e64 v129.h, v161.l
	v_mov_b16_e64 v129.l, v115.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v116.l, v161.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s11, v113, v113
	v_cndmask_b16 v110.l, 0x7fff, v116.h, s12
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v116.h, v122.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v116, v116, v116 :: v_dual_and_b32 v129, 1, v129
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v115, v115, v129, 0x7fff
	v_mov_b16_e64 v129.h, v161.l
	v_mov_b16_e64 v129.l, v118.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s12, v116, v116
	v_cndmask_b16 v110.h, 0x7fff, v115.h, s13
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v115, 0xffff0000, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v129, 1, v129
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v115, v115, v115
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v118, v118, v129, 0x7fff
	v_mov_b16_e64 v129.h, v161.l
	v_mov_b16_e64 v129.l, v117.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v118.l, v161.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v115, v115
	v_cndmask_b16 v111.l, 0x7fff, v118.h, s14
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v118.h, v123.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v118, v118, v118 :: v_dual_and_b32 v129, 1, v129
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v117, v117, v129, 0x7fff
	v_mov_b16_e64 v129.h, v161.l
	v_mov_b16_e64 v129.l, v120.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s14, v118, v118
	v_cndmask_b16 v111.h, 0x7fff, v117.h, s15
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v117, 0xffff0000, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v129, 1, v129
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v117, v117, v117
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v120, v120, v129, 0x7fff
	v_mov_b16_e64 v129.h, v161.l
	v_mov_b16_e64 v129.l, v119.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v120.l, v161.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s15, v117, v117
	v_cndmask_b16 v112.l, 0x7fff, v120.h, s16
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v120.h, v124.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v120, v120, v120 :: v_dual_and_b32 v129, 1, v129
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v119, v119, v129, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s16, v120, v120
	v_cndmask_b16 v112.h, 0x7fff, v119.h, s17
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v119, 0xffff0000, v124
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[105:112], v[97:104], v[1:8]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v106.h, v125.l
	v_mov_b16_e64 v106.l, v161.l
	v_and_b32_e32 v105, 0xffff0000, v125
	v_mov_b16_e32 v108.h, v126.l
	v_mov_b16_e64 v108.l, v161.l
	v_and_b32_e32 v107, 0xffff0000, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v106, v106, v106 :: v_dual_sub_f32 v105, v105, v105
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v110.h, v127.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v108, v108, v108 :: v_dual_sub_f32 v107, v107, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e32 v121.l, v106.h
	v_cmp_o_f32_e32 vcc_lo, v106, v106
	v_cmp_o_f32_e64 s1, v105, v105
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v108, v108
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v110.l, v161.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v121, 1, v121
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v109, 0xffff0000, v127
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s5, v107, v107
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v112.h, v128.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v110, v110, v110
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v106, v106, v121, 0x7fff
	v_mov_b16_e64 v121.h, v161.l
	v_mov_b16_e32 v121.l, v105.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v109, v109, v109
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v110, v110
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v112.l, v161.l
	v_and_b32_e32 v111, 0xffff0000, v128
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v121, 1, v121
	v_cmp_o_f32_e64 s7, v109, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v119, v119, v119 :: v_dual_sub_f32 v112, v112, v112
	v_sub_f32_e32 v111, v111, v111
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v105, v105, v121, 0x7fff
	v_mov_b16_e64 v121.h, v161.l
	v_mov_b16_e32 v121.l, v108.h
	v_cmp_o_f32_e64 s8, v112, v112
	v_cmp_o_f32_e64 s9, v111, v111
	v_cmp_o_f32_e64 s17, v119, v119
	v_cndmask_b16 v105.h, 0x7fff, v105.h, s1
	v_and_b32_e32 v121, 1, v121
	v_cndmask_b16 v105.l, 0x7fff, v106.h, vcc_lo
	.loc	1 607 13 is_stmt 1              ; attention_backward.py:607:13
	s_add_i32 s1, s57, 32
	s_cmpk_lt_u32 s57, 0x7e0
	s_mov_b32 s57, s1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v108, v108, v121, 0x7fff
	v_mov_b16_e64 v121.h, v161.l
	v_mov_b16_e32 v121.l, v107.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v106.l, 0x7fff, v108.h, s3
	v_and_b32_e32 v121, 1, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v107, v107, v121, 0x7fff
	v_mov_b16_e64 v121.h, v161.l
	v_mov_b16_e32 v121.l, v110.h
	v_cndmask_b16 v106.h, 0x7fff, v107.h, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v121, 1, v121
	v_add3_u32 v110, v110, v121, 0x7fff
	v_mov_b16_e64 v121.h, v161.l
	v_mov_b16_e32 v121.l, v109.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v107.l, 0x7fff, v110.h, s6
	v_and_b32_e32 v121, 1, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v109, v109, v121, 0x7fff
	v_mov_b16_e64 v121.h, v161.l
	v_mov_b16_e32 v121.l, v112.h
	v_cndmask_b16 v107.h, 0x7fff, v109.h, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v121, 1, v121
	v_add3_u32 v112, v112, v121, 0x7fff
	v_mov_b16_e64 v121.h, v161.l
	v_mov_b16_e32 v121.l, v111.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v108.l, 0x7fff, v112.h, s8
	v_and_b32_e32 v121, 1, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v111, v111, v121, 0x7fff
	v_mov_b16_e64 v121.h, v161.l
	v_mov_b16_e32 v121.l, v114.h
	v_cndmask_b16 v108.h, 0x7fff, v111.h, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v121, 1, v121
	v_add3_u32 v114, v114, v121, 0x7fff
	v_mov_b16_e64 v121.h, v161.l
	v_mov_b16_e32 v121.l, v113.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v109.l, 0x7fff, v114.h, s10
	v_and_b32_e32 v121, 1, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v113, v113, v121, 0x7fff
	v_mov_b16_e64 v121.h, v161.l
	v_mov_b16_e32 v121.l, v116.h
	v_cndmask_b16 v109.h, 0x7fff, v113.h, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v121, 1, v121
	v_add3_u32 v116, v116, v121, 0x7fff
	v_mov_b16_e64 v121.h, v161.l
	v_mov_b16_e32 v121.l, v115.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v110.l, 0x7fff, v116.h, s12
	v_and_b32_e32 v121, 1, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v115, v115, v121, 0x7fff
	v_mov_b16_e64 v121.h, v161.l
	v_mov_b16_e32 v121.l, v118.h
	v_cndmask_b16 v110.h, 0x7fff, v115.h, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v121, 1, v121
	v_add3_u32 v118, v118, v121, 0x7fff
	v_mov_b16_e64 v121.h, v161.l
	v_mov_b16_e32 v121.l, v117.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v111.l, 0x7fff, v118.h, s14
	v_and_b32_e32 v121, 1, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v117, v117, v121, 0x7fff
	v_mov_b16_e64 v121.h, v161.l
	v_mov_b16_e32 v121.l, v120.h
	v_cndmask_b16 v111.h, 0x7fff, v117.h, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v121, 1, v121
	v_add3_u32 v120, v120, v121, 0x7fff
	v_mov_b16_e64 v121.h, v161.l
	v_mov_b16_e32 v121.l, v119.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v112.l, 0x7fff, v120.h, s16
	v_and_b32_e32 v121, 1, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v119, v119, v121, 0x7fff
	v_cndmask_b16 v112.h, 0x7fff, v119.h, s17
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[105:112], v[97:104], v[9:16]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ;   in Loop: Header=BB0_1 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	s_movk_i32 s1, 0x800
	.loc	1 605 9 is_stmt 1               ; attention_backward.py:605:9
	s_and_not1_b32 vcc_lo, exec_lo, s41
	s_mov_b32 s5, 0
	s_cbranch_vccnz .LBB0_1
; %bb.4:
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v43, s18, v172
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v0, v173, v0
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v33, s34, v172
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
	v_mul_lo_u32 v27, s19, v172
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
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
		.amdhsa_next_free_vgpr 241
		.amdhsa_next_free_sgpr 58
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 241
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 58
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11048
; TotalNumSgprs: 60
; NumVgprs: 241
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 60
; NumVGPRsForWavesPerEU: 241
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 0
    .sgpr_count:     60
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     241
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
