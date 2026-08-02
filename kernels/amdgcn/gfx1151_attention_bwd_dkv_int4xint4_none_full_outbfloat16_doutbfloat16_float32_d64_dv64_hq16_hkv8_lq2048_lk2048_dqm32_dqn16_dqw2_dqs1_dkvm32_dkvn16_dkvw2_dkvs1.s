	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	.loc	1 514 33 prologue_end           ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v2, 2, v0
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v40, 7, v0
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_and_b32_e32 v31, 3, v0
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s33, s2, 4
	.loc	1 521 24                        ; attention_backward.py:521:24
	s_lshl_b32 s5, s3, 11
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v4, s33, v2
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_add_i32 s34, s5, s33
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_lshlrev_b32_e32 v1, 3, v31
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_or_b32_e32 v3, s34, v2
	s_mov_b32 s23, 0x31027000
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_and_b32_e32 v41, 48, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_u32 v155, v0, 4, 1
	s_load_b128 s[8:11], s[0:1], 0x20
	v_lshrrev_b32_e32 v6, 3, v0
	.loc	1 541 32                        ; attention_backward.py:541:32
	s_ashr_i32 s6, s33, 1
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[2:3], null, s45, v3, v[1:2]
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_cmp_gt_i32_e64 s4, s45, v1
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_and_b32 s21, s27, 0xffff
	s_mov_b32 s20, s26
	v_lshrrev_b32_e32 v7, 1, v41
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_or_b32_e32 v4, s5, v155
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_dual_cndmask_b32 v1, 0x80000000, v2 :: v_dual_lshlrev_b32 v42, 3, v0
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v5, s33, v155
	.loc	1 543 26                        ; attention_backward.py:543:26
	s_lshl_b32 s4, s3, 10
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_add_lshl_u32 v4, v4, s33, 1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xad_u32 v7, v42, v7, 0
	buffer_load_b64 v[1:2], v1, s[20:23], 0 offen
	.loc	1 545 17                        ; attention_backward.py:545:17
	s_add_i32 s4, s6, s4
	.loc	1 541 32                        ; attention_backward.py:541:32
	v_or_b32_e32 v8, s6, v6
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_lshlrev_b32_e32 v3, 3, v40
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_or_b32_e32 v9, s4, v6
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s12, 0x800, v5
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_or_b32_e32 v10, 4, v4
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_bfe_i32 s2, s2, 0x1001b
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_or_b32_e32 v11, 8, v4
	v_or_b32_e32 v12, 12, v4
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_lshr_b32 s2, s2, 28
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_or_b32_e32 v13, 16, v4
	.loc	1 549 23                        ; attention_backward.py:549:23
	v_cmp_gt_i32_e32 vcc_lo, 0x400, v8
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v8, 0x80000000, v4, s12
	v_or_b32_e32 v14, 20, v4
	v_or_b32_e32 v15, 24, v4
	v_or_b32_e32 v16, 28, v4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_mad_u64_u32 v[4:5], null, s46, v9, v[3:4]
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v5, 0x80000000, v10, s12
	v_cndmask_b32_e64 v9, 0x80000000, v11, s12
	v_cndmask_b32_e64 v10, 0x80000000, v12, s12
	s_and_b32 s21, s9, 0xffff
	s_mov_b32 s20, s8
	v_cndmask_b32_e64 v11, 0x80000000, v13, s12
	v_cndmask_b32_e64 v12, 0x80000000, v14, s12
	v_cndmask_b32_e64 v13, 0x80000000, v15, s12
	v_cndmask_b32_e64 v14, 0x80000000, v16, s12
	v_mov_b32_e32 v16, v17
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s6, s46, v3
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v44, 16, v0
	s_clause 0x1
	s_load_b64 s[48:49], s[0:1], 0x58
	s_load_b256 s[36:43], s[0:1], 0x38
	.loc	1 549 22                        ; attention_backward.py:549:22
	s_and_b32 s4, vcc_lo, s6
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v43, 56, v0
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_and_b32_e32 v47, 32, v0
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshlrev_b32_e32 v49, 1, v0
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cmp_eq_u32_e64 s0, 0, v44
	v_lshlrev_b32_e32 v44, 2, v44
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_mov_b16_e32 v30.l, 0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_i32 v45, v0, 4, 1
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v46, 1, v0
	v_bfe_i32 v48, v0, 5, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_bfe_i32 v60, v0, 3, 1
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v38.h, v30.l
	v_mov_b16_e32 v51.h, v30.l
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_and_b32_e32 v45, 0x440, v45
	v_dual_mov_b32 v27, v17 :: v_dual_and_b32 v48, 0x420, v48
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v53.h, v30.l
	v_dual_mov_b32 v29, v17 :: v_dual_and_b32 v68, 0x240, v60
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_lshlrev_b32_e32 v59, 4, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v48, 0x210, v60, v48
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v54.h, v30.l
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_and_b32_e32 v50, 1, v0
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v55.l, v30.l
	v_mov_b16_e32 v56.l, v30.l
	v_mov_b16_e32 v57.l, v30.l
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v52.h, v30.l
	v_mov_b16_e32 v58.h, v30.l
	s_and_b32 s31, s31, 0xffff
	s_waitcnt lgkmcnt(0)
	s_and_b32 s39, s39, 0xffff
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s51, 0
	s_mov_b32 s60, -1
	s_mov_b32 s54, s22
	s_mov_b32 s55, s23
	s_mov_b32 s58, s22
	s_mov_b32 s59, s23
	s_and_b32 s25, s25, 0xffff
	s_and_b32 s37, s37, 0xffff
	.loc	1 605 9                         ; attention_backward.py:605:9
	s_lshl_b32 s35, s46, 6
	s_lshl_b32 s50, s45, 5
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s52, s38
	s_mov_b32 s56, s40
	s_mov_b32 s38, s22
	s_mov_b32 s53, s39
	s_mov_b32 s57, s41
	s_mov_b32 s39, s23
	v_and_b32_e32 v42, 48, v42
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_and_b32_e32 v64, 0x440, v60
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v156, 15, v0
	v_lshlrev_b32_e32 v0, 6, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshlrev_b32_e32 v69, 1, v156
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_lshlrev_b32_e32 v65, 4, v156
	v_lshl_or_b32 v164, v156, 6, v42
	v_xor_b32_e32 v45, v45, v65
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt vmcnt(0)
	ds_store_b64 v7, v[1:2]
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v1, s33, v6
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_clause 0x7
	buffer_load_u16 v39, v8, s[20:23], 0 offen
	buffer_load_u16 v32, v5, s[20:23], 0 offen
	buffer_load_u16 v33, v9, s[20:23], 0 offen
	buffer_load_u16 v34, v10, s[20:23], 0 offen
	buffer_load_u16 v35, v11, s[20:23], 0 offen
	buffer_load_u16 v36, v12, s[20:23], 0 offen
	buffer_load_u16 v37, v13, s[20:23], 0 offen
	buffer_load_u16 v24, v14, s[20:23], 0 offen
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v2, s2, v1
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, 0x800, v1
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_and_b32 s21, s29, 0xffff
	s_mov_b32 s20, s28
	v_mov_b32_e32 v10, v17
	.loc	1 570 20                        ; attention_backward.py:570:20
	v_ashrrev_i32_e32 v2, 4, v2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s2, s2, s6
	.loc	1 544 28                        ; attention_backward.py:544:28
	buffer_load_b64 v[22:23], v4, s[20:23], 0 offen
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_and_b32 s21, s11, 0xffff
	s_mov_b32 s20, s10
	.loc	1 568 17                        ; attention_backward.py:568:17
	v_lshl_add_u32 v2, s3, 7, v2
	v_dual_mov_b32 v4, v17 :: v_dual_lshlrev_b32 v31, 4, v31
	v_mov_b32_e32 v6, v17
	v_dual_mov_b32 v26, v17 :: v_dual_and_b32 v61, 24, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v2, v2, s46
	v_or3_b32 v161, v69, v44, v47
	v_mov_b32_e32 v7, v17
	v_dual_mov_b32 v5, v17 :: v_dual_lshlrev_b32 v66, 3, v47
	v_mov_b32_e32 v8, v17
	v_dual_mov_b32 v28, v17 :: v_dual_and_b32 v63, 0x370, v59
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_add_lshl_u32 v1, v2, v3, 1
	v_mov_b32_e32 v2, v17
	v_xor_b32_e32 v31, v31, v43
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshlrev_b32_e32 v67, 1, v43
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v70, 1, v43
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_lshl_add_u32 v71, v43, 6, 0
	v_lshl_or_b32 v167, v40, 9, v31
	v_lshl_or_b32 v43, v40, 6, v42
	v_mov_b32_e32 v3, v17
	buffer_load_b128 v[18:21], v1, s[20:23], 0 offen
	v_mov_b32_e32 v1, 0
	s_lshl_b32 s21, s3, 12
	v_mov_b32_e32 v14, v17
	.loc	1 607 13                        ; attention_backward.py:607:13
	v_or_b32_e32 v159, s21, v46
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshl_or_b32 v46, v156, 5, v61
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_xad_u32 v61, v64, v63, 0
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v158, 1, v47
	v_and_or_b32 v49, v49, 30, v155
	v_add3_u32 v162, 0, v47, v69
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v42, 0, v46
	v_xad_u32 v44, v46, 8, 0
	v_xor_b32_e32 v31, 0x90, v161
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_add3_u32 v60, 0, v66, v45
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xad_u32 v45, v46, 16, 0
	v_xad_u32 v46, v46, 24, 0
	ds_load_b64 v[145:146], v42
	ds_load_b64 v[147:148], v44
	ds_load_b64 v[149:150], v45
	ds_load_b64 v[151:152], v46
	v_xor_b32_e32 v168, v48, v43
	v_xor_b32_e32 v43, 16, v164
	v_xor_b32_e32 v48, 48, v164
	v_mov_b32_e32 v11, v17
	v_dual_mov_b32 v15, v17 :: v_dual_lshlrev_b32 v62, 5, v50
	v_lshlrev_b32_e32 v163, 2, v49
	v_add_nc_u32_e32 v174, 0, v43
	v_xor_b32_e32 v43, 16, v168
	v_mov_b32_e32 v13, v17
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v59, v59, v67, 0
	.loc	1 607 13                        ; attention_backward.py:607:13
	v_or_b32_e32 v165, s21, v70
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s1, s44, v62
	.loc	1 575 27                        ; attention_backward.py:575:27
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v12, v17
	.loc	1 607 13                        ; attention_backward.py:607:13
	v_or3_b32 v202, s21, v158, v156
	v_or_b32_e32 v203, 3, v165
	v_or_b32_e32 v204, 2, v165
	v_or_b32_e32 v205, 1, v165
	.loc	1 641 25                        ; attention_backward.py:641:25
	s_mul_f32 s28, s47, 0x3fb8aa3b
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_lshl_b32 s29, s46, 1
	s_mov_b32 s21, s31
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v193, 16, v39
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v194, 16, v32
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v195, 16, v33
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v196, 16, v34
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v197, 16, v35
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v198, 16, v36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v199, 16, v37
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v200, 16, v24
	.loc	1 554 72                        ; attention_backward.py:554:72
	s_waitcnt vmcnt(1)
	v_and_b16 v30.h, v22.h, 15
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b32_e32 v44, 8, v23
	v_lshrrev_b32_e32 v42, 8, v22
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v46, v22, 16, 4
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v39.h, 4, v23.l
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v30.h
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b32_e32 v45, 24, v23
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v38.l, v23.h, 15
	v_and_b16 v39.l, v23.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v58.l, v39.h, 15
	s_delay_alu instid0(VALU_DEP_4)
	v_lshrrev_b16 v53.l, 4, v45.l
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v30.h, v18.l
	v_add_nc_u32_e32 v171, 0, v31
	v_xor_b32_e32 v31, 0x90, v167
	v_mov_b16_e32 v57.h, v21.l
	v_and_b32_e32 v21, 0xffff0000, v21
	v_and_b32_e32 v18, 0xffff0000, v18
	v_add_nc_u32_e32 v176, 0, v48
	v_add_nc_u32_e32 v177, 0, v31
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v31.h, 4, v22.l
	v_xor_b32_e32 v48, 48, v168
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v56.h, v20.l
	v_and_b32_e32 v20, 0xffff0000, v20
	v_mov_b16_e32 v55.h, v19.l
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v52.l, v31.h, 15
	v_lshrrev_b16 v31.h, 4, v44.l
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_and_b32_e32 v19, 0xffff0000, v19
	v_add_nc_u32_e32 v180, 0, v43
	v_add_nc_u32_e32 v182, 0, v48
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_alignbit_b32 v43, v23, v22, 24
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v54.l, v31.h, 15
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshlrev_b32_e32 v157, 4, v40
	v_xor_b32_e32 v40, 0x120, v161
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v31.l, v22.l, 15
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v48, 15, v22
	v_and_b32_e32 v43, 15, v43
	v_lshl_or_b32 v41, v41, 6, v157
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshl_or_b32 v63, v156, 7, v157
	v_add_nc_u32_e32 v172, 0, v40
	v_xor_b32_e32 v40, 0x120, v167
	v_add_nc_u32_e32 v166, v71, v157
	v_xor_b32_e32 v169, v41, v68
	v_xor_b32_e32 v41, 0x1b0, v161
	v_lshl_or_b32 v170, v47, 6, v63
	v_xor_b32_e32 v47, 32, v164
	v_add_nc_u32_e32 v178, 0, v40
	v_xor_b32_e32 v49, 0x90, v169
	v_add_nc_u32_e32 v173, 0, v41
	v_xor_b32_e32 v41, 0x1b0, v167
	v_add_nc_u32_e32 v175, 0, v47
	v_xor_b32_e32 v47, 32, v168
	v_xor_b32_e32 v73, 48, v170
	v_xor_b32_e32 v77, 0x70, v170
	v_add_nc_u32_e32 v179, 0, v41
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b64 v[40:41], 24, v[22:23]
	v_add_nc_u32_e32 v181, 0, v47
	v_add_nc_u32_e32 v183, 0, v49
	v_add_nc_u32_e32 v188, 0, v73
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v47, v22, 8, 4
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_bfe_u32 v49, v22, 20, 4
	v_bfe_u32 v73, v23, 20, 4
	v_add_nc_u32_e32 v160, 0, v0
	.loc	1 620 52                        ; attention_backward.py:620:52
	v_lshlrev_b32_e32 v0, 4, v50
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v50, 16, v62
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v41, -16, v46
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v22.l, v42.l, 15
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_add_nc_u32_e32 v64, 0, v63
	v_xad_u32 v65, v63, 16, 0
	v_xad_u32 v66, v63, 32, 0
	v_xad_u32 v67, v63, 48, 0
	v_xad_u32 v69, v63, 64, 0
	v_xad_u32 v70, 0x50, v63, 0
	v_xad_u32 v71, 0x60, v63, 0
	v_xad_u32 v72, 0x70, v63, 0
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s4, s44, v50
	v_xor_b32_e32 v50, 0x120, v169
	v_xor_b32_e32 v62, 0x1b0, v169
	v_xor_b32_e32 v63, 16, v170
	v_xor_b32_e32 v68, 32, v170
	v_xor_b32_e32 v74, 64, v170
	v_add_nc_u32_e32 v192, 0, v77
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v77, -16, v47
	.loc	1 557 25 is_stmt 0              ; attention_backward.py:557:25
	v_cndmask_b32_e64 v41, v46, v41, s2
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v22.l
	v_add_nc_u32_e32 v184, 0, v50
	v_add_nc_u32_e32 v185, 0, v62
	v_add_nc_u32_e32 v186, 0, v63
	v_add_nc_u32_e32 v187, 0, v68
	v_add_nc_u32_e32 v189, 0, v74
	.loc	1 555 25 is_stmt 1              ; attention_backward.py:555:25
	v_bfe_u32 v50, v23, 24, 4
	v_bfe_u32 v62, v23, 16, 4
	v_bfe_u32 v63, v23, 8, 4
	v_and_b32_e32 v68, 15, v23
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v74, -16, v48
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v23.l, v45.l, 15
	v_and_b16 v23.h, v44.l, 15
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v44, v47, v77, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v31.l
	v_xor_b32_e32 v75, 0x50, v170
	.loc	1 556 28 is_stmt 1              ; attention_backward.py:556:28
	v_lshrrev_b16 v22.h, 4, v42.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v42, -16, v50
	v_xor_b32_e32 v76, 0x60, v170
	.loc	1 557 25 is_stmt 0              ; attention_backward.py:557:25
	v_cndmask_b32_e64 v46, v48, v74, s2
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v23.l
	v_add_nc_u32_e32 v190, 0, v75
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v75, -16, v62
	.loc	1 556 28 is_stmt 1              ; attention_backward.py:556:28
	v_and_b16 v51.l, v22.h, 15
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v45, -16, v63
	.loc	1 557 25 is_stmt 0              ; attention_backward.py:557:25
	v_cndmask_b32_e64 v22, v50, v42, s2
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v38.l
	v_add_nc_u32_e32 v191, 0, v76
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v76, -16, v68
	.loc	1 554 72 is_stmt 1              ; attention_backward.py:554:72
	v_and_b16 v39.h, v40.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v40.l, 4, v40.l
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v42, v62, v75, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v23.h
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e32 v48, 0, v53, vcc_lo
	v_cndmask_b32_e32 v50, 0, v54, vcc_lo
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v38.l, v40.l, 15
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v40, v44
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v23, v63, v45, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v39.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v45, -16, v43
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v63, -16, v50
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v44, v23
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v47, v68, v76, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v39.h
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v39, v46
	v_cvt_f32_i32_e32 v46, v22
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_dual_cndmask_b32 v22, 0, v38 :: v_dual_cndmask_b32 v23, 0, v49
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v31, v43, v45, s2
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v43, v47
	v_cvt_f32_i32_e32 v45, v42
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_dual_cndmask_b32 v38, 0, v51 :: v_dual_cndmask_b32 v47, 0, v52
	v_cndmask_b32_e32 v49, 0, v73, vcc_lo
	v_cndmask_b32_e32 v51, 0, v58, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v42, v31
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v31, -16, v22
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v22
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v52, -16, v23
	v_or_b32_e32 v53, -16, v38
	v_or_b32_e32 v54, -16, v47
	v_or_b32_e32 v58, -16, v48
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v22, v22, v31, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v23
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v62, -16, v49
	v_or_b32_e32 v68, -16, v51
	.loc	1 620 52 is_stmt 1              ; attention_backward.py:620:52
	v_cmp_gt_i32_e64 s5, s45, v0
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v23, v23, v52, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v38
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v31, v38, v53, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v47
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v38, v47, v54, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v47, v38
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v52, v48, v58, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v49
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v48, v31
	v_xor_b32_e32 v201, 4, v163
	v_cvt_f32_i32_e32 v54, v52
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v53, v49, v62, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v50
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v49, v23
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v53, v53
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v58, v50, v63, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v51
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v50, v22
	ds_store_b128 v61, v[39:42]
	ds_store_b128 v61, v[47:50] offset:128
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v51, v51, v68, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v52, v58
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[38:41], v60
	ds_load_b128 v[47:50], v60 offset:512
	v_cvt_f32_i32_e32 v51, v51
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v61, v[43:46]
	ds_store_b128 v61, v[51:54] offset:128
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[42:45], v60
	ds_load_b128 v[31:34], v60 offset:512
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v22, v38, v30
	v_mul_f32_e32 v23, v39, v18
	v_mul_f32_e32 v35, v40, v55
	v_mul_f32_e32 v36, v41, v19
	v_mul_f32_e32 v30, v47, v30
	v_dual_mul_f32 v18, v48, v18 :: v_dual_mul_f32 v41, v49, v55
	v_mul_f32_e32 v19, v50, v19
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v37, v42, v56
	v_dual_mul_f32 v38, v43, v20 :: v_dual_mul_f32 v39, v44, v57
	v_dual_mul_f32 v40, v45, v21 :: v_dual_mul_f32 v31, v31, v56
	v_mul_f32_e32 v20, v32, v20
	v_mul_f32_e32 v32, v33, v57
	v_mul_f32_e32 v21, v34, v21
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_bfe_u32 v33, v22, 16, 1
	v_bfe_u32 v34, v23, 16, 1
	v_bfe_u32 v42, v35, 16, 1
	v_bfe_u32 v43, v36, 16, 1
	v_bfe_u32 v44, v37, 16, 1
	v_bfe_u32 v45, v38, 16, 1
	v_bfe_u32 v46, v39, 16, 1
	v_bfe_u32 v47, v40, 16, 1
	v_bfe_u32 v48, v30, 16, 1
	v_bfe_u32 v49, v18, 16, 1
	v_bfe_u32 v50, v41, 16, 1
	v_bfe_u32 v51, v19, 16, 1
	v_bfe_u32 v52, v31, 16, 1
	v_bfe_u32 v53, v20, 16, 1
	v_bfe_u32 v54, v32, 16, 1
	v_bfe_u32 v55, v21, 16, 1
	v_cmp_o_f32_e64 s2, v23, v23
	v_cmp_o_f32_e64 s3, v35, v35
	v_cmp_o_f32_e64 s7, v36, v36
	v_cmp_o_f32_e64 s8, v37, v37
	v_cmp_o_f32_e64 s9, v38, v38
	v_cmp_o_f32_e64 s10, v39, v39
	v_cmp_o_f32_e64 s11, v40, v40
	v_add3_u32 v22, v22, v33, 0x7fff
	v_add3_u32 v23, v23, v34, 0x7fff
	v_add3_u32 v33, v35, v42, 0x7fff
	v_add3_u32 v34, v36, v43, 0x7fff
	v_add3_u32 v35, v37, v44, 0x7fff
	v_add3_u32 v36, v38, v45, 0x7fff
	v_add3_u32 v37, v39, v46, 0x7fff
	v_add3_u32 v38, v40, v47, 0x7fff
	v_cmp_o_f32_e64 s13, v30, v30
	v_cmp_o_f32_e64 s14, v18, v18
	v_cmp_o_f32_e64 s15, v41, v41
	v_cmp_o_f32_e64 s16, v19, v19
	v_cmp_o_f32_e64 s17, v31, v31
	v_cmp_o_f32_e64 s18, v20, v20
	v_cmp_o_f32_e64 s19, v32, v32
	v_cmp_o_f32_e64 s20, v21, v21
	v_add3_u32 v30, v30, v48, 0x7fff
	v_add3_u32 v39, v18, v49, 0x7fff
	v_add3_u32 v40, v41, v50, 0x7fff
	v_add3_u32 v41, v19, v51, 0x7fff
	v_add3_u32 v42, v31, v52, 0x7fff
	v_add3_u32 v43, v20, v53, 0x7fff
	v_add3_u32 v44, v32, v54, 0x7fff
	v_add3_u32 v45, v21, v55, 0x7fff
	v_cndmask_b16 v18.l, 0x7fff, v22.h, vcc_lo
	v_cndmask_b16 v18.h, 0x7fff, v23.h, s2
	v_cndmask_b16 v19.l, 0x7fff, v33.h, s3
	v_cndmask_b16 v19.h, 0x7fff, v34.h, s7
	v_cndmask_b16 v20.l, 0x7fff, v35.h, s8
	v_cndmask_b16 v20.h, 0x7fff, v36.h, s9
	v_cndmask_b16 v21.l, 0x7fff, v37.h, s10
	v_cndmask_b16 v21.h, 0x7fff, v38.h, s11
	v_cndmask_b16 v30.l, 0x7fff, v30.h, s13
	v_cndmask_b16 v30.h, 0x7fff, v39.h, s14
	v_cndmask_b16 v31.l, 0x7fff, v40.h, s15
	v_cndmask_b16 v31.h, 0x7fff, v41.h, s16
	v_cndmask_b16 v32.l, 0x7fff, v42.h, s17
	v_cndmask_b16 v32.h, 0x7fff, v43.h, s18
	v_cndmask_b16 v33.l, 0x7fff, v44.h, s19
	v_cndmask_b16 v33.h, 0x7fff, v45.h, s20
	.loc	1 717 21 is_stmt 1              ; attention_backward.py:717:21
	ds_store_b128 v59, v[18:21]
	ds_store_b128 v59, v[30:33] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v64
	ds_load_b128 v[45:48], v65
	ds_load_b128 v[49:52], v66
	ds_load_b128 v[53:56], v67
	ds_load_b128 v[57:60], v69
	ds_load_b128 v[61:64], v70
	ds_load_b128 v[65:68], v71
	ds_load_b128 v[69:72], v72
	v_mov_b32_e32 v30, v17
	v_mov_b32_e32 v31, v17
	v_dual_mov_b32 v32, v17 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v34, v17
	v_mov_b32_e32 v35, v17
	v_mov_b32_e32 v36, v17
	v_mov_b32_e32 v37, v17
	v_mov_b32_e32 v38, v17
	v_mov_b32_e32 v39, v17
	v_mov_b32_e32 v40, v17
	s_mov_b32 s20, s30
