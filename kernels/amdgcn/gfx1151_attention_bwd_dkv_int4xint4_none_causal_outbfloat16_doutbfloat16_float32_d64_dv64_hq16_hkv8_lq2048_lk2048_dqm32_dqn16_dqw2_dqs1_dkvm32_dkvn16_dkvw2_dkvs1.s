	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[44:47], s[0:1], 0x74
	s_load_b256 s[24:31], s[0:1], 0x0
.Ltmp0:
	.loc	1 524 23 prologue_end           ; attention_backward.py:524:23
	v_lshlrev_b32_e32 v34, 3, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s21, s2, 4
	.loc	1 521 24                        ; attention_backward.py:521:24
	s_lshl_b32 s22, s3, 11
	s_mov_b32 s11, 0x31027000
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_add_i32 s22, s22, s21
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_and_b32_e32 v1, 24, v34
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_or_b32_e32 v3, s22, v2
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v4, s21, v2
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 514 33 is_stmt 0              ; attention_backward.py:514:33
	v_bfe_u32 v156, v0, 4, 1
	.loc	1 520 26 is_stmt 1              ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v157, 1, v0
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_and_b32_e32 v50, 7, v0
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v6, 3, v0
	v_or_b32_e32 v43, 2, v156
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_and_b32_e32 v4, 24, v157
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v44, 4, v156
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[2:3], null, s45, v3, v[1:2]
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_cmp_gt_i32_e64 s4, s45, v1
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_and_b32 s9, s27, 0xffff
	s_mov_b32 s8, s26
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v158, s21, v156
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_or_b32_e32 v5, s22, v156
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_lshlrev_b32_e32 v3, 3, v50
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	v_xad_u32 v8, v34, v4, 0
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_or_b32_e32 v4, s22, v43
	.loc	1 541 32                        ; attention_backward.py:541:32
	s_ashr_i32 s5, s21, 1
	s_clause 0x1
	s_load_b64 s[48:49], s[0:1], 0x58
	s_load_b128 s[16:19], s[0:1], 0x20
	.loc	1 522 24                        ; attention_backward.py:522:24
	buffer_load_b64 v[1:2], v1, s[8:11], 0 offen
	v_dual_mov_b32 v17, 0 :: v_dual_lshlrev_b32 v4, 1, v4
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v45, 6, v156
	v_or_b32_e32 v46, 8, v156
	v_or_b32_e32 v47, 10, v156
	v_or_b32_e32 v48, 12, v156
	v_or_b32_e32 v49, 14, v156
	.loc	1 541 32                        ; attention_backward.py:541:32
	v_or_b32_e32 v7, s5, v6
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_or_b32_e32 v9, s22, v44
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_lshlrev_b32_e32 v5, 1, v5
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s13, 0x800, v158
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_mad_u64_u32 v[145:146], null, s46, v6, v[3:4]
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_mov_b16_e32 v36.l, 0
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_or_b32_e32 v10, s22, v45
	v_or_b32_e32 v11, s22, v46
	v_or_b32_e32 v12, s22, v47
	v_or_b32_e32 v13, s22, v48
	v_or_b32_e32 v14, s22, v49
	.loc	1 549 23                        ; attention_backward.py:549:23
	v_cmp_gt_i32_e32 vcc_lo, 0x400, v7
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v7, 0x80000000, v5, s13
	v_lshlrev_b32_e32 v5, 1, v9
	.loc	1 543 26                        ; attention_backward.py:543:26
	s_lshl_b32 s4, s3, 10
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v57.h, v36.l
	.loc	1 545 17                        ; attention_backward.py:545:17
	s_add_i32 s4, s5, s4
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_lshlrev_b32_e32 v9, 1, v10
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v10, 1, v11
	v_lshlrev_b32_e32 v11, 1, v12
	v_lshlrev_b32_e32 v12, 1, v13
	v_lshlrev_b32_e32 v13, 1, v14
	v_cndmask_b32_e64 v14, 0x80000000, v4, s13
	v_cndmask_b32_e64 v15, 0x80000000, v5, s13
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_mad_u64_u32 v[4:5], null, s46, s4, v[145:146]
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s6, s46, v3
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v9, 0x80000000, v9, s13
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s17, 0xffff
	s_mov_b32 s8, s16
	v_cndmask_b32_e64 v5, 0x80000000, v10, s13
	.loc	1 549 22                        ; attention_backward.py:549:22
	s_and_b32 s4, vcc_lo, s6
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v10, 0x80000000, v11, s13
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v11, 0x80000000, v12, s13
	v_cndmask_b32_e64 v12, 0x80000000, v13, s13
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_bfe_i32 s2, s2, 0x1001b
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_i32 v53, v0, 4, 1
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_lshr_b32 s2, s2, 28
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_bfe_i32 v65, v0, 3, 1
	s_clause 0x1
	s_load_b256 s[36:43], s[0:1], 0x38
	s_load_b32 s33, s[0:1], 0xa0
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v64.h, v36.l
	v_and_b32_e32 v34, 48, v34
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v171, s21, v49
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v62.h, v36.l
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v170, s21, v48
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v42.h, v36.l
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_and_b32_e32 v53, 0x440, v53
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v58.h, v36.l
	v_mov_b16_e32 v63.h, v36.l
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v168, s21, v46
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v59.l, v36.l
	v_mov_b16_e32 v60.l, v36.l
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v169, s21, v47
	v_or_b32_e32 v165, s21, v43
	v_or_b32_e32 v166, s21, v44
	v_or_b32_e32 v167, s21, v45
	s_lshl_b32 s34, s3, 12
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v61.l, v36.l
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s56, s40
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	v_lshl_add_u32 v198, s46, 3, v145
	v_lshl_add_u32 v199, s46, 4, v145
	.loc	1 641 25                        ; attention_backward.py:641:25
	s_mul_f32 s35, s47, 0x3fb8aa3b
	s_mov_b32 s51, 0
	s_mov_b32 s23, -1
	s_mov_b32 s52, s38
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_and_b32_e32 v65, 0x440, v65
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt vmcnt(0)
	ds_store_b64 v8, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_clause 0x7
	buffer_load_u16 v37, v7, s[8:11], 0 offen
	buffer_load_u16 v38, v14, s[8:11], 0 offen
	buffer_load_u16 v39, v15, s[8:11], 0 offen
	buffer_load_u16 v40, v9, s[8:11], 0 offen
	buffer_load_u16 v41, v5, s[8:11], 0 offen
	buffer_load_u16 v35, v10, s[8:11], 0 offen
	buffer_load_u16 v16, v11, s[8:11], 0 offen
	buffer_load_u16 v33, v12, s[8:11], 0 offen
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_and_b32 s9, s29, 0xffff
	s_mov_b32 s8, s28
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v1, s21, v6
	.loc	1 544 28                        ; attention_backward.py:544:28
	buffer_load_b64 v[14:15], v4, s[8:11], 0 offen
	v_mov_b32_e32 v9, 0
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_and_b32 s9, s19, 0xffff
	s_mov_b32 s8, s18
	.loc	1 570 20                        ; attention_backward.py:570:20
	v_add_nc_u32_e32 v2, s2, v1
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, 0x800, v1
	v_mov_b32_e32 v5, v9
	v_dual_mov_b32 v4, v9 :: v_dual_lshlrev_b32 v55, 1, v0
	v_mov_b32_e32 v26, v9
	.loc	1 570 20                        ; attention_backward.py:570:20
	v_ashrrev_i32_e32 v2, 4, v2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s2, s2, s6
	v_dual_mov_b32 v21, v9 :: v_dual_and_b32 v56, 1, v0
	v_dual_mov_b32 v22, v9 :: v_dual_and_b32 v51, 56, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 568 17                        ; attention_backward.py:568:17
	v_lshl_add_u32 v2, s3, 7, v2
	v_dual_mov_b32 v24, v9 :: v_dual_and_b32 v159, 15, v0
	v_dual_mov_b32 v7, v9 :: v_dual_and_b32 v52, 16, v0
	v_mul_lo_u32 v2, v2, s46
	v_dual_mov_b32 v19, v9 :: v_dual_and_b32 v54, 32, v0
	v_dual_mov_b32 v23, v9 :: v_dual_lshlrev_b32 v160, 4, v0
	v_dual_mov_b32 v27, v9 :: v_dual_lshlrev_b32 v0, 6, v0
	v_dual_mov_b32 v28, v9 :: v_dual_lshlrev_b32 v67, 5, v56
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_add_lshl_u32 v1, v2, v3, 1
	v_dual_mov_b32 v29, v9 :: v_dual_and_b32 v66, 24, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v162, 0, v0
	.loc	1 620 52                        ; attention_backward.py:620:52
	v_lshlrev_b32_e32 v0, 4, v56
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s1, s44, v67
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshl_or_b32 v56, v159, 5, v66
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v66, 16, v67
	v_lshl_or_b32 v173, v159, 6, v34
	.loc	1 567 32                        ; attention_backward.py:567:32
	buffer_load_b128 v[10:13], v1, s[8:11], 0 offen
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cmp_eq_u32_e64 s0, 0, v52
	v_lshlrev_b32_e32 v52, 2, v52
	v_dual_mov_b32 v32, v9 :: v_dual_lshlrev_b32 v69, 4, v159
	v_xor_b32_e32 v49, 16, v173
	v_mov_b32_e32 v30, v9
	v_dual_mov_b32 v31, v9 :: v_dual_and_b32 v68, 0x370, v160
	v_lshlrev_b32_e32 v70, 3, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v179, 0, v49
	v_xor_b32_e32 v53, v53, v69
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xad_u32 v43, v56, 8, 0
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_xad_u32 v65, v65, v68, 0
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xad_u32 v44, v56, 16, 0
	v_xad_u32 v45, v56, 24, 0
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_add3_u32 v68, 0, v70, v53
	.loc	1 603 39                        ; attention_backward.py:603:39
	s_sub_i32 s2, s21, s33
	v_and_or_b32 v55, v55, 30, v156
	.loc	1 603 25 is_stmt 0              ; attention_backward.py:603:25
	s_max_i32 s3, s2, 0
	.loc	1 520 26 is_stmt 1              ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v161, 1, v54
	.loc	1 604 45                        ; attention_backward.py:604:45
	s_and_b32 s40, s3, 0x7fffffe0
	s_cmpk_lt_i32 s2, 0x800
	v_lshlrev_b32_e32 v172, 2, v55
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s4, s44, v66
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, v9
	v_mov_b32_e32 v3, v9
	v_mov_b32_e32 v6, v9
	v_mov_b32_e32 v8, v9
	v_mov_b32_e32 v18, v9
	v_mov_b32_e32 v20, v9
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v197, v161, v159
	s_mov_b32 s28, s30
	s_cselect_b32 s50, -1, 0
	s_and_b32 s25, s25, 0xffff
	s_and_b32 s29, s31, 0xffff
	s_and_b32 s53, s39, 0xffff
	s_and_b32 s57, s41, 0xffff
	s_and_b32 s37, s37, 0xffff
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v190, 16, v38
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v192, 16, v40
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v194, 16, v35
	s_waitcnt vmcnt(2)
	v_dual_mov_b32 v35, v9 :: v_dual_lshlrev_b32 v196, 16, v33
	v_mov_b32_e32 v33, 0
	v_lshlrev_b32_e32 v195, 16, v16
	.loc	1 556 26                        ; attention_backward.py:556:26
	s_waitcnt vmcnt(1)
	v_bfe_u32 v67, v15, 20, 4
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshlrev_b32_e32 v50, 4, v50
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v36.h, 4, v14.l
	.loc	1 556 26 is_stmt 0              ; attention_backward.py:556:26
	v_bfe_u32 v53, v14, 20, 4
	.loc	1 554 72 is_stmt 1              ; attention_backward.py:554:72
	v_and_b16 v42.l, v15.h, 15
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v55, v15, 16, 4
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshl_or_b32 v50, v159, 7, v50
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v58.l, v36.h, 15
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshlrev_b32_e32 v51, 1, v51
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v66, 15, v15
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v78, -16, v55
	v_lshl_or_b32 v175, v54, 6, v50
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v70, v50, 16, 0
	v_xor_b32_e32 v51, v160, v51
	v_xad_u32 v72, v50, 48, 0
	v_xad_u32 v73, v50, 64, 0
	v_xor_b32_e32 v49, 64, v175
	v_xad_u32 v74, 0x50, v50, 0
	v_xad_u32 v75, 0x60, v50, 0
	v_xad_u32 v76, 0x70, v50, 0
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v80, -16, v66
	v_add_nc_u32_e32 v185, 0, v49
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b32_e32 v49, 24, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v62.l, 4, v49.l
	v_lshlrev_b32_e32 v71, 1, v159
	v_or3_b32 v163, v71, v52, v54
	v_add3_u32 v164, 0, v54, v71
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v71, v50, 32, 0
	v_xor_b32_e32 v52, 0x70, v175
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v54, v15, 24, 4
	v_xor_b32_e32 v48, 0x1b0, v163
	v_xor_b32_e32 v46, 0x90, v163
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v59.h, v11.l
	v_and_b32_e32 v11, 0xffff0000, v11
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v34, 0, v56
	v_add_nc_u32_e32 v178, 0, v48
	v_xor_b32_e32 v48, 48, v175
	v_xor_b32_e32 v47, 0x120, v163
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v60.h, v12.l
	v_and_b32_e32 v12, 0xffff0000, v12
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_add_nc_u32_e32 v174, 0, v51
	v_add_nc_u32_e32 v184, 0, v48
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b32_e32 v48, 8, v15
	v_xor_b32_e32 v51, 48, v173
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v61.h, v13.l
	v_and_b32_e32 v13, 0xffff0000, v13
	v_add_nc_u32_e32 v176, 0, v46
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v36.h, 4, v48.l
	v_xor_b32_e32 v46, 16, v175
	v_add_nc_u32_e32 v177, 0, v47
	v_add_nc_u32_e32 v181, 0, v51
	v_xor_b32_e32 v47, 32, v175
	v_and_b16 v63.l, v36.h, 15
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_add_nc_u32_e32 v69, 0, v50
	v_xor_b32_e32 v50, 32, v173
	v_xor_b32_e32 v51, 0x60, v175
	v_add_nc_u32_e32 v182, 0, v46
	.loc	1 522 24                        ; attention_backward.py:522:24
	ds_load_b64 v[146:147], v34
	ds_load_b64 v[148:149], v43
	ds_load_b64 v[150:151], v44
	ds_load_b64 v[152:153], v45
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b32_e32 v46, 8, v14
	v_add_nc_u32_e32 v180, 0, v50
	v_xor_b32_e32 v50, 0x50, v175
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v34.l, v14.h, 15
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b64 v[44:45], 24, v[14:15]
	v_add_nc_u32_e32 v183, 0, v47
	v_add_nc_u32_e32 v188, 0, v52
	v_add_nc_u32_e32 v186, 0, v50
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v50, v14, 16, 4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_alignbit_b32 v47, v15, v14, 24
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v34.h, v14.l, 15
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v52, 15, v14
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v34.l
	.loc	1 557 50 is_stmt 0              ; attention_backward.py:557:50
	v_or_b32_e32 v45, -16, v50
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_mov_b16_e32 v36.h, v10.l
	v_add_nc_u32_e32 v187, 0, v51
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v51, v14, 8, 4
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v14.l, v46.l, 15
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v45, v50, v45, s2
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v43.l, v15.l, 15
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v56, v15, 8, 4
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v79, -16, v51
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v14.l
	.loc	1 556 28 is_stmt 1              ; attention_backward.py:556:28
	v_lshrrev_b16 v43.h, 4, v15.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v77, -16, v52
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v15.l, v49.l, 15
	v_and_b16 v15.h, v48.l, 15
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v48, v51, v79, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v34.h
	.loc	1 556 28 is_stmt 1              ; attention_backward.py:556:28
	v_lshrrev_b16 v14.h, 4, v46.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v46, -16, v54
	v_or_b32_e32 v49, -16, v56
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v64.l, v43.h, 15
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v34, v52, v77, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v15.l
	.loc	1 556 28 is_stmt 1              ; attention_backward.py:556:28
	v_and_b16 v57.l, v14.h, 15
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v47, 15, v47
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v43.h, v44.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v44.l, 4, v44.l
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v14, v54, v46, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v42.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v50, -16, v47
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e32 v52, 0, v62, vcc_lo
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v42.l, v44.l, 15
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v44, v48
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v46, v55, v78, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v15.h
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_dual_cndmask_b32 v54, 0, v63 :: v_dual_cndmask_b32 v55, 0, v64
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v62, -16, v52
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v15, v56, v49, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v43.l
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v64, -16, v54
	.loc	1 575 27                        ; attention_backward.py:575:27
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cvt_f32_i32_e32 v48, v15
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v49, v66, v80, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v43.h
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v43, v34
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v15, 0, v53, vcc_lo
	v_dual_cndmask_b32 v34, 0, v57 :: v_dual_cndmask_b32 v53, 0, v67
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v51, v47, v50, s2
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v50, v14
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v14, 0, v42, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v47, v49
	v_cvt_f32_i32_e32 v49, v46
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v42, 0, v58, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v46, v51
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v51, -16, v14
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v14
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v56, -16, v15
	v_or_b32_e32 v57, -16, v34
	v_or_b32_e32 v58, -16, v42
	v_or_b32_e32 v63, -16, v53
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v14, v14, v51, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v15
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v66, -16, v55
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_and_b32_e32 v10, 0xffff0000, v10
	v_mad_u64_u32 v[154:155], null, s46, 24, v[145:146]
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v15, v15, v56, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v34
	v_xor_b32_e32 v155, 4, v172
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v34, v34, v57, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v42
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v42, v42, v58, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v51, v42
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v56, v52, v62, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v53
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v52, v34
	v_cvt_f32_i32_e32 v58, v56
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v57, v53, v63, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v54
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v53, v15
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v57, v57
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v62, v54, v64, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v55
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v54, v14
	ds_store_b128 v65, v[43:46]
	ds_store_b128 v65, v[51:54] offset:128
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v55, v55, v66, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v56, v62
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[42:45], v68
	ds_load_b128 v[51:54], v68 offset:512
	v_cvt_f32_i32_e32 v55, v55
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v65, v[47:50]
	ds_store_b128 v65, v[55:58] offset:128
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[46:49], v68
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_lshlrev_b32_e32 v189, 16, v37
	v_lshlrev_b32_e32 v191, 16, v39
	.loc	1 575 27                        ; attention_backward.py:575:27
	ds_load_b128 v[37:40], v68 offset:512
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_lshlrev_b32_e32 v193, 16, v41
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_dual_mul_f32 v14, v42, v36 :: v_dual_mul_f32 v15, v43, v10
	v_mul_f32_e32 v34, v44, v59
	v_dual_mul_f32 v10, v52, v10 :: v_dual_mul_f32 v41, v45, v11
	v_dual_mul_f32 v36, v51, v36 :: v_dual_mul_f32 v11, v54, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	v_bfe_u32 v54, v10, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v42, v46, v60
	v_dual_mul_f32 v43, v47, v12 :: v_dual_mul_f32 v44, v48, v61
	v_mul_f32_e32 v46, v53, v59
	v_mul_f32_e32 v45, v49, v13
	v_mul_f32_e32 v37, v37, v60
	v_mul_f32_e32 v12, v38, v12
	v_mul_f32_e32 v38, v39, v61
	v_mul_f32_e32 v13, v40, v13
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_bfe_u32 v39, v14, 16, 1
	v_bfe_u32 v40, v15, 16, 1
	v_bfe_u32 v47, v34, 16, 1
	v_bfe_u32 v48, v41, 16, 1
	v_bfe_u32 v49, v42, 16, 1
	v_bfe_u32 v50, v43, 16, 1
	v_bfe_u32 v51, v44, 16, 1
	v_bfe_u32 v52, v45, 16, 1
	v_bfe_u32 v53, v36, 16, 1
	v_bfe_u32 v55, v46, 16, 1
	v_bfe_u32 v56, v11, 16, 1
	v_bfe_u32 v57, v37, 16, 1
	v_bfe_u32 v58, v12, 16, 1
	v_bfe_u32 v59, v38, 16, 1
	v_bfe_u32 v60, v13, 16, 1
	v_cmp_o_f32_e64 s2, v15, v15
	v_cmp_o_f32_e64 s3, v34, v34
	v_cmp_o_f32_e64 s7, v41, v41
	v_cmp_o_f32_e64 s8, v42, v42
	v_cmp_o_f32_e64 s9, v43, v43
	v_cmp_o_f32_e64 s10, v44, v44
	v_cmp_o_f32_e64 s11, v45, v45
	v_add3_u32 v14, v14, v39, 0x7fff
	v_add3_u32 v15, v15, v40, 0x7fff
	v_add3_u32 v34, v34, v47, 0x7fff
	v_add3_u32 v39, v41, v48, 0x7fff
	v_add3_u32 v40, v42, v49, 0x7fff
	v_add3_u32 v41, v43, v50, 0x7fff
	v_add3_u32 v42, v44, v51, 0x7fff
	v_add3_u32 v43, v45, v52, 0x7fff
	v_cmp_o_f32_e64 s12, v36, v36
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
	v_add3_u32 v50, v13, v60, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v14.h, vcc_lo
	v_cndmask_b16 v10.h, 0x7fff, v15.h, s2
	v_cndmask_b16 v11.l, 0x7fff, v34.h, s3
	v_cndmask_b16 v11.h, 0x7fff, v39.h, s7
	v_cndmask_b16 v12.l, 0x7fff, v40.h, s8
	v_cndmask_b16 v12.h, 0x7fff, v41.h, s9
	v_cndmask_b16 v13.l, 0x7fff, v42.h, s10
	v_cndmask_b16 v13.h, 0x7fff, v43.h, s11
	v_cndmask_b16 v36.l, 0x7fff, v36.h, s12
	v_cndmask_b16 v36.h, 0x7fff, v44.h, s14
	v_cndmask_b16 v37.l, 0x7fff, v45.h, s15
	v_cndmask_b16 v37.h, 0x7fff, v46.h, s16
	v_cndmask_b16 v38.l, 0x7fff, v47.h, s17
	v_cndmask_b16 v38.h, 0x7fff, v48.h, s18
	v_cndmask_b16 v39.l, 0x7fff, v49.h, s19
	v_cndmask_b16 v39.h, 0x7fff, v50.h, s20
	.loc	1 717 21 is_stmt 1              ; attention_backward.py:717:21
	ds_store_b128 v174, v[10:13]
	ds_store_b128 v174, v[36:39] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v69
	ds_load_b128 v[45:48], v70
	ds_load_b128 v[49:52], v71
	ds_load_b128 v[53:56], v72
	ds_load_b128 v[57:60], v73
	ds_load_b128 v[61:64], v74
	ds_load_b128 v[65:68], v75
	ds_load_b128 v[69:72], v76
	.loc	1 620 52                        ; attention_backward.py:620:52
	v_cmp_gt_i32_e64 s5, s45, v0
	v_mov_b32_e32 v34, v9
	v_mov_b32_e32 v36, v9
	v_mov_b32_e32 v37, v9
	v_mov_b32_e32 v38, v9
	v_mov_b32_e32 v39, v9
	v_mov_b32_e32 v40, v9
	s_branch .LBB0_2
