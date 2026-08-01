	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 514 33 prologue_end           ; attention_backward.py:514:33
	v_bfe_u32 v156, v0, 4, 1
	s_clause 0x1
	s_load_b128 s[28:31], s[0:1], 0x74
	s_load_b256 s[36:43], s[0:1], 0x0
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s33, s2, 4
	.loc	1 521 24                        ; attention_backward.py:521:24
	s_lshl_b32 s34, s3, 11
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_lshlrev_b32_e32 v26, 3, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v37, 4, v156
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_add_i32 s34, s34, s33
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v2, 2, v0
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_or_b32_e32 v8, s34, v37
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v157, 1, v0
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_or_b32_e32 v3, s34, v2
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v4, s33, v2
	.loc	1 514 33 is_stmt 0              ; attention_backward.py:514:33
	v_or_b32_e32 v36, 2, v156
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v8, 1, v8
	.loc	1 524 23 is_stmt 1              ; attention_backward.py:524:23
	v_and_b32_e32 v1, 24, v26
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_and_b32_e32 v35, 7, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v4, 3, v0
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s39, 0xffff
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_mad_u64_u32 v[2:3], null, s29, v3, v[1:2]
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_cmp_gt_i32_e64 s2, s29, v1
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_mov_b32 s8, s38
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_lshlrev_b32_e32 v3, 3, v35
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v5, s33, v4
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_mul_i32 s35, s30, s34
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, vcc_lo, s2
	s_clause 0x1
	s_load_b64 s[52:53], s[0:1], 0x58
	s_load_b64 s[12:13], s[0:1], 0x20
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_mad_u64_u32 v[145:146], null, s30, v4, v[3:4]
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v5
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s6, s30, v3
	.loc	1 522 24                        ; attention_backward.py:522:24
	buffer_load_b64 v[1:2], v1, s[8:11], 0 offen
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_and_b32 s9, s41, 0xffff
	s_mov_b32 s8, s40
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v38, 6, v156
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_lshl_add_u32 v159, s30, 3, v145
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_lshl_u32 v3, v145, s35, 1
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, vcc_lo, s6
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_and_b32_e32 v6, 24, v157
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v39, 8, v156
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_lshl_u32 v13, v159, s35, 1
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v40, 10, v156
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xad_u32 v5, v26, v6, 0
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_or_b32_e32 v6, s34, v36
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v41, 12, v156
	v_or_b32_e32 v42, 14, v156
	.loc	1 514 23 is_stmt 0              ; attention_backward.py:514:23
	v_or_b32_e32 v158, s33, v156
	.loc	1 527 29 is_stmt 1              ; attention_backward.py:527:29
	v_lshlrev_b32_e32 v6, 1, v6
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_or_b32_e32 v7, s34, v156
	v_or_b32_e32 v9, s34, v38
	v_or_b32_e32 v10, s34, v39
	v_or_b32_e32 v11, s34, v40
	v_or_b32_e32 v12, s34, v41
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_lshlrev_b32_e32 v7, 1, v7
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_or_b32_e32 v4, s34, v42
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, 0x800, v158
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_lshlrev_b32_e32 v9, 1, v9
	v_lshlrev_b32_e32 v10, 1, v10
	v_lshlrev_b32_e32 v11, 1, v11
	s_mov_b32 s14, s10
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	s_mov_b32 s15, s11
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	v_dual_mov_b32 v17, 0 :: v_dual_lshlrev_b32 v46, 1, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v160, 15, v0
	s_clause 0x2
	s_load_b256 s[44:51], s[0:1], 0x38
	s_load_b64 s[26:27], s[0:1], 0x98
	s_load_b32 s55, s[0:1], 0xa0
	v_dual_mov_b32 v16, v25 :: v_dual_and_b32 v43, 56, v0
	v_and_b32_e32 v44, 16, v0
	v_dual_mov_b32 v18, v25 :: v_dual_and_b32 v45, 32, v0
	v_dual_mov_b32 v20, v25 :: v_dual_and_b32 v47, 1, v0
	v_dual_mov_b32 v22, v25 :: v_dual_lshlrev_b32 v161, 4, v0
	v_dual_mov_b32 v19, v25 :: v_dual_lshlrev_b32 v0, 6, v0
	v_dual_mov_b32 v21, v25 :: v_dual_and_b32 v26, 48, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v24, v25 :: v_dual_lshlrev_b32 v49, 5, v47
	v_dual_mov_b32 v15, v25 :: v_dual_lshlrev_b32 v50, 1, v160
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshlrev_b32_e32 v43, 1, v43
	v_lshl_or_b32 v174, v160, 6, v26
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v166, s33, v36
	v_or_b32_e32 v167, s33, v37
	v_or_b32_e32 v168, s33, v38
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xor_b32_e32 v43, v161, v43
	s_lshl_b32 s64, s3, 12
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, s26
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v162, 1, v45
	v_add3_u32 v165, 0, v45, v50
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v171, s33, v41
	v_or_b32_e32 v172, s33, v42
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_add_nc_u32_e32 v175, 0, v43
	v_xor_b32_e32 v43, 16, v174
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_sub_i32 s3, s3, s55
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v169, s33, v39
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s3, s3, 16
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v170, s33, v40
	v_add_nc_u32_e32 v180, 0, v43
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_add_i32 s27, s27, s55
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s1, s28, v49
	s_mov_b32 s60, s48
	v_lshl_add_u32 v199, s30, 4, v145
	.loc	1 641 25                        ; attention_backward.py:641:25
	s_mul_f32 s65, s31, 0x3fb8aa3b
	s_mov_b32 s7, 0
	s_mov_b32 s54, -1
	s_mov_b32 s38, s10
	s_mov_b32 s39, s11
	s_mov_b32 s40, s42
	s_mov_b32 s56, s46
	v_mov_b32_e32 v14, v25
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt vmcnt(0)
	ds_store_b64 v5, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_clause 0x1
	buffer_load_b128 v[27:30], v3, s[8:11], 0 offen
	buffer_load_b128 v[31:34], v13, s[8:11], 0 offen
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_lshlrev_b32_e32 v1, 1, v12
	v_lshlrev_b32_e32 v2, 1, v4
	v_cndmask_b32_e64 v3, 0x80000000, v6, s2
	v_cndmask_b32_e64 v4, 0x80000000, v8, s2
	v_cndmask_b32_e64 v6, 0x80000000, v10, s2
	v_mov_b32_e32 v10, v25
	v_cndmask_b32_e64 v5, 0x80000000, v9, s2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_mov_b32_e32 v9, 0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_mov_b32_e32 v12, v25
	v_cndmask_b32_e64 v8, 0x80000000, v11, s2
	s_clause 0x7
	buffer_load_u16 v73, v7, s[12:15], 0 offen
	buffer_load_u16 v74, v3, s[12:15], 0 offen
	buffer_load_u16 v75, v4, s[12:15], 0 offen
	buffer_load_u16 v76, v5, s[12:15], 0 offen
	buffer_load_u16 v77, v6, s[12:15], 0 offen
	buffer_load_u16 v78, v8, s[12:15], 0 offen
	buffer_load_u16 v79, v1, s[12:15], 0 offen
	buffer_load_u16 v80, v2, s[12:15], 0 offen
	v_mov_b32_e32 v5, v25
	v_dual_mov_b32 v11, v25 :: v_dual_and_b32 v48, 24, v46
	v_mov_b32_e32 v7, v25
	v_add_nc_u32_e32 v163, 0, v0
	v_dual_mov_b32 v3, v25 :: v_dual_lshlrev_b32 v0, 4, v47
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshl_or_b32 v47, v160, 5, v48
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v23, v25
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshlrev_b32_e32 v35, 4, v35
	v_cmp_eq_u32_e64 s0, 0, v44
	v_lshlrev_b32_e32 v44, 2, v44
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v26, 0, v47
	v_xad_u32 v36, v47, 8, 0
	v_xad_u32 v37, v47, 16, 0
	v_xad_u32 v38, v47, 24, 0
	v_or3_b32 v164, v50, v44, v45
	ds_load_b64 v[146:147], v26
	ds_load_b64 v[148:149], v36
	ds_load_b64 v[150:151], v37
	ds_load_b64 v[152:153], v38
	v_mov_b32_e32 v36, v25
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshl_or_b32 v35, v160, 7, v35
	v_and_or_b32 v46, v46, 30, v156
	v_xor_b32_e32 v41, 0x120, v164
	v_xor_b32_e32 v42, 0x1b0, v164
	v_xor_b32_e32 v44, 32, v174
	v_lshl_or_b32 v176, v45, 6, v35
	v_xor_b32_e32 v45, 48, v174
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v48, 16, v49
	v_lshlrev_b32_e32 v173, 2, v46
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_add_nc_u32_e32 v39, 0, v35
	v_add_nc_u32_e32 v178, 0, v41
	v_add_nc_u32_e32 v179, 0, v42
	v_add_nc_u32_e32 v181, 0, v44
	v_dual_mov_b32 v37, v25 :: v_dual_add_nc_u32 v182, 0, v45
	v_xor_b32_e32 v41, 32, v176
	v_xor_b32_e32 v42, 48, v176
	v_xor_b32_e32 v43, 64, v176
	v_xor_b32_e32 v44, 0x50, v176
	v_xor_b32_e32 v45, 0x60, v176
	.loc	1 590 24                        ; attention_backward.py:590:24
	v_med3_i32 v46, s3, 0, 0x800
	v_xor_b32_e32 v47, 0x70, v176
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v40, v35, 16, 0
	v_xad_u32 v50, v35, 32, 0
	v_xad_u32 v53, v35, 48, 0
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_sub_i32 s9, s33, s27
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v57, v35, 64, 0
	v_xad_u32 v61, 0x50, v35, 0
	v_xad_u32 v65, 0x60, v35, 0
	v_xad_u32 v69, 0x70, v35, 0
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s4, s28, v48
	.loc	1 589 24                        ; attention_backward.py:589:24
	s_max_i32 s3, s9, 0
	.loc	1 600 19                        ; attention_backward.py:600:19
	v_readfirstlane_b32 s9, v46
	v_add_nc_u32_e32 v184, 0, v41
	v_add_nc_u32_e32 v185, 0, v42
	v_add_nc_u32_e32 v186, 0, v43
	v_add_nc_u32_e32 v187, 0, v44
	v_add_nc_u32_e32 v188, 0, v45
	v_add_nc_u32_e32 v189, 0, v47
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xor_b32_e32 v35, 0x90, v164
	.loc	1 603 39                        ; attention_backward.py:603:39
	s_sub_i32 s8, s33, s55
	.loc	1 597 45                        ; attention_backward.py:597:45
	s_and_b32 s3, s3, 0x7fffffe0
	.loc	1 603 25                        ; attention_backward.py:603:25
	s_max_i32 s8, s8, 0
	.loc	1 600 19                        ; attention_backward.py:600:19
	s_add_i32 s9, s9, 31
	v_add_nc_u32_e32 v177, 0, v35
	v_xor_b32_e32 v35, 16, v176
	.loc	1 604 45                        ; attention_backward.py:604:45
	s_and_b32 s8, s8, 0x7fffffe0
	v_mad_u64_u32 v[154:155], null, s30, 24, v[145:146]
	.loc	1 604 24 is_stmt 0              ; attention_backward.py:604:24
	s_max_u32 s48, s3, s8
	.loc	1 600 17 is_stmt 1              ; attention_backward.py:600:17
	s_and_b32 s3, s9, 0x1fe0
	v_mov_b32_e32 v1, 0
	.loc	1 598 24                        ; attention_backward.py:598:24
	s_min_u32 s66, s3, 0x800
	v_mov_b32_e32 v2, v25
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v8, v25
	.loc	1 620 52                        ; attention_backward.py:620:52
	v_cmp_gt_i32_e64 s5, s29, v0
	v_add_nc_u32_e32 v183, 0, v35
	v_mov_b32_e32 v35, v25
	v_mov_b32_e32 v38, v25
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v155, v162, v160
	s_cmp_lt_u32 s48, s66
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt vmcnt(9)
	ds_store_b128 v175, v[27:30]
	s_waitcnt vmcnt(8)
	ds_store_b128 v175, v[31:34] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v39
	ds_load_b128 v[45:48], v40
	ds_load_b128 v[49:52], v50
	ds_load_b128 v[53:56], v53
	ds_load_b128 v[57:60], v57
	ds_load_b128 v[61:64], v61
	ds_load_b128 v[65:68], v65
	ds_load_b128 v[69:72], v69
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, v25
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v190, 16, v73
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v191, 16, v74
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v192, 16, v75
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v193, 16, v76
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v194, 16, v77
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v195, 16, v78
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v196, 16, v79
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v197, 16, v80
	v_mov_b32_e32 v39, v25
	v_mov_b32_e32 v40, v25
	v_xor_b32_e32 v198, 4, v173
	s_cselect_b32 s67, -1, 0
	s_and_b32 s37, s37, 0xffff
	s_and_b32 s41, s43, 0xffff
	s_and_b32 s57, s47, 0xffff
	s_and_b32 s61, s49, 0xffff
	s_and_b32 s45, s45, 0xffff
	s_branch .LBB0_2
