	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[28:31], s[0:1], 0x74
	s_load_b256 s[20:27], s[0:1], 0x0
.Ltmp0:
	.loc	1 524 23 prologue_end           ; attention_backward.py:524:23
	v_lshlrev_b32_e32 v22, 3, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s19, s2, 4
	.loc	1 521 24                        ; attention_backward.py:521:24
	s_lshl_b32 s4, s3, 11
	s_mov_b32 s51, 0x31027000
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_add_i32 s18, s4, s19
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_and_b32_e32 v1, 24, v22
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_or_b32_e32 v3, s18, v2
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v4, s19, v2
	s_mov_b32 s50, 0x7ffffffe
	.loc	1 514 33 is_stmt 0              ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v23, 3, v0
	v_bfe_u32 v155, v0, 4, 1
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	v_and_b32_e32 v24, 7, v0
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v34, 1, v0
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v4, s19, v23
	v_mov_b32_e32 v17, 0
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_lshlrev_b32_e32 v5, 3, v24
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[2:3], null, s29, v3, v[1:2]
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_cmp_gt_i32_e64 s2, s29, v1
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_and_b32 s49, s23, 0xffff
	s_mov_b32 s48, s22
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_or_b32_e32 v3, s4, v155
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_and_b32_e32 v6, 24, v34
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_mul_i32 s17, s30, s18
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_mul_lo_u32 v4, s30, v23
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v7, s19, v155
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_add_lshl_u32 v3, v3, s19, 1
	.loc	1 522 24                        ; attention_backward.py:522:24
	buffer_load_b64 v[1:2], v1, s[48:51], 0 offen
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s6, s30, v5
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_lshl_b32 s4, s30, 3
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xad_u32 v6, v22, v6, 0
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, 0x800, v7
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add3_u32 v4, v4, v5, s17
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_or_b32_e32 v8, 4, v3
	v_or_b32_e32 v12, 20, v3
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, vcc_lo, s6
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v7, 0x80000000, v3, s2
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v5, 1, v4
	v_add_lshl_u32 v4, v4, s4, 1
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_or_b32_e32 v9, 8, v3
	v_or_b32_e32 v10, 12, v3
	v_or_b32_e32 v11, 16, v3
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_and_b32 s49, s25, 0xffff
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_mov_b32 s48, s24
	s_load_b64 s[8:9], s[0:1], 0x20
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_mov_b32 s10, s50
	s_mov_b32 s11, s51
	v_dual_mov_b32 v14, v17 :: v_dual_and_b32 v41, 56, v0
	s_load_b64 s[44:45], s[0:1], 0x58
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v44, 1, v0
	s_load_b256 s[36:43], s[0:1], 0x38
	v_dual_mov_b32 v16, v17 :: v_dual_and_b32 v43, 32, v0
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_and_b32_e32 v45, 1, v0
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshlrev_b32_e32 v157, 4, v0
	v_dual_mov_b32 v13, v17 :: v_dual_and_b32 v46, 24, v44
	v_and_or_b32 v44, v44, 30, v155
	s_lshl_b32 s3, s3, 12
	v_mov_b32_e32 v26, v17
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v159, 1, v43
	.loc	1 607 13                        ; attention_backward.py:607:13
	v_or_b32_e32 v161, s3, v23
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	v_lshlrev_b32_e32 v165, 2, v44
	.loc	1 607 13                        ; attention_backward.py:607:13
	v_or_b32_e32 v160, s3, v34
	.loc	1 641 25                        ; attention_backward.py:641:25
	s_mul_f32 s24, s31, 0x3fb8aa3b
	.loc	1 607 13                        ; attention_backward.py:607:13
	v_or_b32_e32 v192, 8, v161
	s_and_b32 s27, s27, 0xffff
	v_xor_b32_e32 v190, 4, v165
	s_mov_b32 s7, 0
	s_and_b32 s39, s39, 0xffff
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s54, s50
	s_mov_b32 s55, s51
	s_mov_b32 s58, s50
	s_mov_b32 s59, s51
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s37, s37, 0xffff
	s_lshl_b32 s25, s30, 1
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_lshl_b32 s33, s30, 6
	s_lshl_b32 s34, s29, 5
	s_mov_b32 s22, s50
	s_mov_b32 s23, s51
	s_mov_b32 s52, s38
	s_mov_b32 s56, s40
	s_mov_b32 s38, s50
	s_mov_b32 s53, s39
	s_mov_b32 s57, s41
	s_mov_b32 s39, s51
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v156, 15, v0
	v_and_b32_e32 v42, 16, v0
	v_lshlrev_b32_e32 v0, 6, v0
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshlrev_b32_e32 v41, 1, v41
	v_and_b32_e32 v22, 48, v22
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshl_or_b32 v23, v156, 5, v46
	.loc	1 607 13                        ; attention_backward.py:607:13
	v_or3_b32 v191, s3, v159, v156
	v_cmp_eq_u32_e64 s0, 0, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v166, v156, 6, v22
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v22, 0, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_xor_b32_e32 v48, 16, v166
	v_xor_b32_e32 v50, 32, v166
	v_xor_b32_e32 v51, 48, v166
	v_add_nc_u32_e32 v172, 0, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v173, 0, v50
	v_add_nc_u32_e32 v174, 0, v51
	s_waitcnt vmcnt(0)
	ds_store_b64 v6, v[1:2]
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_or_b32_e32 v1, 24, v3
	v_or_b32_e32 v2, 28, v3
	v_cndmask_b32_e64 v3, 0x80000000, v8, s2
	v_cndmask_b32_e64 v8, 0x80000000, v12, s2
	v_dual_mov_b32 v12, v17 :: v_dual_cndmask_b32 v5, 0x80000000, v5
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_clause 0x1
	buffer_load_b128 v[18:21], v5, s[48:51], 0 offen
	buffer_load_b128 v[30:33], v4, s[48:51], 0 offen
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v4, 0x80000000, v9, s2
	v_cndmask_b32_e64 v5, 0x80000000, v10, s2
	v_cndmask_b32_e64 v6, 0x80000000, v11, s2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	s_clause 0x7
	buffer_load_u16 v35, v7, s[8:11], 0 offen
	buffer_load_u16 v36, v3, s[8:11], 0 offen
	buffer_load_u16 v37, v4, s[8:11], 0 offen
	buffer_load_u16 v38, v5, s[8:11], 0 offen
	buffer_load_u16 v39, v6, s[8:11], 0 offen
	buffer_load_u16 v40, v8, s[8:11], 0 offen
	buffer_load_u16 v73, v1, s[8:11], 0 offen
	buffer_load_u16 v74, v2, s[8:11], 0 offen
	v_mov_b32_e32 v9, 0
	v_mov_b32_e32 v1, 0
	v_dual_mov_b32 v15, v17 :: v_dual_lshlrev_b32 v158, 4, v24
	v_dual_mov_b32 v3, v17 :: v_dual_lshlrev_b32 v24, 2, v42
	v_dual_mov_b32 v5, v17 :: v_dual_lshlrev_b32 v42, 1, v156
	v_mov_b32_e32 v7, v17
	v_mov_b32_e32 v8, v17
	v_mov_b32_e32 v11, v17
	v_mov_b32_e32 v2, v17
	v_mov_b32_e32 v4, v17
	v_dual_mov_b32 v6, v17 :: v_dual_lshlrev_b32 v47, 5, v45
	v_dual_mov_b32 v27, v17 :: v_dual_add_nc_u32 v162, 0, v0
	v_dual_mov_b32 v29, v17 :: v_dual_lshlrev_b32 v0, 4, v45
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xor_b32_e32 v41, v157, v41
	v_lshl_or_b32 v45, v156, 7, v158
	v_or3_b32 v163, v42, v24, v43
	v_mov_b32_e32 v28, v17
	v_add3_u32 v164, 0, v43, v42
	v_add_nc_u32_e32 v167, 0, v41
	v_add_nc_u32_e32 v41, 0, v45
	v_xad_u32 v46, v45, 16, 0
	v_xad_u32 v49, v45, 32, 0
	v_xad_u32 v53, v45, 48, 0
	v_xad_u32 v57, v45, 64, 0
	v_xad_u32 v61, 0x50, v45, 0
	v_xad_u32 v65, 0x60, v45, 0
	v_xad_u32 v69, 0x70, v45, 0
	v_lshl_or_b32 v168, v43, 6, v45
	v_xor_b32_e32 v43, 0x90, v163
	v_xor_b32_e32 v44, 0x120, v163
	v_xor_b32_e32 v45, 0x1b0, v163
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v34, 16, v47
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s1, s28, v47
	v_add_nc_u32_e32 v169, 0, v43
	v_add_nc_u32_e32 v170, 0, v44
	v_add_nc_u32_e32 v171, 0, v45
	v_xor_b32_e32 v43, 32, v168
	v_xor_b32_e32 v44, 48, v168
	v_xor_b32_e32 v45, 64, v168
	v_xor_b32_e32 v47, 0x50, v168
	v_xor_b32_e32 v48, 0x60, v168
	v_xor_b32_e32 v50, 0x70, v168
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xad_u32 v24, v23, 8, 0
	v_xad_u32 v42, v23, 16, 0
	v_xad_u32 v23, v23, 24, 0
	v_add_nc_u32_e32 v176, 0, v43
	v_add_nc_u32_e32 v177, 0, v44
	v_add_nc_u32_e32 v178, 0, v45
	v_add_nc_u32_e32 v179, 0, v47
	v_add_nc_u32_e32 v180, 0, v48
	v_add_nc_u32_e32 v181, 0, v50
	ds_load_b64 v[145:146], v22
	ds_load_b64 v[147:148], v24
	ds_load_b64 v[149:150], v42
	ds_load_b64 v[151:152], v23
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s4, s28, v34
	v_xor_b32_e32 v34, 16, v168
	v_mov_b32_e32 v10, v17
	.loc	1 620 52                        ; attention_backward.py:620:52
	v_cmp_gt_i32_e64 s5, s29, v0
	s_mov_b32 s8, -1
	s_mov_b32 s48, s26
	v_add_nc_u32_e32 v175, 0, v34
	v_mov_b32_e32 v34, v17
	s_mov_b32 s49, s27
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt vmcnt(9)
	ds_store_b128 v167, v[18:21]
	s_waitcnt vmcnt(8)
	ds_store_b128 v167, v[30:33] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v30, v17
	ds_load_b128 v[41:44], v41
	ds_load_b128 v[45:48], v46
	ds_load_b128 v[49:52], v49
	ds_load_b128 v[53:56], v53
	ds_load_b128 v[57:60], v57
	ds_load_b128 v[61:64], v61
	ds_load_b128 v[65:68], v65
	ds_load_b128 v[69:72], v69
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v182, 16, v35
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v183, 16, v36
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v184, 16, v37
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v185, 16, v38
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v186, 16, v39
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v187, 16, v40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v188, 16, v73
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v189, 16, v74
	v_mov_b32_e32 v31, v17
	v_dual_mov_b32 v32, v17 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v35, v17
	v_mov_b32_e32 v36, v17
	v_mov_b32_e32 v37, v17
	v_mov_b32_e32 v38, v17
	v_mov_b32_e32 v39, v17
	v_mov_b32_e32 v40, v17