.LBB0_1:                                ; %Flow171
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 52 is_stmt 0                ; attention_backward.py:0:52
	s_xor_b32 s2, s23, -1
	s_movk_i32 s51, 0x800
	.loc	1 605 9 is_stmt 1               ; attention_backward.py:605:9
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s23, 0
	s_cbranch_vccz .LBB0_5
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_and_not1_b32 vcc_lo, exec_lo, s50
	s_cbranch_vccnz .LBB0_1
; %bb.3:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 613 25                        ; attention_backward.py:613:25
	s_or_b32 s18, s34, s51
	s_mov_b32 s19, s40
.LBB0_4:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 25 is_stmt 0                ; attention_backward.py:0:25
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 616 25 is_stmt 1              ; attention_backward.py:616:25
	s_or_b32 s2, s19, s18
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_mov_b32 s30, s26
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_or_b32_e32 v10, s2, v157
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s2, s2, s46
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_mov_b32 s31, s27
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v13, s2, v198, 1
	v_add_lshl_u32 v12, s2, v145, 1
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_mad_u64_u32 v[10:11], null, v10, s45, v[0:1]
	v_or_b32_e32 v11, s18, v157
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v15, 0x80000000, v13, s6
	v_add_lshl_u32 v13, s2, v199, 1
	v_cndmask_b32_e64 v12, 0x80000000, v12, s6
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s54, s26
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v11, s19, v11, 1
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v14, 0x80000000, v10, s5
	v_or_b32_e32 v10, s18, v197
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v16, 0x80000000, v13, s6
	v_add_lshl_u32 v13, s2, v154, 1
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s55, s27
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s58, s26
	.loc	1 624 25                        ; attention_backward.py:624:25
	v_or_b32_e32 v10, s19, v10
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s59, s27
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v73, 0x80000000, v13, s6
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v13, 1, v10
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_lshlrev_b32_e32 v10, 2, v10
	.loc	1 651 43                        ; attention_backward.py:651:43
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_clause 0x1
	buffer_load_u16 v111, v11, s[28:31], 0 offen
	buffer_load_u16 v106, v13, s[28:31], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v105, v10, s[52:55], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v116, v10, s[56:59], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x3
	buffer_load_b128 v[10:13], v12, s[36:39], 0 offen
	buffer_load_b128 v[107:110], v15, s[36:39], 0 offen
	buffer_load_b128 v[112:115], v16, s[36:39], 0 offen
	buffer_load_b128 v[123:126], v73, s[36:39], 0 offen
	.loc	1 615 36                        ; attention_backward.py:615:36
	buffer_load_b128 v[119:122], v14, s[24:27], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v14, 0, v160
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v16, v9
	v_mov_b32_e32 v15, v9
	.loc	1 651 43                        ; attention_backward.py:651:43
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(4)
	ds_store_b128 v14, v[10:13]
	s_waitcnt vmcnt(3)
	ds_store_b128 v14, v[107:110] offset:1024
	s_waitcnt vmcnt(2)
	ds_store_b128 v14, v[112:115] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v14, v[123:126] offset:3072
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
	ds_store_b128 v174, v[10:13]
	ds_store_b128 v174, v[107:110] offset:1024
	ds_store_b128 v174, v[112:115] offset:2048
	ds_store_b128 v174, v[123:126] offset:3072
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_dual_mov_b32 v12, v9 :: v_dual_add_nc_u32 v107, 0, v175
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[123:126], v107
	ds_load_b128 v[127:130], v182
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v10, v9
	v_mov_b32_e32 v11, v9
	v_mov_b32_e32 v13, v9
	v_mov_b32_e32 v14, v9
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v138, v16 :: v_dual_mov_b32 v137, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v134, v12 :: v_dual_mov_b32 v133, v11
	v_dual_mov_b32 v136, v14 :: v_dual_mov_b32 v135, v13
	v_dual_mov_b32 v132, v10 :: v_dual_mov_b32 v131, v9
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v114, v172, v119
	ds_bpermute_b32 v115, v155, v119
	ds_bpermute_b32 v117, v155, v120
	ds_bpermute_b32 v118, v172, v121
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v106, 16, v106
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v76.l, v122.l, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e32 v78.l, v121.h
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[131:138], v[41:48], v[123:130], v[131:138]
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[123:126], v183
	ds_load_b128 v[127:130], v184
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e32 v79.l, v122.h
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v75.l, 4, v122.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v77.l, v122.h, 15
	.loc	1 640 41                        ; attention_backward.py:640:41
	v_mul_f32_e32 v106, s35, v106
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v234, 0, v163
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v113, v115, v114, s0
	v_cndmask_b32_e64 v115, v114, v115, s0
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[131:138], v[49:56], v[123:130], v[131:138]
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[123:126], v185
	ds_load_b128 v[127:130], v186
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[131:138], v[57:64], v[123:130], v[131:138]
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[123:126], v187
	ds_load_b128 v[127:130], v188
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_wmma_f32_16x16x16_bf16 v[131:138], v[65:72], v[123:130], v[131:138]
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_bpermute_b32 v123, v155, v121
	ds_bpermute_b32 v124, v155, v122
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v139, v131, v116
	v_sub_f32_e32 v140, v132, v116
	v_sub_f32_e32 v133, v133, v116
	v_sub_f32_e32 v112, v134, v116
	v_sub_f32_e32 v110, v135, v116
	v_sub_f32_e32 v109, v136, v116
	v_sub_f32_e32 v108, v137, v116
	v_sub_f32_e32 v107, v138, v116
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_bpermute_b32 v116, v172, v120
	v_lshrrev_b32_e32 v136, 24, v120
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v138, v122, 24, 4
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v131, v118, v123, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v114, v117, v116, s0
	v_cndmask_b32_e64 v116, v116, v117, s0
	v_cndmask_b32_e64 v117, v123, v118, s0
	ds_bpermute_b32 v123, v172, v122
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v118, v124, v123, s0
	v_cndmask_b32_e64 v132, v123, v124, s0
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_wmma_i32_16x16x16_iu4 v[123:130], v[146:147], v[113:114], v[9:16] neg_lo:[1,1,0]
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v10, s19, v197
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v12, v119, 0, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_wmma_i32_16x16x16_iu4 v[123:130], v[148:149], v[117:118], v[123:130] neg_lo:[1,1,0]
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v117, 15, v119
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v10, s33, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s17, 0, v12.l
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_wmma_i32_16x16x16_iu4 v[123:130], v[150:151], v[115:116], v[123:130] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v118, -16, v117
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s12, v158, v10
	v_cmp_le_i32_e64 s11, v165, v10
	v_cmp_le_i32_e64 s10, v166, v10
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_wmma_i32_16x16x16_iu4 v[123:130], v[152:153], v[131:132], v[123:130] neg_lo:[1,1,0]
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s9, v167, v10
	v_cmp_le_i32_e64 s8, v168, v10
	v_cmp_le_i32_e64 s7, v169, v10
	v_cmp_le_i32_e64 s3, v170, v10
	v_cmp_le_i32_e32 vcc_lo, v171, v10
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v10.l, v119.l, 15
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v13, v123
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v123, v119, 16, 4
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v14, v124
	v_cvt_f32_i32_e32 v113, v127
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s2, 7, v10.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v10.l, v119.h, 15
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v124, -16, v123
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v127, v120, 16, 4
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v114, v128
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v117, v117, v118, s2
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s14, 7, v10.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v10.l, v120.l, 15
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v128, -16, v127
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v15, v125
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v125, 15, v120
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v118, v123, v124, s14
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s15, 7, v10.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v10.l, v120.h, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v124, 8, v119
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v123, v119, 8, 4
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v16, v126
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v126, -16, v125
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s16, 7, v10.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v12.l, v124.l, 15
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v131, -16, v123
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b64 v[10:11], 24, v[119:120]
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v132, v125, v126, s15
	v_cndmask_b32_e64 v134, v127, v128, s16
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s2, 7, v12.l
	.loc	1 615 36 is_stmt 1              ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v128, 8, v120
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v115, v129
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v11.h, v10.l, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v129, v10, 0, 8
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v131, v123, v131, s2
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v123, v120, 8, 4
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v12.l, v128.l, 15
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v11.l, 4, v10.l
	v_lshrrev_b16 v10.l, 4, v119.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e32 v10.h, 0
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v125, -16, v123
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s2, 7, v12.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v12.l, v136.l, 15
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v10.l, v10.l, 15
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v116, v130
	v_mul_f32_e32 v14, v106, v14
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v135, v123, v125, s2
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v123, v120, 24, 4
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s2, 7, v12.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_alignbit_b32 v12, v120, v119, 24
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v130, -16, v10
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v16, v106, v16
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v125, -16, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_dual_mul_f32 v115, v106, v115 :: v_dual_and_b32 v12, 15, v12
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v14, v14, v190, -v105
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s11, s13, s11
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v137, v123, v125, s2
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s2, 7, v11.h
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v123, -16, v12
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v11.h, 4, v124.l
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v115, v115, v195, -v105
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s10, s13, s10
	s_and_b32 s9, s13, s9
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v127, v12, v123, s2
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e32 v12.l, v119.h
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v119, v119, 20, 4
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s8, s13, s8
	s_and_b32 s7, s13, s7
	s_and_b32 s3, s13, s3
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v12, v12, 0, 8
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v123, -16, v119
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 vcc_lo, s13, vcc_lo
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v90.l, v10.h
	v_mov_b16_e32 v101.l, v10.h
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s2, 0, v12.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e32 v12.l, v120.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v97.l, v10.h
	v_mov_b16_e32 v98.l, v10.h
	v_mov_b16_e32 v99.l, v10.h
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v119, v119, v123, s2
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v12, v12, 0, 8
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v123, v120, 20, 4
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v100.l, v10.h
	v_mov_b16_e32 v102.l, v10.h
	v_mov_b16_e32 v103.l, v10.h
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s2, 0, v12.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v125, -16, v123
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v12, v117
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v104.l, v10.h
	v_mov_b16_e32 v81.l, v10.h
	v_mov_b16_e32 v82.l, v10.h
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v125, v123, v125, s2
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v123, 16, v111
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v111, v10, v130, s17
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v113, v106, v113
	v_dual_mul_f32 v114, v106, v114 :: v_dual_add_nc_u32 v235, 0, v173
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v12, v123, v12
	v_cvt_f32_i32_e32 v111, v111
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v83.l, v10.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v114, v114, v194, -v105
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v84.l, v10.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v117, 0, v12, s1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v111, v123, v111
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v12, v124, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v124.h, v10.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v85.l, v10.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v10.l, v117.h
	v_cndmask_b32_e64 v111, 0, v111, s1
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s2, 0, v12.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s14, v117, v117
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v86.l, v10.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v126, 1, v10
	v_cmp_o_f32_e64 s15, v111, v111
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v10.l, v11.h, 15
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v87.l, v10.h
	v_mov_b16_e32 v88.l, v10.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v12, v117, v126, 0x7fff
	v_mov_b16_e32 v117.h, v10.h
	v_mov_b16_e32 v117.l, v111.h
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v130, -16, v10
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v80.l, v10.h
	v_mov_b16_e32 v89.l, v10.h
	v_mov_b16_e32 v91.l, v10.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v117, 1, v117
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v92.l, v10.h
	v_mov_b16_e32 v93.l, v10.h
	v_mov_b16_e32 v94.l, v10.h
	v_mov_b16_e32 v95.l, v10.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v111, v111, v117, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v117, v119
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v119.h, v10.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v96.l, v10.h
	v_mov_b16_e64 v230.l, v10.h
	v_mov_b16_e64 v228.l, v10.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v117, v123, v117
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v231.l, v10.h
	v_mov_b16_e64 v229.l, v10.h
	v_mov_b16_e64 v226.l, v10.h
	v_mov_b16_e64 v227.l, v10.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v117, 0, v117, s1
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v224.l, v10.h
	v_mov_b16_e64 v225.l, v10.h
	v_mov_b16_e64 v221.l, v10.h
	v_mov_b16_e64 v219.l, v10.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v119.l, v117.h
	v_cmp_o_f32_e64 s16, v117, v117
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v217.l, v10.h
	v_mov_b16_e64 v216.l, v10.h
	v_mov_b16_e64 v212.l, v10.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v119, 1, v119
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v208.l, v10.h
	v_mov_b16_e64 v205.l, v10.h
	v_mov_b16_e64 v203.l, v10.h
	v_mov_b16_e64 v201.l, v10.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v117, v117, v119, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v119, v125
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v223.l, v10.h
	v_mov_b16_e64 v222.l, v10.h
	v_mov_b16_e64 v214.l, v10.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v126.h, 0x7fff, v117.h, s16
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v119, v123, v119
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v220.l, v10.h
	v_mov_b16_e64 v210.l, v10.h
	v_mov_b16_e64 v218.l, v10.h
	v_mov_b16_e64 v200.l, v10.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v119, 0, v119, s1
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v215.l, v10.h
	v_mov_b16_e64 v213.l, v10.h
	v_mov_b16_e64 v211.l, v10.h
	v_mov_b16_e64 v209.l, v10.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v124.l, v119.h
	v_cmp_o_f32_e64 s17, v119, v119
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v207.l, v10.h
	v_mov_b16_e64 v204.l, v10.h
	v_mov_b16_e64 v206.l, v10.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v124, 1, v124
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v202.l, v10.h
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v119, v119, v124, 0x7fff
	v_cndmask_b16 v124.l, 0x7fff, v12.h, s14
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v12, v131
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v13, v106, v13
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v124.h, 0x7fff, v111.h, s15
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v111, v10, v130, s2
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v130.h, 0x7fff, v119.h, s17
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v12, v123, v12
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v13, v13, v189, -v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v12, 0, v12, s1
	v_mov_b16_e32 v10.l, v12.h
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v15, v106, v15
	v_mul_f32_e32 v106, v106, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s14, v12, v12
	v_and_b32_e32 v116, 1, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v15, v15, v191, -v105
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v12, v12, v116, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v116, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v125.l, 0x7fff, v12.h, s14
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v116, v123, v116
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v113, v113, v193, -v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v116, 0, v116, s1
	v_mov_b16_e32 v10.l, v116.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v116, v116
	v_and_b32_e32 v117, 1, v10
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v10.l, v11.l, 15
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v118, v16, v192, -v105
	v_fma_f32 v105, v106, v196, -v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v11, v116, v117, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v11.l, v129.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v16, -16, v10
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b16 v126.l, 0x7fff, v11.h, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s15, 0, v11.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v11, v127
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v106, v10, v16, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v11, v123, v11
	v_cvt_f32_i32_e32 v106, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v12, 0, v11, s1
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v11.l, 4, v120.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v106, v123, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v10.l, v12.h
	v_cmp_o_f32_e64 s14, v12, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v106, 0, v106, s1
	v_and_b32_e32 v16, 1, v10
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v10.l, v11.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v11, v111
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v111.h, v10.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v12, v12, v16, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v16, v120, 0, 8
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v11, v123, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v127.l, 0x7fff, v12.h, s14
	v_cndmask_b32_e64 v11, 0, v11, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v111.l, v11.h
	v_cmp_o_f32_e64 s2, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v111, 1, v111
	v_add3_u32 v11, v11, v111, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v11.l, v16.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v16, -16, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b16 v125.h, 0x7fff, v11.h, s2
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s15, 0, v11.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v11, v132
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s2, s13, s12
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v132, 8, v122
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v116, v10, v16, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v11, v123, v11
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s15, v106, v106
	v_cndmask_b32_e64 v111, 0, v11, s1
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v11.l, 4, v128.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v10.l, v111.h
	v_cmp_o_f32_e64 s14, v111, v111
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v117, 1, v10
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v10.l, v11.l, 15
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v11, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v232, 0, v11, s2
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v11, v232, v139
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v11, s47, v11
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v12, v11, 16, 1
	v_cmp_o_f32_e64 s2, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v120, v11, v12, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v11, v14
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v16, 0, v11, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v11, v16, v140
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v11, s47, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v12, v11, 16, 1
	v_cmp_o_f32_e64 s11, v11, v11
	v_add3_u32 v129, v11, v12, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v11, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v11, 0, v11, s10
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v12, v11, v133
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v111, v111, v117, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v133, 24, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v12, s47, v12
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v13, v12, 16, 1
	v_cmp_o_f32_e64 s10, v12, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v131, v12, v13, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v12, v118
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v12, 0, v12, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v13, v12, v112
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v13, s47, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v14, v13, 16, 1
	v_cmp_o_f32_e64 s9, v13, v13
	v_add3_u32 v112, v13, v14, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v13, v113
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v113.h, v10.h
	v_mov_b16_e32 v113.l, v106.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v113, 1, v113
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v233, 0, v13, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v106, v106, v113, 0x7fff
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v13, v233, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v127.h, 0x7fff, v106.h, s15
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v13, s47, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v14, v13, 16, 1
	v_cmp_o_f32_e64 s8, v13, v13
	v_add3_u32 v110, v13, v14, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v13, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v74.l, 0x7fff, v110.h, s8
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v234, v74 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v13, 0, v13, s7
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v14, v13, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v14, s47, v14
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v15, v14, 16, 1
	v_cmp_o_f32_e64 s7, v14, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v109, v14, v15, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v14, v115
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v74.l, 0x7fff, v109.h, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v14, 0, v14, s3
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v15, v14, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v15, s47, v15
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v108, v15, 16, 1
	v_cmp_o_f32_e64 s3, v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v108, v15, v108, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v15, v105
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v15, 0, v15, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v105, v15, v107
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v105, s47, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v107, v105, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v105, v105
	v_add3_u32 v105, v105, v107, 0x7fff
	.loc	1 615 36 is_stmt 1              ; attention_backward.py:615:36
	v_bfe_i32 v107, v128, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v128.l, 0x7fff, v111.h, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v73.l, v107.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v107, -16, v10
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s12, 0, v73.l
	.loc	1 721 37 is_stmt 1              ; attention_backward.py:721:37
	v_cndmask_b16 v73.l, 0x7fff, v120.h, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v106, v10, v107, s12
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v234, v73
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v73.l, 0x7fff, v129.h, s11
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v176, v73
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v73.l, 0x7fff, v131.h, s10
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v176, v74 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v74.l, 0x7fff, v108.h, s3
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v108.h, v10.h
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v177, v73
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v73.l, 0x7fff, v112.h, s9
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v177, v74 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v74.l, 0x7fff, v105.h, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v105, v135
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v178, v73
	ds_store_b16 v178, v74 offset:512
	s_waitcnt lgkmcnt(0)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v105, v123, v105
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_barrier
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v74.l, 4, v121.l
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v135, v122, 8, 4
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s9, v14, v14
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v105, 0, v105, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v10.l, v105.h
	v_cmp_o_f32_e32 vcc_lo, v105, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v107, 1, v10
	v_add3_u32 v105, v105, v107, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v107, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v129.l, 0x7fff, v105.h, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v107, v123, v107
	v_cvt_f32_i32_e32 v105, v106
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v106.h, v10.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v107, 0, v107, s1
	v_mov_b16_e32 v108.l, v107.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v107, v107
	v_and_b32_e32 v108, 1, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v107, v107, v108, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v108, v134
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v134, 15, v122
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v128.h, 0x7fff, v107.h, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v108, v123, v108
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v140, -16, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v108, 0, v108, s1
	v_mov_b16_e32 v10.l, v108.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v108, v108
	v_and_b32_e32 v109, 1, v10
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v10.l, 4, v136.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v108, v108, v109, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v109, v136, 0, 8
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v136, v122, 20, 4
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v105, v123, v105
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v130.l, 0x7fff, v108.h, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v73.l, v109.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v109, -16, v10
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b32_e64 v105, 0, v105, s1
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s3, 7, v76.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s7, 0, v73.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v73.l, v121.h, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v106.l, v105.h
	v_cmp_o_f32_e32 vcc_lo, v105, v105
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v134, v134, v140, s3
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v107, v10, v109, s7
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s7, 7, v77.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v106, 1, v106
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v77.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v105, v105, v106, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v106, v137
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v137, v122, 16, 4
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v129.h, 0x7fff, v105.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v106, v123, v106
	v_cvt_f32_i32_e32 v105, v107
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v141, -16, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v106, 0, v106, s1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v105, v123, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v137, v137, v141, s7
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v10.l, v106.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s2, v106, v106
	v_cndmask_b32_e64 v105, 0, v105, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v108, 1, v10
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v10.l, v121.l, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v105, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v106, v106, v108, 0x7fff
	v_mov_b16_e32 v106.l, v105.h
	v_cndmask_b16 v131.l, 0x7fff, v106.h, s2
	v_mov_b16_e32 v106.h, v10.h
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s2, 7, v73.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v106, 1, v106
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s10, v15, v15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v105, v105, v106, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v131.h, 0x7fff, v105.h, vcc_lo
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_load_b128 v[113:116], v235
	ds_load_b128 v[117:120], v179
	ds_load_b128 v[105:108], v180
	ds_load_b128 v[109:112], v181
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v162, v[124:127]
	ds_store_b128 v162, v[128:131] offset:16
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
	v_cmp_lt_u16_e32 vcc_lo, 7, v10.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v76.l, v125.l, 15
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v139, -16, v126
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v142, v121, 0, 8
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v73.l, 4, v121.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v10.l, v121.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v121, v124, v122, vcc_lo
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v124, -16, v128
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v76.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v76.l, v132.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v122, v126, v139, s2
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
	v_mov_b16_e32 v76.l, v10.h
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v138, v138, v124, vcc_lo
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v124, 15, v129
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v10.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v122, 0, v122, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v126, -16, v124
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v129, v124, v126, vcc_lo
	.loc	1 615 36 is_stmt 1              ; attention_backward.py:615:36
	v_bfe_i32 v124, v78, 0, 8
	v_bfe_i32 v126, v79, 0, 8
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v79.l, v10.h
	v_mov_b16_e32 v78.l, v10.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v10.l, v124.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v124, -16, v130
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v10.l
	v_mov_b16_e32 v10.l, v126.l
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v126, -16, v136
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v124, v130, v124, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v10.l
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_mov_b16_e64 v130.h, v10.h
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v10.l, v74.l, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v74.l, v127.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v124, v124
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v126, v136, v126, vcc_lo
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v136.h, v10.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s3, 0, v74.l
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
	v_cmp_o_f32_e64 s2, v126, v126
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v124, v124, v130, 0x7fff
	v_mov_b16_e64 v130.h, v10.h
	v_mov_b16_e64 v130.l, v126.h
	v_and_b32_e32 v130, 1, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v130, v126, v130, 0x7fff
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v126, -16, v10
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v130.h, 0x7fff, v130.h, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v127, v10, v126, s3
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v127, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v127, v123, v127
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v127, 0, v127, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e64 v136.l, v127.h
	v_and_b32_e32 v136, 1, v136
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v121, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v121, v123, v121
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v121, 0, v121, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v10.l, v121.h
	v_cmp_o_f32_e64 s3, v121, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v126, 1, v10
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v10.l, v74.l, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v74.l, v125.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v121, v121, v126, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v125, -16, v10
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s7, 0, v74.l
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b16 v126.h, 0x7fff, v124.h, vcc_lo
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v74.l, v10.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v124.l, 0x7fff, v121.h, s3
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v121, v128
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v128, v10, v125, s7
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s7, v122, v122
	v_cmp_o_f32_e64 s3, v127, v127
	v_add3_u32 v127, v127, v136, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v121, v123, v121
	v_cvt_f32_i32_e32 v128, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v124.h, 0x7fff, v127.h, s3
	v_cndmask_b32_e64 v121, 0, v121, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v128, v123, v128
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v10.l, v121.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e32 vcc_lo, v121, v121
	v_cndmask_b32_e64 v128, 0, v128, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v125, 1, v10
	v_mov_b16_e32 v10.l, v122.h
	v_add3_u32 v121, v121, v125, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v125, 1, v10
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v10.l, v73.l, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v73.l, v142.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v122, v122, v125, 0x7fff
	v_cndmask_b16 v125.l, 0x7fff, v121.h, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v121, v129
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v136, -16, v10
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s8, 0, v73.l
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b16 v126.l, 0x7fff, v122.h, s7
	v_mov_b16_e64 v129.h, v10.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v121, v123, v121
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v129.l, v128.h
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v122, v10, v136, s8
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_mov_b16_e64 v73.l, v131.l
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v128, v128
	v_cndmask_b32_e64 v121, 0, v121, s4
	v_and_b32_e32 v129, 1, v129
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v122, v122
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s7, 0, v73.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v73.l, 4, v132.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v10.l, v121.h
	v_cmp_o_f32_e64 s3, v121, v121
	v_add3_u32 v128, v128, v129, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v122, v123, v122
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v131, v132, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v127, 1, v10
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v10.l, v75.l, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v125.h, 0x7fff, v128.h, vcc_lo
	v_cndmask_b32_e64 v122, 0, v122, s4
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s8, v12, v12
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v121, v121, v127, 0x7fff
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v129, -16, v10
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v75.l, v10.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v127.l, 0x7fff, v121.h, s3
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v121, v134
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v129, v10, v129, s7
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s7, v122, v122
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
	v_mov_b16_e32 v10.l, v121.h
	v_cmp_o_f32_e64 s3, v121, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v129, 0, v129, s4
	v_and_b32_e32 v128, 1, v10
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v10.l, v73.l, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v73.l, v131.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v121, v121, v128, 0x7fff
	v_mov_b16_e64 v128.h, v10.h
	v_mov_b16_e64 v128.l, v122.h
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v131, -16, v10
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v73.l
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_and_b32_e32 v128, 1, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v122, v122, v128, 0x7fff
	v_cndmask_b16 v128.l, 0x7fff, v121.h, s3
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v121, v135
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v127.h, 0x7fff, v122.h, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_dual_cndmask_b32 v122, v10, v131 :: v_dual_mul_f32 v121, v123, v121
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v129, v129
	v_cndmask_b32_e64 v121, 0, v121, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v10.l, v121.h
	v_cmp_o_f32_e64 s2, v121, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v131, 1, v10
	v_add3_u32 v121, v121, v131, 0x7fff
	v_mov_b16_e64 v131.h, v10.h
	v_mov_b16_e64 v131.l, v129.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v131, 1, v131
	v_add3_u32 v129, v129, v131, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v131, v137
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v129.l, 0x7fff, v121.h, s2
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v121, v122
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v122.h, v10.h
	v_cndmask_b16 v128.h, 0x7fff, v129.h, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v131, v123, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v121, v123, v121
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v131, 0, v131, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v121, 0, v121, s4
	v_mov_b16_e64 v10.l, v131.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s3, v131, v131
	v_mov_b16_e32 v122.l, v121.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e32 vcc_lo, v121, v121
	v_and_b32_e32 v132, 1, v10
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v10.l, 4, v133.l
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
	v_cndmask_b16 v130.l, 0x7fff, v131.h, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v73.l, v132.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v132, -16, v10
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_mul_f32_e32 v122, v123, v122
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v129.h, 0x7fff, v121.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s3, v16, v16
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s7, 0, v73.l
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v73.l, v10.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v122, 0, v122, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v131, v10, v132, s7
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s7, v13, v13
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v10.l, v122.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s2, v122, v122
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v131, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v123, v123, v131 :: v_dual_and_b32 v132, 1, v10
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v122, v122, v132, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v121, 0, v123, s4
	v_cndmask_b16 v131.l, 0x7fff, v122.h, s2
	v_mov_b16_e32 v122.h, v10.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s2, v233, v233
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v122.l, v121.h
	v_cmp_o_f32_e32 vcc_lo, v121, v121
	v_and_b32_e32 v122, 1, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v121, v121, v122, 0x7fff
	v_cndmask_b16 v131.h, 0x7fff, v121.h, vcc_lo
	ds_store_b128 v162, v[124:127] offset:32
	ds_store_b128 v162, v[128:131] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v237, v164 offset:256
	ds_load_u16_d16 v236, v164
	ds_load_u16_d16 v238, v164 offset:512
	ds_load_u16_d16 v239, v164 offset:768
	ds_load_u16_d16 v240, v164 offset:1024
	ds_load_u16_d16 v242, v164 offset:1536
	ds_load_u16_d16 v243, v164 offset:1792
	ds_load_u16_d16 v241, v164 offset:1280
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
	ds_load_u16_d16_hi v241, v164 offset:1408
	ds_load_u16_d16_hi v238, v164 offset:640
	ds_load_u16_d16_hi v239, v164 offset:896
	ds_load_u16_d16_hi v240, v164 offset:1152
	ds_load_u16_d16 v126, v164 offset:1344
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v139, v164 offset:2752
	ds_load_u16_d16_hi v242, v164 offset:1664
	ds_load_u16_d16 v121, v164 offset:64
	ds_load_u16_d16_hi v237, v164 offset:384
	ds_load_u16_d16_hi v236, v164 offset:128
	ds_load_u16_d16 v123, v164 offset:576
	ds_load_u16_d16 v122, v164 offset:320
	ds_load_u16_d16_hi v243, v164 offset:1920
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
	ds_load_u16_d16_hi v121, v164 offset:192
	ds_load_u16_d16_hi v123, v164 offset:704
	ds_load_u16_d16_hi v122, v164 offset:448
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v134, v164 offset:3456
	ds_load_u16_d16_hi v141, v164 offset:3264
	ds_load_u16_d16_hi v143, v164 offset:3776
	ds_load_u16_d16_hi v142, v164 offset:3520
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[236:243], v[113:120], v[25:32]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v232, v232
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[33:40], v[121:128], v[113:120], v[33:40]
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v122.l, v10.h
	v_mov_b16_e32 v123.l, v10.h
	v_mov_b16_e32 v121.l, v10.h
	v_mov_b16_e32 v124.l, v10.h
	v_mov_b16_e32 v125.l, v10.h
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[129:136], v[105:112], v[25:32]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v130, v97, v97 :: v_dual_sub_f32 v129, v98, v98
	v_sub_f32_e32 v134, v85, v85
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[33:40], v[137:144], v[105:112], v[33:40]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v105, v232, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v98.l, v230.h
	v_mov_b16_e64 v97.l, v231.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v131, v88, v88 :: v_dual_sub_f32 v136, v83, v83
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v105, v232, v105, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v105.l, v10.h
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v88.l, v208.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v132, v87, v87
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v87.l, v209.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v105.h, 0x7fff, v105.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v133, v86, v86 :: v_dual_sub_f32 v138, v81, v81
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v86.l, v210.h
	v_mov_b16_e64 v85.l, v211.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v106, v232, v105
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v135, v84, v84
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v84.l, v212.h
	v_mov_b16_e64 v83.l, v213.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v137, v82, v82
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v107, v106, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v106, v106
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v82.l, v214.h
	v_mov_b16_e64 v81.l, v215.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v139, v96, v96 :: v_dual_sub_f32 v144, v91, v91
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v106, v106, v107, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v107, v233, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v96.l, v200.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v140, v95, v95
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v95.l, v202.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v10.l, 0x7fff, v106.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v107, v233, v107, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v107.l, v10.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v141, v94, v94
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v94.l, v201.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v142, v93, v93
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v107.h, 0x7fff, v107.h, s2
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v234, v105
	ds_store_b16_d16_hi v234, v107 offset:512
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v108, v233, v107
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v105, v13, 16, 1
	v_bfe_u32 v107, v12, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v93.l, v204.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v143, v92, v92
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v109, v108, 16, 1
	v_cmp_o_f32_e64 s2, v108, v108
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v105, v13, v105, 0x7fff
	v_add3_u32 v107, v12, v107, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v92.l, v203.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v108, v108, v109, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v109, v16, 16, 1
	v_cndmask_b16 v121.h, 0x7fff, v105.h, s7
	v_bfe_u32 v105, v11, 16, 1
	v_cmp_o_f32_e64 s7, v11, v11
	v_cndmask_b16 v123.h, 0x7fff, v107.h, s8
	v_add3_u32 v109, v16, v109, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v109.l, v10.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v105, v11, v105, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v13, v13, v121 :: v_dual_sub_f32 v12, v12, v123
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v109.h, 0x7fff, v109.h, s3
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v91.l, v206.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v122.h, 0x7fff, v105.h, s7
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v232, v90, v90
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v90.l, v205.h
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v16, v16, v109
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v176, v109
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v109, v14, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v11, v11, v122
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v233, v89, v89
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v110, v16, 16, 1
	v_cmp_o_f32_e64 s3, v16, v16
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v109, v14, v109, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v89.l, v207.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v16, v16, v110, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v110, v15, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v16.l, 0x7fff, v108.h, s2
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v124.h, 0x7fff, v109.h, s9
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s2, v12, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v110, v15, v110, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v14, v14, v124
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v125.h, 0x7fff, v110.h, s10
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v176, v121 offset:512
	ds_store_b16_d16_hi v177, v122
	ds_store_b16_d16_hi v177, v124 offset:512
	ds_store_b16_d16_hi v178, v123
	ds_store_b16_d16_hi v178, v125 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[113:116], v235
	ds_load_b128 v[117:120], v179
	ds_load_b128 v[105:108], v180
	ds_load_b128 v[109:112], v181
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v234, v10
	ds_store_b16 v234, v16 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v10.l, 0x7fff, v16.h, s3
	v_bfe_u32 v16, v11, 16, 1
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v15, v15, v125
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s3, v13, v13
	v_cmp_o_f32_e64 s7, v14, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v11, v11, v16, 0x7fff
	v_bfe_u32 v16, v12, 16, 1
	v_cmp_o_f32_e64 s8, v15, v15
	v_add3_u32 v12, v12, v16, 0x7fff
	v_bfe_u32 v16, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v13, v13, v16, 0x7fff
	v_bfe_u32 v16, v14, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v13.h, s3
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v14, v14, v16, 0x7fff
	v_bfe_u32 v16, v15, 16, 1
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	ds_store_b16 v176, v10
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v10.l, 0x7fff, v11.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v176, v11 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v11.l, 0x7fff, v14.h, s7
	v_add3_u32 v15, v15, v16, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v13, v102, v102 :: v_dual_sub_f32 v16, v99, v99
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v177, v10
	ds_store_b16 v177, v11 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v10.l, 0x7fff, v12.h, s2
	v_cndmask_b16 v11.l, 0x7fff, v15.h, s8
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v178, v10
	ds_store_b16 v178, v11 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[121:124], v235
	ds_load_b128 v[125:128], v179
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v11, v104, v104 :: v_dual_sub_f32 v12, v103, v103
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v104.l, v224.h
	v_mov_b16_e64 v103.l, v225.h
	v_mov_b16_e64 v102.l, v226.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v14, v101, v101
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v101.l, v227.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v15, v100, v100
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v100.l, v228.h
	v_mov_b16_e64 v99.l, v229.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e64 v10.l, v130.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[97:104], v[113:120], v[1:8]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[81:88], v[105:112], v[1:8]
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[97:104], v[121:128], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v97, v80, v80 :: v_dual_sub_f32 v102, v75, v75
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v80.l, v216.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v98, v79, v79
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v79.l, v218.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v99, v78, v78 :: v_dual_sub_f32 v104, v73, v73
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
	v_mov_b16_e64 v75.l, v222.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v103, v74, v74
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v74.l, v221.h
	v_mov_b16_e64 v73.l, v223.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[73:80], v[113:120], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[89:96], v[105:112], v[17:24]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[17:24], v[73:80], v[121:128], v[17:24]
	ds_load_b128 v[73:76], v180
	ds_load_b128 v[77:80], v181
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[81:88], v[73:80], v[1:8]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[89:96], v[73:80], v[17:24]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v78.h, v10.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v73, v231, v231
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v74.h, v10.h
	v_mov_b16_e32 v75.h, v10.h
	v_mov_b16_e32 v80.h, v10.h
	v_mov_b16_e32 v76.h, v10.h
	v_mov_b16_e32 v74.l, v73.h
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_mov_b16_e32 v77.h, v10.h
	v_mov_b16_e32 v79.h, v10.h
	v_mov_b16_e32 v81.h, v10.h
	v_and_b32_e32 v74, 1, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v73, v73, v74, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v74, v230, v230
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v73.l, 0x7fff, v73.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v75.l, v74.h
	v_cmp_o_f32_e64 s2, v74, v74
	v_cmp_o_f32_e32 vcc_lo, v130, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v75, 1, v75
	v_add3_u32 v74, v74, v75, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v75, v229, v229
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v74.l, 0x7fff, v74.h, s2
	v_mov_b16_e32 v76.l, v75.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s3, v75, v75
	v_cmp_o_f32_e64 s2, v129, v129
	v_and_b32_e32 v76, 1, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v75, v75, v76, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v76, v228, v228
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v75.l, 0x7fff, v75.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v77.l, v76.h
	v_cmp_o_f32_e64 s7, v76, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v77, 1, v77
	v_add3_u32 v76, v76, v77, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v77, v227, v227
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v76.l, 0x7fff, v76.h, s7
	v_mov_b16_e32 v78.l, v77.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s8, v77, v77
	v_and_b32_e32 v78, 1, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v77, v77, v78, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v78, v226, v226
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v77.l, 0x7fff, v77.h, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v79.l, v78.h
	v_cmp_o_f32_e64 s9, v78, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v79, 1, v79
	v_add3_u32 v78, v78, v79, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v79, v225, v225
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v78.l, 0x7fff, v78.h, s9
	v_mov_b16_e32 v80.l, v79.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s10, v79, v79
	v_and_b32_e32 v80, 1, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v79, v79, v80, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v80, v224, v224
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v79.l, 0x7fff, v79.h, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v81.l, v80.h
	v_cmp_o_f32_e64 s11, v80, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v81, 1, v81
	v_add3_u32 v80, v80, v81, 0x7fff
	v_and_b32_e32 v81, 1, v10
	v_mov_b16_e64 v10.l, v129.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v80.l, 0x7fff, v80.h, s11
	v_add3_u32 v81, v130, v81, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v82, 1, v10
	v_mov_b16_e32 v10.l, v16.h
	v_cndmask_b16 v73.h, 0x7fff, v81.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v82, v129, v82, 0x7fff
	v_and_b32_e32 v81, 1, v10
	v_mov_b16_e32 v10.l, v15.h
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v74.h, 0x7fff, v82.h, s2
	v_add3_u32 v16, v16, v81, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v81, 1, v10
	v_cmp_o_f32_e64 s2, v15, v15
	v_mov_b16_e32 v10.l, v14.h
	v_cndmask_b16 v75.h, 0x7fff, v16.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v15, v15, v81, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	v_mov_b16_e32 v16.h, v10.h
	v_cndmask_b16 v76.h, 0x7fff, v15.h, s2
	v_and_b32_e32 v15, 1, v10
	v_mov_b16_e32 v10.l, v13.h
	v_cmp_o_f32_e64 s2, v13, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v14, v14, v15, 0x7fff
	v_and_b32_e32 v15, 1, v10
	v_mov_b16_e32 v10.l, v12.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v77.h, 0x7fff, v14.h, vcc_lo
	v_add3_u32 v13, v13, v15, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	v_mov_b16_e32 v14.h, v10.h
	v_mov_b16_e32 v15.h, v10.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b16 v78.h, 0x7fff, v13.h, s2
	v_and_b32_e32 v13, 1, v10
	v_mov_b16_e32 v10.l, v11.h
	v_cmp_o_f32_e64 s2, v11, v11
	v_add3_u32 v12, v12, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v13, 1, v10
	v_mov_b16_e64 v10.l, v138.h
	v_cndmask_b16 v79.h, 0x7fff, v12.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v11, v11, v13, 0x7fff
	v_mov_b16_e32 v12.h, v10.h
	v_mov_b16_e32 v13.h, v10.h
	v_cndmask_b16 v80.h, 0x7fff, v11.h, s2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v223, v223
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[73:80], v[113:120], v[1:8]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v12.l, v11.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_mov_b16_e32 v74.h, v10.h
	v_mov_b16_e32 v73.h, v10.h
	v_mov_b16_e32 v75.h, v10.h
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v11, v11, v12, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v12, v221, v221
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v13.l, v12.h
	v_cmp_o_f32_e64 s2, v12, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v12, v12, v13, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v13, v222, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v14.l, v13.h
	v_cmp_o_f32_e64 s3, v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v14, 1, v14
	v_add3_u32 v13, v13, v14, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v14, v219, v219
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v15.l, v14.h
	v_cmp_o_f32_e64 s7, v14, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v15, 1, v15
	v_add3_u32 v14, v14, v15, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v15, v220, v220
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v76.l, 0x7fff, v14.h, s7
	v_mov_b16_e32 v16.l, v15.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s8, v15, v15
	v_and_b32_e32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v15, v15, v16, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v16, v217, v217
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v77.l, 0x7fff, v15.h, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v73.l, v16.h
	v_cmp_o_f32_e64 s9, v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v16, v16, v73, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v73, v218, v218
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v78.l, 0x7fff, v16.h, s9
	v_mov_b16_e32 v74.l, v73.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s10, v73, v73
	v_and_b32_e32 v74, 1, v74
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v73, v73, v74, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v74, v216, v216
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v73.l, 0x7fff, v11.h, vcc_lo
	v_and_b32_e32 v11, 1, v10
	v_mov_b16_e64 v10.l, v137.h
	v_cmp_o_f32_e32 vcc_lo, v104, v104
	v_mov_b16_e32 v75.l, v74.h
	v_cmp_o_f32_e64 s11, v74, v74
	v_cndmask_b16 v79.l, 0x7fff, v73.h, s10
	v_add3_u32 v11, v138, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v75, 1, v75
	v_add3_u32 v74, v74, v75, 0x7fff
	v_cndmask_b16 v74.l, 0x7fff, v12.h, s2
	v_and_b32_e32 v12, 1, v10
	v_mov_b16_e64 v10.l, v136.h
	v_cndmask_b16 v75.l, 0x7fff, v13.h, s3
	v_cmp_o_f32_e64 s2, v103, v103
	v_cndmask_b16 v80.l, 0x7fff, v74.h, s11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v13, 1, v10
	v_mov_b16_e64 v10.l, v135.h
	v_and_b32_e32 v14, 1, v10
	v_mov_b16_e64 v10.l, v134.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v15, 1, v10
	v_mov_b16_e64 v10.l, v133.h
	v_and_b32_e32 v16, 1, v10
	v_mov_b16_e64 v10.l, v132.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v81, 1, v10
	v_mov_b16_e64 v10.l, v131.h
	v_and_b32_e32 v82, 1, v10
	v_mov_b16_e32 v10.l, v104.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v83, 1, v10
	v_mov_b16_e32 v10.l, v103.h
	v_add3_u32 v83, v104, v83, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v84, 1, v10
	v_mov_b16_e32 v10.l, v102.h
	v_cndmask_b16 v73.h, 0x7fff, v83.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v84, v103, v84, 0x7fff
	v_and_b32_e32 v83, 1, v10
	v_mov_b16_e32 v10.l, v101.h
	v_cmp_o_f32_e32 vcc_lo, v102, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v74.h, 0x7fff, v84.h, s2
	v_add3_u32 v83, v102, v83, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v84, 1, v10
	v_mov_b16_e32 v10.l, v100.h
	v_cmp_o_f32_e64 s2, v101, v101
	v_cndmask_b16 v75.h, 0x7fff, v83.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v84, v101, v84, 0x7fff
	v_and_b32_e32 v83, 1, v10
	v_mov_b16_e32 v10.l, v99.h
	v_cmp_o_f32_e32 vcc_lo, v100, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v76.h, 0x7fff, v84.h, s2
	v_add3_u32 v83, v100, v83, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v84, 1, v10
	v_mov_b16_e32 v10.l, v98.h
	v_cmp_o_f32_e64 s2, v99, v99
	v_cndmask_b16 v77.h, 0x7fff, v83.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v84, v99, v84, 0x7fff
	v_and_b32_e32 v83, 1, v10
	v_mov_b16_e32 v10.l, v97.h
	v_cmp_o_f32_e32 vcc_lo, v98, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v78.h, 0x7fff, v84.h, s2
	v_add3_u32 v83, v98, v83, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v84, 1, v10
	v_cmp_o_f32_e64 s2, v97, v97
	v_mov_b16_e64 v10.l, v233.h
	v_cndmask_b16 v79.h, 0x7fff, v83.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v84, v97, v84, 0x7fff
	v_mov_b16_e32 v83.h, v10.h
	v_cndmask_b16 v80.h, 0x7fff, v84.h, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[17:24], v[73:80], v[113:120], v[17:24]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v73, v215, v215
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e32 v74.h, v10.h
	v_mov_b16_e32 v75.h, v10.h
	v_mov_b16_e32 v76.h, v10.h
	v_mov_b16_e32 v77.h, v10.h
	v_mov_b16_e32 v74.l, v73.h
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_mov_b16_e32 v78.h, v10.h
	v_mov_b16_e32 v79.h, v10.h
	v_mov_b16_e32 v80.h, v10.h
	v_and_b32_e32 v74, 1, v74
	v_add3_u32 v12, v137, v12, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v73, v73, v74, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v74, v214, v214
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v73.l, 0x7fff, v73.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v75.l, v74.h
	v_cmp_o_f32_e64 s2, v74, v74
	v_cmp_o_f32_e32 vcc_lo, v138, v138
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_b32_e32 v75, 1, v75
	v_cndmask_b16 v73.h, 0x7fff, v11.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v136, v136
	v_add3_u32 v11, v136, v13, 0x7fff
	v_add3_u32 v74, v74, v75, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v75, v213, v213
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v13.h, v10.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v74.l, 0x7fff, v74.h, s2
	v_mov_b16_e32 v76.l, v75.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s3, v75, v75
	v_cmp_o_f32_e64 s2, v137, v137
	v_and_b32_e32 v76, 1, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v74.h, 0x7fff, v12.h, s2
	v_cmp_o_f32_e64 s2, v135, v135
	v_add3_u32 v12, v135, v14, 0x7fff
	v_add3_u32 v75, v75, v76, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v76, v212, v212
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v14.h, v10.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v75.l, 0x7fff, v75.h, s3
	v_mov_b16_e32 v77.l, v76.h
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_o_f32_e64 s7, v76, v76
	v_cndmask_b16 v75.h, 0x7fff, v11.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v134, v134
	v_add3_u32 v11, v134, v15, 0x7fff
	v_and_b32_e32 v77, 1, v77
	v_mov_b16_e32 v15.h, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v76, v76, v77, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v77, v211, v211
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v76.l, 0x7fff, v76.h, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v78.l, v77.h
	v_cmp_o_f32_e64 s8, v77, v77
	v_cndmask_b16 v76.h, 0x7fff, v12.h, s2
	v_cmp_o_f32_e64 s2, v133, v133
	v_add3_u32 v12, v133, v16, 0x7fff
	v_and_b32_e32 v78, 1, v78
	v_mov_b16_e32 v16.h, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v77, v77, v78, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v78, v210, v210
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v77.l, 0x7fff, v77.h, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v79.l, v78.h
	v_cmp_o_f32_e64 s9, v78, v78
	v_cndmask_b16 v77.h, 0x7fff, v11.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v132, v132
	v_add3_u32 v11, v132, v81, 0x7fff
	v_and_b32_e32 v79, 1, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v78, v78, v79, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v79, v209, v209
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v78.l, 0x7fff, v78.h, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v80.l, v79.h
	v_cmp_o_f32_e64 s10, v79, v79
	v_cndmask_b16 v78.h, 0x7fff, v12.h, s2
	v_cmp_o_f32_e64 s2, v131, v131
	v_add3_u32 v12, v131, v82, 0x7fff
	v_and_b32_e32 v80, 1, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v79, v79, v80, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v80, v208, v208
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v79.l, 0x7fff, v79.h, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v83.l, v80.h
	v_cmp_o_f32_e64 s11, v80, v80
	v_cndmask_b16 v79.h, 0x7fff, v11.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v207, v207
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v83, 1, v83
	v_mov_b16_e32 v12.l, v11.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_add3_u32 v80, v80, v83, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v80.l, 0x7fff, v80.h, s11
	v_cndmask_b16 v80.h, 0x7fff, v12.h, s2
	v_mov_b16_e32 v12.h, v10.h
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[73:80], v[105:112], v[1:8]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v12, 1, v12
	v_mov_b16_e32 v73.h, v10.h
	v_mov_b16_e32 v74.h, v10.h
	v_mov_b16_e32 v75.h, v10.h
	v_add3_u32 v11, v11, v12, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v12, v205, v205
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v13.l, v12.h
	v_cmp_o_f32_e64 s2, v12, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v12, v12, v13, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v13, v206, v206
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v14.l, v13.h
	v_cmp_o_f32_e64 s3, v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v14, 1, v14
	v_add3_u32 v13, v13, v14, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v14, v203, v203
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v15.l, v14.h
	v_cmp_o_f32_e64 s7, v14, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v15, 1, v15
	v_add3_u32 v14, v14, v15, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v15, v204, v204
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v76.l, 0x7fff, v14.h, s7
	v_mov_b16_e32 v16.l, v15.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s8, v15, v15
	v_cmp_o_f32_e64 s7, v140, v140
	v_and_b32_e32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v15, v15, v16, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v16, v201, v201
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v77.l, 0x7fff, v15.h, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v73.l, v16.h
	v_cmp_o_f32_e64 s9, v16, v16
	v_cmp_o_f32_e64 s8, v139, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v16, v16, v73, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v73, v202, v202
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v78.l, 0x7fff, v16.h, s9
	v_mov_b16_e32 v74.l, v73.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s10, v73, v73
	v_and_b32_e32 v74, 1, v74
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v73, v73, v74, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v74, v200, v200
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v73.l, 0x7fff, v11.h, vcc_lo
	v_and_b32_e32 v11, 1, v10
	v_cmp_o_f32_e32 vcc_lo, v233, v233
	v_mov_b16_e64 v10.l, v232.h
	v_mov_b16_e32 v75.l, v74.h
	v_cndmask_b16 v79.l, 0x7fff, v73.h, s10
	v_add3_u32 v11, v233, v11, 0x7fff
	v_cmp_o_f32_e64 s11, v74, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v75, 1, v75
	v_cndmask_b16 v73.h, 0x7fff, v11.h, vcc_lo
	v_and_b32_e32 v11, 1, v10
	v_mov_b16_e64 v10.l, v144.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v74, v74, v75, 0x7fff
	v_cndmask_b16 v74.l, 0x7fff, v12.h, s2
	v_cmp_o_f32_e32 vcc_lo, v232, v232
	v_add3_u32 v11, v232, v11, 0x7fff
	v_and_b32_e32 v12, 1, v10
	v_mov_b16_e64 v10.l, v143.h
	v_cndmask_b16 v80.l, 0x7fff, v74.h, s11
	v_cmp_o_f32_e64 s2, v144, v144
	v_cndmask_b16 v74.h, 0x7fff, v11.h, vcc_lo
	v_add3_u32 v12, v144, v12, 0x7fff
	v_and_b32_e32 v11, 1, v10
	v_mov_b16_e64 v10.l, v142.h
	v_cndmask_b16 v75.l, 0x7fff, v13.h, s3
	v_cmp_o_f32_e32 vcc_lo, v143, v143
	v_cndmask_b16 v75.h, 0x7fff, v12.h, s2
	v_add3_u32 v11, v143, v11, 0x7fff
	v_and_b32_e32 v12, 1, v10
	v_mov_b16_e64 v10.l, v141.h
	v_cmp_o_f32_e64 s2, v142, v142
	v_cmp_o_f32_e64 s3, v141, v141
	v_cndmask_b16 v76.h, 0x7fff, v11.h, vcc_lo
	v_add3_u32 v12, v142, v12, 0x7fff
	v_and_b32_e32 v13, 1, v10
	v_mov_b16_e64 v10.l, v140.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v77.h, 0x7fff, v12.h, s2
	v_add3_u32 v13, v141, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v14, 1, v10
	v_mov_b16_e64 v10.l, v139.h
	.loc	1 607 13 is_stmt 1              ; attention_backward.py:607:13
	s_add_i32 s2, s19, 32
	s_cmpk_lt_u32 s19, 0x7e0
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v78.h, 0x7fff, v13.h, s3
	v_add3_u32 v14, v140, v14, 0x7fff
	v_and_b32_e32 v10, 1, v10
	s_mov_b32 s19, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v79.h, 0x7fff, v14.h, s7
	v_add3_u32 v10, v139, v10, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v80.h, 0x7fff, v10.h, s8
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[17:24], v[73:80], v[105:112], v[17:24]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc1 .LBB0_4
	s_branch .LBB0_1
