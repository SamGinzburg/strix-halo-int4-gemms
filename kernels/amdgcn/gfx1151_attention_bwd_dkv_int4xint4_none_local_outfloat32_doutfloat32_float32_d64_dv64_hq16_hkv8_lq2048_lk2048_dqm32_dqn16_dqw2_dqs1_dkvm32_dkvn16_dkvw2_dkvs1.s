	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[56:59], s[0:1], 0x74
	s_load_b256 s[40:47], s[0:1], 0x0
.Ltmp0:
	.loc	1 524 23 prologue_end           ; attention_backward.py:524:23
	v_lshlrev_b32_e32 v46, 3, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s38, s2, 4
	.loc	1 521 24                        ; attention_backward.py:521:24
	s_lshl_b32 s39, s3, 11
	v_dual_mov_b32 v161, 0 :: v_dual_and_b32 v56, 7, v0
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_add_i32 s39, s39, s38
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_and_b32_e32 v1, 24, v46
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_or_b32_e32 v3, s39, v2
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v4, s38, v2
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 514 33 is_stmt 0              ; attention_backward.py:514:33
	v_bfe_u32 v92, v0, 4, 1
	s_clause 0x1
	s_load_b64 s[60:61], s[0:1], 0x58
	s_load_b128 s[12:15], s[0:1], 0x20
	.loc	1 517 21 is_stmt 1              ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_and_b32_e32 v47, 48, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v53, 12, v92
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[2:3], null, s57, v3, v[1:2]
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_cmp_gt_i32_e64 s4, s57, v1
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_and_b32 s9, s43, 0xffff
	s_mov_b32 s8, s42
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v48, 2, v92
	v_or_b32_e32 v49, 4, v92
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v50, 6, v92
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v51, 8, v92
	v_or_b32_e32 v52, 10, v92
	v_lshrrev_b32_e32 v18, 3, v0
	v_or_b32_e32 v54, 14, v92
	.loc	1 522 24                        ; attention_backward.py:522:24
	buffer_load_b64 v[1:2], v1, s[8:11], 0 offen
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v155, s38, v92
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshrrev_b32_e32 v55, 1, v47
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_or_b32_e32 v3, s39, v92
	v_or_b32_e32 v13, s39, v53
	.loc	1 543 26                        ; attention_backward.py:543:26
	s_lshl_b32 s4, s3, 10
	.loc	1 541 32                        ; attention_backward.py:541:32
	s_ashr_i32 s5, s38, 1
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_or_b32_e32 v7, s39, v48
	v_or_b32_e32 v8, s39, v49
	.loc	1 545 17                        ; attention_backward.py:545:17
	s_add_i32 s4, s5, s4
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_or_b32_e32 v9, s39, v50
	v_or_b32_e32 v10, s39, v51
	v_or_b32_e32 v11, s39, v52
	.loc	1 541 32                        ; attention_backward.py:541:32
	v_or_b32_e32 v4, s5, v18
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_lshlrev_b32_e32 v12, 3, v56
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_or_b32_e32 v5, s4, v18
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xad_u32 v6, v46, v55, 0
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_lshlrev_b32_e32 v3, 1, v3
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_or_b32_e32 v14, s39, v54
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s6, 0x800, v155
	v_dual_mov_b32 v22, v161 :: v_dual_lshlrev_b32 v13, 1, v13
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_lshlrev_b32_e32 v7, 1, v7
	v_dual_mov_b32 v17, 0 :: v_dual_lshlrev_b32 v8, 1, v8
	v_lshlrev_b32_e32 v9, 1, v9
	v_dual_mov_b32 v33, 0 :: v_dual_lshlrev_b32 v10, 1, v10
	v_dual_mov_b32 v20, v161 :: v_dual_lshlrev_b32 v11, 1, v11
	.loc	1 549 23                        ; attention_backward.py:549:23
	v_cmp_gt_i32_e32 vcc_lo, 0x400, v4
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v14, 1, v14
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_and_b32 s9, s13, 0xffff
	s_mov_b32 s8, s12
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v104, 15, v0
	v_dual_mov_b32 v34, v161 :: v_dual_and_b32 v61, 16, v0
	v_bfe_i32 v57, v0, 4, 1
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v142, 1, v0
	v_and_b32_e32 v62, 32, v0
	v_bfe_i32 v63, v0, 5, 1
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshlrev_b32_e32 v64, 1, v0
	v_dual_mov_b32 v36, v161 :: v_dual_and_b32 v65, 1, v0
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_bfe_i32 v66, v0, 0, 1
	v_dual_mov_b32 v19, v161 :: v_dual_lshlrev_b32 v76, 4, v0
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_bfe_i32 v77, v0, 3, 1
	v_dual_mov_b32 v21, v161 :: v_dual_and_b32 v78, 14, v0
	v_dual_mov_b32 v38, v161 :: v_dual_lshlrev_b32 v79, 6, v0
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_bfe_i32 s2, s2, 0x1001b
	s_clause 0x2
	s_load_b256 s[48:55], s[0:1], 0x38
	s_load_b64 s[22:23], s[0:1], 0x98
	s_load_b32 s24, s[0:1], 0xa0
	s_lshr_b32 s0, s2, 28
	v_mov_b32_e32 v37, v161
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_mov_b16_e32 v42.l, 0
	v_dual_mov_b32 v39, v161 :: v_dual_and_b32 v82, 0x440, v77
	v_dual_mov_b32 v40, v161 :: v_dual_and_b32 v81, 0x370, v76
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v45.h, v42.l
	v_mov_b16_e32 v71.h, v42.l
	v_mov_b16_e64 v147.h, v42.l
	v_dual_mov_b32 v31, v161 :: v_dual_lshlrev_b32 v88, 3, v78
	v_and_b32_e32 v66, 0x240, v66
	v_mov_b16_e32 v74.h, v42.l
	v_dual_mov_b32 v27, v161 :: v_dual_lshlrev_b32 v86, 5, v65
	.loc	1 620 52                        ; attention_backward.py:620:52
	v_lshlrev_b32_e32 v106, 4, v65
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_xad_u32 v65, v82, v81, 0
	v_xor3_b32 v55, v88, v66, v55
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v67.l, v42.l
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v75.h, v42.l
	v_mov_b16_e32 v70.h, v42.l
	v_and_b32_e32 v46, 48, v46
	v_lshl_or_b32 v96, v78, 9, v55
	v_dual_mov_b32 v32, v161 :: v_dual_lshlrev_b32 v87, 4, v56
	v_mul_u32_u24_e32 v56, 0x90, v56
	v_add_nc_u32_e32 v239, 0, v79
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_waitcnt lgkmcnt(0)
	s_add_i32 s2, s38, s22
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v81, 16, v86
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_sub_i32 s2, s2, s24
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v129, s38, v48
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s2, s2, 16
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v146, s38, v49
	v_or_b32_e32 v138, s38, v50
	v_or_b32_e32 v141, s38, v51
	v_or_b32_e32 v136, s38, v52
	v_or_b32_e32 v135, s38, v53
	v_or_b32_e32 v122, s38, v54
	.loc	1 590 24                        ; attention_backward.py:590:24
	v_med3_i32 v103, s2, 0, 0x800
	s_lshl_b32 s63, s3, 12
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v68.l, v42.l
	v_mov_b16_e32 v69.l, v42.l
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s1, s56, v86
	.loc	1 600 19                        ; attention_backward.py:600:19
	v_readfirstlane_b32 s2, v103
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_add_i32 s72, s23, s24
	s_mov_b32 s42, s10
	s_sub_i32 s7, s38, s72
	s_mov_b32 s43, s11
	.loc	1 600 19                        ; attention_backward.py:600:19
	s_add_i32 s2, s2, 31
	.loc	1 589 24                        ; attention_backward.py:589:24
	s_max_i32 s7, s7, 0
	.loc	1 600 17                        ; attention_backward.py:600:17
	s_and_b32 s2, s2, 0x1fe0
	s_mov_b32 s68, s52
	.loc	1 598 24                        ; attention_backward.py:598:24
	s_min_u32 s74, s2, 0x800
	.loc	1 597 45                        ; attention_backward.py:597:45
	s_and_b32 s52, s7, 0x7fffffe0
	.loc	1 641 25                        ; attention_backward.py:641:25
	s_mul_f32 s73, s59, 0x3fb8aa3b
	s_mov_b32 s21, 0
	s_mov_b32 s62, -1
	s_mov_b32 s64, s50
	v_mov_b32_e32 v24, v161
	v_mov_b32_e32 v23, v161
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt vmcnt(0)
	ds_store_b64 v6, v[1:2]
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v6, v161
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v15, 0x80000000, v3, s6
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_mad_u64_u32 v[3:4], null, s58, v5, v[12:13]
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v4, 0x80000000, v7, s6
	v_cndmask_b32_e64 v5, 0x80000000, v8, s6
	v_cndmask_b32_e64 v7, 0x80000000, v9, s6
	v_cndmask_b32_e64 v8, 0x80000000, v10, s6
	v_cndmask_b32_e64 v9, 0x80000000, v11, s6
	v_cndmask_b32_e64 v10, 0x80000000, v13, s6
	v_cndmask_b32_e64 v11, 0x80000000, v14, s6
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_clause 0x7
	buffer_load_u16 v43, v15, s[8:11], 0 offen
	buffer_load_u16 v44, v4, s[8:11], 0 offen
	buffer_load_u16 v41, v5, s[8:11], 0 offen
	buffer_load_u16 v14, v7, s[8:11], 0 offen
	buffer_load_u16 v15, v8, s[8:11], 0 offen
	buffer_load_u16 v16, v9, s[8:11], 0 offen
	buffer_load_u16 v73, v10, s[8:11], 0 offen
	buffer_load_u16 v13, v11, s[8:11], 0 offen
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v9, 56, v0
	.loc	1 514 23 is_stmt 0              ; attention_backward.py:514:23
	v_or_b32_e32 v0, s38, v18
	.loc	1 550 20 is_stmt 1              ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s4, s58, v12
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_and_b32 s9, s45, 0xffff
	s_mov_b32 s8, s44
	v_dual_mov_b32 v5, v161 :: v_dual_add_nc_u32 v26, s0, v0
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s0, 0x800, v0
	.loc	1 549 22                        ; attention_backward.py:549:22
	s_and_b32 s5, vcc_lo, s4
	v_lshlrev_b32_e32 v90, 7, v62
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v3, 0x80000000, v3, s5
	.loc	1 570 20                        ; attention_backward.py:570:20
	v_ashrrev_i32_e32 v26, 4, v26
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s0, s0, s4
	v_mov_b32_e32 v4, v161
	v_mov_b32_e32 v7, v161
	.loc	1 544 28                        ; attention_backward.py:544:28
	buffer_load_b64 v[10:11], v3, s[8:11], 0 offen
	.loc	1 568 17                        ; attention_backward.py:568:17
	v_lshl_add_u32 v28, s3, 7, v26
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_and_b32 s9, s15, 0xffff
	s_mov_b32 s8, s14
	v_mov_b32_e32 v3, v161
	v_dual_mov_b32 v35, v161 :: v_dual_lshlrev_b32 v80, 4, v104
	.loc	1 568 17                        ; attention_backward.py:568:17
	v_mul_lo_u32 v58, v28, s58
	v_mov_b32_e32 v29, v161
	v_lshlrev_b32_e32 v89, 8, v104
	v_dual_mov_b32 v28, v161 :: v_dual_lshlrev_b32 v91, 1, v104
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_and_b32_e32 v85, 24, v64
	scratch_store_b32 off, v92, off offset:400 ; 4-byte Folded Spill
	v_or3_b32 v89, v89, v90, v80
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_add_lshl_u32 v0, v58, v12, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_and_b32_e32 v12, 0x440, v57
	v_and_or_b32 v64, v64, 30, v92
	v_lshlrev_b32_e32 v92, 1, v47
	v_lshl_or_b32 v95, v104, 6, v46
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cmp_eq_u32_e64 s0, 0, v61
	v_dual_mov_b32 v30, v161 :: v_dual_lshlrev_b32 v9, 1, v9
	v_dual_mov_b32 v26, v161 :: v_dual_lshlrev_b32 v83, 3, v62
	.loc	1 567 32                        ; attention_backward.py:567:32
	buffer_load_b128 v[57:60], v0, s[8:11], 0 offen
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_lshlrev_b32_e32 v0, 2, v104
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_xor_b32_e32 v12, v12, v80
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshl_or_b32 v79, v104, 5, v85
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v76, v76, v9, 0
	v_lshl_or_b32 v9, v104, 7, v87
	v_add_nc_u32_e32 v82, 0, v0
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v84, 3, v47
	v_lshrrev_b32_e32 v105, 1, v62
	v_add3_u32 v242, 0, v62, v91
	v_lshlrev_b32_e32 v251, 2, v64
	v_lshl_add_u32 v255, v62, 1, v82
	v_xor_b32_e32 v82, 0xb0, v89
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_add3_u32 v54, 0, v83, v12
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v12, 0, v79
	v_xad_u32 v46, v79, 8, 0
	v_xad_u32 v48, v79, 24, 0
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_add_nc_u32_e32 v66, 0, v9
	v_xad_u32 v55, v9, 64, 0
	v_xad_u32 v78, 0x60, v9, 0
	v_xad_u32 v83, 0x70, v9, 0
	v_xor_b32_e32 v49, 32, v89
	v_xor_b32_e32 v50, 48, v89
	v_xor_b32_e32 v51, 64, v89
	v_xor_b32_e32 v52, 0x50, v89
	v_xor_b32_e32 v53, 0x60, v89
	v_xor_b32_e32 v64, 0xa0, v89
	v_xor_b32_e32 v85, 0xc0, v89
	v_xor_b32_e32 v87, 0xd0, v89
	v_xor_b32_e32 v88, 0xe0, v89
	v_xor_b32_e32 v94, 32, v95
	v_mad_u64_u32 v[157:158], null, s58, v84, v[0:1]
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s3, s58, v0
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s4, s56, v81
	v_add_nc_u32_e32 v159, 0, v49
	v_add_nc_u32_e32 v169, 0, v51
	v_add_nc_u32_e32 v108, 0, v52
	v_add_nc_u32_e32 v114, 0, v85
	v_add_nc_u32_e32 v115, 0, v87
	v_add_nc_u32_e32 v116, 0, v88
	v_add_nc_u32_e32 v252, 0, v94
	v_xor_b32_e32 v49, 0x120, v96
	v_xor_b32_e32 v51, 32, v96
	v_xor_b32_e32 v52, 0xb0, v96
	v_xor_b32_e32 v81, 0x60, v96
	v_xor_b32_e32 v84, 0x140, v96
	v_xor_b32_e32 v85, 0x1d0, v96
	v_add_nc_u32_e32 v137, 0, v51
	v_add_nc_u32_e32 v119, 0, v49
	v_add_nc_u32_e32 v143, 0, v52
	v_add_nc_u32_e32 v124, 0, v81
	v_add_nc_u32_e32 v126, 0, v84
	v_dual_mov_b32 v2, v161 :: v_dual_add_nc_u32 v127, 0, v85
	v_mov_b32_e32 v8, v161
	v_mov_b32_e32 v18, v161
	s_cmp_lt_u32 s52, s74
	s_mov_b32 s44, s46
	s_cselect_b32 s75, -1, 0
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s45, s47, 0xffff
	s_and_b32 s65, s51, 0xffff
	s_and_b32 s69, s53, 0xffff
	s_and_b32 s49, s49, 0xffff
	s_sub_i32 s53, s24, s22
	.loc	1 575 27                        ; attention_backward.py:575:27
	scratch_store_b32 off, v95, off offset:268 ; 4-byte Folded Spill
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v247, 16, v44
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v235, 16, v14
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v253, 16, v15
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v248, 16, v16
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v240, 16, v73
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v246, 16, v13
	.loc	1 555 25                        ; attention_backward.py:555:25
	s_waitcnt vmcnt(1)
	v_bfe_u32 v51, v10, 16, 4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_alignbit_b32 v49, v11, v10, 24
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v52, v10, 8, 4
	v_and_b32_e32 v81, 15, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v84, -16, v51
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v49, 15, v49
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v67.h, v58.l
	v_add_nc_u32_e32 v113, 0, v82
	v_xor_b32_e32 v82, 0xf0, v96
	v_add_nc_u32_e32 v160, 0, v50
	v_xor_b32_e32 v50, 0x1b0, v96
	v_and_b32_e32 v44, 0xffff0000, v58
	v_add_nc_u32_e32 v109, 0, v53
	v_add_nc_u32_e32 v125, 0, v82
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_bfe_u32 v82, v11, 20, 4
	v_lshlrev_b32_e32 v61, 2, v61
	v_xor_b32_e32 v53, 0x190, v96
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v68.h, v59.l
	v_mov_b16_e32 v69.h, v60.l
	v_add_nc_u32_e32 v112, 0, v64
	v_or3_b32 v93, v91, v61, v62
	v_lshl_or_b32 v61, v47, 5, v80
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xad_u32 v47, v79, 16, 0
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v79, v9, 32, 0
	v_xad_u32 v80, v9, 48, 0
	.loc	1 514 23                        ; attention_backward.py:514:23
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v93, off offset:260
	scratch_store_b32 off, v61, off offset:264
	v_xor_b32_e32 v102, v61, v92
	v_xor_b32_e32 v61, 0x70, v89
	v_xor_b32_e32 v62, 0x80, v89
	v_xor_b32_e32 v90, 0x90, v93
	v_xor_b32_e32 v91, 0x120, v93
	v_xor_b32_e32 v92, 0x1b0, v93
	v_add_nc_u32_e32 v107, 0, v61
	v_xor_b32_e32 v61, 64, v96
	v_xor_b32_e32 v93, 16, v95
	v_xor_b32_e32 v95, 48, v95
	scratch_store_b32 off, v102, off offset:280 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v110, 0, v62
	v_add_nc_u32_e32 v145, 0, v61
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_bfe_u32 v61, v10, 20, 4
	v_and_b32_e32 v63, 0x820, v63
	v_add_nc_u32_e32 v236, 0, v90
	v_add_nc_u32_e32 v0, 0, v91
	v_add_nc_u32_e32 v243, 0, v92
	v_add_nc_u32_e32 v237, 0, v93
	v_and_or_b32 v63, 0x410, v77, v63
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v77, v9, 16, 0
	v_add_nc_u32_e32 v238, 0, v95
	v_xor_b32_e32 v62, 0xd0, v96
	v_xor_b32_e32 v64, 0x1f0, v96
	v_xor_b32_e32 v99, v63, v56
	scratch_store_b32 off, v96, off offset:272 ; 4-byte Folded Spill
	v_xad_u32 v56, 0x50, v9, 0
	v_xor_b32_e32 v9, 16, v89
	v_xor_b32_e32 v63, 0x90, v89
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v99, off offset:276
	scratch_store_b32 off, v89, off offset:284
	v_xor_b32_e32 v89, 0xf0, v89
	v_add_nc_u32_e32 v158, 0, v9
	v_add_nc_u32_e32 v111, 0, v63
	v_xor_b32_e32 v9, 0x90, v96
	v_xor_b32_e32 v63, 0x160, v96
	v_add_nc_u32_e32 v117, 0, v89
	v_xor_b32_e32 v86, 16, v99
	v_xor_b32_e32 v87, 32, v99
	v_xor_b32_e32 v88, 48, v99
	v_xor_b32_e32 v89, 64, v99
	v_xor_b32_e32 v90, 0x50, v99
	v_xor_b32_e32 v91, 0x60, v99
	v_xor_b32_e32 v92, 0x70, v99
	v_xor_b32_e32 v93, 0x1040, v99
	v_xor_b32_e32 v94, 0x1050, v99
	v_xor_b32_e32 v95, 0x1060, v99
	v_xor_b32_e32 v96, 0x1070, v99
	v_xor_b32_e32 v97, 0x1010, v99
	v_xor_b32_e32 v98, 0x1020, v99
	v_xor_b32_e32 v99, 0x1030, v99
	v_xor_b32_e32 v100, 0x110, v102
	v_xor_b32_e32 v101, 0x880, v102
	v_xor_b32_e32 v102, 0x990, v102
	v_add_nc_u32_e32 v118, 0, v9
	v_add_nc_u32_e32 v132, 0, v90
	v_add_nc_u32_e32 v133, 0, v91
	v_add_nc_u32_e32 v162, 0, v99
	v_add_nc_u32_e32 v241, 0, v100
	v_add_nc_u32_e32 v254, 0, v101
	v_add_nc_u32_e32 v249, 0, v102
	.loc	1 522 24                        ; attention_backward.py:522:24
	ds_load_b64 v[90:91], v12
	ds_load_b64 v[99:100], v46
	ds_load_b64 v[101:102], v47
	ds_load_b64 v[139:140], v48
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b32_e32 v46, 8, v10
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v9.l, v10.h, 15
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b64 v[47:48], 24, v[10:11]
	v_add_nc_u32_e32 v120, 0, v50
	v_add_nc_u32_e32 v144, 0, v53
	v_add_nc_u32_e32 v121, 0, v62
	v_add_nc_u32_e32 v250, 0, v63
	v_add_nc_u32_e32 v123, 0, v64
	v_lshrrev_b32_e32 v48, 8, v11
	v_lshrrev_b32_e32 v50, 24, v11
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v53, 15, v10
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v10.h, v11.l, 15
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v62, v11, 24, 4
	v_bfe_u32 v63, v11, 16, 4
	v_bfe_u32 v64, v11, 8, 4
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v12.h, 4, v11.l
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v11.l, v46.l, 15
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v9.l
	v_add_nc_u32_e32 v130, 0, v88
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v9.h, v10.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v12.l, 4, v10.l
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v10.l, v11.h, 15
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v88, -16, v52
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v11.h, 4, v46.l
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v46.l, v47.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v45.l, 4, v47.l
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v47, v51, v84, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v11.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v85, -16, v53
	.loc	1 556 28 is_stmt 1              ; attention_backward.py:556:28
	v_and_b16 v71.l, v12.l, 15
	v_and_b16 v75.l, v12.h, 15
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v12.l, v50.l, 15
	v_and_b16 v12.h, v48.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v42.h, 4, v48.l
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v48, v52, v88, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v9.h
	.loc	1 556 28 is_stmt 1              ; attention_backward.py:556:28
	v_lshrrev_b16 v147.l, 4, v50.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v50, -16, v62
	v_add_nc_u32_e32 v128, 0, v86
	v_or_b32_e32 v86, -16, v63
	.loc	1 557 25 is_stmt 0              ; attention_backward.py:557:25
	v_cndmask_b32_e64 v9, v53, v85, s2
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v12.l
	v_add_nc_u32_e32 v131, 0, v89
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v89, -16, v64
	v_add_nc_u32_e32 v72, 0, v87
	v_or_b32_e32 v87, -16, v81
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v50, v62, v50, s2
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v10.l
	.loc	1 556 28 is_stmt 1              ; attention_backward.py:556:28
	v_and_b16 v70.l, v11.h, 15
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v11, -16, v49
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v45.l, v45.l, 15
	v_and_b16 v74.l, v42.h, 15
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v51, v63, v86, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v12.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_dual_cndmask_b32 v62, 0, v82 :: v_dual_cndmask_b32 v45, 0, v45
	v_cndmask_b32_e32 v63, 0, v74, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v12, v64, v89, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v10.h
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v10, v48
	v_cvt_f32_i32_e32 v48, v51
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_dual_cndmask_b32 v51, 0, v70 :: v_dual_cndmask_b32 v64, 0, v75
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v52, v81, v87, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v46.l
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v75, -16, v62
	v_or_b32_e32 v81, -16, v63
	v_or_b32_e32 v82, -16, v64
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v46, v52
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v53, v49, v11, s2
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v11, v47
	v_cvt_f32_i32_e32 v49, v50
	v_cvt_f32_i32_e32 v47, v12
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v50, 0, v61, vcc_lo
	v_cndmask_b32_e32 v52, 0, v71, vcc_lo
	v_cndmask_b32_e32 v61, 0, v147, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v12, v53
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v53, -16, v45
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v45
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v70, -16, v50
	v_or_b32_e32 v71, -16, v51
	v_or_b32_e32 v84, -16, v52
	v_or_b32_e32 v74, -16, v61
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v45, v45, v53, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v50
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_lshlrev_b32_e32 v88, 16, v43
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v42.h, v57.l
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v50, v50, v70, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v51
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_and_b32_e32 v43, 0xffff0000, v57
	.loc	1 620 52                        ; attention_backward.py:620:52
	v_cmp_gt_i32_e64 s5, s57, v106
	v_add_nc_u32_e32 v134, 0, v92
	v_add_nc_u32_e32 v93, 0, v93
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v51, v51, v71, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v52
	v_add_nc_u32_e32 v94, 0, v94
	v_add_nc_u32_e32 v95, 0, v95
	v_add_nc_u32_e32 v96, 0, v96
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v51, v51
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v53, v52, v84, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v61
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v52, v50
	v_add_nc_u32_e32 v97, 0, v97
	v_add_nc_u32_e32 v98, 0, v98
	v_cvt_f32_i32_e32 v50, v53
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v61, v61, v74, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v62
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v53, v45
	ds_store_b128 v65, v[9:12]
	ds_store_b128 v65, v[50:53] offset:128
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v62, v62, v75, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v63
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v54
	ds_load_b128 v[50:53], v54 offset:512
	s_waitcnt lgkmcnt(0)
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v70, v63, v81, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v64
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v63, v62
	s_barrier
	v_xor_b32_e32 v245, 4, v251
	v_cvt_f32_i32_e32 v62, v70
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v71, v64, v82, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v64, v61
	v_mad_u64_u32 v[15:16], null, s58, 9, v[157:158]
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v61, v71
	ds_store_b128 v65, v[46:49]
	ds_store_b128 v65, v[61:64] offset:128
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[45:48], v54
	ds_load_b128 v[61:64], v54 offset:512
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_and_b32_e32 v49, 0xffff0000, v59
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_dual_mul_f32 v9, v9, v42 :: v_dual_and_b32 v54, 0xffff0000, v60
	v_mul_f32_e32 v10, v10, v43
	v_dual_mul_f32 v11, v11, v67 :: v_dual_mul_f32 v12, v12, v44
	v_dual_mul_f32 v42, v50, v42 :: v_dual_mul_f32 v43, v51, v43
	v_mul_f32_e32 v50, v52, v67
	v_mul_f32_e32 v44, v53, v44
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_bfe_u32 v57, v10, 16, 1
	v_bfe_u32 v58, v11, 16, 1
	v_bfe_u32 v59, v12, 16, 1
	v_bfe_u32 v65, v43, 16, 1
	v_bfe_u32 v67, v50, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_cmp_o_f32_e64 s2, v10, v10
	v_cmp_o_f32_e64 s7, v11, v11
	.loc	1 575 27                        ; attention_backward.py:575:27
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v45, v45, v68 :: v_dual_mul_f32 v46, v46, v49
	v_dual_mul_f32 v47, v47, v69 :: v_dual_mul_f32 v48, v48, v54
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v51, v61, v68
	v_mul_f32_e32 v49, v62, v49
	v_dual_mul_f32 v52, v63, v69 :: v_dual_mul_f32 v53, v64, v54
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_bfe_u32 v54, v9, 16, 1
	v_bfe_u32 v60, v45, 16, 1
	v_bfe_u32 v61, v46, 16, 1
	v_bfe_u32 v62, v47, 16, 1
	v_bfe_u32 v63, v48, 16, 1
	v_bfe_u32 v64, v42, 16, 1
	v_bfe_u32 v68, v44, 16, 1
	v_bfe_u32 v69, v51, 16, 1
	v_bfe_u32 v70, v49, 16, 1
	v_bfe_u32 v71, v52, 16, 1
	v_bfe_u32 v74, v53, 16, 1
	v_cmp_o_f32_e64 s8, v12, v12
	v_cmp_o_f32_e64 s9, v45, v45
	v_cmp_o_f32_e64 s10, v46, v46
	v_cmp_o_f32_e64 s11, v47, v47
	v_cmp_o_f32_e64 s12, v48, v48
	v_add3_u32 v9, v9, v54, 0x7fff
	v_add3_u32 v10, v10, v57, 0x7fff
	v_add3_u32 v11, v11, v58, 0x7fff
	v_add3_u32 v12, v12, v59, 0x7fff
	v_add3_u32 v45, v45, v60, 0x7fff
	v_add3_u32 v46, v46, v61, 0x7fff
	v_add3_u32 v47, v47, v62, 0x7fff
	v_add3_u32 v48, v48, v63, 0x7fff
	v_cmp_o_f32_e64 s13, v42, v42
	v_cmp_o_f32_e64 s14, v43, v43
	v_cmp_o_f32_e64 s15, v50, v50
	v_cmp_o_f32_e64 s16, v44, v44
	v_cmp_o_f32_e64 s17, v51, v51
	v_cmp_o_f32_e64 s18, v49, v49
	v_cmp_o_f32_e64 s19, v52, v52
	v_cmp_o_f32_e64 s20, v53, v53
	v_add3_u32 v42, v42, v64, 0x7fff
	v_add3_u32 v43, v43, v65, 0x7fff
	v_add3_u32 v50, v50, v67, 0x7fff
	v_add3_u32 v44, v44, v68, 0x7fff
	v_add3_u32 v51, v51, v69, 0x7fff
	v_add3_u32 v49, v49, v70, 0x7fff
	v_add3_u32 v52, v52, v71, 0x7fff
	v_add3_u32 v53, v53, v74, 0x7fff
	v_cndmask_b16 v9.l, 0x7fff, v9.h, vcc_lo
	v_cndmask_b16 v9.h, 0x7fff, v10.h, s2
	v_cndmask_b16 v10.l, 0x7fff, v11.h, s7
	v_cndmask_b16 v10.h, 0x7fff, v12.h, s8
	v_cndmask_b16 v11.l, 0x7fff, v45.h, s9
	v_cndmask_b16 v11.h, 0x7fff, v46.h, s10
	v_cndmask_b16 v12.l, 0x7fff, v47.h, s11
	v_cndmask_b16 v12.h, 0x7fff, v48.h, s12
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s13
	v_cndmask_b16 v42.h, 0x7fff, v43.h, s14
	v_cndmask_b16 v43.l, 0x7fff, v50.h, s15
	v_cndmask_b16 v43.h, 0x7fff, v44.h, s16
	v_cndmask_b16 v44.l, 0x7fff, v51.h, s17
	v_cndmask_b16 v44.h, 0x7fff, v49.h, s18
	v_cndmask_b16 v45.l, 0x7fff, v52.h, s19
	v_cndmask_b16 v45.h, 0x7fff, v53.h, s20
	.loc	1 527 29 is_stmt 1              ; attention_backward.py:527:29
	v_lshlrev_b32_e32 v64, 16, v41
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v76, v[9:12]
	ds_store_b128 v76, v[42:45] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v66
	ds_load_b128 v[45:48], v77
	ds_load_b128 v[147:150], v79
	ds_load_b128 v[151:154], v80
	ds_load_b128 v[49:52], v55
	ds_load_b128 v[53:56], v56
	ds_load_b128 v[74:77], v78
	ds_load_b128 v[78:81], v83
	v_mad_u64_u32 v[57:58], null, s58, 17, v[157:158]
	v_mad_u64_u32 v[58:59], null, s58, 24, v[157:158]
	v_mad_u64_u32 v[59:60], null, s58, 25, v[157:158]
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v67, v105, v104
	s_clause 0x1c                           ; 120-byte Folded Spill
	scratch_store_b32 off, v104, off offset:404
	scratch_store_b32 off, v105, off offset:408
	scratch_store_b64 off, v[106:107], off offset:288
	scratch_store_b32 off, v119, off offset:296
	scratch_store_b32 off, v124, off offset:300
	scratch_store_b32 off, v128, off offset:304
	scratch_store_b32 off, v126, off offset:308
	scratch_store_b32 off, v132, off offset:312
	scratch_store_b32 off, v93, off offset:316
	scratch_store_b32 off, v94, off offset:320
	scratch_store_b32 off, v95, off offset:324
	scratch_store_b32 off, v96, off offset:328
	scratch_store_b32 off, v97, off offset:332
	scratch_store_b32 off, v130, off offset:336
	scratch_store_b32 off, v134, off offset:340
	scratch_store_b32 off, v120, off offset:344
	scratch_store_b32 off, v123, off offset:348
	scratch_store_b32 off, v137, off offset:352
	scratch_store_b32 off, v118, off offset:356
	scratch_store_b32 off, v142, off offset:360
	scratch_store_b32 off, v143, off offset:364
	scratch_store_b32 off, v144, off offset:368
	scratch_store_b32 off, v145, off offset:372
	scratch_store_b32 off, v121, off offset:376
	scratch_store_b32 off, v127, off offset:380
	scratch_store_b32 off, v125, off offset:384
	scratch_store_b32 off, v131, off offset:388
	scratch_store_b32 off, v72, off offset:392
	scratch_store_b32 off, v133, off offset:396
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[74:77], off offset:24 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_clause 0x1d                           ; 220-byte Folded Spill
	scratch_store_b128 off, v[78:81], off offset:40
	scratch_store_b128 off, v[147:150], off offset:56
	scratch_store_b128 off, v[151:154], off offset:72
	scratch_store_b128 off, v[49:52], off offset:88
	scratch_store_b128 off, v[53:56], off offset:104
	scratch_store_b64 off, v[139:140], off offset:120
	scratch_store_b128 off, v[41:44], off offset:128
	scratch_store_b128 off, v[45:48], off offset:144
	scratch_store_b64 off, v[99:100], off offset:160
	scratch_store_b64 off, v[101:102], off offset:168
	scratch_store_b32 off, v155, off offset:176
	scratch_store_b32 off, v129, off offset:180
	scratch_store_b32 off, v146, off offset:184
	scratch_store_b32 off, v138, off offset:188
	scratch_store_b32 off, v141, off offset:192
	scratch_store_b32 off, v136, off offset:196
	scratch_store_b32 off, v135, off offset:200
	scratch_store_b32 off, v122, off offset:204
	scratch_store_b64 off, v[90:91], off offset:208
	scratch_store_b32 off, v108, off offset:216
	scratch_store_b32 off, v109, off offset:220
	scratch_store_b32 off, v107, off offset:224
	scratch_store_b32 off, v117, off offset:228
	scratch_store_b32 off, v115, off offset:232
	scratch_store_b32 off, v116, off offset:236
	scratch_store_b32 off, v113, off offset:240
	scratch_store_b32 off, v114, off offset:244
	scratch_store_b32 off, v111, off offset:248
	scratch_store_b32 off, v112, off offset:252
	scratch_store_b32 off, v110, off offset:256
	s_branch .LBB0_2