.LBB0_1:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_2 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	v_or_b32_e32 v18, 24, v161
	v_or_b32_e32 v19, 16, v161
	v_dual_mov_b32 v199, v158 :: v_dual_add_nc_u32 v20, s7, v160
	v_add_nc_u32_e32 v21, s7, v192
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v18, s7, v18
	v_add_nc_u32_e32 v19, s7, v19
	v_add_nc_u32_e32 v22, s7, v161
	v_add_nc_u32_e32 v23, s7, v191
	v_mul_lo_u32 v196, s25, v21
	v_mul_lo_u32 v194, s25, v18
	v_mul_lo_u32 v195, s25, v19
	v_mul_lo_u32 v197, s25, v22
	v_mad_u64_u32 v[153:154], null, s29, v20, v[0:1]
	v_lshlrev_b32_e32 v193, 1, v20
	v_lshlrev_b32_e32 v154, 2, v23
	v_lshlrev_b32_e32 v198, 1, v23
	s_xor_b32 s26, s8, -1
	s_movk_i32 s27, 0xffe0
.LBB0_2:                                ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_nc_u32_e32 v19, v196, v199
	v_add_nc_u32_e32 v18, v197, v199
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s27, s27, 32
	.loc	1 651 43                        ; attention_backward.py:651:43
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmpk_lt_u32 s27, 0x7e0
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v22, 0x80000000, v19, s6
	v_add_nc_u32_e32 v19, v195, v199
	v_cndmask_b32_e64 v18, 0x80000000, v18, s6
	.loc	1 651 43                        ; attention_backward.py:651:43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v23, 0x80000000, v19, s6
	v_add_nc_u32_e32 v19, v194, v199
	.loc	1 607 13                        ; attention_backward.py:607:13
	v_add_nc_u32_e32 v199, s33, v199
	.loc	1 651 43                        ; attention_backward.py:651:43
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v24, 0x80000000, v19, s6
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v19, 0x80000000, v153, s5
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_clause 0x1
	buffer_load_u16 v118, v198, s[48:51], 0 offen
	buffer_load_u16 v131, v193, s[48:51], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v132, v154, s[52:55], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v117, v154, s[56:59], 0 offen
	.loc	1 615 36                        ; attention_backward.py:615:36
	buffer_load_b128 v[119:122], v19, s[20:23], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x3
	buffer_load_b128 v[18:21], v18, s[36:39], 0 offen
	buffer_load_b128 v[105:108], v22, s[36:39], 0 offen
	buffer_load_b128 v[109:112], v23, s[36:39], 0 offen
	buffer_load_b128 v[113:116], v24, s[36:39], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v22, 0, v157
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v24, v17
	v_mov_b32_e32 v23, v17
	.loc	1 607 13                        ; attention_backward.py:607:13
	v_add_nc_u32_e32 v193, 64, v193
	v_add_nc_u32_e32 v154, 0x80, v154
	v_add_nc_u32_e32 v198, 64, v198
	v_add_nc_u32_e32 v153, s34, v153
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(3)
	ds_store_b128 v22, v[18:21]
	s_waitcnt vmcnt(2)
	ds_store_b128 v22, v[105:108] offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b128 v22, v[109:112] offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b128 v22, v[113:116] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16_hi v99, v164 offset:640
	ds_load_u16_d16_hi v100, v164 offset:896
	ds_load_u16_d16_hi v76, v164 offset:960
	ds_load_u16_d16_hi v75, v164 offset:704
	ds_load_u16_d16_hi v101, v164 offset:1152
	ds_load_u16_d16_hi v102, v164 offset:1408
	ds_load_u16_d16_hi v78, v164 offset:1472
	ds_load_u16_d16_hi v77, v164 offset:1216
	ds_load_u16_d16_hi v103, v164 offset:1664
	ds_load_u16_d16_hi v104, v164 offset:1920
	ds_load_u16_d16_hi v80, v164 offset:1984
	ds_load_u16_d16_hi v79, v164 offset:1728
	ds_load_u16_d16_hi v81, v164 offset:2176
	ds_load_u16_d16_hi v82, v164 offset:2432
	ds_load_u16_d16_hi v90, v164 offset:2496
	ds_load_u16_d16_hi v89, v164 offset:2240
	ds_load_u16_d16_hi v83, v164 offset:2688
	ds_load_u16_d16_hi v84, v164 offset:2944
	ds_load_u16_d16_hi v92, v164 offset:3008
	ds_load_u16_d16_hi v91, v164 offset:2752
	ds_load_u16_d16_hi v85, v164 offset:3200
	ds_load_u16_d16_hi v86, v164 offset:3456
	ds_load_u16_d16_hi v94, v164 offset:3520
	ds_load_u16_d16_hi v93, v164 offset:3264
	ds_load_u16_d16_hi v87, v164 offset:3712
	ds_load_u16_d16_hi v88, v164 offset:3968
	ds_load_u16_d16_hi v96, v164 offset:4032
	ds_load_u16_d16_hi v95, v164 offset:3776
	ds_load_u16_d16_hi v97, v164 offset:128
	ds_load_u16_d16_hi v98, v164 offset:384
	ds_load_u16_d16_hi v74, v164 offset:448
	ds_load_u16_d16_hi v73, v164 offset:192
	ds_load_u16_d16_hi v221, v164 offset:320
	ds_load_u16_d16_hi v230, v164 offset:256
	ds_load_u16_d16_hi v231, v164
	ds_load_u16_d16_hi v223, v164 offset:64
	ds_load_u16_d16_hi v219, v164 offset:832
	ds_load_u16_d16_hi v228, v164 offset:768
	ds_load_u16_d16_hi v229, v164 offset:512
	ds_load_u16_d16_hi v222, v164 offset:576
	ds_load_u16_d16_hi v217, v164 offset:1344
	ds_load_u16_d16_hi v226, v164 offset:1280
	ds_load_u16_d16_hi v227, v164 offset:1024
	ds_load_u16_d16_hi v220, v164 offset:1088
	ds_load_u16_d16_hi v216, v164 offset:1856
	ds_load_u16_d16_hi v224, v164 offset:1792
	ds_load_u16_d16_hi v225, v164 offset:1536
	ds_load_u16_d16_hi v218, v164 offset:1600
	ds_load_u16_d16_hi v205, v164 offset:2368
	ds_load_u16_d16_hi v214, v164 offset:2304
	ds_load_u16_d16_hi v215, v164 offset:2048
	ds_load_u16_d16_hi v207, v164 offset:2112
	ds_load_u16_d16_hi v203, v164 offset:2880
	ds_load_u16_d16_hi v212, v164 offset:2816
	ds_load_u16_d16_hi v213, v164 offset:2560
	ds_load_u16_d16_hi v206, v164 offset:2624
	ds_load_u16_d16_hi v201, v164 offset:3392
	ds_load_u16_d16_hi v210, v164 offset:3328
	ds_load_u16_d16_hi v211, v164 offset:3072
	ds_load_u16_d16_hi v204, v164 offset:3136
	ds_load_u16_d16_hi v200, v164 offset:3904
	ds_load_u16_d16_hi v208, v164 offset:3840
	ds_load_u16_d16_hi v209, v164 offset:3584
	ds_load_u16_d16_hi v202, v164 offset:3648
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v167, v[18:21]
	ds_store_b128 v167, v[105:108] offset:1024
	ds_store_b128 v167, v[109:112] offset:2048
	ds_store_b128 v167, v[113:116] offset:3072
	v_add_nc_u32_e32 v105, 0, v168
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[105:108], v105
	ds_load_b128 v[109:112], v175
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v18, v17
	v_mov_b32_e32 v19, v17
	v_mov_b32_e32 v20, v17
	v_mov_b32_e32 v21, v17
	v_mov_b32_e32 v22, v17
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v130, v24 :: v_dual_mov_b32 v129, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v126, v20 :: v_dual_mov_b32 v125, v19
	v_dual_mov_b32 v128, v22 :: v_dual_mov_b32 v127, v21
	v_dual_mov_b32 v124, v18 :: v_dual_mov_b32 v123, v17
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v118, 16, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 640 41                        ; attention_backward.py:640:41
	v_mul_f32_e32 v118, s24, v118
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[123:130], v[41:48], v[105:112], v[123:130]
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[105:108], v176
	ds_load_b128 v[109:112], v177
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[123:130], v[49:56], v[105:112], v[123:130]
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[105:108], v178
	ds_load_b128 v[109:112], v179
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[123:130], v[57:64], v[105:112], v[123:130]
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[105:108], v180
	ds_load_b128 v[109:112], v181
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_wmma_f32_16x16x16_bf16 v[123:130], v[65:72], v[105:112], v[123:130]
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_bpermute_b32 v106, v165, v119
	ds_bpermute_b32 v107, v190, v119
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v133, v123, v117
	v_sub_f32_e32 v134, v124, v117
	v_sub_f32_e32 v135, v125, v117
	v_sub_f32_e32 v136, v126, v117
	v_sub_f32_e32 v127, v127, v117
	v_sub_f32_e32 v128, v128, v117
	v_sub_f32_e32 v129, v129, v117
	v_sub_f32_e32 v105, v130, v117
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v114, v107, v106, s0
	v_cndmask_b32_e64 v116, v106, v107, s0
	ds_bpermute_b32 v106, v165, v120
	ds_bpermute_b32 v107, v190, v120
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v115, v107, v106, s0
	v_cndmask_b32_e64 v117, v106, v107, s0
	ds_bpermute_b32 v106, v165, v121
	ds_bpermute_b32 v107, v190, v121
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v123, v107, v106, s0
	v_cndmask_b32_e64 v125, v106, v107, s0
	ds_bpermute_b32 v106, v165, v122
	ds_bpermute_b32 v107, v190, v122
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v124, v107, v106, s0
	v_cndmask_b32_e64 v126, v106, v107, s0
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_wmma_i32_16x16x16_iu4 v[106:113], v[145:146], v[114:115], v[17:24] neg_lo:[1,1,0]
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v18.l, v119.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v115, 15, v120
	.loc	1 615 36 is_stmt 1              ; attention_backward.py:615:36
	v_bfe_i32 v20, v119, 0, 8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_wmma_i32_16x16x16_iu4 v[106:113], v[147:148], v[123:124], v[106:113] neg_lo:[1,1,0]
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e32 v22.h, 0
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v18.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v18.l, v119.h, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s9, 0, v20.l
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_wmma_i32_16x16x16_iu4 v[106:113], v[149:150], v[116:117], v[106:113] neg_lo:[1,1,0]
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v116, -16, v115
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v117, v120, 16, 4
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s3, 7, v18.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v18.l, v120.l, 15
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_wmma_i32_16x16x16_iu4 v[106:113], v[151:152], v[125:126], v[106:113] neg_lo:[1,1,0]
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v126, 24, v120
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v123, -16, v117
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v104.l, v22.h
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s7, 7, v18.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v18.l, v120.h, 15
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v23, v107
	v_cvt_f32_i32_e32 v24, v108
	v_cvt_f32_i32_e32 v107, v110
	v_cvt_f32_i32_e32 v108, v111
	v_cvt_f32_i32_e32 v110, v113
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v111, 15, v119
	v_bfe_u32 v113, v119, 16, 4
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s8, 7, v18.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b64 v[18:19], 24, v[119:120]
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v21, v106
	v_cvt_f32_i32_e32 v106, v109
	v_cvt_f32_i32_e32 v109, v112
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v112, -16, v111
	v_or_b32_e32 v114, -16, v113
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v124, v18, 0, 8
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v18.h, 4, v119.l
	v_lshrrev_b16 v19.l, 4, v18.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v20, v111, v112, vcc_lo
	v_cndmask_b32_e64 v111, v113, v114, s3
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v114, 8, v119
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v22.l, v18.h, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v112, v115, v116, s7
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v115, v119, 8, 4
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v113, v117, v123, s8
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v18.h, v114.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_bfe_u32 v117, v120, 8, 4
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v18.l, v18.l, 15
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v116, -16, v115
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v24, v118, v24
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v18.h
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v123, -16, v117
	.loc	1 651 60 is_stmt 1              ; attention_backward.py:651:60
	v_or_b32_e32 v125, -16, v22
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v112, v112
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v21, v118, v21
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v115, v115, v116, vcc_lo
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v116, 8, v120
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v23, v118, v23
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v111, v111
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v106, v118, v106
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v115, v115
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v18.h, v116.l, 15
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v24, v24, v184, -v132
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v102.l, v22.h
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v108, v118, v108
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v106, v106, v185, -v132
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v18.h
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v18.h, v126.l, 15
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v90.l, v22.h
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v108, v108, v187, -v132
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v97.l, v22.h
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v117, v117, v123, vcc_lo
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v123, v120, 24, 4
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v18.h
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v110, v118, v110
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v108, v108
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v99.l, v22.h
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v130, -16, v123
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v87.l, v22.h
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v110, v110, v189, -v132
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v230.l, v22.h
	v_mov_b16_e64 v228.l, v22.h
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v130, v123, v130, vcc_lo
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_alignbit_b32 v123, v120, v119, 24
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v18.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e32 v18.l, v119.h
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v119, v119, 20, 4
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v232, 0, v108, s2
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v123, 15, v123
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v107, v118, v107
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v18, v18, 0, 8
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v110, v110
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v108, v232, v128
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v137, -16, v123
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v109, v118, v109
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v107, v107, v186, -v132
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v128, v122, 0, 8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_dual_mul_f32 v108, s31, v108 :: v_dual_cndmask_b32 v137, v123, v137
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v123, -16, v119
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v18.l
	.loc	1 615 36 is_stmt 1              ; attention_backward.py:615:36
	v_mov_b16_e32 v18.l, v120.h
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v107, v107
	.loc	1 703 34 is_stmt 0              ; attention_backward.py:703:34
	v_fma_f32 v109, v109, v188, -v132
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v234, 0, v110, s2
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v119, v119, v123, vcc_lo
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v18, v18, 0, 8
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v123, v120, 20, 4
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v109, v109
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cmp_o_f32_e64 s12, v108, v108
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v119, v119
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v18.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v138, -16, v123
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v18, v20
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v20, v22, v125, s9
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v238, 0, v107, s2
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v83.l, v22.h
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_dual_cndmask_b32 v138, v123, v138 :: v_dual_lshlrev_b32 v123, 16, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v233, 0, v109, s2
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v105, v234, v105
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_dual_mul_f32 v18, v123, v18 :: v_dual_add_nc_u32 v237, 0, v163
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v20, v123, v20
	v_mul_f32_e32 v115, v123, v115
	v_mul_f32_e32 v112, v123, v112
	v_mul_f32_e32 v111, v123, v111
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v125, 0, v18, s1
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v18.l, 4, v114.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v20, 0, v20, s1
	v_cndmask_b32_e64 v115, 0, v115, s1
	v_cndmask_b32_e64 v111, 0, v111, s1
	v_mov_b16_e32 v22.l, v125.h
	v_cmp_o_f32_e64 s7, v125, v125
	v_cmp_o_f32_e64 s8, v20, v20
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v109, v233, v129
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v105, s31, v105
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v131, 1, v22
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v22.l, v18.l, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v18, v114, 0, 8
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v109, s31, v109
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v110, v105, 16, 1
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b32_e64 v112, 0, v112, s1
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v114, -16, v22
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s3, 0, v18.l
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_add3_u32 v18, v125, v131, 0x7fff
	v_mov_b16_e32 v125.h, v22.h
	v_mov_b16_e32 v125.l, v20.h
	v_mov_b16_e64 v131.h, v22.h
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v114, v22, v114, s3
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v22.l, v115.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v119, v123, v119
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s7
	v_cmp_o_f32_e64 s7, v115, v115
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v114, v114
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v125, 1, v125
	v_and_b32_e32 v118, 1, v22
	v_cndmask_b32_e64 v119, 0, v119, s1
	v_mov_b16_e32 v22.l, v111.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v114, v123, v114
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v20, v20, v125, 0x7fff
	v_mov_b16_e32 v125.h, v22.h
	v_mov_b16_e32 v125.l, v119.h
	v_cmp_o_f32_e64 s9, v119, v119
	v_add3_u32 v115, v115, v118, 0x7fff
	v_and_b32_e32 v118, 1, v22
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v22.l, v19.l, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v125, 1, v125
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s8
	v_cmp_o_f32_e64 s3, v111, v111
	v_add3_u32 v19, v111, v118, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v19.l, v124.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v119, v119, v125, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v125, v138
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v114, 0, v114, s1
	v_cndmask_b16 v20.l, 0x7fff, v19.h, s3
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s8, 0, v19.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v20.h, 0x7fff, v119.h, s9
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v125, v123, v125
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v119, v21, v182, -v132
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v21, -16, v22
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v19.l, 0x7fff, v115.h, s7
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v19.h, 4, v120.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v125, 0, v125, s1
	v_mov_b16_e32 v115.h, v22.h
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v111, v22, v21, s8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v115.l, v114.h
	v_cmp_o_f32_e64 s3, v114, v114
	v_mov_b16_e64 v131.l, v125.h
	v_cmp_o_f32_e32 vcc_lo, v125, v125
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v138, v122, 24, 4
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v115, 1, v115
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cmp_o_f32_e64 s13, v109, v109
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v131, 1, v131
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cmp_o_f32_e64 s14, v105, v105
	v_add3_u32 v105, v105, v110, 0x7fff
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v114, v114, v115, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v111, v111
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v125, v125, v131, 0x7fff
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v131, v23, v183, -v132
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v23, v137
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v132, v121, 8, 4
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v107, v238, v127
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v126.h, 0x7fff, v125.h, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v111, v123, v111
	v_mul_f32_e32 v23, v123, v23
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s15, v112, v112
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v107, s31, v107
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v129, v121, 16, 4
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v111, 0, v111, s1
	v_cndmask_b32_e64 v23, 0, v23, s1
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v137, v122, 16, 4
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cmp_o_f32_e64 s11, v107, v107
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v139, -16, v129
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s16, v111, v111
	v_mov_b16_e32 v22.l, v23.h
	v_cmp_o_f32_e64 s7, v23, v23
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v141, -16, v137
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v81.l, v22.h
	v_mov_b16_e32 v85.l, v22.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v21, 1, v22
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v22.l, v19.h, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v19.h, 0x7fff, v114.h, s3
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v79.l, v22.h
	v_mov_b16_e32 v77.l, v22.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v21, v23, v21, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v23, v120, 0, 8
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v93.l, v22.h
	v_mov_b16_e32 v75.l, v22.h
	v_mov_b16_e32 v98.l, v22.h
	v_mov_b16_e32 v100.l, v22.h
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v21.l, v23.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v23, -16, v22
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v101.l, v22.h
	v_mov_b16_e32 v103.l, v22.h
	v_mov_b16_e32 v82.l, v22.h
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s8, 0, v21.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s7
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v21.h, 4, v116.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v84.l, v22.h
	v_mov_b16_e32 v86.l, v22.h
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v114, v22, v23, s8
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v23, v116, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v22.l, v112.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v88.l, v22.h
	v_mov_b16_e32 v91.l, v22.h
	v_mov_b16_e32 v95.l, v22.h
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s3, 0, v23.l
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v23, v119
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v226.l, v22.h
	v_mov_b16_e64 v224.l, v22.h
	v_mov_b16_e64 v223.l, v22.h
	v_mov_b16_e32 v76.l, v22.h
	v_mov_b16_e32 v78.l, v22.h
	v_mov_b16_e32 v80.l, v22.h
	v_mov_b16_e32 v89.l, v22.h
	v_mov_b16_e32 v92.l, v22.h
	v_mov_b16_e32 v94.l, v22.h
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v236, 0, v23, s2
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v96.l, v22.h
	v_mov_b16_e64 v222.l, v22.h
	v_mov_b16_e64 v217.l, v22.h
	v_mov_b16_e64 v216.l, v22.h
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v23, v236, v133
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v133, v121, 20, 4
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v115, 1, v22
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v22.l, v21.h, 15
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v231.l, v22.h
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v23, s31, v23
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v229.l, v22.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v110, v112, v115, 0x7fff
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v116, -16, v22
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v112.h, v22.h
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v118, v23, 16, 1
	v_cmp_o_f32_e64 s7, v23, v23
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v112.l, v111.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v214.l, v22.h
	v_mov_b16_e64 v227.l, v22.h
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v118, v23, v118, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v23, v131
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_alignbit_b32 v131, v122, v121, 24
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v112, 1, v112
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v212.l, v22.h
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v73.l, 0x7fff, v118.h, s7
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v225.l, v22.h
	v_mov_b16_e64 v210.l, v22.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v111, v111, v112, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v208.l, v22.h
	v_mov_b16_e64 v207.l, v22.h
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v235, 0, v23, s2
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v239, 0, v166
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v21.h, 0x7fff, v111.h, s16
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v201.l, v22.h
	v_mov_b16_e64 v200.l, v22.h
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v23, v235, v134
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v134, 15, v122
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v221.l, v22.h
	v_mov_b16_e64 v206.l, v22.h
	v_mov_b16_e64 v219.l, v22.h
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v23, s31, v23
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v140, -16, v134
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v220.l, v22.h
	v_mov_b16_e64 v218.l, v22.h
	v_mov_b16_e64 v215.l, v22.h
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v119, v23, 16, 1
	v_cmp_o_f32_e64 s8, v23, v23
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v213.l, v22.h
	v_mov_b16_e64 v211.l, v22.h
	v_mov_b16_e64 v209.l, v22.h
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v119, v23, v119, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v23, v24
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v205.l, v22.h
	v_mov_b16_e64 v203.l, v22.h
	v_mov_b16_e64 v204.l, v22.h
	v_mov_b16_e64 v202.l, v22.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v23, 0, v23, s2
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v24, v23, v135
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v135, v122, 8, 4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v24, s31, v24
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v120, v24, 16, 1
	v_cmp_o_f32_e64 s9, v24, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v120, v24, v120, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v24, v106
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v24, 0, v24, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v106, v24, v136
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v136, v122, 20, 4
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v106, s31, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v124, v106, 16, 1
	v_cmp_o_f32_e64 s10, v106, v106
	v_add3_u32 v106, v106, v124, 0x7fff
	v_bfe_u32 v124, v107, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v107, v107, v124, 0x7fff
	v_bfe_u32 v124, v108, 16, 1
	v_cndmask_b16 v74.l, 0x7fff, v107.h, s11
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v108, v108, v124, 0x7fff
	v_bfe_u32 v124, v109, 16, 1
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	ds_store_b16 v237, v73
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v73.l, 0x7fff, v119.h, s8
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v237, v74 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v74.l, 0x7fff, v108.h, s12
	v_add3_u32 v109, v109, v124, 0x7fff
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v108.h, v22.h
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v169, v73
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v73.l, 0x7fff, v120.h, s9
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v169, v74 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v74.l, 0x7fff, v109.h, s13
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v124.l, 0x7fff, v110.h, s15
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s11, v234, v234
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v170, v73
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v73.l, 0x7fff, v106.h, s10
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v170, v74 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v74.l, 0x7fff, v105.h, s14
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v105, v117
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v106, v22, v116, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v171, v73
	ds_store_b16 v171, v74 offset:512
	s_waitcnt lgkmcnt(0)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v105, v123, v105
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_barrier
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s10, v233, v233
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v74.l, v22.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v105, 0, v105, s1
	v_mov_b16_e32 v22.l, v105.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v105, v105
	v_and_b32_e32 v107, 1, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v105, v105, v107, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v107, v114
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v125.l, 0x7fff, v105.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v107, v123, v107
	v_cvt_f32_i32_e32 v105, v106
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v106.h, v22.h
	v_cndmask_b32_e64 v107, 0, v107, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v105, v123, v105
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v108.l, v107.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s3, v107, v107
	v_cndmask_b32_e64 v105, 0, v105, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v108, 1, v108
	v_mov_b16_e32 v106.l, v105.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e32 vcc_lo, v105, v105
	v_add3_u32 v107, v107, v108, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v108, v113
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v106, 1, v106
	v_cndmask_b16 v124.h, 0x7fff, v107.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v108, v123, v108
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v105, v105, v106, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v106, v130
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v130, 8, v121
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v108, 0, v108, s1
	v_cndmask_b16 v125.h, 0x7fff, v105.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v106, v123, v106
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v22.l, v108.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s7, v108, v108
	v_cndmask_b32_e64 v106, 0, v106, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v109, 1, v22
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v22.l, 4, v126.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s3, v106, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v108, v108, v109, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v109, v126, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v126.l, 0x7fff, v108.h, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v73.l, v109.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v109, -16, v22
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s8, 0, v73.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v107, v22, v109, s8
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_mov_b16_e32 v22.l, v106.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v105, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v108, 1, v22
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e32 v22.l, v122.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v105, v123, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v106, v106, v108, 0x7fff
	v_cndmask_b32_e64 v105, 0, v105, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v127.l, 0x7fff, v106.h, s3
	v_mov_b16_e32 v106.h, v22.h
	v_mov_b16_e32 v106.l, v105.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v105, v105
	v_and_b32_e32 v106, 1, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v105, v105, v106, 0x7fff
	v_cndmask_b16 v127.h, 0x7fff, v105.h, vcc_lo
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_load_b128 v[113:116], v239
	ds_load_b128 v[117:120], v172
	ds_load_b128 v[105:108], v173
	ds_load_b128 v[109:112], v174
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v162, v[18:21]
	ds_store_b128 v162, v[124:127] offset:16
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v18.h, v121.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v125, 15, v121
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v20.l, v122.l, 15
	.loc	1 615 36 is_stmt 1              ; attention_backward.py:615:36
	v_bfe_i32 v126, v121, 0, 8
	v_mov_b16_e32 v21.l, v121.h
	v_lshrrev_b32_e32 v127, 8, v122
	v_lshrrev_b32_e32 v124, 24, v122
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v18.l, 4, v121.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v19.l, v121.h, 15
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v19.h, 4, v122.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v20.h, v122.h, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b64 v[121:122], 24, v[121:122]
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v122, -16, v125
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v18.h
	v_cmp_lt_u16_e64 s7, 7, v20.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v20.l, v130.l, 15
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s3, 7, v19.l
	v_cmp_lt_u16_e64 s8, 7, v20.h
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v143, v125, v122, vcc_lo
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v122, -16, v132
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v20.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v20.l, v127.l, 15
	v_and_b16 v19.l, v121.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v139, v129, v139, s3
	v_cndmask_b32_e64 v129, v134, v140, s7
	v_cndmask_b32_e32 v132, v132, v122, vcc_lo
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v122, -16, v135
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v20.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v20.l, v124.l, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v142, v121, 0, 8
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v132, v132
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v18.h, 4, v121.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v125, v135, v122, vcc_lo
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v122, -16, v138
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v20.l
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v20, 15, v131
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v132, v123, v132
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v121, v137, v141, s8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v135.h, v22.h
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v122, v138, v122, vcc_lo
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v131, -16, v20
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v19.l
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b32_e64 v132, 0, v132, s4
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v73.l, 4, v127.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v122, v122
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v127, v127, 0, 8
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v131, v20, v131, vcc_lo
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v20, v21, 0, 8
	v_bfe_i32 v21, v22, 0, 8
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v122, v123, v122
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v22.l, v18.l, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v18.l, v126.l
	v_mov_b16_e32 v19.l, v20.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v20, -16, v133
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v125, v125
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v126, -16, v22
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s7, 0, v18.l
	v_cmp_gt_i16_e32 vcc_lo, 0, v19.l
	v_mov_b16_e32 v19.l, v21.l
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v21, -16, v136
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v18.l, 4, v130.l
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v126, v22, v126, s7
	v_cndmask_b32_e32 v20, v133, v20, vcc_lo
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v19.l
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_mov_b16_e64 v133.h, v22.h
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v130, v130, 0, 8
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v21, v136, v21, vcc_lo
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_mov_b16_e64 v19.l, v142.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_mul_f32_e32 v125, v123, v125
	v_mul_f32_e32 v126, v123, v126
	v_mul_f32_e32 v20, v123, v20
	v_cvt_f32_i32_e32 v21, v21
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s9, 0, v19.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v125, 0, v125, s4
	v_cndmask_b32_e64 v126, 0, v126, s4
	v_cndmask_b32_e64 v20, 0, v20, s4
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v21, v123, v21
	v_cvt_f32_i32_e32 v121, v121
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v122, 0, v122, s4
	v_mov_b16_e64 v135.l, v126.h
	v_mov_b16_e64 v133.l, v20.h
	v_cndmask_b32_e64 v21, 0, v21, s4
	v_cmp_o_f32_e64 s3, v20, v20
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v121, v123, v121
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v135, 1, v135
	v_and_b32_e32 v133, 1, v133
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v121, 0, v121, s4
	v_add3_u32 v20, v20, v133, 0x7fff
	v_mov_b16_e64 v133.h, v22.h
	v_mov_b16_e64 v133.l, v21.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s3
	v_cmp_o_f32_e64 s3, v132, v132
	v_and_b32_e32 v133, 1, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v21, v21, v133, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v133, v143
	v_mul_f32_e32 v133, v123, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v133, 0, v133, s4
	v_mov_b16_e64 v22.l, v133.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s7, v133, v133
	v_and_b32_e32 v134, 1, v22
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v22.l, v18.l, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v18.l, v130.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v133, v133, v134, 0x7fff
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v130, -16, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s8, 0, v18.l
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b16 v18.l, 0x7fff, v133.h, s7
	v_cmp_o_f32_e64 s7, v126, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v130, v22, v130, s8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v22.l, v132.h
	v_add3_u32 v126, v126, v135, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v130, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v133, 1, v22
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v130, v123, v130
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v132, v132, v133, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v133, v139
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v130, 0, v130, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v19.l, 0x7fff, v132.h, s3
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v133, v123, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s3, v130, v130
	v_cndmask_b32_e64 v133, 0, v133, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e64 v22.l, v133.h
	v_cmp_o_f32_e64 s8, v133, v133
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_b32_e32 v134, 1, v22
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v22.l, v18.h, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v18.h, 0x7fff, v126.h, s7
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v126, v131
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v133, v133, v134, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v134, -16, v22
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v133.l, v130.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v126, v123, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v20.l, 0x7fff, v133.h, s8
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s8, 0, v128.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v128, v129
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v131, 0, v126, s4
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v126, v22, v134, s9
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v133.h, v22.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s9, v24, v24
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v128, v123, v128
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v22.l, v131.h
	v_cmp_o_f32_e64 s7, v131, v131
	v_and_b32_e32 v133, 1, v133
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v126, v126
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v129, 0, v128, s4
	v_and_b32_e32 v132, 1, v22
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v22.l, v19.h, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v130, v130, v133, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v126, v123, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v131, v131, v132, 0x7fff
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v132, -16, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v19.h, 0x7fff, v130.h, s3
	v_cndmask_b32_e64 v126, 0, v126, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v21.l, 0x7fff, v131.h, s7
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v128, v22, v132, s8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v22.l, v129.h
	v_cmp_o_f32_e64 s7, v129, v129
	v_cmp_o_f32_e64 s8, v126, v126
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v128, v128
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v130, 1, v22
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v22.l, v73.l, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v73.l, v127.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v128, v123, v128
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v127, v129, v130, 0x7fff
	v_mov_b16_e64 v129.h, v22.h
	v_mov_b16_e64 v129.l, v126.h
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v131, -16, v22
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s3, 0, v73.l
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b32_e64 v128, 0, v128, s4
	v_cndmask_b16 v127.l, 0x7fff, v127.h, s7
	v_and_b32_e32 v129, 1, v129
	v_cmp_o_f32_e64 s7, v121, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v126, v126, v129, 0x7fff
	v_cndmask_b16 v129.h, 0x7fff, v21.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v125, v125
	v_cndmask_b16 v21.h, 0x7fff, v126.h, s8
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v126, v22, v131, s3
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v22.l, v125.h
	v_cmp_o_f32_e64 s3, v128, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v130, 1, v22
	v_mov_b16_e32 v22.l, v121.h
	v_add3_u32 v125, v125, v130, 0x7fff
	v_mov_b16_e64 v130.h, v22.h
	v_mov_b16_e64 v130.l, v128.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v130, 1, v130
	v_add3_u32 v128, v128, v130, 0x7fff
	v_and_b32_e32 v130, 1, v22
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v22.l, 4, v124.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v124, v124, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v128.l, 0x7fff, v125.h, vcc_lo
	v_mov_b16_e32 v125.h, v22.h
	v_add3_u32 v121, v121, v130, 0x7fff
	v_cndmask_b16 v127.h, 0x7fff, v128.h, s3
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v73.l, v124.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v124, -16, v22
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s3, v122, v122
	v_cndmask_b16 v129.l, 0x7fff, v121.h, s7
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v121, v126
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s8, 0, v73.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s7, v235, v235
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v73.l, v22.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v121, v123, v121
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v124, v22, v124, s8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v22.l, v122.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s8, v232, v232
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v121, 0, v121, s4
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v124, v124
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v125.l, v121.h
	v_cmp_o_f32_e32 vcc_lo, v121, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v123, v123, v124
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v125, 1, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v121, v121, v125, 0x7fff
	v_and_b32_e32 v125, 1, v22
	v_cndmask_b16 v128.h, 0x7fff, v121.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v122, v122, v125, 0x7fff
	v_cndmask_b32_e64 v121, 0, v123, s4
	v_cndmask_b16 v130.l, 0x7fff, v122.h, s3
	v_mov_b16_e32 v122.h, v22.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v122.l, v121.h
	v_cmp_o_f32_e32 vcc_lo, v121, v121
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s3, v238, v238
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v122, 1, v122
	v_add3_u32 v121, v121, v122, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v130.h, 0x7fff, v121.h, vcc_lo
	ds_store_b128 v162, v[18:21] offset:32
	ds_store_b128 v162, v[127:130] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v241, v164 offset:256
	ds_load_u16_d16 v240, v164
	ds_load_u16_d16 v242, v164 offset:512
	ds_load_u16_d16 v243, v164 offset:768
	ds_load_u16_d16 v244, v164 offset:1024
	ds_load_u16_d16 v246, v164 offset:1536
	ds_load_u16_d16 v247, v164 offset:1792
	ds_load_u16_d16 v245, v164 offset:1280
	ds_load_u16_d16 v125, v164 offset:1088
	ds_load_u16_d16 v124, v164 offset:832
	ds_load_u16_d16 v133, v164 offset:3072
	ds_load_u16_d16 v139, v164 offset:2624
	ds_load_u16_d16 v138, v164 offset:2368
	ds_load_u16_d16 v129, v164 offset:2048
	ds_load_u16_d16 v130, v164 offset:2304
	ds_load_u16_d16 v131, v164 offset:2560
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v125, v164 offset:1216
	ds_load_u16_d16_hi v245, v164 offset:1408
	ds_load_u16_d16_hi v242, v164 offset:640
	ds_load_u16_d16_hi v243, v164 offset:896
	ds_load_u16_d16_hi v244, v164 offset:1152
	ds_load_u16_d16 v126, v164 offset:1344
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v139, v164 offset:2752
	ds_load_u16_d16_hi v246, v164 offset:1664
	ds_load_u16_d16 v121, v164 offset:64
	ds_load_u16_d16_hi v241, v164 offset:384
	ds_load_u16_d16_hi v240, v164 offset:128
	ds_load_u16_d16 v123, v164 offset:576
	ds_load_u16_d16 v122, v164 offset:320
	ds_load_u16_d16_hi v247, v164 offset:1920
	ds_load_u16_d16 v127, v164 offset:1600
	ds_load_u16_d16 v137, v164 offset:2112
	ds_load_u16_d16 v128, v164 offset:1856
	ds_load_u16_d16_hi v124, v164 offset:960
	ds_load_u16_d16 v144, v164 offset:3904
	ds_load_u16_d16 v132, v164 offset:2816
	ds_load_u16_d16 v143, v164 offset:3648
	ds_load_u16_d16 v142, v164 offset:3392
	ds_load_u16_d16 v135, v164 offset:3584
	ds_load_u16_d16 v136, v164 offset:3840
	ds_load_u16_d16 v141, v164 offset:3136
	ds_load_u16_d16 v140, v164 offset:2880
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v138, v164 offset:2496
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v126, v164 offset:1472
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v127, v164 offset:1728
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v128, v164 offset:1984
	ds_load_u16_d16_hi v129, v164 offset:2176
	ds_load_u16_d16_hi v137, v164 offset:2240
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v18, v236, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v236, v236
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v144, v164 offset:4032
	ds_load_u16_d16 v134, v164 offset:3328
	ds_load_u16_d16_hi v131, v164 offset:2688
	ds_load_u16_d16_hi v130, v164 offset:2432
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v132, v164 offset:2944
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v135, v164 offset:3712
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v136, v164 offset:3968
	ds_load_u16_d16_hi v133, v164 offset:3200
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v140, v164 offset:3008
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v18, v236, v18, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v18.l, v22.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_load_u16_d16_hi v121, v164 offset:192
	ds_load_u16_d16_hi v123, v164 offset:704
	ds_load_u16_d16_hi v122, v164 offset:448
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v134, v164 offset:3456
	ds_load_u16_d16_hi v141, v164 offset:3264
	ds_load_u16_d16_hi v143, v164 offset:3776
	ds_load_u16_d16_hi v142, v164 offset:3520
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[240:247], v[113:120], v[25:32]
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v19, v236, v18
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[33:40], v[121:128], v[113:120], v[33:40]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v20, v19, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e32 v122.l, v22.h
	v_mov_b16_e32 v123.l, v22.h
	v_mov_b16_e32 v124.l, v22.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v19, v19, v20, 0x7fff
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_bfe_u32 v20, v238, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[129:136], v[105:112], v[25:32]
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v125.l, v22.h
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[33:40], v[137:144], v[105:112], v[33:40]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v142, v93, v93
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v20, v238, v20, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v20.l, v22.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v129, v98, v98
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v98.l, v230.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v130, v97, v97
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s3
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v237, v18
	ds_store_b16_d16_hi v237, v20 offset:512
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v21, v238, v20
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v18, v232, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v97.l, v231.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v131, v88, v88
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v88.l, v208.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v105, v21, 16, 1
	v_cmp_o_f32_e64 s3, v21, v21
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v18, v232, v18, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v132, v87, v87
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v87.l, v209.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v21, v21, v105, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v105, v235, 16, 1
	v_cndmask_b16 v20.h, 0x7fff, v18.h, s8
	v_bfe_u32 v18, v23, 16, 1
	v_cmp_o_f32_e64 s8, v23, v23
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v133, v86, v86
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v105, v235, v105, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v105.l, v22.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v18, v23, v18, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v18.l, 0x7fff, v19.h, vcc_lo
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v86.l, v210.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v105.h, 0x7fff, v105.h, s7
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v134, v85, v85
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v122.h, 0x7fff, v18.h, s8
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v18.h, 0x7fff, v21.h, s3
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v85.l, v211.h
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v106, v235, v105
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v169, v105
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v105, v24, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v19, v23, v122
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v135, v84, v84
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v107, v106, 16, 1
	v_cmp_o_f32_e64 s7, v106, v106
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v105, v24, v105, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v84.l, v212.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v121, v106, v107, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v106, v233, 16, 1
	v_bfe_u32 v107, v234, 16, 1
	v_cndmask_b16 v123.h, 0x7fff, v105.h, s9
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v136, v83, v83
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v83.l, v213.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v106, v233, v106, 0x7fff
	v_add3_u32 v107, v234, v107, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v21, v24, v123
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v137, v82, v82
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v82.l, v214.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v124.h, 0x7fff, v106.h, s10
	v_cndmask_b16 v125.h, 0x7fff, v107.h, s11
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v169, v20 offset:512
	ds_store_b16_d16_hi v170, v122
	ds_store_b16_d16_hi v170, v124 offset:512
	ds_store_b16_d16_hi v171, v123
	ds_store_b16_d16_hi v171, v125 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[113:116], v239
	ds_load_b128 v[117:120], v172
	ds_load_b128 v[105:108], v173
	ds_load_b128 v[109:112], v174
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v237, v18
	ds_store_b16_d16_hi v237, v18 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v18.l, 0x7fff, v121.h, s7
	v_bfe_u32 v121, v19, 16, 1
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v20, v232, v20
	v_sub_f32_e32 v23, v233, v124
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s3, v21, v21
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v24, v234, v125
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v19, v19, v121, 0x7fff
	v_bfe_u32 v121, v21, 16, 1
	v_cmp_o_f32_e64 s7, v20, v20
	v_cmp_o_f32_e64 s8, v23, v23
	v_cmp_o_f32_e64 s9, v24, v24
	.loc	1 732 35 is_stmt 1              ; attention_backward.py:732:35
	v_sub_f32_e32 v138, v81, v81
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v21, v21, v121, 0x7fff
	v_bfe_u32 v121, v20, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v81.l, v215.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v139, v96, v96
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v96.l, v200.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v140, v95, v95
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v20, v20, v121, 0x7fff
	v_bfe_u32 v121, v23, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v95.l, v202.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v141, v94, v94
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v94.l, v201.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s7
	v_add3_u32 v23, v23, v121, 0x7fff
	v_bfe_u32 v121, v24, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v169, v18
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v18.l, 0x7fff, v19.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v169, v18 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v18.h, 0x7fff, v23.h, s8
	v_add3_u32 v24, v24, v121, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v19, v103, v103
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v170, v18
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v18.l, 0x7fff, v21.h, s3
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v170, v18 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v18.h, 0x7fff, v24.h, s9
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v171, v18
	ds_store_b16_d16_hi v171, v18 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[121:124], v239
	ds_load_b128 v[125:128], v172
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v18, v104, v104
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v104.l, v224.h
	v_mov_b16_e64 v103.l, v225.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v20, v102, v102
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v102.l, v226.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v21, v101, v101
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v101.l, v227.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v23, v100, v100 :: v_dual_sub_f32 v144, v91, v91
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v100.l, v228.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v24, v99, v99
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v99.l, v229.h
	v_mov_b16_e64 v93.l, v204.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v143, v92, v92
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v92.l, v203.h
	v_mov_b16_e64 v91.l, v206.h
	v_wmma_f32_16x16x16_bf16 v[9:16], v[97:104], v[113:120], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v232, v90, v90
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v90.l, v205.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v233, v89, v89
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v89.l, v207.h
	v_wmma_f32_16x16x16_bf16 v[9:16], v[81:88], v[105:112], v[9:16]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v22.l, v130.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[97:104], v[121:128], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v97, v80, v80
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v80.l, v216.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v98, v79, v79
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v79.l, v218.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v99, v78, v78
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v78.l, v217.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v100, v77, v77
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v77.l, v220.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v101, v76, v76
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v76.l, v219.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v102, v75, v75
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v75.l, v222.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v103, v74, v74
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v74.l, v221.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v104, v73, v73
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v73.l, v223.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[73:80], v[113:120], v[1:8]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[89:96], v[105:112], v[1:8]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[73:80], v[121:128], v[1:8]
	ds_load_b128 v[73:76], v173
	ds_load_b128 v[77:80], v174
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[81:88], v[73:80], v[9:16]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[89:96], v[73:80], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v73, v231, v231
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e32 v74.h, v22.h
	v_mov_b16_e32 v75.h, v22.h
	v_mov_b16_e32 v76.h, v22.h
	v_mov_b16_e32 v77.h, v22.h
	v_mov_b16_e32 v74.l, v73.h
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_mov_b16_e32 v78.h, v22.h
	v_mov_b16_e32 v79.h, v22.h
	v_mov_b16_e32 v80.h, v22.h
	v_and_b32_e32 v74, 1, v74
	v_mov_b16_e32 v81.h, v22.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v73, v73, v74, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v74, v230, v230
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v73.l, 0x7fff, v73.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v75.l, v74.h
	v_cmp_o_f32_e64 s3, v74, v74
	v_cmp_o_f32_e32 vcc_lo, v130, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v75, 1, v75
	v_add3_u32 v74, v74, v75, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v75, v229, v229
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v74.l, 0x7fff, v74.h, s3
	v_mov_b16_e32 v76.l, v75.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s7, v75, v75
	v_and_b32_e32 v76, 1, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v75, v75, v76, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v76, v228, v228
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v75.l, 0x7fff, v75.h, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v77.l, v76.h
	v_cmp_o_f32_e64 s8, v76, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v77, 1, v77
	v_add3_u32 v76, v76, v77, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v77, v227, v227
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v76.l, 0x7fff, v76.h, s8
	v_mov_b16_e32 v78.l, v77.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s9, v77, v77
	v_and_b32_e32 v78, 1, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v77, v77, v78, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v78, v226, v226
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v77.l, 0x7fff, v77.h, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v79.l, v78.h
	v_cmp_o_f32_e64 s10, v78, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v79, 1, v79
	v_add3_u32 v78, v78, v79, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v79, v225, v225
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v78.l, 0x7fff, v78.h, s10
	v_mov_b16_e32 v80.l, v79.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s11, v79, v79
	v_and_b32_e32 v80, 1, v80
	v_cmp_o_f32_e64 s3, v129, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v79, v79, v80, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v80, v224, v224
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v79.l, 0x7fff, v79.h, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v81.l, v80.h
	v_cmp_o_f32_e64 s12, v80, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v81, 1, v81
	v_add3_u32 v80, v80, v81, 0x7fff
	v_and_b32_e32 v81, 1, v22
	v_mov_b16_e64 v22.l, v129.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v80.l, 0x7fff, v80.h, s12
	v_add3_u32 v81, v130, v81, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v82, 1, v22
	v_mov_b16_e32 v22.l, v24.h
	v_cndmask_b16 v73.h, 0x7fff, v81.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v82, v129, v82, 0x7fff
	v_and_b32_e32 v81, 1, v22
	v_mov_b16_e32 v22.l, v23.h
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v74.h, 0x7fff, v82.h, s3
	v_add3_u32 v24, v24, v81, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v81, 1, v22
	v_cmp_o_f32_e64 s3, v23, v23
	v_mov_b16_e32 v22.l, v21.h
	v_cndmask_b16 v75.h, 0x7fff, v24.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v23, v23, v81, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_mov_b16_e32 v24.h, v22.h
	v_cndmask_b16 v76.h, 0x7fff, v23.h, s3
	v_and_b32_e32 v23, 1, v22
	v_mov_b16_e32 v22.l, v20.h
	v_cmp_o_f32_e64 s3, v20, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v21, v21, v23, 0x7fff
	v_and_b32_e32 v23, 1, v22
	v_mov_b16_e32 v22.l, v19.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v77.h, 0x7fff, v21.h, vcc_lo
	v_add3_u32 v20, v20, v23, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_mov_b16_e32 v21.h, v22.h
	v_mov_b16_e32 v23.h, v22.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b16 v78.h, 0x7fff, v20.h, s3
	v_and_b32_e32 v20, 1, v22
	v_mov_b16_e32 v22.l, v18.h
	v_cmp_o_f32_e64 s3, v18, v18
	v_add3_u32 v19, v19, v20, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v20, 1, v22
	v_mov_b16_e64 v22.l, v138.h
	v_cndmask_b16 v79.h, 0x7fff, v19.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v18, v18, v20, 0x7fff
	v_mov_b16_e32 v19.h, v22.h
	v_mov_b16_e32 v20.h, v22.h
	v_cndmask_b16 v80.h, 0x7fff, v18.h, s3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v18, v223, v223
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[73:80], v[113:120], v[9:16]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v19.l, v18.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_mov_b16_e32 v73.h, v22.h
	v_mov_b16_e32 v74.h, v22.h
	v_mov_b16_e32 v75.h, v22.h
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v18, v18, v19, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v19, v221, v221
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v20.l, v19.h
	v_cmp_o_f32_e64 s3, v19, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v20, 1, v20
	v_add3_u32 v19, v19, v20, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v20, v222, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v21.l, v20.h
	v_cmp_o_f32_e64 s7, v20, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v20, v20, v21, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v21, v219, v219
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v23.l, v21.h
	v_cmp_o_f32_e64 s8, v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v23, 1, v23
	v_add3_u32 v21, v21, v23, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v23, v220, v220
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v76.l, 0x7fff, v21.h, s8
	v_mov_b16_e32 v24.l, v23.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s9, v23, v23
	v_and_b32_e32 v24, 1, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v23, v23, v24, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v24, v217, v217
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v77.l, 0x7fff, v23.h, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v73.l, v24.h
	v_cmp_o_f32_e64 s10, v24, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v24, v24, v73, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v73, v218, v218
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v78.l, 0x7fff, v24.h, s10
	v_mov_b16_e32 v74.l, v73.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s11, v73, v73
	v_and_b32_e32 v74, 1, v74
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v73, v73, v74, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v74, v216, v216
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v73.l, 0x7fff, v18.h, vcc_lo
	v_and_b32_e32 v18, 1, v22
	v_mov_b16_e64 v22.l, v137.h
	v_cmp_o_f32_e32 vcc_lo, v104, v104
	v_mov_b16_e32 v75.l, v74.h
	v_cmp_o_f32_e64 s12, v74, v74
	v_cndmask_b16 v79.l, 0x7fff, v73.h, s11
	v_add3_u32 v18, v138, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v75, 1, v75
	v_add3_u32 v74, v74, v75, 0x7fff
	v_cndmask_b16 v74.l, 0x7fff, v19.h, s3
	v_and_b32_e32 v19, 1, v22
	v_mov_b16_e64 v22.l, v136.h
	v_cndmask_b16 v75.l, 0x7fff, v20.h, s7
	v_cmp_o_f32_e64 s3, v103, v103
	v_cndmask_b16 v80.l, 0x7fff, v74.h, s12
	v_add3_u32 v19, v137, v19, 0x7fff
	v_and_b32_e32 v20, 1, v22
	v_mov_b16_e64 v22.l, v135.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v21, 1, v22
	v_mov_b16_e64 v22.l, v134.h
	v_and_b32_e32 v23, 1, v22
	v_mov_b16_e64 v22.l, v133.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v24, 1, v22
	v_mov_b16_e64 v22.l, v132.h
	v_and_b32_e32 v81, 1, v22
	v_mov_b16_e64 v22.l, v131.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v82, 1, v22
	v_mov_b16_e32 v22.l, v104.h
	v_and_b32_e32 v83, 1, v22
	v_mov_b16_e32 v22.l, v103.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v83, v104, v83, 0x7fff
	v_and_b32_e32 v84, 1, v22
	v_mov_b16_e32 v22.l, v102.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v73.h, 0x7fff, v83.h, vcc_lo
	v_add3_u32 v84, v103, v84, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v83, 1, v22
	v_mov_b16_e32 v22.l, v101.h
	v_cmp_o_f32_e32 vcc_lo, v102, v102
	v_cndmask_b16 v74.h, 0x7fff, v84.h, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v83, v102, v83, 0x7fff
	v_and_b32_e32 v84, 1, v22
	v_mov_b16_e32 v22.l, v100.h
	v_cmp_o_f32_e64 s3, v101, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v75.h, 0x7fff, v83.h, vcc_lo
	v_add3_u32 v84, v101, v84, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v83, 1, v22
	v_mov_b16_e32 v22.l, v99.h
	v_cmp_o_f32_e32 vcc_lo, v100, v100
	v_cndmask_b16 v76.h, 0x7fff, v84.h, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v83, v100, v83, 0x7fff
	v_and_b32_e32 v84, 1, v22
	v_mov_b16_e32 v22.l, v98.h
	v_cmp_o_f32_e64 s3, v99, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v77.h, 0x7fff, v83.h, vcc_lo
	v_add3_u32 v84, v99, v84, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v83, 1, v22
	v_mov_b16_e32 v22.l, v97.h
	v_cmp_o_f32_e32 vcc_lo, v98, v98
	v_cndmask_b16 v78.h, 0x7fff, v84.h, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v83, v98, v83, 0x7fff
	v_and_b32_e32 v84, 1, v22
	v_cmp_o_f32_e64 s3, v97, v97
	v_mov_b16_e64 v22.l, v233.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v79.h, 0x7fff, v83.h, vcc_lo
	v_add3_u32 v84, v97, v84, 0x7fff
	v_mov_b16_e32 v83.h, v22.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v80.h, 0x7fff, v84.h, s3
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[73:80], v[113:120], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v73, v215, v215
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e32 v74.h, v22.h
	v_mov_b16_e32 v75.h, v22.h
	v_mov_b16_e32 v76.h, v22.h
	v_mov_b16_e32 v77.h, v22.h
	v_mov_b16_e32 v74.l, v73.h
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_mov_b16_e32 v78.h, v22.h
	v_mov_b16_e32 v79.h, v22.h
	v_mov_b16_e32 v80.h, v22.h
	v_and_b32_e32 v74, 1, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v73, v73, v74, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v74, v214, v214
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v73.l, 0x7fff, v73.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v75.l, v74.h
	v_cmp_o_f32_e64 s3, v74, v74
	v_cmp_o_f32_e32 vcc_lo, v138, v138
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_b32_e32 v75, 1, v75
	v_cndmask_b16 v73.h, 0x7fff, v18.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v136, v136
	v_add3_u32 v18, v136, v20, 0x7fff
	v_add3_u32 v74, v74, v75, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v75, v213, v213
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v20.h, v22.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v74.l, 0x7fff, v74.h, s3
	v_mov_b16_e32 v76.l, v75.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s7, v75, v75
	v_cmp_o_f32_e64 s3, v137, v137
	v_and_b32_e32 v76, 1, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v74.h, 0x7fff, v19.h, s3
	v_cmp_o_f32_e64 s3, v135, v135
	v_add3_u32 v19, v135, v21, 0x7fff
	v_add3_u32 v75, v75, v76, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v76, v212, v212
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v21.h, v22.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v75.l, 0x7fff, v75.h, s7
	v_mov_b16_e32 v77.l, v76.h
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_o_f32_e64 s8, v76, v76
	v_cndmask_b16 v75.h, 0x7fff, v18.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v134, v134
	v_add3_u32 v18, v134, v23, 0x7fff
	v_and_b32_e32 v77, 1, v77
	v_mov_b16_e32 v23.h, v22.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v76, v76, v77, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v77, v211, v211
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v76.l, 0x7fff, v76.h, s8
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b16_e32 v78.l, v77.h
	v_cndmask_b16 v76.h, 0x7fff, v19.h, s3
	v_cmp_o_f32_e64 s3, v133, v133
	v_add3_u32 v19, v133, v24, 0x7fff
	v_mov_b16_e32 v24.h, v22.h
	v_and_b32_e32 v78, 1, v78
	v_cmp_o_f32_e64 s9, v77, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v77, v77, v78, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v78, v210, v210
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v77.l, 0x7fff, v77.h, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v79.l, v78.h
	v_cmp_o_f32_e64 s10, v78, v78
	v_cndmask_b16 v77.h, 0x7fff, v18.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v132, v132
	v_add3_u32 v18, v132, v81, 0x7fff
	v_and_b32_e32 v79, 1, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v78, v78, v79, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v79, v209, v209
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v78.l, 0x7fff, v78.h, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v80.l, v79.h
	v_cndmask_b16 v78.h, 0x7fff, v19.h, s3
	v_cmp_o_f32_e64 s3, v131, v131
	v_add3_u32 v19, v131, v82, 0x7fff
	v_and_b32_e32 v80, 1, v80
	v_cmp_o_f32_e64 s11, v79, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v79, v79, v80, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v80, v208, v208
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v79.l, 0x7fff, v79.h, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v83.l, v80.h
	v_cmp_o_f32_e64 s12, v80, v80
	v_cndmask_b16 v79.h, 0x7fff, v18.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v18, v207, v207
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v83, 1, v83
	v_mov_b16_e32 v19.l, v18.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_add3_u32 v80, v80, v83, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v80.l, 0x7fff, v80.h, s12
	v_cndmask_b16 v80.h, 0x7fff, v19.h, s3
	v_mov_b16_e32 v19.h, v22.h
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[73:80], v[105:112], v[9:16]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v19, 1, v19
	v_mov_b16_e32 v74.h, v22.h
	v_mov_b16_e32 v73.h, v22.h
	v_mov_b16_e32 v75.h, v22.h
	v_add3_u32 v18, v18, v19, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v19, v205, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v20.l, v19.h
	v_and_b32_e32 v20, 1, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v19, v19
	v_add3_u32 v19, v19, v20, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v20, v206, v206
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v21.l, v20.h
	v_cmp_o_f32_e64 s7, v20, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v20, v20, v21, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v21, v203, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v23.l, v21.h
	v_cmp_o_f32_e64 s8, v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v23, 1, v23
	v_add3_u32 v21, v21, v23, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v23, v204, v204
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v76.l, 0x7fff, v21.h, s8
	v_mov_b16_e32 v24.l, v23.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s9, v23, v23
	v_and_b32_e32 v24, 1, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v23, v23, v24, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v24, v201, v201
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v77.l, 0x7fff, v23.h, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v73.l, v24.h
	v_cmp_o_f32_e64 s10, v24, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v24, v24, v73, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v73, v202, v202
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v78.l, 0x7fff, v24.h, s10
	v_mov_b16_e32 v74.l, v73.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s11, v73, v73
	v_and_b32_e32 v74, 1, v74
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v73, v73, v74, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v74, v200, v200
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v73.l, 0x7fff, v18.h, vcc_lo
	v_and_b32_e32 v18, 1, v22
	v_mov_b16_e64 v22.l, v232.h
	v_cmp_o_f32_e32 vcc_lo, v233, v233
	v_mov_b16_e32 v75.l, v74.h
	v_cmp_o_f32_e64 s12, v74, v74
	v_add3_u32 v18, v233, v18, 0x7fff
	v_cndmask_b16 v79.l, 0x7fff, v73.h, s11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v75, 1, v75
	v_cndmask_b16 v73.h, 0x7fff, v18.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v144, v144
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v74, v74, v75, 0x7fff
	v_cndmask_b16 v74.l, 0x7fff, v19.h, s3
	v_and_b32_e32 v19, 1, v22
	v_mov_b16_e64 v22.l, v144.h
	v_cmp_o_f32_e64 s3, v232, v232
	v_cndmask_b16 v80.l, 0x7fff, v74.h, s12
	v_cndmask_b16 v75.l, 0x7fff, v20.h, s7
	v_add3_u32 v19, v232, v19, 0x7fff
	v_and_b32_e32 v18, 1, v22
	v_mov_b16_e64 v22.l, v143.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v74.h, 0x7fff, v19.h, s3
	v_add3_u32 v18, v144, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v19, 1, v22
	v_mov_b16_e64 v22.l, v142.h
	v_cmp_o_f32_e64 s3, v143, v143
	v_cndmask_b16 v75.h, 0x7fff, v18.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v19, v143, v19, 0x7fff
	v_and_b32_e32 v18, 1, v22
	v_mov_b16_e64 v22.l, v141.h
	v_cmp_o_f32_e32 vcc_lo, v142, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v76.h, 0x7fff, v19.h, s3
	v_add3_u32 v18, v142, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v19, 1, v22
	v_mov_b16_e64 v22.l, v140.h
	v_cmp_o_f32_e64 s3, v141, v141
	v_cndmask_b16 v77.h, 0x7fff, v18.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v19, v141, v19, 0x7fff
	v_and_b32_e32 v18, 1, v22
	v_mov_b16_e64 v22.l, v139.h
	v_cmp_o_f32_e32 vcc_lo, v140, v140
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v78.h, 0x7fff, v19.h, s3
	v_add3_u32 v18, v140, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v19, 1, v22
	v_cmp_o_f32_e64 s3, v139, v139
	v_cndmask_b16 v79.h, 0x7fff, v18.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v19, v139, v19, 0x7fff
	v_cndmask_b16 v80.h, 0x7fff, v19.h, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[73:80], v[105:112], v[1:8]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ;   in Loop: Header=BB0_1 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	s_movk_i32 s7, 0x800
	.loc	1 605 9 is_stmt 1               ; attention_backward.py:605:9
	s_and_not1_b32 vcc_lo, exec_lo, s26
	s_mov_b32 s8, 0
	s_cbranch_vccnz .LBB0_1