.LBB0_5:
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_or_b32_e32 v10, s22, v159
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, s21, v159
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v9, v156, v161
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s5, s43, 0xffff
	s_mov_b32 s7, 0x31027000
	.loc	1 753 13                        ; attention_backward.py:753:13
	s_waitcnt lgkmcnt(7)
	v_mul_lo_u32 v43, s44, v10
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s2, s44, v9
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
	s_mov_b32 s4, s42
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
	v_cmp_gt_i32_e64 s3, s44, v0
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
	v_mul_lo_u32 v10, s46, v10
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
	v_cmp_gt_i32_e64 s0, s46, v9
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
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s50, s6
	s_mov_b32 s51, s7
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v40, v25, s[4:7], 0 offen
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v1, v9, s[48:51], 0 offen
	v_add_lshl_u32 v1, v10, v48, 2
	v_cndmask_b32_e64 v9, 0x80000000, v26, s0
	v_add_lshl_u32 v25, v10, v47, 2
	v_add_lshl_u32 v26, v10, v46, 2
	v_add_lshl_u32 v27, v10, v45, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	buffer_store_b32 v2, v9, s[48:51], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v25, s0
	v_cndmask_b32_e64 v9, 0x80000000, v26, s0
	v_cndmask_b32_e64 v25, 0x80000000, v27, s0
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s1, s46, v0
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v3, v1, s[48:51], 0 offen
	v_add_lshl_u32 v1, v10, v44, 2
	s_clause 0x2
	buffer_store_b32 v4, v2, s[48:51], 0 offen
	buffer_store_b32 v5, v9, s[48:51], 0 offen
	buffer_store_b32 v6, v25, s[48:51], 0 offen
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
	buffer_store_b32 v7, v1, s[48:51], 0 offen
	buffer_store_b32 v8, v2, s[48:51], 0 offen
	buffer_store_b32 v17, v0, s[48:51], 0 offen
	buffer_store_b32 v18, v3, s[48:51], 0 offen
	buffer_store_b32 v19, v4, s[48:51], 0 offen
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
	buffer_store_b32 v20, v0, s[48:51], 0 offen
	buffer_store_b32 v21, v1, s[48:51], 0 offen
	buffer_store_b32 v22, v2, s[48:51], 0 offen
	buffer_store_b32 v23, v3, s[48:51], 0 offen
	buffer_store_b32 v24, v4, s[48:51], 0 offen
	.loc	1 451 5                         ; attention_backward.py:451:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 244
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 60
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15780
; TotalNumSgprs: 62
; NumVgprs: 244
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 62
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 0
    .sgpr_count:     62
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
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