.LBB0_1:                                ; %Flow171
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 29 is_stmt 0                ; attention_backward.py:0:29
	s_xor_b32 s3, s54, -1
	s_movk_i32 s7, 0x800
	.loc	1 605 9 is_stmt 1               ; attention_backward.py:605:9
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_mov_b32 s54, 0
	s_cbranch_vccz .LBB0_5
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_and_not1_b32 vcc_lo, exec_lo, s67
	s_cbranch_vccnz .LBB0_1
; %bb.3:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 613 25                        ; attention_backward.py:613:25
	s_or_b32 s49, s64, s7
	s_mov_b32 s68, s48
.LBB0_4:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 25 is_stmt 0                ; attention_backward.py:0:25
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 616 25 is_stmt 1              ; attention_backward.py:616:25
	s_add_i32 s3, s68, s49
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_mov_b32 s42, s38
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_or_b32_e32 v26, s3, v157
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s3, s3, s30
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_mov_b32 s43, s39
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v29, s3, v159, 1
	v_add_lshl_u32 v28, s3, v145, 1
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_mad_u64_u32 v[26:27], null, v26, s29, v[0:1]
	v_or_b32_e32 v27, s49, v157
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v31, 0x80000000, v29, s6
	v_add_lshl_u32 v29, s3, v199, 1
	v_cndmask_b32_e64 v28, 0x80000000, v28, s6
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s58, s38
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v27, v27, s68, 1
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v30, 0x80000000, v26, s5
	v_or_b32_e32 v26, s49, v155
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v32, 0x80000000, v29, s6
	v_add_lshl_u32 v29, s3, v154, 1
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s59, s39
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s62, s38
	.loc	1 624 25                        ; attention_backward.py:624:25
	v_add_nc_u32_e32 v26, s68, v26
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s63, s39
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v73, 0x80000000, v29, s6
	s_mov_b32 s46, s38
	s_mov_b32 s47, s39
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v29, 1, v26
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_lshlrev_b32_e32 v26, 2, v26
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v235, 0, v174
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_clause 0x1
	buffer_load_u16 v110, v27, s[40:43], 0 offen
	buffer_load_u16 v106, v29, s[40:43], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v105, v26, s[56:59], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v107, v26, s[60:63], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x3
	buffer_load_b128 v[26:29], v28, s[44:47], 0 offen
	buffer_load_b128 v[111:114], v31, s[44:47], 0 offen
	buffer_load_b128 v[115:118], v32, s[44:47], 0 offen
	buffer_load_b128 v[123:126], v73, s[44:47], 0 offen
	.loc	1 615 36                        ; attention_backward.py:615:36
	buffer_load_b128 v[119:122], v30, s[36:39], 0 offen
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_dual_mov_b32 v31, v25 :: v_dual_add_nc_u32 v30, 0, v161
	v_mov_b32_e32 v32, v25
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 651 43                        ; attention_backward.py:651:43
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(4)
	ds_store_b128 v30, v[26:29]
	s_waitcnt vmcnt(3)
	ds_store_b128 v30, v[111:114] offset:1024
	s_waitcnt vmcnt(2)
	ds_store_b128 v30, v[115:118] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v30, v[123:126] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16_hi v99, v165 offset:640
	ds_load_u16_d16_hi v100, v165 offset:896
	ds_load_u16_d16_hi v76, v165 offset:960
	ds_load_u16_d16_hi v75, v165 offset:704
	ds_load_u16_d16_hi v101, v165 offset:1152
	ds_load_u16_d16_hi v102, v165 offset:1408
	ds_load_u16_d16_hi v78, v165 offset:1472
	ds_load_u16_d16_hi v77, v165 offset:1216
	ds_load_u16_d16_hi v103, v165 offset:1664
	ds_load_u16_d16_hi v104, v165 offset:1920
	ds_load_u16_d16_hi v80, v165 offset:1984
	ds_load_u16_d16_hi v79, v165 offset:1728
	ds_load_u16_d16_hi v81, v165 offset:2176
	ds_load_u16_d16_hi v82, v165 offset:2432
	ds_load_u16_d16_hi v90, v165 offset:2496
	ds_load_u16_d16_hi v89, v165 offset:2240
	ds_load_u16_d16_hi v83, v165 offset:2688
	ds_load_u16_d16_hi v84, v165 offset:2944
	ds_load_u16_d16_hi v92, v165 offset:3008
	ds_load_u16_d16_hi v91, v165 offset:2752
	ds_load_u16_d16_hi v85, v165 offset:3200
	ds_load_u16_d16_hi v86, v165 offset:3456
	ds_load_u16_d16_hi v94, v165 offset:3520
	ds_load_u16_d16_hi v93, v165 offset:3264
	ds_load_u16_d16_hi v87, v165 offset:3712
	ds_load_u16_d16_hi v88, v165 offset:3968
	ds_load_u16_d16_hi v96, v165 offset:4032
	ds_load_u16_d16_hi v95, v165 offset:3776
	ds_load_u16_d16_hi v97, v165 offset:128
	ds_load_u16_d16_hi v98, v165 offset:384
	ds_load_u16_d16_hi v74, v165 offset:448
	ds_load_u16_d16_hi v73, v165 offset:192
	ds_load_u16_d16_hi v221, v165 offset:320
	ds_load_u16_d16_hi v230, v165 offset:256
	ds_load_u16_d16_hi v231, v165
	ds_load_u16_d16_hi v223, v165 offset:64
	ds_load_u16_d16_hi v219, v165 offset:832
	ds_load_u16_d16_hi v228, v165 offset:768
	ds_load_u16_d16_hi v229, v165 offset:512
	ds_load_u16_d16_hi v222, v165 offset:576
	ds_load_u16_d16_hi v217, v165 offset:1344
	ds_load_u16_d16_hi v226, v165 offset:1280
	ds_load_u16_d16_hi v227, v165 offset:1024
	ds_load_u16_d16_hi v220, v165 offset:1088
	ds_load_u16_d16_hi v216, v165 offset:1856
	ds_load_u16_d16_hi v224, v165 offset:1792
	ds_load_u16_d16_hi v225, v165 offset:1536
	ds_load_u16_d16_hi v218, v165 offset:1600
	ds_load_u16_d16_hi v205, v165 offset:2368
	ds_load_u16_d16_hi v214, v165 offset:2304
	ds_load_u16_d16_hi v215, v165 offset:2048
	ds_load_u16_d16_hi v207, v165 offset:2112
	ds_load_u16_d16_hi v203, v165 offset:2880
	ds_load_u16_d16_hi v212, v165 offset:2816
	ds_load_u16_d16_hi v213, v165 offset:2560
	ds_load_u16_d16_hi v206, v165 offset:2624
	ds_load_u16_d16_hi v201, v165 offset:3392
	ds_load_u16_d16_hi v210, v165 offset:3328
	ds_load_u16_d16_hi v211, v165 offset:3072
	ds_load_u16_d16_hi v204, v165 offset:3136
	ds_load_u16_d16_hi v200, v165 offset:3904
	ds_load_u16_d16_hi v208, v165 offset:3840
	ds_load_u16_d16_hi v209, v165 offset:3584
	ds_load_u16_d16_hi v202, v165 offset:3648
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v175, v[26:29]
	ds_store_b128 v175, v[111:114] offset:1024
	ds_store_b128 v175, v[115:118] offset:2048
	ds_store_b128 v175, v[123:126] offset:3072
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v26, v25
	v_mov_b32_e32 v27, v25
	v_mov_b32_e32 v28, v25
	v_mov_b32_e32 v29, v25
	v_mov_b32_e32 v30, v25
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_nc_u32_e32 v108, 0, v176
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v130, v32
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v129, v31
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[111:114], v108
	ds_load_b128 v[115:118], v183
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v128, v30 :: v_dual_mov_b32 v125, v27
	v_dual_mov_b32 v127, v29 :: v_dual_mov_b32 v126, v28
	v_dual_mov_b32 v123, v25 :: v_dual_mov_b32 v124, v26
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v106, 16, v106
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v136, 24, v120
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v76.l, v122.l, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e32 v78.l, v121.h
	v_mov_b16_e32 v79.l, v122.h
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v75.l, 4, v122.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v77.l, v122.h, 15
	.loc	1 640 41                        ; attention_backward.py:640:41
	v_mul_f32_e32 v106, s65, v106
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[123:130], v[41:48], v[111:118], v[123:130]
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[111:114], v184
	ds_load_b128 v[115:118], v185
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[123:130], v[49:56], v[111:118], v[123:130]
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[111:114], v186
	ds_load_b128 v[115:118], v187
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[123:130], v[57:64], v[111:118], v[123:130]
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[111:114], v188
	ds_load_b128 v[115:118], v189
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_wmma_f32_16x16x16_bf16 v[123:130], v[65:72], v[111:118], v[123:130]
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_bpermute_b32 v116, v173, v119
	ds_bpermute_b32 v117, v198, v119
	ds_bpermute_b32 v118, v173, v120
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v135, v123, v107
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_bpermute_b32 v123, v198, v120
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v114, v124, v107
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_bpermute_b32 v124, v198, v121
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v113, v125, v107
	v_sub_f32_e32 v112, v126, v107
	v_sub_f32_e32 v111, v127, v107
	v_sub_f32_e32 v109, v128, v107
	v_sub_f32_e32 v108, v129, v107
	v_sub_f32_e32 v107, v130, v107
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v115, v117, v116, s0
	v_cndmask_b32_e64 v117, v116, v117, s0
	s_waitcnt lgkmcnt(1)
	v_cndmask_b32_e64 v116, v123, v118, s0
	v_cndmask_b32_e64 v118, v118, v123, s0
	ds_bpermute_b32 v123, v173, v121
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v131, v124, v123, s0
	v_cndmask_b32_e64 v133, v123, v124, s0
	ds_bpermute_b32 v123, v173, v122
	ds_bpermute_b32 v124, v198, v122
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v132, v124, v123, s0
	v_cndmask_b32_e64 v134, v123, v124, s0
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_wmma_i32_16x16x16_iu4 v[123:130], v[146:147], v[115:116], v[25:32] neg_lo:[1,1,0]
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v26, s68, v155
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v28, v119, 0, 8
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s68, s68, 32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_wmma_i32_16x16x16_iu4 v[123:130], v[148:149], v[131:132], v[123:130] neg_lo:[1,1,0]
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v27, s55, v26
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v26, s27, v26
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s25, 0, v28.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_wmma_i32_16x16x16_iu4 v[123:130], v[150:151], v[117:118], v[123:130] neg_lo:[1,1,0]
	.loc	1 678 21                        ; attention_backward.py:678:21
	v_min_i32_e32 v26, v27, v26
	.loc	1 678 47 is_stmt 0              ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v27, s26, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 630 33 is_stmt 1              ; attention_backward.py:630:33
	v_wmma_i32_16x16x16_iu4 v[123:130], v[152:153], v[133:134], v[123:130] neg_lo:[1,1,0]
	.loc	1 678 21                        ; attention_backward.py:678:21
	v_cmp_ge_i32_e64 s20, v26, v158
	v_cmp_ge_i32_e64 s19, v26, v166
	v_cmp_ge_i32_e64 s17, v26, v167
	v_cmp_ge_i32_e64 s15, v26, v168
	v_cmp_ge_i32_e64 s13, v26, v169
	v_cmp_ge_i32_e64 s11, v26, v170
	v_cmp_ge_i32_e64 s9, v26, v171
	v_cmp_ge_i32_e64 s7, v26, v172
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v26.l, v119.l, 15
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v31, v125
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v125, v119, 16, 4
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v29, v123
	v_cvt_f32_i32_e32 v32, v126
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s21, 7, v26.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v26.l, v119.h, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v123, 15, v119
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v126, -16, v125
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v30, v124
	v_cvt_f32_i32_e32 v117, v129
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s22, 7, v26.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v26.l, v120.l, 15
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v124, -16, v123
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v129, v120, 16, 4
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v118, v130
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v125, v125, v126, s22
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s23, 7, v26.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v26.l, v120.h, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v126, 8, v119
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v130, -16, v129
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e64 v124, v123, v124, s21
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_bfe_u32 v123, v119, 8, 4
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s24, 7, v26.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v28.l, v126.l, 15
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v115, v127
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v127, 15, v120
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v133, -16, v123
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e64 v129, v129, v130, s24
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s21, 7, v28.l
	.loc	1 615 36 is_stmt 1              ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v130, 8, v120
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v116, v128
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v128, -16, v127
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s18, v158, v27
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v133, v123, v133, s21
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v123, v120, 8, 4
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v28.l, v130.l, 15
	.loc	1 650 33 is_stmt 1              ; attention_backward.py:650:33
	v_cndmask_b32_e64 v128, v127, v128, s23
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s16, v166, v27
	v_cmp_ge_i32_e64 s14, v167, v27
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v127, -16, v123
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s21, 7, v28.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v28.l, v136.l, 15
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s12, v168, v27
	v_cmp_ge_i32_e64 s10, v169, v27
	v_cmp_ge_i32_e64 s8, v170, v27
	v_cmp_ge_i32_e64 s3, v171, v27
	v_cmp_ge_i32_e32 vcc_lo, v172, v27
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b64 v[26:27], 24, v[119:120]
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v134, v123, v127, s21
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v123, v120, 24, 4
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s21, 7, v28.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_alignbit_b32 v28, v120, v119, 24
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v29, v106, v29
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v27.h, v26.l, 15
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v127, -16, v123
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v131, v26, 0, 8
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v28, 15, v28
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v27.l, 4, v26.l
	v_lshrrev_b16 v26.l, 4, v119.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v137, v123, v127, s21
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s21, 7, v27.h
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v123, -16, v28
	.loc	1 615 36 is_stmt 1              ; attention_backward.py:615:36
	v_mov_b16_e32 v26.h, 0
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v26.l, v26.l, 15
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v115, v106, v115
	v_mul_f32_e32 v31, v106, v31
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v127, v28, v123, s21
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e32 v28.l, v119.h
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v119, v119, 20, 4
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v132, -16, v26
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v27.h, 4, v126.l
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v30, v106, v30
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v28, v28, 0, 8
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v123, -16, v119
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v117, v106, v117
	v_mul_f32_e32 v32, v106, v32
	v_mul_f32_e32 v116, v106, v116
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s21, 0, v28.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e32 v28.l, v120.h
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v106, v106, v118
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v29, v29, v190, -v105
	v_fma_f32 v30, v30, v191, -v105
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v119, v119, v123, s21
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v28, v28, 0, 8
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v123, v120, 20, 4
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v31, v31, v192, -v105
	v_fma_f32 v115, v115, v194, -v105
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v119, v119
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s21, 0, v28.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v138, -16, v123
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v28, v124
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v116, v116, v195, -v105
	v_fma_f32 v117, v117, v196, -v105
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s18, s20, s18
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v138, v123, v138, s21
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v123, 16, v110
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v110, v26, v132, s25
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s18, s2, s18
	s_and_b32 s16, s19, s16
	s_and_b32 s14, s17, s14
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v28, v123, v28
	v_cvt_f32_i32_e32 v110, v110
	v_mul_f32_e32 v119, v123, v119
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s16, s2, s16
	s_and_b32 s14, s2, s14
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v124, 0, v28, s1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v110, v123, v110
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v28, v126, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v119, 0, v119, s1
	v_mov_b16_e32 v126.h, v26.h
	v_mov_b16_e32 v26.l, v124.h
	v_cndmask_b32_e64 v110, 0, v110, s1
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s21, 0, v28.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s22, v124, v124
	v_cmp_o_f32_e64 s24, v119, v119
	v_and_b32_e32 v132, 1, v26
	v_cmp_o_f32_e64 s23, v110, v110
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v26.l, v27.h, 15
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s12, s15, s12
	s_and_b32 s10, s13, s10
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v28, v124, v132, 0x7fff
	v_mov_b16_e32 v124.h, v26.h
	v_mov_b16_e32 v124.l, v110.h
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v139, -16, v26
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s12, s2, s12
	s_and_b32 s10, s2, s10
	s_and_b32 s8, s11, s8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v124, 1, v124
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s8, s2, s8
	s_and_b32 s7, s7, vcc_lo
	s_and_b32 s3, s9, s3
	s_and_b32 vcc_lo, s2, s7
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v110, v110, v124, 0x7fff
	v_mov_b16_e32 v124.h, v26.h
	v_mov_b16_e32 v124.l, v119.h
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s3, s2, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v234, 0, v164
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v104.l, v26.h
	v_mov_b16_e32 v100.l, v26.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v124, 1, v124
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v88.l, v26.h
	v_mov_b16_e32 v84.l, v26.h
	v_mov_b16_e32 v102.l, v26.h
	v_mov_b16_e32 v89.l, v26.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v119, v119, v124, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v124, v138
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v138, v122, 24, 4
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v97.l, v26.h
	v_mov_b16_e32 v98.l, v26.h
	v_mov_b16_e32 v99.l, v26.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v124, v123, v124
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v101.l, v26.h
	v_mov_b16_e32 v103.l, v26.h
	v_mov_b16_e32 v81.l, v26.h
	v_mov_b16_e32 v82.l, v26.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v124, 0, v124, s1
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v83.l, v26.h
	v_mov_b16_e32 v85.l, v26.h
	v_mov_b16_e32 v86.l, v26.h
	v_mov_b16_e32 v87.l, v26.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v126.l, v124.h
	v_cmp_o_f32_e64 s25, v124, v124
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v80.l, v26.h
	v_mov_b16_e32 v96.l, v26.h
	v_mov_b16_e32 v90.l, v26.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v126, 1, v126
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v91.l, v26.h
	v_mov_b16_e32 v92.l, v26.h
	v_mov_b16_e32 v93.l, v26.h
	v_mov_b16_e32 v94.l, v26.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v132, v124, v126, 0x7fff
	v_cndmask_b16 v124.l, 0x7fff, v28.h, s22
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v28, v133
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v124.h, 0x7fff, v110.h, s23
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v110, v26, v139, s21
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v126.h, 0x7fff, v119.h, s24
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v133, v32, v193, -v105
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v28, v123, v28
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v105, v106, v197, -v105
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v95.l, v26.h
	v_mov_b16_e64 v231.l, v26.h
	v_mov_b16_e64 v229.l, v26.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v28, 0, v28, s1
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v227.l, v26.h
	v_mov_b16_e64 v225.l, v26.h
	v_mov_b16_e64 v230.l, v26.h
	v_mov_b16_e64 v223.l, v26.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v26.l, v28.h
	v_cmp_o_f32_e64 s22, v28, v28
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v228.l, v26.h
	v_mov_b16_e64 v222.l, v26.h
	v_mov_b16_e64 v226.l, v26.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v118, 1, v26
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v220.l, v26.h
	v_mov_b16_e64 v224.l, v26.h
	v_mov_b16_e64 v218.l, v26.h
	v_mov_b16_e64 v215.l, v26.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v28, v28, v118, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v118, v125
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v221.l, v26.h
	v_mov_b16_e64 v219.l, v26.h
	v_mov_b16_e64 v217.l, v26.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v125.l, 0x7fff, v28.h, s22
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v118, v123, v118
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v216.l, v26.h
	v_mov_b16_e64 v212.l, v26.h
	v_mov_b16_e64 v208.l, v26.h
	v_mov_b16_e64 v213.l, v26.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v118, 0, v118, s1
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v211.l, v26.h
	v_mov_b16_e64 v214.l, v26.h
	v_mov_b16_e64 v209.l, v26.h
	v_mov_b16_e64 v210.l, v26.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v26.l, v118.h
	v_cmp_o_f32_e64 s21, v118, v118
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v207.l, v26.h
	v_mov_b16_e64 v205.l, v26.h
	v_mov_b16_e64 v203.l, v26.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v119, 1, v26
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v26.l, v27.l, 15
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v204.l, v26.h
	v_mov_b16_e64 v201.l, v26.h
	v_mov_b16_e64 v200.l, v26.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v27, v118, v119, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v27.l, v131.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v32, -16, v26
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v206.l, v26.h
	v_mov_b16_e64 v202.l, v26.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v126.l, 0x7fff, v27.h, s21
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s23, 0, v27.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v27, v127
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_u32 s68, s66
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v106, v26, v32, s23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v27, v123, v27
	v_cvt_f32_i32_e32 v106, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v28, 0, v27, s1
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v27.l, 4, v120.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v106, v123, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v26.l, v28.h
	v_cmp_o_f32_e64 s22, v28, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v106, 0, v106, s1
	v_and_b32_e32 v32, 1, v26
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v26.l, v27.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v27, v110
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v110.h, v26.h
	v_cmp_o_f32_e64 s11, v106, v106
	v_add3_u32 v28, v28, v32, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v32, v120, 0, 8
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v27, v123, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v127.l, 0x7fff, v28.h, s22
	v_cndmask_b32_e64 v27, 0, v27, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v110.l, v27.h
	v_cmp_o_f32_e64 s21, v27, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v110, 1, v110
	v_add3_u32 v27, v27, v110, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v27.l, v32.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v32, -16, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b16 v125.h, 0x7fff, v27.h, s21
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s23, 0, v27.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v27, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v118, v26, v32, s23
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v27, v123, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v110, 0, v27, s1
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v27.l, 4, v130.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v26.l, v110.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s9, v110, v110
	v_and_b32_e32 v119, 1, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v26.l, v27.l, 15
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v27, v29
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v110, v110, v119, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v128.l, 0x7fff, v110.h, s9
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v232, 0, v27, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v27, v232, v135
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v135, v122, 8, 4
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v27, s31, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v28, v27, 16, 1
	v_cmp_o_f32_e64 s18, v27, v27
	v_add3_u32 v120, v27, v28, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v27, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v32, 0, v27, s16
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v27, v32, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v27, s31, v27
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v28, v27, 16, 1
	v_cmp_o_f32_e64 s16, v27, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v114, v27, v28, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v27, v31
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v27, 0, v27, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v28, v27, v113
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v28, s31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v29, v28, 16, 1
	v_cmp_o_f32_e64 s14, v28, v28
	v_add3_u32 v113, v28, v29, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v28, v133
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v133, 24, v122
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v28, 0, v28, s12
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v29, v28, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v29, s31, v29
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v30, v29, 16, 1
	v_cmp_o_f32_e64 s12, v29, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_add3_u32 v112, v29, v30, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v29, v115
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v115.h, v26.h
	v_mov_b16_e32 v115.l, v106.h
	v_and_b32_e32 v115, 1, v115
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v233, 0, v29, s10
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v106, v106, v115, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v29, v233, v111
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v127.h, 0x7fff, v106.h, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v29, s31, v29
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v30, v29, 16, 1
	v_cmp_o_f32_e64 s10, v29, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v111, v29, v30, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v29, v116
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v74.l, 0x7fff, v111.h, s10
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v234, v74 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v29, 0, v29, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v30, v29, v109
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v30, s31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v31, v30, 16, 1
	v_cmp_o_f32_e64 s8, v30, v30
	v_add3_u32 v109, v30, v31, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v30, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v74.l, 0x7fff, v109.h, s8
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v30, 0, v30, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v31, v30, v108
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s10, v30, v30
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v31, s31, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v108, v31, 16, 1
	v_cmp_o_f32_e64 s3, v31, v31
	v_add3_u32 v108, v31, v108, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v31, v105
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v31, 0, v31, vcc_lo
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v105, v31, v107
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s11, v31, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v105, s31, v105
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v107, v105, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v105, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v105, v105, v107, 0x7fff
	.loc	1 615 36 is_stmt 1              ; attention_backward.py:615:36
	v_bfe_i32 v107, v130, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v130.h, 0x7fff, v132.h, s25
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v132, 8, v122
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v73.l, v107.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v107, -16, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s7, 0, v73.l
	.loc	1 721 37 is_stmt 1              ; attention_backward.py:721:37
	v_cndmask_b16 v73.l, 0x7fff, v120.h, s18
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v106, v26, v107, s7
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v234, v73
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v73.l, 0x7fff, v114.h, s16
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v177, v73
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v73.l, 0x7fff, v113.h, s14
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v177, v74 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v74.l, 0x7fff, v108.h, s3
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v108.h, v26.h
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v178, v73
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v73.l, 0x7fff, v112.h, s12
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v178, v74 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v74.l, 0x7fff, v105.h, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v105, v134
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v179, v73
	ds_store_b16 v179, v74 offset:512
	s_waitcnt lgkmcnt(0)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v105, v123, v105
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_barrier
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v74.l, 4, v121.l
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v134, 15, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v105, 0, v105, s1
	v_mov_b16_e32 v26.l, v105.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v105, v105
	v_and_b32_e32 v107, 1, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v105, v105, v107, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v107, v118
	v_mul_f32_e32 v107, v123, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v107, 0, v107, s1
	v_mov_b16_e32 v108.l, v107.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v107, v107
	v_and_b32_e32 v108, 1, v108
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v107, v107, v108, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v108, v129
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v129.l, 0x7fff, v105.h, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v105, v106
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v106.h, v26.h
	v_cndmask_b16 v128.h, 0x7fff, v107.h, s3
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v108, v123, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v105, v123, v105
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v108, 0, v108, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v105, 0, v105, s1
	v_mov_b16_e32 v26.l, v108.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s7, v108, v108
	v_mov_b16_e32 v106.l, v105.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e32 vcc_lo, v105, v105
	v_and_b32_e32 v109, 1, v26
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v26.l, 4, v136.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v106, 1, v106
	v_add3_u32 v108, v108, v109, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v109, v136, 0, 8
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v105, v105, v106, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v106, v137
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v136, v122, 20, 4
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v130.l, 0x7fff, v108.h, s7
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v73.l, v109.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v109, -16, v26
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_mul_f32_e32 v106, v123, v106
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v129.h, 0x7fff, v105.h, vcc_lo
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v137, v122, 16, 4
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s8, 0, v73.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v73.l, v121.h, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v106, 0, v106, s1
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s7, 7, v76.l
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v141, -16, v137
	.loc	1 651 34 is_stmt 1              ; attention_backward.py:651:34
	v_cndmask_b32_e64 v107, v26, v109, s8
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s8, 7, v77.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v26.l, v106.h
	v_cmp_o_f32_e64 s3, v106, v106
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v77.l, v26.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v105, v107
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v137, v137, v141, s8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v108, 1, v26
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v26.l, v121.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v105, v123, v105
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v106, v106, v108, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v105, 0, v105, s1
	v_cndmask_b16 v131.l, 0x7fff, v106.h, s3
	v_mov_b16_e32 v106.h, v26.h
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s3, 7, v73.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v106.l, v105.h
	v_cmp_o_f32_e32 vcc_lo, v105, v105
	v_and_b32_e32 v106, 1, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v105, v105, v106, 0x7fff
	v_cndmask_b16 v131.h, 0x7fff, v105.h, vcc_lo
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_load_b128 v[113:116], v235
	ds_load_b128 v[117:120], v180
	ds_load_b128 v[105:108], v181
	ds_load_b128 v[109:112], v182
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v163, v[124:127]
	ds_store_b128 v163, v[128:131] offset:16
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v124, 15, v121
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v125, 8, v121
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v126, v121, 16, 4
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v127, v121, 0, 8
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v128, v121, 8, 4
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_alignbit_b32 v129, v122, v121, 24
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v130, v121, 20, 4
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v131, v122, 0, 8
	v_lshrrev_b64 v[121:122], 24, v[121:122]
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v122, -16, v124
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v26.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v76.l, v125.l, 15
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v139, -16, v126
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v142, v121, 0, 8
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v73.l, 4, v121.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v26.l, v121.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v121, v124, v122, vcc_lo
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v124, -16, v128
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v76.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v76.l, v132.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v122, v126, v139, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v128, v128, v124, vcc_lo
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v124, -16, v135
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v76.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v76.l, v133.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v122, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v135, v135, v124, vcc_lo
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v124, -16, v138
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v76.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_mul_f32_e32 v122, v123, v122
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v76.l, v26.h
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v138, v138, v124, vcc_lo
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v124, 15, v129
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v26.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v121, v121
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v122, 0, v122, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v126, -16, v124
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v121, v123, v121
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v140, -16, v134
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v129, v124, v126, vcc_lo
	.loc	1 615 36 is_stmt 1              ; attention_backward.py:615:36
	v_bfe_i32 v124, v78, 0, 8
	v_bfe_i32 v126, v79, 0, 8
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v134, v134, v140, s7
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v121, 0, v121, s4
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v78.l, v26.h
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v26.l, v124.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v124, -16, v130
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v79.l, v26.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v26.l
	v_mov_b16_e32 v26.l, v126.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v126, -16, v136
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v124, v130, v124, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v26.l
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_mov_b16_e64 v130.h, v26.h
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v26.l, v74.l, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v74.l, v127.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v124, v124
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v126, v136, v126, vcc_lo
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v136.h, v26.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s7, 0, v74.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v124, v123, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v126, v126
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v74.l, 4, v125.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v125, v125, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v124, 0, v124, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v126, v123, v126
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v130.l, v124.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v126, 0, v126, s4
	v_cmp_o_f32_e32 vcc_lo, v124, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v130, 1, v130
	v_cmp_o_f32_e64 s3, v126, v126
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v124, v124, v130, 0x7fff
	v_mov_b16_e64 v130.h, v26.h
	v_mov_b16_e64 v130.l, v126.h
	v_and_b32_e32 v130, 1, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v130, v126, v130, 0x7fff
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v126, -16, v26
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v130.h, 0x7fff, v130.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v127, v26, v126, s7
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v26.l, v121.h
	v_cmp_o_f32_e64 s7, v121, v121
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v127, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v126, 1, v26
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v26.l, v74.l, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v74.l, v125.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v127, v123, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v121, v121, v126, 0x7fff
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v125, -16, v26
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s8, 0, v74.l
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b16 v126.h, 0x7fff, v124.h, vcc_lo
	v_cndmask_b32_e64 v127, 0, v127, s4
	v_cndmask_b16 v124.l, 0x7fff, v121.h, s7
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v121, v128
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v128, v26, v125, s8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s8, v122, v122
	v_mov_b16_e64 v136.l, v127.h
	v_cmp_o_f32_e64 s7, v127, v127
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v121, v123, v121
	v_cvt_f32_i32_e32 v128, v128
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v74.l, v26.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v136, 1, v136
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v121, 0, v121, s4
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v128, v123, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v127, v127, v136, 0x7fff
	v_mov_b16_e32 v26.l, v121.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e32 vcc_lo, v121, v121
	v_cndmask_b32_e64 v128, 0, v128, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v124.h, 0x7fff, v127.h, s7
	v_and_b32_e32 v125, 1, v26
	v_mov_b16_e32 v26.l, v122.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v121, v121, v125, 0x7fff
	v_and_b32_e32 v125, 1, v26
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v26.l, v73.l, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v73.l, v142.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v122, v122, v125, 0x7fff
	v_cndmask_b16 v125.l, 0x7fff, v121.h, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v121, v129
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v136, -16, v26
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s9, 0, v73.l
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b16 v126.l, 0x7fff, v122.h, s8
	v_mov_b16_e64 v129.h, v26.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v121, v123, v121
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v129.l, v128.h
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v122, v26, v136, s9
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_mov_b16_e64 v73.l, v131.l
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v128, v128
	v_cndmask_b32_e64 v121, 0, v121, s4
	v_and_b32_e32 v129, 1, v129
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v122, v122
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s8, 0, v73.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v73.l, 4, v132.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v26.l, v121.h
	v_cmp_o_f32_e64 s7, v121, v121
	v_add3_u32 v128, v128, v129, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v122, v123, v122
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v131, v132, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v127, 1, v26
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v26.l, v75.l, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v125.h, 0x7fff, v128.h, vcc_lo
	v_cndmask_b32_e64 v122, 0, v122, s4
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s9, v28, v28
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v121, v121, v127, 0x7fff
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v129, -16, v26
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v75.l, v26.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v127.l, 0x7fff, v121.h, s7
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v121, v134
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v129, v26, v129, s8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s8, v122, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v121, v123, v121
	v_cvt_f32_i32_e32 v129, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v121, 0, v121, s4
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v129, v123, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v26.l, v121.h
	v_cmp_o_f32_e64 s7, v121, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v129, 0, v129, s4
	v_and_b32_e32 v128, 1, v26
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v26.l, v73.l, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v73.l, v131.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v121, v121, v128, 0x7fff
	v_mov_b16_e64 v128.h, v26.h
	v_mov_b16_e64 v128.l, v122.h
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v131, -16, v26
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v73.l
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_and_b32_e32 v128, 1, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v122, v122, v128, 0x7fff
	v_cndmask_b16 v128.l, 0x7fff, v121.h, s7
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v121, v135
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v127.h, 0x7fff, v122.h, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_dual_cndmask_b32 v122, v26, v131 :: v_dual_mul_f32 v121, v123, v121
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v129, v129
	v_cndmask_b32_e64 v121, 0, v121, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v26.l, v121.h
	v_cmp_o_f32_e64 s3, v121, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v131, 1, v26
	v_add3_u32 v121, v121, v131, 0x7fff
	v_mov_b16_e64 v131.h, v26.h
	v_mov_b16_e64 v131.l, v129.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v131, 1, v131
	v_add3_u32 v129, v129, v131, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v131, v137
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v129.l, 0x7fff, v121.h, s3
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v121, v122
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v122.h, v26.h
	v_cndmask_b16 v128.h, 0x7fff, v129.h, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v131, v123, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v121, v123, v121
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v131, 0, v131, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v121, 0, v121, s4
	v_mov_b16_e64 v26.l, v131.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s7, v131, v131
	v_mov_b16_e32 v122.l, v121.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e32 vcc_lo, v121, v121
	v_and_b32_e32 v132, 1, v26
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v26.l, 4, v133.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v122, 1, v122
	v_add3_u32 v131, v131, v132, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v132, v133, 0, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v121, v121, v122, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v122, v138
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v130.l, 0x7fff, v131.h, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v73.l, v132.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v132, -16, v26
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_mul_f32_e32 v122, v123, v122
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v129.h, 0x7fff, v121.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s7, v32, v32
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s8, 0, v73.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v73.l, v26.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v122, 0, v122, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v131, v26, v132, s8
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s8, v29, v29
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v26.l, v122.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v122, v122
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v131, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v123, v123, v131 :: v_dual_and_b32 v132, 1, v26
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v122, v122, v132, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v121, 0, v123, s4
	v_cndmask_b16 v131.l, 0x7fff, v122.h, s3
	v_mov_b16_e32 v122.h, v26.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s3, v233, v233
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v122.l, v121.h
	v_cmp_o_f32_e32 vcc_lo, v121, v121
	v_and_b32_e32 v122, 1, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v121, v121, v122, 0x7fff
	v_cndmask_b16 v131.h, 0x7fff, v121.h, vcc_lo
	ds_store_b128 v163, v[124:127] offset:32
	ds_store_b128 v163, v[128:131] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v237, v165 offset:256
	ds_load_u16_d16 v236, v165
	ds_load_u16_d16 v238, v165 offset:512
	ds_load_u16_d16 v239, v165 offset:768
	ds_load_u16_d16 v240, v165 offset:1024
	ds_load_u16_d16 v242, v165 offset:1536
	ds_load_u16_d16 v243, v165 offset:1792
	ds_load_u16_d16 v241, v165 offset:1280
	ds_load_u16_d16 v125, v165 offset:1088
	ds_load_u16_d16 v124, v165 offset:832
	ds_load_u16_d16 v133, v165 offset:3072
	ds_load_u16_d16 v139, v165 offset:2624
	ds_load_u16_d16 v138, v165 offset:2368
	ds_load_u16_d16 v129, v165 offset:2048
	ds_load_u16_d16 v130, v165 offset:2304
	ds_load_u16_d16 v131, v165 offset:2560
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v125, v165 offset:1216
	ds_load_u16_d16_hi v241, v165 offset:1408
	ds_load_u16_d16_hi v238, v165 offset:640
	ds_load_u16_d16_hi v239, v165 offset:896
	ds_load_u16_d16_hi v240, v165 offset:1152
	ds_load_u16_d16 v126, v165 offset:1344
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v139, v165 offset:2752
	ds_load_u16_d16_hi v242, v165 offset:1664
	ds_load_u16_d16 v121, v165 offset:64
	ds_load_u16_d16_hi v237, v165 offset:384
	ds_load_u16_d16_hi v236, v165 offset:128
	ds_load_u16_d16 v123, v165 offset:576
	ds_load_u16_d16 v122, v165 offset:320
	ds_load_u16_d16_hi v243, v165 offset:1920
	ds_load_u16_d16 v127, v165 offset:1600
	ds_load_u16_d16 v137, v165 offset:2112
	ds_load_u16_d16 v128, v165 offset:1856
	ds_load_u16_d16_hi v124, v165 offset:960
	ds_load_u16_d16 v144, v165 offset:3904
	ds_load_u16_d16 v132, v165 offset:2816
	ds_load_u16_d16 v143, v165 offset:3648
	ds_load_u16_d16 v142, v165 offset:3392
	ds_load_u16_d16 v135, v165 offset:3584
	ds_load_u16_d16 v136, v165 offset:3840
	ds_load_u16_d16 v141, v165 offset:3136
	ds_load_u16_d16 v140, v165 offset:2880
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v138, v165 offset:2496
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v126, v165 offset:1472
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v127, v165 offset:1728
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v128, v165 offset:1984
	ds_load_u16_d16_hi v129, v165 offset:2176
	ds_load_u16_d16_hi v137, v165 offset:2240
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v144, v165 offset:4032
	ds_load_u16_d16 v134, v165 offset:3328
	ds_load_u16_d16_hi v131, v165 offset:2688
	ds_load_u16_d16_hi v130, v165 offset:2432
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v132, v165 offset:2944
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v135, v165 offset:3712
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v136, v165 offset:3968
	ds_load_u16_d16_hi v133, v165 offset:3200
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v140, v165 offset:3008
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v134, v165 offset:3456
	ds_load_u16_d16_hi v141, v165 offset:3264
	ds_load_u16_d16_hi v143, v165 offset:3776
	ds_load_u16_d16_hi v142, v165 offset:3520
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[17:24], v[236:243], v[113:120], v[17:24]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v232, v232
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[129:136], v[105:112], v[17:24]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v135, v84, v84
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_load_u16_d16_hi v121, v165 offset:192
	ds_load_u16_d16_hi v123, v165 offset:704
	ds_load_u16_d16_hi v122, v165 offset:448
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v130, v97, v97
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v97.l, v231.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v131, v88, v88
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v88.l, v208.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v132, v87, v87
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v87.l, v209.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v134, v85, v85
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v85.l, v211.h
	v_mov_b16_e64 v84.l, v212.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v136, v83, v83
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v83.l, v213.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v129, v98, v98
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v98.l, v230.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v133, v86, v86
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v86.l, v210.h
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[33:40], v[121:128], v[113:120], v[33:40]
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v122.l, v26.h
	v_mov_b16_e32 v123.l, v26.h
	v_mov_b16_e32 v121.l, v26.h
	v_mov_b16_e32 v124.l, v26.h
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[33:40], v[137:144], v[105:112], v[33:40]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v105, v232, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v125.l, v26.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v137, v82, v82
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v82.l, v214.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v138, v81, v81 :: v_dual_sub_f32 v139, v96, v96
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v105, v232, v105, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v105.l, v26.h
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v81.l, v215.h
	v_mov_b16_e64 v96.l, v200.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v140, v95, v95
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v105.h, 0x7fff, v105.h, vcc_lo
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v95.l, v202.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v142, v93, v93
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v93.l, v204.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v144, v91, v91
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v106, v232, v105
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v91.l, v206.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v141, v94, v94
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v94.l, v201.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v143, v92, v92
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v107, v106, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v106, v106
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v92.l, v203.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v232, v90, v90
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v90.l, v205.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v106, v106, v107, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v107, v233, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v26.l, 0x7fff, v106.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v107, v233, v107, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v107.l, v26.h
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v107.h, 0x7fff, v107.h, s3
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v234, v105
	ds_store_b16_d16_hi v234, v107 offset:512
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v108, v233, v107
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v105, v29, 16, 1
	v_bfe_u32 v107, v28, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v233, v89, v89
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v89.l, v207.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v109, v108, 16, 1
	v_cmp_o_f32_e64 s3, v108, v108
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v105, v29, v105, 0x7fff
	v_add3_u32 v107, v28, v107, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v108, v108, v109, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v109, v32, 16, 1
	v_cndmask_b16 v121.h, 0x7fff, v105.h, s8
	v_bfe_u32 v105, v27, 16, 1
	v_cmp_o_f32_e64 s8, v27, v27
	v_cndmask_b16 v123.h, 0x7fff, v107.h, s9
	v_add3_u32 v109, v32, v109, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v109.l, v26.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v105, v27, v105, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v29, v29, v121 :: v_dual_sub_f32 v28, v28, v123
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v109.h, 0x7fff, v109.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v122.h, 0x7fff, v105.h, s8
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v32, v32, v109
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v177, v109
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v27, v27, v122
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v109, v30, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v110, v32, 16, 1
	v_cmp_o_f32_e64 s7, v32, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v109, v30, v109, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v32, v32, v110, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v110, v31, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v32.l, 0x7fff, v108.h, s3
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v124.h, 0x7fff, v109.h, s10
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s3, v28, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v110, v31, v110, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v30, v30, v124
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v125.h, 0x7fff, v110.h, s11
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v177, v121 offset:512
	ds_store_b16_d16_hi v178, v122
	ds_store_b16_d16_hi v178, v124 offset:512
	ds_store_b16_d16_hi v179, v123
	ds_store_b16_d16_hi v179, v125 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[113:116], v235
	ds_load_b128 v[117:120], v180
	ds_load_b128 v[105:108], v181
	ds_load_b128 v[109:112], v182
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v234, v26
	ds_store_b16 v234, v32 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v26.l, 0x7fff, v32.h, s7
	v_bfe_u32 v32, v27, 16, 1
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v31, v31, v125
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s7, v29, v29
	v_cmp_o_f32_e64 s8, v30, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v27, v27, v32, 0x7fff
	v_bfe_u32 v32, v28, 16, 1
	v_cmp_o_f32_e64 s9, v31, v31
	v_add3_u32 v28, v28, v32, 0x7fff
	v_bfe_u32 v32, v29, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v29, v29, v32, 0x7fff
	v_bfe_u32 v32, v30, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v29.h, s7
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v30, v30, v32, 0x7fff
	v_bfe_u32 v32, v31, 16, 1
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	ds_store_b16 v177, v26
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v26.l, 0x7fff, v27.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v177, v27 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v27.l, 0x7fff, v30.h, s8
	v_add3_u32 v31, v31, v32, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v29, v102, v102
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v178, v26
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v26.l, 0x7fff, v28.h, s3
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v178, v27 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v27.l, 0x7fff, v31.h, s9
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v179, v26
	ds_store_b16 v179, v27 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[121:124], v235
	ds_load_b128 v[125:128], v180
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v104, v104
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v104.l, v224.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v28, v103, v103
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v103.l, v225.h
	v_mov_b16_e64 v102.l, v226.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v30, v101, v101
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v101.l, v227.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v31, v100, v100
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v100.l, v228.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v32, v99, v99
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v99.l, v229.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[97:104], v[113:120], v[1:8]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[81:88], v[105:112], v[1:8]
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[97:104], v[121:128], v[1:8]
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
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v26.l, v130.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[73:80], v[113:120], v[9:16]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[89:96], v[105:112], v[9:16]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[73:80], v[121:128], v[9:16]
	ds_load_b128 v[73:76], v181
	ds_load_b128 v[77:80], v182
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[81:88], v[73:80], v[1:8]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[89:96], v[73:80], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v73, v231, v231
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e32 v74.h, v26.h
	v_mov_b16_e32 v79.h, v26.h
	v_mov_b16_e32 v75.h, v26.h
	v_mov_b16_e32 v76.h, v26.h
	v_mov_b16_e32 v74.l, v73.h
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_mov_b16_e32 v81.h, v26.h
	v_mov_b16_e32 v77.h, v26.h
	v_mov_b16_e32 v78.h, v26.h
	v_and_b32_e32 v74, 1, v74
	v_mov_b16_e32 v80.h, v26.h
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
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s7, v75, v75
	v_cmp_o_f32_e64 s3, v129, v129
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
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
	v_and_b32_e32 v81, 1, v26
	v_mov_b16_e64 v26.l, v129.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v80.l, 0x7fff, v80.h, s12
	v_add3_u32 v81, v130, v81, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v82, 1, v26
	v_mov_b16_e32 v26.l, v32.h
	v_cndmask_b16 v73.h, 0x7fff, v81.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v82, v129, v82, 0x7fff
	v_and_b32_e32 v81, 1, v26
	v_mov_b16_e32 v26.l, v31.h
	v_cmp_o_f32_e32 vcc_lo, v32, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v74.h, 0x7fff, v82.h, s3
	v_add3_u32 v32, v32, v81, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v81, 1, v26
	v_cmp_o_f32_e64 s3, v31, v31
	v_mov_b16_e32 v26.l, v30.h
	v_cndmask_b16 v75.h, 0x7fff, v32.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v31, v31, v81, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_mov_b16_e32 v32.h, v26.h
	v_cndmask_b16 v76.h, 0x7fff, v31.h, s3
	v_and_b32_e32 v31, 1, v26
	v_mov_b16_e32 v26.l, v29.h
	v_cmp_o_f32_e64 s3, v29, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v30, v30, v31, 0x7fff
	v_and_b32_e32 v31, 1, v26
	v_mov_b16_e32 v26.l, v28.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v77.h, 0x7fff, v30.h, vcc_lo
	v_add3_u32 v29, v29, v31, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v28, v28
	v_mov_b16_e32 v30.h, v26.h
	v_mov_b16_e32 v31.h, v26.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b16 v78.h, 0x7fff, v29.h, s3
	v_and_b32_e32 v29, 1, v26
	v_mov_b16_e32 v26.l, v27.h
	v_cmp_o_f32_e64 s3, v27, v27
	v_add3_u32 v28, v28, v29, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v29, 1, v26
	v_mov_b16_e64 v26.l, v138.h
	v_cndmask_b16 v79.h, 0x7fff, v28.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v27, v27, v29, 0x7fff
	v_mov_b16_e32 v28.h, v26.h
	v_mov_b16_e32 v29.h, v26.h
	v_cndmask_b16 v80.h, 0x7fff, v27.h, s3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v223, v223
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[73:80], v[113:120], v[1:8]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v28.l, v27.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_mov_b16_e32 v73.h, v26.h
	v_mov_b16_e32 v74.h, v26.h
	v_mov_b16_e32 v75.h, v26.h
	v_and_b32_e32 v28, 1, v28
	v_add3_u32 v27, v27, v28, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v28, v221, v221
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v29.l, v28.h
	v_cmp_o_f32_e64 s3, v28, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v29, 1, v29
	v_add3_u32 v28, v28, v29, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v29, v222, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v30.l, v29.h
	v_cmp_o_f32_e64 s7, v29, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v30, 1, v30
	v_add3_u32 v29, v29, v30, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v30, v219, v219
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v31.l, v30.h
	v_cmp_o_f32_e64 s8, v30, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v31, 1, v31
	v_add3_u32 v30, v30, v31, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v31, v220, v220
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v76.l, 0x7fff, v30.h, s8
	v_mov_b16_e32 v32.l, v31.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s9, v31, v31
	v_and_b32_e32 v32, 1, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v31, v31, v32, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v32, v217, v217
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v77.l, 0x7fff, v31.h, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v73.l, v32.h
	v_cmp_o_f32_e64 s10, v32, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v32, v32, v73, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v73, v218, v218
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v78.l, 0x7fff, v32.h, s10
	v_mov_b16_e32 v74.l, v73.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s11, v73, v73
	v_and_b32_e32 v74, 1, v74
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v73, v73, v74, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v74, v216, v216
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v73.l, 0x7fff, v27.h, vcc_lo
	v_and_b32_e32 v27, 1, v26
	v_mov_b16_e64 v26.l, v137.h
	v_cmp_o_f32_e32 vcc_lo, v104, v104
	v_mov_b16_e32 v75.l, v74.h
	v_cmp_o_f32_e64 s12, v74, v74
	v_cndmask_b16 v79.l, 0x7fff, v73.h, s11
	v_add3_u32 v27, v138, v27, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v75, 1, v75
	v_add3_u32 v74, v74, v75, 0x7fff
	v_cndmask_b16 v74.l, 0x7fff, v28.h, s3
	v_and_b32_e32 v28, 1, v26
	v_mov_b16_e64 v26.l, v136.h
	v_cndmask_b16 v75.l, 0x7fff, v29.h, s7
	v_cmp_o_f32_e64 s3, v103, v103
	v_cndmask_b16 v80.l, 0x7fff, v74.h, s12
	v_add3_u32 v28, v137, v28, 0x7fff
	v_and_b32_e32 v29, 1, v26
	v_mov_b16_e64 v26.l, v135.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v30, 1, v26
	v_mov_b16_e64 v26.l, v134.h
	v_and_b32_e32 v31, 1, v26
	v_mov_b16_e64 v26.l, v133.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v32, 1, v26
	v_mov_b16_e64 v26.l, v132.h
	v_and_b32_e32 v81, 1, v26
	v_mov_b16_e64 v26.l, v131.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v82, 1, v26
	v_mov_b16_e32 v26.l, v104.h
	v_and_b32_e32 v83, 1, v26
	v_mov_b16_e32 v26.l, v103.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v83, v104, v83, 0x7fff
	v_and_b32_e32 v84, 1, v26
	v_mov_b16_e32 v26.l, v102.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v73.h, 0x7fff, v83.h, vcc_lo
	v_add3_u32 v84, v103, v84, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v83, 1, v26
	v_mov_b16_e32 v26.l, v101.h
	v_cmp_o_f32_e32 vcc_lo, v102, v102
	v_cndmask_b16 v74.h, 0x7fff, v84.h, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v83, v102, v83, 0x7fff
	v_and_b32_e32 v84, 1, v26
	v_mov_b16_e32 v26.l, v100.h
	v_cmp_o_f32_e64 s3, v101, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v75.h, 0x7fff, v83.h, vcc_lo
	v_add3_u32 v84, v101, v84, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v83, 1, v26
	v_mov_b16_e32 v26.l, v99.h
	v_cmp_o_f32_e32 vcc_lo, v100, v100
	v_cndmask_b16 v76.h, 0x7fff, v84.h, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v83, v100, v83, 0x7fff
	v_and_b32_e32 v84, 1, v26
	v_mov_b16_e32 v26.l, v98.h
	v_cmp_o_f32_e64 s3, v99, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v77.h, 0x7fff, v83.h, vcc_lo
	v_add3_u32 v84, v99, v84, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v83, 1, v26
	v_mov_b16_e32 v26.l, v97.h
	v_cmp_o_f32_e32 vcc_lo, v98, v98
	v_cndmask_b16 v78.h, 0x7fff, v84.h, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v83, v98, v83, 0x7fff
	v_and_b32_e32 v84, 1, v26
	v_cmp_o_f32_e64 s3, v97, v97
	v_mov_b16_e64 v26.l, v233.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v79.h, 0x7fff, v83.h, vcc_lo
	v_add3_u32 v84, v97, v84, 0x7fff
	v_mov_b16_e32 v83.h, v26.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v80.h, 0x7fff, v84.h, s3
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[73:80], v[113:120], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v73, v215, v215
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e32 v74.h, v26.h
	v_mov_b16_e32 v75.h, v26.h
	v_mov_b16_e32 v76.h, v26.h
	v_mov_b16_e32 v77.h, v26.h
	v_mov_b16_e32 v74.l, v73.h
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_mov_b16_e32 v78.h, v26.h
	v_mov_b16_e32 v79.h, v26.h
	v_mov_b16_e32 v80.h, v26.h
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
	v_cndmask_b16 v73.h, 0x7fff, v27.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v136, v136
	v_add3_u32 v27, v136, v29, 0x7fff
	v_add3_u32 v74, v74, v75, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v75, v213, v213
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v29.h, v26.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v74.l, 0x7fff, v74.h, s3
	v_mov_b16_e32 v76.l, v75.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s7, v75, v75
	v_cmp_o_f32_e64 s3, v137, v137
	v_and_b32_e32 v76, 1, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v74.h, 0x7fff, v28.h, s3
	v_cmp_o_f32_e64 s3, v135, v135
	v_add3_u32 v28, v135, v30, 0x7fff
	v_add3_u32 v75, v75, v76, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v76, v212, v212
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v30.h, v26.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v75.l, 0x7fff, v75.h, s7
	v_mov_b16_e32 v77.l, v76.h
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_o_f32_e64 s8, v76, v76
	v_cndmask_b16 v75.h, 0x7fff, v27.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v134, v134
	v_add3_u32 v27, v134, v31, 0x7fff
	v_and_b32_e32 v77, 1, v77
	v_mov_b16_e32 v31.h, v26.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v76, v76, v77, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v77, v211, v211
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v76.l, 0x7fff, v76.h, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v78.l, v77.h
	v_cmp_o_f32_e64 s9, v77, v77
	v_cndmask_b16 v76.h, 0x7fff, v28.h, s3
	v_cmp_o_f32_e64 s3, v133, v133
	v_add3_u32 v28, v133, v32, 0x7fff
	v_and_b32_e32 v78, 1, v78
	v_mov_b16_e32 v32.h, v26.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v77, v77, v78, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v78, v210, v210
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v77.l, 0x7fff, v77.h, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v79.l, v78.h
	v_cmp_o_f32_e64 s10, v78, v78
	v_cndmask_b16 v77.h, 0x7fff, v27.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v132, v132
	v_add3_u32 v27, v132, v81, 0x7fff
	v_and_b32_e32 v79, 1, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v78, v78, v79, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v79, v209, v209
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v78.l, 0x7fff, v78.h, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v80.l, v79.h
	v_cmp_o_f32_e64 s11, v79, v79
	v_cndmask_b16 v78.h, 0x7fff, v28.h, s3
	v_cmp_o_f32_e64 s3, v131, v131
	v_add3_u32 v28, v131, v82, 0x7fff
	v_and_b32_e32 v80, 1, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v79, v79, v80, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v80, v208, v208
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v79.l, 0x7fff, v79.h, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v83.l, v80.h
	v_cmp_o_f32_e64 s12, v80, v80
	v_cndmask_b16 v79.h, 0x7fff, v27.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v27, v207, v207
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v83, 1, v83
	v_mov_b16_e32 v28.l, v27.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_add3_u32 v80, v80, v83, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v80.l, 0x7fff, v80.h, s12
	v_cndmask_b16 v80.h, 0x7fff, v28.h, s3
	v_mov_b16_e32 v28.h, v26.h
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[73:80], v[105:112], v[1:8]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v28, 1, v28
	v_mov_b16_e32 v73.h, v26.h
	v_mov_b16_e32 v74.h, v26.h
	v_mov_b16_e32 v75.h, v26.h
	v_add3_u32 v27, v27, v28, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v28, v205, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v29.l, v28.h
	v_cmp_o_f32_e64 s3, v28, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v29, 1, v29
	v_add3_u32 v28, v28, v29, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v29, v206, v206
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v30.l, v29.h
	v_cmp_o_f32_e64 s7, v29, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v30, 1, v30
	v_add3_u32 v29, v29, v30, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v30, v203, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v31.l, v30.h
	v_cmp_o_f32_e64 s8, v30, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v31, 1, v31
	v_add3_u32 v30, v30, v31, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v31, v204, v204
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v76.l, 0x7fff, v30.h, s8
	v_mov_b16_e32 v32.l, v31.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s9, v31, v31
	v_cmp_o_f32_e64 s8, v139, v139
	v_and_b32_e32 v32, 1, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v31, v31, v32, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v32, v201, v201
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v77.l, 0x7fff, v31.h, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v73.l, v32.h
	v_cmp_o_f32_e64 s10, v32, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v32, v32, v73, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v73, v202, v202
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v78.l, 0x7fff, v32.h, s10
	v_mov_b16_e32 v74.l, v73.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s11, v73, v73
	v_and_b32_e32 v74, 1, v74
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v73, v73, v74, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v74, v200, v200
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v73.l, 0x7fff, v27.h, vcc_lo
	v_and_b32_e32 v27, 1, v26
	v_mov_b16_e64 v26.l, v232.h
	v_cmp_o_f32_e32 vcc_lo, v233, v233
	v_mov_b16_e32 v75.l, v74.h
	v_cmp_o_f32_e64 s12, v74, v74
	v_add3_u32 v27, v233, v27, 0x7fff
	v_cndmask_b16 v79.l, 0x7fff, v73.h, s11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v75, 1, v75
	v_cndmask_b16 v73.h, 0x7fff, v27.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v144, v144
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v74, v74, v75, 0x7fff
	v_cndmask_b16 v74.l, 0x7fff, v28.h, s3
	v_and_b32_e32 v28, 1, v26
	v_mov_b16_e64 v26.l, v144.h
	v_cmp_o_f32_e64 s3, v232, v232
	v_cndmask_b16 v80.l, 0x7fff, v74.h, s12
	v_cndmask_b16 v75.l, 0x7fff, v29.h, s7
	v_add3_u32 v28, v232, v28, 0x7fff
	v_and_b32_e32 v27, 1, v26
	v_mov_b16_e64 v26.l, v143.h
	v_cmp_o_f32_e64 s7, v140, v140
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v74.h, 0x7fff, v28.h, s3
	v_add3_u32 v27, v144, v27, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v28, 1, v26
	v_mov_b16_e64 v26.l, v142.h
	v_cmp_o_f32_e64 s3, v143, v143
	v_cndmask_b16 v75.h, 0x7fff, v27.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v28, v143, v28, 0x7fff
	v_and_b32_e32 v27, 1, v26
	v_mov_b16_e64 v26.l, v141.h
	v_cmp_o_f32_e32 vcc_lo, v142, v142
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v76.h, 0x7fff, v28.h, s3
	v_add3_u32 v27, v142, v27, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v28, 1, v26
	v_mov_b16_e64 v26.l, v140.h
	v_cmp_o_f32_e64 s3, v141, v141
	v_cndmask_b16 v77.h, 0x7fff, v27.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v28, v141, v28, 0x7fff
	v_and_b32_e32 v29, 1, v26
	v_mov_b16_e64 v26.l, v139.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v78.h, 0x7fff, v28.h, s3
	v_add3_u32 v29, v140, v29, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v26, 1, v26
	v_cndmask_b16 v79.h, 0x7fff, v29.h, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v26, v139, v26, 0x7fff
	v_cndmask_b16 v80.h, 0x7fff, v26.h, s8
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[73:80], v[105:112], v[9:16]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc1 .LBB0_4
	s_branch .LBB0_1
