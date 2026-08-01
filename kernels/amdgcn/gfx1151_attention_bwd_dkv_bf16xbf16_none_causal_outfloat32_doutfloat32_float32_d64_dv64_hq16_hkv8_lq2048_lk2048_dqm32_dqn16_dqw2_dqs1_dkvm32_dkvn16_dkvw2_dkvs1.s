	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[18:19], s[0:1], 0x74
.Ltmp0:
	.loc	1 536 23 prologue_end           ; attention_backward.py:536:23
	v_and_b32_e32 v42, 7, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v9, 3, v0
	s_clause 0x1
	s_load_b128 s[44:47], s[0:1], 0x0
	s_load_b64 s[8:9], s[0:1], 0x10
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s35, s2, 4
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_lshlrev_b32_e32 v97, 3, v42
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v1, s35, v9
	.loc	1 533 24                        ; attention_backward.py:533:24
	s_lshl_b32 s2, s3, 11
	s_mov_b32 s7, 0x31027000
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_add_i32 s12, s2, s35
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v1
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v220, 4, v0
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_u32 v50, v0, 4, 1
	s_clause 0x3
	s_load_b32 s31, s[0:1], 0x7c
	s_load_b32 s34, s[0:1], 0x9c
	s_load_b64 s[28:29], s[0:1], 0x58
	s_load_b256 s[36:43], s[0:1], 0x38
	s_lshl_b32 s56, s3, 12
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[203:204], null, s18, v9, v[97:98]
	s_mul_i32 s30, s18, s12
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_cmp_gt_i32_e64 s2, s18, v97
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_and_b32 s5, s47, 0xffff
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_mul_lo_u32 v41, s19, v9
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v9, 56, v0
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_mul_i32 s33, s19, s12
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_lshl_add_u32 v119, s18, 3, v203
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_lshl_u32 v1, v203, s30, 1
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s4, vcc_lo, s2
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v43, 1, v9
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_lshl_u32 v2, v119, s30, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_lshl_add_u32 v44, s19, 3, v41
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xor_b32_e32 v9, v220, v43
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v10, v41, v97
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e64 v5, 0x80000000, v2, s4
	s_mov_b32 s4, s46
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v195, s35, v50
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v191, 0, v9
	s_clause 0x1
	buffer_load_b128 v[1:4], v1, s[4:7], 0 offen
	buffer_load_b128 v[5:8], v5, s[4:7], 0 offen
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s4, s19, v97
	.loc	1 579 17                        ; attention_backward.py:579:17
	scratch_store_b32 off, v10, off offset:164 ; 4-byte Folded Spill
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_lshl_u32 v10, v10, s33, 1
	.loc	1 603 39                        ; attention_backward.py:603:39
	s_sub_i32 s1, s35, s34
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s0, 0x800, v195
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 603 25                        ; attention_backward.py:603:25
	s_max_i32 s3, s1, 0
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	s_mov_b32 s52, s40
	.loc	1 604 45                        ; attention_backward.py:604:45
	s_and_b32 s40, s3, 0x7fffffe0
	.loc	1 672 31                        ; attention_backward.py:672:31
	s_mul_f32 s58, s31, 0x3fb8aa3b
	s_cmpk_lt_i32 s1, 0x800
	s_mov_b32 s20, 0
	s_mov_b32 s57, -1
	s_mov_b32 s46, s6
	s_mov_b32 s47, s7
	s_mov_b32 s48, s38
	s_cselect_b32 s59, -1, 0
	s_and_b32 s45, s45, 0xffff
	s_and_b32 s49, s39, 0xffff
	s_and_b32 s53, s41, 0xffff
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s1, 0
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(1)
	ds_store_b128 v191, v[1:4]
	s_waitcnt vmcnt(0)
	ds_store_b128 v191, v[5:8] offset:1024
	v_mov_b32_e32 v1, 0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add_nc_u32_e32 v227, v44, v97
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v6, v1 :: v_dual_and_b32 v101, 15, v0
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_lshl_u32 v11, v227, s33, 1
	v_dual_mov_b32 v12, v1 :: v_dual_and_b32 v45, 16, v0
	v_dual_mov_b32 v3, v1 :: v_dual_and_b32 v46, 32, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v10, 0x80000000, v11, vcc_lo
	v_dual_mov_b32 v5, v1 :: v_dual_lshlrev_b32 v228, 5, v0
	s_clause 0x1
	buffer_load_b128 v[33:36], v9, s[8:11], 0 offen
	buffer_load_b128 v[37:40], v10, s[8:11], 0 offen
	v_dual_mov_b32 v9, v1 :: v_dual_lshlrev_b32 v42, 4, v42
	v_mov_b32_e32 v10, v1
	v_mul_u32_u24_e32 v47, 0x110, v101
	v_mov_b32_e32 v4, v1
	v_dual_mov_b32 v11, v1 :: v_dual_lshlrev_b32 v48, 1, v101
	v_dual_mov_b32 v14, v1 :: v_dual_lshlrev_b32 v45, 2, v45
	v_lshl_add_u32 v49, v46, 1, 0
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshl_or_b32 v42, v101, 7, v42
	v_lshl_or_b32 v231, v46, 7, v47
	v_xor_b32_e32 v230, v228, v43
	v_mov_b32_e32 v16, v1
	v_or3_b32 v229, v48, v45, v46
	v_add3_u32 v198, 0, v46, v48
	v_lshl_add_u32 v199, v101, 2, v49
	v_add_nc_u32_e32 v45, 0, v42
	v_xad_u32 v47, v42, 16, 0
	v_xad_u32 v48, v42, 32, 0
	v_xad_u32 v49, v42, 48, 0
	v_xad_u32 v51, v42, 64, 0
	v_xad_u32 v52, 0x50, v42, 0
	v_xad_u32 v53, 0x60, v42, 0
	v_xad_u32 v54, 0x70, v42, 0
	v_lshl_or_b32 v123, v46, 6, v42
	v_xor_b32_e32 v42, 0x880, v230
	v_xor_b32_e32 v56, 48, v231
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_xor_b32_e32 v57, 64, v231
	v_add_nc_u32_e32 v197, 0, v42
	v_dual_mov_b32 v29, v1 :: v_dual_add_nc_u32 v42, 0, v56
	scratch_store_b32 off, v50, off offset:188 ; 4-byte Folded Spill
	v_xor_b32_e32 v58, 0x50, v231
	v_dual_mov_b32 v7, v1 :: v_dual_lshlrev_b32 v0, 3, v0
	scratch_store_b32 off, v42, off offset:136 ; 4-byte Folded Spill
	v_dual_mov_b32 v31, v1 :: v_dual_add_nc_u32 v42, 0, v57
	v_xor_b32_e32 v59, 0x60, v231
	v_dual_mov_b32 v13, v1 :: v_dual_and_b32 v0, 48, v0
	scratch_store_b32 off, v42, off offset:140 ; 4-byte Folded Spill
	v_dual_mov_b32 v17, v1 :: v_dual_add_nc_u32 v42, 0, v58
	v_xor_b32_e32 v60, 0x70, v231
	v_mov_b32_e32 v19, v1
	v_lshl_or_b32 v192, v101, 6, v0
	scratch_store_b32 off, v42, off offset:144 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v42, 0, v59
	v_xor_b32_e32 v61, 0x80, v231
	v_mov_b32_e32 v21, v1
	v_xor_b32_e32 v62, 0x90, v231
	v_xor_b32_e32 v65, 0xc0, v231
	scratch_store_b32 off, v42, off offset:148 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v42, 0, v60
	v_xor_b32_e32 v66, 0xd0, v231
	v_xor_b32_e32 v67, 0xe0, v231
	v_xor_b32_e32 v68, 0xf0, v231
	v_xor_b32_e32 v69, 0x90, v229
	v_xor_b32_e32 v70, 0x120, v229
	v_xor_b32_e32 v71, 0x1b0, v229
	v_xor_b32_e32 v72, 16, v192
	v_xor_b32_e32 v73, 32, v192
	v_xor_b32_e32 v74, 48, v192
	scratch_store_b32 off, v42, off offset:152 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v42, 0, v61
	v_dual_mov_b32 v32, v1 :: v_dual_add_nc_u32 v59, 0, v65
	v_dual_mov_b32 v18, v1 :: v_dual_add_nc_u32 v61, 0, v67
	v_dual_mov_b32 v20, v1 :: v_dual_add_nc_u32 v221, 0, v69
	v_dual_mov_b32 v22, v1 :: v_dual_add_nc_u32 v223, 0, v71
	v_mov_b32_e32 v23, v1
	v_dual_mov_b32 v24, v1 :: v_dual_add_nc_u32 v225, 0, v73
	scratch_store_b32 off, v42, off offset:156 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v42, 0, v62
	v_add_nc_u32_e32 v60, 0, v66
	v_add_nc_u32_e32 v62, 0, v68
	v_add_nc_u32_e32 v222, 0, v70
	v_add_nc_u32_e32 v232, 0, v72
	v_add_nc_u32_e32 v226, 0, v74
	ds_load_b128 v[65:68], v45
	ds_load_b128 v[69:72], v47
	ds_load_b128 v[73:76], v48
	ds_load_b128 v[77:80], v49
	ds_load_b128 v[81:84], v51
	ds_load_b128 v[85:88], v52
	ds_load_b128 v[89:92], v53
	ds_load_b128 v[93:96], v54
	v_mov_b32_e32 v8, v1
	scratch_store_b32 off, v42, off offset:160 ; 4-byte Folded Spill
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xor_b32_e32 v43, 0x890, v230
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_lshrrev_b32_e32 v102, 1, v46
	v_xor_b32_e32 v46, 16, v231
	v_xor_b32_e32 v55, 32, v231
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v15, v1 :: v_dual_add_nc_u32 v200, 0, v43
	v_or_b32_e32 v50, 4, v97
	v_mad_u64_u32 v[42:43], null, s19, 24, v[41:42]
	v_dual_mov_b32 v25, v1 :: v_dual_add_nc_u32 v194, 0, v55
	v_dual_mov_b32 v30, v1 :: v_dual_add_nc_u32 v233, 0, v46
	v_xor_b32_e32 v0, 16, v230
	v_xor_b32_e32 v63, 0xa0, v231
	v_xor_b32_e32 v64, 0xb0, v231
	v_xor_b32_e32 v46, 16, v123
	v_xor_b32_e32 v55, 32, v123
	v_xor_b32_e32 v56, 48, v123
	v_xor_b32_e32 v57, 64, v123
	v_xor_b32_e32 v98, 0x50, v123
	v_xor_b32_e32 v99, 0x60, v123
	v_xor_b32_e32 v100, 0x70, v123
	v_lshl_add_u32 v41, s19, 4, v41
	v_dual_mov_b32 v2, v1 :: v_dual_add_nc_u32 v239, v44, v50
	v_dual_mov_b32 v26, v1 :: v_dual_add_nc_u32 v205, 0, v0
	v_add_nc_u32_e32 v196, 0, v63
	v_add_nc_u32_e32 v58, 0, v64
	v_add_nc_u32_e32 v63, 0, v46
	v_add_nc_u32_e32 v234, 0, v55
	v_add_nc_u32_e32 v235, 0, v56
	v_add_nc_u32_e32 v236, 0, v57
	v_add_nc_u32_e32 v237, 0, v98
	v_add_nc_u32_e32 v238, 0, v99
	v_add_nc_u32_e32 v219, v97, v41
	v_add_nc_u32_e32 v122, v50, v41
	v_add_nc_u32_e32 v121, v97, v42
	v_add_nc_u32_e32 v64, v50, v42
	v_add_nc_u32_e32 v41, 0, v100
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v224, v102, v101
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt vmcnt(1)
	ds_store_b128 v191, v[33:36]
	s_waitcnt vmcnt(0)
	ds_store_b128 v191, v[37:40] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v45
	ds_load_b128 v[37:40], v47
	ds_load_b128 v[103:106], v48
	ds_load_b128 v[107:110], v49
	ds_load_b128 v[111:114], v51
	ds_load_b128 v[115:118], v52
	ds_load_b128 v[124:127], v53
	ds_load_b128 v[128:131], v54
	v_mad_u64_u32 v[44:45], null, s18, 24, v[203:204]
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v101, off offset:184
	scratch_store_b32 off, v102, off offset:192
	scratch_store_b32 off, v119, off offset:168
	scratch_store_b32 off, v123, off offset:172
	scratch_store_b32 off, v41, off offset:176
	scratch_store_b32 off, v63, off offset:180
	s_waitcnt lgkmcnt(7)
	scratch_store_b128 off, v[33:36], off offset:8 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(6)
	scratch_store_b128 off, v[37:40], off offset:24 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(5)
	scratch_store_b128 off, v[103:106], off offset:40 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(4)
	scratch_store_b128 off, v[107:110], off offset:56 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(3)
	scratch_store_b128 off, v[111:114], off offset:72 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(2)
	scratch_store_b128 off, v[115:118], off offset:88 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[124:127], off offset:104 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[128:131], off offset:120 ; 16-byte Folded Spill
	s_branch .LBB0_2