.LBB0_1:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_2 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	v_add_nc_u32_e32 v18, s51, v159
	v_dual_mov_b32 v212, v157 :: v_dual_add_nc_u32 v19, s51, v203
	v_add_nc_u32_e32 v20, s51, v204
	v_add_nc_u32_e32 v21, s51, v205
	v_add_nc_u32_e32 v22, s51, v165
	v_add_nc_u32_e32 v23, s51, v202
	v_mul_lo_u32 v207, s29, v19
	v_mul_lo_u32 v208, s29, v20
	v_mul_lo_u32 v209, s29, v21
	v_mul_lo_u32 v210, s29, v22
	v_mad_u64_u32 v[153:154], null, s45, v18, v[0:1]
	v_lshlrev_b32_e32 v206, 1, v18
	v_lshlrev_b32_e32 v154, 2, v23
	v_lshlrev_b32_e32 v211, 1, v23
	s_xor_b32 s17, s60, -1
	s_movk_i32 s18, 0xffe0
.LBB0_2:                                ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_nc_u32_e32 v19, v208, v212
	v_add_nc_u32_e32 v20, v207, v212
	v_add_nc_u32_e32 v21, v210, v212
	v_add_nc_u32_e32 v22, v209, v212
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v18, 0x80000000, v153, s5
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v19, 0x80000000, v19, s6
	v_cndmask_b32_e64 v20, 0x80000000, v20, s6
	v_cndmask_b32_e64 v21, 0x80000000, v21, s6
	v_cndmask_b32_e64 v22, 0x80000000, v22, s6
	.loc	1 615 36                        ; attention_backward.py:615:36
	buffer_load_b128 v[137:140], v18, s[24:27], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x3
	buffer_load_b128 v[89:92], v19, s[36:39], 0 offen
	buffer_load_b128 v[93:96], v20, s[36:39], 0 offen
	buffer_load_b128 v[97:100], v21, s[36:39], 0 offen
	buffer_load_b128 v[101:104], v22, s[36:39], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v84, v154, s[56:59], 0 offen
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_clause 0x1
	buffer_load_u16 v74, v211, s[20:23], 0 offen
	buffer_load_u16 v75, v206, s[20:23], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v73, v154, s[52:55], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v22, 0, v167
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v24, v17
	.loc	1 607 13                        ; attention_backward.py:607:13
	v_add_nc_u32_e32 v206, 64, v206
	v_add_nc_u32_e32 v154, 0x80, v154
	v_add_nc_u32_e32 v212, s35, v212
	s_add_i32 s18, s18, 32
	.loc	1 651 43                        ; attention_backward.py:651:43
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmpk_lt_u32 s18, 0x7e0
	.loc	1 651 43                        ; attention_backward.py:651:43
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v23, v17
	.loc	1 607 13                        ; attention_backward.py:607:13
	v_add_nc_u32_e32 v153, s50, v153
	v_add_nc_u32_e32 v211, 64, v211
	.loc	1 648 33                        ; attention_backward.py:648:33
	s_waitcnt vmcnt(8)
	v_bfe_u32 v228, v140, 8, 4
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(7)
	v_mov_b16_e32 v19.l, v89.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e32 v19.h, v93.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e32 v18.l, v97.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e32 v18.h, v101.l
	v_mov_b16_e32 v21.l, v89.h
	v_mov_b16_e32 v21.h, v93.h
	v_mov_b16_e32 v20.l, v97.h
	v_mov_b16_e32 v20.h, v101.h
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v74, 16, v74
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v229, v140, 20, 4
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v230, v140, 16, 4
	v_bfe_u32 v231, v140, 24, 4
	.loc	1 732 34                        ; attention_backward.py:732:34
	ds_store_2addr_b64 v22, v[18:19], v[20:21] offset1:8
	v_mov_b16_e32 v19.l, v90.l
	v_mov_b16_e32 v19.h, v94.l
	v_mov_b16_e32 v18.l, v98.l
	v_mov_b16_e32 v18.h, v102.l
	v_mov_b16_e32 v21.l, v90.h
	v_mov_b16_e32 v21.h, v94.h
	v_mov_b16_e32 v20.l, v98.h
	v_mov_b16_e32 v20.h, v102.h
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v22, v17
	.loc	1 640 41                        ; attention_backward.py:640:41
	v_mul_f32_e32 v74, s28, v74
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v234, -16, v230
	.loc	1 732 34                        ; attention_backward.py:732:34
	ds_store_2addr_b64 v177, v[18:19], v[20:21] offset1:8
	v_mov_b16_e32 v19.l, v91.l
	v_mov_b16_e32 v19.h, v95.l
	v_mov_b16_e32 v18.l, v99.l
	v_mov_b16_e32 v18.h, v103.l
	v_mov_b16_e32 v21.l, v91.h
	v_mov_b16_e32 v21.h, v95.h
	v_mov_b16_e32 v20.l, v99.h
	v_mov_b16_e32 v20.h, v103.h
	ds_store_2addr_b64 v178, v[18:19], v[20:21] offset1:8
	v_mov_b16_e32 v19.l, v92.l
	v_mov_b16_e32 v19.h, v96.l
	v_mov_b16_e32 v18.l, v100.l
	v_mov_b16_e32 v18.h, v104.l
	v_mov_b16_e32 v21.l, v92.h
	v_mov_b16_e32 v21.h, v96.h
	v_mov_b16_e32 v20.l, v100.h
	v_mov_b16_e32 v20.h, v104.h
	ds_store_2addr_b64 v179, v[18:19], v[20:21] offset1:8
	v_add_nc_u32_e32 v18, 0, v168
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[133:136], v18
	ds_load_b128 v[125:128], v18 offset:2048
	ds_load_b128 v[129:132], v180
	ds_load_b128 v[121:124], v180 offset:2048
	ds_load_b128 v[117:120], v181
	ds_load_b128 v[109:112], v181 offset:2048
	ds_load_b128 v[113:116], v182
	ds_load_b128 v[105:108], v182 offset:2048
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_nc_u32_e32 v18, 0, v169
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v19, v17
	v_mov_b32_e32 v20, v17
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_store_b128 v18, v[97:100]
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v18, v17
	v_dual_mov_b32 v21, v17 :: v_dual_add_nc_u32 v76, 0, v170
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v220, v24
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_store_b128 v183, v[101:104]
	ds_store_b128 v184, v[89:92]
	ds_store_b128 v185, v[93:96]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_mov_b32_e32 v219, v23
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[76:79], v76
	ds_load_b128 v[80:83], v186
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v218, v22 :: v_dual_mov_b32 v215, v19
	v_dual_mov_b32 v217, v21 :: v_dual_mov_b32 v216, v20
	v_dual_mov_b32 v213, v17 :: v_dual_mov_b32 v214, v18
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[213:220], v[41:48], v[76:83], v[213:220]
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[76:79], v187
	ds_load_b128 v[80:83], v188
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[213:220], v[49:56], v[76:83], v[213:220]
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[76:79], v189
	ds_load_b128 v[80:83], v190
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[213:220], v[57:64], v[76:83], v[213:220]
	.loc	1 707 36                        ; attention_backward.py:707:36
	ds_load_b128 v[76:79], v191
	ds_load_b128 v[80:83], v192
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_wmma_f32_16x16x16_bf16 v[213:220], v[65:72], v[76:83], v[213:220]
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_bpermute_b32 v76, v163, v137
	ds_bpermute_b32 v77, v201, v137
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v88, v213, v84
	v_sub_f32_e32 v213, v214, v84
	v_sub_f32_e32 v221, v215, v84
	v_sub_f32_e32 v216, v216, v84
	v_sub_f32_e32 v217, v217, v84
	v_sub_f32_e32 v218, v218, v84
	v_sub_f32_e32 v222, v219, v84
	v_sub_f32_e32 v220, v220, v84
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v84, v77, v76, s0
	v_cndmask_b32_e64 v86, v76, v77, s0
	ds_bpermute_b32 v76, v163, v138
	ds_bpermute_b32 v77, v201, v138
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v85, v77, v76, s0
	v_cndmask_b32_e64 v87, v76, v77, s0
	ds_bpermute_b32 v76, v163, v139
	ds_bpermute_b32 v77, v201, v139
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v141, v77, v76, s0
	v_cndmask_b32_e64 v143, v76, v77, s0
	ds_bpermute_b32 v76, v163, v140
	ds_bpermute_b32 v77, v201, v140
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v142, v77, v76, s0
	v_cndmask_b32_e64 v144, v76, v77, s0
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_wmma_i32_16x16x16_iu4 v[76:83], v[145:146], v[84:85], v[17:24] neg_lo:[1,1,0]
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v18.l, v137.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v85, 15, v138
	.loc	1 615 36 is_stmt 1              ; attention_backward.py:615:36
	v_bfe_i32 v20, v137, 0, 8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_wmma_i32_16x16x16_iu4 v[76:83], v[147:148], v[141:142], v[76:83] neg_lo:[1,1,0]
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e32 v22.h, 0
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s3, 7, v18.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v18.l, v137.h, 15
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s8, 0, v20.l
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_wmma_i32_16x16x16_iu4 v[76:83], v[149:150], v[86:87], v[76:83] neg_lo:[1,1,0]
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v86, -16, v85
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v87, v138, 16, 4
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v18.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v18.l, v138.l, 15
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_wmma_i32_16x16x16_iu4 v[76:83], v[151:152], v[143:144], v[76:83] neg_lo:[1,1,0]
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v144, 8, v137
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v141, -16, v87
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s7, 7, v18.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v18.l, v138.h, 15
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v21, v76
	v_cvt_f32_i32_e32 v23, v77
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v76, 15, v137
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v24, v78
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s2, 7, v18.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b64 v[18:19], 24, v[137:138]
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v23, v74, v23
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v77, -16, v76
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v78, v137, 16, 4
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v85, v85, v86, s7
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v86, 8, v138
	v_bfe_i32 v142, v18, 0, 8
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v18.h, 4, v137.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v20, v76, v77, s3
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v76, v137, 8, 4
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v84, v79
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v79, -16, v78
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v22.l, v18.h, 15
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v18.h, v144.l, 15
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v77, -16, v76
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v19.l, 4, v18.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v215, v78, v79, vcc_lo
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v18.l, v18.l, 15
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s3, 7, v18.h
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v18.h, v86.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v78, v87, v141, s2
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v143, -16, v22
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v24, v74, v24
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v214, v76, v77, s3
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v76, v138, 8, 4
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v18.h
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v84, v74, v84
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v81, v81
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v77, -16, v76
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v82, v82
	v_cvt_f32_i32_e32 v83, v83
	v_mul_f32_e32 v21, v74, v21
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v80, v74, v80 :: v_dual_cndmask_b32 v79, v76, v77
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v77, 24, v138
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v76, v138, 24, 4
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v81, v74, v81
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v24, v24, v195, -v73
	v_fma_f32 v84, v84, v196, -v73
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v18.h, v77.l, 15
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v87, -16, v76
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v223, v80, v197, -v73
	v_fma_f32 v224, v81, v198, -v73
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v19.h, 4, v138.l
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v18.h
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v76, v76, v87, vcc_lo
	.loc	1 615 36 is_stmt 1              ; attention_backward.py:615:36
	v_alignbit_b32 v87, v138, v137, 24
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v18.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e64 v18.l, v137.h
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v137, v137, 20, 4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v87, 15, v87
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v18, v18, 0, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v219, -16, v137
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v141, -16, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s2, 0, v18.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e64 v18.l, v138.h
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v87, v87, v141, vcc_lo
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v141, v138, 20, 4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v137, v137, v219, s2
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v18, v18, 0, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v219, -16, v141
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v137, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v18.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v18, v20
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v20, v22, v143, s8
	v_cndmask_b32_e32 v141, v141, v219, vcc_lo
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v219, 16, v75
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v82, v74, v82
	v_mul_f32_e32 v74, v74, v83
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v141, v141
	v_mul_f32_e32 v18, v219, v18
	v_mul_f32_e32 v20, v219, v20
	v_mul_f32_e32 v137, v219, v137
	v_cvt_f32_i32_e32 v83, v214
	v_mul_f32_e32 v141, v219, v141
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v75, 0, v18, s1
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v18.l, 4, v144.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v20, 0, v20, s1
	v_cndmask_b32_e64 v137, 0, v137, s1
	v_cndmask_b32_e64 v141, 0, v141, s1
	v_mov_b16_e32 v22.l, v75.h
	v_cmp_o_f32_e32 vcc_lo, v75, v75
	v_cmp_o_f32_e64 s3, v20, v20
	v_cmp_o_f32_e64 s7, v137, v137
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v83, v219, v83
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v143, 1, v22
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v22.l, v18.l, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s13, v141, v141
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v227, 15, v140
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v83, 0, v83, s1
	v_add3_u32 v18, v75, v143, 0x7fff
	v_mov_b16_e64 v143.h, v22.h
	v_mov_b16_e64 v143.l, v20.h
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v75, v144, 0, 8
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v144, v21, v193, -v73
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v233, -16, v227
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v143, 1, v143
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v18.l, v75.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v75, -16, v22
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_add3_u32 v20, v20, v143, 0x7fff
	v_mov_b16_e64 v143.h, v22.h
	v_mov_b16_e64 v143.l, v137.h
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s2, 0, v18.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v18.l, 0x7fff, v18.h, vcc_lo
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s3
	v_cmp_o_f32_e32 vcc_lo, v83, v83
	v_and_b32_e32 v143, 1, v143
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v75, v22, v75, s2
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v22.l, v83.h
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v20.l, v142.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v137, v137, v143, 0x7fff
	v_mov_b16_e64 v143.h, v22.h
	v_mov_b16_e64 v143.l, v141.h
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s2, 0, v20.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v20.h, 0x7fff, v137.h, s7
	v_and_b32_e32 v137, 1, v22
	v_and_b32_e32 v143, 1, v143
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v226, v74, v200, -v73
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v74.h, v22.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v83, v83, v137, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v137, v215
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v141, v141, v143, 0x7fff
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v215, v23, v194, -v73
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v137, v219, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v137, 0, v137, s1
	v_mov_b16_e64 v22.l, v137.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_b32_e32 v143, 1, v22
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v22.l, v19.l, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v19.l, 0x7fff, v83.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v137, v137
	v_add3_u32 v21, v137, v143, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v23, -16, v22
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v143.h, 0x7fff, v141.h, s13
	v_cndmask_b16 v20.l, 0x7fff, v21.h, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v21, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v87, v22, v23, s2
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v21, v219, v21
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v225, v82, v199, -v73
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v73, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v87, v87
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v21, 0, v21, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v73, v219, v73
	v_mul_f32_e32 v87, v219, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v22.l, v21.h
	v_cmp_o_f32_e64 s2, v21, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v73, 0, v73, s1
	v_cndmask_b32_e64 v87, 0, v87, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v23, 1, v22
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v22.l, v19.h, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v74.l, v73.h
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_cmp_o_f32_e64 s16, v87, v87
	v_add3_u32 v21, v21, v23, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v23, v138, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v74, 1, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v21.l, v23.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v73, v73, v74, 0x7fff
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v23, -16, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s3, 0, v21.l
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b16 v19.h, 0x7fff, v73.h, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v73, v85
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s2
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v21.h, 4, v86.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v73, v219, v73
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v74, 0, v73, s1
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v73, v22, v23, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v22.l, v74.h
	v_cmp_o_f32_e64 s2, v74, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v73, v73
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v23, 1, v22
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v22.l, v21.h, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v73, v219, v73
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v85, v74, v23, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v23, v86, 0, 8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v74, -16, v22
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v73, 0, v73, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v141.l, 0x7fff, v85.h, s2
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v23.l
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v23, v144
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v74, v22, v74, vcc_lo
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v214, 0, v23, s12
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v23, v214, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v23, s47, v23
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v75, v23, 16, 1
	v_cmp_o_f32_e64 s14, v23, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v86, v23, v75, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v23, v215
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v215, 0, v23, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v23, v215, v213
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v23, s47, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v75, v23, 16, 1
	v_cmp_o_f32_e64 s3, v23, v23
	v_add3_u32 v75, v23, v75, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v23, v24
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v75.l, 0x7fff, v86.h, s14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v23, 0, v23, s12
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v24, v23, v221
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_alignbit_b32 v221, v140, v139, 24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_dual_mul_f32 v24, s47, v24 :: v_dual_and_b32 v221, 15, v221
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v80, v24, 16, 1
	v_cmp_o_f32_e64 s7, v24, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v80, v24, v80, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v24, v84
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v24, 0, v24, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v81, v24, v216
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v81, s47, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v82, v81, 16, 1
	v_cmp_o_f32_e64 s8, v81, v81
	v_add3_u32 v81, v81, v82, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v82, v223
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v223, v139, 0, 8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v216, 0, v82, s12
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v82, v216, v217
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_dual_mul_f32 v82, s47, v82 :: v_dual_add_nc_u32 v217, 0, v161
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v217, v75
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v75.l, 0x7fff, v75.h, s3
	v_bfe_u32 v83, v82, 16, 1
	v_cmp_o_f32_e64 s15, v82, v82
	v_add3_u32 v88, v82, v83, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v82, v224
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v224, 8, v139
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v77.h, 0x7fff, v88.h, s15
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v137, 0, v82, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v82, v137, v218
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v218, 0, v164
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v82, s47, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v83, v82, 16, 1
	v_cmp_o_f32_e64 s9, v82, v82
	v_add3_u32 v82, v82, v83, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v83, v225
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v225, v139, 20, 4
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v75.h, 0x7fff, v82.h, s9
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v171, v75
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v75.l, 0x7fff, v80.h, s7
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s9, v137, v137
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v171, v75 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v138, 0, v83, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v83, v138, v222
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e64 v222.l, v140.h
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v83, s47, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v84, v83, 16, 1
	v_cmp_o_f32_e64 s10, v83, v83
	v_add3_u32 v83, v83, v84, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v84, v226
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v226, v139, 16, 4
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v75.h, 0x7fff, v83.h, s10
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v172, v75
	ds_store_b16_d16_hi v217, v77 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v75.l, 0x7fff, v81.h, s8
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v232, -16, v226
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v172, v75 offset:512
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v213, 0, v84, s12
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s8, v216, v216
	v_cmp_o_f32_e64 s10, v138, v138
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v84, v213, v220
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v84, s47, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v142, v84, 16, 1
	v_cmp_o_f32_e64 s11, v84, v84
	v_add3_u32 v84, v84, v142, 0x7fff
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_mov_b16_e64 v142.h, v22.h
	v_mov_b16_e64 v142.l, v87.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v75.h, 0x7fff, v84.h, s11
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v173, v75
	ds_store_b16_d16_hi v173, v75 offset:512
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v75, v79
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v142, 1, v142
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s11, v213, v213
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v75, v219, v75
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v87, v87, v142, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v75, 0, v75, s1
	v_cndmask_b16 v21.h, 0x7fff, v87.h, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v22.l, v75.h
	v_cmp_o_f32_e64 s2, v75, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v79, 1, v22
	v_add3_u32 v75, v75, v79, 0x7fff
	v_mov_b16_e32 v79.h, v22.h
	v_mov_b16_e32 v79.l, v73.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v142.l, 0x7fff, v75.h, s2
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v75, v78
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v79, 1, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v75, v219, v75
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v73, v73, v79, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v75, 0, v75, s1
	v_cndmask_b16 v141.h, 0x7fff, v73.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v22.l, v75.h
	v_cmp_o_f32_e64 s2, v75, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v78, 1, v22
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v22.l, 4, v77.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v77, v77, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v75, v75, v78, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v73.l, v77.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v77, -16, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b16 v143.l, 0x7fff, v75.h, s2
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s3, 0, v73.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v73, v74
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v74.h, v22.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v75, v22, v77, s3
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v73, v219, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v73, 0, v73, s1
	v_mov_b16_e32 v74.l, v73.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_and_b32_e32 v74, 1, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v73, v73, v74, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v74, v76
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v142.h, 0x7fff, v73.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v74, v219, v74
	v_cvt_f32_i32_e32 v73, v75
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v74, 0, v74, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v73, v219, v73
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v22.l, v74.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s2, v74, v74
	v_cndmask_b32_e64 v73, 0, v73, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v76, 1, v22
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e64 v22.l, v139.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v74, v74, v76, 0x7fff
	v_mov_b16_e32 v74.l, v73.h
	v_cndmask_b16 v144.l, 0x7fff, v74.h, s2
	v_mov_b16_e32 v74.h, v22.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v74, 1, v74
	v_add3_u32 v73, v73, v74, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v144.h, 0x7fff, v73.h, vcc_lo
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_load_b128 v[81:84], v218
	ds_load_b128 v[85:88], v174
	ds_load_b128 v[73:76], v175
	ds_load_b128 v[77:80], v176
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v160, v[18:21]
	ds_store_b128 v160, v[141:144] offset:16
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v18.h, v139.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_and_b32_e32 v142, 15, v139
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v19.h, v140.l, 15
	.loc	1 615 36 is_stmt 1              ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v141, 24, v140
	v_bfe_i32 v21, v140, 0, 8
	v_lshrrev_b32_e32 v143, 8, v140
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v18.l, 4, v139.l
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v144, v139, 8, 4
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v19.l, v139.h, 15
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v141.h, 4, v140.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v20.l, v140.h, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b64 v[139:140], 24, v[139:140]
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v140, -16, v142
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v18.h
	v_cmp_lt_u16_e64 s3, 7, v19.h
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v19.h, v224.l, 15
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s2, 7, v19.l
	v_cmp_lt_u16_e64 s7, 7, v20.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v220, v139, 0, 8
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v18.h, 4, v139.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v19.l, v139.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v20, v142, v140, vcc_lo
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v139, -16, v144
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v19.h
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v19.h, v143.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v226, v226, v232, s2
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v140, v230, v234, s7
	v_cndmask_b32_e32 v235, v144, v139, vcc_lo
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v139, -16, v228
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v19.h
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v19.h, v141.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v144, v227, v233, s3
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v227, -16, v221
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_mul_f32_e32 v20, v219, v20
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v142, v228, v139, vcc_lo
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v139, -16, v231
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v19.h
	.loc	1 651 60 is_stmt 1              ; attention_backward.py:651:60
	v_or_b32_e32 v228, -16, v225
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v142, v142
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v20, 0, v20, s4
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v139, v231, v139, vcc_lo
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v19.l
	.loc	1 615 36 is_stmt 1              ; attention_backward.py:615:36
	v_bfe_i32 v19, v22, 0, 8
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v144, v219, v144
	v_mul_f32_e32 v142, v219, v142
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v22.l, v18.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v221, v221, v227, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s2, 0, v19.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v19, v222, 0, 8
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v222, -16, v229
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_mov_b16_e64 v18.l, v223.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v140, v140
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v225, v225, v228, s2
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v19.l
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v21.h, 4, v143.l
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s3, 0, v18.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v18.l, 4, v224.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_dual_mul_f32 v140, v219, v140 :: v_dual_cndmask_b32 v19, v229, v222
	v_cvt_f32_i32_e32 v222, v225
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v225.h, v22.h
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v143, v143, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v144, 0, v144, s4
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v19, v19
	v_mul_f32_e32 v222, v219, v222
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v142, 0, v142, s4
	v_cndmask_b32_e64 v140, 0, v140, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v19, v219, v19
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v222, 0, v222, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v19, 0, v19, s4
	v_mov_b16_e64 v225.l, v222.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s2, v222, v222
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v225, 1, v225
	v_add3_u32 v225, v222, v225, 0x7fff
	v_mov_b16_e64 v222.h, v22.h
	v_mov_b16_e64 v222.l, v19.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v222, 1, v222
	v_add3_u32 v222, v19, v222, 0x7fff
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v19, -16, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v222.h, 0x7fff, v222.h, vcc_lo
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v227, v22, v19, s3
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v22.l, v20.h
	v_cmp_o_f32_e64 s3, v20, v20
	v_cmp_o_f32_e32 vcc_lo, v142, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v19, 1, v22
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v22.l, v18.l, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v19, v20, v19, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v20, v224, 0, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v223, -16, v22
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v20.h, 0x7fff, v225.h, s2
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v18.l, v20.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cmp_gt_i16_e64 s7, 0, v18.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s3
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v19, v235
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v223, v22, v223, s7
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s7, 0, v220.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_mul_f32_e32 v19, v219, v19
	v_cvt_f32_i32_e32 v220, v221
	v_cvt_f32_i32_e32 v223, v223
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v19, 0, v19, s4
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v220, v219, v220
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v223, v219, v223
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v22.l, v19.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v19, v19
	v_cndmask_b32_e64 v220, 0, v220, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v223, 0, v223, s4
	v_and_b32_e32 v224, 1, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v19, v19, v224, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v224, v226
	v_cvt_f32_i32_e32 v226, v227
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v227.h, v22.h
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v224, v219, v224
	v_mul_f32_e32 v226, v219, v226
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v224, 0, v224, s4
	v_cndmask_b32_e64 v226, 0, v226, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v22.l, v224.h
	v_cmp_o_f32_e64 s3, v224, v224
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v227.l, v226.h
	v_cmp_o_f32_e64 s2, v226, v226
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v225, 1, v22
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v22.l, v18.h, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v227, 1, v227
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v224, v224, v225, 0x7fff
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v225, -16, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v226, v226, v227, 0x7fff
	v_cndmask_b16 v20.l, 0x7fff, v224.h, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v221, v22, v225, s7
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v22.l, v220.h
	v_mov_b16_e64 v225.h, v22.h
	v_mov_b16_e64 v225.l, v223.h
	v_cmp_o_f32_e64 s3, v220, v220
	v_cndmask_b16 v18.h, 0x7fff, v226.h, s2
	v_and_b32_e32 v224, 1, v22
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v22.l, v141.h, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v225, 1, v225
	v_cmp_o_f32_e64 s2, v223, v223
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s7, 0, v21.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v220, v220, v224, 0x7fff
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v224, -16, v22
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v223, v223, v225, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v21.l, 0x7fff, v220.h, s3
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s3, 0, v143.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v143, v221
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v19.h, 0x7fff, v223.h, s2
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v223, v22, v224, s7
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v22.l, v144.h
	v_cmp_o_f32_e64 s2, v144, v144
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v143, v219, v143
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v221.h, v22.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v220, 1, v22
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v22.l, v21.h, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v143, 0, v143, s4
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v139, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v144, v144, v220, 0x7fff
	v_mov_b16_e64 v220.h, v22.h
	v_mov_b16_e64 v220.l, v143.h
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v224, -16, v22
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s7, v143, v143
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_dual_mul_f32 v139, v219, v139 :: v_dual_and_b32 v220, 1, v220
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v139, 0, v139, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v143, v143, v220, 0x7fff
	v_cndmask_b16 v220.l, 0x7fff, v144.h, s2
	v_cndmask_b16 v21.h, 0x7fff, v143.h, s7
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v143, v22, v224, s3
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v22.l, v142.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s7, v24, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v144, 1, v22
	v_mov_b16_e64 v22.l, v140.h
	v_add3_u32 v142, v142, v144, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v144, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v144, v219, v144
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v144, 0, v144, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e64 v221.l, v144.h
	v_cmp_o_f32_e64 s2, v144, v144
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v221, 1, v221
	v_add3_u32 v144, v144, v221, 0x7fff
	v_cndmask_b16 v221.l, 0x7fff, v142.h, vcc_lo
	v_and_b32_e32 v142, 1, v22
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v22.l, 4, v141.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v141, v141, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v140, v140
	v_cndmask_b16 v220.h, 0x7fff, v144.h, s2
	v_add3_u32 v140, v140, v142, 0x7fff
	v_mov_b16_e64 v142.h, v22.h
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v140.l, v141.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v141, -16, v22
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s2, v139, v139
	v_cndmask_b16 v222.l, 0x7fff, v140.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s3, 0, v140.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v140, v143
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v141, v22, v141, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v140, v219, v140
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v22.l, v139.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s3, v23, v23
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v141, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v140, 0, v140, s4
	v_mov_b16_e64 v142.l, v140.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v140, v140
	v_and_b32_e32 v142, 1, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v140, v140, v142, 0x7fff
	v_and_b32_e32 v142, 1, v22
	v_cndmask_b16 v221.h, 0x7fff, v140.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v139, v139, v142, 0x7fff
	v_mov_b16_e64 v140.h, v22.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v141, v219, v141
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v142.l, v22.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v223.l, 0x7fff, v139.h, s2
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s2, v215, v215
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v139, 0, v141, s4
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v141.l, v22.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v140.l, v139.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v139, v139
	v_and_b32_e32 v140, 1, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v139, v139, v140, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v140.l, v22.h
	v_mov_b16_e64 v139.l, v22.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v223.h, 0x7fff, v139.h, vcc_lo
	ds_store_b128 v160, v[18:21] offset:32
	ds_store_b128 v160, v[220:223] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v219, v162
	ds_load_u16_d16 v220, v162 offset:256
	ds_load_u16_d16 v221, v162 offset:512
	ds_load_u16_d16 v222, v162 offset:768
	ds_load_u16_d16 v223, v162 offset:1024
	ds_load_u16_d16 v224, v162 offset:1280
	ds_load_u16_d16 v225, v162 offset:1536
	ds_load_u16_d16 v226, v162 offset:1792
	ds_load_u16_d16 v227, v162 offset:64
	ds_load_u16_d16 v229, v162 offset:576
	ds_load_u16_d16 v231, v162 offset:1088
	ds_load_u16_d16 v230, v162 offset:832
	ds_load_u16_d16 v232, v162 offset:1344
	ds_load_u16_d16 v228, v162 offset:320
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v220, v162 offset:384
	ds_load_u16_d16_hi v219, v162 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v227, v162 offset:192
	ds_load_u16_d16_hi v221, v162 offset:640
	ds_load_u16_d16_hi v222, v162 offset:896
	ds_load_u16_d16_hi v223, v162 offset:1152
	ds_load_u16_d16_hi v224, v162 offset:1408
	ds_load_u16_d16_hi v225, v162 offset:1664
	ds_load_u16_d16 v235, v162 offset:2048
	ds_load_u16_d16 v236, v162 offset:2304
	ds_load_u16_d16 v237, v162 offset:2560
	ds_load_u16_d16 v238, v162 offset:2816
	ds_load_u16_d16_hi v226, v162 offset:1920
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v231, v162 offset:1216
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v230, v162 offset:960
	ds_load_u16_d16_hi v229, v162 offset:704
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v228, v162 offset:448
	ds_load_u16_d16 v233, v162 offset:1600
	ds_load_u16_d16 v243, v162 offset:2112
	ds_load_u16_d16 v245, v162 offset:2624
	ds_load_u16_d16 v244, v162 offset:2368
	ds_load_u16_d16 v246, v162 offset:2880
	ds_load_u16_d16 v234, v162 offset:1856
	ds_load_u16_d16 v239, v162 offset:3072
	ds_load_u16_d16 v241, v162 offset:3584
	ds_load_u16_d16 v242, v162 offset:3840
	ds_load_u16_d16 v240, v162 offset:3328
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v235, v162 offset:2176
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v236, v162 offset:2432
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v237, v162 offset:2688
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v238, v162 offset:2944
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v239, v162 offset:3200
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v241, v162 offset:3712
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v242, v162 offset:3968
	ds_load_u16_d16 v247, v162 offset:3136
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v240, v162 offset:3456
	ds_load_u16_d16 v250, v162 offset:3904
	ds_load_u16_d16 v249, v162 offset:3648
	ds_load_u16_d16 v248, v162 offset:3392
	ds_load_u16_d16_hi v232, v162 offset:1472
	ds_load_u16_d16_hi v233, v162 offset:1728
	ds_load_u16_d16_hi v245, v162 offset:2752
	ds_load_u16_d16_hi v244, v162 offset:2496
	ds_load_u16_d16_hi v243, v162 offset:2240
	ds_load_u16_d16_hi v234, v162 offset:1984
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v250, v162 offset:4032
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v249, v162 offset:3776
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v248, v162 offset:3520
	ds_load_u16_d16_hi v246, v162 offset:3008
	ds_load_u16_d16_hi v247, v162 offset:3264
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[219:226], v[81:88], v[25:32]
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[227:234], v[81:88], v[33:40]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v18, v214, 16, 1
	v_bfe_u32 v19, v215, 16, 1
	v_bfe_u32 v20, v23, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[235:242], v[73:80], v[25:32]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v21, v24, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v214, v214
	v_add3_u32 v18, v214, v18, 0x7fff
	v_add3_u32 v19, v215, v19, 0x7fff
	v_add3_u32 v20, v23, v20, 0x7fff
	v_add3_u32 v21, v24, v21, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v142.h, 0x7fff, v18.h, vcc_lo
	v_cndmask_b16 v141.h, 0x7fff, v19.h, s2
	v_cndmask_b16 v139.h, 0x7fff, v20.h, s3
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s7
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_barrier
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v20.l, v22.h
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[33:40], v[243:250], v[73:80], v[33:40]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v73, v216, 16, 1
	v_bfe_u32 v74, v137, 16, 1
	v_bfe_u32 v75, v138, 16, 1
	v_bfe_u32 v76, v213, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v23, v23, v139
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v73, v216, v73, 0x7fff
	v_add3_u32 v74, v137, v74, 0x7fff
	v_add3_u32 v75, v138, v75, 0x7fff
	v_add3_u32 v76, v213, v76, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v21.l, v22.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v140.h, 0x7fff, v73.h, s8
	v_cndmask_b16 v21.h, 0x7fff, v74.h, s9
	v_cndmask_b16 v19.h, 0x7fff, v75.h, s10
	v_cndmask_b16 v18.h, 0x7fff, v76.h, s11
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v217, v142
	ds_store_b16_d16_hi v217, v140 offset:512
	ds_store_b16_d16_hi v171, v141
	ds_store_b16_d16_hi v171, v21 offset:512
	ds_store_b16_d16_hi v172, v139
	ds_store_b16_d16_hi v172, v19 offset:512
	ds_store_b16_d16_hi v173, v20
	ds_store_b16_d16_hi v173, v18 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[81:84], v218
	ds_load_b128 v[85:88], v174
	ds_load_b128 v[73:76], v175
	ds_load_b128 v[77:80], v176
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v166, v[97:100]
	ds_store_b128 v166, v[101:104] offset:128
	ds_store_b128 v166, v[89:92] offset:256
	ds_store_b128 v166, v[93:96] offset:384
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v89, v214, v142 :: v_dual_sub_f32 v90, v215, v141
	v_sub_f32_e32 v91, v216, v140
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
	v_sub_f32_e32 v20, v24, v20
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v89, v89, v92, 0x7fff
	v_bfe_u32 v92, v91, 16, 1
	v_bfe_u32 v24, v23, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v21, v137, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v18.l, 0x7fff, v89.h, s2
	v_add3_u32 v91, v91, v92, 0x7fff
	v_bfe_u32 v92, v90, 16, 1
	v_cmp_o_f32_e64 s2, v20, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v19.l, 0x7fff, v91.h, s3
	v_add3_u32 v140, v90, v92, 0x7fff
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	ds_load_u16_d16 v91, v162 offset:512
	ds_load_u16_d16 v92, v162 offset:768
	ds_load_u16_d16 v93, v162 offset:1024
	ds_load_u16_d16 v94, v162 offset:1280
	ds_load_u16_d16 v95, v162 offset:1536
	ds_load_u16_d16 v90, v162 offset:256
	ds_load_u16_d16 v89, v162
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v91, v162 offset:640
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v92, v162 offset:896
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v93, v162 offset:1152
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v94, v162 offset:1408
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v95, v162 offset:1664
	ds_load_u16_d16 v96, v162 offset:1792
	ds_load_u16_d16 v97, v162 offset:64
	ds_load_u16_d16 v102, v162 offset:1344
	ds_load_u16_d16 v223, v162 offset:3072
	ds_load_u16_d16 v219, v162 offset:2048
	ds_load_u16_d16 v220, v162 offset:2304
	ds_load_u16_d16 v221, v162 offset:2560
	ds_load_u16_d16 v222, v162 offset:2816
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v90, v162 offset:384
	ds_load_u16_d16 v99, v162 offset:576
	ds_load_u16_d16 v100, v162 offset:832
	ds_load_u16_d16 v101, v162 offset:1088
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v89, v162 offset:128
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v97, v162 offset:192
	ds_load_u16_d16 v98, v162 offset:320
	ds_load_u16_d16 v225, v162 offset:3584
	ds_load_u16_d16 v226, v162 offset:3840
	ds_load_u16_d16 v103, v162 offset:1600
	ds_load_u16_d16 v229, v162 offset:2624
	ds_load_u16_d16 v228, v162 offset:2368
	ds_load_u16_d16 v227, v162 offset:2112
	ds_load_u16_d16 v230, v162 offset:2880
	ds_load_u16_d16_hi v96, v162 offset:1920
	ds_load_u16_d16 v224, v162 offset:3328
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v223, v162 offset:3200
	ds_load_u16_d16_hi v102, v162 offset:1472
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v219, v162 offset:2176
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v220, v162 offset:2432
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v221, v162 offset:2688
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v222, v162 offset:2944
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v101, v162 offset:1216
	ds_load_u16_d16_hi v100, v162 offset:960
	ds_load_u16_d16_hi v99, v162 offset:704
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v98, v162 offset:448
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v225, v162 offset:3712
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v226, v162 offset:3968
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v103, v162 offset:1728
	ds_load_u16_d16 v104, v162 offset:1856
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v229, v162 offset:2752
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v228, v162 offset:2496
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v227, v162 offset:2240
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v230, v162 offset:3008
	ds_load_u16_d16 v231, v162 offset:3136
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v224, v162 offset:3456
	ds_load_u16_d16 v234, v162 offset:3904
	ds_load_u16_d16 v233, v162 offset:3648
	ds_load_u16_d16 v232, v162 offset:3392
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v231, v162 offset:3264
	ds_load_u16_d16_hi v104, v162 offset:1984
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v234, v162 offset:4032
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v233, v162 offset:3776
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v232, v162 offset:3520
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v217, v18
	ds_store_b16 v217, v19 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v22.l, 0x7fff, v140.h, vcc_lo
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e32 v19.l, v22.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e32 vcc_lo, v23, v23
	v_add3_u32 v23, v23, v24, 0x7fff
	v_bfe_u32 v24, v20, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v18.l, v22.h
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v19, v138, v19
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s3, v21, v21
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[89:96], v[81:88], v[9:16]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v20, v20, v24, 0x7fff
	v_bfe_u32 v24, v21, 16, 1
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v18, v213, v18
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s7, v19, v19
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[219:226], v[73:80], v[9:16]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[97:104], v[81:88], v[1:8]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v21, v21, v24, 0x7fff
	v_bfe_u32 v24, v19, 16, 1
	v_cmp_o_f32_e64 s8, v18, v18
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v21.l, v22.h
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[227:234], v[73:80], v[1:8]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v19, v19, v24, 0x7fff
	v_bfe_u32 v24, v18, 16, 1
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v19.l, v22.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v24, v18, v24, 0x7fff
	v_cndmask_b16 v18.l, 0x7fff, v21.h, s3
	v_cndmask_b16 v18.h, 0x7fff, v23.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v171, v22
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v21.h, v134.l
	v_mov_b16_e32 v24.l, v22.h
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v171, v18 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s7
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v172, v18
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s2
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v19.h, v133.l
	v_and_b32_e32 v20, 0xffff0000, v134
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v172, v18 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v18.l, 0x7fff, v24.h, s8
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v173, v18
	ds_store_b16 v173, v18 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[137:140], v218
	ds_load_b128 v[141:144], v174
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v24.h, v135.l
	v_and_b32_e32 v23, 0xffff0000, v135
	v_and_b32_e32 v18, 0xffff0000, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v24, v24, v24
	v_sub_f32_e32 v18, v18, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v24, v24
	v_mov_b16_e32 v22.l, v18.h
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[89:96], v[137:144], v[9:16]
	ds_load_b128 v[89:92], v175
	ds_load_b128 v[93:96], v176
	v_wmma_f32_16x16x16_bf16 v[1:8], v[97:104], v[137:144], v[1:8]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v101, 0xffff0000, v132
	v_and_b32_e32 v100, 0xffff0000, v131
	v_and_b32_e32 v98, 0xffff0000, v129
	v_and_b32_e32 v104, 0xffff0000, v114
	v_and_b32_e32 v102, 0xffff0000, v120
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v104, v104, v104
	v_sub_f32_e32 v102, v102, v102
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[219:226], v[89:96], v[9:16]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[227:234], v[89:96], v[1:8]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v94.h, v22.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v19, v19, v19
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e64 v89.h, v136.l
	v_mov_b16_e32 v89.l, v22.h
	v_mov_b16_e64 v90.h, v129.l
	v_mov_b16_e32 v90.l, v22.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v94.l, v19.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v97, 0xffff0000, v136
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v89, v89, v89
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v91.h, v130.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v90, v90, v90
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_and_b32_e32 v94, 1, v94
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v91.l, v22.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s7, v89, v89
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v93.h, v132.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v19, v19, v94, 0x7fff
	v_mov_b16_e32 v94.h, v22.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v21, v21, v21
	v_sub_f32_e32 v91, v91, v91
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v93.l, v22.h
	v_mov_b16_e64 v92.h, v131.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s8, v90, v90
	v_mov_b16_e32 v94.l, v21.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v92.l, v22.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v93, v93, v93
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v99, 0xffff0000, v130
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s9, v91, v91
	v_and_b32_e32 v94, 1, v94
	v_cmp_o_f32_e64 s2, v21, v21
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v92, v92, v92
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s11, v93, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_add3_u32 v21, v21, v94, 0x7fff
	v_mov_b16_e32 v94.h, v22.h
	v_mov_b16_e32 v94.l, v24.h
	v_cmp_o_f32_e64 s10, v92, v92
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v21.l, v22.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v94, 1, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v24, v24, v94, 0x7fff
	v_mov_b16_e32 v94.h, v22.h
	v_mov_b16_e32 v94.l, v89.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v24.l, v22.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v94, 1, v94
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v89, v89, v94, 0x7fff
	v_mov_b16_e32 v94.h, v22.h
	v_mov_b16_e32 v94.l, v90.h
	v_cndmask_b16 v89.l, 0x7fff, v19.h, vcc_lo
	v_and_b32_e32 v19, 1, v22
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v94, 1, v94
	v_add3_u32 v18, v18, v19, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v19, v20, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v90, v90, v94, 0x7fff
	v_mov_b16_e32 v94.h, v22.h
	v_mov_b16_e32 v94.l, v91.h
	v_mov_b16_e32 v22.l, v19.h
	v_cndmask_b16 v90.l, 0x7fff, v21.h, s2
	v_cmp_o_f32_e64 s2, v19, v19
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v21.h, v126.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v94, 1, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v21, v21, v21 :: v_dual_and_b32 v20, 1, v22
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v91, v91, v94, 0x7fff
	v_mov_b16_e32 v94.h, v22.h
	v_mov_b16_e32 v94.l, v92.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v19, v19, v20, 0x7fff
	v_cndmask_b16 v91.l, 0x7fff, v24.h, s3
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v24.h, v127.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v94, 1, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v24, v24, v24
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v92, v92, v94, 0x7fff
	v_mov_b16_e32 v94.h, v22.h
	v_mov_b16_e32 v94.l, v93.h
	v_cndmask_b16 v92.l, 0x7fff, v89.h, s7
	v_cndmask_b16 v89.h, 0x7fff, v18.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v18, v23, v23
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v23, 0xffff0000, v127
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v94, 1, v94
	v_cndmask_b16 v95.l, 0x7fff, v92.h, s10
	v_cmp_o_f32_e64 s3, v24, v24
	v_mov_b16_e32 v22.l, v18.h
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_add3_u32 v93, v93, v94, 0x7fff
	v_cndmask_b16 v93.l, 0x7fff, v90.h, s8
	v_cndmask_b16 v90.h, 0x7fff, v19.h, s2
	v_and_b32_e32 v19, 1, v22
	v_cndmask_b16 v94.l, 0x7fff, v91.h, s9
	v_cndmask_b16 v96.l, 0x7fff, v93.h, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v18, v18, v19, 0x7fff
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v19, v97, v97
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v91.h, 0x7fff, v18.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v22.l, v19.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v18, v98, v98
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v19, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v20, 1, v22
	v_mov_b16_e32 v22.l, v18.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_add3_u32 v19, v19, v20, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v92.h, 0x7fff, v19.h, s2
	v_and_b32_e32 v19, 1, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v18, v18, v19, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v19, v99, v99
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v93.h, 0x7fff, v18.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v22.l, v19.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v18, v100, v100
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v19, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v20, 1, v22
	v_mov_b16_e32 v22.l, v18.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_add3_u32 v19, v19, v20, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v94.h, 0x7fff, v19.h, s2
	v_and_b32_e32 v19, 1, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v18, v18, v19, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v19, v101, v101
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v101, 0xffff0000, v124
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v95.h, 0x7fff, v18.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v22.l, v19.h
	v_cmp_o_f32_e64 s2, v19, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v20, 1, v22
	v_add3_u32 v19, v19, v20, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v19.l, v22.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v96.h, 0x7fff, v19.h, s2
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v19.h, v125.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v21, v21
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[89:96], v[81:88], v[9:16]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v19, v19, v19
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v91.h, v122.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v94.h, v22.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v91.l, v22.h
	v_and_b32_e32 v18, 0xffff0000, v125
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v94.l, v19.h
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e64 v89.h, v128.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v91, v91, v91
	v_dual_sub_f32 v18, v18, v18 :: v_dual_and_b32 v103, 0xffff0000, v113
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_and_b32_e32 v94, 1, v94
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v89.l, v22.h
	v_mov_b16_e32 v90.h, v121.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v103, v103, v103
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v90.l, v22.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v19, v19, v94, 0x7fff
	v_mov_b16_e32 v94.h, v22.h
	v_mov_b16_e32 v94.l, v21.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v89, v89, v89
	v_dual_sub_f32 v90, v90, v90 :: v_dual_and_b32 v97, 0xffff0000, v128
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v93.h, v124.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v94, 1, v94
	v_cmp_o_f32_e64 s7, v89, v89
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v93.l, v22.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s8, v90, v90
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v20, 0xffff0000, v126
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v21, v21, v94, 0x7fff
	v_mov_b16_e32 v94.h, v22.h
	v_mov_b16_e32 v94.l, v24.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v93, v93, v93
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s9, v91, v91
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v20, v20, v20
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v92.h, v123.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v94, 1, v94
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v92.l, v22.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s11, v93, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v24, v24, v94, 0x7fff
	v_mov_b16_e32 v94.h, v22.h
	v_mov_b16_e32 v94.l, v89.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v92, v92, v92
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v94, 1, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s10, v92, v92
	v_add3_u32 v89, v89, v94, 0x7fff
	v_mov_b16_e32 v94.h, v22.h
	v_mov_b16_e32 v94.l, v90.h
	v_cndmask_b16 v89.l, 0x7fff, v19.h, vcc_lo
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v19, 0xffff0000, v117
	v_and_b32_e32 v98, 0xffff0000, v121
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v19, v19, v19 :: v_dual_and_b32 v94, 1, v94
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v90, v90, v94, 0x7fff
	v_mov_b16_e32 v94.h, v22.h
	v_mov_b16_e32 v94.l, v91.h
	v_cndmask_b16 v90.l, 0x7fff, v21.h, s2
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v21, 0xffff0000, v118
	v_and_b32_e32 v100, 0xffff0000, v123
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v22.l, v19.h
	v_and_b32_e32 v94, 1, v94
	v_cmp_o_f32_e64 s2, v20, v20
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v123, 1, v22
	v_add3_u32 v91, v91, v94, 0x7fff
	v_cndmask_b16 v91.l, 0x7fff, v24.h, s3
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v24, 0xffff0000, v119
	v_and_b32_e32 v99, 0xffff0000, v122
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v22.l, v21.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v122, 0xffff0000, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v24, v24, v24 :: v_dual_and_b32 v121, 0xffff0000, v115
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e32 v94.h, v22.h
	v_and_b32_e32 v124, 1, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v122, v122, v122 :: v_dual_sub_f32 v121, v121, v121
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v22.l, v24.h
	v_mov_b16_e32 v94.l, v92.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v125, 1, v22
	v_mov_b16_e32 v22.l, v102.h
	v_and_b32_e32 v94, 1, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v126, 1, v22
	v_mov_b16_e32 v22.l, v103.h
	v_add3_u32 v92, v92, v94, 0x7fff
	v_mov_b16_e32 v94.h, v22.h
	v_mov_b16_e32 v94.l, v93.h
	v_cndmask_b16 v92.l, 0x7fff, v89.h, s7
	v_and_b32_e32 v127, 1, v22
	v_mov_b16_e32 v22.l, v104.h
	v_cndmask_b16 v95.l, 0x7fff, v92.h, s10
	v_and_b32_e32 v94, 1, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v128, 1, v22
	v_mov_b16_e32 v22.l, v121.h
	v_add3_u32 v93, v93, v94, 0x7fff
	v_cndmask_b16 v93.l, 0x7fff, v90.h, s8
	v_cndmask_b16 v94.l, 0x7fff, v91.h, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b32_e32 v129, 1, v22
	v_mov_b16_e32 v22.l, v122.h
	v_cndmask_b16 v96.l, 0x7fff, v93.h, s11
	v_and_b32_e32 v130, 1, v22
	v_mov_b16_e32 v22.l, v18.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v131, 1, v22
	v_mov_b16_e32 v22.l, v20.h
	v_add3_u32 v18, v18, v131, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v131, 1, v22
	v_cndmask_b16 v89.h, 0x7fff, v18.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v18, v23, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v20, v20, v131, 0x7fff
	v_mov_b16_e32 v22.l, v18.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v90.h, 0x7fff, v20.h, s2
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v20, 1, v22
	v_add3_u32 v18, v18, v20, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v20, v97, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v91.h, 0x7fff, v18.h, vcc_lo
	v_mov_b16_e32 v22.l, v20.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v18, v98, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v20, v20
	v_and_b32_e32 v23, 1, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v22.l, v18.h
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v20, v20, v23, 0x7fff
	v_cndmask_b16 v92.h, 0x7fff, v20.h, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v20, 1, v22
	v_add3_u32 v18, v18, v20, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v20, v99, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v93.h, 0x7fff, v18.h, vcc_lo
	v_mov_b16_e32 v22.l, v20.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v18, v100, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v20, v20
	v_and_b32_e32 v23, 1, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v22.l, v18.h
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v20, v20, v23, 0x7fff
	v_cndmask_b16 v94.h, 0x7fff, v20.h, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v20, 1, v22
	v_add3_u32 v18, v18, v20, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v20, v101, v101
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v18.l, v22.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v95.h, 0x7fff, v18.h, vcc_lo
	v_mov_b16_e32 v22.l, v20.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s2, v20, v20
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v18.h, v117.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v23, 1, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v18, v18, v18
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v20, v20, v23, 0x7fff
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v20.l, v22.h
	v_mov_b16_e32 v23.h, v119.l
	v_mov_b16_e32 v23.l, v22.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v96.h, 0x7fff, v20.h, s2
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v20.h, v118.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v23, v23, v23
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[89:96], v[81:88], v[1:8]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v86.h, v22.h
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v89, 0xffff0000, v112
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v86.l, v18.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v20, v20, v20
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v81.h, v120.l
	v_mov_b16_e32 v81.l, v22.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v86, 1, v86
	v_cmp_o_f32_e64 s2, v20, v20
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v82.h, v113.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v23, v23
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v81, v81, v81
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v18, v18, v86, 0x7fff
	v_mov_b16_e32 v86.h, v22.h
	v_mov_b16_e32 v86.l, v20.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v82.l, v22.h
	v_mov_b16_e32 v83.h, v114.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s7, v81, v81
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v83.l, v22.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v86, 1, v86
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v82, v82, v82 :: v_dual_and_b32 v93, 0xffff0000, v108
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v84.h, v115.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v83, v83, v83
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_add3_u32 v20, v20, v86, 0x7fff
	v_mov_b16_e32 v86.h, v22.h
	v_mov_b16_e32 v86.l, v23.h
	v_cmp_o_f32_e64 s8, v82, v82
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v84.l, v22.h
	v_mov_b16_e32 v85.h, v116.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s9, v83, v83
	v_and_b32_e32 v86, 1, v86
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v85.l, v22.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v84, v84, v84
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_and_b32_e32 v92, 0xffff0000, v107
	v_and_b32_e32 v90, 0xffff0000, v105
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v23, v23, v86, 0x7fff
	v_mov_b16_e32 v86.h, v22.h
	v_mov_b16_e32 v86.l, v81.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v85, v85, v85
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s10, v84, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v86, 1, v86
	v_cmp_o_f32_e64 s11, v85, v85
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v81, v81, v86, 0x7fff
	v_mov_b16_e32 v86.h, v22.h
	v_mov_b16_e32 v86.l, v82.h
	v_cndmask_b16 v81.l, 0x7fff, v18.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_add3_u32 v18, v19, v123, 0x7fff
	v_add3_u32 v19, v21, v124, 0x7fff
	v_and_b32_e32 v86, 1, v86
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v82, v82, v86, 0x7fff
	v_mov_b16_e32 v86.h, v22.h
	v_mov_b16_e32 v86.l, v83.h
	v_cndmask_b16 v82.l, 0x7fff, v20.h, s2
	v_cmp_o_f32_e64 s2, v21, v21
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v21.h, v110.l
	v_mov_b16_e32 v21.l, v22.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v86, 1, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v21, v21, v21 :: v_dual_and_b32 v20, 0xffff0000, v110
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v83, v83, v86, 0x7fff
	v_mov_b16_e32 v86.h, v22.h
	v_mov_b16_e32 v86.l, v84.h
	v_cndmask_b16 v83.l, 0x7fff, v23.h, s3
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v23, 0xffff0000, v111
	v_and_b32_e32 v91, 0xffff0000, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v86, 1, v86
	v_add3_u32 v84, v84, v86, 0x7fff
	v_mov_b16_e32 v86.h, v22.h
	v_mov_b16_e32 v86.l, v85.h
	v_cndmask_b16 v84.l, 0x7fff, v81.h, s7
	v_cndmask_b16 v81.h, 0x7fff, v18.h, vcc_lo
	v_cndmask_b16 v87.l, 0x7fff, v84.h, s10
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	v_and_b32_e32 v86, 1, v86
	v_add3_u32 v18, v24, v125, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v24.h, v111.l
	v_mov_b16_e32 v24.l, v22.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v85, v85, v86, 0x7fff
	v_cndmask_b16 v85.l, 0x7fff, v82.h, s8
	v_cndmask_b16 v82.h, 0x7fff, v19.h, s2
	v_cmp_o_f32_e64 s2, v102, v102
	v_add3_u32 v19, v102, v126, 0x7fff
	v_cndmask_b16 v86.l, 0x7fff, v83.h, s9
	v_cndmask_b16 v83.h, 0x7fff, v18.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v103, v103
	v_add3_u32 v18, v103, v127, 0x7fff
	v_cndmask_b16 v84.h, 0x7fff, v19.h, s2
	v_cmp_o_f32_e64 s2, v104, v104
	v_add3_u32 v19, v104, v128, 0x7fff
	v_cndmask_b16 v88.l, 0x7fff, v85.h, s11
	v_cndmask_b16 v85.h, 0x7fff, v18.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v121, v121
	v_add3_u32 v18, v121, v129, 0x7fff
	v_cndmask_b16 v86.h, 0x7fff, v19.h, s2
	v_cmp_o_f32_e64 s2, v122, v122
	v_add3_u32 v19, v122, v130, 0x7fff
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v19.l, v22.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v87.h, 0x7fff, v18.h, vcc_lo
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v24, v24, v24
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_and_b32_e32 v18, 0xffff0000, v109
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v88.h, 0x7fff, v19.h, s2
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v19.h, v109.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v21, v21
	v_cmp_o_f32_e64 s3, v24, v24
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v18, v18, v18
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[81:88], v[73:80], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v19, v19, v19
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_mov_b16_e32 v86.h, v22.h
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v81.h, v112.l
	v_mov_b16_e32 v81.l, v22.h
	v_mov_b16_e32 v82.h, v105.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v86.l, v19.h
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v82.l, v22.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v81, v81, v81
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v83.h, v106.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_and_b32_e32 v86, 1, v86
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v83.l, v22.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v82, v82, v82
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s7, v81, v81
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v84.h, v107.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v19, v19, v86, 0x7fff
	v_mov_b16_e32 v86.h, v22.h
	v_mov_b16_e32 v86.l, v21.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v83, v83, v83
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s8, v82, v82
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v84.l, v22.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_mov_b16_e32 v22.l, v18.h
	v_and_b32_e32 v86, 1, v86
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_mov_b16_e32 v85.h, v108.l
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s9, v83, v83
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v84, v84, v84
	.loc	1 707 36 is_stmt 1              ; attention_backward.py:707:36
	v_mov_b16_e32 v85.l, v22.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v21, v21, v86, 0x7fff
	v_mov_b16_e32 v86.h, v22.h
	v_mov_b16_e32 v86.l, v24.h
	v_cmp_o_f32_e64 s10, v84, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v85, v85, v85 :: v_dual_and_b32 v86, 1, v86
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s11, v85, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v24, v24, v86, 0x7fff
	v_mov_b16_e32 v86.h, v22.h
	v_mov_b16_e32 v86.l, v81.h
	v_and_b32_e32 v86, 1, v86
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v81, v81, v86, 0x7fff
	v_mov_b16_e32 v86.h, v22.h
	v_mov_b16_e32 v86.l, v82.h
	v_cndmask_b16 v81.l, 0x7fff, v19.h, vcc_lo
	v_and_b32_e32 v19, 1, v22
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v86, 1, v86
	v_add3_u32 v18, v18, v19, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v19, v20, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v82, v82, v86, 0x7fff
	v_mov_b16_e32 v86.h, v22.h
	v_mov_b16_e32 v86.l, v83.h
	v_mov_b16_e32 v22.l, v19.h
	v_cndmask_b16 v82.l, 0x7fff, v21.h, s2
	v_cmp_o_f32_e64 s2, v19, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v86, 1, v86
	v_and_b32_e32 v20, 1, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v83, v83, v86, 0x7fff
	v_mov_b16_e32 v86.h, v22.h
	v_mov_b16_e32 v86.l, v84.h
	v_add3_u32 v19, v19, v20, 0x7fff
	v_cndmask_b16 v83.l, 0x7fff, v24.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v86, 1, v86
	v_add3_u32 v84, v84, v86, 0x7fff
	v_mov_b16_e32 v86.h, v22.h
	v_mov_b16_e32 v86.l, v85.h
	v_cndmask_b16 v84.l, 0x7fff, v81.h, s7
	v_cndmask_b16 v81.h, 0x7fff, v18.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v18, v23, v23
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v87.l, 0x7fff, v84.h, s10
	v_and_b32_e32 v86, 1, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v22.l, v18.h
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v85, v85, v86, 0x7fff
	v_cndmask_b16 v85.l, 0x7fff, v82.h, s8
	v_cndmask_b16 v82.h, 0x7fff, v19.h, s2
	v_and_b32_e32 v19, 1, v22
	v_cndmask_b16 v86.l, 0x7fff, v83.h, s9
	v_cndmask_b16 v88.l, 0x7fff, v85.h, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v18, v18, v19, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v19, v89, v89
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v83.h, 0x7fff, v18.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v22.l, v19.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v18, v90, v90
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v19, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v20, 1, v22
	v_mov_b16_e32 v22.l, v18.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_add3_u32 v19, v19, v20, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v84.h, 0x7fff, v19.h, s2
	v_and_b32_e32 v19, 1, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v18, v18, v19, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v19, v91, v91
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v85.h, 0x7fff, v18.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v22.l, v19.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v18, v92, v92
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v19, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v20, 1, v22
	v_mov_b16_e32 v22.l, v18.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_add3_u32 v19, v19, v20, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v86.h, 0x7fff, v19.h, s2
	v_and_b32_e32 v19, 1, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v18, v18, v19, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v19, v93, v93
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v87.h, 0x7fff, v18.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v22.l, v19.h
	v_cmp_o_f32_e64 s2, v19, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v20, 1, v22
	v_add3_u32 v19, v19, v20, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v88.h, 0x7fff, v19.h, s2
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[81:88], v[73:80], v[1:8]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ;   in Loop: Header=BB0_1 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	s_movk_i32 s51, 0x800
	.loc	1 605 9 is_stmt 1               ; attention_backward.py:605:9
	s_and_not1_b32 vcc_lo, exec_lo, s17
	s_mov_b32 s60, 0
	s_cbranch_vccnz .LBB0_1