.LBB0_1:                                ; %Flow291
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 26 is_stmt 0                ; attention_backward.py:0:26
	s_xor_b32 s2, s62, -1
	s_movk_i32 s21, 0x800
	.loc	1 605 9 is_stmt 1               ; attention_backward.py:605:9
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s62, 0
	s_cbranch_vccz .LBB0_6
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_and_not1_b32 vcc_lo, exec_lo, s75
	s_cbranch_vccnz .LBB0_1
; %bb.3:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 613 25                        ; attention_backward.py:613:25
	s_or_b32 s76, s63, s21
	s_mov_b32 s77, s52
.LBB0_4:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 25 is_stmt 0                ; attention_backward.py:0:25
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 616 25 is_stmt 1              ; attention_backward.py:616:25
	s_add_i32 s2, s77, s76
	s_waitcnt vmcnt(22)
	v_or_b32_e32 v12, s76, v142
	v_or_b32_e32 v9, s2, v142
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s2, s2, s58
	v_mov_b32_e32 v71, v15
	v_add_nc_u32_e32 v13, s58, v157
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v12, v12, s77, 1
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(9)
	v_mad_u64_u32 v[9:10], null, v9, s57, v[106:107]
	v_lshl_add_u32 v14, s58, 3, v157
	v_lshl_add_u32 v16, s58, 4, v157
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(7)
	v_add_lshl_u32 v42, s2, v58, 2
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v15, s2, v71, 2
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v10, 0x80000000, v9, s5
	v_or_b32_e32 v9, s76, v67
	.loc	1 623 39                        ; attention_backward.py:623:39
	buffer_load_u16 v74, v12, s[44:47], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v12, s2, v157, 2
	v_add_lshl_u32 v13, s2, v13, 2
	v_add_lshl_u32 v14, s2, v14, 2
	.loc	1 624 25                        ; attention_backward.py:624:25
	v_add_nc_u32_e32 v9, s77, v9
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v16, s2, v16, 2
	v_add_lshl_u32 v41, s2, v57, 2
	s_waitcnt vmcnt(4)
	v_cndmask_b32_e64 v50, 0x80000000, v42, s3
	v_add_lshl_u32 v42, s2, v59, 2
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v11, 1, v9
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_lshlrev_b32_e32 v9, 2, v9
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_clause 0x2                            ; 24-byte Folded Spill
	scratch_store_b64 off, v[59:60], off offset:16
	scratch_store_b64 off, v[58:59], off offset:8
	scratch_store_b64 off, v[57:58], off
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s66, s42
	s_mov_b32 s67, s43
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v12, 0x80000000, v12, s3
	v_cndmask_b32_e64 v15, 0x80000000, v15, s3
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s70, s42
	s_mov_b32 s71, s43
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s50, s42
	s_mov_b32 s51, s43
	v_cndmask_b32_e64 v13, 0x80000000, v13, s3
	v_cndmask_b32_e64 v14, 0x80000000, v14, s3
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	v_cndmask_b32_e64 v41, 0x80000000, v41, s3
	v_cndmask_b32_e64 v59, 0x80000000, v42, s3
	.loc	1 623 39                        ; attention_backward.py:623:39
	buffer_load_u16 v75, v11, s[44:47], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v73, v9, s[64:67], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v76, v9, s[68:71], 0 offen
	.loc	1 615 36                        ; attention_backward.py:615:36
	buffer_load_b128 v[153:156], v10, s[40:43], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x7
	buffer_load_b128 v[9:12], v12, s[48:51], 0 offen
	buffer_load_b128 v[42:45], v13, s[48:51], 0 offen
	buffer_load_b128 v[46:49], v14, s[48:51], 0 offen
	buffer_load_b128 v[51:54], v15, s[48:51], 0 offen
	buffer_load_b128 v[55:58], v16, s[48:51], 0 offen
	buffer_load_b128 v[60:63], v41, s[48:51], 0 offen
	buffer_load_b128 v[77:80], v50, s[48:51], 0 offen
	buffer_load_b128 v[82:85], v59, s[48:51], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v15, off, off offset:272 ; 4-byte Folded Reload
	v_dual_mov_b32 v65, v98 :: v_dual_mov_b32 v164, v161
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v163, v161
	v_mov_b32_e32 v165, v161
	v_mov_b32_e32 v167, v161
	v_mov_b32_e32 v69, v160
	.loc	1 651 43                        ; attention_backward.py:651:43
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v168, v161
	v_mov_b32_e32 v166, v161
	v_mov_b32_e32 v66, v162
	v_mov_b32_e32 v68, v159
	v_mov_b32_e32 v234, v240
	v_mov_b32_e32 v244, v235
	v_mov_b32_e32 v70, v169
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(8)
	v_dual_mov_b32 v41, v9 :: v_dual_and_b32 v86, 15, v153
	s_waitcnt vmcnt(7)
	v_dual_mov_b32 v13, v10 :: v_dual_mov_b32 v14, v43
	s_waitcnt vmcnt(4)
	v_dual_mov_b32 v50, v46 :: v_dual_mov_b32 v59, v55
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v87, -16, v86
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v81, v77 :: v_dual_add_nc_u32 v16, 0, v15
	ds_store_b64 v16, v[41:42]
	ds_store_b64 v118, v[13:14]
	v_dual_mov_b32 v13, v11 :: v_dual_mov_b32 v14, v44
	v_mov_b32_e32 v15, v52
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v41, 0x1400, v255
	.loc	1 732 34                        ; attention_backward.py:732:34
	ds_store_b64 v119, v[13:14]
	v_dual_mov_b32 v13, v45 :: v_dual_mov_b32 v14, v47
	ds_store_b64 v120, v[12:13]
	ds_store_b64 v137, v[50:51]
	ds_store_b64 v143, v[14:15]
	v_dual_mov_b32 v13, v48 :: v_dual_mov_b32 v14, v53
	v_dual_mov_b32 v50, v54 :: v_dual_add_nc_u32 v15, 0xc00, v255
	ds_store_b64 v16, v[13:14] offset:256
	v_dual_mov_b32 v13, v56 :: v_dual_add_nc_u32 v16, 0x1000, v255
	v_mov_b32_e32 v14, v61
	ds_store_b64 v144, v[49:50]
	ds_store_b64 v145, v[59:60]
	ds_store_b64 v121, v[13:14]
	v_dual_mov_b32 v13, v57 :: v_dual_add_nc_u32 v50, 0x1800, v255
	v_dual_mov_b32 v14, v62 :: v_dual_mov_b32 v59, v63
	ds_store_b64 v250, v[13:14]
	v_dual_mov_b32 v13, v78 :: v_dual_mov_b32 v14, v83
	ds_store_b64 v123, v[58:59]
	ds_store_b64 v124, v[81:82]
	ds_store_b64 v125, v[13:14]
	v_dual_mov_b32 v13, v79 :: v_dual_mov_b32 v14, v84
	v_mov_b32_e32 v81, v85
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v59, 0x1c00, v255
	.loc	1 732 34                        ; attention_backward.py:732:34
	ds_store_b64 v126, v[13:14]
	ds_store_b64 v127, v[80:81]
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v13, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v14, 0x800, v255
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, 0, v13
	ds_load_b128 v[137:140], v13
	ds_load_b128 v[89:92], v13 offset:4096
	ds_load_b128 v[149:152], v128
	ds_load_b128 v[145:148], v72
	ds_load_b128 v[141:144], v130
	ds_load_b128 v[117:120], v131
	ds_load_b128 v[113:116], v132
	ds_load_b128 v[109:112], v133
	ds_load_b128 v[105:108], v134
	ds_load_b128 v[133:136], v93
	ds_load_b128 v[129:132], v94
	ds_load_b128 v[125:128], v95
	ds_load_b128 v[121:124], v96
	ds_load_b128 v[101:104], v97
	ds_load_b128 v[97:100], v98
	ds_load_b128 v[93:96], v162
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v13, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v162, v161
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v72, v67 :: v_dual_add_nc_u32 v13, 0, v13
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_store_b128 v13, v[9:12]
	ds_store_b128 v13, v[42:45] offset:256
	ds_store_b128 v13, v[46:49] offset:2048
	ds_store_b128 v13, v[51:54] offset:2304
	ds_store_b128 v13, v[55:58] offset:4096
	ds_store_b128 v13, v[60:63] offset:4352
	ds_store_b128 v13, v[77:80] offset:6144
	ds_store_b128 v13, v[82:85] offset:6400
	v_add_nc_u32_e32 v13, 0x400, v255
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[224:225], v13 offset1:32
	ds_load_2addr_b32 v[222:223], v13 offset0:64 offset1:96
	ds_load_2addr_b32 v[220:221], v13 offset0:128 offset1:160
	ds_load_2addr_b32 v[218:219], v13 offset0:192 offset1:224
	ds_load_2addr_b32 v[216:217], v14 offset1:32
	ds_load_2addr_b32 v[214:215], v14 offset0:64 offset1:96
	ds_load_2addr_b32 v[212:213], v14 offset0:128 offset1:160
	ds_load_2addr_b32 v[210:211], v14 offset0:192 offset1:224
	ds_load_2addr_b32 v[208:209], v15 offset1:32
	ds_load_2addr_b32 v[206:207], v15 offset0:64 offset1:96
	ds_load_2addr_b32 v[204:205], v15 offset0:128 offset1:160
	ds_load_2addr_b32 v[202:203], v15 offset0:192 offset1:224
	ds_load_2addr_b32 v[200:201], v16 offset1:32
	ds_load_2addr_b32 v[198:199], v16 offset0:64 offset1:96
	ds_load_2addr_b32 v[196:197], v16 offset0:128 offset1:160
	ds_load_2addr_b32 v[194:195], v16 offset0:192 offset1:224
	ds_load_2addr_b32 v[192:193], v41 offset1:32
	ds_load_2addr_b32 v[190:191], v41 offset0:64 offset1:96
	ds_load_2addr_b32 v[188:189], v41 offset0:128 offset1:160
	ds_load_2addr_b32 v[186:187], v41 offset0:192 offset1:224
	ds_load_2addr_b32 v[184:185], v50 offset1:32
	ds_load_2addr_b32 v[182:183], v50 offset0:64 offset1:96
	ds_load_2addr_b32 v[180:181], v50 offset0:128 offset1:160
	ds_load_2addr_b32 v[178:179], v50 offset0:192 offset1:224
	ds_load_2addr_b32 v[176:177], v59 offset1:32
	ds_load_2addr_b32 v[174:175], v59 offset0:64 offset1:96
	ds_load_2addr_b32 v[172:173], v59 offset0:128 offset1:160
	ds_load_2addr_b32 v[170:171], v59 offset0:192 offset1:224
	ds_load_2addr_b32 v[232:233], v255 offset1:32
	ds_load_2addr_b32 v[230:231], v255 offset0:64 offset1:96
	ds_load_2addr_b32 v[228:229], v255 offset0:128 offset1:160
	ds_load_2addr_b32 v[226:227], v255 offset0:192 offset1:224
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v13, off, off offset:280 ; 4-byte Folded Reload
	v_cmp_o_f32_e64 s26, v191, v191
	v_cmp_o_f32_e64 s27, v189, v189
	v_cmp_o_f32_e64 s28, v187, v187
	v_cmp_o_f32_e64 s29, v185, v185
	v_cmp_o_f32_e64 s30, v183, v183
	v_cmp_o_f32_e64 s31, v181, v181
	v_cmp_o_f32_e64 s33, v179, v179
	v_cmp_o_f32_e64 s34, v177, v177
	v_cmp_o_f32_e64 s35, v175, v175
	v_cmp_o_f32_e64 s36, v173, v173
	v_cmp_o_f32_e64 s37, v171, v171
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, 0, v13
	ds_store_b128 v13, v[9:12]
	ds_store_b128 v13, v[55:58] offset:4096
	ds_store_b128 v241, v[42:45]
	ds_store_b128 v241, v[60:63] offset:4096
	ds_store_b128 v254, v[46:49]
	ds_store_b128 v254, v[77:80] offset:4096
	ds_store_b128 v249, v[51:54]
	ds_store_b128 v249, v[82:85] offset:4096
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v9, off, off offset:284 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v9, 0, v9
	ds_load_b128 v[9:12], v9
	ds_load_b128 v[13:16], v158
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v41, v9, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_cmp_o_f32_e64 s2, v10, v10
	v_cmp_o_f32_e64 s7, v11, v11
	v_cmp_o_f32_e64 s8, v12, v12
	v_add3_u32 v41, v9, v41, 0x7fff
	v_bfe_u32 v9, v10, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s9, v13, v13
	v_cmp_o_f32_e64 s10, v14, v14
	v_cmp_o_f32_e64 s11, v15, v15
	v_cmp_o_f32_e64 s12, v16, v16
	v_add3_u32 v42, v10, v9, 0x7fff
	v_bfe_u32 v9, v11, 16, 1
	v_cndmask_b16 v77.l, 0x7fff, v41.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v77.h, 0x7fff, v42.h, s2
	v_add3_u32 v43, v11, v9, 0x7fff
	v_bfe_u32 v9, v12, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v78.l, 0x7fff, v43.h, s7
	v_add3_u32 v44, v12, v9, 0x7fff
	v_bfe_u32 v9, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v78.h, 0x7fff, v44.h, s8
	v_add3_u32 v45, v13, v9, 0x7fff
	v_bfe_u32 v9, v14, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v79.l, 0x7fff, v45.h, s9
	v_add3_u32 v46, v14, v9, 0x7fff
	v_bfe_u32 v9, v15, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v79.h, 0x7fff, v46.h, s10
	v_add3_u32 v47, v15, v9, 0x7fff
	v_bfe_u32 v9, v16, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v80.l, 0x7fff, v47.h, s11
	v_add3_u32 v48, v16, v9, 0x7fff
	ds_load_b128 v[9:12], v159
	ds_load_b128 v[13:16], v160
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v160, 16, v74
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v80.h, 0x7fff, v48.h, s12
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[41:44], off, off offset:128
	scratch_load_b128 v[45:48], off, off offset:144
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v49, v9, 16, 1
	v_cmp_o_f32_e64 s13, v9, v9
	v_cmp_o_f32_e64 s14, v10, v10
	v_cmp_o_f32_e64 s15, v11, v11
	v_cmp_o_f32_e64 s16, v12, v12
	v_add3_u32 v9, v9, v49, 0x7fff
	v_bfe_u32 v49, v10, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s17, v13, v13
	v_cmp_o_f32_e64 s18, v14, v14
	v_cmp_o_f32_e64 s19, v15, v15
	v_cmp_o_f32_e64 s20, v16, v16
	v_add3_u32 v10, v10, v49, 0x7fff
	v_bfe_u32 v49, v11, 16, 1
	v_cndmask_b16 v81.l, 0x7fff, v9.h, s13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v81.h, 0x7fff, v10.h, s14
	v_add3_u32 v11, v11, v49, 0x7fff
	v_bfe_u32 v49, v12, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v82.l, 0x7fff, v11.h, s15
	v_add3_u32 v12, v12, v49, 0x7fff
	v_bfe_u32 v49, v13, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v82.h, 0x7fff, v12.h, s16
	v_add3_u32 v13, v13, v49, 0x7fff
	v_bfe_u32 v49, v14, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.l, 0x7fff, v13.h, s17
	v_add3_u32 v14, v14, v49, 0x7fff
	v_bfe_u32 v49, v15, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.h, 0x7fff, v14.h, s18
	v_add3_u32 v15, v15, v49, 0x7fff
	v_bfe_u32 v49, v16, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v84.l, 0x7fff, v15.h, s19
	v_add3_u32 v16, v16, v49, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v84.h, 0x7fff, v16.h, s20
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v9, v161 :: v_dual_mov_b32 v10, v162
	v_dual_mov_b32 v11, v163 :: v_dual_mov_b32 v12, v164
	v_dual_mov_b32 v13, v165 :: v_dual_mov_b32 v14, v166
	v_dual_mov_b32 v15, v167 :: v_dual_mov_b32 v16, v168
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[41:48], v[77:84], v[9:16]
	.loc	1 716 21                        ; attention_backward.py:716:21
	scratch_load_b32 v45, off, off offset:216 ; 4-byte Folded Reload
	ds_load_b128 v[41:44], v169
	s_waitcnt vmcnt(0)
	ds_load_b128 v[45:48], v45
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v49, v41, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	v_cmp_o_f32_e64 s2, v42, v42
	v_cmp_o_f32_e64 s7, v43, v43
	v_cmp_o_f32_e64 s8, v44, v44
	v_add3_u32 v49, v41, v49, 0x7fff
	v_bfe_u32 v41, v42, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v77.l, 0x7fff, v49.h, vcc_lo
	v_add3_u32 v50, v42, v41, 0x7fff
	v_bfe_u32 v41, v43, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v77.h, 0x7fff, v50.h, s2
	v_add3_u32 v51, v43, v41, 0x7fff
	v_bfe_u32 v41, v44, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s9, v45, v45
	v_cmp_o_f32_e64 s10, v46, v46
	v_cmp_o_f32_e64 s11, v47, v47
	v_cmp_o_f32_e64 s12, v48, v48
	v_add3_u32 v52, v44, v41, 0x7fff
	v_bfe_u32 v41, v45, 16, 1
	v_cndmask_b16 v78.l, 0x7fff, v51.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v78.h, 0x7fff, v52.h, s8
	v_add3_u32 v53, v45, v41, 0x7fff
	v_bfe_u32 v41, v46, 16, 1
	scratch_load_b32 v45, off, off offset:224 ; 4-byte Folded Reload
	v_cndmask_b16 v79.l, 0x7fff, v53.h, s9
	v_add3_u32 v54, v46, v41, 0x7fff
	v_bfe_u32 v41, v47, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v79.h, 0x7fff, v54.h, s10
	v_add3_u32 v55, v47, v41, 0x7fff
	v_bfe_u32 v41, v48, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v80.l, 0x7fff, v55.h, s11
	v_add3_u32 v56, v48, v41, 0x7fff
	scratch_load_b32 v41, off, off offset:220 ; 4-byte Folded Reload
	v_cndmask_b16 v80.h, 0x7fff, v56.h, s12
	s_waitcnt vmcnt(1)
	ds_load_b128 v[45:48], v45
	s_waitcnt vmcnt(0)
	ds_load_b128 v[41:44], v41
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s17, v45, v45
	v_cmp_o_f32_e64 s18, v46, v46
	v_cmp_o_f32_e64 s19, v47, v47
	v_cmp_o_f32_e64 s20, v48, v48
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v57, v41, 16, 1
	v_cmp_o_f32_e64 s13, v41, v41
	v_cmp_o_f32_e64 s14, v42, v42
	v_cmp_o_f32_e64 s15, v43, v43
	v_cmp_o_f32_e64 s16, v44, v44
	v_add3_u32 v41, v41, v57, 0x7fff
	v_bfe_u32 v57, v42, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v81.l, 0x7fff, v41.h, s13
	v_add3_u32 v42, v42, v57, 0x7fff
	v_bfe_u32 v57, v43, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v81.h, 0x7fff, v42.h, s14
	v_add3_u32 v43, v43, v57, 0x7fff
	v_bfe_u32 v57, v44, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v82.l, 0x7fff, v43.h, s15
	v_add3_u32 v44, v44, v57, 0x7fff
	v_bfe_u32 v57, v45, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v82.h, 0x7fff, v44.h, s16
	v_add3_u32 v45, v45, v57, 0x7fff
	v_bfe_u32 v57, v46, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.l, 0x7fff, v45.h, s17
	v_add3_u32 v46, v46, v57, 0x7fff
	v_bfe_u32 v57, v47, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.h, 0x7fff, v46.h, s18
	v_add3_u32 v47, v47, v57, 0x7fff
	v_bfe_u32 v57, v48, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v84.l, 0x7fff, v47.h, s19
	v_add3_u32 v48, v48, v57, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v84.h, 0x7fff, v48.h, s20
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[41:44], off, off offset:56
	scratch_load_b128 v[45:48], off, off offset:72
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[41:48], v[77:84], v[9:16]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off offset:256
	scratch_load_b32 v45, off, off offset:248
	s_waitcnt vmcnt(1)
	ds_load_b128 v[41:44], v41
	s_waitcnt vmcnt(0)
	ds_load_b128 v[45:48], v45
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v49, v41, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s9, v45, v45
	v_cmp_o_f32_e64 s2, v42, v42
	v_cmp_o_f32_e64 s7, v43, v43
	v_add3_u32 v49, v41, v49, 0x7fff
	v_bfe_u32 v41, v42, 16, 1
	v_cmp_o_f32_e64 s8, v44, v44
	v_cmp_o_f32_e64 s10, v46, v46
	v_cmp_o_f32_e64 s11, v47, v47
	v_cmp_o_f32_e64 s12, v48, v48
	v_add3_u32 v50, v42, v41, 0x7fff
	v_bfe_u32 v41, v43, 16, 1
	v_cndmask_b16 v77.l, 0x7fff, v49.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v77.h, 0x7fff, v50.h, s2
	v_add3_u32 v51, v43, v41, 0x7fff
	v_bfe_u32 v41, v44, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v78.l, 0x7fff, v51.h, s7
	v_add3_u32 v52, v44, v41, 0x7fff
	v_bfe_u32 v41, v45, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v78.h, 0x7fff, v52.h, s8
	v_add3_u32 v53, v45, v41, 0x7fff
	v_bfe_u32 v41, v46, 16, 1
	scratch_load_b32 v45, off, off offset:240 ; 4-byte Folded Reload
	v_cndmask_b16 v79.l, 0x7fff, v53.h, s9
	v_add3_u32 v54, v46, v41, 0x7fff
	v_bfe_u32 v41, v47, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v79.h, 0x7fff, v54.h, s10
	v_add3_u32 v55, v47, v41, 0x7fff
	v_bfe_u32 v41, v48, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v80.l, 0x7fff, v55.h, s11
	v_add3_u32 v56, v48, v41, 0x7fff
	scratch_load_b32 v41, off, off offset:252 ; 4-byte Folded Reload
	v_cndmask_b16 v80.h, 0x7fff, v56.h, s12
	s_waitcnt vmcnt(1)
	ds_load_b128 v[45:48], v45
	s_waitcnt vmcnt(0)
	ds_load_b128 v[41:44], v41
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s17, v45, v45
	v_cmp_o_f32_e64 s18, v46, v46
	v_cmp_o_f32_e64 s19, v47, v47
	v_cmp_o_f32_e64 s20, v48, v48
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v57, v41, 16, 1
	v_cmp_o_f32_e64 s13, v41, v41
	v_cmp_o_f32_e64 s14, v42, v42
	v_cmp_o_f32_e64 s15, v43, v43
	v_cmp_o_f32_e64 s16, v44, v44
	v_add3_u32 v41, v41, v57, 0x7fff
	v_bfe_u32 v57, v42, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v81.l, 0x7fff, v41.h, s13
	v_add3_u32 v42, v42, v57, 0x7fff
	v_bfe_u32 v57, v43, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v81.h, 0x7fff, v42.h, s14
	v_add3_u32 v43, v43, v57, 0x7fff
	v_bfe_u32 v57, v44, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v82.l, 0x7fff, v43.h, s15
	v_add3_u32 v44, v44, v57, 0x7fff
	v_bfe_u32 v57, v45, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v82.h, 0x7fff, v44.h, s16
	v_add3_u32 v45, v45, v57, 0x7fff
	v_bfe_u32 v57, v46, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.l, 0x7fff, v45.h, s17
	v_add3_u32 v46, v46, v57, 0x7fff
	v_bfe_u32 v57, v47, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.h, 0x7fff, v46.h, s18
	v_add3_u32 v47, v47, v57, 0x7fff
	v_bfe_u32 v57, v48, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v84.l, 0x7fff, v47.h, s19
	v_add3_u32 v48, v48, v57, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v84.h, 0x7fff, v48.h, s20
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[41:44], off, off offset:88
	scratch_load_b128 v[45:48], off, off offset:104
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[41:48], v[77:84], v[9:16]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off offset:244
	scratch_load_b32 v45, off, off offset:232
	s_waitcnt vmcnt(1)
	ds_load_b128 v[41:44], v41
	s_waitcnt vmcnt(0)
	ds_load_b128 v[45:48], v45
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v49, v41, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s9, v45, v45
	v_cmp_o_f32_e64 s2, v42, v42
	v_cmp_o_f32_e64 s7, v43, v43
	v_add3_u32 v49, v41, v49, 0x7fff
	v_bfe_u32 v41, v42, 16, 1
	v_cmp_o_f32_e64 s8, v44, v44
	v_cmp_o_f32_e64 s10, v46, v46
	v_cmp_o_f32_e64 s11, v47, v47
	v_cmp_o_f32_e64 s12, v48, v48
	v_add3_u32 v50, v42, v41, 0x7fff
	v_bfe_u32 v41, v43, 16, 1
	v_cndmask_b16 v77.l, 0x7fff, v49.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v77.h, 0x7fff, v50.h, s2
	v_add3_u32 v51, v43, v41, 0x7fff
	v_bfe_u32 v41, v44, 16, 1
	.loc	1 630 33                        ; attention_backward.py:630:33
	scratch_load_b64 v[49:50], off, off offset:208 ; 8-byte Folded Reload
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v78.l, 0x7fff, v51.h, s7
	v_add3_u32 v52, v44, v41, 0x7fff
	v_bfe_u32 v41, v45, 16, 1
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v51, v153, 8, 4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v78.h, 0x7fff, v52.h, s8
	v_add3_u32 v53, v45, v41, 0x7fff
	v_bfe_u32 v41, v46, 16, 1
	scratch_load_b32 v45, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v52, -16, v51
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v79.l, 0x7fff, v53.h, s9
	v_add3_u32 v54, v46, v41, 0x7fff
	v_bfe_u32 v41, v47, 16, 1
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v53, v154, 24, 4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v79.h, 0x7fff, v54.h, s10
	v_add3_u32 v55, v47, v41, 0x7fff
	v_bfe_u32 v41, v48, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v54, -16, v53
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v80.l, 0x7fff, v55.h, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v56, v48, v41, 0x7fff
	scratch_load_b32 v41, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v55, v153, 20, 4
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v80.h, 0x7fff, v56.h, s12
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v56, -16, v55
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(1)
	ds_load_b128 v[45:48], v45
	s_waitcnt vmcnt(0)
	ds_load_b128 v[41:44], v41
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s17, v45, v45
	v_cmp_o_f32_e64 s18, v46, v46
	v_cmp_o_f32_e64 s19, v47, v47
	v_cmp_o_f32_e64 s20, v48, v48
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v57, v41, 16, 1
	v_cmp_o_f32_e64 s13, v41, v41
	v_cmp_o_f32_e64 s14, v42, v42
	v_cmp_o_f32_e64 s15, v43, v43
	v_cmp_o_f32_e64 s16, v44, v44
	v_add3_u32 v41, v41, v57, 0x7fff
	v_bfe_u32 v57, v42, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v81.l, 0x7fff, v41.h, s13
	v_add3_u32 v42, v42, v57, 0x7fff
	v_bfe_u32 v57, v43, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v81.h, 0x7fff, v42.h, s14
	v_add3_u32 v43, v43, v57, 0x7fff
	v_bfe_u32 v57, v44, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v82.l, 0x7fff, v43.h, s15
	v_add3_u32 v44, v44, v57, 0x7fff
	v_bfe_u32 v57, v45, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v82.h, 0x7fff, v44.h, s16
	v_add3_u32 v45, v45, v57, 0x7fff
	v_bfe_u32 v57, v46, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.l, 0x7fff, v45.h, s17
	v_add3_u32 v46, v46, v57, 0x7fff
	v_bfe_u32 v57, v47, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.h, 0x7fff, v46.h, s18
	v_add3_u32 v47, v47, v57, 0x7fff
	v_bfe_u32 v57, v48, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v84.l, 0x7fff, v47.h, s19
	v_add3_u32 v48, v48, v57, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v84.h, 0x7fff, v48.h, s20
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[41:44], off, off offset:24
	scratch_load_b128 v[45:48], off, off offset:40
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[41:48], v[77:84], v[9:16]
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_bpermute_b32 v41, v245, v156
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v82, v10, v76
	v_sub_f32_e32 v81, v11, v76
	v_sub_f32_e32 v80, v12, v76
	v_sub_f32_e32 v79, v13, v76
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_bpermute_b32 v10, v251, v153
	ds_bpermute_b32 v11, v245, v153
	ds_bpermute_b32 v12, v251, v154
	ds_bpermute_b32 v13, v245, v154
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v83, v9, v76
	v_sub_f32_e32 v78, v14, v76
	v_sub_f32_e32 v77, v15, v76
	v_sub_f32_e32 v76, v16, v76
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_bpermute_b32 v14, v251, v155
	ds_bpermute_b32 v15, v245, v155
	ds_bpermute_b32 v16, v251, v156
	s_waitcnt lgkmcnt(5)
	v_cndmask_b32_e64 v9, v11, v10, s0
	v_cndmask_b32_e64 v11, v10, v11, s0
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v10, v13, v12, s0
	v_cndmask_b32_e64 v12, v12, v13, s0
	s_waitcnt lgkmcnt(1)
	v_cndmask_b32_e64 v13, v15, v14, s0
	v_cndmask_b32_e64 v15, v14, v15, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v14, v41, v16, s0
	v_cndmask_b32_e64 v16, v16, v41, s0
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[49:50], v[9:10], v[161:168] neg_lo:[1,1,0]
	scratch_load_b64 v[9:10], off, off offset:160 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[9:10], v[13:14], v[41:48] neg_lo:[1,1,0]
	scratch_load_b64 v[9:10], off, off offset:168 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[9:10], v[11:12], v[41:48] neg_lo:[1,1,0]
	scratch_load_b64 v[9:10], off, off offset:120 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[9:10], v[15:16], v[41:48] neg_lo:[1,1,0]
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v9, s77, v67
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s77, s77, 32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v11, v41
	v_cvt_f32_i32_e32 v12, v42
	v_cvt_f32_i32_e32 v13, v43
	v_cvt_f32_i32_e32 v14, v44
	v_cvt_f32_i32_e32 v15, v45
	v_cvt_f32_i32_e32 v16, v46
	v_cvt_f32_i32_e32 v84, v47
	v_cvt_f32_i32_e32 v85, v48
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v41, off, off offset:176
	scratch_load_b32 v42, off, off offset:180
	scratch_load_b32 v43, off, off offset:184
	scratch_load_b32 v44, off, off offset:188
	scratch_load_b32 v45, off, off offset:192
	scratch_load_b32 v46, off, off offset:196
	scratch_load_b32 v47, off, off offset:200
	scratch_load_b32 v48, off, off offset:204
	v_add_nc_u32_e32 v10, s53, v9
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v9, s72, v9
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 679 30                        ; attention_backward.py:679:30
	s_waitcnt vmcnt(7)
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_le_i32_e64 s20, v41, v9
	s_waitcnt vmcnt(6)
	v_cmp_le_i32_e64 s19, v42, v9
	s_waitcnt vmcnt(5)
	v_cmp_le_i32_e64 s17, v43, v9
	s_waitcnt vmcnt(4)
	v_cmp_le_i32_e64 s15, v44, v9
	s_waitcnt vmcnt(3)
	v_cmp_le_i32_e64 s13, v45, v9
	s_waitcnt vmcnt(2)
	v_cmp_le_i32_e64 s11, v46, v9
	s_waitcnt vmcnt(1)
	v_cmp_le_i32_e64 s9, v47, v9
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s7, v48, v9
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v9.l, v153.l, 15
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s14, v43, v10
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v43, v153, 16, 4
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s18, v41, v10
	v_cmp_ge_i32_e64 s16, v42, v10
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s21, 7, v9.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v9.l, v153.h, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b64 v[41:42], 24, v[153:154]
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s12, v44, v10
	v_cmp_ge_i32_e64 s10, v45, v10
	v_cmp_ge_i32_e64 s2, v47, v10
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s22, 7, v9.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v9.l, v154.l, 15
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v44, -16, v43
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v45, 15, v154
	v_bfe_u32 v47, v154, 16, 4
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s8, v46, v10
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s23, 7, v9.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v9.l, v154.h, 15
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v48, v10
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v46, -16, v45
	v_or_b32_e32 v48, -16, v47
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v42, v41, 0, 8
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s24, 7, v9.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v9.l, 4, v41.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v9.h, v41.l, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v41, v153, 0, 8
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v44, v43, v44, s22
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v43, 8, v153
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v45, v45, v46, s23
	v_cndmask_b32_e64 v46, v47, v48, s24
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s25, 0, v41.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v47, 8, v154
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v41.l, v43.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v50, v86, v87, s21
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v48, v154, 8, 4
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v10.l, 4, v153.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e32 v10.h, 0
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s21, 7, v41.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v41.l, v47.l, 15
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s7, vcc_lo, s7
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v10.l, v10.l, 15
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 vcc_lo, s6, s7
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v51, v51, v52, s21
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v52, -16, v48
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s21, 7, v41.l
	.loc	1 651 60 is_stmt 1              ; attention_backward.py:651:60
	v_or_b32_e32 v49, -16, v10
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v46, v46
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s18, s18, s20
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v48, v48, v52, s21
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v52, 24, v154
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v49, v10, v49, s25
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v44, v160, v44
	v_mul_f32_e32 v46, v160, v46
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s18, s6, s18
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v41.l, v52.l, 15
	v_mov_b32_e32 v67, v158
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v44, 0, v44, s1
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s16, s16, s19
	s_and_b32 s14, s14, s17
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s21, 7, v41.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_alignbit_b32 v41, v154, v153, 24
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s16, s6, s16
	s_and_b32 s14, s6, s14
	s_and_b32 s12, s12, s15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v53, v53, v54, s21
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v41, 15, v41
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s21, 7, v9.h
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v9.h, 4, v43.l
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s12, s6, s12
	s_and_b32 s10, s10, s13
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v54, -16, v41
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s10, s6, s10
	s_and_b32 s2, s2, s9
	s_and_b32 s8, s8, s11
	s_and_b32 s2, s6, s2
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v54, v41, v54, s21
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e64 v41.l, v153.h
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s8, s6, s8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v46, 0, v46, s1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s15, v192, v192
	v_cmp_o_f32_e64 s13, v200, v200
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v41, v41, 0, 8
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s17, v184, v184
	v_cmp_o_f32_e64 s19, v176, v176
	v_cmp_o_f32_e64 s20, v172, v172
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_u32 s77, s74
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s21, 0, v41.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e64 v41.l, v154.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v55, v55, v56, s21
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v41, v41, 0, 8
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v56, v154, 20, 4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s21, 0, v41.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v41, v50
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v57, -16, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v41, v160, v41
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v56, v56, v57, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v50, 0, v41, s1
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v41, v43, 0, 8
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v43, v49
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v49.h, v10.h
	v_mov_b16_e32 v10.l, v50.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s21, 0, v41.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v43, v160, v43
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s22, v50, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v57, 1, v10
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v10.l, v9.h, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v43, 0, v43, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v41, v50, v57, 0x7fff
	v_mov_b16_e32 v50.h, v10.h
	v_mov_b16_e32 v49.l, v43.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s23, v43, v43
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v58, -16, v10
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s22
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v43, v43, v49, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v49, v55
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v55.h, v10.h
	v_cndmask_b16 v41.h, 0x7fff, v43.h, s23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v49, v160, v49
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v49, 0, v49, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v50.l, v49.h
	v_cmp_o_f32_e64 s24, v49, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v49, v49, v50, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v50, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v43.h, 0x7fff, v49.h, s24
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v50, v160, v50
	v_cvt_f32_i32_e32 v49, v51
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v51, v10, v58, s21
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s21, v44, v44
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s24, v195, v195
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v50, 0, v50, s1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v49, v160, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v55.l, v50.h
	v_cmp_o_f32_e64 s25, v50, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v55, 1, v55
	v_add3_u32 v50, v50, v55, 0x7fff
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v55, 16, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 640 41                        ; attention_backward.py:640:41
	v_mul_f32_e32 v55, s73, v55
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v16, v55, v16
	v_mul_f32_e32 v56, v55, v84
	v_mul_f32_e32 v11, v55, v11
	v_mul_f32_e32 v12, v55, v12
	v_mul_f32_e32 v13, v55, v13
	v_mul_f32_e32 v14, v55, v14
	v_mul_f32_e32 v15, v55, v15
	v_mul_f32_e32 v55, v55, v85
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v16, v16, v248, -v73
	v_fma_f32 v56, v56, v240, -v73
	v_mov_b32_e32 v240, v248
	v_mov_b32_e32 v248, v247
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v49, 0, v49, s1
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v11, v11, v88, -v73
	v_fma_f32 v12, v12, v247, -v73
	v_fma_f32 v13, v13, v64, -v73
	v_fma_f32 v14, v14, v235, -v73
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v10.l, v49.h
	v_cmp_o_f32_e64 s22, v49, v49
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v15, v15, v253, -v73
	v_fma_f32 v55, v55, v246, -v73
	v_mov_b32_e32 v247, v88
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v57, 1, v10
	v_mov_b16_e32 v10.l, v44.h
	v_mov_b32_e32 v235, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v49, v49, v57, 0x7fff
	v_and_b32_e32 v57, 1, v10
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v10.l, v9.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v9, v44, v57, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v9.l, v42.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v44, -16, v10
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b16 v42.l, 0x7fff, v49.h, s22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v43.l, 0x7fff, v9.h, s21
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s23, 0, v9.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v9, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v54, v10, v44, s23
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v9, v160, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v49, 0, v9, s1
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v9.l, 4, v154.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v10.l, v49.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s22, v49, v49
	v_and_b32_e32 v44, 1, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v10.l, v9.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v9, v51
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v51.h, v10.h
	v_add3_u32 v44, v49, v44, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v49, v154, 0, 8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v9, v160, v9
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v44.l, 0x7fff, v44.h, s22
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s22, v199, v199
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v9, 0, v9, s1
	v_mov_b16_e32 v51.l, v9.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s21, v9, v9
	v_and_b32_e32 v51, 1, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v9, v9, v51, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v9.l, v49.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v49, -16, v10
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b16 v42.h, 0x7fff, v9.h, s21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s23, 0, v9.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v9, v45
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s21, v201, v201
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v49, v10, v49, s23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v9, v160, v9
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s23, v197, v197
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v45, 0, v9, s1
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v9.l, 4, v47.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v47, v47, 0, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v10.l, v45.h
	v_cmp_o_f32_e64 s9, v45, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b32_e32 v51, 1, v10
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v10.l, v9.l, 15
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v9, v11
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v45, v45, v51, 0x7fff
	v_mov_b16_e32 v51.h, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s9
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v158, 0, v9, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v9, v158, v83
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v9, s59, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v11, v9, 16, 1
	v_cmp_o_f32_e64 s18, v9, v9
	v_add3_u32 v9, v9, v11, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v11, v12
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v9.l, v47.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v47, v54
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e64 v54.l, v156.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s7, 0, v9.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v47, v160, v47
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s18
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s18, v180, v180
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v154, 0, v11, s16
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v47, 0, v47, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v11, v154, v82
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v51.l, v47.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s11, v47, v47
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v11, s59, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v12, v11, 16, 1
	v_cmp_o_f32_e64 s16, v11, v11
	v_add3_u32 v57, v11, v12, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v11, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v11, 0, v11, s14
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v12, v11, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v12, s59, v12
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v13, v12, 16, 1
	v_cmp_o_f32_e64 s14, v12, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v13, v12, v13, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v12, v14
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v12, 0, v12, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v14, v12, v80
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v14, s59, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v58, v14, 16, 1
	v_cmp_o_f32_e64 s12, v14, v14
	v_add3_u32 v58, v14, v58, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v14, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v159, 0, v14, s10
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v14, v159, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v14, s59, v14
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v15, v14, 16, 1
	v_cmp_o_f32_e64 s10, v14, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v59, v14, v15, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v14, v16
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v9.h, 0x7fff, v59.h, s10
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v59, v156, 16, 4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v14, 0, v14, s8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v51, 1, v51
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v63, -16, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v15, v14, v78
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v51, v47, v51, 0x7fff
	v_cndmask_b16 v47.h, 0x7fff, v50.h, s25
	.loc	1 722 33                        ; attention_backward.py:722:33
	scratch_load_b32 v50, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s25, v193, v193
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v15, s59, v15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v44.h, 0x7fff, v51.h, s11
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v51, v155, 20, 4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v16, v15, 16, 1
	v_cmp_o_f32_e64 s8, v15, v15
	v_add3_u32 v60, v15, v16, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v15, v56
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v15, 0, v15, s2
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v16, v15, v77
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s10, v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v16, s59, v16
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v56, v16, 16, 1
	v_cmp_o_f32_e64 s2, v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v56, v16, v56, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v16, v55
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v16, 0, v16, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v55, v16, v76
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s11, v16, v16
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v55, s59, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v61, v55, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v55, v55
	v_add3_u32 v55, v55, v61, 0x7fff
	.loc	1 651 60 is_stmt 1              ; attention_backward.py:651:60
	v_or_b32_e32 v61, -16, v10
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v153, 0, v50
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_alignbit_b32 v50, v156, v155, 24
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v153, v9
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v9.l, 0x7fff, v57.h, s16
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v153, v9 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v9.h, 0x7fff, v60.h, s8
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v57, v156, 8, 4
	v_bfe_u32 v60, v156, 24, 4
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v236, v9
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v9.l, 0x7fff, v13.h, s14
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v236, v9 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v9.h, 0x7fff, v56.h, s2
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v13, v10, v61, s7
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s7, v46, v46
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v0, v9
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v9.l, 0x7fff, v58.h, s12
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v0, v9 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v9.h, 0x7fff, v55.h, vcc_lo
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v243, v9
	ds_store_b16_d16_hi v243, v9 offset:512
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v9, v48
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[85:88], v237
	ds_load_b128 v[73:76], v252
	ds_load_b128 v[77:80], v238
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_dual_mul_f32 v9, v160, v9 :: v_dual_and_b32 v56, 15, v156
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v55, 24, v156
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v58, v156, 20, 4
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s12, v204, v204
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v62, -16, v56
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v9, 0, v9, s1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s14, v196, v196
	v_cmp_o_f32_e64 s16, v188, v188
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v10.l, v9.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_and_b32_e32 v48, 1, v10
	v_mov_b16_e32 v10.l, v46.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v9, v9, v48, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v48, v49
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v49.h, v10.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v48, v160, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v48, 0, v48, s1
	v_mov_b16_e32 v49.l, v48.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v48, v48
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v48, v48, v49, 0x7fff
	v_and_b32_e32 v49, 1, v10
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v10.l, 4, v52.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v45.h, 0x7fff, v48.h, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v46, v46, v49, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v49, v52, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v46.l, 0x7fff, v9.h, vcc_lo
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v52, v156, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v47.l, 0x7fff, v46.h, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v9.l, v49.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v49, -16, v10
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s8, 0, v9.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v9, v13
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v13.h, v10.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v49, v10, v49, s8
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v9, v160, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v9, 0, v9, s1
	v_mov_b16_e32 v13.l, v9.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_and_b32_e32 v13, 1, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v9, v9, v13, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v13, v53
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v53, 8, v156
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v46.h, 0x7fff, v9.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v13, v160, v13
	v_cvt_f32_i32_e32 v9, v49
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e64 v49.l, v155.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v13, 0, v13, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v9, v160, v9
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v10.l, v13.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s2, v13, v13
	v_cndmask_b32_e64 v9, 0, v9, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v48, 1, v10
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v10.l, 4, v155.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v13, v13, v48, 0x7fff
	v_mov_b16_e32 v13.l, v9.h
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v10.l, v10.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v48.l, 0x7fff, v13.h, s2
	v_mov_b16_e32 v13.h, v10.h
	v_and_b32_e32 v13, 1, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v9, v9, v13, 0x7fff
	v_cndmask_b16 v48.h, 0x7fff, v9.h, vcc_lo
	.loc	1 722 33                        ; attention_backward.py:722:33
	scratch_load_b32 v9, off, off offset:268 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v13, 0, v9
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v9.l, v155.l, 15
	v_and_b16 v9.h, v155.h, 15
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_load_b128 v[81:84], v13
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v239, v[41:44]
	ds_store_b128 v239, v[45:48] offset:16
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v45, 15, v155
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v42, 8, v155
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v41.l, v156.l, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b64 v[43:44], 24, v[155:156]
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v46, v155, 16, 4
	v_bfe_u32 v48, v155, 8, 4
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v44, -16, v45
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v9.l
	v_cmp_lt_u16_e64 s7, 7, v41.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v41.l, v42.l, 15
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v61, -16, v46
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s2, 7, v9.h
	.loc	1 615 36 is_stmt 1              ; attention_backward.py:615:36
	v_bfe_i32 v64, v43, 0, 8
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v9.l, 4, v43.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v9.h, v43.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v43, v45, v44, vcc_lo
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v45, -16, v48
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v41.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v41.l, v53.l, 15
	v_and_b16 v41.h, v156.h, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v44, v46, v61, s2
	v_cndmask_b32_e64 v46, v56, v62, s7
	v_cndmask_b32_e32 v45, v48, v45, vcc_lo
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v56, -16, v57
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v41.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v41.l, v55.l, 15
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s8, 7, v41.h
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v47, v155, 0, 8
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v42.h, 4, v156.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v56, v57, v56, vcc_lo
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v57, -16, v60
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v41.l
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v41, 15, v50
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v44, v44
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v48, v59, v63, s8
	v_cndmask_b32_e32 v57, v60, v57, vcc_lo
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v50, -16, v41
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v9.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v9.h, 4, v42.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v45, v160, v45
	v_mul_f32_e32 v44, v160, v44
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v156.l, v10.h
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v50, v41, v50, vcc_lo
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v41, v49, 0, 8
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v49, -16, v51
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v45, 0, v45, s4
	v_cndmask_b32_e64 v44, 0, v44, s4
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v48, v48
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v41.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v41, v54, 0, 8
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v155.l, v10.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_dual_mul_f32 v48, v160, v48 :: v_dual_cndmask_b32 v49, v51, v49
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v51, -16, v58
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v41.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b32_e64 v48, 0, v48, s4
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v49, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v41, v58, v51, vcc_lo
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v51.h, v10.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v49, v160, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v49, 0, v49, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v41, v160, v41
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v51.l, v49.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_cndmask_b32_e64 v41, 0, v41, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v51, 1, v51
	v_cmp_o_f32_e64 s2, v41, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v49, v49, v51, 0x7fff
	v_mov_b16_e32 v51.h, v10.h
	v_mov_b16_e32 v51.l, v41.h
	v_and_b32_e32 v51, 1, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v51, v41, v51, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v41.l, v47.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v47, -16, v10
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s7, 0, v41.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v41, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v47, v10, v47, s7
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v41, v160, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v41, 0, v41, s4
	v_mov_b16_e32 v10.l, v41.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s7, v41, v41
	v_and_b32_e32 v43, 1, v10
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v10.l, v9.h, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v41, v41, v43, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v43, v42, 0, 8
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v54, -16, v10
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v43.h, 0x7fff, v49.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v41.l, v43.l
	v_cmp_gt_i16_e64 s8, 0, v41.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v49, v10, v54, s8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v10.l, v45.h
	v_cmp_o_f32_e64 s8, v44, v44
	v_and_b32_e32 v54, 1, v10
	v_mov_b16_e32 v10.l, v44.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v45, v45, v54, 0x7fff
	v_and_b32_e32 v54, 1, v10
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v10.l, v9.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v9, v47
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v47.h, v10.h
	v_cndmask_b16 v42.l, 0x7fff, v45.h, vcc_lo
	v_add3_u32 v44, v44, v54, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v9, v160, v9
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v43.l, 0x7fff, v44.h, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v9, 0, v9, s4
	v_mov_b16_e32 v47.l, v9.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s7, v9, v9
	v_and_b32_e32 v47, 1, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v9, v9, v47, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v9.l, v64.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v47, -16, v10
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b16 v41.h, 0x7fff, v9.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s9, 0, v9.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v9, v50
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v45, v10, v47, s9
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v9, v160, v9
	v_cvt_f32_i32_e32 v47, v49
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v49.h, v10.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s9, v12, v12
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v9, 0, v9, s4
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v47, v160, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v45, v160, v45
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v10.l, v9.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s7, v9, v9
	v_cndmask_b32_e64 v47, 0, v47, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v45, 0, v45, s4
	v_and_b32_e32 v44, 1, v10
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v10.l, v42.h, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v49.l, v47.h
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	v_add3_u32 v9, v9, v44, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v9.l, v52.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v49, 1, v49
	v_cndmask_b16 v44.l, 0x7fff, v9.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s8, 0, v9.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v9, v46
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v47, v47, v49, 0x7fff
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v49, -16, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v9, v160, v9
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v42.h, 0x7fff, v47.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v49, v10, v49, s8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s8, v45, v45
	v_cndmask_b32_e64 v46, 0, v9, s4
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v9.l, 4, v53.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v10.l, v46.h
	v_cmp_o_f32_e64 s7, v46, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v47, 1, v10
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v10.l, v9.l, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v9, v53, 0, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v50, -16, v10
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v9.l
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_add3_u32 v9, v46, v47, 0x7fff
	v_mov_b16_e32 v46.h, v10.h
	v_mov_b16_e32 v46.l, v45.h
	v_cndmask_b16 v47.h, 0x7fff, v51.h, s2
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v50, v10, v50, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v46, 1, v46
	v_add3_u32 v45, v45, v46, 0x7fff
	v_cndmask_b16 v45.l, 0x7fff, v9.h, s7
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v9, v56
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s7, v48, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v44.h, 0x7fff, v45.h, s8
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v9, v160, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v9, 0, v9, s4
	v_mov_b16_e32 v10.l, v9.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v9, v9
	v_and_b32_e32 v46, 1, v10
	v_mov_b16_e32 v10.l, v48.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v9, v9, v46, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v46, v49
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v49.h, v10.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v46, v160, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v46, 0, v46, s4
	v_mov_b16_e32 v49.l, v46.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v46, v46, v49, 0x7fff
	v_and_b32_e32 v49, 1, v10
	v_cndmask_b16 v46.l, 0x7fff, v9.h, s2
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v10.l, 4, v55.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v45.h, 0x7fff, v46.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v48, v48, v49, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v49, v55, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v47.l, 0x7fff, v48.h, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v9.l, v49.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v49, -16, v10
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_mov_b16_e32 v48.h, v10.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s7, v154, v154
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s8, 0, v9.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v9, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v49, v10, v49, s8
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v9, v160, v9
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s8, v14, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v49, v49
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v9, 0, v9, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v49, v160, v49
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v48.l, v9.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_and_b32_e32 v48, 1, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v9, v9, v48, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v48, v57
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v46.h, 0x7fff, v9.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v48, v160, v48
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v9, 0, v49, s4
	v_mov_b16_e32 v49.h, v10.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v160.l, v10.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v48, 0, v48, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v49.l, v9.h
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_mov_b16_e32 v10.l, v48.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v49, 1, v49
	v_cmp_o_f32_e64 s2, v48, v48
	v_and_b32_e32 v50, 1, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v9, v9, v49, 0x7fff
	v_add3_u32 v48, v48, v50, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v48.l, 0x7fff, v48.h, s2
	v_cndmask_b16 v48.h, 0x7fff, v9.h, vcc_lo
	ds_store_b128 v239, v[41:44] offset:32
	ds_store_b128 v239, v[45:48] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v42, v242 offset:256
	ds_load_u16_d16 v41, v242
	ds_load_u16_d16 v43, v242 offset:512
	ds_load_u16_d16 v44, v242 offset:768
	ds_load_u16_d16 v45, v242 offset:1024
	ds_load_u16_d16 v47, v242 offset:1536
	ds_load_u16_d16 v46, v242 offset:1280
	ds_load_u16_d16 v166, v242 offset:1088
	ds_load_u16_d16 v165, v242 offset:832
	ds_load_u16_d16 v48, v242 offset:1792
	ds_load_u16_d16 v49, v242 offset:2048
	ds_load_u16_d16 v50, v242 offset:2304
	ds_load_u16_d16 v51, v242 offset:2560
	ds_load_u16_d16 v53, v242 offset:3072
	ds_load_u16_d16 v59, v242 offset:2624
	ds_load_u16_d16 v58, v242 offset:2368
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v166, v242 offset:1216
	ds_load_u16_d16_hi v43, v242 offset:640
	ds_load_u16_d16_hi v44, v242 offset:896
	ds_load_u16_d16_hi v45, v242 offset:1152
	ds_load_u16_d16 v167, v242 offset:1344
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v59, v242 offset:2752
	ds_load_u16_d16_hi v47, v242 offset:1664
	ds_load_u16_d16_hi v46, v242 offset:1408
	ds_load_u16_d16 v162, v242 offset:64
	ds_load_u16_d16_hi v42, v242 offset:384
	ds_load_u16_d16_hi v41, v242 offset:128
	ds_load_u16_d16 v164, v242 offset:576
	ds_load_u16_d16 v163, v242 offset:320
	ds_load_u16_d16_hi v48, v242 offset:1920
	ds_load_u16_d16 v168, v242 offset:1600
	ds_load_u16_d16 v57, v242 offset:2112
	ds_load_u16_d16 v169, v242 offset:1856
	ds_load_u16_d16_hi v165, v242 offset:960
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v162, v242 offset:192
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v164, v242 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v163, v242 offset:448
	ds_load_u16_d16 v56, v242 offset:3840
	ds_load_u16_d16 v54, v242 offset:3328
	ds_load_u16_d16 v52, v242 offset:2816
	ds_load_u16_d16 v55, v242 offset:3584
	ds_load_u16_d16 v64, v242 offset:3904
	ds_load_u16_d16 v61, v242 offset:3136
	ds_load_u16_d16 v63, v242 offset:3648
	ds_load_u16_d16 v62, v242 offset:3392
	ds_load_u16_d16_hi v53, v242 offset:3200
	ds_load_u16_d16 v60, v242 offset:2880
	ds_load_u16_d16_hi v58, v242 offset:2496
	ds_load_u16_d16_hi v167, v242 offset:1472
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v168, v242 offset:1728
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v169, v242 offset:1984
	ds_load_u16_d16_hi v49, v242 offset:2176
	ds_load_u16_d16_hi v57, v242 offset:2240
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v54, v242 offset:3456
	ds_load_u16_d16_hi v50, v242 offset:2432
	ds_load_u16_d16_hi v51, v242 offset:2688
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v52, v242 offset:2944
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v55, v242 offset:3712
	ds_load_u16_d16_hi v56, v242 offset:3968
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v64, v242 offset:4032
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v60, v242 offset:3008
	ds_load_u16_d16_hi v61, v242 offset:3264
	ds_load_u16_d16_hi v63, v242 offset:3776
	ds_load_u16_d16_hi v62, v242 offset:3520
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v9, v158, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[33:40], v[41:48], v[81:88], v[33:40]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v158, v158
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(13)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[162:169], v[81:88], v[25:32]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s2, v159, v159
	v_add3_u32 v9, v158, v9, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v43, v15, 16, 1
	v_bfe_u32 v44, v16, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v45, v214, 16, 1
	v_bfe_u32 v46, v210, 16, 1
	v_bfe_u32 v47, v206, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v43, v15, v43, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[33:40], v[49:56], v[73:80], v[33:40]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v44, v16, v44, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v45, v214, v45, 0x7fff
	v_add3_u32 v46, v210, v46, 0x7fff
	v_add3_u32 v47, v206, v47, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[57:64], v[73:80], v[25:32]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v73.h, 0x7fff, v9.h, vcc_lo
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v73.l, v10.h
	v_mov_b16_e32 v76.l, v10.h
	v_mov_b16_e32 v59.l, v10.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v60.h, 0x7fff, v43.h, s10
	v_cndmask_b16 v61.h, 0x7fff, v44.h, s11
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v9, v158, v73
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v43, v222, 16, 1
	v_bfe_u32 v44, v218, 16, 1
	v_bfe_u32 v48, v202, 16, 1
	v_bfe_u32 v49, v198, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v41, v9, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v43, v222, v43, 0x7fff
	v_add3_u32 v44, v218, v44, 0x7fff
	v_add3_u32 v48, v202, v48, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v74, v9, v41, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v9, v159, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v49, v198, v49, 0x7fff
	v_bfe_u32 v51, v190, 16, 1
	v_bfe_u32 v52, v186, 16, 1
	v_bfe_u32 v53, v182, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v9, v159, v9, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v54, v178, 16, 1
	v_add3_u32 v51, v190, v51, 0x7fff
	v_add3_u32 v52, v186, v52, 0x7fff
	v_add3_u32 v53, v182, v53, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v76.h, 0x7fff, v9.h, s2
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v54, v178, v54, 0x7fff
	v_bfe_u32 v55, v174, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v58.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v56, v170, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v9, v159, v76
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e32 v57.l, v10.h
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v55, v174, v55, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v61.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v50, v194, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v41, v9, 16, 1
	v_cmp_o_f32_e64 s2, v9, v9
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v56, v170, v56, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v16, v16, v61
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v50, v194, v50, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v75, v9, v41, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v9, v154, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v60.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v62, v188, 16, 1
	v_bfe_u32 v63, v184, 16, 1
	v_bfe_u32 v64, v180, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v9, v154, v9, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v9.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s10, v212, v212
	v_cmp_o_f32_e64 s11, v208, v208
	v_add3_u32 v62, v188, v62, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s7
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v63, v184, v63, 0x7fff
	v_add3_u32 v64, v180, v64, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v43.l, v10.h
	v_mov_b16_e32 v44.l, v10.h
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v41, v154, v9
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v236, v9
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v9, v11, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v154, v172, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v45.l, v10.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v42, v41, 16, 1
	v_cmp_o_f32_e64 s7, v41, v41
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v9, v11, v9, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v9.l, 0x7fff, v74.h, vcc_lo
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v230, v230
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v41, v41, v42, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v42, v14, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v46.l, v10.h
	v_mov_b16_e32 v47.l, v10.h
	v_mov_b16_e32 v48.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v154, v172, v154, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v42, v14, v42, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v180.h, 0x7fff, v62.h, s16
	v_cndmask_b16 v184.h, 0x7fff, v64.h, s18
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v49.l, v10.h
	v_mov_b16_e32 v50.l, v10.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v57.h, 0x7fff, v42.h, s8
	v_bfe_u32 v42, v12, 16, 1
	v_cmp_o_f32_e64 s8, v11, v11
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v51.l, v10.h
	v_mov_b16_e32 v52.l, v10.h
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v14, v14, v57
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v42, v12, v42, 0x7fff
	v_cndmask_b16 v58.h, 0x7fff, v9.h, s8
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v9.h, 0x7fff, v75.h, s2
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s2, v226, v226
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v53.l, v10.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v59.h, 0x7fff, v42.h, s9
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v42, v226, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v236, v57 offset:512
	ds_store_b16_d16_hi v0, v58
	ds_store_b16_d16_hi v0, v60 offset:512
	ds_store_b16_d16_hi v243, v59
	ds_store_b16_d16_hi v243, v61 offset:512
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v11, v11, v58
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v61, v192, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v12, v12, v59
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v42, v226, v42, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v42.l, v10.h
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v153, v73
	ds_store_b16_d16_hi v153, v76 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s2
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v57, v11, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s2, v194, v194
	v_add3_u32 v61, v192, v61, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s9, v16, v16
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v140, v140, v42
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_load_b128 v[81:84], v13
	ds_load_b128 v[85:88], v237
	ds_load_b128 v[73:76], v252
	ds_load_b128 v[77:80], v238
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v153, v9
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v9.l, 0x7fff, v41.h, s7
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v41, v230, 16, 1
	v_cndmask_b16 v50.h, 0x7fff, v50.h, s2
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s2, v12, v12
	v_cmp_o_f32_e64 s7, v14, v14
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v153, v9 offset:512
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v41, v230, v41, 0x7fff
	v_bfe_u32 v58, v204, 16, 1
	v_bfe_u32 v59, v200, 16, 1
	v_bfe_u32 v153, v176, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v41.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v41.h, 0x7fff, v41.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v222, v222
	v_add3_u32 v58, v204, v58, 0x7fff
	v_add3_u32 v59, v200, v59, 0x7fff
	v_add3_u32 v153, v176, v153, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v54.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v43.h, 0x7fff, v43.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v218, v218
	v_cndmask_b16 v172.h, 0x7fff, v58.h, s12
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v55.l, v10.h
	v_mov_b16_e32 v56.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v153.h, 0x7fff, v153.h, s19
	v_cndmask_b16 v44.h, 0x7fff, v44.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v214, v214
	v_cndmask_b16 v154.h, 0x7fff, v154.h, s20
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v150, v150, v43
	v_sub_f32_e32 v138, v138, v41
	v_sub_f32_e32 v152, v152, v44
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v45.h, 0x7fff, v45.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v210, v210
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v153.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s12, v219, v219
	v_cmp_o_f32_e64 s16, v211, v211
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v146, v146, v45
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v46.h, 0x7fff, v46.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v206, v206
	v_cmp_o_f32_e64 s18, v207, v207
	v_cmp_o_f32_e64 s19, v205, v205
	v_cmp_o_f32_e64 s20, v203, v203
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v148, v148, v46
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v47.h, 0x7fff, v47.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v202, v202
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v158.l, v10.h
	v_mov_b16_e64 v159.l, v10.h
	v_mov_b16_e64 v172.l, v10.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v142, v142, v47
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v48.h, 0x7fff, v48.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v198, v198
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v176.l, v10.h
	v_mov_b16_e64 v180.l, v10.h
	v_mov_b16_e64 v184.l, v10.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v144, v144, v48
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v49.h, 0x7fff, v49.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v190, v190
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v48.l, v172.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v154.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v51.h, 0x7fff, v51.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v186, v186
	v_cndmask_b16 v52.h, 0x7fff, v52.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v182, v182
	v_cndmask_b16 v182.h, 0x7fff, v63.h, s17
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v182.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s17, v209, v209
	v_cndmask_b16 v53.h, 0x7fff, v53.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v178, v178
	v_cndmask_b16 v178.h, 0x7fff, v61.h, s15
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v178.l, v10.h
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v15, v15, v60
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v60, v196, 16, 1
	v_cndmask_b16 v54.h, 0x7fff, v54.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v174, v174
	v_cndmask_b16 v174.h, 0x7fff, v59.h, s13
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s8, v15, v15
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v60, v196, v60, 0x7fff
	v_cmp_o_f32_e64 s13, v217, v217
	v_cndmask_b16 v55.h, 0x7fff, v55.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v170, v170
	v_cmp_o_f32_e64 s15, v213, v213
	v_cndmask_b16 v176.h, 0x7fff, v60.h, s14
	v_cmp_o_f32_e64 s14, v215, v215
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v170.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v56.h, 0x7fff, v56.h, vcc_lo
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_add3_u32 v11, v11, v57, 0x7fff
	v_bfe_u32 v57, v12, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v174.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v12, v12, v57, 0x7fff
	v_bfe_u32 v57, v14, 16, 1
	v_add3_u32 v14, v14, v57, 0x7fff
	v_bfe_u32 v57, v15, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v9.h, 0x7fff, v14.h, s7
	v_add3_u32 v15, v15, v57, 0x7fff
	v_bfe_u32 v57, v16, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v236, v9
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v9.l, 0x7fff, v11.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v236, v9 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v9.h, 0x7fff, v15.h, s8
	v_add3_u32 v16, v16, v57, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v11, v228, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v0, v9
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v9.l, 0x7fff, v12.h, s2
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v0, v9 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v9.h, 0x7fff, v16.h, s9
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v243, v9
	ds_store_b16_d16_hi v243, v9 offset:512
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v9, v232, 16, 1
	v_bfe_u32 v12, v224, 16, 1
	v_bfe_u32 v14, v220, 16, 1
	v_bfe_u32 v15, v216, 16, 1
	v_bfe_u32 v16, v212, 16, 1
	v_bfe_u32 v57, v208, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v232, v232
	v_cmp_o_f32_e64 s2, v228, v228
	v_cmp_o_f32_e64 s7, v224, v224
	v_cmp_o_f32_e64 s8, v220, v220
	v_cmp_o_f32_e64 s9, v216, v216
	v_add3_u32 v9, v232, v9, 0x7fff
	v_add3_u32 v11, v228, v11, 0x7fff
	v_add3_u32 v12, v224, v12, 0x7fff
	v_add3_u32 v14, v220, v14, 0x7fff
	v_add3_u32 v15, v216, v15, 0x7fff
	v_add3_u32 v16, v212, v16, 0x7fff
	v_add3_u32 v57, v208, v57, 0x7fff
	v_cndmask_b16 v9.h, 0x7fff, v9.h, vcc_lo
	v_cndmask_b16 v155.h, 0x7fff, v11.h, s2
	v_cndmask_b16 v156.h, 0x7fff, v12.h, s7
	v_cndmask_b16 v158.h, 0x7fff, v14.h, s8
	v_cndmask_b16 v159.h, 0x7fff, v15.h, s9
	v_cndmask_b16 v160.h, 0x7fff, v16.h, s10
	v_cndmask_b16 v170.h, 0x7fff, v57.h, s11
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[57:60], v13
	ds_load_b128 v[61:64], v237
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v46.l, v160.h
	v_mov_b16_e64 v47.l, v170.h
	v_mov_b16_e64 v45.l, v159.h
	v_mov_b16_e64 v44.l, v158.h
	v_mov_b16_e64 v43.l, v156.h
	v_mov_b16_e64 v42.l, v155.h
	v_mov_b16_e32 v41.l, v9.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v108, v56
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v56.l, v154.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v14, v106, v55
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v55.l, v153.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v15, v112, v54
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v54.l, v184.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v106, v110, v53
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v53.l, v182.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v108, v116, v52
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v52.l, v180.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v110, v114, v51
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v51.l, v178.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v112, v120, v50
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v50.l, v176.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v114, v118, v49
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v49.l, v174.h
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[81:88], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v12, v233, 16, 1
	v_bfe_u32 v13, v231, 16, 1
	v_bfe_u32 v16, v229, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v233, v233
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[49:56], v[73:80], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v12, v233, v12, 0x7fff
	v_cmp_o_f32_e64 s2, v231, v231
	v_add3_u32 v13, v231, v13, 0x7fff
	v_cmp_o_f32_e64 s7, v229, v229
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[57:64], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v41, v227, 16, 1
	v_add3_u32 v16, v229, v16, 0x7fff
	v_cmp_o_f32_e64 s8, v227, v227
	v_cmp_o_f32_e64 s9, v225, v225
	v_cmp_o_f32_e64 s10, v223, v223
	v_add3_u32 v42, v227, v41, 0x7fff
	v_bfe_u32 v41, v225, 16, 1
	v_cmp_o_f32_e64 s11, v221, v221
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v42.l, v10.h
	v_mov_b16_e32 v9.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s8
	v_add3_u32 v116, v225, v41, 0x7fff
	v_bfe_u32 v41, v223, 16, 1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s8, v140, v140
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v9, v137, v9 :: v_dual_sub_f32 v136, v136, v42
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v116.h, 0x7fff, v116.h, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v43, v223, v41, 0x7fff
	v_bfe_u32 v41, v221, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v43.l, v10.h
	v_mov_b16_e32 v116.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v43.h, 0x7fff, v43.h, s10
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v118, v221, v41, 0x7fff
	v_bfe_u32 v41, v219, 16, 1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s10, v150, v150
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e32 v118.l, v10.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v130, v130, v43
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v118.h, 0x7fff, v118.h, s11
	v_add3_u32 v44, v219, v41, 0x7fff
	v_bfe_u32 v41, v217, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v44.l, v10.h
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v43.l, v116.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s12
	v_add3_u32 v120, v217, v41, 0x7fff
	v_bfe_u32 v41, v215, 16, 1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s12, v152, v152
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e32 v120.l, v10.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v132, v132, v44
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v120.h, 0x7fff, v120.h, s13
	v_add3_u32 v45, v215, v41, 0x7fff
	v_bfe_u32 v41, v213, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v45.l, v10.h
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v44.l, v118.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v45.h, 0x7fff, v45.h, s14
	v_add3_u32 v186, v213, v41, 0x7fff
	v_bfe_u32 v41, v211, 16, 1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s14, v146, v146
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v186.l, v10.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v126, v126, v45
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e32 v45.l, v120.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v46, v211, v41, 0x7fff
	v_bfe_u32 v41, v209, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v46.l, v10.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v46.h, 0x7fff, v46.h, s16
	v_add3_u32 v188, v209, v41, 0x7fff
	v_bfe_u32 v41, v207, 16, 1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s16, v148, v148
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v188.l, v10.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v128, v128, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v47, v207, v41, 0x7fff
	v_bfe_u32 v41, v205, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v47.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v47.h, 0x7fff, v47.h, s18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v190, v205, v41, 0x7fff
	v_bfe_u32 v41, v203, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v190.l, v10.h
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s18, v142, v142
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v122, v122, v47
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v48, v203, v41, 0x7fff
	v_bfe_u32 v41, v201, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v48.l, v10.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v48.h, 0x7fff, v48.h, s20
	v_add3_u32 v192, v201, v41, 0x7fff
	v_bfe_u32 v41, v199, 16, 1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s20, v144, v144
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v124, v124, v48
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v162, v199, v41, 0x7fff
	v_bfe_u32 v41, v197, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v162.l, v10.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v162.h, 0x7fff, v162.h, s22
	v_add3_u32 v194, v197, v41, 0x7fff
	v_bfe_u32 v41, v195, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v90, v90, v162
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v163, v195, v41, 0x7fff
	v_bfe_u32 v41, v193, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v163.l, v10.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v163.h, 0x7fff, v163.h, s24
	v_add3_u32 v193, v193, v41, 0x7fff
	v_bfe_u32 v41, v191, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v92, v92, v163
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v164, v191, v41, 0x7fff
	v_bfe_u32 v41, v189, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v164.l, v10.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v164.h, 0x7fff, v164.h, s26
	v_add3_u32 v189, v189, v41, 0x7fff
	v_bfe_u32 v41, v187, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v189.l, v10.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v189.h, 0x7fff, v189.h, s27
	v_add3_u32 v165, v187, v41, 0x7fff
	v_bfe_u32 v41, v185, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v165.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v187.h, 0x7fff, v192.h, s21
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v187.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v165.h, 0x7fff, v165.h, s28
	v_add3_u32 v185, v185, v41, 0x7fff
	v_bfe_u32 v41, v183, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v162.l, v187.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v185.l, v10.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v185.h, 0x7fff, v185.h, s29
	v_add3_u32 v166, v183, v41, 0x7fff
	v_bfe_u32 v41, v181, 16, 1
	v_cndmask_b16 v183.h, 0x7fff, v188.h, s17
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v166.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v188.h, 0x7fff, v194.h, s23
	v_cndmask_b16 v166.h, 0x7fff, v166.h, s30
	v_add3_u32 v181, v181, v41, 0x7fff
	v_bfe_u32 v41, v179, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v47.l, v183.h
	v_mov_b16_e64 v163.l, v188.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v183.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v181.h, 0x7fff, v181.h, s31
	v_add3_u32 v167, v179, v41, 0x7fff
	v_bfe_u32 v41, v177, 16, 1
	v_cndmask_b16 v179.h, 0x7fff, v186.h, s15
	v_cndmask_b16 v186.h, 0x7fff, v190.h, s19
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v167.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v167.h, 0x7fff, v167.h, s33
	v_add3_u32 v177, v177, v41, 0x7fff
	v_bfe_u32 v41, v175, 16, 1
	v_cndmask_b16 v190.h, 0x7fff, v193.h, s25
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v48.l, v186.h
	v_mov_b16_e64 v46.l, v179.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v177.h, 0x7fff, v177.h, s34
	v_add3_u32 v168, v175, v41, 0x7fff
	v_bfe_u32 v41, v173, 16, 1
	v_cndmask_b16 v175.h, 0x7fff, v16.h, s7
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v168.l, v10.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v16, v100, v167
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v168.h, 0x7fff, v168.h, s35
	v_add3_u32 v173, v173, v41, 0x7fff
	v_bfe_u32 v41, v171, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v42.l, v175.h
	v_mov_b16_e64 v167.l, v181.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v175.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v173.h, 0x7fff, v173.h, s36
	v_add3_u32 v169, v171, v41, 0x7fff
	v_cndmask_b16 v41.h, 0x7fff, v13.h, s2
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v41.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v171.h, 0x7fff, v12.h, vcc_lo
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v169.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v169.h, 0x7fff, v169.h, s37
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v13, v94, v168
	v_sub_f32_e32 v134, v134, v41
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v41.l, v171.h
	v_mov_b16_e64 v168.l, v177.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v12, v96, v169
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v169.l, v173.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v94, v98, v166
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v166.l, v185.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v96, v104, v165
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v165.l, v189.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v98, v102, v164
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v164.l, v190.h
	v_wmma_f32_16x16x16_bf16 v[17:24], v[41:48], v[81:88], v[17:24]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_cmp_o_f32_e64 s2, v138, v138
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v179.l, v10.h
	v_mov_b16_e64 v171.l, v10.h
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[17:24], v[162:169], v[73:80], v[17:24]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v177.l, v10.h
	v_mov_b16_e64 v173.l, v10.h
	v_mov_b16_e64 v181.l, v10.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[17:24], v[41:48], v[57:64], v[17:24]
	ds_load_b128 v[41:44], v252
	ds_load_b128 v[45:48], v238
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v93, v177
	scratch_load_b32 v93, off, off offset:316 ; 4-byte Folded Reload
	v_dual_mov_b32 v64, v235 :: v_dual_mov_b32 v235, v244
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[49:56], v[41:48], v[1:8]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[162:169], v[41:48], v[17:24]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v41, v139, v155 :: v_dual_sub_f32 v42, v149, v156
	v_dual_sub_f32 v43, v151, v158 :: v_dual_sub_f32 v44, v145, v159
	v_sub_f32_e32 v45, v147, v160
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v49, v41, 16, 1
	v_cmp_o_f32_e64 s7, v41, v41
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v46, v141, v170 :: v_dual_sub_f32 v47, v143, v172
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v48, v9, 16, 1
	v_add3_u32 v49, v41, v49, 0x7fff
	v_bfe_u32 v41, v140, 16, 1
	v_cmp_o_f32_e64 s9, v42, v42
	v_cmp_o_f32_e64 s11, v43, v43
	v_add3_u32 v9, v9, v48, 0x7fff
	v_bfe_u32 v48, v138, 16, 1
	v_add3_u32 v50, v140, v41, 0x7fff
	v_bfe_u32 v41, v42, 16, 1
	v_cmp_o_f32_e64 s13, v44, v44
	v_cmp_o_f32_e64 s15, v45, v45
	v_add3_u32 v48, v138, v48, 0x7fff
	v_cmp_o_f32_e64 s17, v46, v46
	v_add3_u32 v51, v42, v41, 0x7fff
	v_bfe_u32 v41, v150, 16, 1
	v_cmp_o_f32_e64 s19, v47, v47
	v_cndmask_b16 v42.l, 0x7fff, v49.h, s7
	v_cndmask_b16 v42.h, 0x7fff, v50.h, s8
	v_cmp_o_f32_e64 s8, v136, v136
	v_add3_u32 v52, v150, v41, 0x7fff
	v_bfe_u32 v41, v43, 16, 1
	v_dual_mov_b32 v169, v70 :: v_dual_mov_b32 v158, v67
	v_mov_b32_e32 v67, v72
	scratch_load_b32 v72, off, off offset:392 ; 4-byte Folded Reload
	v_add3_u32 v53, v43, v41, 0x7fff
	v_bfe_u32 v41, v152, 16, 1
	v_cndmask_b16 v43.l, 0x7fff, v51.h, s9
	v_cndmask_b16 v43.h, 0x7fff, v52.h, s10
	v_cmp_o_f32_e64 s10, v130, v130
	v_mov_b32_e32 v162, v66
	v_add3_u32 v54, v152, v41, 0x7fff
	v_bfe_u32 v41, v44, 16, 1
	v_dual_mov_b32 v159, v68 :: v_dual_mov_b32 v160, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v55, v44, v41, 0x7fff
	v_bfe_u32 v41, v146, 16, 1
	v_cndmask_b16 v44.l, 0x7fff, v53.h, s11
	v_cndmask_b16 v44.h, 0x7fff, v54.h, s12
	v_cmp_o_f32_e64 s12, v132, v132
	v_add3_u32 v56, v146, v41, 0x7fff
	v_bfe_u32 v41, v45, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v57, v45, v41, 0x7fff
	v_bfe_u32 v41, v148, 16, 1
	v_cndmask_b16 v45.l, 0x7fff, v55.h, s13
	v_cndmask_b16 v45.h, 0x7fff, v56.h, s14
	v_cmp_o_f32_e64 s14, v126, v126
	v_add3_u32 v58, v148, v41, 0x7fff
	v_bfe_u32 v41, v46, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v59, v46, v41, 0x7fff
	v_bfe_u32 v41, v142, 16, 1
	v_cndmask_b16 v46.l, 0x7fff, v57.h, s15
	v_cndmask_b16 v46.h, 0x7fff, v58.h, s16
	v_cmp_o_f32_e64 s16, v128, v128
	v_add3_u32 v60, v142, v41, 0x7fff
	v_bfe_u32 v41, v47, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v61, v47, v41, 0x7fff
	v_bfe_u32 v41, v144, 16, 1
	v_cndmask_b16 v47.l, 0x7fff, v59.h, s17
	v_cndmask_b16 v47.h, 0x7fff, v60.h, s18
	v_cmp_o_f32_e64 s18, v122, v122
	v_cndmask_b16 v48.l, 0x7fff, v61.h, s19
	v_add3_u32 v62, v144, v41, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v9.h, vcc_lo
	v_cndmask_b16 v41.h, 0x7fff, v48.h, s2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v9, v133, v171
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v134, v134
	v_cndmask_b16 v48.h, 0x7fff, v62.h, s20
	v_cmp_o_f32_e64 s20, v124, v124
	scratch_load_b32 v133, off, off offset:396 ; 4-byte Folded Reload
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[81:88], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v41, v135, v175 :: v_dual_sub_f32 v42, v129, v116
	v_dual_sub_f32 v43, v131, v118 :: v_dual_sub_f32 v44, v125, v120
	v_sub_f32_e32 v45, v127, v179
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v49, v41, 16, 1
	v_cmp_o_f32_e64 s7, v41, v41
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v46, v121, v183 :: v_dual_sub_f32 v47, v123, v186
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v48, v9, 16, 1
	v_add3_u32 v49, v41, v49, 0x7fff
	v_bfe_u32 v41, v136, 16, 1
	v_cmp_o_f32_e64 s9, v42, v42
	v_cmp_o_f32_e64 s11, v43, v43
	v_add3_u32 v9, v9, v48, 0x7fff
	v_bfe_u32 v48, v134, 16, 1
	v_add3_u32 v50, v136, v41, 0x7fff
	v_bfe_u32 v41, v42, 16, 1
	v_cmp_o_f32_e64 s13, v44, v44
	v_cmp_o_f32_e64 s15, v45, v45
	v_add3_u32 v48, v134, v48, 0x7fff
	v_cmp_o_f32_e64 s17, v46, v46
	v_add3_u32 v51, v42, v41, 0x7fff
	v_bfe_u32 v41, v130, 16, 1
	v_cmp_o_f32_e64 s19, v47, v47
	v_cndmask_b16 v42.l, 0x7fff, v49.h, s7
	v_cndmask_b16 v42.h, 0x7fff, v50.h, s8
	v_cmp_o_f32_e64 s8, v112, v112
	v_add3_u32 v52, v130, v41, 0x7fff
	v_bfe_u32 v41, v43, 16, 1
	s_clause 0x9                            ; 40-byte Folded Reload
	scratch_load_b32 v121, off, off offset:376
	scratch_load_b32 v145, off, off offset:372
	scratch_load_b32 v144, off, off offset:368
	scratch_load_b32 v143, off, off offset:364
	scratch_load_b32 v142, off, off offset:360
	scratch_load_b32 v137, off, off offset:352
	scratch_load_b32 v123, off, off offset:348
	scratch_load_b32 v130, off, off offset:336
	scratch_load_b32 v131, off, off offset:388
	scratch_load_b32 v118, off, off offset:356
	v_add3_u32 v53, v43, v41, 0x7fff
	v_bfe_u32 v41, v132, 16, 1
	v_cndmask_b16 v43.l, 0x7fff, v51.h, s9
	v_cndmask_b16 v43.h, 0x7fff, v52.h, s10
	v_cmp_o_f32_e64 s10, v110, v110
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v125, off, off offset:384
	scratch_load_b32 v120, off, off offset:344
	v_add3_u32 v54, v132, v41, 0x7fff
	v_bfe_u32 v41, v44, 16, 1
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v127, off, off offset:380
	scratch_load_b32 v134, off, off offset:340
	scratch_load_b32 v132, off, off offset:312
	v_add3_u32 v55, v44, v41, 0x7fff
	v_bfe_u32 v41, v126, 16, 1
	v_cndmask_b16 v44.l, 0x7fff, v53.h, s11
	v_cndmask_b16 v44.h, 0x7fff, v54.h, s12
	v_cmp_o_f32_e64 s12, v108, v108
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v56, v126, v41, 0x7fff
	v_bfe_u32 v41, v45, 16, 1
	scratch_load_b32 v126, off, off offset:308 ; 4-byte Folded Reload
	v_add3_u32 v57, v45, v41, 0x7fff
	v_bfe_u32 v41, v128, 16, 1
	v_cndmask_b16 v45.l, 0x7fff, v55.h, s13
	v_cndmask_b16 v45.h, 0x7fff, v56.h, s14
	v_cmp_o_f32_e64 s14, v106, v106
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v58, v128, v41, 0x7fff
	v_bfe_u32 v41, v46, 16, 1
	scratch_load_b32 v128, off, off offset:304 ; 4-byte Folded Reload
	v_add3_u32 v59, v46, v41, 0x7fff
	v_bfe_u32 v41, v122, 16, 1
	v_cndmask_b16 v46.l, 0x7fff, v57.h, s15
	v_cndmask_b16 v46.h, 0x7fff, v58.h, s16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v60, v122, v41, 0x7fff
	v_bfe_u32 v41, v47, 16, 1
	v_add3_u32 v61, v47, v41, 0x7fff
	v_bfe_u32 v41, v124, 16, 1
	v_cndmask_b16 v47.l, 0x7fff, v59.h, s17
	v_cndmask_b16 v47.h, 0x7fff, v60.h, s18
	v_cmp_o_f32_e64 s18, v14, v14
	v_cndmask_b16 v48.l, 0x7fff, v61.h, s19
	v_add3_u32 v62, v124, v41, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v9.h, vcc_lo
	v_cndmask_b16 v41.h, 0x7fff, v48.h, s2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v9, v117, v174
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v114, v114
	v_cndmask_b16 v48.h, 0x7fff, v62.h, s20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[17:24], v[41:48], v[81:88], v[17:24]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v41, v119, v176 :: v_dual_sub_f32 v42, v113, v178
	v_dual_sub_f32 v43, v115, v180 :: v_dual_sub_f32 v44, v109, v182
	v_sub_f32_e32 v45, v111, v184
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v49, v41, 16, 1
	v_cmp_o_f32_e64 s7, v41, v41
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v46, v105, v153
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s16, v15, v15
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v47, v107, v154
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v49, v41, v49, 0x7fff
	v_bfe_u32 v41, v112, 16, 1
	v_bfe_u32 v48, v9, 16, 1
	v_cmp_o_f32_e64 s9, v42, v42
	v_cmp_o_f32_e64 s11, v43, v43
	v_cmp_o_f32_e64 s13, v44, v44
	v_add3_u32 v50, v112, v41, 0x7fff
	v_bfe_u32 v41, v42, 16, 1
	v_add3_u32 v9, v9, v48, 0x7fff
	v_bfe_u32 v48, v114, 16, 1
	v_cmp_o_f32_e64 s15, v45, v45
	v_cmp_o_f32_e64 s17, v46, v46
	v_add3_u32 v51, v42, v41, 0x7fff
	v_bfe_u32 v41, v110, 16, 1
	v_add3_u32 v48, v114, v48, 0x7fff
	v_cmp_o_f32_e64 s19, v47, v47
	v_cmp_o_f32_e64 s20, v11, v11
	v_cndmask_b16 v42.l, 0x7fff, v49.h, s7
	v_add3_u32 v52, v110, v41, 0x7fff
	v_bfe_u32 v41, v43, 16, 1
	v_cndmask_b16 v42.h, 0x7fff, v50.h, s8
	v_cmp_o_f32_e64 s8, v92, v92
	v_dual_mov_b32 v88, v247 :: v_dual_mov_b32 v247, v248
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v53, v43, v41, 0x7fff
	v_bfe_u32 v41, v108, 16, 1
	v_cndmask_b16 v43.l, 0x7fff, v51.h, s9
	v_cndmask_b16 v43.h, 0x7fff, v52.h, s10
	v_cmp_o_f32_e64 s10, v98, v98
	v_mov_b32_e32 v248, v240
	v_add3_u32 v54, v108, v41, 0x7fff
	v_bfe_u32 v41, v44, 16, 1
	v_mov_b32_e32 v240, v234
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v55, v44, v41, 0x7fff
	v_bfe_u32 v41, v106, 16, 1
	v_cndmask_b16 v44.l, 0x7fff, v53.h, s11
	v_cndmask_b16 v44.h, 0x7fff, v54.h, s12
	v_cmp_o_f32_e64 s12, v96, v96
	v_add3_u32 v56, v106, v41, 0x7fff
	v_bfe_u32 v41, v45, 16, 1
	scratch_load_b64 v[106:107], off, off offset:288 ; 8-byte Folded Reload
	v_add3_u32 v57, v45, v41, 0x7fff
	v_bfe_u32 v41, v15, 16, 1
	v_cndmask_b16 v45.l, 0x7fff, v55.h, s13
	v_cndmask_b16 v45.h, 0x7fff, v56.h, s14
	v_cmp_o_f32_e64 s14, v94, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v15, v15, v41, 0x7fff
	v_bfe_u32 v41, v46, 16, 1
	v_add3_u32 v58, v46, v41, 0x7fff
	v_bfe_u32 v41, v14, 16, 1
	v_cndmask_b16 v46.l, 0x7fff, v57.h, s15
	v_cndmask_b16 v46.h, 0x7fff, v15.h, s16
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v15, v103, v189
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s16, v16, v16
	v_add3_u32 v14, v14, v41, 0x7fff
	v_bfe_u32 v41, v47, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s11, v15, v15
	v_add3_u32 v59, v47, v41, 0x7fff
	v_bfe_u32 v41, v11, 16, 1
	v_cndmask_b16 v47.l, 0x7fff, v58.h, s17
	v_cndmask_b16 v47.h, 0x7fff, v14.h, s18
	scratch_load_b64 v[57:58], off, off     ; 8-byte Folded Reload
	v_cndmask_b16 v48.l, 0x7fff, v59.h, s19
	v_add3_u32 v11, v11, v41, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v9.h, vcc_lo
	v_cndmask_b16 v41.h, 0x7fff, v48.h, s2
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[58:59], off, off offset:8
	scratch_load_b64 v[59:60], off, off offset:16
	v_cndmask_b16 v48.h, 0x7fff, v11.h, s20
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v9, v89, v187
	v_dual_sub_f32 v11, v91, v188 :: v_dual_sub_f32 v14, v101, v190
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s17, v10, v10
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[73:80], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v41, v97, v185
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v47, v15, 16, 1
	scratch_load_b32 v97, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v43, v95, v173
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v95, off, off offset:324
	scratch_load_b32 v124, off, off offset:300
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v48, v41, 16, 1
	v_add3_u32 v15, v15, v47, 0x7fff
	v_bfe_u32 v47, v96, 16, 1
	v_cmp_o_f32_e64 s13, v41, v41
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v42, v99, v181
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v41, v41, v48, 0x7fff
	v_bfe_u32 v48, v94, 16, 1
	v_add3_u32 v47, v96, v47, 0x7fff
	scratch_load_b32 v96, off, off offset:328 ; 4-byte Folded Reload
	v_bfe_u32 v49, v42, 16, 1
	v_cmp_o_f32_e64 s15, v42, v42
	v_add3_u32 v48, v94, v48, 0x7fff
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v94, off, off offset:320
	scratch_load_b32 v119, off, off offset:296
	v_add3_u32 v42, v42, v49, 0x7fff
	v_bfe_u32 v49, v16, 16, 1
	v_bfe_u32 v44, v9, 16, 1
	v_bfe_u32 v45, v11, 16, 1
	v_bfe_u32 v46, v14, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_add3_u32 v16, v16, v49, 0x7fff
	v_bfe_u32 v49, v10, 16, 1
	v_add3_u32 v9, v9, v44, 0x7fff
	v_bfe_u32 v44, v90, 16, 1
	v_cmp_o_f32_e64 s7, v11, v11
	v_add3_u32 v11, v11, v45, 0x7fff
	v_add3_u32 v49, v10, v49, 0x7fff
	v_bfe_u32 v10, v13, 16, 1
	v_bfe_u32 v45, v92, 16, 1
	v_cmp_o_f32_e64 s9, v14, v14
	v_add3_u32 v14, v14, v46, 0x7fff
	v_bfe_u32 v46, v98, 16, 1
	v_add3_u32 v50, v13, v10, 0x7fff
	v_bfe_u32 v10, v43, 16, 1
	v_cmp_o_f32_e64 s19, v43, v43
	v_cmp_o_f32_e64 s2, v90, v90
	v_add3_u32 v44, v90, v44, 0x7fff
	v_add3_u32 v45, v92, v45, 0x7fff
	v_add3_u32 v43, v43, v10, 0x7fff
	v_bfe_u32 v10, v12, 16, 1
	v_add3_u32 v46, v98, v46, 0x7fff
	v_cmp_o_f32_e64 s18, v13, v13
	v_cmp_o_f32_e64 s20, v12, v12
	v_cndmask_b16 v9.l, 0x7fff, v9.h, vcc_lo
	v_add3_u32 v51, v12, v10, 0x7fff
	v_cndmask_b16 v9.h, 0x7fff, v44.h, s2
	v_cndmask_b16 v10.l, 0x7fff, v11.h, s7
	v_cndmask_b16 v10.h, 0x7fff, v45.h, s8
	v_cndmask_b16 v11.l, 0x7fff, v14.h, s9
	v_cndmask_b16 v11.h, 0x7fff, v46.h, s10
	v_cndmask_b16 v12.l, 0x7fff, v15.h, s11
	v_cndmask_b16 v12.h, 0x7fff, v47.h, s12
	v_cndmask_b16 v13.l, 0x7fff, v41.h, s13
	v_cndmask_b16 v13.h, 0x7fff, v48.h, s14
	v_cndmask_b16 v14.l, 0x7fff, v42.h, s15
	v_cndmask_b16 v14.h, 0x7fff, v16.h, s16
	v_cndmask_b16 v15.l, 0x7fff, v49.h, s17
	v_cndmask_b16 v15.h, 0x7fff, v50.h, s18
	v_cndmask_b16 v16.l, 0x7fff, v43.h, s19
	v_cndmask_b16 v16.h, 0x7fff, v51.h, s20
	v_mov_b32_e32 v98, v65
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[17:24], v[9:16], v[73:80], v[17:24]
	v_mov_b32_e32 v15, v71
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %Flow
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	s_clause 0x1e                           ; 236-byte Folded Reload
	scratch_load_b32 v108, off, off offset:216
	scratch_load_b32 v109, off, off offset:220
	scratch_load_b32 v107, off, off offset:224
	scratch_load_b32 v110, off, off offset:256
	scratch_load_b32 v111, off, off offset:248
	scratch_load_b32 v112, off, off offset:252
	scratch_load_b32 v113, off, off offset:240
	scratch_load_b32 v114, off, off offset:244
	scratch_load_b32 v115, off, off offset:232
	scratch_load_b32 v116, off, off offset:236
	scratch_load_b32 v117, off, off offset:228
	scratch_load_b32 v155, off, off offset:176
	scratch_load_b32 v129, off, off offset:180
	scratch_load_b32 v146, off, off offset:184
	scratch_load_b32 v138, off, off offset:188
	scratch_load_b32 v141, off, off offset:192
	scratch_load_b32 v136, off, off offset:196
	scratch_load_b32 v135, off, off offset:200
	scratch_load_b32 v122, off, off offset:204
	scratch_load_b64 v[90:91], off, off offset:208
	scratch_load_b64 v[99:100], off, off offset:160
	scratch_load_b64 v[101:102], off, off offset:168
	scratch_load_b64 v[139:140], off, off offset:120
	scratch_load_b128 v[41:44], off, off offset:128
	scratch_load_b128 v[45:48], off, off offset:144
	scratch_load_b128 v[147:150], off, off offset:56
	scratch_load_b128 v[151:154], off, off offset:72
	scratch_load_b128 v[49:52], off, off offset:88
	scratch_load_b128 v[53:56], off, off offset:104
	scratch_load_b128 v[74:77], off, off offset:24
	scratch_load_b128 v[78:81], off, off offset:40
	s_branch .LBB0_1