.LBB0_1:                                ; %Flow270
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 21 is_stmt 0                ; attention_backward.py:0:21
	s_xor_b32 s3, s57, -1
	s_movk_i32 s1, 0x800
	.loc	1 605 9 is_stmt 1               ; attention_backward.py:605:9
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s57, 0
	s_cbranch_vccz .LBB0_6
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_and_not1_b32 vcc_lo, exec_lo, s59
	s_cbranch_vccnz .LBB0_1
; %bb.3:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 662 34                        ; attention_backward.py:662:34
	s_or_b32 s41, s56, s1
	s_mov_b32 s60, s40
.LBB0_4:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 34 is_stmt 0                ; attention_backward.py:0:34
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 664 25 is_stmt 1              ; attention_backward.py:664:25
	s_or_b32 s1, s60, s41
	s_waitcnt vmcnt(7)
	v_lshl_add_u32 v35, s18, 4, v203
	s_mul_i32 s3, s1, s18
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_mov_b32 s21, s20
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v33, s3, v203, 1
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v34, s3, v119, 1
	v_add_lshl_u32 v35, s3, v35, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v36, s3, v44, 1
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_mov_b32 s22, s20
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	v_cndmask_b32_e64 v34, 0x80000000, v34, s2
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
	v_cndmask_b32_e64 v36, 0x80000000, v36, s2
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_mov_b32 s23, s20
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_clause 0x3
	buffer_load_b128 v[105:108], v33, s[44:47], 0 offen
	buffer_load_b128 v[109:112], v34, s[44:47], 0 offen
	buffer_load_b128 v[113:116], v35, s[44:47], 0 offen
	buffer_load_b128 v[117:120], v36, s[44:47], 0 offen
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	s_mov_b32 s26, s20
	s_mov_b32 s27, s20
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v104, s27 :: v_dual_add_nc_u32 v33, 0, v123
	.loc	1 664 25                        ; attention_backward.py:664:25
	scratch_store_b64 off, v[44:45], off    ; 8-byte Folded Spill
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s50, s46
	s_mov_b32 s51, s47
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v103, s26 :: v_dual_mov_b32 v102, s25
	v_dual_mov_b32 v101, s24 :: v_dual_mov_b32 v100, s23
	v_dual_mov_b32 v99, s22 :: v_dual_mov_b32 v98, s21
	v_mov_b32_e32 v97, s20
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s1, s1, s19
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s54, s46
	s_mov_b32 s55, s47
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s38, s46
	s_mov_b32 s39, s47
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v249, 0, v230
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v151, 0x1800, v199
	v_mov_b32_e32 v189, v197
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(3)
	ds_store_b128 v191, v[105:108]
	s_waitcnt vmcnt(2)
	ds_store_b128 v191, v[109:112] offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b128 v191, v[113:116] offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b128 v191, v[117:120] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[123:126], v33
	ds_load_b128 v[127:130], v63
	ds_load_b128 v[131:134], v234
	ds_load_b128 v[135:138], v235
	v_or_b32_e32 v33, s41, v224
	scratch_load_b32 v35, off, off offset:164 ; 4-byte Folded Reload
	v_mov_b32_e32 v204, v200
	.loc	1 699 33                        ; attention_backward.py:699:33
	v_or_b32_e32 v33, s60, v33
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 699 25 is_stmt 0              ; attention_backward.py:699:25
	v_lshlrev_b32_e32 v33, 2, v33
	buffer_load_b32 v34, v33, s[48:51], 0 offen
	.loc	1 671 30 is_stmt 1              ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[139:146], v[65:72], v[123:130], v[97:104]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[123:126], v236
	ds_load_b128 v[127:130], v237
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[139:146], v[73:80], v[131:138], v[139:146]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[139:146], v[81:88], v[123:130], v[139:146]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[123:126], v238
	ds_load_b128 v[127:130], v41
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[139:146], v[89:96], v[123:130], v[139:146]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v127, 0x1400, v199
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v247, s58, v139, -v34
	v_fma_f32 v246, s58, v140, -v34
	v_fma_f32 v241, s58, v141, -v34
	v_fma_f32 v242, s58, v142, -v34
	v_fma_f32 v245, s58, v143, -v34
	v_fma_f32 v243, s58, v144, -v34
	v_fma_f32 v244, s58, v145, -v34
	v_fma_f32 v240, s58, v146, -v34
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v34, s1, v35, 2
	v_add_nc_u32_e32 v35, 4, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v34, 0x80000000, v34, s4
	v_add_lshl_u32 v35, v35, s1, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v37, 0x80000000, v35, s4
	v_add_lshl_u32 v35, s1, v227, 2
	v_cndmask_b32_e64 v41, 0x80000000, v35, s4
	v_add_lshl_u32 v35, v239, s1, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v45, 0x80000000, v35, s4
	v_add_lshl_u32 v35, s1, v219, 2
	v_cndmask_b32_e64 v49, 0x80000000, v35, s4
	v_add_lshl_u32 v35, s1, v122, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v53, 0x80000000, v35, s4
	v_add_lshl_u32 v35, s1, v121, 2
	v_cndmask_b32_e64 v123, 0x80000000, v35, s4
	v_add_lshl_u32 v35, s1, v64, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v124, 0x80000000, v35, s4
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v248, v33, s[52:55], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x7
	buffer_load_b128 v[33:36], v34, s[36:39], 0 offen
	buffer_load_b128 v[37:40], v37, s[36:39], 0 offen
	buffer_load_b128 v[41:44], v41, s[36:39], 0 offen
	buffer_load_b128 v[45:48], v45, s[36:39], 0 offen
	buffer_load_b128 v[49:52], v49, s[36:39], 0 offen
	buffer_load_b128 v[53:56], v53, s[36:39], 0 offen
	buffer_load_b128 v[206:209], v123, s[36:39], 0 offen
	buffer_load_b128 v[210:213], v124, s[36:39], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v123, 0, v228
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b128 v123, v[33:36]
	s_waitcnt vmcnt(6)
	ds_store_b128 v123, v[37:40] offset:16
	s_waitcnt vmcnt(5)
	ds_store_b128 v123, v[41:44] offset:2048
	s_waitcnt vmcnt(4)
	ds_store_b128 v123, v[45:48] offset:2064
	s_waitcnt vmcnt(3)
	ds_store_b128 v123, v[49:52] offset:4096
	s_waitcnt vmcnt(2)
	ds_store_b128 v123, v[53:56] offset:4112
	s_waitcnt vmcnt(1)
	ds_store_b128 v123, v[206:209] offset:6144
	s_waitcnt vmcnt(0)
	ds_store_b128 v123, v[210:213] offset:6160
	v_add_nc_u32_e32 v123, 0x400, v199
	v_add_nc_u32_e32 v124, 0x800, v199
	v_add_nc_u32_e32 v125, 0xc00, v199
	v_add_nc_u32_e32 v126, 0x1000, v199
	v_add_nc_u32_e32 v152, 0x1c00, v199
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[149:150], v123 offset1:32
	ds_load_2addr_b32 v[155:156], v123 offset0:64 offset1:96
	ds_load_2addr_b32 v[147:148], v123 offset0:128 offset1:160
	ds_load_2addr_b32 v[157:158], v123 offset0:192 offset1:224
	ds_load_2addr_b32 v[145:146], v124 offset1:32
	ds_load_2addr_b32 v[159:160], v124 offset0:64 offset1:96
	ds_load_2addr_b32 v[143:144], v124 offset0:128 offset1:160
	ds_load_2addr_b32 v[161:162], v124 offset0:192 offset1:224
	ds_load_2addr_b32 v[141:142], v125 offset1:32
	ds_load_2addr_b32 v[163:164], v125 offset0:64 offset1:96
	ds_load_2addr_b32 v[139:140], v125 offset0:128 offset1:160
	ds_load_2addr_b32 v[165:166], v125 offset0:192 offset1:224
	ds_load_2addr_b32 v[137:138], v126 offset1:32
	ds_load_2addr_b32 v[167:168], v126 offset0:64 offset1:96
	ds_load_2addr_b32 v[135:136], v126 offset0:128 offset1:160
	ds_load_2addr_b32 v[169:170], v126 offset0:192 offset1:224
	ds_load_2addr_b32 v[133:134], v127 offset1:32
	ds_load_2addr_b32 v[171:172], v127 offset0:64 offset1:96
	ds_load_2addr_b32 v[131:132], v127 offset0:128 offset1:160
	ds_load_2addr_b32 v[173:174], v127 offset0:192 offset1:224
	ds_load_2addr_b32 v[129:130], v151 offset1:32
	ds_load_2addr_b32 v[175:176], v151 offset0:64 offset1:96
	ds_load_2addr_b32 v[127:128], v151 offset0:128 offset1:160
	ds_load_2addr_b32 v[177:178], v151 offset0:192 offset1:224
	ds_load_2addr_b32 v[125:126], v152 offset1:32
	ds_load_2addr_b32 v[179:180], v152 offset0:64 offset1:96
	ds_load_2addr_b32 v[123:124], v152 offset0:128 offset1:160
	ds_load_2addr_b32 v[181:182], v152 offset0:192 offset1:224
	ds_load_2addr_b32 v[153:154], v199 offset1:32
	ds_load_2addr_b32 v[183:184], v199 offset0:64 offset1:96
	ds_load_2addr_b32 v[151:152], v199 offset0:128 offset1:160
	ds_load_2addr_b32 v[185:186], v199 offset0:192 offset1:224
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v249, v[33:36]
	ds_store_b128 v249, v[49:52] offset:4096
	ds_store_b128 v205, v[37:40]
	ds_store_b128 v205, v[53:56] offset:4096
	ds_store_b128 v197, v[41:44]
	ds_store_b128 v197, v[206:209] offset:4096
	ds_store_b128 v200, v[45:48]
	ds_store_b128 v200, v[210:213] offset:4096
	v_add_nc_u32_e32 v33, 0, v231
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v33
	ds_load_b128 v[37:40], v233
	v_mov_b32_e32 v63, v62
	v_mov_b32_e32 v57, v194
	v_bfe_u32 v55, v141, 16, 1
	v_bfe_u32 v56, v139, 16, 1
	v_bfe_u32 v190, v126, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v55, v141, v55, 0x7fff
	v_add3_u32 v56, v139, v56, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v190, v126, v190, 0x7fff
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v41, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v37, v37
	v_cmp_o_f32_e64 s1, v34, v34
	v_cmp_o_f32_e64 s3, v35, v35
	v_add3_u32 v41, v33, v41, 0x7fff
	v_bfe_u32 v33, v34, 16, 1
	v_cmp_o_f32_e64 s5, v36, v36
	v_cmp_o_f32_e64 s7, v38, v38
	v_cmp_o_f32_e64 s8, v39, v39
	v_cmp_o_f32_e64 s9, v40, v40
	v_add3_u32 v42, v34, v33, 0x7fff
	v_bfe_u32 v33, v35, 16, 1
	v_cndmask_b16 v206.l, 0x7fff, v41.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v206.h, 0x7fff, v42.h, s1
	v_add3_u32 v43, v35, v33, 0x7fff
	v_bfe_u32 v33, v36, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v207.l, 0x7fff, v43.h, s3
	v_add3_u32 v44, v36, v33, 0x7fff
	v_bfe_u32 v33, v37, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v207.h, 0x7fff, v44.h, s5
	v_add3_u32 v45, v37, v33, 0x7fff
	scratch_load_b32 v37, off, off offset:136 ; 4-byte Folded Reload
	v_bfe_u32 v33, v38, 16, 1
	v_cndmask_b16 v208.l, 0x7fff, v45.h, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v46, v38, v33, 0x7fff
	v_bfe_u32 v33, v39, 16, 1
	v_cndmask_b16 v208.h, 0x7fff, v46.h, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v47, v39, v33, 0x7fff
	v_bfe_u32 v33, v40, 16, 1
	v_cndmask_b16 v209.l, 0x7fff, v47.h, s8
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v48, v40, v33, 0x7fff
	ds_load_b128 v[33:36], v194
	v_cndmask_b16 v209.h, 0x7fff, v48.h, s9
	s_waitcnt vmcnt(0)
	ds_load_b128 v[37:40], v37
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v49, v33, 16, 1
	v_cmp_o_f32_e64 s10, v33, v33
	v_cmp_o_f32_e64 s11, v34, v34
	v_cmp_o_f32_e64 s12, v35, v35
	v_cmp_o_f32_e64 s13, v36, v36
	v_add3_u32 v33, v33, v49, 0x7fff
	v_bfe_u32 v49, v34, 16, 1
	v_bfe_u32 v194, v124, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v210.l, 0x7fff, v33.h, s10
	v_add3_u32 v34, v34, v49, 0x7fff
	v_bfe_u32 v49, v35, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v194, v124, v194, 0x7fff
	v_cndmask_b16 v210.h, 0x7fff, v34.h, s11
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v35, v35, v49, 0x7fff
	v_bfe_u32 v49, v36, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s14, v37, v37
	v_cmp_o_f32_e64 s15, v38, v38
	v_cmp_o_f32_e64 s16, v39, v39
	v_cmp_o_f32_e64 s17, v40, v40
	v_add3_u32 v36, v36, v49, 0x7fff
	v_bfe_u32 v49, v37, 16, 1
	v_cndmask_b16 v211.l, 0x7fff, v35.h, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v211.h, 0x7fff, v36.h, s13
	v_add3_u32 v37, v37, v49, 0x7fff
	v_bfe_u32 v49, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v212.l, 0x7fff, v37.h, s14
	v_add3_u32 v38, v38, v49, 0x7fff
	v_bfe_u32 v49, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v212.h, 0x7fff, v38.h, s15
	v_add3_u32 v39, v39, v49, 0x7fff
	v_bfe_u32 v49, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v213.l, 0x7fff, v39.h, s16
	v_add3_u32 v40, v40, v49, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v213.h, 0x7fff, v40.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[33:36], off, off offset:8
	scratch_load_b128 v[37:40], off, off offset:24
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[33:40], v[206:213], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:140
	scratch_load_b32 v37, off, off offset:144
	s_waitcnt vmcnt(1)
	ds_load_b128 v[33:36], v33
	s_waitcnt vmcnt(0)
	ds_load_b128 v[37:40], v37
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v41, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v37, v37
	v_cmp_o_f32_e64 s1, v34, v34
	v_cmp_o_f32_e64 s3, v35, v35
	v_add3_u32 v41, v33, v41, 0x7fff
	v_bfe_u32 v33, v34, 16, 1
	v_cmp_o_f32_e64 s5, v36, v36
	v_cmp_o_f32_e64 s7, v38, v38
	v_cmp_o_f32_e64 s8, v39, v39
	v_cmp_o_f32_e64 s9, v40, v40
	v_add3_u32 v42, v34, v33, 0x7fff
	v_bfe_u32 v33, v35, 16, 1
	v_cndmask_b16 v206.l, 0x7fff, v41.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v206.h, 0x7fff, v42.h, s1
	v_add3_u32 v43, v35, v33, 0x7fff
	v_bfe_u32 v33, v36, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v207.l, 0x7fff, v43.h, s3
	v_add3_u32 v44, v36, v33, 0x7fff
	v_bfe_u32 v33, v37, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v207.h, 0x7fff, v44.h, s5
	v_add3_u32 v45, v37, v33, 0x7fff
	v_bfe_u32 v33, v38, 16, 1
	scratch_load_b32 v37, off, off offset:152 ; 4-byte Folded Reload
	v_cndmask_b16 v208.l, 0x7fff, v45.h, s6
	v_add3_u32 v46, v38, v33, 0x7fff
	v_bfe_u32 v33, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v208.h, 0x7fff, v46.h, s7
	v_add3_u32 v47, v39, v33, 0x7fff
	v_bfe_u32 v33, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v209.l, 0x7fff, v47.h, s8
	v_add3_u32 v48, v40, v33, 0x7fff
	scratch_load_b32 v33, off, off offset:148 ; 4-byte Folded Reload
	v_cndmask_b16 v209.h, 0x7fff, v48.h, s9
	s_waitcnt vmcnt(1)
	ds_load_b128 v[37:40], v37
	s_waitcnt vmcnt(0)
	ds_load_b128 v[33:36], v33
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s14, v37, v37
	v_cmp_o_f32_e64 s15, v38, v38
	v_cmp_o_f32_e64 s16, v39, v39
	v_cmp_o_f32_e64 s17, v40, v40
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v49, v33, 16, 1
	v_cmp_o_f32_e64 s10, v33, v33
	v_cmp_o_f32_e64 s11, v34, v34
	v_cmp_o_f32_e64 s12, v35, v35
	v_cmp_o_f32_e64 s13, v36, v36
	v_add3_u32 v33, v33, v49, 0x7fff
	v_bfe_u32 v49, v34, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v210.l, 0x7fff, v33.h, s10
	v_add3_u32 v34, v34, v49, 0x7fff
	v_bfe_u32 v49, v35, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v210.h, 0x7fff, v34.h, s11
	v_add3_u32 v35, v35, v49, 0x7fff
	v_bfe_u32 v49, v36, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v211.l, 0x7fff, v35.h, s12
	v_add3_u32 v36, v36, v49, 0x7fff
	v_bfe_u32 v49, v37, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v211.h, 0x7fff, v36.h, s13
	v_add3_u32 v37, v37, v49, 0x7fff
	v_bfe_u32 v49, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v212.l, 0x7fff, v37.h, s14
	v_add3_u32 v38, v38, v49, 0x7fff
	v_bfe_u32 v49, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v212.h, 0x7fff, v38.h, s15
	v_add3_u32 v39, v39, v49, 0x7fff
	v_bfe_u32 v49, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v213.l, 0x7fff, v39.h, s16
	v_add3_u32 v40, v40, v49, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v213.h, 0x7fff, v40.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[33:36], off, off offset:40
	scratch_load_b128 v[37:40], off, off offset:56
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[33:40], v[206:213], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:156
	scratch_load_b32 v37, off, off offset:160
	s_waitcnt vmcnt(1)
	ds_load_b128 v[33:36], v33
	s_waitcnt vmcnt(0)
	ds_load_b128 v[37:40], v37
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v41, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_cmp_o_f32_e64 s1, v34, v34
	v_cmp_o_f32_e64 s3, v35, v35
	v_cmp_o_f32_e64 s5, v36, v36
	v_add3_u32 v41, v33, v41, 0x7fff
	v_bfe_u32 v33, v34, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v37, v37
	v_cmp_o_f32_e64 s7, v38, v38
	v_cmp_o_f32_e64 s8, v39, v39
	v_cmp_o_f32_e64 s9, v40, v40
	v_add3_u32 v42, v34, v33, 0x7fff
	v_bfe_u32 v33, v35, 16, 1
	v_cndmask_b16 v206.l, 0x7fff, v41.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v206.h, 0x7fff, v42.h, s1
	v_add3_u32 v43, v35, v33, 0x7fff
	v_bfe_u32 v33, v36, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v207.l, 0x7fff, v43.h, s3
	v_add3_u32 v44, v36, v33, 0x7fff
	v_bfe_u32 v33, v37, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v207.h, 0x7fff, v44.h, s5
	v_add3_u32 v45, v37, v33, 0x7fff
	v_bfe_u32 v33, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v208.l, 0x7fff, v45.h, s6
	v_add3_u32 v46, v38, v33, 0x7fff
	v_bfe_u32 v33, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v208.h, 0x7fff, v46.h, s7
	v_add3_u32 v47, v39, v33, 0x7fff
	v_bfe_u32 v33, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v209.l, 0x7fff, v47.h, s8
	v_add3_u32 v48, v40, v33, 0x7fff
	ds_load_b128 v[33:36], v196
	ds_load_b128 v[37:40], v58
	v_cndmask_b16 v209.h, 0x7fff, v48.h, s9
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v49, v33, 16, 1
	v_cmp_o_f32_e64 s10, v33, v33
	v_cmp_o_f32_e64 s11, v34, v34
	v_cmp_o_f32_e64 s12, v35, v35
	v_cmp_o_f32_e64 s13, v36, v36
	v_add3_u32 v33, v33, v49, 0x7fff
	v_bfe_u32 v49, v34, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s14, v37, v37
	v_cmp_o_f32_e64 s15, v38, v38
	v_cmp_o_f32_e64 s16, v39, v39
	v_cmp_o_f32_e64 s17, v40, v40
	v_add3_u32 v34, v34, v49, 0x7fff
	v_bfe_u32 v49, v35, 16, 1
	v_cndmask_b16 v210.l, 0x7fff, v33.h, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v210.h, 0x7fff, v34.h, s11
	v_add3_u32 v35, v35, v49, 0x7fff
	v_bfe_u32 v49, v36, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v211.l, 0x7fff, v35.h, s12
	v_add3_u32 v36, v36, v49, 0x7fff
	v_bfe_u32 v49, v37, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v211.h, 0x7fff, v36.h, s13
	v_add3_u32 v37, v37, v49, 0x7fff
	v_bfe_u32 v49, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v212.l, 0x7fff, v37.h, s14
	v_add3_u32 v38, v38, v49, 0x7fff
	v_bfe_u32 v49, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v212.h, 0x7fff, v38.h, s15
	v_add3_u32 v39, v39, v49, 0x7fff
	v_bfe_u32 v49, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v213.l, 0x7fff, v39.h, s16
	v_add3_u32 v40, v40, v49, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v213.h, 0x7fff, v40.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[33:36], off, off offset:72
	scratch_load_b128 v[37:40], off, off offset:88
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[33:40], v[206:213], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[33:36], v59
	ds_load_b128 v[37:40], v60
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v41, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_cmp_o_f32_e64 s1, v34, v34
	v_cmp_o_f32_e64 s3, v35, v35
	v_cmp_o_f32_e64 s5, v36, v36
	v_add3_u32 v41, v33, v41, 0x7fff
	v_bfe_u32 v33, v34, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v37, v37
	v_cmp_o_f32_e64 s7, v38, v38
	v_cmp_o_f32_e64 s8, v39, v39
	v_cmp_o_f32_e64 s9, v40, v40
	v_add3_u32 v42, v34, v33, 0x7fff
	v_bfe_u32 v33, v35, 16, 1
	v_cndmask_b16 v206.l, 0x7fff, v41.h, vcc_lo
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v41, s60, v224
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v206.h, 0x7fff, v42.h, s1
	v_add3_u32 v43, v35, v33, 0x7fff
	v_bfe_u32 v33, v36, 16, 1
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v42, 2, v195
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v207.l, 0x7fff, v43.h, s3
	v_add3_u32 v44, v36, v33, 0x7fff
	v_bfe_u32 v33, v37, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v207.h, 0x7fff, v44.h, s5
	v_add3_u32 v45, v37, v33, 0x7fff
	v_bfe_u32 v33, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v208.l, 0x7fff, v45.h, s6
	v_add3_u32 v46, v38, v33, 0x7fff
	v_bfe_u32 v33, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v208.h, 0x7fff, v46.h, s7
	v_add3_u32 v47, v39, v33, 0x7fff
	v_bfe_u32 v33, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v209.l, 0x7fff, v47.h, s8
	v_add3_u32 v48, v40, v33, 0x7fff
	ds_load_b128 v[33:36], v61
	ds_load_b128 v[37:40], v62
	v_dual_mov_b32 v62, v61 :: v_dual_mov_b32 v61, v60
	v_mov_b32_e32 v60, v59
	v_cndmask_b16 v209.h, 0x7fff, v48.h, s9
	v_dual_mov_b32 v59, v58 :: v_dual_mov_b32 v58, v196
	v_mov_b32_e32 v196, v192
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v49, v33, 16, 1
	v_cmp_o_f32_e64 s10, v33, v33
	v_cmp_o_f32_e64 s11, v34, v34
	v_cmp_o_f32_e64 s12, v35, v35
	v_cmp_o_f32_e64 s13, v36, v36
	v_add3_u32 v33, v33, v49, 0x7fff
	v_bfe_u32 v49, v34, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s14, v37, v37
	v_cmp_o_f32_e64 s15, v38, v38
	v_cmp_o_f32_e64 s16, v39, v39
	v_cmp_o_f32_e64 s17, v40, v40
	v_add3_u32 v34, v34, v49, 0x7fff
	v_bfe_u32 v49, v35, 16, 1
	v_cndmask_b16 v210.l, 0x7fff, v33.h, s10
	v_cmp_o_f32_e64 s10, v137, v137
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v210.h, 0x7fff, v34.h, s11
	v_add3_u32 v35, v35, v49, 0x7fff
	v_bfe_u32 v49, v36, 16, 1
	v_cmp_o_f32_e64 s11, v135, v135
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v211.l, 0x7fff, v35.h, s12
	v_add3_u32 v36, v36, v49, 0x7fff
	v_bfe_u32 v49, v37, 16, 1
	v_cmp_o_f32_e64 s12, v133, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v211.h, 0x7fff, v36.h, s13
	v_add3_u32 v37, v37, v49, 0x7fff
	v_bfe_u32 v49, v38, 16, 1
	v_cmp_o_f32_e64 s13, v131, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v212.l, 0x7fff, v37.h, s14
	v_add3_u32 v38, v38, v49, 0x7fff
	v_bfe_u32 v49, v39, 16, 1
	v_cmp_o_f32_e64 s14, v129, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v212.h, 0x7fff, v38.h, s15
	v_add3_u32 v39, v39, v49, 0x7fff
	v_bfe_u32 v49, v40, 16, 1
	v_cmp_o_f32_e64 s15, v127, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v213.l, 0x7fff, v39.h, s16
	v_add3_u32 v40, v40, v49, 0x7fff
	v_cmp_o_f32_e64 s16, v125, v125
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v213.h, 0x7fff, v40.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[33:36], off, off offset:104
	scratch_load_b128 v[37:40], off, off offset:120
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s17, v123, v123
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[33:40], v[206:213], v[97:104]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_dual_sub_f32 v40, v104, v248 :: v_dual_add_nc_u32 v41, s34, v41
	v_sub_f32_e32 v33, v97, v248
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_sub_f32_e32 v34, v98, v248
	v_sub_f32_e32 v35, v99, v248
	v_sub_f32_e32 v36, v100, v248
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s1, v42, v41
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v42, 4, v195
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e32 vcc_lo, v195, v41
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v38, v102, v248
	v_sub_f32_e32 v37, v101, v248
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s1, s0, s1
	.loc	1 676 30 is_stmt 0              ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s3, v42, v41
	.loc	1 514 23 is_stmt 1              ; attention_backward.py:514:23
	v_or_b32_e32 v42, 6, v195
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 vcc_lo, s0, vcc_lo
	s_and_b32 s3, s0, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 676 30 is_stmt 0              ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s5, v42, v41
	.loc	1 514 23 is_stmt 1              ; attention_backward.py:514:23
	v_or_b32_e32 v42, 8, v195
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s5, s0, s5
	.loc	1 676 30 is_stmt 0              ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s6, v42, v41
	.loc	1 514 23 is_stmt 1              ; attention_backward.py:514:23
	v_or_b32_e32 v42, 10, v195
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s6, s0, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 676 30 is_stmt 0              ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s7, v42, v41
	.loc	1 514 23 is_stmt 1              ; attention_backward.py:514:23
	v_or_b32_e32 v42, 12, v195
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s7, s0, s7
	.loc	1 676 30 is_stmt 0              ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s8, v42, v41
	.loc	1 514 23 is_stmt 1              ; attention_backward.py:514:23
	v_or_b32_e32 v42, 14, v195
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s8, s0, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 676 30 is_stmt 0              ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s9, v42, v41
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v247
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s9, s0, s9
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v98, 0, v41, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v33, v98, v33
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v33, s31, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v41, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_add3_u32 v33, v33, v41, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v246
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v246, 0, v229
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.l, 0x7fff, v33.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v98, v98
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v97, 0, v41, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v34, v97, v34
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v34, s31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v41, v34, 16, 1
	v_cmp_o_f32_e64 s1, v34, v34
	v_add3_u32 v34, v34, v41, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v241
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v241, 0, v41, s3
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v35, v241, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v35, s31, v35
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v41, v35, 16, 1
	v_cmp_o_f32_e64 s3, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v35, v35, v41, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v242
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v242, 0, v41, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v36, v242, v36
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v36, s31, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v41, v36, 16, 1
	v_cmp_o_f32_e64 s5, v36, v36
	v_add3_u32 v36, v36, v41, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v245
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v99, 0, v41, s6
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v37, v99, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v37, s31, v37
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v41, v37, 16, 1
	v_cmp_o_f32_e64 s6, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v37, v37, v41, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v243
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.h, 0x7fff, v37.h, s6
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v246, v33
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s1, v99, v99
	v_cmp_o_f32_e64 s6, v242, v242
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v246, v33 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v243, 0, v41, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v38, v243, v38
	.loc	1 720 47 is_stmt 0              ; attention_backward.py:720:47
	v_dual_sub_f32 v39, v103, v248 :: v_dual_mul_f32 v38, s31, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 1              ; attention_backward.py:721:37
	v_bfe_u32 v41, v38, 16, 1
	v_cmp_o_f32_e64 s7, v38, v38
	v_add3_u32 v38, v38, v41, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v244
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.h, 0x7fff, v38.h, s7
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v221, v33
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.l, 0x7fff, v35.h, s3
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s3, v97, v97
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v221, v33 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v244, 0, v41, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v39, v244, v39
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s7, v244, v244
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v39, s31, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v41, v39, 16, 1
	v_cmp_o_f32_e64 s8, v39, v39
	v_add3_u32 v39, v39, v41, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v240
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v240, 0, v192
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.h, 0x7fff, v39.h, s8
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v222, v33
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.l, 0x7fff, v36.h, s5
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s5, v243, v243
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v222, v33 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v245, 0, v41, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v40, v245, v40
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s8, v245, v245
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v40, s31, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v41, v40, 16, 1
	v_cmp_o_f32_e64 s9, v40, v40
	v_add3_u32 v40, v40, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v33.h, 0x7fff, v40.h, s9
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	ds_store_b16 v223, v33
	ds_store_b16_d16_hi v223, v33 offset:512
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_nc_u32_e32 v33, 0, v220
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[206:209], v240
	ds_load_b128 v[210:213], v232
	ds_load_b128 v[247:250], v225
	ds_load_b128 v[251:254], v226
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v33, v[105:108]
	ds_store_b128 v33, v[109:112] offset:1024
	ds_store_b128 v33, v[113:116] offset:2048
	ds_store_b128 v33, v[117:120] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v101, v198 offset:256
	ds_load_u16_d16 v100, v198
	ds_load_u16_d16 v102, v198 offset:512
	ds_load_u16_d16 v103, v198 offset:768
	ds_load_u16_d16 v104, v198 offset:1024
	ds_load_u16_d16 v106, v198 offset:1536
	ds_load_u16_d16 v105, v198 offset:1280
	ds_load_u16_d16 v112, v198 offset:1088
	ds_load_u16_d16 v111, v198 offset:832
	ds_load_u16_d16 v107, v198 offset:1792
	ds_load_u16_d16 v33, v198 offset:2048
	ds_load_u16_d16 v34, v198 offset:2304
	ds_load_u16_d16 v35, v198 offset:2560
	ds_load_u16_d16 v37, v198 offset:3072
	ds_load_u16_d16 v43, v198 offset:2624
	ds_load_u16_d16 v42, v198 offset:2368
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v112, v198 offset:1216
	ds_load_u16_d16_hi v102, v198 offset:640
	ds_load_u16_d16_hi v103, v198 offset:896
	ds_load_u16_d16_hi v104, v198 offset:1152
	ds_load_u16_d16 v113, v198 offset:1344
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v43, v198 offset:2752
	ds_load_u16_d16_hi v106, v198 offset:1664
	ds_load_u16_d16_hi v105, v198 offset:1408
	ds_load_u16_d16 v108, v198 offset:64
	ds_load_u16_d16_hi v101, v198 offset:384
	ds_load_u16_d16_hi v100, v198 offset:128
	ds_load_u16_d16 v110, v198 offset:576
	ds_load_u16_d16 v109, v198 offset:320
	ds_load_u16_d16_hi v107, v198 offset:1920
	ds_load_u16_d16 v114, v198 offset:1600
	ds_load_u16_d16 v41, v198 offset:2112
	ds_load_u16_d16 v115, v198 offset:1856
	ds_load_u16_d16_hi v111, v198 offset:960
	ds_load_u16_d16 v40, v198 offset:3840
	ds_load_u16_d16 v38, v198 offset:3328
	ds_load_u16_d16 v36, v198 offset:2816
	ds_load_u16_d16 v39, v198 offset:3584
	ds_load_u16_d16 v48, v198 offset:3904
	ds_load_u16_d16 v45, v198 offset:3136
	ds_load_u16_d16 v47, v198 offset:3648
	ds_load_u16_d16 v46, v198 offset:3392
	ds_load_u16_d16_hi v37, v198 offset:3200
	ds_load_u16_d16 v44, v198 offset:2880
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v42, v198 offset:2496
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v113, v198 offset:1472
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v114, v198 offset:1728
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v115, v198 offset:1984
	ds_load_u16_d16_hi v33, v198 offset:2176
	ds_load_u16_d16_hi v41, v198 offset:2240
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v38, v198 offset:3456
	ds_load_u16_d16_hi v34, v198 offset:2432
	ds_load_u16_d16_hi v35, v198 offset:2688
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v36, v198 offset:2944
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v39, v198 offset:3712
	ds_load_u16_d16_hi v40, v198 offset:3968
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v48, v198 offset:4032
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v44, v198 offset:3008
	ds_load_u16_d16_hi v45, v198 offset:3264
	ds_load_u16_d16_hi v47, v198 offset:3776
	ds_load_u16_d16_hi v46, v198 offset:3520
	ds_load_u16_d16_hi v108, v198 offset:192
	ds_load_u16_d16_hi v110, v198 offset:704
	ds_load_u16_d16_hi v109, v198 offset:448
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[100:107], v[206:213], v[25:32]
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s9, v139, v139
	v_bfe_u32 v116, v133, 16, 1
	v_bfe_u32 v117, v131, 16, 1
	v_bfe_u32 v118, v129, 16, 1
	v_bfe_u32 v119, v127, 16, 1
	v_bfe_u32 v120, v125, 16, 1
	v_add3_u32 v116, v133, v116, 0x7fff
	v_add3_u32 v117, v131, v117, 0x7fff
	v_add3_u32 v118, v129, v118, 0x7fff
	v_add3_u32 v119, v127, v119, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[33:40], v[247:254], v[25:32]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v33, v98, 16, 1
	v_bfe_u32 v36, v244, 16, 1
	v_bfe_u32 v37, v245, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v38, v161, 16, 1
	v_bfe_u32 v39, v163, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v33, v98, v33, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[17:24], v[108:115], v[206:213], v[17:24]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_mov_b16_e32 v113.l, 0
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v36, v244, v36, 0x7fff
	v_add3_u32 v37, v245, v37, 0x7fff
	v_cndmask_b16 v113.h, 0x7fff, v33.h, vcc_lo
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v38, v161, v38, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v100.l, v113.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v52.h, 0x7fff, v36.h, s7
	v_cndmask_b16 v53.h, 0x7fff, v37.h, s8
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v33, v98, v113
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v36, v157, 16, 1
	v_bfe_u32 v37, v159, 16, 1
	v_add3_u32 v39, v163, v39, 0x7fff
	v_bfe_u32 v40, v165, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v34, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v36, v157, v36, 0x7fff
	v_add3_u32 v37, v159, v37, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[17:24], v[41:48], v[247:254], v[17:24]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v98, v33, v34, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v33, v99, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v40, v165, v40, 0x7fff
	v_bfe_u32 v41, v167, 16, 1
	v_bfe_u32 v43, v171, 16, 1
	v_bfe_u32 v44, v173, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v33, v99, v33, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v45, v175, 16, 1
	v_add3_u32 v41, v167, v41, 0x7fff
	v_add3_u32 v43, v171, v43, 0x7fff
	v_add3_u32 v44, v173, v44, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v100.h, 0x7fff, v33.h, s1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v45, v175, v45, 0x7fff
	v_bfe_u32 v46, v177, 16, 1
	v_bfe_u32 v47, v179, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v50.l, v113.l
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v33, v99, v100
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_bfe_u32 v48, v181, 16, 1
	v_add3_u32 v46, v177, v46, 0x7fff
	v_add3_u32 v47, v179, v47, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v51.l, v113.l
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_bfe_u32 v34, v33, 16, 1
	v_cmp_o_f32_e64 s1, v33, v33
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_bfe_u32 v42, v169, 16, 1
	v_add3_u32 v48, v181, v48, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v49.l, v113.l
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_add3_u32 v99, v33, v34, 0x7fff
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_bfe_u32 v33, v97, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v42, v169, v42, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v52.l, v113.l
	v_mov_b16_e32 v53.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v206, v123, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v33, v97, v33, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v33.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s7, v143, v143
	v_cmp_o_f32_e64 s8, v141, v141
	v_bfe_u32 v114, v137, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s3
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v246, v100 offset:512
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v115, v135, 16, 1
	v_add3_u32 v206, v123, v206, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v36.l, v113.l
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v34, v97, v33
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v221, v33
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v33, v241, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v37.l, v113.l
	v_mov_b16_e32 v38.l, v113.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v35, v34, 16, 1
	v_cmp_o_f32_e64 s3, v34, v34
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v33, v241, v33, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.l, 0x7fff, v98.h, vcc_lo
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v183, v183
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v34, v34, v35, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v35, v243, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v39.l, v113.l
	v_mov_b16_e32 v40.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v114, v137, v114, 0x7fff
	v_add3_u32 v115, v135, v115, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v35, v243, v35, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v120, v125, v120, 0x7fff
	v_cndmask_b16 v197.h, 0x7fff, v55.h, s8
	v_cndmask_b16 v200.h, 0x7fff, v56.h, s9
	v_bfe_u32 v56, v182, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v49.h, 0x7fff, v35.h, s5
	v_bfe_u32 v35, v242, 16, 1
	v_cmp_o_f32_e64 s5, v241, v241
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v41.l, v113.l
	v_mov_b16_e32 v42.l, v113.l
	v_mov_b16_e32 v43.l, v113.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v35, v242, v35, 0x7fff
	v_cndmask_b16 v50.h, 0x7fff, v33.h, s5
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.h, 0x7fff, v99.h, s1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s1, v185, v185
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v44.l, v113.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v51.h, 0x7fff, v35.h, s6
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v246, v113
	ds_store_b16_d16_hi v221, v49 offset:512
	ds_store_b16_d16_hi v222, v50
	ds_store_b16_d16_hi v222, v52 offset:512
	ds_store_b16_d16_hi v223, v51
	ds_store_b16_d16_hi v223, v53 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[105:108], v240
	ds_load_b128 v[109:112], v232
	ds_load_b128 v[97:100], v225
	ds_load_b128 v[101:104], v226
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v246, v33
	ds_store_b16_d16_hi v246, v33 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s3
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v34, v183, 16, 1
	v_bfe_u32 v35, v185, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v50, v241, v50 :: v_dual_sub_f32 v51, v242, v51
	v_sub_f32_e32 v49, v243, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v34, v183, v34, 0x7fff
	v_add3_u32 v35, v185, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v54, v50, 16, 1
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v52, v244, v52
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s3, v49, v49
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v33.h, 0x7fff, v34.h, vcc_lo
	v_cndmask_b16 v34.h, 0x7fff, v35.h, s1
	v_bfe_u32 v35, v155, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v155, v155
	v_cmp_o_f32_e64 s1, v169, v169
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s5, v52, v52
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v241.h, 0x7fff, v206.h, s17
	v_add3_u32 v35, v155, v35, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v35.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s1, v51, v51
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v45.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v35.h, 0x7fff, v35.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v157, v157
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v53, v245, v53
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v46.l, v113.l
	v_mov_b16_e32 v47.l, v113.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v188, v155, v35
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v36.h, 0x7fff, v36.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v159, v159
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s6, v53, v53
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v48.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v248.h, 0x7fff, v114.h, s10
	v_cndmask_b16 v247.h, 0x7fff, v115.h, s11
	v_cndmask_b16 v37.h, 0x7fff, v37.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v161, v161
	v_cndmask_b16 v246.h, 0x7fff, v116.h, s12
	v_cndmask_b16 v245.h, 0x7fff, v117.h, s13
	v_cndmask_b16 v244.h, 0x7fff, v118.h, s14
	v_cndmask_b16 v243.h, 0x7fff, v119.h, s15
	v_cndmask_b16 v38.h, 0x7fff, v38.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v163, v163
	v_cndmask_b16 v242.h, 0x7fff, v120.h, s16
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v192, v159, v37
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s17, v124, v124
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v161, v38
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v39.h, 0x7fff, v39.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v165, v165
	v_add3_u32 v56, v182, v56, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v169, v169, v42
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v42.l, v247.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v202, v163, v39
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v40.h, 0x7fff, v40.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v167, v167
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v39.l, v197.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v56.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v113.h, 0x7fff, v194.h, s17
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v201, v165, v40
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v41.h, 0x7fff, v41.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v171, v171
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v40.l, v200.h
	v_mov_b32_e32 v194, v57
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v197.l, v113.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v167, v167, v41
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v43.h, 0x7fff, v43.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v173, v173
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v41.l, v248.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v55, v180, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v248.l, v113.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v171, v171, v43
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v44.h, 0x7fff, v44.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v175, v175
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v43.l, v246.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v55, v180, v55, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v255.l, v113.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v165, v173, v44
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v45.h, 0x7fff, v45.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v177, v177
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v44.l, v245.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v216.l, v113.l
	v_mov_b16_e32 v55.l, v113.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v163, v175, v45
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v46.h, 0x7fff, v46.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v179, v179
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v45.l, v244.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s8, v142, v142
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v200.l, v113.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v161, v177, v46
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v47.h, 0x7fff, v47.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v181, v181
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v46.l, v243.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v214.l, v113.l
	v_mov_b16_e64 v247.l, v113.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v159, v179, v47
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v48.h, 0x7fff, v48.h, vcc_lo
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	v_add3_u32 v50, v50, v54, 0x7fff
	v_bfe_u32 v54, v51, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v47.l, v242.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s9, v140, v140
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v218.l, v113.l
	v_mov_b16_e64 v246.l, v113.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v51, v51, v54, 0x7fff
	v_bfe_u32 v54, v49, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v245.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s10, v138, v138
	v_cmp_o_f32_e64 s11, v136, v136
	v_cmp_o_f32_e64 s12, v134, v134
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v49, v49, v54, 0x7fff
	v_bfe_u32 v54, v52, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s13, v132, v132
	v_cmp_o_f32_e64 s14, v130, v130
	v_cmp_o_f32_e64 s15, v128, v128
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v34.l, 0x7fff, v49.h, s3
	v_add3_u32 v52, v52, v54, 0x7fff
	v_bfe_u32 v54, v53, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v221, v33
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.l, 0x7fff, v50.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v221, v34 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v34.l, 0x7fff, v52.h, s5
	v_add3_u32 v53, v53, v54, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v50, v151, 16, 1
	v_bfe_u32 v52, v147, 16, 1
	v_bfe_u32 v54, v143, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v222, v33
	ds_store_b16 v222, v34 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.l, 0x7fff, v51.h, s1
	v_cndmask_b16 v34.l, 0x7fff, v53.h, s6
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v49, v153, 16, 1
	v_bfe_u32 v51, v149, 16, 1
	v_bfe_u32 v53, v145, 16, 1
	v_cmp_o_f32_e64 s1, v151, v151
	v_cmp_o_f32_e64 s5, v147, v147
	v_add3_u32 v50, v151, v50, 0x7fff
	v_add3_u32 v52, v147, v52, 0x7fff
	v_add3_u32 v54, v143, v54, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v153, v153
	v_cmp_o_f32_e64 s3, v149, v149
	v_cmp_o_f32_e64 s6, v145, v145
	v_add3_u32 v49, v153, v49, 0x7fff
	v_add3_u32 v51, v149, v51, 0x7fff
	v_add3_u32 v53, v145, v53, 0x7fff
	v_cndmask_b16 v250.h, 0x7fff, v50.h, s1
	v_cndmask_b16 v252.h, 0x7fff, v52.h, s5
	v_cndmask_b16 v254.h, 0x7fff, v54.h, s7
	v_bfe_u32 v50, v170, 16, 1
	v_bfe_u32 v52, v174, 16, 1
	v_bfe_u32 v54, v178, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v223, v33
	ds_store_b16 v223, v34 offset:512
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v33.l, v113.l
	v_mov_b16_e32 v34.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v249.h, 0x7fff, v49.h, vcc_lo
	v_cndmask_b16 v251.h, 0x7fff, v51.h, s3
	v_cndmask_b16 v253.h, 0x7fff, v53.h, s6
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[206:209], v240
	ds_load_b128 v[210:213], v232
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v50, v170, v50, 0x7fff
	v_add3_u32 v52, v174, v52, 0x7fff
	v_add3_u32 v54, v178, v54, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v38.l, v254.h
	v_mov_b16_e64 v37.l, v253.h
	v_mov_b16_e64 v35.l, v251.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v50.l, v113.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v187, v157, v36
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v36.l, v252.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v52.l, v113.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v185, v185, v34
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v34.l, v250.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v54.l, v113.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v183, v183, v33
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v33.l, v249.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v157, v181, v48
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v48.l, v241.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v184, v184
	v_bfe_u32 v49, v168, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[105:112], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v51, v172, 16, 1
	v_cmp_o_f32_e64 s1, v186, v186
	v_bfe_u32 v53, v176, 16, 1
	v_add3_u32 v49, v168, v49, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[97:104], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v51, v172, v51, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v49.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v53, v176, v53, 0x7fff
	v_cmp_o_f32_e64 s6, v146, v146
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[206:213], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v33, v184, 16, 1
	v_bfe_u32 v35, v156, 16, 1
	v_bfe_u32 v36, v158, 16, 1
	v_bfe_u32 v37, v160, 16, 1
	v_bfe_u32 v38, v162, 16, 1
	v_add3_u32 v33, v184, v33, 0x7fff
	v_add3_u32 v35, v156, v35, 0x7fff
	v_add3_u32 v36, v158, v36, 0x7fff
	v_add3_u32 v37, v160, v37, 0x7fff
	v_add3_u32 v38, v162, v38, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v33.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v156, v156
	v_bfe_u32 v39, v164, 16, 1
	v_bfe_u32 v40, v166, 16, 1
	v_bfe_u32 v34, v186, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v37.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v35.h, 0x7fff, v35.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v158, v158
	v_add3_u32 v39, v164, v39, 0x7fff
	v_add3_u32 v40, v166, v40, 0x7fff
	v_add3_u32 v34, v186, v34, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v34.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v36.h, 0x7fff, v36.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v160, v160
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v39.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s1
	v_cmp_o_f32_e64 s1, v170, v170
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v33.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v37.h, 0x7fff, v37.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v162, v162
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v175, v186, v34
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v50.h, 0x7fff, v50.h, s1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v35.l, v113.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v181, v160, v37
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v38.h, 0x7fff, v38.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v164, v164
	v_bfe_u32 v160, v150, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v36.l, v113.l
	v_mov_b16_e32 v38.l, v113.l
	v_mov_b16_e32 v40.l, v113.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v39.h, 0x7fff, v39.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v166, v166
	v_cmp_o_f32_e64 s3, v150, v150
	v_add3_u32 v160, v150, v160, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v173, v184, v33
	v_sub_f32_e32 v186, v164, v39
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v40.h, 0x7fff, v40.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v168, v168
	v_bfe_u32 v164, v146, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v179, v158, v36
	v_sub_f32_e32 v184, v162, v38
	v_sub_f32_e32 v240, v166, v40
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v49.h, 0x7fff, v49.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v172, v172
	v_add3_u32 v164, v146, v164, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v120, v170, v50
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e32 v51.l, v113.l
	v_mov_b16_e32 v53.l, v113.l
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v51.h, 0x7fff, v51.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v174, v174
	v_cndmask_b16 v216.h, 0x7fff, v164.h, s6
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v155, v168, v49
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v168, v142, 16, 1
	v_bfe_u32 v158, v152, 16, 1
	v_cndmask_b16 v52.h, 0x7fff, v52.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v176, v176
	v_bfe_u32 v162, v148, 16, 1
	v_bfe_u32 v166, v144, 16, 1
	v_add3_u32 v168, v142, v168, 0x7fff
	v_bfe_u32 v170, v140, 16, 1
	v_cndmask_b16 v53.h, 0x7fff, v53.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v178, v178
	v_cndmask_b16 v214.h, 0x7fff, v160.h, s3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v177, v156, v35
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v156, v154, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v118, v174, v52
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v54.h, 0x7fff, v54.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v180, v180
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v117, v176, v53
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s1, v152, v152
	v_cmp_o_f32_e64 s5, v148, v148
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v116, v178, v54
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v55.h, 0x7fff, v55.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v182, v182
	v_cmp_o_f32_e64 s7, v144, v144
	v_add3_u32 v156, v154, v156, 0x7fff
	v_add3_u32 v158, v152, v158, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v115, v180, v55
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v56.h, 0x7fff, v56.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v154, v154
	v_add3_u32 v162, v148, v162, 0x7fff
	v_add3_u32 v166, v144, v166, 0x7fff
	v_add3_u32 v170, v140, v170, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v114, v182, v56
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v174, v136, 16, 1
	v_bfe_u32 v176, v134, 16, 1
	v_bfe_u32 v178, v132, 16, 1
	v_bfe_u32 v180, v130, 16, 1
	v_bfe_u32 v182, v128, 16, 1
	v_cndmask_b16 v218.h, 0x7fff, v168.h, s8
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v119, v172, v51
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v172, v138, 16, 1
	v_cmp_o_f32_e64 s16, v126, v126
	v_add3_u32 v174, v136, v174, 0x7fff
	v_add3_u32 v176, v134, v176, 0x7fff
	v_add3_u32 v178, v132, v178, 0x7fff
	v_add3_u32 v172, v138, v172, 0x7fff
	v_add3_u32 v180, v130, v180, 0x7fff
	v_add3_u32 v182, v128, v182, 0x7fff
	v_cndmask_b16 v255.h, 0x7fff, v156.h, vcc_lo
	v_cndmask_b16 v193.h, 0x7fff, v158.h, s1
	v_cndmask_b16 v215.h, 0x7fff, v162.h, s5
	v_cndmask_b16 v217.h, 0x7fff, v166.h, s7
	v_cndmask_b16 v170.h, 0x7fff, v170.h, s9
	v_cndmask_b16 v168.h, 0x7fff, v172.h, s10
	v_cndmask_b16 v166.h, 0x7fff, v174.h, s11
	v_cndmask_b16 v164.h, 0x7fff, v176.h, s12
	v_cndmask_b16 v162.h, 0x7fff, v178.h, s13
	v_cndmask_b16 v160.h, 0x7fff, v180.h, s14
	v_cndmask_b16 v158.h, 0x7fff, v182.h, s15
	v_cndmask_b16 v156.h, 0x7fff, v190.h, s16
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v40.l, v170.h
	v_mov_b16_e64 v39.l, v218.h
	v_mov_b16_e64 v38.l, v217.h
	v_mov_b16_e64 v37.l, v216.h
	v_mov_b16_e64 v36.l, v215.h
	v_mov_b16_e64 v35.l, v214.h
	v_mov_b16_e64 v34.l, v193.h
	v_mov_b16_e64 v33.l, v255.h
	v_mov_b16_e32 v56.l, v113.h
	v_mov_b16_e64 v55.l, v156.h
	v_mov_b16_e64 v54.l, v158.h
	v_mov_b16_e64 v53.l, v160.h
	v_mov_b16_e64 v52.l, v162.h
	v_mov_b16_e64 v51.l, v164.h
	v_mov_b16_e64 v50.l, v166.h
	v_mov_b16_e64 v49.l, v168.h
	v_wmma_f32_16x16x16_bf16 v[9:16], v[33:40], v[105:112], v[9:16]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v254.l, v113.l
	v_mov_b16_e64 v156.l, v113.l
	v_mov_b16_e64 v249.l, v113.l
	v_mov_b16_e64 v250.l, v113.l
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[49:56], v[97:104], v[9:16]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v251.l, v113.l
	v_mov_b16_e64 v252.l, v113.l
	v_mov_b16_e64 v253.l, v113.l
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v0, v0
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[33:40], v[206:213], v[9:16]
	ds_load_b128 v[33:36], v225
	ds_load_b128 v[37:40], v226
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v243.l, v113.l
	v_mov_b16_e64 v242.l, v113.l
	v_mov_b16_e64 v241.l, v113.l
	v_mov_b16_e64 v168.l, v113.l
	v_mov_b16_e64 v164.l, v113.l
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s1, v183, v183
	v_cmp_o_f32_e64 s5, v185, v185
	v_cmp_o_f32_e64 s7, v188, v188
	v_cmp_o_f32_e64 s9, v187, v187
	v_cmp_o_f32_e64 s11, v192, v192
	v_cmp_o_f32_e64 s15, v202, v202
	v_cmp_o_f32_e64 s17, v201, v201
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v193.l, v113.l
	v_mov_b16_e64 v215.l, v113.l
	v_mov_b16_e64 v217.l, v113.l
	v_mov_b16_e64 v170.l, v113.l
	v_mov_b16_e64 v244.l, v113.l
	v_mov_b16_e64 v160.l, v113.l
	v_mov_b16_e64 v166.l, v113.l
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[33:40], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v43, v143, v254
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[49:56], v[33:40], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v33, v153, v249
	v_sub_f32_e32 v35, v151, v250
	v_sub_f32_e32 v37, v149, v251
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v44, v43, 16, 1
	v_cmp_o_f32_e64 s12, v43, v43
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v39, v147, v252
	v_dual_sub_f32 v41, v145, v253 :: v_dual_sub_f32 v46, v139, v200
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v43, v43, v44, 0x7fff
	v_bfe_u32 v44, v0, 16, 1
	v_bfe_u32 v34, v33, 16, 1
	v_bfe_u32 v36, v35, 16, 1
	v_bfe_u32 v38, v37, 16, 1
	v_bfe_u32 v40, v39, 16, 1
	v_add3_u32 v0, v0, v44, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v44, v141, v197
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v42, v41, 16, 1
	v_bfe_u32 v47, v46, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_add3_u32 v33, v33, v34, 0x7fff
	v_bfe_u32 v45, v44, 16, 1
	v_bfe_u32 v34, v183, 16, 1
	v_cmp_o_f32_e64 s3, v35, v35
	v_add3_u32 v35, v35, v36, 0x7fff
	v_bfe_u32 v36, v185, 16, 1
	v_cmp_o_f32_e64 s6, v37, v37
	v_add3_u32 v37, v37, v38, 0x7fff
	v_bfe_u32 v38, v188, 16, 1
	v_cmp_o_f32_e64 s8, v39, v39
	v_add3_u32 v39, v39, v40, 0x7fff
	v_bfe_u32 v40, v187, 16, 1
	v_cmp_o_f32_e64 s10, v41, v41
	v_add3_u32 v41, v41, v42, 0x7fff
	v_bfe_u32 v42, v192, 16, 1
	v_cmp_o_f32_e64 s14, v44, v44
	v_add3_u32 v44, v44, v45, 0x7fff
	v_bfe_u32 v45, v202, 16, 1
	v_cmp_o_f32_e64 s16, v46, v46
	v_add3_u32 v46, v46, v47, 0x7fff
	v_bfe_u32 v47, v201, 16, 1
	v_add3_u32 v34, v183, v34, 0x7fff
	v_add3_u32 v36, v185, v36, 0x7fff
	v_add3_u32 v38, v188, v38, 0x7fff
	v_add3_u32 v40, v187, v40, 0x7fff
	v_add3_u32 v42, v192, v42, 0x7fff
	v_add3_u32 v45, v202, v45, 0x7fff
	v_add3_u32 v47, v201, v47, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v33.h, vcc_lo
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s1
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s3
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s5
	v_cndmask_b16 v35.l, 0x7fff, v37.h, s6
	v_cndmask_b16 v35.h, 0x7fff, v38.h, s7
	v_cndmask_b16 v36.l, 0x7fff, v39.h, s8
	v_cndmask_b16 v36.h, 0x7fff, v40.h, s9
	v_cndmask_b16 v37.l, 0x7fff, v41.h, s10
	v_cndmask_b16 v37.h, 0x7fff, v42.h, s11
	v_cndmask_b16 v38.l, 0x7fff, v43.h, s12
	v_cndmask_b16 v38.h, 0x7fff, v0.h, s13
	v_cndmask_b16 v39.l, 0x7fff, v44.h, s14
	v_cndmask_b16 v39.h, 0x7fff, v45.h, s15
	v_cndmask_b16 v40.l, 0x7fff, v46.h, s16
	v_cndmask_b16 v40.h, 0x7fff, v47.h, s17
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v154, v255
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s1, v173, v173
	v_cmp_o_f32_e64 s9, v179, v179
	v_cmp_o_f32_e64 s11, v181, v181
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[105:112], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v33, v152, v193 :: v_dual_sub_f32 v34, v150, v214
	v_dual_sub_f32 v35, v148, v215 :: v_dual_sub_f32 v36, v146, v216
	v_sub_f32_e32 v37, v144, v217
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v41, v33, 16, 1
	v_cmp_o_f32_e64 s3, v33, v33
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v38, v142, v218
	v_sub_f32_e32 v39, v140, v170
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v40, v0, 16, 1
	v_add3_u32 v41, v33, v41, 0x7fff
	v_bfe_u32 v33, v175, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cmp_o_f32_e64 s6, v34, v34
	v_add3_u32 v0, v0, v40, 0x7fff
	v_bfe_u32 v40, v173, 16, 1
	v_add3_u32 v42, v175, v33, 0x7fff
	v_bfe_u32 v33, v34, 16, 1
	v_cmp_o_f32_e64 s7, v177, v177
	v_cmp_o_f32_e64 s8, v35, v35
	v_add3_u32 v40, v173, v40, 0x7fff
	v_cmp_o_f32_e64 s10, v36, v36
	v_add3_u32 v43, v34, v33, 0x7fff
	v_bfe_u32 v33, v177, 16, 1
	v_cmp_o_f32_e64 s12, v37, v37
	v_cmp_o_f32_e64 s13, v184, v184
	v_cmp_o_f32_e64 s14, v38, v38
	v_cmp_o_f32_e64 s15, v186, v186
	v_add3_u32 v44, v177, v33, 0x7fff
	v_bfe_u32 v33, v35, 16, 1
	v_cmp_o_f32_e64 s16, v39, v39
	v_cmp_o_f32_e64 s17, v240, v240
	v_cndmask_b16 v34.l, 0x7fff, v41.h, s3
	v_mov_b32_e32 v192, v196
	v_add3_u32 v45, v35, v33, 0x7fff
	v_bfe_u32 v33, v179, 16, 1
	v_cndmask_b16 v35.l, 0x7fff, v43.h, s6
	v_cndmask_b16 v35.h, 0x7fff, v44.h, s7
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v44, v125, v242
	v_mov_b32_e32 v196, v58
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v46, v179, v33, 0x7fff
	v_bfe_u32 v33, v36, 16, 1
	v_dual_mov_b32 v58, v59 :: v_dual_mov_b32 v59, v60
	v_dual_mov_b32 v60, v61 :: v_dual_mov_b32 v61, v62
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v47, v36, v33, 0x7fff
	v_bfe_u32 v33, v181, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v45.h, s8
	v_cndmask_b16 v36.h, 0x7fff, v46.h, s9
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v46, v123, v241
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v45, v44, 16, 1
	v_add3_u32 v48, v181, v33, 0x7fff
	v_bfe_u32 v33, v37, 16, 1
	v_mov_b32_e32 v62, v63
	v_mov_b32_e32 v200, v204
	v_cmp_o_f32_e64 s7, v171, v171
	v_cmp_o_f32_e64 s9, v165, v165
	v_add3_u32 v49, v37, v33, 0x7fff
	v_bfe_u32 v33, v184, 16, 1
	v_cndmask_b16 v37.l, 0x7fff, v47.h, s10
	v_cndmask_b16 v37.h, 0x7fff, v48.h, s11
	v_bfe_u32 v47, v46, 16, 1
	v_cmp_o_f32_e64 s11, v163, v163
	v_add3_u32 v50, v184, v33, 0x7fff
	v_bfe_u32 v33, v38, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v162.l, v113.l
	scratch_load_b32 v63, off, off offset:180 ; 4-byte Folded Reload
	v_mov_b16_e64 v158.l, v113.l
	v_mov_b32_e32 v197, v189
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v51, v38, v33, 0x7fff
	v_bfe_u32 v33, v186, 16, 1
	v_cndmask_b16 v38.l, 0x7fff, v49.h, s12
	v_cndmask_b16 v38.h, 0x7fff, v50.h, s13
	v_cmp_o_f32_e64 s13, v161, v161
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v52, v186, v33, 0x7fff
	v_bfe_u32 v33, v39, 16, 1
	v_add3_u32 v53, v39, v33, 0x7fff
	v_bfe_u32 v33, v240, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v51.h, s14
	v_cndmask_b16 v39.h, 0x7fff, v52.h, s15
	v_cmp_o_f32_e64 s14, v44, v44
	v_cndmask_b16 v40.l, 0x7fff, v53.h, s16
	v_add3_u32 v54, v240, v33, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v0.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v137, v248
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s5, v175, v175
	v_cndmask_b16 v33.h, 0x7fff, v40.h, s1
	v_cndmask_b16 v40.h, 0x7fff, v54.h, s17
	v_add3_u32 v44, v44, v45, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cndmask_b16 v34.h, 0x7fff, v42.h, s5
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v42, v127, v243
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v45, v159, 16, 1
	v_cmp_o_f32_e64 s16, v46, v46
	v_add3_u32 v46, v46, v47, 0x7fff
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[33:40], v[105:112], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v135, v247
	v_sub_f32_e32 v36, v133, v246
	v_sub_f32_e32 v38, v131, v245
	v_sub_f32_e32 v40, v129, v244
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v33, v0, 16, 1
	v_bfe_u32 v35, v34, 16, 1
	v_bfe_u32 v37, v36, 16, 1
	v_bfe_u32 v39, v38, 16, 1
	v_bfe_u32 v41, v40, 16, 1
	v_bfe_u32 v43, v42, 16, 1
	v_add3_u32 v0, v0, v33, 0x7fff
	v_bfe_u32 v33, v167, 16, 1
	v_cmp_o_f32_e64 s3, v34, v34
	v_add3_u32 v34, v34, v35, 0x7fff
	v_bfe_u32 v35, v169, 16, 1
	v_cmp_o_f32_e64 s6, v36, v36
	v_add3_u32 v36, v36, v37, 0x7fff
	v_bfe_u32 v37, v171, 16, 1
	v_cmp_o_f32_e64 s8, v38, v38
	v_add3_u32 v38, v38, v39, 0x7fff
	v_bfe_u32 v39, v165, 16, 1
	v_cmp_o_f32_e64 s10, v40, v40
	v_add3_u32 v40, v40, v41, 0x7fff
	v_bfe_u32 v41, v163, 16, 1
	v_cmp_o_f32_e64 s12, v42, v42
	v_add3_u32 v42, v42, v43, 0x7fff
	v_bfe_u32 v43, v161, 16, 1
	v_bfe_u32 v47, v157, 16, 1
	v_cmp_o_f32_e64 s1, v167, v167
	v_add3_u32 v33, v167, v33, 0x7fff
	v_cmp_o_f32_e64 s5, v169, v169
	v_add3_u32 v35, v169, v35, 0x7fff
	v_add3_u32 v37, v171, v37, 0x7fff
	v_add3_u32 v39, v165, v39, 0x7fff
	v_add3_u32 v41, v163, v41, 0x7fff
	v_add3_u32 v43, v161, v43, 0x7fff
	v_cmp_o_f32_e64 s15, v159, v159
	v_add3_u32 v45, v159, v45, 0x7fff
	v_cmp_o_f32_e64 s17, v157, v157
	v_add3_u32 v47, v157, v47, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s1
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s3
	v_cndmask_b16 v34.h, 0x7fff, v35.h, s5
	v_cndmask_b16 v35.l, 0x7fff, v36.h, s6
	v_cndmask_b16 v35.h, 0x7fff, v37.h, s7
	v_cndmask_b16 v36.l, 0x7fff, v38.h, s8
	v_cndmask_b16 v36.h, 0x7fff, v39.h, s9
	v_cndmask_b16 v37.l, 0x7fff, v40.h, s10
	v_cndmask_b16 v37.h, 0x7fff, v41.h, s11
	v_cndmask_b16 v38.l, 0x7fff, v42.h, s12
	v_cndmask_b16 v38.h, 0x7fff, v43.h, s13
	v_cndmask_b16 v39.l, 0x7fff, v44.h, s14
	v_cndmask_b16 v39.h, 0x7fff, v45.h, s15
	v_cndmask_b16 v40.l, 0x7fff, v46.h, s16
	v_cndmask_b16 v40.h, 0x7fff, v47.h, s17
	v_cmp_o_f32_e64 s7, v119, v119
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v138, v168
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s1, v155, v155
	v_cmp_o_f32_e64 s5, v120, v120
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[97:104], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v33, v136, v166 :: v_dual_sub_f32 v34, v134, v164
	v_dual_sub_f32 v35, v132, v162 :: v_dual_sub_f32 v36, v130, v160
	v_sub_f32_e32 v37, v128, v158
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v41, v33, 16, 1
	v_cmp_o_f32_e64 s3, v33, v33
	v_cmp_o_f32_e64 s8, v35, v35
	v_cmp_o_f32_e64 s6, v34, v34
	v_cmp_o_f32_e64 s10, v36, v36
	v_add3_u32 v41, v33, v41, 0x7fff
	v_bfe_u32 v33, v120, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v38, v126, v156 :: v_dual_sub_f32 v39, v124, v113
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v40, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v42, v120, v33, 0x7fff
	v_bfe_u32 v33, v34, 16, 1
	v_cmp_o_f32_e64 s9, v118, v118
	v_add3_u32 v0, v0, v40, 0x7fff
	v_bfe_u32 v40, v155, 16, 1
	v_cmp_o_f32_e64 s11, v117, v117
	v_add3_u32 v43, v34, v33, 0x7fff
	v_bfe_u32 v33, v119, 16, 1
	v_cndmask_b16 v34.l, 0x7fff, v41.h, s3
	scratch_load_b32 v41, off, off offset:176 ; 4-byte Folded Reload
	v_add3_u32 v40, v155, v40, 0x7fff
	v_cmp_o_f32_e64 s12, v37, v37
	v_add3_u32 v44, v119, v33, 0x7fff
	v_bfe_u32 v33, v35, 16, 1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v123, off, off offset:172
	scratch_load_b32 v119, off, off offset:168
	v_cmp_o_f32_e64 s13, v116, v116
	v_cmp_o_f32_e64 s14, v38, v38
	v_cmp_o_f32_e64 s15, v115, v115
	v_add3_u32 v45, v35, v33, 0x7fff
	v_bfe_u32 v33, v118, 16, 1
	v_cndmask_b16 v35.h, 0x7fff, v44.h, s7
	v_cmp_o_f32_e64 s16, v39, v39
	v_cmp_o_f32_e64 s17, v114, v114
	v_cndmask_b16 v34.h, 0x7fff, v42.h, s5
	v_add3_u32 v46, v118, v33, 0x7fff
	v_bfe_u32 v33, v36, 16, 1
	v_cndmask_b16 v35.l, 0x7fff, v43.h, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_add3_u32 v47, v36, v33, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v45.h, s8
	scratch_load_b64 v[44:45], off, off     ; 8-byte Folded Reload
	v_bfe_u32 v33, v117, 16, 1
	v_cndmask_b16 v36.h, 0x7fff, v46.h, s9
	v_add3_u32 v48, v117, v33, 0x7fff
	v_bfe_u32 v33, v37, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v49, v37, v33, 0x7fff
	v_bfe_u32 v33, v116, 16, 1
	v_cndmask_b16 v37.l, 0x7fff, v47.h, s10
	v_cndmask_b16 v37.h, 0x7fff, v48.h, s11
	v_add3_u32 v50, v116, v33, 0x7fff
	v_bfe_u32 v33, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v51, v38, v33, 0x7fff
	v_bfe_u32 v33, v115, 16, 1
	v_cndmask_b16 v38.l, 0x7fff, v49.h, s12
	v_cndmask_b16 v38.h, 0x7fff, v50.h, s13
	v_add3_u32 v52, v115, v33, 0x7fff
	v_bfe_u32 v33, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v53, v39, v33, 0x7fff
	v_bfe_u32 v33, v114, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v51.h, s14
	v_cndmask_b16 v39.h, 0x7fff, v52.h, s15
	v_cndmask_b16 v40.l, 0x7fff, v53.h, s16
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v54, v114, v33, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v33.h, 0x7fff, v40.h, s1
	.loc	1 607 13 is_stmt 1              ; attention_backward.py:607:13
	s_add_i32 s1, s60, 32
	s_cmpk_lt_u32 s60, 0x7e0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v40.h, 0x7fff, v54.h, s17
	s_mov_b32 s60, s1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[33:40], v[97:104], v[9:16]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %Flow
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	s_clause 0x7                            ; 128-byte Folded Reload
	scratch_load_b128 v[33:36], off, off offset:8
	scratch_load_b128 v[37:40], off, off offset:24
	scratch_load_b128 v[103:106], off, off offset:40
	scratch_load_b128 v[107:110], off, off offset:56
	scratch_load_b128 v[111:114], off, off offset:72
	scratch_load_b128 v[115:118], off, off offset:88
	scratch_load_b128 v[124:127], off, off offset:104
	scratch_load_b128 v[128:131], off, off offset:120
	s_branch .LBB0_1