.LBB0_5:
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_or_b32_e32 v26, s34, v160
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, s33, v160
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v25, v156, v162
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s5, s51, 0xffff
	s_mov_b32 s7, 0x31027000
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v26, s28, v26
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s2, s28, v25
	.loc	1 580 44                        ; attention_backward.py:580:44
	s_waitcnt lgkmcnt(6)
	v_or_b32_e32 v48, 2, v25
	v_or_b32_e32 v47, 4, v25
	v_or_b32_e32 v46, 6, v25
	v_or_b32_e32 v45, 8, v25
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s2
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_waitcnt lgkmcnt(5)
	v_add_lshl_u32 v49, v26, v25, 2
	v_add_lshl_u32 v50, v26, v48, 2
	v_add_lshl_u32 v51, v26, v47, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v44, 10, v25
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	s_mov_b32 s4, s50
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v43, 12, v25
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v52, v26, v44, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v0, 32, v25
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v17, v49, s[4:7], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v50, s2
	v_add_lshl_u32 v49, v26, v46, 2
	v_cndmask_b32_e64 v50, 0x80000000, v51, s2
	v_add_lshl_u32 v51, v26, v45, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v42, 14, v25
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v18, v17, s[4:7], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v49, s2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v41, 34, v25
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v51, s2
	v_add_lshl_u32 v49, v26, v43, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v32, 36, v25
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v19, v50, s[4:7], 0 offen
	v_cndmask_b32_e64 v19, 0x80000000, v52, s2
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s3, s28, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v20, v17, s[4:7], 0 offen
	v_add_lshl_u32 v17, v26, v42, 2
	s_clause 0x1
	buffer_store_b32 v21, v18, s[4:7], 0 offen
	buffer_store_b32 v22, v19, s[4:7], 0 offen
	v_cndmask_b32_e64 v18, 0x80000000, v49, s2
	v_add_lshl_u32 v19, v26, v0, 2
	v_add_lshl_u32 v20, v26, v41, 2
	v_add_lshl_u32 v21, v26, v32, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s3
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v31, 38, v25
	v_or_b32_e32 v30, 40, v25
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	buffer_store_b32 v23, v18, s[4:7], 0 offen
	v_cndmask_b32_e64 v18, 0x80000000, v20, s2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v29, 42, v25
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v20, 0x80000000, v21, s2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v22, s30, v160
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v28, 44, v25
	v_or_b32_e32 v27, 46, v25
	v_cmp_gt_i32_e64 s0, s30, v25
	v_cmp_gt_i32_e64 s1, s30, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v24, v17, s[4:7], 0 offen
	buffer_store_b32 v33, v19, s[4:7], 0 offen
	v_add_lshl_u32 v17, v26, v31, 2
	s_clause 0x1
	buffer_store_b32 v34, v18, s[4:7], 0 offen
	buffer_store_b32 v35, v20, s[4:7], 0 offen
	v_add_lshl_u32 v18, v26, v30, 2
	v_add_lshl_u32 v19, v26, v29, 2
	v_add_lshl_u32 v20, v26, v28, 2
	v_add_lshl_u32 v21, v26, v27, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s0, vcc_lo, s0
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v0, v22, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	s_clause 0x4
	buffer_store_b32 v36, v17, s[4:7], 0 offen
	buffer_store_b32 v37, v18, s[4:7], 0 offen
	buffer_store_b32 v38, v19, s[4:7], 0 offen
	buffer_store_b32 v39, v20, s[4:7], 0 offen
	buffer_store_b32 v40, v21, s[4:7], 0 offen
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v0, v0, s35, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v17, v22, v25
	v_add_nc_u32_e32 v18, v22, v48
	v_add_nc_u32_e32 v19, v22, v47
	v_add_nc_u32_e32 v20, v22, v46
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_add_lshl_u32 v17, v17, s35, 2
	v_add_lshl_u32 v18, v18, s35, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v21, v22, v45
	v_add_nc_u32_e32 v23, v22, v44
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_and_b32 s53, s53, 0xffff
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	s_mov_b32 s54, s6
	s_mov_b32 s55, s7
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v24, v22, v43
	v_add_nc_u32_e32 v25, v22, v42
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v1, v17, s[52:55], 0 offen
	v_add_lshl_u32 v1, v19, s35, 2
	v_cndmask_b32_e64 v17, 0x80000000, v18, s0
	v_add_lshl_u32 v18, v20, s35, 2
	v_add_lshl_u32 v19, v21, s35, 2
	v_add_lshl_u32 v20, v23, s35, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	buffer_store_b32 v2, v17, s[52:55], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v18, s0
	v_cndmask_b32_e64 v17, 0x80000000, v19, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v26, v22, v41
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v18, 0x80000000, v20, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v32, v22, v32
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v3, v1, s[52:55], 0 offen
	v_add_lshl_u32 v1, v24, s35, 2
	s_clause 0x2
	buffer_store_b32 v4, v2, s[52:55], 0 offen
	buffer_store_b32 v5, v17, s[52:55], 0 offen
	buffer_store_b32 v6, v18, s[52:55], 0 offen
	v_add_lshl_u32 v2, v25, s35, 2
	v_add_lshl_u32 v3, v26, s35, 2
	v_add_lshl_u32 v4, v32, s35, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v31, v22, v31
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v30, v22, v30
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v29, v22, v29
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_add_nc_u32 v28, v22, v28
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v22, v22, v27
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b32 v7, v1, s[52:55], 0 offen
	buffer_store_b32 v8, v2, s[52:55], 0 offen
	buffer_store_b32 v9, v0, s[52:55], 0 offen
	buffer_store_b32 v10, v3, s[52:55], 0 offen
	buffer_store_b32 v11, v4, s[52:55], 0 offen
	v_add_lshl_u32 v0, v31, s35, 2
	v_add_lshl_u32 v1, v30, s35, 2
	v_add_lshl_u32 v2, v29, s35, 2
	v_add_lshl_u32 v3, v28, s35, 2
	v_add_lshl_u32 v4, v22, s35, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b32 v12, v0, s[52:55], 0 offen
	buffer_store_b32 v13, v1, s[52:55], 0 offen
	buffer_store_b32 v14, v2, s[52:55], 0 offen
	buffer_store_b32 v15, v3, s[52:55], 0 offen
	buffer_store_b32 v16, v4, s[52:55], 0 offen
	.loc	1 451 5                         ; attention_backward.py:451:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp0:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
		.amdhsa_next_free_vgpr 244
		.amdhsa_next_free_sgpr 69
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 244
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 69
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14352
; TotalNumSgprs: 71
; NumVgprs: 244
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 71
; NumVGPRsForWavesPerEU: 244
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 0
    .sgpr_count:     71
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outfloat32_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     244
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