; %bb.4:
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_or_b32_e32 v18, s18, v156
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, s19, v156
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v17, v155, v159
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s5, s43, 0xffff
	s_mov_b32 s7, 0x31027000
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v18, s28, v18
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s2, s28, v17
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v48, 2, v17
	v_or_b32_e32 v47, 4, v17
	v_or_b32_e32 v46, 6, v17
	v_or_b32_e32 v45, 8, v17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s2
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v49, v18, v17, 2
	v_add_lshl_u32 v50, v18, v48, 2
	v_add_lshl_u32 v51, v18, v47, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v44, 10, v17
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	s_mov_b32 s4, s42
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v43, 12, v17
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v52, v18, v44, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v0, 32, v17
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v25, v49, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v50, s2
	v_add_lshl_u32 v49, v18, v46, 2
	v_cndmask_b32_e64 v50, 0x80000000, v51, s2
	v_add_lshl_u32 v51, v18, v45, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v42, 14, v17
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v26, v25, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v49, s2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v24, 36, v17
	v_or_b32_e32 v41, 34, v17
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v26, 0x80000000, v51, s2
	v_add_lshl_u32 v49, v18, v43, 2
	buffer_store_b32 v27, v50, s[4:7], 0 offen
	v_cndmask_b32_e64 v27, 0x80000000, v52, s2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s3, s28, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v28, v25, s[4:7], 0 offen
	v_add_lshl_u32 v25, v18, v42, 2
	s_clause 0x1
	buffer_store_b32 v29, v26, s[4:7], 0 offen
	buffer_store_b32 v30, v27, s[4:7], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v49, s2
	v_add_lshl_u32 v28, v18, v41, 2
	v_add_lshl_u32 v29, v18, v24, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s3
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v27, v18, v0, 2
	buffer_store_b32 v31, v26, s[4:7], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v28, s2
	v_cndmask_b32_e64 v28, 0x80000000, v29, s2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v29, s30, v156
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v23, 38, v17
	v_or_b32_e32 v22, 40, v17
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v21, 42, v17
	v_or_b32_e32 v20, 44, v17
	v_cmp_gt_i32_e64 s0, s30, v17
	v_or_b32_e32 v19, 46, v17
	v_cmp_gt_i32_e64 s1, s30, v0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v0, v29, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v32, v25, s[4:7], 0 offen
	buffer_store_b32 v33, v27, s[4:7], 0 offen
	v_add_lshl_u32 v25, v18, v23, 2
	s_clause 0x1
	buffer_store_b32 v34, v26, s[4:7], 0 offen
	buffer_store_b32 v35, v28, s[4:7], 0 offen
	v_add_lshl_u32 v26, v18, v22, 2
	v_add_lshl_u32 v27, v18, v21, 2
	v_add_lshl_u32 v28, v18, v20, 2
	v_add_lshl_u32 v18, v18, v19, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s0, vcc_lo, s0
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v0, v0, s17, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v17, v29, v17
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_add_lshl_u32 v17, v17, s17, 2
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x4
	buffer_store_b32 v36, v25, s[4:7], 0 offen
	buffer_store_b32 v37, v26, s[4:7], 0 offen
	buffer_store_b32 v38, v27, s[4:7], 0 offen
	buffer_store_b32 v39, v28, s[4:7], 0 offen
	buffer_store_b32 v40, v18, s[4:7], 0 offen
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v18, v29, v48
	v_add_nc_u32_e32 v25, v29, v47
	v_add_nc_u32_e32 v26, v29, v46
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v27, v29, v45
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v18, v18, s17, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v28, v29, v44
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s46, s6
	s_mov_b32 s47, s7
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v30, v29, v43
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v9, v17, s[44:47], 0 offen
	v_add_lshl_u32 v9, v25, s17, 2
	v_cndmask_b32_e64 v17, 0x80000000, v18, s0
	v_add_lshl_u32 v18, v26, s17, 2
	v_add_lshl_u32 v25, v27, s17, 2
	v_add_lshl_u32 v26, v28, s17, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v31, v29, v42
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v10, v17, s[44:47], 0 offen
	v_cndmask_b32_e64 v10, 0x80000000, v18, s0
	v_cndmask_b32_e64 v17, 0x80000000, v25, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v32, v29, v41
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v18, 0x80000000, v26, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v24, v29, v24
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v11, v9, s[44:47], 0 offen
	v_add_lshl_u32 v9, v30, s17, 2
	s_clause 0x2
	buffer_store_b32 v12, v10, s[44:47], 0 offen
	buffer_store_b32 v13, v17, s[44:47], 0 offen
	buffer_store_b32 v14, v18, s[44:47], 0 offen
	v_add_lshl_u32 v10, v31, s17, 2
	v_add_lshl_u32 v11, v32, s17, 2
	v_add_lshl_u32 v12, v24, s17, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v21, v29, v21
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_cndmask_b32 v12, 0x80000000, v12
	s_clause 0x4
	buffer_store_b32 v15, v9, s[44:47], 0 offen
	buffer_store_b32 v16, v10, s[44:47], 0 offen
	buffer_store_b32 v1, v0, s[44:47], 0 offen
	buffer_store_b32 v2, v11, s[44:47], 0 offen
	buffer_store_b32 v3, v12, s[44:47], 0 offen
	v_add_lshl_u32 v2, v21, s17, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v23, v29, v23
	v_add_nc_u32_e32 v22, v29, v22
	v_add_nc_u32_e32 v20, v29, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_add_nc_u32 v19, v29, v19
	v_add_lshl_u32 v0, v23, s17, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_lshl_u32 v1, v22, s17, 2
	v_add_lshl_u32 v3, v20, s17, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v9, v19, s17, 2
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v0, s[44:47], 0 offen
	buffer_store_b32 v5, v1, s[44:47], 0 offen
	buffer_store_b32 v6, v2, s[44:47], 0 offen
	buffer_store_b32 v7, v3, s[44:47], 0 offen
	buffer_store_b32 v8, v9, s[44:47], 0 offen
	.loc	1 451 5                         ; attention_backward.py:451:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
		.amdhsa_next_free_vgpr 248
		.amdhsa_next_free_sgpr 60
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 248
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 60
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13756
; TotalNumSgprs: 62
; NumVgprs: 248
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 62
; NumVGPRsForWavesPerEU: 248
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 0
    .sgpr_count:     62
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     248
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
