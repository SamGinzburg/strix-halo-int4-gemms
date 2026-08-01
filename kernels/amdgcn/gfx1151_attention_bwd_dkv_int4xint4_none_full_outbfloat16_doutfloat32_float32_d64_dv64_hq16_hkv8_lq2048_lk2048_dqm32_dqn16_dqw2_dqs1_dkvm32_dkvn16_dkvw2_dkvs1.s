	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v50, 16, v0
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_lshlrev_b32_e32 v43, 3, v0
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s21, s2, 4
	.loc	1 521 24                        ; attention_backward.py:521:24
	s_lshl_b32 s5, s3, 11
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v4, s21, v2
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_add_i32 s22, s5, s21
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_and_b32_e32 v1, 24, v43
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_or_b32_e32 v3, s22, v2
	s_mov_b32 s55, 0x31027000
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	s_mov_b32 s54, 0x7ffffffe
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_u32 v78, v0, 4, 1
	s_load_b128 s[12:15], s[0:1], 0x20
	v_lshrrev_b32_e32 v6, 3, v0
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_and_b32_e32 v47, 7, v0
	.loc	1 541 32                        ; attention_backward.py:541:32
	s_ashr_i32 s6, s21, 1
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[2:3], null, s45, v3, v[1:2]
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_cmp_gt_i32_e64 s4, s45, v1
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_and_b32 s53, s27, 0xffff
	s_mov_b32 s52, s26
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_or_b32_e32 v4, s5, v78
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v5, s21, v78
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_dual_cndmask_b32 v1, 0x80000000, v2 :: v_dual_and_b32 v46, 48, v0
	.loc	1 543 26                        ; attention_backward.py:543:26
	s_lshl_b32 s4, s3, 10
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_add_lshl_u32 v4, v4, s21, 1
	.loc	1 545 17                        ; attention_backward.py:545:17
	s_add_i32 s4, s6, s4
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshrrev_b32_e32 v7, 1, v46
	buffer_load_b64 v[1:2], v1, s[52:55], 0 offen
	.loc	1 541 32                        ; attention_backward.py:541:32
	v_or_b32_e32 v8, s6, v6
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_lshlrev_b32_e32 v3, 3, v47
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_or_b32_e32 v9, s4, v6
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xad_u32 v7, v43, v7, 0
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s9, 0x800, v5
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
	v_cndmask_b32_e64 v8, 0x80000000, v4, s9
	v_or_b32_e32 v14, 20, v4
	v_or_b32_e32 v15, 24, v4
	v_or_b32_e32 v16, 28, v4
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_mad_u64_u32 v[4:5], null, s46, v9, v[3:4]
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v5, 0x80000000, v10, s9
	v_cndmask_b32_e64 v9, 0x80000000, v11, s9
	v_cndmask_b32_e64 v10, 0x80000000, v12, s9
	s_and_b32 s53, s13, 0xffff
	s_mov_b32 s52, s12
	v_cndmask_b32_e64 v11, 0x80000000, v13, s9
	v_cndmask_b32_e64 v12, 0x80000000, v14, s9
	v_cndmask_b32_e64 v13, 0x80000000, v15, s9
	v_cndmask_b32_e64 v14, 0x80000000, v16, s9
	v_mov_b32_e32 v16, v17
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s4, s46, v3
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v200, 4, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v79, 15, v0
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_mov_b16_e32 v42.l, 0
	.loc	1 549 22                        ; attention_backward.py:549:22
	s_and_b32 s5, vcc_lo, s4
	v_dual_mov_b32 v33, 0 :: v_dual_lshlrev_b32 v54, 1, v0
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v4, 0x80000000, v4, s5
	v_xor_b32_e32 v170, v200, v46
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v49, 56, v0
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v60.h, v42.l
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_i32 v51, v0, 4, 1
	s_clause 0x1
	s_load_b64 s[48:49], s[0:1], 0x58
	s_load_b256 s[36:43], s[0:1], 0x38
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_and_b32_e32 v55, 1, v0
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_bfe_i32 v61, v0, 3, 1
	v_dual_mov_b32 v35, v17 :: v_dual_lshlrev_b32 v46, 2, v50
	v_dual_mov_b32 v38, v17 :: v_dual_and_b32 v51, 0x440, v51
	v_cmp_eq_u32_e64 s0, 0, v50
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v45.h, v42.l
	v_dual_mov_b32 v34, v17 :: v_dual_and_b32 v67, 0x370, v200
	v_dual_mov_b32 v36, v17 :: v_dual_and_b32 v61, 0x440, v61
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v53, 4, v0
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v59.h, v42.l
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v172, 1, v0
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v63.l, v42.l
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_xad_u32 v67, v61, v67, 0
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v64.l, v42.l
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v57.h, v42.l
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v62.l, v42.l
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v56.h, v42.l
	s_lshl_b32 s23, s3, 12
	v_mov_b16_e32 v58.h, v42.l
	s_and_b32 s31, s31, 0xffff
	s_waitcnt lgkmcnt(0)
	s_and_b32 s39, s39, 0xffff
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s33, 0
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	s_mov_b32 s62, s54
	s_mov_b32 s63, s55
	s_and_b32 s25, s25, 0xffff
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s26, s54
	s_mov_b32 s27, s55
	s_mov_b32 s56, s38
	s_mov_b32 s60, s40
	s_mov_b32 s38, s54
	s_mov_b32 s57, s39
	s_mov_b32 s61, s41
	s_mov_b32 s39, s55
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_and_b32_e32 v65, 24, v54
	v_and_or_b32 v54, v54, 30, v78
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_and_b32_e32 v52, 32, v0
	v_mov_b32_e32 v40, v17
	v_lshlrev_b32_e32 v0, 6, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_lshlrev_b32_e32 v72, 7, v52
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_lshlrev_b32_e32 v69, 3, v52
	v_lshlrev_b32_e32 v70, 1, v52
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt vmcnt(0)
	ds_store_b64 v7, v[1:2]
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v1, s21, v6
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_clause 0x7
	buffer_load_u16 v44, v8, s[52:55], 0 offen
	buffer_load_u16 v41, v5, s[52:55], 0 offen
	buffer_load_u16 v74, v9, s[52:55], 0 offen
	buffer_load_u16 v75, v10, s[52:55], 0 offen
	buffer_load_u16 v76, v11, s[52:55], 0 offen
	buffer_load_u16 v77, v12, s[52:55], 0 offen
	buffer_load_u16 v24, v13, s[52:55], 0 offen
	buffer_load_u16 v73, v14, s[52:55], 0 offen
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v2, s2, v1
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, 0x800, v1
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_and_b32 s53, s29, 0xffff
	s_mov_b32 s52, s28
	v_mov_b32_e32 v10, v17
	.loc	1 570 20                        ; attention_backward.py:570:20
	v_ashrrev_i32_e32 v2, 4, v2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s2, s2, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	buffer_load_b64 v[22:23], v4, s[52:55], 0 offen
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_and_b32 s53, s15, 0xffff
	s_mov_b32 s52, s14
	.loc	1 568 17                        ; attention_backward.py:568:17
	v_lshl_add_u32 v2, s3, 7, v2
	v_mov_b32_e32 v4, v17
	v_mov_b32_e32 v7, v17
	v_dual_mov_b32 v30, v17 :: v_dual_lshlrev_b32 v71, 8, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v2, v2, s46
	v_dual_mov_b32 v32, v17 :: v_dual_and_b32 v43, 48, v43
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_lshlrev_b32_e32 v68, 4, v79
	v_mov_b32_e32 v8, v17
	v_mov_b32_e32 v14, v17
	v_dual_mov_b32 v37, v17 :: v_dual_lshlrev_b32 v50, 1, v79
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_add_lshl_u32 v1, v2, v3, 1
	v_mov_b32_e32 v3, v17
	v_lshl_or_b32 v96, v79, 6, v43
	v_xor_b32_e32 v43, 0x440, v170
	v_mov_b32_e32 v2, v17
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v26, v17 :: v_dual_lshlrev_b32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v28, v17 :: v_dual_add_nc_u32 v183, 0, v43
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshlrev_b32_e32 v47, 4, v47
	.loc	1 567 32                        ; attention_backward.py:567:32
	buffer_load_b128 v[18:21], v1, s[52:55], 0 offen
	v_mov_b32_e32 v1, 0
	v_dual_mov_b32 v15, v17 :: v_dual_lshlrev_b32 v48, 2, v79
	v_mov_b32_e32 v5, v17
	v_mov_b32_e32 v6, v17
	v_dual_mov_b32 v13, v17 :: v_dual_lshlrev_b32 v66, 5, v55
	v_or3_b32 v171, v71, v72, v68
	.loc	1 620 52                        ; attention_backward.py:620:52
	v_lshlrev_b32_e32 v95, 4, v55
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshl_or_b32 v55, v79, 5, v65
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_xor_b32_e32 v51, v51, v68
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshl_or_b32 v47, v79, 7, v47
	v_xor_b32_e32 v43, 16, v171
	v_xor_b32_e32 v88, 0xc0, v171
	v_mov_b32_e32 v31, v17
	v_xor_b32_e32 v89, 0xd0, v171
	v_or3_b32 v97, v50, v46, v52
	v_add_nc_u32_e32 v98, 0, v43
	v_xor_b32_e32 v46, 0x880, v170
	v_xor_b32_e32 v85, 0x90, v171
	v_mov_b32_e32 v27, v17
	v_mov_b32_e32 v29, v17
	v_add3_u32 v177, 0, v70, v48
	v_add3_u32 v180, 0, v52, v50
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v50, 0, v55
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_add3_u32 v68, 0, v69, v51
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v70, v47, 16, 0
	v_xad_u32 v71, v47, 32, 0
	v_xad_u32 v72, v47, 48, 0
	v_xad_u32 v80, 0x50, v47, 0
	v_xad_u32 v81, 0x60, v47, 0
	v_xad_u32 v82, 0x70, v47, 0
	v_add_nc_u32_e32 v184, 0, v46
	v_xor_b32_e32 v46, 32, v171
	v_xor_b32_e32 v61, 0x60, v171
	v_add_nc_u32_e32 v212, 0, v85
	v_xor_b32_e32 v90, 0xe0, v171
	v_xor_b32_e32 v87, 0xb0, v171
	v_xor_b32_e32 v91, 0xf0, v171
	v_mov_b32_e32 v11, v17
	v_dual_mov_b32 v39, v17 :: v_dual_add_nc_u32 v176, 0, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v0, 0, v87
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xad_u32 v51, v55, 16, 0
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s1, s46, v48
	v_or_b32_e32 v65, 16, v66
	v_xor_b32_e32 v83, 0x70, v171
	v_xor_b32_e32 v84, 0x80, v171
	v_xor_b32_e32 v86, 0xa0, v171
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s3, s44, v66
	v_cmp_gt_i32_e64 s4, s44, v65
	v_xor_b32_e32 v102, 0x120, v97
	v_xor_b32_e32 v104, 16, v96
	v_xor_b32_e32 v106, 48, v96
	v_xor_b32_e32 v92, 0x90, v97
	v_xor_b32_e32 v103, 0x1b0, v97
	v_xor_b32_e32 v105, 32, v96
	v_mov_b32_e32 v12, v17
	.loc	1 641 25                        ; attention_backward.py:641:25
	s_mul_f32 s28, s47, 0x3fb8aa3b
	s_mov_b32 s29, -1
	v_add_nc_u32_e32 v203, 0, v103
	v_add_nc_u32_e32 v205, 0, v105
	s_mov_b32 s52, s30
	s_mov_b32 s53, s31
	v_add_nc_u32_e32 v202, 0, v102
	v_add_nc_u32_e32 v204, 0, v104
	.loc	1 554 72                        ; attention_backward.py:554:72
	s_waitcnt vmcnt(1)
	v_and_b16 v42.h, v22.h, 15
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_bfe_u32 v85, v23, 20, 4
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_add_nc_u32_e32 v69, 0, v47
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v45.l, v23.h, 15
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v65, v23, 24, 4
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v42.h
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v66, v23, 16, 4
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v87, -16, v66
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v64.h, v21.l
	v_and_b32_e32 v21, 0xffff0000, v21
	v_add_nc_u32_e32 v43, 0, v88
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v78, off offset:88
	scratch_store_b32 off, v79, off offset:80
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v78, 1, v52
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v42.h, v18.l
	scratch_store_b32 off, v43, off offset:64 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v43, 0, v89
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v79, v47, 64, 0
	scratch_store_b32 off, v78, off offset:84 ; 4-byte Folded Spill
	v_xad_u32 v78, v200, v49, 0
	v_xor_b32_e32 v49, 0xcc0, v170
	v_xor_b32_e32 v47, 48, v171
	v_add_nc_u32_e32 v209, 0, v61
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_bfe_u32 v61, v22, 20, 4
	scratch_store_b32 off, v43, off offset:68 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v185, 0, v49
	v_xor_b32_e32 v49, 64, v171
	v_add_nc_u32_e32 v207, 0, v47
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v63.h, v20.l
	v_add_nc_u32_e32 v43, 0, v90
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xad_u32 v52, v55, 8, 0
	v_mad_u64_u32 v[93:94], null, s46, v53, v[48:49]
	v_add_nc_u32_e32 v94, 0, v46
	ds_load_b64 v[46:47], v50
	scratch_store_b32 off, v43, off offset:72 ; 4-byte Folded Spill
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_and_b32_e32 v18, 0xffff0000, v18
	v_add_nc_u32_e32 v43, 0, v91
	scratch_store_b32 off, v0, off offset:76 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v99, 0, v49
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b32_e32 v49, 8, v22
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v53, v22, 16, 4
	scratch_store_b32 off, v43, off offset:40 ; 4-byte Folded Spill
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v43.h, 4, v22.l
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_alignbit_b32 v50, v23, v22, 24
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v43.l, v22.l, 15
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v62.h, v19.l
	v_and_b32_e32 v20, 0xffff0000, v20
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v57.l, v43.h, 15
	v_lshlrev_b32_e32 v181, 2, v54
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xad_u32 v54, v55, 24, 0
	v_xor_b32_e32 v55, 0x50, v171
	v_add_nc_u32_e32 v179, 0, v86
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_and_b32_e32 v19, 0xffff0000, v19
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[46:47], off    ; 8-byte Folded Spill
	ds_load_b64 v[186:187], v52
	ds_load_b64 v[46:47], v51
	v_add_nc_u32_e32 v208, 0, v55
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v55, 15, v22
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b32_e32 v51, 8, v23
	v_lshrrev_b32_e32 v52, 24, v23
	v_add_nc_u32_e32 v211, 0, v84
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v84, 15, v23
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v86, -16, v55
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v43.h, 4, v51.l
	v_lshrrev_b16 v58.l, 4, v52.l
	v_add_nc_u32_e32 v210, 0, v83
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v83, v23, 8, 4
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v88, -16, v84
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v59.l, v43.h, 15
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[46:47], off offset:52 ; 8-byte Folded Spill
	ds_load_b64 v[46:47], v54
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v54, v22, 8, 4
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v89, -16, v54
	.loc	1 575 27                        ; attention_backward.py:575:27
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[46:47], off offset:44 ; 8-byte Folded Spill
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b64 v[47:48], 24, v[22:23]
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v48, -16, v53
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v22.l, v49.l, 15
	v_and_b16 v46.l, v23.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v46.h, 4, v23.l
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v23.l, v52.l, 15
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v48, v53, v48, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v22.l
	.loc	1 554 72 is_stmt 1              ; attention_backward.py:554:72
	v_and_b16 v23.h, v51.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v22.h, 4, v49.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v49, -16, v65
	v_or_b32_e32 v52, -16, v83
	.loc	1 557 25 is_stmt 0              ; attention_backward.py:557:25
	v_cndmask_b32_e64 v51, v54, v89, s2
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v43.l
	.loc	1 556 28 is_stmt 1              ; attention_backward.py:556:28
	v_and_b16 v56.l, v22.h, 15
	v_and_b16 v60.l, v46.h, 15
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v46.h, v47.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v47.l, 4, v47.l
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v53, v55, v86, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v23.l
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_dual_cndmask_b32 v55, 0, v58 :: v_dual_cndmask_b32 v58, 0, v60
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v48, v48
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v22, v65, v49, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v45.l
	.loc	1 556 28 is_stmt 1              ; attention_backward.py:556:28
	v_and_b16 v45.l, v47.l, 15
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v47, v51
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v65, -16, v55
	.loc	1 575 27                        ; attention_backward.py:575:27
	s_barrier
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v49, v66, v87, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v23.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v23, v83, v52, s2
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v46.l
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v51, v23
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_dual_cndmask_b32 v23, 0, v61 :: v_dual_and_b32 v50, 15, v50
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v54, v84, v88, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v46.h
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v46, v53
	v_cvt_f32_i32_e32 v53, v22
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v52, -16, v50
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_dual_cndmask_b32 v22, 0, v45 :: v_dual_cndmask_b32 v45, 0, v56
	v_cndmask_b32_e32 v56, 0, v85, vcc_lo
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v84, -16, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v43, v50, v52, s2
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v50, v54
	v_cvt_f32_i32_e32 v52, v49
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_dual_cndmask_b32 v54, 0, v57 :: v_dual_cndmask_b32 v57, 0, v59
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v49, v43
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v43, -16, v22
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v22
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v59, -16, v23
	v_or_b32_e32 v60, -16, v45
	v_or_b32_e32 v61, -16, v54
	v_or_b32_e32 v66, -16, v56
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v22, v22, v43, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v23
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v83, -16, v57
	.loc	1 620 52 is_stmt 1              ; attention_backward.py:620:52
	v_cmp_gt_i32_e64 s5, s45, v95
	v_xor_b32_e32 v215, 4, v181
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v23, v23, v59, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v45
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v43, v45, v60, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v54
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v45, v54, v61, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v54, v45
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v59, v55, v65, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v56
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v55, v43
	v_cvt_f32_i32_e32 v61, v59
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v60, v56, v66, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v57
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v56, v23
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v60, v60
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v65, v57, v83, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v58
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v57, v22
	ds_store_b128 v67, v[46:49]
	ds_store_b128 v67, v[54:57] offset:128
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v58, v58, v84, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v59, v65
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[45:48], v68
	ds_load_b128 v[54:57], v68 offset:512
	v_cvt_f32_i32_e32 v58, v58
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v67, v[50:53]
	ds_store_b128 v67, v[58:61] offset:128
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[49:52], v68
	ds_load_b128 v[58:61], v68 offset:512
	v_add_nc_u32_e32 v206, 0, v106
	v_mul_f32_e32 v43, v47, v62
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_cmp_o_f32_e64 s6, v43, v43
	.loc	1 575 27                        ; attention_backward.py:575:27
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v47, v51, v64
	v_dual_mul_f32 v23, v46, v18 :: v_dual_lshlrev_b32 v22, 16, v44
	v_mul_f32_e32 v44, v48, v19
	v_mul_f32_e32 v48, v52, v21
	v_mul_f32_e32 v18, v55, v18
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	scratch_store_b32 off, v22, off offset:60 ; 4-byte Folded Spill
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v22, v45, v42
	v_dual_mul_f32 v45, v49, v63 :: v_dual_mul_f32 v46, v50, v20
	v_mul_f32_e32 v42, v54, v42
	v_mul_f32_e32 v49, v56, v62
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_bfe_u32 v52, v22, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v19, v57, v19
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v50, v58, v63
	v_mul_f32_e32 v20, v59, v20
	v_mul_f32_e32 v51, v60, v64
	v_mul_f32_e32 v21, v61, v21
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	v_bfe_u32 v56, v45, 16, 1
	v_bfe_u32 v59, v48, 16, 1
	v_bfe_u32 v61, v18, 16, 1
	v_add3_u32 v22, v22, v52, 0x7fff
	v_bfe_u32 v53, v23, 16, 1
	v_bfe_u32 v54, v43, 16, 1
	v_bfe_u32 v55, v44, 16, 1
	v_bfe_u32 v57, v46, 16, 1
	v_bfe_u32 v58, v47, 16, 1
	v_cmp_o_f32_e64 s8, v45, v45
	v_cmp_o_f32_e64 s12, v48, v48
	v_bfe_u32 v60, v42, 16, 1
	v_cmp_o_f32_e64 s14, v18, v18
	v_bfe_u32 v63, v19, 16, 1
	v_bfe_u32 v64, v50, 16, 1
	v_bfe_u32 v65, v20, 16, 1
	v_bfe_u32 v67, v21, 16, 1
	v_add3_u32 v45, v45, v56, 0x7fff
	v_add3_u32 v56, v48, v59, 0x7fff
	v_add3_u32 v52, v18, v61, 0x7fff
	v_cndmask_b16 v18.l, 0x7fff, v22.h, vcc_lo
	.loc	1 527 29 is_stmt 1              ; attention_backward.py:527:29
	v_lshlrev_b32_e32 v22, 16, v41
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_bfe_u32 v62, v49, 16, 1
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_lshlrev_b32_e32 v48, 16, v75
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_bfe_u32 v66, v51, 16, 1
	v_cmp_o_f32_e64 s2, v23, v23
	v_cmp_o_f32_e64 s7, v44, v44
	v_cmp_o_f32_e64 s10, v46, v46
	v_cmp_o_f32_e64 s11, v47, v47
	v_add3_u32 v23, v23, v53, 0x7fff
	v_add3_u32 v43, v43, v54, 0x7fff
	v_add3_u32 v44, v44, v55, 0x7fff
	v_add3_u32 v46, v46, v57, 0x7fff
	v_add3_u32 v47, v47, v58, 0x7fff
	v_cmp_o_f32_e64 s13, v42, v42
	v_cmp_o_f32_e64 s15, v49, v49
	v_cmp_o_f32_e64 s16, v19, v19
	v_cmp_o_f32_e64 s17, v50, v50
	v_cmp_o_f32_e64 s18, v20, v20
	v_cmp_o_f32_e64 s19, v51, v51
	v_cmp_o_f32_e64 s20, v21, v21
	v_add3_u32 v42, v42, v60, 0x7fff
	v_add3_u32 v49, v49, v62, 0x7fff
	v_add3_u32 v53, v19, v63, 0x7fff
	v_add3_u32 v50, v50, v64, 0x7fff
	v_add3_u32 v54, v20, v65, 0x7fff
	v_add3_u32 v51, v51, v66, 0x7fff
	v_add3_u32 v55, v21, v67, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v23.h, s2
	v_cndmask_b16 v19.l, 0x7fff, v43.h, s6
	v_cndmask_b16 v19.h, 0x7fff, v44.h, s7
	v_cndmask_b16 v20.l, 0x7fff, v45.h, s8
	v_cndmask_b16 v20.h, 0x7fff, v46.h, s10
	v_cndmask_b16 v21.l, 0x7fff, v47.h, s11
	v_cndmask_b16 v21.h, 0x7fff, v56.h, s12
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s13
	v_cndmask_b16 v42.h, 0x7fff, v52.h, s14
	v_cndmask_b16 v43.l, 0x7fff, v49.h, s15
	v_cndmask_b16 v43.h, 0x7fff, v53.h, s16
	v_cndmask_b16 v44.l, 0x7fff, v50.h, s17
	v_cndmask_b16 v44.h, 0x7fff, v54.h, s18
	v_cndmask_b16 v45.l, 0x7fff, v51.h, s19
	v_cndmask_b16 v45.h, 0x7fff, v55.h, s20
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v78, v[18:21]
	ds_store_b128 v78, v[42:45] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[188:191], v69
	ds_load_b128 v[192:195], v70
	ds_load_b128 v[56:59], v71
	ds_load_b128 v[60:63], v72
	ds_load_b128 v[64:67], v79
	ds_load_b128 v[68:71], v80
	ds_load_b128 v[236:239], v81
	ds_load_b128 v[240:243], v82
	v_mad_u64_u32 v[49:50], null, s46, 20, v[93:94]
	v_mad_u64_u32 v[46:47], null, s46, 12, v[93:94]
	v_mad_u64_u32 v[50:51], null, s46, 24, v[93:94]
	v_mad_u64_u32 v[44:45], null, s46, 28, v[93:94]
	v_dual_mov_b32 v72, v22 :: v_dual_add_nc_u32 v201, 0, v92
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_lshlrev_b32_e32 v41, 16, v74
	v_lshlrev_b32_e32 v54, 16, v76
	v_lshlrev_b32_e32 v53, 16, v77
	v_lshlrev_b32_e32 v51, 16, v24
	v_lshlrev_b32_e32 v55, 16, v73
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[236:239], off offset:8 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[240:243], off offset:24 ; 16-byte Folded Spill
.LBB0_1:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_2 Depth 2
	.loc	1 520 26                        ; attention_backward.py:520:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:80
	scratch_load_b32 v18, off, off offset:84
	.loc	1 613 25                        ; attention_backward.py:613:25
	s_or_b32 s30, s23, s33
	s_xor_b32 s29, s29, -1
	s_mov_b32 s31, 0
	.loc	1 520 26                        ; attention_backward.py:520:26
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v18, v18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v216, s30, v18
.LBB0_2:                                ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 26 is_stmt 0                ; attention_backward.py:0:26
	v_lshl_add_u32 v22, s46, 2, v93
	.loc	1 616 25 is_stmt 1              ; attention_backward.py:616:25
	s_or_b32 s2, s31, s30
	v_or_b32_e32 v21, s30, v172
	v_or_b32_e32 v18, s2, v172
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s2, s2, s46
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v106, 0x1000, v177
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v22, s2, v22, 2
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v21, s31, v21, 1
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_mad_u64_u32 v[18:19], null, v18, s45, v[95:96]
	.loc	1 624 25                        ; attention_backward.py:624:25
	v_or_b32_e32 v19, s31, v216
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v23, 0x80000000, v22, s1
	v_lshl_add_u32 v22, s46, 3, v93
	.loc	1 623 39                        ; attention_backward.py:623:39
	buffer_load_u16 v218, v21, s[52:55], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v21, s2, v93, 2
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v20, 1, v19
	v_dual_mov_b32 v52, v46 :: v_dual_lshlrev_b32 v19, 2, v19
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v22, s2, v22, 2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v21, 0x80000000, v21, s1
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v18, 0x80000000, v18, s5
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v107, 0x1400, v177
	v_add_nc_u32_e32 v108, 0x1800, v177
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v24, 0x80000000, v22, s1
	v_add_lshl_u32 v22, s2, v46, 2
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v134, 0x1c00, v177
	v_mov_b32_e32 v42, v49
	v_mov_b32_e32 v100, v98
	.loc	1 651 43                        ; attention_backward.py:651:43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v81, 0x80000000, v22, s1
	v_lshl_add_u32 v22, s46, 4, v93
	.loc	1 651 43                        ; attention_backward.py:651:43
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v22, s2, v22, 2
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b32_e32 v43, v50
	v_mov_b32_e32 v101, v99
	v_mov_b32_e32 v45, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v85, 0x80000000, v22, s1
	v_add_lshl_u32 v22, s2, v49, 2
	v_cndmask_b32_e64 v89, 0x80000000, v22, s1
	v_add_lshl_u32 v22, s2, v50, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v90, 0x80000000, v22, s1
	v_add_lshl_u32 v22, s2, v44, 2
	v_cndmask_b32_e64 v91, 0x80000000, v22, s1
	.loc	1 623 39                        ; attention_backward.py:623:39
	buffer_load_u16 v219, v20, s[52:55], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v217, v19, s[56:59], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v220, v19, s[60:63], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x7
	buffer_load_b128 v[19:22], v21, s[36:39], 0 offen
	buffer_load_b128 v[73:76], v23, s[36:39], 0 offen
	buffer_load_b128 v[77:80], v24, s[36:39], 0 offen
	buffer_load_b128 v[81:84], v81, s[36:39], 0 offen
	buffer_load_b128 v[85:88], v85, s[36:39], 0 offen
	buffer_load_b128 v[221:224], v89, s[36:39], 0 offen
	buffer_load_b128 v[225:228], v90, s[36:39], 0 offen
	buffer_load_b128 v[229:232], v91, s[36:39], 0 offen
	.loc	1 615 36                        ; attention_backward.py:615:36
	buffer_load_b128 v[89:92], v18, s[24:27], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v18, 0, v200
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(8)
	ds_store_b128 v18, v[19:22]
	s_waitcnt vmcnt(7)
	ds_store_b128 v18, v[73:76] offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b128 v18, v[77:80] offset:2048
	s_waitcnt vmcnt(5)
	ds_store_b128 v18, v[81:84] offset:3072
	s_waitcnt vmcnt(4)
	ds_store_b128 v18, v[85:88] offset:4096
	s_waitcnt vmcnt(3)
	ds_store_b128 v18, v[221:224] offset:5120
	s_waitcnt vmcnt(2)
	ds_store_b128 v18, v[225:228] offset:6144
	s_waitcnt vmcnt(1)
	ds_store_b128 v18, v[229:232] offset:7168
	v_add_nc_u32_e32 v18, 0x400, v177
	v_add_nc_u32_e32 v23, 0x800, v177
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v24, 0xc00, v177
	ds_load_2addr_b32 v[132:133], v18 offset1:32
	ds_load_2addr_b32 v[138:139], v18 offset0:64 offset1:96
	ds_load_2addr_b32 v[130:131], v18 offset0:128 offset1:160
	ds_load_2addr_b32 v[140:141], v18 offset0:192 offset1:224
	ds_load_2addr_b32 v[128:129], v23 offset1:32
	ds_load_2addr_b32 v[142:143], v23 offset0:64 offset1:96
	ds_load_2addr_b32 v[126:127], v23 offset0:128 offset1:160
	ds_load_2addr_b32 v[144:145], v23 offset0:192 offset1:224
	ds_load_2addr_b32 v[124:125], v24 offset1:32
	ds_load_2addr_b32 v[146:147], v24 offset0:64 offset1:96
	ds_load_2addr_b32 v[122:123], v24 offset0:128 offset1:160
	ds_load_2addr_b32 v[148:149], v24 offset0:192 offset1:224
	ds_load_2addr_b32 v[120:121], v106 offset1:32
	ds_load_2addr_b32 v[150:151], v106 offset0:64 offset1:96
	ds_load_2addr_b32 v[118:119], v106 offset0:128 offset1:160
	ds_load_2addr_b32 v[152:153], v106 offset0:192 offset1:224
	ds_load_2addr_b32 v[116:117], v107 offset1:32
	ds_load_2addr_b32 v[154:155], v107 offset0:64 offset1:96
	ds_load_2addr_b32 v[114:115], v107 offset0:128 offset1:160
	ds_load_2addr_b32 v[156:157], v107 offset0:192 offset1:224
	ds_load_2addr_b32 v[112:113], v108 offset1:32
	ds_load_2addr_b32 v[158:159], v108 offset0:64 offset1:96
	ds_load_2addr_b32 v[110:111], v108 offset0:128 offset1:160
	ds_load_2addr_b32 v[160:161], v108 offset0:192 offset1:224
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v18, 0, v170
	.loc	1 732 34                        ; attention_backward.py:732:34
	ds_load_2addr_b32 v[46:47], v134 offset1:32
	ds_load_2addr_b32 v[162:163], v134 offset0:64 offset1:96
	ds_load_2addr_b32 v[213:214], v134 offset0:128 offset1:160
	ds_load_2addr_b32 v[164:165], v134 offset0:192 offset1:224
	ds_load_2addr_b32 v[136:137], v177 offset1:32
	ds_load_2addr_b32 v[166:167], v177 offset0:64 offset1:96
	ds_load_2addr_b32 v[134:135], v177 offset0:128 offset1:160
	ds_load_2addr_b32 v[168:169], v177 offset0:192 offset1:224
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v18, v[19:22]
	ds_store_b128 v18, v[85:88] offset:4096
	ds_store_b128 v183, v[73:76]
	ds_store_b128 v183, v[221:224] offset:4096
	ds_store_b128 v184, v[77:80]
	ds_store_b128 v184, v[225:228] offset:4096
	ds_store_b128 v185, v[81:84]
	ds_store_b128 v185, v[229:232] offset:4096
	v_add_nc_u32_e32 v18, 0, v171
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:76 ; 4-byte Folded Reload
	ds_load_b128 v[18:21], v18
	ds_load_b128 v[73:76], v98
	.loc	1 630 33                        ; attention_backward.py:630:33
	scratch_load_b64 v[49:50], off, off     ; 8-byte Folded Reload
	v_mov_b32_e32 v98, v97
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v22, v18, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v18, v18
	v_cmp_o_f32_e64 s2, v19, v19
	v_cmp_o_f32_e64 s6, v20, v20
	v_cmp_o_f32_e64 s7, v21, v21
	v_add3_u32 v22, v18, v22, 0x7fff
	v_bfe_u32 v18, v19, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s8, v73, v73
	v_cmp_o_f32_e64 s10, v74, v74
	v_cmp_o_f32_e64 s11, v75, v75
	v_cmp_o_f32_e64 s12, v76, v76
	v_add3_u32 v23, v19, v18, 0x7fff
	v_bfe_u32 v18, v20, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v24, v20, v18, 0x7fff
	v_bfe_u32 v18, v21, 16, 1
	v_add3_u32 v77, v21, v18, 0x7fff
	v_bfe_u32 v18, v73, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v78, v73, v18, 0x7fff
	v_bfe_u32 v18, v74, 16, 1
	v_add3_u32 v79, v74, v18, 0x7fff
	v_bfe_u32 v18, v75, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v80, v75, v18, 0x7fff
	v_bfe_u32 v18, v76, 16, 1
	v_add3_u32 v81, v76, v18, 0x7fff
	ds_load_b128 v[18:21], v94
	ds_load_b128 v[73:76], v207
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v82, v18, 16, 1
	v_cmp_o_f32_e64 s13, v18, v18
	v_cmp_o_f32_e64 s14, v19, v19
	v_cmp_o_f32_e64 s15, v20, v20
	v_cmp_o_f32_e64 s16, v21, v21
	v_add3_u32 v18, v18, v82, 0x7fff
	v_bfe_u32 v82, v19, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s17, v73, v73
	v_cmp_o_f32_e64 s18, v74, v74
	v_cmp_o_f32_e64 s19, v75, v75
	v_cmp_o_f32_e64 s20, v76, v76
	v_add3_u32 v19, v19, v82, 0x7fff
	v_bfe_u32 v82, v20, 16, 1
	v_cndmask_b16 v77.l, 0x7fff, v18.h, s13
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v18, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v20, v20, v82, 0x7fff
	v_bfe_u32 v82, v21, 16, 1
	v_cndmask_b16 v78.l, 0x7fff, v20.h, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v21, v21, v82, 0x7fff
	v_bfe_u32 v82, v73, 16, 1
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v20, v17
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v82, v73, v82, 0x7fff
	v_bfe_u32 v73, v74, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v79.l, 0x7fff, v82.h, s17
	v_add3_u32 v83, v74, v73, 0x7fff
	v_bfe_u32 v73, v75, 16, 1
	v_cndmask_b16 v74.l, 0x7fff, v24.h, s6
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v24, v17
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v74.h, 0x7fff, v77.h, s7
	v_cndmask_b16 v77.h, 0x7fff, v19.h, s14
	v_add3_u32 v84, v75, v73, 0x7fff
	v_bfe_u32 v73, v76, 16, 1
	v_cndmask_b16 v75.l, 0x7fff, v78.h, s8
	v_cndmask_b16 v78.h, 0x7fff, v21.h, s16
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v19, v17
	v_mov_b32_e32 v21, v17
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v85, v76, v73, 0x7fff
	v_cndmask_b16 v73.l, 0x7fff, v22.h, vcc_lo
	v_cndmask_b16 v73.h, 0x7fff, v23.h, s2
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v22, v17
	v_mov_b32_e32 v23, v17
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v75.h, 0x7fff, v79.h, s10
	v_cndmask_b16 v76.l, 0x7fff, v80.h, s11
	v_cndmask_b16 v76.h, 0x7fff, v81.h, s12
	v_cndmask_b16 v79.h, 0x7fff, v83.h, s18
	v_cndmask_b16 v80.l, 0x7fff, v84.h, s19
	v_cndmask_b16 v80.h, 0x7fff, v85.h, s20
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v88, v24 :: v_dual_mov_b32 v81, v17
	v_dual_mov_b32 v87, v23 :: v_dual_mov_b32 v86, v22
	v_dual_mov_b32 v85, v21 :: v_dual_mov_b32 v84, v20
	v_dual_mov_b32 v83, v19 :: v_dual_mov_b32 v82, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[188:195], v[73:80], v[81:88]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[73:76], v99
	ds_load_b128 v[77:80], v208
	v_mov_b32_e32 v99, v94
	v_mov_b32_e32 v94, v170
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v221, v73, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_cmp_o_f32_e64 s2, v74, v74
	v_cmp_o_f32_e64 s6, v75, v75
	v_cmp_o_f32_e64 s7, v76, v76
	v_add3_u32 v221, v73, v221, 0x7fff
	v_bfe_u32 v73, v74, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s8, v77, v77
	v_cmp_o_f32_e64 s10, v78, v78
	v_cmp_o_f32_e64 s11, v79, v79
	v_cmp_o_f32_e64 s12, v80, v80
	v_add3_u32 v222, v74, v73, 0x7fff
	v_bfe_u32 v73, v75, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v223, v75, v73, 0x7fff
	v_bfe_u32 v73, v76, 16, 1
	v_add3_u32 v224, v76, v73, 0x7fff
	v_bfe_u32 v73, v77, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v225, v77, v73, 0x7fff
	v_bfe_u32 v73, v78, 16, 1
	v_add3_u32 v226, v78, v73, 0x7fff
	v_bfe_u32 v73, v79, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v227, v79, v73, 0x7fff
	v_bfe_u32 v73, v80, 16, 1
	v_add3_u32 v228, v80, v73, 0x7fff
	ds_load_b128 v[73:76], v209
	ds_load_b128 v[77:80], v210
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v229, v73, 16, 1
	v_cmp_o_f32_e64 s13, v73, v73
	v_cmp_o_f32_e64 s14, v74, v74
	v_cmp_o_f32_e64 s15, v75, v75
	v_cmp_o_f32_e64 s16, v76, v76
	v_add3_u32 v229, v73, v229, 0x7fff
	v_bfe_u32 v73, v74, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s17, v77, v77
	v_cmp_o_f32_e64 s18, v78, v78
	v_cmp_o_f32_e64 s19, v79, v79
	v_cmp_o_f32_e64 s20, v80, v80
	v_add3_u32 v230, v74, v73, 0x7fff
	v_bfe_u32 v73, v75, 16, 1
	v_cndmask_b16 v74.l, 0x7fff, v223.h, s6
	v_cndmask_b16 v74.h, 0x7fff, v224.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v231, v75, v73, 0x7fff
	v_bfe_u32 v73, v76, 16, 1
	v_cndmask_b16 v75.l, 0x7fff, v225.h, s8
	v_cndmask_b16 v75.h, 0x7fff, v226.h, s10
	v_add3_u32 v232, v76, v73, 0x7fff
	v_bfe_u32 v73, v77, 16, 1
	v_cndmask_b16 v76.l, 0x7fff, v227.h, s11
	v_cndmask_b16 v76.h, 0x7fff, v228.h, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v233, v77, v73, 0x7fff
	v_bfe_u32 v73, v78, 16, 1
	v_cndmask_b16 v77.l, 0x7fff, v229.h, s13
	v_cndmask_b16 v77.h, 0x7fff, v230.h, s14
	v_add3_u32 v234, v78, v73, 0x7fff
	v_bfe_u32 v73, v79, 16, 1
	v_cndmask_b16 v78.l, 0x7fff, v231.h, s15
	v_cndmask_b16 v78.h, 0x7fff, v232.h, s16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v235, v79, v73, 0x7fff
	v_bfe_u32 v73, v80, 16, 1
	v_cndmask_b16 v79.l, 0x7fff, v233.h, s17
	v_cndmask_b16 v79.h, 0x7fff, v234.h, s18
	v_add3_u32 v80, v80, v73, 0x7fff
	v_cndmask_b16 v73.l, 0x7fff, v221.h, vcc_lo
	v_cndmask_b16 v73.h, 0x7fff, v222.h, s2
	v_cndmask_b16 v80.l, 0x7fff, v235.h, s19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v80.h, 0x7fff, v80.h, s20
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_wmma_f32_16x16x16_bf16 v[81:88], v[56:63], v[73:80], v[81:88]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[73:76], v211
	ds_load_b128 v[77:80], v212
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v221, v73, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_cmp_o_f32_e64 s2, v74, v74
	v_cmp_o_f32_e64 s6, v75, v75
	v_cmp_o_f32_e64 s7, v76, v76
	v_add3_u32 v221, v73, v221, 0x7fff
	v_bfe_u32 v73, v74, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s8, v77, v77
	v_cmp_o_f32_e64 s10, v78, v78
	v_cmp_o_f32_e64 s11, v79, v79
	v_cmp_o_f32_e64 s12, v80, v80
	v_add3_u32 v222, v74, v73, 0x7fff
	v_bfe_u32 v73, v75, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v223, v75, v73, 0x7fff
	v_bfe_u32 v73, v76, 16, 1
	v_add3_u32 v224, v76, v73, 0x7fff
	v_bfe_u32 v73, v77, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v225, v77, v73, 0x7fff
	v_bfe_u32 v73, v78, 16, 1
	v_add3_u32 v226, v78, v73, 0x7fff
	v_bfe_u32 v73, v79, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v227, v79, v73, 0x7fff
	v_bfe_u32 v73, v80, 16, 1
	v_add3_u32 v228, v80, v73, 0x7fff
	ds_load_b128 v[73:76], v179
	s_waitcnt vmcnt(1)
	ds_load_b128 v[77:80], v0
	scratch_load_b32 v0, off, off offset:64 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v229, v73, 16, 1
	v_cmp_o_f32_e64 s13, v73, v73
	v_cmp_o_f32_e64 s14, v74, v74
	v_cmp_o_f32_e64 s15, v75, v75
	v_cmp_o_f32_e64 s16, v76, v76
	v_add3_u32 v229, v73, v229, 0x7fff
	v_bfe_u32 v73, v74, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s17, v77, v77
	v_cmp_o_f32_e64 s18, v78, v78
	v_cmp_o_f32_e64 s19, v79, v79
	v_cmp_o_f32_e64 s20, v80, v80
	v_add3_u32 v230, v74, v73, 0x7fff
	v_bfe_u32 v73, v75, 16, 1
	v_cndmask_b16 v74.l, 0x7fff, v223.h, s6
	v_cndmask_b16 v74.h, 0x7fff, v224.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v231, v75, v73, 0x7fff
	v_bfe_u32 v73, v76, 16, 1
	v_cndmask_b16 v75.l, 0x7fff, v225.h, s8
	v_cndmask_b16 v75.h, 0x7fff, v226.h, s10
	v_add3_u32 v232, v76, v73, 0x7fff
	v_bfe_u32 v73, v77, 16, 1
	v_cndmask_b16 v76.l, 0x7fff, v227.h, s11
	v_cndmask_b16 v76.h, 0x7fff, v228.h, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v233, v77, v73, 0x7fff
	v_bfe_u32 v73, v78, 16, 1
	v_cndmask_b16 v77.l, 0x7fff, v229.h, s13
	v_cndmask_b16 v77.h, 0x7fff, v230.h, s14
	v_add3_u32 v234, v78, v73, 0x7fff
	v_bfe_u32 v73, v79, 16, 1
	v_cndmask_b16 v78.l, 0x7fff, v231.h, s15
	v_cndmask_b16 v78.h, 0x7fff, v232.h, s16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v235, v79, v73, 0x7fff
	v_bfe_u32 v73, v80, 16, 1
	v_cndmask_b16 v79.l, 0x7fff, v233.h, s17
	v_cndmask_b16 v79.h, 0x7fff, v234.h, s18
	v_add3_u32 v80, v80, v73, 0x7fff
	v_cndmask_b16 v73.l, 0x7fff, v221.h, vcc_lo
	v_cndmask_b16 v73.h, 0x7fff, v222.h, s2
	v_cndmask_b16 v80.l, 0x7fff, v235.h, s19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v80.h, 0x7fff, v80.h, s20
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_wmma_f32_16x16x16_bf16 v[81:88], v[64:71], v[73:80], v[81:88]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_load_b128 v[73:76], v0
	scratch_load_b32 v0, off, off offset:68 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v221, v73, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_cmp_o_f32_e64 s2, v74, v74
	v_cmp_o_f32_e64 s6, v75, v75
	v_cmp_o_f32_e64 s7, v76, v76
	v_add3_u32 v221, v73, v221, 0x7fff
	v_bfe_u32 v73, v74, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v222, v74, v73, 0x7fff
	v_bfe_u32 v73, v75, 16, 1
	v_add3_u32 v223, v75, v73, 0x7fff
	v_bfe_u32 v73, v76, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v224, v76, v73, 0x7fff
	s_waitcnt vmcnt(0)
	ds_load_b128 v[77:80], v0
	scratch_load_b32 v0, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v73, v77, 16, 1
	v_cmp_o_f32_e64 s8, v77, v77
	v_cmp_o_f32_e64 s10, v78, v78
	v_cmp_o_f32_e64 s11, v79, v79
	v_cmp_o_f32_e64 s12, v80, v80
	v_add3_u32 v225, v77, v73, 0x7fff
	v_bfe_u32 v73, v78, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v226, v78, v73, 0x7fff
	v_bfe_u32 v73, v79, 16, 1
	v_add3_u32 v227, v79, v73, 0x7fff
	v_bfe_u32 v73, v80, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v228, v80, v73, 0x7fff
	s_waitcnt vmcnt(0)
	ds_load_b128 v[73:76], v0
	scratch_load_b32 v0, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v229, v73, 16, 1
	v_cmp_o_f32_e64 s13, v73, v73
	v_cmp_o_f32_e64 s14, v74, v74
	v_cmp_o_f32_e64 s15, v75, v75
	v_cmp_o_f32_e64 s16, v76, v76
	v_add3_u32 v229, v73, v229, 0x7fff
	v_bfe_u32 v73, v74, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v230, v74, v73, 0x7fff
	v_bfe_u32 v73, v75, 16, 1
	v_cndmask_b16 v74.l, 0x7fff, v223.h, s6
	v_cndmask_b16 v74.h, 0x7fff, v224.h, s7
	v_add3_u32 v231, v75, v73, 0x7fff
	v_bfe_u32 v73, v76, 16, 1
	v_cndmask_b16 v75.l, 0x7fff, v225.h, s8
	v_cndmask_b16 v75.h, 0x7fff, v226.h, s10
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v232, v76, v73, 0x7fff
	v_cndmask_b16 v76.l, 0x7fff, v227.h, s11
	v_cndmask_b16 v76.h, 0x7fff, v228.h, s12
	s_waitcnt vmcnt(0)
	ds_load_b128 v[77:80], v0
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v0, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v73, v77, 16, 1
	v_cmp_o_f32_e64 s17, v77, v77
	v_cmp_o_f32_e64 s18, v78, v78
	v_cmp_o_f32_e64 s19, v79, v79
	v_cmp_o_f32_e64 s20, v80, v80
	v_add3_u32 v233, v77, v73, 0x7fff
	v_bfe_u32 v73, v78, 16, 1
	v_cndmask_b16 v77.l, 0x7fff, v229.h, s13
	v_cndmask_b16 v77.h, 0x7fff, v230.h, s14
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v234, v78, v73, 0x7fff
	v_bfe_u32 v73, v79, 16, 1
	v_cndmask_b16 v78.l, 0x7fff, v231.h, s15
	v_cndmask_b16 v78.h, 0x7fff, v232.h, s16
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v232, v92, 0, 8
	v_mov_b16_e64 v234.l, v92.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v235, v79, v73, 0x7fff
	v_bfe_u32 v73, v80, 16, 1
	v_cndmask_b16 v79.l, 0x7fff, v233.h, s17
	v_cndmask_b16 v79.h, 0x7fff, v234.h, s18
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v233, 8, v92
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v231, v91, 20, 4
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v80, v80, v73, 0x7fff
	v_cndmask_b16 v73.l, 0x7fff, v221.h, vcc_lo
	v_cndmask_b16 v73.h, 0x7fff, v222.h, s2
	v_cndmask_b16 v80.l, 0x7fff, v235.h, s19
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v235, 24, v92
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v80.h, 0x7fff, v80.h, s20
	v_cmp_o_f32_e64 s17, v112, v112
	v_cmp_o_f32_e64 s18, v110, v110
	v_cmp_o_f32_e64 s19, v46, v46
	v_cmp_o_f32_e64 s20, v213, v213
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_wmma_f32_16x16x16_bf16 v[81:88], v[236:243], v[73:80], v[81:88]
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v238, v92, 20, 4
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v237, v92, 8, 4
	v_bfe_u32 v239, v92, 16, 4
	v_bfe_u32 v240, v92, 24, 4
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v80, v81, v220
	v_sub_f32_e32 v79, v82, v220
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_bpermute_b32 v81, v181, v89
	ds_bpermute_b32 v82, v215, v89
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v78, v83, v220
	v_sub_f32_e32 v77, v84, v220
	v_sub_f32_e32 v76, v85, v220
	v_sub_f32_e32 v75, v86, v220
	v_sub_f32_e32 v74, v87, v220
	v_sub_f32_e32 v73, v88, v220
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v242, -16, v239
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v220, v82, v81, s0
	v_cndmask_b32_e64 v222, v81, v82, s0
	ds_bpermute_b32 v81, v181, v90
	ds_bpermute_b32 v82, v215, v90
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v221, v82, v81, s0
	v_cndmask_b32_e64 v223, v81, v82, s0
	ds_bpermute_b32 v81, v181, v91
	ds_bpermute_b32 v82, v215, v91
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v224, v82, v81, s0
	v_cndmask_b32_e64 v226, v81, v82, s0
	ds_bpermute_b32 v81, v181, v92
	ds_bpermute_b32 v82, v215, v92
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v225, v82, v81, s0
	v_cndmask_b32_e64 v227, v81, v82, s0
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_wmma_i32_16x16x16_iu4 v[81:88], v[49:50], v[220:221], v[17:24] neg_lo:[1,1,0]
	scratch_load_b64 v[18:19], off, off offset:52 ; 8-byte Folded Reload
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v220, v89, 16, 4
	v_mov_b32_e32 v49, v186
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_wmma_i32_16x16x16_iu4 v[81:88], v[186:187], v[224:225], v[81:88] neg_lo:[1,1,0]
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v224, v89, 0, 8
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s2, 0, v224.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v224, 8, v89
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[81:88], v[18:19], v[222:223], v[81:88] neg_lo:[1,1,0]
	scratch_load_b64 v[18:19], off, off offset:44 ; 8-byte Folded Reload
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v222, -16, v220
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[81:88], v[18:19], v[226:227], v[81:88] neg_lo:[1,1,0]
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v18.l, v89.l, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v227, 24, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v24, v85
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v85, 15, v89
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s6, 7, v18.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v18.l, v89.h, 15
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v22, v83
	v_cvt_f32_i32_e32 v83, v88
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v88, -16, v85
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v23, v84
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s8, 7, v18.l
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v84, 15, v90
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v18.l, v90.l, 15
	.loc	1 650 33 is_stmt 1              ; attention_backward.py:650:33
	v_cndmask_b32_e64 v88, v85, v88, s6
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v85.l, v224.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v222, v220, v222, s8
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v220, v89, 8, 4
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v20, v81
	v_cvt_f32_i32_e32 v21, v82
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s6, 7, v85.l
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v81, v86
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v226, -16, v220
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v82, v87
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v86, -16, v84
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v18.l
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_bfe_u32 v87, v90, 16, 4
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v18.l, v90.h, 15
	.loc	1 650 33 is_stmt 1              ; attention_backward.py:650:33
	v_cndmask_b32_e64 v85, v220, v226, s6
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v226, 8, v90
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v86, v84, v86, vcc_lo
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v221, -16, v87
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s7, 7, v18.l
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_bfe_u32 v220, v90, 8, 4
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v84.l, v226.l, 15
	.loc	1 615 36 is_stmt 1              ; attention_backward.py:615:36
	v_lshrrev_b64 v[18:19], 24, v[89:90]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v87, v87, v221, s7
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v221, -16, v220
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v84.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v84.l, v227.l, 15
	v_and_b16 v223.h, v18.l, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v19, v18, 0, 8
	v_mov_b16_e32 v18.h, 0
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v228, v220, v221, vcc_lo
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v220, v90, 24, 4
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v84.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_alignbit_b32 v84, v90, v89, 24
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v223.l, 4, v18.l
	v_lshrrev_b16 v18.l, 4, v89.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v221, -16, v220
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v252.l, v18.h
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v84, 15, v84
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v254.l, v18.h
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v18.l, v18.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v229, v220, v221, vcc_lo
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 vcc_lo, 7, v223.h
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v220, -16, v84
	.loc	1 732 54 is_stmt 1              ; attention_backward.py:732:54
	v_mov_b16_e64 v251.l, v18.h
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v225, -16, v18
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v197.l, v18.h
	v_mov_b16_e64 v198.l, v18.h
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v230, v84, v220, vcc_lo
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e32 v84.l, v89.h
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v89, v89, 20, 4
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v253.l, v18.h
	v_mov_b16_e64 v170.l, v18.h
	v_mov_b16_e64 v174.l, v18.h
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v84, v84, 0, 8
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v220, -16, v89
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v199.l, v18.h
	v_mov_b16_e64 v175.l, v18.h
	v_mov_b16_e64 v173.l, v18.h
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v84.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e32 v84.l, v90.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v178.l, v18.h
	v_mov_b16_e64 v196.l, v18.h
	v_mov_b16_e64 v255.l, v18.h
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v89, v89, v220, vcc_lo
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v84, v84, 0, 8
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v220, v90, 20, 4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v89, v89
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v84.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v221, -16, v220
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v84, v88
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v88, v18, v225, s2
	v_dual_cndmask_b32 v221, v220, v221 :: v_dual_lshlrev_b32 v220, 16, v218
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v88, v88
	v_mul_f32_e32 v84, v220, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v88, v220, v88
	v_mul_f32_e32 v89, v220, v89
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v218, 0, v84, s3
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v84.l, 4, v224.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v88, 0, v88, s3
	v_cndmask_b32_e64 v89, 0, v89, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v18.l, v218.h
	v_cmp_o_f32_e64 s2, v218, v218
	v_cmp_o_f32_e64 s6, v88, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s7, v89, v89
	v_and_b32_e32 v225, 1, v18
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v18.l, v84.l, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v84, v224, 0, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v224, -16, v18
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v84.l
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_add3_u32 v84, v218, v225, 0x7fff
	v_mov_b16_e64 v218.h, v18.h
	v_mov_b16_e64 v218.l, v88.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v218, 1, v218
	v_add3_u32 v88, v88, v218, 0x7fff
	v_mov_b16_e64 v218.h, v18.h
	v_mov_b16_e64 v218.l, v89.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v218, 1, v218
	v_add3_u32 v89, v89, v218, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v218, v221
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v221.h, v18.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v223.h, 0x7fff, v89.h, s7
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v218, v220, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v218, 0, v218, s3
	v_mov_b16_e64 v221.l, v218.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s8, v218, v218
	v_and_b32_e32 v221, 1, v221
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v225, v218, v221, 0x7fff
	v_cndmask_b16 v221.l, 0x7fff, v84.h, s2
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v84, v85
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v85, v18, v224, vcc_lo
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v221.h, 0x7fff, v88.h, s6
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s6, 0, v19.l
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v218, 16, v219
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v84, v220, v84
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v227.h, 0x7fff, v225.h, s8
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v236, 15, v92
	.loc	1 648 34 is_stmt 0              ; attention_backward.py:648:34
	v_and_b16 v219.l, v91.h, 15
	.loc	1 640 41 is_stmt 1              ; attention_backward.py:640:41
	v_mul_f32_e32 v218, s28, v218
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v84, 0, v84, s3
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v219.h, 4, v91.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v81, v218, v81
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v18.l, v84.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s2, v84, v84
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v20, v218, v20
	v_mul_f32_e32 v21, v218, v21
	v_mul_f32_e32 v22, v218, v22
	v_dual_mul_f32 v23, v218, v23 :: v_dual_and_b32 v88, 1, v18
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v20, v20, v0, -v217
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v24, v218, v24
	v_mul_f32_e32 v82, v218, v82
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v84, v84, v88, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v88, v222
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v83, v218, v83
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v21, v21, v72, -v217
	v_fma_f32 v22, v22, v41, -v217
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v222.l, 0x7fff, v84.h, s2
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v88, v220, v88
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v23, v23, v48, -v217
	v_fma_f32 v24, v24, v54, -v217
	v_fma_f32 v81, v81, v53, -v217
	v_fma_f32 v82, v82, v51, -v217
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v88, 0, v88, s3
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v83, v83, v55, -v217
	v_dual_mov_b32 v51, v54 :: v_dual_mov_b32 v54, v53
	v_mov_b32_e32 v53, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v18.l, v88.h
	v_cmp_o_f32_e32 vcc_lo, v88, v88
	v_dual_mov_b32 v48, v41 :: v_dual_mov_b32 v41, v179
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v179.l, v18.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v89, 1, v18
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v19, v230
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v18.l, v223.l, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_alignbit_b32 v230, v92, v91, 24
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v0.l, v18.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v88, v88, v89, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v19, v220, v19
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v89, -16, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v223.l, 0x7fff, v88.h, vcc_lo
	v_cndmask_b32_e64 v84, 0, v19, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v88, v18, v89, s6
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v19.l, 4, v90.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v18.l, v84.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v84, v84
	v_and_b32_e32 v89, 1, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v18.l, v19.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v19, v85
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v85.h, v18.h
	v_add3_u32 v84, v84, v89, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v89, 0, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v19, v220, v19
	v_mov_b32_e32 v97, v96
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v224.l, 0x7fff, v84.h, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v19, 0, v19, s3
	v_mov_b16_e32 v85.l, v19.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_and_b32_e32 v85, 1, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v19, v19, v85, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v85, v90, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v222.h, 0x7fff, v19.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v19.l, v85.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v85, -16, v18
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s6, 0, v19.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v19, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v85, v18, v85, s6
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v19, v220, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v84, 0, v19, s3
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v19.l, 4, v226.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v18.l, v84.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s15, v84, v84
	v_and_b32_e32 v86, 1, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v18.l, v19.l, 15
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v19, v20
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v218, 0, v19, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v19, v218, v80
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v19, s47, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v20, v19, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_add3_u32 v80, v19, v20, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v19, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v90, 0, v19, s9
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v19, v90, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v19, s47, v19
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v20, v19, 16, 1
	v_cmp_o_f32_e64 s2, v19, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v79, v19, v20, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v19, v22
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v19, 0, v19, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v20, v19, v78
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v20, s47, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v21, v20, 16, 1
	v_cmp_o_f32_e64 s6, v20, v20
	v_add3_u32 v78, v20, v21, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v20, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v20, 0, v20, s9
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v21, v20, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v21, s47, v21
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v22, v21, 16, 1
	v_cmp_o_f32_e64 s7, v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v77, v21, v22, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v21, v24
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v217, 0, v21, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v21, v217, v76
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v21, s47, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v22, v21, 16, 1
	v_cmp_o_f32_e64 s10, v21, v21
	v_add3_u32 v24, v21, v22, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v21, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s10
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v21, 0, v21, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v22, v21, v75
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v22, s47, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v23, v22, 16, 1
	v_cmp_o_f32_e64 s11, v22, v22
	v_add3_u32 v75, v22, v23, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v22, v82
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v82, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v22, 0, v22, s9
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v23, v22, v74
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s10, v22, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v23, s47, v23
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v74, v23, 16, 1
	v_cmp_o_f32_e64 s12, v23, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_add3_u32 v74, v23, v74, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v23, v83
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v83.h, v18.h
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v23, 0, v23, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v73, v23, v73
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v81, v84, v86, 0x7fff
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v73, s47, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v225.l, 0x7fff, v81.h, s15
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s15, v116, v116
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v76, v73, 16, 1
	v_cmp_o_f32_e64 s13, v73, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v73, v73, v76, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v76, v226, 0, 8
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v24.l, v76.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v76, -16, v18
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s14, 0, v24.l
	.loc	1 721 37 is_stmt 1              ; attention_backward.py:721:37
	v_cndmask_b16 v24.l, 0x7fff, v80.h, vcc_lo
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v89, v24
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v24.l, 0x7fff, v79.h, s2
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v89, v24 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v24.h, 0x7fff, v75.h, s11
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v75.h, v18.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s11, v23, v23
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v201, v24
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v24.l, 0x7fff, v78.h, s6
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v201, v24 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v24.h, 0x7fff, v74.h, s12
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s12, v122, v122
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v202, v24
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v24.l, 0x7fff, v77.h, s7
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v202, v24 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v24.h, 0x7fff, v73.h, s13
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v203, v24
	ds_store_b16_d16_hi v203, v24 offset:512
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v24, v228
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v73, v18, v76, s14
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s13, v120, v120
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v24, v220, v24
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s14, v118, v118
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v24, 0, v24, s3
	v_mov_b16_e32 v18.l, v24.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	v_and_b32_e32 v74, 1, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v24, v24, v74, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v74, v85
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v226.l, 0x7fff, v24.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v74, v220, v74
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v74, 0, v74, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v75.l, v74.h
	v_cmp_o_f32_e64 s2, v74, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v75, 1, v75
	v_add3_u32 v74, v74, v75, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v75, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v225.h, 0x7fff, v74.h, s2
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v75, v220, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v75, 0, v75, s3
	v_mov_b16_e32 v18.l, v75.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s6, v75, v75
	v_and_b32_e32 v76, 1, v18
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v18.l, 4, v227.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v75, v75, v76, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v76, v227, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v227.l, 0x7fff, v75.h, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v24.l, v76.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v76, -16, v18
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s7, 0, v24.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v24, v73
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v73.h, v18.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v74, v18, v76, s7
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v24, v220, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v24, 0, v24, s3
	v_mov_b16_e32 v73.l, v24.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v82, v220, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v82, 0, v82, s3
	v_add3_u32 v24, v24, v73, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v73, v229
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v83.l, v82.h
	v_cmp_o_f32_e64 s16, v82, v82
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e64 v229.l, v91.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v226.h, 0x7fff, v24.h, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v73, v220, v73
	v_cvt_f32_i32_e32 v24, v74
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v83, 1, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v73, 0, v73, s3
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v24, v220, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v82, v82, v83, 0x7fff
	v_mov_b16_e32 v18.l, v73.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s2, v73, v73
	v_cndmask_b32_e64 v24, 0, v24, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cndmask_b16 v224.h, 0x7fff, v82.h, s16
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s16, v114, v114
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v75, 1, v18
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v18.l, v91.l, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v24, v24
	v_add3_u32 v73, v73, v75, 0x7fff
	v_mov_b16_e32 v73.l, v24.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v228.l, 0x7fff, v73.h, s2
	v_mov_b16_e32 v73.h, v18.h
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s2, 7, v219.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v24, v24, v73, 0x7fff
	v_cndmask_b16 v228.h, 0x7fff, v24.h, vcc_lo
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v24, 0, v96
	ds_load_b128 v[81:84], v24
	ds_load_b128 v[85:88], v204
	ds_load_b128 v[73:76], v205
	ds_load_b128 v[77:80], v206
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v176, v[221:224]
	ds_store_b128 v176, v[225:228] offset:16
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v225, 15, v91
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v222, 8, v91
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v222.h, 4, v92.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v221.l, v92.l, 15
	v_and_b16 v221.h, v92.h, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b64 v[223:224], 24, v[91:92]
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v92, -16, v225
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v18.l
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_bfe_u32 v226, v91, 16, 4
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v227, v91, 0, 8
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v228, v91, 8, 4
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s6, 7, v221.l
	v_cmp_lt_u16_e64 s7, 7, v221.h
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v221, v225, v92, vcc_lo
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v91.h, v222.l, 15
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v92, -16, v228
	v_or_b32_e32 v224, -16, v226
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v18.l, v223.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v221, v221
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v91.h
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v91.h, v233.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v224, v226, v224, s2
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v243, v223, 0, 8
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v221, v220, v221
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v241, -16, v236
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v225, v228, v92, vcc_lo
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v92, -16, v237
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v91.h
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v91.h, v235.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v226, v236, v241, s6
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v91.l, 4, v223.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v221, 0, v221, s4
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v236, v237, v92, vcc_lo
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v92, -16, v240
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v91.h
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v228, v239, v242, s7
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v91.h, 4, v222.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v224, v224
	v_dual_mov_b32 v96, v171 :: v_dual_cndmask_b32 v237, v240, v92
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v92, 15, v230
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v18.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v224, v220, v224
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v171.l, v18.h
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v223, -16, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v224, 0, v224, s4
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v230, v92, v223, vcc_lo
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v92, v229, 0, 8
	v_bfe_i32 v223, v234, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v229.h, v18.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v18.l, v92.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v92, -16, v231
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v18.l
	v_mov_b16_e64 v18.l, v223.l
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v223, -16, v238
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v92, v231, v92, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v18.l
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_and_b16 v18.l, v219.h, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v92, v92
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v223, v238, v223, vcc_lo
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v219, -16, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_mul_f32_e32 v92, v220, v92
	v_cvt_f32_i32_e32 v223, v223
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v92, 0, v92, s4
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v223, v220, v223
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v229.l, v92.h
	v_cmp_o_f32_e32 vcc_lo, v92, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v223, 0, v223, s4
	v_and_b32_e32 v229, 1, v229
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v223, v223
	v_add3_u32 v92, v92, v229, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v92.l, v227.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v229.h, v18.h
	v_mov_b16_e64 v229.l, v223.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s6, 0, v92.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v229, 1, v229
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v219, v18, v219, s6
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v18.l, v221.h
	v_add3_u32 v229, v223, v229, 0x7fff
	v_cmp_o_f32_e64 s6, v221, v221
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v223, 1, v18
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v18.l, v91.h, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v221, v221, v223, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v223, v222, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v223.h, 0x7fff, v92.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v227, -16, v18
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v221.l, 0x7fff, v221.h, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v92.l, v223.l
	v_cmp_gt_i16_e64 s7, 0, v92.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v92, v225
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v225, v18, v227, s7
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v92, v220, v92
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s7, v224, v224
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v92, 0, v92, s4
	v_mov_b16_e32 v18.l, v92.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v92, v92
	v_and_b32_e32 v227, 1, v18
	v_mov_b16_e64 v18.l, v224.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v92, v92, v227, 0x7fff
	v_and_b32_e32 v227, 1, v18
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v18.l, v91.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v91, v219
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v219.h, v18.h
	v_cndmask_b16 v222.l, 0x7fff, v92.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v91, v220, v91
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v91, 0, v91, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e64 v219.l, v91.h
	v_cmp_o_f32_e64 s6, v91, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v219, 1, v219
	v_add3_u32 v91, v91, v219, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v91.l, v243.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v219, v224, v227, 0x7fff
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v224, -16, v18
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v227.h, 0x7fff, v229.h, s2
	v_cndmask_b16 v221.h, 0x7fff, v91.h, s6
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s8, 0, v91.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v91, v230
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v223.l, 0x7fff, v219.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v92, v18, v224, s8
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v91, v220, v91
	v_cvt_f32_i32_e32 v224, v225
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v225.h, v18.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s8, v20, v20
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v92, v92
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v91, 0, v91, s4
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v224, v220, v224
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v92, v220, v92
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v18.l, v91.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v224, 0, v224, s4
	v_cmp_o_f32_e64 s6, v91, v91
	v_cndmask_b32_e64 v92, 0, v92, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v219, 1, v18
	v_mov_b16_e64 v225.l, v224.h
	v_cmp_o_f32_e32 vcc_lo, v224, v224
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v18.l, v222.h, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v91, v91, v219, 0x7fff
	v_and_b32_e32 v225, 1, v225
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v91.l, v232.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v219, -16, v18
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_add3_u32 v224, v224, v225, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s7, 0, v91.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v224.l, 0x7fff, v91.h, s6
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v91, v226
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v222.h, 0x7fff, v224.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v219, v18, v219, s7
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s7, v92, v92
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v91, v220, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v219, v219
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v225, 0, v91, s4
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v91.l, 4, v233.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v219, v220, v219
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v18.l, v225.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s6, v225, v225
	v_cndmask_b32_e64 v219, 0, v219, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b32_e32 v226, 1, v18
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v18.l, v91.l, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v91, v233, 0, 8
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v230, -16, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v91.l
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_add3_u32 v91, v225, v226, 0x7fff
	v_mov_b16_e64 v225.h, v18.h
	v_mov_b16_e64 v225.l, v92.h
	v_and_b32_e32 v225, 1, v225
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v92, v92, v225, 0x7fff
	v_cndmask_b16 v225.l, 0x7fff, v91.h, s6
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v91, v236
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v224.h, 0x7fff, v92.h, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_dual_cndmask_b32 v92, v18, v230 :: v_dual_mul_f32 v91, v220, v91
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v219, v219
	v_cndmask_b32_e64 v91, 0, v91, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v18.l, v91.h
	v_cmp_o_f32_e64 s2, v91, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v226, 1, v18
	v_add3_u32 v91, v91, v226, 0x7fff
	v_mov_b16_e64 v226.h, v18.h
	v_mov_b16_e64 v226.l, v219.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v226, 1, v226
	v_add3_u32 v219, v219, v226, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v226, v228
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v225.h, 0x7fff, v219.h, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v226, v220, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v226, 0, v226, s4
	v_mov_b16_e64 v18.l, v226.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s6, v226, v226
	v_and_b32_e32 v228, 1, v18
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v18.l, 4, v235.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v226, v226, v228, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v228, v235, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v226.l, 0x7fff, v91.h, s2
	v_cndmask_b16 v227.l, 0x7fff, v226.h, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v91.l, v228.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v228, -16, v18
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s7, 0, v91.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v91, v92
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v92.h, v18.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v219, v18, v228, s7
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v91, v220, v91
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s7, v21, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v219, v219
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v91, 0, v91, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v219, v220, v219
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v92.l, v91.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v91, v91
	v_and_b32_e32 v92, 1, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v91, v91, v92, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v92, v237
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v226.h, 0x7fff, v91.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v92, v220, v92
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v91, 0, v219, s4
	v_cndmask_b32_e64 v92, 0, v92, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v91, v91
	v_mov_b16_e32 v18.l, v92.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v92, v92
	v_and_b32_e32 v228, 1, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v92, v92, v228, 0x7fff
	v_mov_b16_e32 v92.l, v91.h
	v_cndmask_b16 v228.l, 0x7fff, v92.h, s2
	v_mov_b16_e32 v92.h, v18.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s2, v217, v217
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v92, 1, v92
	v_add3_u32 v91, v91, v92, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v92.l, v18.h
	v_mov_b16_e32 v91.l, v18.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v228.h, 0x7fff, v91.h, vcc_lo
	ds_store_b128 v176, v[221:224] offset:32
	ds_store_b128 v176, v[225:228] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v220, v180 offset:256
	ds_load_u16_d16 v219, v180
	ds_load_u16_d16 v221, v180 offset:512
	ds_load_u16_d16 v222, v180 offset:768
	ds_load_u16_d16 v223, v180 offset:1024
	ds_load_u16_d16 v225, v180 offset:1536
	ds_load_u16_d16 v224, v180 offset:1280
	ds_load_u16_d16 v231, v180 offset:1088
	ds_load_u16_d16 v230, v180 offset:832
	ds_load_u16_d16 v226, v180 offset:1792
	ds_load_u16_d16 v235, v180 offset:2048
	ds_load_u16_d16 v236, v180 offset:2304
	ds_load_u16_d16 v237, v180 offset:2560
	ds_load_u16_d16 v239, v180 offset:3072
	ds_load_u16_d16 v245, v180 offset:2624
	ds_load_u16_d16 v244, v180 offset:2368
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v231, v180 offset:1216
	ds_load_u16_d16_hi v221, v180 offset:640
	ds_load_u16_d16_hi v222, v180 offset:896
	ds_load_u16_d16_hi v223, v180 offset:1152
	ds_load_u16_d16 v232, v180 offset:1344
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v245, v180 offset:2752
	ds_load_u16_d16_hi v225, v180 offset:1664
	ds_load_u16_d16_hi v224, v180 offset:1408
	ds_load_u16_d16 v227, v180 offset:64
	ds_load_u16_d16_hi v220, v180 offset:384
	ds_load_u16_d16_hi v219, v180 offset:128
	ds_load_u16_d16 v229, v180 offset:576
	ds_load_u16_d16 v228, v180 offset:320
	ds_load_u16_d16_hi v226, v180 offset:1920
	ds_load_u16_d16 v233, v180 offset:1600
	ds_load_u16_d16 v243, v180 offset:2112
	ds_load_u16_d16 v234, v180 offset:1856
	ds_load_u16_d16_hi v230, v180 offset:960
	ds_load_u16_d16 v242, v180 offset:3840
	ds_load_u16_d16 v240, v180 offset:3328
	ds_load_u16_d16 v238, v180 offset:2816
	ds_load_u16_d16 v241, v180 offset:3584
	ds_load_u16_d16 v250, v180 offset:3904
	ds_load_u16_d16 v247, v180 offset:3136
	ds_load_u16_d16 v249, v180 offset:3648
	ds_load_u16_d16 v248, v180 offset:3392
	ds_load_u16_d16_hi v239, v180 offset:3200
	ds_load_u16_d16 v246, v180 offset:2880
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v244, v180 offset:2496
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v232, v180 offset:1472
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v233, v180 offset:1728
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v234, v180 offset:1984
	ds_load_u16_d16_hi v235, v180 offset:2176
	ds_load_u16_d16_hi v243, v180 offset:2240
	ds_load_u16_d16_hi v227, v180 offset:192
	ds_load_u16_d16_hi v229, v180 offset:704
	ds_load_u16_d16_hi v228, v180 offset:448
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v240, v180 offset:3456
	ds_load_u16_d16_hi v236, v180 offset:2432
	ds_load_u16_d16_hi v237, v180 offset:2688
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v238, v180 offset:2944
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v241, v180 offset:3712
	ds_load_u16_d16_hi v242, v180 offset:3968
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v250, v180 offset:4032
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v246, v180 offset:3008
	ds_load_u16_d16_hi v247, v180 offset:3264
	ds_load_u16_d16_hi v249, v180 offset:3776
	ds_load_u16_d16_hi v248, v180 offset:3520
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[33:40], v[219:226], v[81:88], v[33:40]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v218, v218
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v219.l, v18.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v220, v112, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[227:234], v[81:88], v[25:32]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v229.l, v18.h
	v_mov_b16_e64 v230.l, v18.h
	v_mov_b16_e64 v223.l, v18.h
	v_mov_b16_e64 v224.l, v18.h
	v_mov_b16_e64 v225.l, v18.h
	v_mov_b16_e64 v226.l, v18.h
	v_mov_b16_e64 v227.l, v18.h
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[33:40], v[235:242], v[73:80], v[33:40]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v239, v112, v220, 0x7fff
	v_bfe_u32 v220, v110, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v228.l, v18.h
	v_mov_b16_e64 v231.l, v18.h
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[243:250], v[73:80], v[25:32]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v73, v218, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v240, v110, v220, 0x7fff
	v_bfe_u32 v220, v46, 16, 1
	v_dual_mov_b32 v109, v40 :: v_dual_mov_b32 v108, v39
	v_mov_b32_e32 v105, v36
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v73, v218, v73, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v73.l, v18.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v241, v46, v220, 0x7fff
	v_bfe_u32 v220, v213, 16, 1
	v_mov_b32_e32 v107, v38
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v73.h, 0x7fff, v73.h, vcc_lo
	v_dual_mov_b32 v106, v37 :: v_dual_mov_b32 v103, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v242, v213, v220, 0x7fff
	v_mov_b32_e32 v104, v35
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v74, v218, v73
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e64 v218.l, v18.h
	v_mov_b32_e32 v102, v33
	v_dual_mov_b32 v40, v32 :: v_dual_mov_b32 v35, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v75, v74, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v74, v74
	v_dual_mov_b32 v39, v31 :: v_dual_mov_b32 v38, v30
	v_mov_b32_e32 v33, v25
	v_add3_u32 v74, v74, v75, 0x7fff
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_bfe_u32 v75, v217, 16, 1
	v_dual_mov_b32 v37, v29 :: v_dual_mov_b32 v36, v28
	v_dual_mov_b32 v34, v26 :: v_dual_mov_b32 v25, v64
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v75, v217, v75, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v75.l, v18.h
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_cndmask_b16 v18.l, 0x7fff, v74.h, vcc_lo
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v166, v166
	v_dual_mov_b32 v26, v65 :: v_dual_mov_b32 v29, v68
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v75.h, 0x7fff, v75.h, s2
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v89, v73
	ds_store_b16_d16_hi v89, v75 offset:512
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v73, v21, 16, 1
	v_cmp_o_f32_e64 s2, v90, v90
	v_dual_mov_b32 v27, v66 :: v_dual_mov_b32 v28, v67
	v_mov_b32_e32 v31, v70
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v73, v21, v73, 0x7fff
	v_mov_b32_e32 v30, v69
	v_mov_b32_e32 v32, v71
	v_dual_mov_b32 v71, v63 :: v_dual_mov_b32 v70, v62
	v_mov_b32_e32 v67, v59
	v_cndmask_b16 v91.h, 0x7fff, v73.h, s7
	v_bfe_u32 v73, v19, 16, 1
	v_cmp_o_f32_e64 s7, v19, v19
	v_dual_mov_b32 v69, v61 :: v_dual_mov_b32 v68, v60
	v_mov_b32_e32 v65, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v73, v19, v73, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v21, v21, v91 :: v_dual_mov_b32 v66, v58
	v_mov_b32_e32 v64, v56
	v_dual_mov_b32 v56, v188 :: v_dual_mov_b32 v61, v193
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v92.h, 0x7fff, v73.h, s7
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v76, v217, v75
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v75, v20, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v217.l, v18.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v232.l, v18.h
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v19, v19, v92
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_bfe_u32 v77, v76, 16, 1
	v_cmp_o_f32_e64 s6, v76, v76
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_add3_u32 v75, v20, v75, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v233.l, v18.h
	v_mov_b16_e64 v234.l, v18.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v76, v76, v77, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v77, v90, 16, 1
	v_cndmask_b16 v217.h, 0x7fff, v75.h, s8
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v235.l, v18.h
	v_mov_b16_e64 v236.l, v18.h
	v_mov_b16_e64 v237.l, v18.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v77, v90, v77, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v77.l, v18.h
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v20, v20, v217
	.loc	1 732 54 is_stmt 1              ; attention_backward.py:732:54
	v_mov_b16_e64 v238.l, v18.h
	v_mov_b32_e32 v57, v189
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v77.h, 0x7fff, v77.h, s2
	v_dual_mov_b32 v58, v190 :: v_dual_mov_b32 v63, v195
	v_dual_mov_b32 v59, v191 :: v_dual_mov_b32 v60, v192
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v78, v90, v77
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v201, v77
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v77, v22, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v248.l, v18.h
	v_mov_b16_e64 v250.l, v18.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v79, v78, 16, 1
	v_cmp_o_f32_e64 s2, v78, v78
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v77, v22, v77, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v247.l, v18.h
	v_mov_b16_e64 v249.l, v18.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v90, v78, v79, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v78, v23, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v90.l, 0x7fff, v76.h, s6
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v218.h, 0x7fff, v77.h, s10
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s6, v21, v21
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s10, v126, v126
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v78, v23, v78, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v222.l, v18.h
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v22, v22, v218
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v221.l, v18.h
	v_mov_b16_e64 v220.l, v18.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v219.h, 0x7fff, v78.h, s11
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v201, v91 offset:512
	ds_store_b16_d16_hi v202, v92
	ds_store_b16_d16_hi v202, v218 offset:512
	ds_store_b16_d16_hi v203, v217
	ds_store_b16_d16_hi v203, v219 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[81:84], v24
	ds_load_b128 v[85:88], v204
	ds_load_b128 v[73:76], v205
	ds_load_b128 v[77:80], v206
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v89, v18
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v18.l, 0x7fff, v90.h, s2
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v89, v90 offset:512
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v89, v166, 16, 1
	v_bfe_u32 v90, v168, 16, 1
	v_cmp_o_f32_e64 s2, v168, v168
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v23, v23, v219
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s7, v22, v22
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v89, v166, v89, 0x7fff
	v_add3_u32 v90, v168, v90, 0x7fff
	v_bfe_u32 v91, v122, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s8, v23, v23
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v92, v120, 16, 1
	v_cndmask_b16 v223.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v138, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v138, v138
	v_cndmask_b16 v224.h, 0x7fff, v90.h, s2
	v_bfe_u32 v90, v152, 16, 1
	v_cmp_o_f32_e64 s2, v152, v152
	v_add3_u32 v89, v138, v89, 0x7fff
	v_bfe_u32 v217, v118, 16, 1
	v_bfe_u32 v218, v116, 16, 1
	v_add3_u32 v90, v152, v90, 0x7fff
	v_cmp_o_f32_e64 s11, v124, v124
	v_cndmask_b16 v225.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v140, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v140, v140
	v_cndmask_b16 v232.h, 0x7fff, v90.h, s2
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s2, v20, v20
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v90, v124, 16, 1
	v_add3_u32 v89, v140, v89, 0x7fff
	v_add3_u32 v91, v122, v91, 0x7fff
	v_add3_u32 v92, v120, v92, 0x7fff
	v_add3_u32 v217, v118, v217, 0x7fff
	v_add3_u32 v90, v124, v90, 0x7fff
	v_cndmask_b16 v226.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v142, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v142, v142
	v_add3_u32 v218, v116, v218, 0x7fff
	v_bfe_u32 v219, v114, 16, 1
	v_cndmask_b16 v0.h, 0x7fff, v90.h, s11
	v_add3_u32 v89, v142, v89, 0x7fff
	v_cndmask_b16 v179.h, 0x7fff, v91.h, s12
	v_cndmask_b16 v222.h, 0x7fff, v92.h, s13
	v_add3_u32 v219, v114, v219, 0x7fff
	v_cndmask_b16 v221.h, 0x7fff, v217.h, s14
	v_cndmask_b16 v227.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v144, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v144, v144
	v_cndmask_b16 v220.h, 0x7fff, v218.h, s15
	v_cndmask_b16 v218.h, 0x7fff, v239.h, s17
	v_cndmask_b16 v217.h, 0x7fff, v240.h, s18
	v_add3_u32 v89, v144, v89, 0x7fff
	v_cndmask_b16 v92.h, 0x7fff, v241.h, s19
	v_cndmask_b16 v91.h, 0x7fff, v242.h, s20
	v_cndmask_b16 v219.h, 0x7fff, v219.h, s16
	v_dual_mov_b32 v62, v194 :: v_dual_sub_f32 v189, v140, v226
	v_cndmask_b16 v228.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v146, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v146, v146
	v_mov_b32_e32 v50, v187
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v188, v142, v227 :: v_dual_sub_f32 v187, v144, v228
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v89, v146, v89, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v190, v138, v225
	v_sub_f32_e32 v168, v168, v224
	v_sub_f32_e32 v166, v166, v223
	v_sub_f32_e32 v152, v152, v232
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v229.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v148, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v148, v148
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v232.l, v221.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s11, v125, v125
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v186, v146, v229
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v89, v148, v89, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v229.l, v0.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s12, v123, v123
	v_cmp_o_f32_e64 s13, v121, v121
	v_cmp_o_f32_e64 s14, v119, v119
	v_cndmask_b16 v230.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v150, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v150, v150
	v_cmp_o_f32_e64 s15, v117, v117
	v_cmp_o_f32_e64 s16, v115, v115
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v182, v148, v230
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v89, v150, v89, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v230.l, v179.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s17, v113, v113
	v_cmp_o_f32_e64 s18, v111, v111
	v_cmp_o_f32_e64 s19, v47, v47
	v_cndmask_b16 v231.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v154, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v154, v154
	v_cmp_o_f32_e64 s20, v214, v214
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v122, v122, v179
	v_dual_sub_f32 v150, v150, v231 :: v_dual_mov_b32 v179, v41
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v89, v154, v89, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v231.l, v222.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v124, v0
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v195.l, v18.h
	v_mov_b32_e32 v41, v48
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v233.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v156, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v156, v156
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v124, v0, 16, 1
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e32 v91.l, v18.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v148, v154, v233
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v89, v156, v89, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v233.l, v220.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v154, v121, 16, 1
	v_dual_mov_b32 v48, v53 :: v_dual_mov_b32 v53, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v234.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v158, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v158, v158
	v_add3_u32 v154, v121, v154, 0x7fff
	v_mov_b32_e32 v54, v51
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v146, v156, v234
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v89, v158, v89, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v234.l, v219.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v156, v117, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v219.l, v18.h
	v_mov_b16_e64 v218.l, v18.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v235.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v160, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v160, v160
	v_add3_u32 v156, v117, v156, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v217.l, v18.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v144, v158, v235
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v89, v160, v89, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v235.l, v218.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v158, v113, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v92.l, v18.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v110, v110, v217
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v236.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v162, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v162, v162
	v_add3_u32 v158, v113, v158, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v51, v45 :: v_dual_sub_f32 v142, v160, v236
	v_add3_u32 v89, v162, v89, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v236.l, v217.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v160, v47, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v237.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v164, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v164, v164
	v_add3_u32 v160, v47, v160, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v140, v162, v237
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v89, v164, v89, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v237.l, v92.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v92, v46, v92
	v_mov_b32_e32 v46, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v238.h, 0x7fff, v89.h, vcc_lo
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v89, v19, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v138, v164, v238
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v19, v19, v89, 0x7fff
	v_bfe_u32 v89, v20, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v238.l, v91.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v91, v213, v91
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v20, v20, v89, 0x7fff
	v_bfe_u32 v89, v21, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v21, v21, v89, 0x7fff
	v_bfe_u32 v89, v22, 16, 1
	v_cndmask_b16 v19.l, 0x7fff, v21.h, s6
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v22, v22, v89, 0x7fff
	v_bfe_u32 v89, v23, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v201, v18
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v18.l, 0x7fff, v19.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v201, v19 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v19.l, 0x7fff, v22.h, s7
	v_add3_u32 v23, v23, v89, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v21, v132, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v202, v18
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v18.l, 0x7fff, v20.h, s2
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v202, v19 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v19.l, 0x7fff, v23.h, s8
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v203, v18
	ds_store_b16 v203, v19 offset:512
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v19, v136, 16, 1
	v_bfe_u32 v20, v134, 16, 1
	v_bfe_u32 v22, v130, 16, 1
	v_bfe_u32 v23, v128, 16, 1
	v_bfe_u32 v89, v126, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v136, v136
	v_cmp_o_f32_e64 s2, v134, v134
	v_cmp_o_f32_e64 s6, v132, v132
	v_cmp_o_f32_e64 s7, v130, v130
	v_cmp_o_f32_e64 s8, v128, v128
	v_add3_u32 v19, v136, v19, 0x7fff
	v_add3_u32 v20, v134, v20, 0x7fff
	v_add3_u32 v21, v132, v21, 0x7fff
	v_add3_u32 v22, v130, v22, 0x7fff
	v_add3_u32 v23, v128, v23, 0x7fff
	v_add3_u32 v89, v126, v89, 0x7fff
	v_cndmask_b16 v255.h, 0x7fff, v19.h, vcc_lo
	v_cndmask_b16 v170.h, 0x7fff, v20.h, s2
	v_cndmask_b16 v175.h, 0x7fff, v21.h, s6
	v_cndmask_b16 v171.h, 0x7fff, v22.h, s7
	v_cndmask_b16 v173.h, 0x7fff, v23.h, s8
	v_cndmask_b16 v174.h, 0x7fff, v89.h, s10
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[239:242], v24
	ds_load_b128 v[243:246], v204
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v227.l, v173.h
	v_mov_b16_e64 v228.l, v174.h
	v_mov_b16_e64 v226.l, v171.h
	v_mov_b16_e64 v225.l, v175.h
	v_mov_b16_e64 v224.l, v170.h
	v_mov_b16_e64 v223.l, v255.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v19, v167, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v167, v167
	v_bfe_u32 v20, v169, 16, 1
	v_cmp_o_f32_e64 s2, v169, v169
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[223:230], v[81:88], v[9:16]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v19, v167, v19, 0x7fff
	v_cmp_o_f32_e64 s6, v133, v133
	v_add3_u32 v20, v169, v20, 0x7fff
	v_cmp_o_f32_e64 s7, v131, v131
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[231:238], v[73:80], v[9:16]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s8, v129, v129
	v_cmp_o_f32_e64 s10, v127, v127
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v130, v130, v171
	v_sub_f32_e32 v126, v126, v174
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[223:230], v[239:246], v[9:16]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v223.h, 0x7fff, v19.h, vcc_lo
	v_bfe_u32 v19, v139, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v139, v139
	v_cndmask_b16 v224.h, 0x7fff, v20.h, s2
	v_bfe_u32 v20, v153, 16, 1
	v_cmp_o_f32_e64 s2, v153, v153
	v_add3_u32 v19, v139, v19, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v223.l, v18.h
	v_mov_b16_e64 v224.l, v18.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v20, v153, v20, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v225.l, v18.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v225.h, 0x7fff, v19.h, vcc_lo
	v_bfe_u32 v19, v141, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v141, v141
	v_cndmask_b16 v248.h, 0x7fff, v20.h, s2
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v226.l, v18.h
	v_mov_b16_e64 v227.l, v18.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v19, v141, v19, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v228.l, v18.h
	v_mov_b16_e64 v229.l, v18.h
	v_mov_b16_e64 v230.l, v18.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v162, v167, v223
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v226.h, 0x7fff, v19.h, vcc_lo
	v_bfe_u32 v19, v143, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v143, v143
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v164, v169, v224 :: v_dual_sub_f32 v167, v139, v225
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_sub_f32_e32 v169, v141, v226
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v19, v143, v19, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v89, v153, v248
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v139, v137, 16, 1
	v_bfe_u32 v141, v135, 16, 1
	v_bfe_u32 v153, v123, 16, 1
	v_cndmask_b16 v227.h, 0x7fff, v19.h, vcc_lo
	v_bfe_u32 v19, v145, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v145, v145
	v_cmp_o_f32_e64 s2, v135, v135
	v_add3_u32 v139, v137, v139, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v191, v143, v227
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v19, v145, v19, 0x7fff
	v_bfe_u32 v143, v133, 16, 1
	v_add3_u32 v141, v135, v141, 0x7fff
	v_add3_u32 v153, v123, v153, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v132, v132, v175
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v228.h, 0x7fff, v19.h, vcc_lo
	v_bfe_u32 v19, v147, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v147, v147
	v_add3_u32 v143, v133, v143, 0x7fff
	v_cndmask_b16 v199.h, 0x7fff, v153.h, s12
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v192, v145, v228
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v19, v147, v19, 0x7fff
	v_bfe_u32 v145, v131, 16, 1
	v_cndmask_b16 v195.h, 0x7fff, v143.h, s6
	v_cndmask_b16 v153.h, 0x7fff, v154.h, s13
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v134, v134, v170 :: v_dual_sub_f32 v123, v123, v199
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v229.h, 0x7fff, v19.h, vcc_lo
	v_bfe_u32 v19, v149, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v149, v149
	v_add3_u32 v145, v131, v145, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v225.l, v195.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v193, v147, v229
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v19, v149, v19, 0x7fff
	v_bfe_u32 v147, v129, 16, 1
	v_cndmask_b16 v178.h, 0x7fff, v145.h, s7
	v_cndmask_b16 v145.h, 0x7fff, v158.h, s17
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s17, v0, v0
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v230.h, 0x7fff, v19.h, vcc_lo
	v_bfe_u32 v19, v151, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v151, v151
	v_add3_u32 v147, v129, v147, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v226.l, v178.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v194, v149, v230
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v19, v151, v19, 0x7fff
	v_bfe_u32 v149, v127, 16, 1
	v_cndmask_b16 v196.h, 0x7fff, v147.h, s8
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v230.l, v199.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v0, v0, v124, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v247.h, 0x7fff, v19.h, vcc_lo
	v_bfe_u32 v19, v155, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v155, v155
	v_add3_u32 v149, v127, v149, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v227.l, v196.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v90, v151, v247
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v19, v155, v19, 0x7fff
	v_bfe_u32 v151, v125, 16, 1
	v_cndmask_b16 v197.h, 0x7fff, v149.h, s10
	v_cndmask_b16 v149.h, 0x7fff, v156.h, s15
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v247.l, v153.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v249.h, 0x7fff, v19.h, vcc_lo
	v_bfe_u32 v19, v157, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v157, v157
	v_add3_u32 v151, v125, v151, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v228.l, v197.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v124, v186, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v19, v157, v19, 0x7fff
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v134, v134
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v198.h, 0x7fff, v151.h, s11
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v24, v155, v249
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v155, v119, 16, 1
	v_cndmask_b16 v250.h, 0x7fff, v19.h, vcc_lo
	v_bfe_u32 v19, v159, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v159, v159
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v229.l, v198.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v155, v119, v155, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v23, v157, v250
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v19, v159, v19, 0x7fff
	v_bfe_u32 v157, v115, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v249.l, v149.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v151.h, 0x7fff, v155.h, s14
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s11, v130, v130
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v251.h, 0x7fff, v19.h, vcc_lo
	v_bfe_u32 v19, v161, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v161, v161
	v_add3_u32 v157, v115, v157, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v248.l, v151.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v22, v159, v251
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v19, v161, v19, 0x7fff
	v_bfe_u32 v159, v111, 16, 1
	v_cndmask_b16 v147.h, 0x7fff, v157.h, s16
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v251.l, v145.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v124, v186, v124, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v252.h, 0x7fff, v19.h, vcc_lo
	v_bfe_u32 v19, v163, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v163, v163
	v_add3_u32 v159, v111, v159, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v250.l, v147.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v21, v161, v252
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v19, v163, v19, 0x7fff
	v_bfe_u32 v161, v214, 16, 1
	v_cndmask_b16 v143.h, 0x7fff, v159.h, s18
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s18, v186, v186
	v_cmp_o_f32_e64 s15, v126, v126
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v253.h, 0x7fff, v19.h, vcc_lo
	v_bfe_u32 v19, v165, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v165, v165
	v_add3_u32 v161, v214, v161, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v252.l, v143.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v20, v163, v253
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v19, v165, v19, 0x7fff
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s8, v132, v132
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v128, v128, v173
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v151.l, v18.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v127, v127, v197
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v254.h, 0x7fff, v19.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v137, v137
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v128, v128
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v136, v136, v255 :: v_dual_sub_f32 v125, v125, v198
	s_delay_alu instid0(VALU_DEP_4)
	v_sub_f32_e32 v19, v165, v254
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v163.h, 0x7fff, v139.h, vcc_lo
	v_cndmask_b16 v165.h, 0x7fff, v141.h, s2
	v_cndmask_b16 v141.h, 0x7fff, v160.h, s19
	v_cndmask_b16 v139.h, 0x7fff, v161.h, s20
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_load_b128 v[154:157], v205
	ds_load_b128 v[158:161], v206
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v223.l, v163.h
	v_mov_b16_e64 v224.l, v165.h
	v_mov_b16_e64 v253.l, v141.h
	v_mov_b16_e64 v254.l, v139.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s19, v122, v122
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v165.l, v18.h
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[223:230], v[81:88], v[1:8]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v136, v136
	v_cmp_o_f32_e64 s2, v166, v166
	v_cmp_o_f32_e64 s7, v168, v168
	v_cmp_o_f32_e64 s10, v190, v190
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[247:254], v[73:80], v[1:8]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s12, v189, v189
	v_cmp_o_f32_e64 s14, v188, v188
	v_cmp_o_f32_e64 s16, v187, v187
	v_cmp_o_f32_e64 s20, v182, v182
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[223:230], v[239:246], v[1:8]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v163.l, v18.h
	v_mov_b32_e32 v170, v94
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[231:238], v[154:161], v[9:16]
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[236:239], off, off offset:8
	scratch_load_b128 v[240:243], off, off offset:24
	v_wmma_f32_16x16x16_bf16 v[1:8], v[247:254], v[154:161], v[1:8]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v160, v122, 16, 1
	v_bfe_u32 v157, v130, 16, 1
	v_bfe_u32 v155, v134, 16, 1
	v_bfe_u32 v159, v126, 16, 1
	v_bfe_u32 v156, v132, 16, 1
	v_add3_u32 v122, v122, v160, 0x7fff
	v_bfe_u32 v160, v182, 16, 1
	v_add3_u32 v130, v130, v157, 0x7fff
	v_bfe_u32 v157, v189, 16, 1
	v_add3_u32 v134, v134, v155, 0x7fff
	v_bfe_u32 v155, v168, 16, 1
	v_add3_u32 v161, v182, v160, 0x7fff
	v_cndmask_b16 v161.l, 0x7fff, v122.h, s19
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v122, v135, v165
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v157, v189, v157, 0x7fff
	v_cndmask_b16 v157.l, 0x7fff, v130.h, s11
	v_add3_u32 v155, v168, v155, 0x7fff
	v_add3_u32 v126, v126, v159, 0x7fff
	v_bfe_u32 v130, v122, 16, 1
	v_bfe_u32 v159, v187, 16, 1
	v_cndmask_b16 v155.l, 0x7fff, v134.h, s6
	v_cndmask_b16 v160.h, 0x7fff, v124.h, s18
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v124, v133, v195
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v122, v122
	v_add3_u32 v130, v122, v130, 0x7fff
	v_bfe_u32 v122, v164, 16, 1
	v_add3_u32 v132, v132, v156, 0x7fff
	v_bfe_u32 v156, v190, 16, 1
	v_add3_u32 v159, v187, v159, 0x7fff
	v_cndmask_b16 v159.l, 0x7fff, v126.h, s15
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v126, v131, v178
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v131, v164, v122, 0x7fff
	v_bfe_u32 v122, v124, 16, 1
	v_add3_u32 v156, v190, v156, 0x7fff
	v_bfe_u32 v158, v128, 16, 1
	v_cndmask_b16 v156.l, 0x7fff, v132.h, s8
	v_cmp_o_f32_e64 s8, v124, v124
	v_add3_u32 v124, v124, v122, 0x7fff
	v_bfe_u32 v122, v167, 16, 1
	v_add3_u32 v128, v128, v158, 0x7fff
	v_bfe_u32 v158, v188, 16, 1
	v_cmp_o_f32_e64 s11, v126, v126
	v_bfe_u32 v154, v136, 16, 1
	v_add3_u32 v132, v167, v122, 0x7fff
	v_bfe_u32 v122, v126, 16, 1
	v_add3_u32 v158, v188, v158, 0x7fff
	v_cndmask_b16 v158.l, 0x7fff, v128.h, s13
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v128, v129, v196
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s15, v127, v127
	v_add3_u32 v126, v126, v122, 0x7fff
	v_bfe_u32 v122, v169, 16, 1
	v_add3_u32 v136, v136, v154, 0x7fff
	v_cmp_o_f32_e64 s13, v128, v128
	v_bfe_u32 v154, v166, 16, 1
	v_cndmask_b16 v155.h, 0x7fff, v155.h, s7
	v_add3_u32 v133, v169, v122, 0x7fff
	v_bfe_u32 v122, v128, 16, 1
	v_cndmask_b16 v156.h, 0x7fff, v156.h, s10
	v_add3_u32 v154, v166, v154, 0x7fff
	v_cndmask_b16 v154.l, 0x7fff, v136.h, vcc_lo
	v_cndmask_b16 v157.h, 0x7fff, v157.h, s12
	v_add3_u32 v128, v128, v122, 0x7fff
	v_bfe_u32 v122, v191, 16, 1
	v_cndmask_b16 v154.h, 0x7fff, v154.h, s2
	v_cndmask_b16 v158.h, 0x7fff, v158.h, s14
	v_cndmask_b16 v159.h, 0x7fff, v159.h, s16
	v_cndmask_b16 v160.l, 0x7fff, v0.h, s17
	v_add3_u32 v134, v191, v122, 0x7fff
	v_bfe_u32 v122, v127, 16, 1
	v_cndmask_b16 v161.h, 0x7fff, v161.h, s20
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v137, v163
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s14, v191, v191
	v_cmp_o_f32_e64 s16, v192, v192
	v_add3_u32 v127, v127, v122, 0x7fff
	v_bfe_u32 v122, v192, 16, 1
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[154:161], v[81:88], v[9:16]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s18, v193, v193
	v_cmp_o_f32_e64 s20, v194, v194
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v147.l, v18.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v135, v192, v122, 0x7fff
	v_bfe_u32 v122, v125, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v143.l, v18.h
	v_dual_mov_b32 v94, v99 :: v_dual_mov_b32 v171, v96
	v_mov_b32_e32 v96, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v136, v125, v122, 0x7fff
	v_bfe_u32 v122, v193, 16, 1
	v_mov_b32_e32 v187, v50
	v_dual_mov_b32 v97, v98 :: v_dual_mov_b32 v98, v100
	v_mov_b32_e32 v186, v49
	v_add3_u32 v137, v193, v122, 0x7fff
	v_bfe_u32 v122, v123, 16, 1
	v_dual_mov_b32 v50, v43 :: v_dual_mov_b32 v49, v42
	v_cmp_o_f32_e64 s2, v162, v162
	v_cmp_o_f32_e64 s7, v164, v164
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v154, v123, v122, 0x7fff
	v_bfe_u32 v122, v194, 16, 1
	v_cmp_o_f32_e64 s10, v167, v167
	v_cmp_o_f32_e64 s12, v169, v169
	v_cmp_o_f32_e64 s17, v125, v125
	v_cmp_o_f32_e64 s19, v123, v123
	v_add3_u32 v155, v194, v122, 0x7fff
	v_dual_mov_b32 v195, v63 :: v_dual_mov_b32 v194, v62
	v_dual_mov_b32 v193, v61 :: v_dual_mov_b32 v192, v60
	v_dual_mov_b32 v191, v59 :: v_dual_mov_b32 v190, v58
	v_dual_mov_b32 v189, v57 :: v_dual_mov_b32 v188, v56
	v_dual_mov_b32 v56, v64 :: v_dual_mov_b32 v57, v65
	v_dual_mov_b32 v58, v66 :: v_dual_mov_b32 v59, v67
	v_dual_mov_b32 v60, v68 :: v_dual_mov_b32 v61, v69
	v_dual_mov_b32 v62, v70 :: v_dual_mov_b32 v63, v71
	v_dual_mov_b32 v71, v32 :: v_dual_mov_b32 v70, v31
	v_dual_mov_b32 v69, v30 :: v_dual_mov_b32 v68, v29
	v_dual_mov_b32 v67, v28 :: v_dual_mov_b32 v66, v27
	v_dual_mov_b32 v65, v26 :: v_dual_mov_b32 v64, v25
	v_dual_mov_b32 v25, v33 :: v_dual_mov_b32 v26, v34
	v_dual_mov_b32 v27, v35 :: v_dual_mov_b32 v28, v36
	v_dual_mov_b32 v29, v37 :: v_dual_mov_b32 v30, v38
	v_dual_mov_b32 v31, v39 :: v_dual_mov_b32 v32, v40
	v_mov_b32_e32 v33, v102
	v_mov_b32_e32 v35, v104
	v_bfe_u32 v129, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cndmask_b16 v123.l, 0x7fff, v130.h, s6
	v_cndmask_b16 v123.h, 0x7fff, v131.h, s7
	v_cndmask_b16 v124.l, 0x7fff, v124.h, s8
	v_add3_u32 v0, v0, v129, 0x7fff
	v_bfe_u32 v129, v162, 16, 1
	v_cndmask_b16 v124.h, 0x7fff, v132.h, s10
	v_cndmask_b16 v125.l, 0x7fff, v126.h, s11
	v_cndmask_b16 v125.h, 0x7fff, v133.h, s12
	v_cndmask_b16 v122.l, 0x7fff, v0.h, vcc_lo
	v_add3_u32 v129, v162, v129, 0x7fff
	v_cndmask_b16 v126.l, 0x7fff, v128.h, s13
	v_cndmask_b16 v126.h, 0x7fff, v134.h, s14
	v_cndmask_b16 v127.l, 0x7fff, v127.h, s15
	v_cndmask_b16 v127.h, 0x7fff, v135.h, s16
	v_cndmask_b16 v122.h, 0x7fff, v129.h, s2
	v_cndmask_b16 v128.l, 0x7fff, v136.h, s17
	v_cndmask_b16 v128.h, 0x7fff, v137.h, s18
	v_cndmask_b16 v129.l, 0x7fff, v154.h, s19
	v_cndmask_b16 v129.h, 0x7fff, v155.h, s20
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v120, v222
	v_mov_b32_e32 v34, v103
	v_dual_mov_b32 v36, v105 :: v_dual_mov_b32 v37, v106
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[122:129], v[81:88], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v82, v118, v221
	v_sub_f32_e32 v84, v116, v220
	v_sub_f32_e32 v86, v114, v219
	v_sub_f32_e32 v88, v112, v218
	v_dual_mov_b32 v38, v107 :: v_dual_mov_b32 v39, v108
	v_mov_b32_e32 v40, v109
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v81, v0, 16, 1
	v_bfe_u32 v83, v82, 16, 1
	v_bfe_u32 v85, v84, 16, 1
	v_bfe_u32 v87, v86, 16, 1
	v_bfe_u32 v112, v88, 16, 1
	v_bfe_u32 v114, v110, 16, 1
	v_bfe_u32 v108, v92, 16, 1
	v_bfe_u32 v106, v91, 16, 1
	v_mov_b32_e32 v99, v101
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_add3_u32 v0, v0, v81, 0x7fff
	v_bfe_u32 v81, v150, 16, 1
	v_cmp_o_f32_e64 s6, v82, v82
	v_add3_u32 v82, v82, v83, 0x7fff
	v_bfe_u32 v83, v152, 16, 1
	v_cmp_o_f32_e64 s8, v84, v84
	v_add3_u32 v84, v84, v85, 0x7fff
	v_bfe_u32 v85, v148, 16, 1
	v_cmp_o_f32_e64 s11, v86, v86
	v_add3_u32 v86, v86, v87, 0x7fff
	v_bfe_u32 v87, v146, 16, 1
	v_cmp_o_f32_e64 s13, v88, v88
	v_add3_u32 v88, v88, v112, 0x7fff
	v_bfe_u32 v112, v144, 16, 1
	v_cmp_o_f32_e64 s15, v110, v110
	v_add3_u32 v110, v110, v114, 0x7fff
	v_bfe_u32 v114, v142, 16, 1
	v_cmp_o_f32_e64 s17, v92, v92
	v_add3_u32 v92, v92, v108, 0x7fff
	v_bfe_u32 v108, v140, 16, 1
	v_cmp_o_f32_e64 s19, v91, v91
	v_add3_u32 v91, v91, v106, 0x7fff
	v_bfe_u32 v106, v138, 16, 1
	v_cmp_o_f32_e64 s2, v150, v150
	v_add3_u32 v81, v150, v81, 0x7fff
	v_cmp_o_f32_e64 s7, v152, v152
	v_add3_u32 v83, v152, v83, 0x7fff
	v_cmp_o_f32_e64 s10, v148, v148
	v_add3_u32 v85, v148, v85, 0x7fff
	v_cmp_o_f32_e64 s12, v146, v146
	v_add3_u32 v87, v146, v87, 0x7fff
	v_cmp_o_f32_e64 s14, v144, v144
	v_add3_u32 v112, v144, v112, 0x7fff
	v_cmp_o_f32_e64 s16, v142, v142
	v_add3_u32 v114, v142, v114, 0x7fff
	v_cmp_o_f32_e64 s18, v140, v140
	v_add3_u32 v108, v140, v108, 0x7fff
	v_cmp_o_f32_e64 s20, v138, v138
	v_add3_u32 v106, v138, v106, 0x7fff
	v_cndmask_b16 v81.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v81.h, 0x7fff, v81.h, s2
	v_cndmask_b16 v82.l, 0x7fff, v82.h, s6
	v_cndmask_b16 v82.h, 0x7fff, v83.h, s7
	v_cndmask_b16 v83.l, 0x7fff, v84.h, s8
	v_cndmask_b16 v83.h, 0x7fff, v85.h, s10
	v_cndmask_b16 v84.l, 0x7fff, v86.h, s11
	v_cndmask_b16 v84.h, 0x7fff, v87.h, s12
	v_cndmask_b16 v85.l, 0x7fff, v88.h, s13
	v_cndmask_b16 v85.h, 0x7fff, v112.h, s14
	v_cndmask_b16 v86.l, 0x7fff, v110.h, s15
	v_cndmask_b16 v86.h, 0x7fff, v114.h, s16
	v_cndmask_b16 v87.l, 0x7fff, v92.h, s17
	v_cndmask_b16 v87.h, 0x7fff, v108.h, s18
	v_cndmask_b16 v88.l, 0x7fff, v91.h, s19
	v_cndmask_b16 v88.h, 0x7fff, v106.h, s20
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v153.l, v18.h
	v_mov_b16_e64 v149.l, v18.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s7, v89, v89
	v_cmp_o_f32_e64 s2, v90, v90
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[81:88], v[73:80], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v81, v119, v151 :: v_dual_sub_f32 v0, v121, v153
	v_dual_sub_f32 v82, v117, v149 :: v_dual_sub_f32 v83, v115, v147
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v145.l, v18.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v88, v81, 16, 1
	v_bfe_u32 v87, v0, 16, 1
	v_cmp_o_f32_e64 s6, v81, v81
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cmp_o_f32_e64 s10, v24, v24
	v_add3_u32 v88, v81, v88, 0x7fff
	v_bfe_u32 v81, v89, 16, 1
	v_add3_u32 v0, v0, v87, 0x7fff
	v_bfe_u32 v87, v90, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v84, v113, v145
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s12, v23, v23
	v_add3_u32 v89, v89, v81, 0x7fff
	v_bfe_u32 v81, v82, 16, 1
	v_add3_u32 v87, v90, v87, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v85, v111, v143
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v141.l, v18.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s14, v22, v22
	v_add3_u32 v90, v82, v81, 0x7fff
	v_bfe_u32 v81, v24, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v139.l, v18.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v86, v47, v141
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s16, v21, v21
	v_cmp_o_f32_e64 s18, v20, v20
	v_add3_u32 v24, v24, v81, 0x7fff
	v_bfe_u32 v81, v83, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v18, v214, v139
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s8, v82, v82
	v_cmp_o_f32_e64 s11, v83, v83
	v_cmp_o_f32_e64 s13, v84, v84
	v_add3_u32 v91, v83, v81, 0x7fff
	v_bfe_u32 v81, v23, 16, 1
	v_cmp_o_f32_e64 s19, v18, v18
	v_cmp_o_f32_e64 s15, v85, v85
	v_cmp_o_f32_e64 s17, v86, v86
	v_cmp_o_f32_e64 s20, v19, v19
	v_add3_u32 v23, v23, v81, 0x7fff
	v_bfe_u32 v81, v84, 16, 1
	v_cndmask_b16 v82.l, 0x7fff, v88.h, s6
	v_cndmask_b16 v82.h, 0x7fff, v89.h, s7
	v_cndmask_b16 v83.l, 0x7fff, v90.h, s8
	v_cndmask_b16 v83.h, 0x7fff, v24.h, s10
	v_add3_u32 v92, v84, v81, 0x7fff
	v_bfe_u32 v81, v22, 16, 1
	v_cndmask_b16 v84.l, 0x7fff, v91.h, s11
	v_cndmask_b16 v84.h, 0x7fff, v23.h, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v22, v22, v81, 0x7fff
	v_bfe_u32 v81, v85, 16, 1
	v_add3_u32 v106, v85, v81, 0x7fff
	v_bfe_u32 v81, v21, 16, 1
	v_cndmask_b16 v85.l, 0x7fff, v92.h, s13
	v_cndmask_b16 v85.h, 0x7fff, v22.h, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v21, v21, v81, 0x7fff
	v_bfe_u32 v81, v86, 16, 1
	v_add3_u32 v107, v86, v81, 0x7fff
	v_bfe_u32 v81, v20, 16, 1
	v_cndmask_b16 v86.l, 0x7fff, v106.h, s15
	v_cndmask_b16 v86.h, 0x7fff, v21.h, s16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v87.l, 0x7fff, v107.h, s17
	v_add3_u32 v20, v20, v81, 0x7fff
	v_bfe_u32 v81, v18, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v18, v18, v81, 0x7fff
	v_bfe_u32 v81, v19, 16, 1
	v_cndmask_b16 v88.l, 0x7fff, v18.h, s19
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v19, v19, v81, 0x7fff
	v_cndmask_b16 v81.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v81.h, 0x7fff, v87.h, s2
	v_cndmask_b16 v87.h, 0x7fff, v20.h, s18
	.loc	1 607 13 is_stmt 1              ; attention_backward.py:607:13
	s_add_i32 s2, s31, 32
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v88.h, 0x7fff, v19.h, s20
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmpk_lt_u32 s31, 0x7e0
	s_mov_b32 s31, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[81:88], v[73:80], v[1:8]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ;   in Loop: Header=BB0_1 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	s_movk_i32 s33, 0x800
	.loc	1 605 9 is_stmt 1               ; attention_backward.py:605:9
	s_and_not1_b32 vcc_lo, exec_lo, s29
	s_mov_b32 s29, 0
	s_cbranch_vccnz .LBB0_1