; %bb.4:
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_or_b32_e32 v18, s34, v156
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, s33, v156
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v17, v155, v158
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s5, s43, 0xffff
	s_mov_b32 s7, 0x31027000
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v43, s44, v18
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s2, s44, v17
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v49, 2, v17
	v_or_b32_e32 v48, 4, v17
	v_or_b32_e32 v47, 6, v17
	v_or_b32_e32 v46, 8, v17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s2
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v50, v43, v17, 2
	v_add_lshl_u32 v51, v43, v49, 2
	v_add_lshl_u32 v52, v43, v48, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v45, 10, v17
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v50, 0x80000000, v50, s2
	s_mov_b32 s4, s42
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v0, 32, v17
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v53, v43, v45, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v42, 14, v17
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v25, v50, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v51, s2
	v_add_lshl_u32 v50, v43, v47, 2
	v_cndmask_b32_e64 v51, 0x80000000, v52, s2
	v_add_lshl_u32 v52, v43, v46, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v44, 12, v17
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
	v_or_b32_e32 v41, 34, v17
	v_or_b32_e32 v24, 36, v17
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
	v_or_b32_e32 v23, 38, v17
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v28, v43, v41, 2
	v_add_lshl_u32 v29, v43, v24, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v20, 44, v17
	v_or_b32_e32 v22, 40, v17
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v31, v26, s[4:7], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v28, s2
	s_clause 0x1
	buffer_store_b32 v32, v25, s[4:7], 0 offen
	buffer_store_b32 v33, v27, s[4:7], 0 offen
	v_add_lshl_u32 v25, v43, v23, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v21, 42, v17
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v28, 0x80000000, v29, s2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v18, s46, v18
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v19, 46, v17
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v34, v26, s[4:7], 0 offen
	buffer_store_b32 v35, v28, s[4:7], 0 offen
	v_add_lshl_u32 v26, v43, v22, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	v_add_lshl_u32 v28, v43, v20, 2
	v_add_lshl_u32 v27, v43, v21, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s0, s46, v17
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	buffer_store_b32 v36, v25, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v28, s2
	v_add_lshl_u32 v28, v43, v19, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v17, v18, v17, 2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s0, vcc_lo, s0
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x2
	buffer_store_b32 v37, v26, s[4:7], 0 offen
	buffer_store_b32 v38, v27, s[4:7], 0 offen
	buffer_store_b32 v39, v25, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v28, s2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	v_add_lshl_u32 v26, v18, v49, 2
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s50, s6
	s_mov_b32 s51, s7
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v40, v25, s[4:7], 0 offen
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v9, v17, s[48:51], 0 offen
	v_add_lshl_u32 v9, v18, v48, 2
	v_cndmask_b32_e64 v17, 0x80000000, v26, s0
	v_add_lshl_u32 v25, v18, v47, 2
	v_add_lshl_u32 v26, v18, v46, 2
	v_add_lshl_u32 v27, v18, v45, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	buffer_store_b32 v10, v17, s[48:51], 0 offen
	v_cndmask_b32_e64 v10, 0x80000000, v25, s0
	v_cndmask_b32_e64 v17, 0x80000000, v26, s0
	v_cndmask_b32_e64 v25, 0x80000000, v27, s0
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s1, s46, v0
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v11, v9, s[48:51], 0 offen
	v_add_lshl_u32 v9, v18, v44, 2
	s_clause 0x2
	buffer_store_b32 v12, v10, s[48:51], 0 offen
	buffer_store_b32 v13, v17, s[48:51], 0 offen
	buffer_store_b32 v14, v25, s[48:51], 0 offen
	v_add_lshl_u32 v10, v18, v42, 2
	v_add_lshl_u32 v0, v18, v0, 2
	v_add_lshl_u32 v11, v18, v41, 2
	v_add_lshl_u32 v12, v18, v24, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v9, s[48:51], 0 offen
	buffer_store_b32 v16, v10, s[48:51], 0 offen
	buffer_store_b32 v1, v0, s[48:51], 0 offen
	buffer_store_b32 v2, v11, s[48:51], 0 offen
	buffer_store_b32 v3, v12, s[48:51], 0 offen
	v_add_lshl_u32 v0, v18, v23, 2
	v_add_lshl_u32 v1, v18, v22, 2
	v_add_lshl_u32 v2, v18, v21, 2
	v_add_lshl_u32 v3, v18, v20, 2
	v_add_lshl_u32 v9, v18, v19, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v0, s[48:51], 0 offen
	buffer_store_b32 v5, v1, s[48:51], 0 offen
	buffer_store_b32 v6, v2, s[48:51], 0 offen
	buffer_store_b32 v7, v3, s[48:51], 0 offen
	buffer_store_b32 v8, v9, s[48:51], 0 offen
	.loc	1 451 5                         ; attention_backward.py:451:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 251
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 61
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15924
; TotalNumSgprs: 63
; NumVgprs: 251
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 63
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 0
    .sgpr_count:     63
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutbfloat16_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
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