.LBB0_6:
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v64, off, off offset:184
	scratch_load_b32 v33, off, off offset:188
	scratch_load_b32 v34, off, off offset:192
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s5, s43, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s42
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s31, s7
	.loc	1 753 13                        ; attention_backward.py:753:13
	s_waitcnt vmcnt(2)
	v_mul_lo_u32 v43, s18, v64
	.loc	1 580 44                        ; attention_backward.py:580:44
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, v33, v34
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, s35, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v47, 2, v33
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v49, v43, v33
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s2, s18, v33
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v46, 6, v33
	v_or_b32_e32 v48, 4, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v50, v43, v47
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v49, v49, s30, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v45, 8, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v51, v43, v48
	v_add_nc_u32_e32 v52, v43, v46
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	v_add_lshl_u32 v50, v50, s30, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v44, 10, v33
	v_or_b32_e32 v41, 14, v33
	v_or_b32_e32 v42, 12, v33
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
	v_or_b32_e32 v0, 32, v33
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
	v_or_b32_e32 v40, 34, v33
	v_cmp_gt_i32_e64 s0, s19, v33
	v_cmp_gt_i32_e64 s1, s19, v0
	v_or_b32_e32 v39, 36, v33
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s3, s18, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v27, v50, s[4:7], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v51, s2
	v_add_lshl_u32 v49, v55, s30, 2
	buffer_store_b32 v28, v25, s[4:7], 0 offen
	v_add_lshl_u32 v25, v56, s30, 2
	v_cndmask_b32_e64 v27, 0x80000000, v52, s2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v57, v43, v0
	v_add_nc_u32_e32 v58, v43, v40
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
	v_add_nc_u32_e32 v59, v43, v39
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v38, 38, v33
	v_or_b32_e32 v37, 40, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v27, v57, s30, 2
	v_add_lshl_u32 v28, v58, s30, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v36, 42, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v29, v59, s30, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v35, 44, v33
	v_or_b32_e32 v34, 46, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v60, v43, v38
	v_add_nc_u32_e32 v61, v43, v37
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	buffer_store_b32 v31, v26, s[4:7], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v28, s2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v62, v43, v36
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v28, 0x80000000, v29, s2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v63, v43, v35
	v_add_nc_u32_e32 v43, v43, v34
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v32, v25, s[4:7], 0 offen
	buffer_store_b32 v17, v27, s[4:7], 0 offen
	v_add_lshl_u32 v17, v60, s30, 2
	s_clause 0x1
	buffer_store_b32 v18, v26, s[4:7], 0 offen
	buffer_store_b32 v19, v28, s[4:7], 0 offen
	v_add_lshl_u32 v18, v61, s30, 2
	v_add_lshl_u32 v19, v62, s30, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v27, s19, v64
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v25, v63, s30, 2
	v_add_lshl_u32 v26, v43, s30, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	s_clause 0x4
	buffer_store_b32 v20, v17, s[4:7], 0 offen
	buffer_store_b32 v21, v18, s[4:7], 0 offen
	buffer_store_b32 v22, v19, s[4:7], 0 offen
	buffer_store_b32 v23, v25, s[4:7], 0 offen
	buffer_store_b32 v24, v26, s[4:7], 0 offen
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v17, v27, v33
	v_add_nc_u32_e32 v18, v27, v47
	v_add_nc_u32_e32 v19, v27, v48
	v_add_nc_u32_e32 v20, v27, v46
	v_add_nc_u32_e32 v21, v27, v45
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v17, v17, s33, 2
	v_add_lshl_u32 v18, v18, s33, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v22, v27, v44
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_mov_b32 s30, s6
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v23, v27, v42
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v24, v27, v41
	v_add_nc_u32_e32 v0, v27, v0
	v_add_nc_u32_e32 v25, v27, v40
	v_add_nc_u32_e32 v26, v27, v39
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v1, v17, s[28:31], 0 offen
	v_add_lshl_u32 v1, v19, s33, 2
	v_cndmask_b32_e64 v17, 0x80000000, v18, s0
	v_add_lshl_u32 v18, v20, s33, 2
	v_add_lshl_u32 v19, v21, s33, 2
	v_add_lshl_u32 v20, v22, s33, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	buffer_store_b32 v2, v17, s[28:31], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v18, s0
	v_cndmask_b32_e64 v17, 0x80000000, v19, s0
	v_cndmask_b32_e64 v18, 0x80000000, v20, s0
	buffer_store_b32 v3, v1, s[28:31], 0 offen
	v_add_lshl_u32 v1, v23, s33, 2
	s_clause 0x2
	buffer_store_b32 v4, v2, s[28:31], 0 offen
	buffer_store_b32 v5, v17, s[28:31], 0 offen
	buffer_store_b32 v6, v18, s[28:31], 0 offen
	v_add_lshl_u32 v2, v24, s33, 2
	v_add_lshl_u32 v0, v0, s33, 2
	v_add_lshl_u32 v3, v25, s33, 2
	v_add_lshl_u32 v4, v26, s33, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v28, v27, v38
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v29, v27, v37
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v30, v27, v36
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_add_nc_u32 v31, v27, v35
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_add_nc_u32 v27, v27, v34
	s_clause 0x4
	buffer_store_b32 v7, v1, s[28:31], 0 offen
	buffer_store_b32 v8, v2, s[28:31], 0 offen
	buffer_store_b32 v9, v0, s[28:31], 0 offen
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
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 200
		.amdhsa_kernarg_size 176
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
		.amdhsa_next_free_sgpr 61
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 61
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 200
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16028
; TotalNumSgprs: 63
; NumVgprs: 256
; ScratchSize: 200
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 63
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 200
    .sgpr_count:     63
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_causal_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 49
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