; %bb.4:
	.loc	1 550 20                        ; attention_backward.py:550:20
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v18, off, off offset:80
	scratch_load_b32 v17, off, off offset:88
	scratch_load_b32 v19, off, off offset:84
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s5, s43, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s42
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s50, s6
	s_mov_b32 s51, s7
	.loc	1 514 23                        ; attention_backward.py:514:23
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v0, s21, v18
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_or_b32_e32 v18, s22, v18
	.loc	1 550 20                        ; attention_backward.py:550:20
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, v17, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v43, s44, v18
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s2, s44, v17
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v49, 2, v17
	v_or_b32_e32 v48, 4, v17
	v_or_b32_e32 v47, 6, v17
	v_or_b32_e32 v46, 8, v17
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v45, 10, v17
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v50, v43, v17, 2
	v_add_lshl_u32 v51, v43, v49, 2
	v_add_lshl_u32 v52, v43, v48, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v0, 32, v17
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v53, v43, v45, 2
	v_cndmask_b32_e64 v50, 0x80000000, v50, s2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v42, 14, v17
	v_or_b32_e32 v44, 12, v17
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s3, s44, v0
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v41, 34, v17
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v33, v50, s[4:7], 0 offen
	v_cndmask_b32_e64 v33, 0x80000000, v51, s2
	v_add_lshl_u32 v50, v43, v47, 2
	v_cndmask_b32_e64 v51, 0x80000000, v52, s2
	v_add_lshl_u32 v52, v43, v46, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v24, 36, v17
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v34, v33, s[4:7], 0 offen
	v_cndmask_b32_e64 v33, 0x80000000, v50, s2
	buffer_store_b32 v35, v51, s[4:7], 0 offen
	v_cndmask_b32_e64 v34, 0x80000000, v52, s2
	v_cndmask_b32_e64 v35, 0x80000000, v53, s2
	v_add_lshl_u32 v50, v43, v44, 2
	buffer_store_b32 v36, v33, s[4:7], 0 offen
	v_add_lshl_u32 v33, v43, v42, 2
	s_clause 0x1
	buffer_store_b32 v37, v34, s[4:7], 0 offen
	buffer_store_b32 v38, v35, s[4:7], 0 offen
	v_add_lshl_u32 v35, v43, v0, 2
	v_cndmask_b32_e64 v34, 0x80000000, v50, s2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v23, 38, v17
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s3
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v36, v43, v41, 2
	v_add_lshl_u32 v37, v43, v24, 2
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v20, 44, v17
	v_or_b32_e32 v22, 40, v17
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v39, v34, s[4:7], 0 offen
	v_cndmask_b32_e64 v34, 0x80000000, v36, s2
	s_clause 0x1
	buffer_store_b32 v40, v33, s[4:7], 0 offen
	buffer_store_b32 v25, v35, s[4:7], 0 offen
	v_add_lshl_u32 v25, v43, v23, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v21, 42, v17
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v36, 0x80000000, v37, s2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v18, s46, v18
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v19, 46, v17
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v26, v34, s[4:7], 0 offen
	buffer_store_b32 v27, v36, s[4:7], 0 offen
	v_add_lshl_u32 v26, v43, v22, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	v_add_lshl_u32 v33, v43, v20, 2
	v_add_lshl_u32 v27, v43, v21, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s0, s46, v17
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	buffer_store_b32 v28, v25, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v33, s2
	v_add_lshl_u32 v28, v43, v19, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v17, v18, v17, 2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s0, vcc_lo, s0
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x2
	buffer_store_b32 v29, v26, s[4:7], 0 offen
	buffer_store_b32 v30, v27, s[4:7], 0 offen
	buffer_store_b32 v31, v25, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v28, s2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	v_add_lshl_u32 v26, v18, v49, 2
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v32, v25, s[4:7], 0 offen
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
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 96
		.amdhsa_kernarg_size 184
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 64
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 96
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21436
; TotalNumSgprs: 66
; NumVgprs: 256
; ScratchSize: 96
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 66
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 96
    .sgpr_count:     66
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 23
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