.LBB0_6:
	.loc	1 550 20 is_stmt 1              ; attention_backward.py:550:20
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v10, off, off offset:404
	scratch_load_b32 v9, off, off offset:400
	scratch_load_b32 v11, off, off offset:408
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s5, s55, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s54
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_and_b32 s61, s61, 0xffff
	s_mov_b32 s62, s6
	s_mov_b32 s63, s7
	.loc	1 514 23                        ; attention_backward.py:514:23
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v0, s38, v10
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_or_b32_e32 v10, s39, v10
	.loc	1 550 20                        ; attention_backward.py:550:20
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v9, v9, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v43, s56, v10
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s2, s56, v9
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v49, 2, v9
	v_or_b32_e32 v48, 4, v9
	v_or_b32_e32 v47, 6, v9
	v_or_b32_e32 v46, 8, v9
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v45, 10, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v50, v43, v9, 2
	v_add_lshl_u32 v51, v43, v49, 2
	v_add_lshl_u32 v52, v43, v48, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v0, 32, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v53, v43, v45, 2
	v_cndmask_b32_e64 v50, 0x80000000, v50, s2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v42, 14, v9
	v_or_b32_e32 v44, 12, v9
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s3, s56, v0
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v41, 34, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v33, v50, s[4:7], 0 offen
	v_cndmask_b32_e64 v33, 0x80000000, v51, s2
	v_add_lshl_u32 v50, v43, v47, 2
	v_cndmask_b32_e64 v51, 0x80000000, v52, s2
	v_add_lshl_u32 v52, v43, v46, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v16, 36, v9
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
	v_or_b32_e32 v15, 38, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s3
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v36, v43, v41, 2
	v_add_lshl_u32 v37, v43, v16, 2
	v_cndmask_b32_e64 v35, 0x80000000, v35, s2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v12, 44, v9
	v_or_b32_e32 v14, 40, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v39, v34, s[4:7], 0 offen
	v_cndmask_b32_e64 v34, 0x80000000, v36, s2
	s_clause 0x1
	buffer_store_b32 v40, v33, s[4:7], 0 offen
	buffer_store_b32 v25, v35, s[4:7], 0 offen
	v_add_lshl_u32 v25, v43, v15, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v13, 42, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v36, 0x80000000, v37, s2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v10, s58, v10
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v11, 46, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v26, v34, s[4:7], 0 offen
	buffer_store_b32 v27, v36, s[4:7], 0 offen
	v_add_lshl_u32 v26, v43, v14, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	v_add_lshl_u32 v33, v43, v12, 2
	v_add_lshl_u32 v27, v43, v13, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s0, s58, v9
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	buffer_store_b32 v28, v25, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v33, s2
	v_add_lshl_u32 v28, v43, v11, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v9, v10, v9, 2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s0, vcc_lo, s0
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x2
	buffer_store_b32 v29, v26, s[4:7], 0 offen
	buffer_store_b32 v30, v27, s[4:7], 0 offen
	buffer_store_b32 v31, v25, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v28, s2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	v_add_lshl_u32 v26, v10, v49, 2
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v32, v25, s[4:7], 0 offen
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v1, v9, s[60:63], 0 offen
	v_add_lshl_u32 v1, v10, v48, 2
	v_cndmask_b32_e64 v9, 0x80000000, v26, s0
	v_add_lshl_u32 v25, v10, v47, 2
	v_add_lshl_u32 v26, v10, v46, 2
	v_add_lshl_u32 v27, v10, v45, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	buffer_store_b32 v2, v9, s[60:63], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v25, s0
	v_cndmask_b32_e64 v9, 0x80000000, v26, s0
	v_cndmask_b32_e64 v25, 0x80000000, v27, s0
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s1, s58, v0
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v3, v1, s[60:63], 0 offen
	v_add_lshl_u32 v1, v10, v44, 2
	s_clause 0x2
	buffer_store_b32 v4, v2, s[60:63], 0 offen
	buffer_store_b32 v5, v9, s[60:63], 0 offen
	buffer_store_b32 v6, v25, s[60:63], 0 offen
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
	buffer_store_b32 v7, v1, s[60:63], 0 offen
	buffer_store_b32 v8, v2, s[60:63], 0 offen
	buffer_store_b32 v17, v0, s[60:63], 0 offen
	buffer_store_b32 v18, v3, s[60:63], 0 offen
	buffer_store_b32 v19, v4, s[60:63], 0 offen
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
	buffer_store_b32 v20, v0, s[60:63], 0 offen
	buffer_store_b32 v21, v1, s[60:63], 0 offen
	buffer_store_b32 v22, v2, s[60:63], 0 offen
	buffer_store_b32 v23, v3, s[60:63], 0 offen
	buffer_store_b32 v24, v4, s[60:63], 0 offen
	.loc	1 451 5                         ; attention_backward.py:451:5
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 416
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
		.amdhsa_next_free_sgpr 78
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 78
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 416
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 23500
; TotalNumSgprs: 80
; NumVgprs: 256
; ScratchSize: 416
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 80
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 416
    .sgpr_count:     80
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 103
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
