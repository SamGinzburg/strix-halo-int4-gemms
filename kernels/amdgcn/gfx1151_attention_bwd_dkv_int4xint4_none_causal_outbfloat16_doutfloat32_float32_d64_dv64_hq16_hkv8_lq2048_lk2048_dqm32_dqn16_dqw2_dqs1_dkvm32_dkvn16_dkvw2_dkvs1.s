	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	v_lshlrev_b32_e32 v43, 3, v0
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
	v_and_b32_e32 v1, 24, v43
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_or_b32_e32 v3, s22, v2
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v4, s21, v2
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 514 33 is_stmt 0              ; attention_backward.py:514:33
	v_bfe_u32 v85, v0, 4, 1
	v_lshrrev_b32_e32 v6, 3, v0
	.loc	1 570 20 is_stmt 1              ; attention_backward.py:570:20
	s_bfe_i32 s2, s2, 0x1001b
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	s_clause 0x1
	s_load_b64 s[48:49], s[0:1], 0x58
	s_load_b128 s[16:19], s[0:1], 0x20
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v47, 2, v85
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_lshr_b32 s2, s2, 28
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[2:3], null, s45, v3, v[1:2]
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_cmp_gt_i32_e64 s4, s45, v1
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_and_b32 s9, s27, 0xffff
	s_mov_b32 s8, s26
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v48, 4, v85
	v_or_b32_e32 v49, 6, v85
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_dual_cndmask_b32 v1, 0x80000000, v2 :: v_dual_and_b32 v54, 48, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v50, 8, v85
	v_or_b32_e32 v51, 10, v85
	v_or_b32_e32 v52, 12, v85
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshrrev_b32_e32 v4, 1, v54
	buffer_load_b64 v[1:2], v1, s[8:11], 0 offen
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v53, 14, v85
	.loc	1 514 23 is_stmt 0              ; attention_backward.py:514:23
	v_or_b32_e32 v168, s21, v85
	.loc	1 528 17 is_stmt 1              ; attention_backward.py:528:17
	v_or_b32_e32 v5, s22, v85
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xad_u32 v9, v43, v4, 0
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_or_b32_e32 v4, s22, v47
	.loc	1 543 26                        ; attention_backward.py:543:26
	s_lshl_b32 s4, s3, 10
	.loc	1 541 32                        ; attention_backward.py:541:32
	s_ashr_i32 s5, s21, 1
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_or_b32_e32 v10, s22, v48
	.loc	1 545 17                        ; attention_backward.py:545:17
	s_add_i32 s4, s5, s4
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_lshlrev_b32_e32 v16, 1, v4
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_or_b32_e32 v11, s22, v49
	v_or_b32_e32 v12, s22, v50
	.loc	1 541 32                        ; attention_backward.py:541:32
	v_or_b32_e32 v7, s5, v6
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_or_b32_e32 v8, s4, v6
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_or_b32_e32 v13, s22, v51
	v_or_b32_e32 v14, s22, v52
	v_or_b32_e32 v15, s22, v53
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s15, 0x800, v168
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_lshlrev_b32_e32 v10, 1, v10
	v_dual_mov_b32 v17, 0 :: v_dual_lshlrev_b32 v12, 1, v12
	.loc	1 549 23                        ; attention_backward.py:549:23
	v_cmp_gt_i32_e32 vcc_lo, 0x400, v7
	v_dual_mov_b32 v33, 0 :: v_dual_lshlrev_b32 v14, 1, v14
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_and_b32 s9, s17, 0xffff
	s_mov_b32 s8, s16
	s_clause 0x1
	s_load_b256 s[36:43], s[0:1], 0x38
	s_load_b32 s33, s[0:1], 0xa0
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_mov_b16_e32 v42.l, 0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_i32 v59, v0, 4, 1
	v_lshrrev_b32_e32 v61, 4, v0
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_bfe_i32 v72, v0, 3, 1
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v172, s21, v48
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v67.h, v42.l
	v_mov_b16_e32 v70.h, v42.l
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v66.l, v42.l
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v179, s21, v53
	s_lshl_b32 s34, s3, 12
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v71.h, v42.l
	v_mov_b16_e32 v69.h, v42.l
	v_mov_b16_e32 v46.h, v42.l
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v173, s21, v50
	v_or_b32_e32 v174, s21, v51
	v_or_b32_e32 v177, s21, v52
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v65.l, v42.l
	v_mov_b16_e32 v64.l, v42.l
	s_waitcnt lgkmcnt(0)
	s_mov_b32 s56, s40
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v68.h, v42.l
	s_mov_b32 s26, s10
	s_mov_b32 s27, s11
	.loc	1 641 25                        ; attention_backward.py:641:25
	s_mul_f32 s35, s47, 0x3fb8aa3b
	s_mov_b32 s51, 0
	s_mov_b32 s23, -1
	s_mov_b32 s52, s38
	v_mov_b32_e32 v25, 0
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_and_b32_e32 v59, 0x440, v59
	v_and_b32_e32 v72, 0x440, v72
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt vmcnt(0)
	ds_store_b64 v9, v[1:2]
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v1, s21, v6
	v_mov_b32_e32 v9, 0
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_and_b32_e32 v55, 7, v0
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_lshlrev_b32_e32 v5, 1, v5
	v_lshlrev_b32_e32 v11, 1, v11
	.loc	1 570 20                        ; attention_backward.py:570:20
	v_add_nc_u32_e32 v2, s2, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v6, v9 :: v_dual_lshlrev_b32 v3, 3, v55
	v_dual_mov_b32 v22, v9 :: v_dual_lshlrev_b32 v13, 1, v13
	v_ashrrev_i32_e32 v2, 4, v2
	v_dual_mov_b32 v24, v9 :: v_dual_lshlrev_b32 v15, 1, v15
	v_mov_b32_e32 v18, v9
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v7, 0x80000000, v5, s15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 568 17                        ; attention_backward.py:568:17
	v_lshl_add_u32 v2, s3, 7, v2
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_mad_u64_u32 v[4:5], null, s46, v8, v[3:4]
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v5, 0x80000000, v16, s15
	v_cndmask_b32_e64 v8, 0x80000000, v10, s15
	.loc	1 568 17                        ; attention_backward.py:568:17
	v_mul_lo_u32 v2, v2, s46
	v_mov_b32_e32 v20, v9
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v10, 0x80000000, v11, s15
	v_cndmask_b32_e64 v11, 0x80000000, v12, s15
	v_cndmask_b32_e64 v12, 0x80000000, v13, s15
	v_cndmask_b32_e64 v13, 0x80000000, v14, s15
	v_cndmask_b32_e64 v14, 0x80000000, v15, s15
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_clause 0x7
	buffer_load_u16 v44, v7, s[8:11], 0 offen
	buffer_load_u16 v45, v5, s[8:11], 0 offen
	buffer_load_u16 v41, v8, s[8:11], 0 offen
	buffer_load_u16 v73, v10, s[8:11], 0 offen
	buffer_load_u16 v74, v11, s[8:11], 0 offen
	buffer_load_u16 v75, v12, s[8:11], 0 offen
	buffer_load_u16 v76, v13, s[8:11], 0 offen
	buffer_load_u16 v16, v14, s[8:11], 0 offen
	v_mov_b32_e32 v8, v9
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s4, s46, v3
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, 0x800, v1
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_add_lshl_u32 v1, v2, v3, 1
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_and_b32 s9, s29, 0xffff
	s_mov_b32 s8, s28
	.loc	1 549 22                        ; attention_backward.py:549:22
	s_and_b32 s5, vcc_lo, s4
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s2, s2, s4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v4, 0x80000000, v4, s5
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v36, v9 :: v_dual_and_b32 v99, 15, v0
	v_dual_mov_b32 v5, v9 :: v_dual_and_b32 v60, 32, v0
	.loc	1 544 28                        ; attention_backward.py:544:28
	buffer_load_b64 v[14:15], v4, s[8:11], 0 offen
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_and_b32 s9, s19, 0xffff
	s_mov_b32 s8, s18
	v_dual_mov_b32 v7, v9 :: v_dual_lshlrev_b32 v62, 1, v0
	buffer_load_b128 v[10:13], v1, s[8:11], 0 offen
	v_dual_mov_b32 v40, v9 :: v_dual_lshlrev_b32 v105, 4, v0
	v_dual_mov_b32 v34, v9 :: v_dual_and_b32 v57, 56, v0
	v_dual_mov_b32 v3, v9 :: v_dual_and_b32 v58, 16, v0
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v2, 1, v0
	v_dual_mov_b32 v38, v9 :: v_dual_and_b32 v63, 1, v0
	v_dual_mov_b32 v19, v9 :: v_dual_lshlrev_b32 v0, 6, v0
	v_dual_mov_b32 v37, v9 :: v_dual_lshlrev_b32 v80, 4, v99
	v_dual_mov_b32 v39, v9 :: v_dual_lshlrev_b32 v82, 8, v99
	v_dual_mov_b32 v26, v9 :: v_dual_and_b32 v77, 24, v62
	v_lshlrev_b32_e32 v83, 7, v60
	v_xor_b32_e32 v169, v105, v54
	v_and_or_b32 v62, v62, 30, v85
	v_add_nc_u32_e32 v175, 0, v0
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshl_or_b32 v54, v99, 5, v77
	v_or3_b32 v176, v82, v83, v80
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, s21, v47
	v_xor_b32_e32 v47, 0x880, v169
	v_xor_b32_e32 v48, 0xcc0, v169
	.loc	1 520 26                        ; attention_backward.py:520:26
	scratch_store_b32 off, v2, off offset:124 ; 4-byte Folded Spill
	v_dual_mov_b32 v31, v9 :: v_dual_lshlrev_b32 v186, 2, v62
	.loc	1 514 23                        ; attention_backward.py:514:23
	scratch_store_b32 off, v0, off offset:28 ; 4-byte Folded Spill
	v_or_b32_e32 v0, s21, v49
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v49, 0, v54
	v_xor_b32_e32 v53, 64, v176
	v_xor_b32_e32 v62, 0xb0, v176
	v_xor_b32_e32 v88, 0xc0, v176
	.loc	1 603 39                        ; attention_backward.py:603:39
	s_sub_i32 s2, s21, s33
	v_xor_b32_e32 v89, 0xd0, v176
	.loc	1 603 25 is_stmt 0              ; attention_backward.py:603:25
	s_max_i32 s6, s2, 0
	v_add_nc_u32_e32 v200, 0, v62
	.loc	1 604 45 is_stmt 1              ; attention_backward.py:604:45
	s_and_b32 s40, s6, 0x7fffffe0
	s_cmpk_lt_i32 s2, 0x800
	v_mov_b32_e32 v2, v9
	v_mov_b32_e32 v27, v9
	v_dual_mov_b32 v29, v9 :: v_dual_lshlrev_b32 v84, 1, v99
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cmp_eq_u32_e64 s0, 0, v58
	v_lshlrev_b32_e32 v58, 2, v58
	v_xor_b32_e32 v90, 0xe0, v176
	v_xor_b32_e32 v93, 0xf0, v176
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshlrev_b32_e32 v55, 4, v55
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xad_u32 v50, v54, 8, 0
	v_or3_b32 v170, v84, v58, v60
	v_xad_u32 v51, v54, 16, 0
	v_dual_mov_b32 v23, v9 :: v_dual_lshlrev_b32 v56, 2, v99
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshlrev_b32_e32 v57, 1, v57
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v96, 0x1b0, v170
	v_lshl_or_b32 v55, v99, 7, v55
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xad_u32 v52, v54, 24, 0
	v_mov_b32_e32 v30, v9
	v_mov_b32_e32 v35, v9
	v_dual_mov_b32 v28, v9 :: v_dual_add_nc_u32 v209, 0, v96
	v_dual_mov_b32 v32, v9 :: v_dual_and_b32 v79, 0x370, v105
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_lshlrev_b32_e32 v81, 3, v60
	v_xor_b32_e32 v59, v59, v80
	v_xor_b32_e32 v54, 0x50, v176
	s_delay_alu instid0(VALU_DEP_4)
	v_xad_u32 v72, v72, v79, 0
	v_add3_u32 v178, 0, v60, v84
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v82, v55, 32, 0
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_add3_u32 v79, 0, v81, v59
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v81, v55, 16, 0
	v_xad_u32 v83, v55, 48, 0
	v_xad_u32 v84, v55, 64, 0
	v_xad_u32 v86, 0x60, v55, 0
	v_xad_u32 v87, 0x70, v55, 0
	v_dual_mov_b32 v21, v9 :: v_dual_lshlrev_b32 v78, 5, v63
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s1, s46, v56
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v106, 1, v60
	.loc	1 620 52                        ; attention_backward.py:620:52
	v_lshlrev_b32_e32 v107, 4, v63
	v_xor_b32_e32 v58, 0x80, v176
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v63, 16, v78
	v_xor_b32_e32 v59, 0x90, v176
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s3, s44, v78
	v_xor_b32_e32 v94, 0x90, v170
	v_add_nc_u32_e32 v101, 0, v58
	v_cmp_gt_i32_e64 s4, s44, v63
	v_add_nc_u32_e32 v102, 0, v59
	v_xor_b32_e32 v110, 0x120, v170
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v4, v9
	v_add_nc_u32_e32 v95, 0, v94
	s_mov_b32 s28, s30
	s_cselect_b32 s50, -1, 0
	s_and_b32 s25, s25, 0xffff
	s_and_b32 s29, s31, 0xffff
	s_and_b32 s53, s39, 0xffff
	s_and_b32 s57, s41, 0xffff
	s_and_b32 s37, s37, 0xffff
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v41, 16, v41
	.loc	1 554 72                        ; attention_backward.py:554:72
	s_waitcnt vmcnt(1)
	v_and_b16 v42.h, v14.h, 15
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_bfe_u32 v62, v15, 20, 4
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v46.l, v15.h, 15
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v58, v15, 24, 4
	v_bfe_u32 v59, v15, 16, 4
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v64.h, v11.l
	v_and_b32_e32 v11, 0xffff0000, v11
	v_add_nc_u32_e32 v111, 0, v48
	v_xor_b32_e32 v48, 48, v176
	v_mov_b16_e32 v65.h, v12.l
	v_mov_b16_e32 v66.h, v13.l
	v_and_b32_e32 v12, 0xffff0000, v12
	v_add_nc_u32_e32 v171, 0, v47
	v_xor_b32_e32 v47, 32, v176
	v_add_nc_u32_e32 v182, 0, v48
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v42.h
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v42.h, v10.l
	v_add_nc_u32_e32 v183, 0, v53
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b32_e32 v53, 24, v15
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_and_b32_e32 v13, 0xffff0000, v13
	v_add_nc_u32_e32 v181, 0, v47
	.loc	1 522 24                        ; attention_backward.py:522:24
	ds_load_b64 v[47:48], v49
	.loc	1 514 23                        ; attention_backward.py:514:23
	scratch_store_b32 off, v0, off offset:24 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v88
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v69.l, 4, v53.l
	v_and_b32_e32 v43, 48, v43
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_and_b32_e32 v10, 0xffff0000, v10
	v_add_nc_u32_e32 v221, 0, v54
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v89
	v_lshl_or_b32 v180, v99, 6, v43
	v_xor_b32_e32 v43, 0x440, v169
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v54, v14, 16, 4
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v78, -16, v59
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v90
	v_xor_b32_e32 v97, 16, v180
	v_add_nc_u32_e32 v109, 0, v43
	v_xor_b32_e32 v43, 16, v176
	v_xor_b32_e32 v98, 32, v180
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v93
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[47:48], off offset:32 ; 8-byte Folded Spill
	v_xor_b32_e32 v100, 48, v180
	v_add_nc_u32_e32 v93, 0, v110
	scratch_store_b32 off, v0, off offset:100 ; 4-byte Folded Spill
	v_dual_mov_b32 v0, v99 :: v_dual_add_nc_u32 v99, 0, v97
	ds_load_b64 v[96:97], v50
	ds_load_b64 v[47:48], v51
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v77, v105, v57, 0
	v_add_nc_u32_e32 v57, 0, v56
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b32_e32 v50, 8, v14
	v_alignbit_b32 v51, v15, v14, 24
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v222, v106, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_lshl_add_u32 v188, v60, 1, v57
	v_xor_b32_e32 v57, 0x70, v176
	v_xor_b32_e32 v60, 0xa0, v176
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v51, 15, v51
	v_mad_u64_u32 v[91:92], null, s46, v61, v[56:57]
	v_add_nc_u32_e32 v187, 0, v57
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_bfe_u32 v57, v14, 20, 4
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_add_nc_u32_e32 v80, 0, v55
	v_add_nc_u32_e32 v92, 0, v43
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v43.l, v14.l, 15
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[47:48], off offset:48 ; 8-byte Folded Spill
	ds_load_b64 v[47:48], v52
	scratch_store_b32 off, v85, off offset:128 ; 4-byte Folded Spill
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v85, 0x50, v55, 0
	v_xor_b32_e32 v55, 0x60, v176
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v56, 15, v14
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v43.h, 4, v14.l
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b32_e32 v52, 8, v15
	v_add_nc_u32_e32 v103, 0, v60
	v_add_nc_u32_e32 v185, 0, v55
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v55, v14, 8, 4
	v_bfe_u32 v60, v15, 8, 4
	v_and_b32_e32 v61, 15, v15
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v63, -16, v56
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v68.l, v43.h, 15
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v89, -16, v55
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v43.h, 4, v52.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v88, -16, v61
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[47:48], off offset:40 ; 8-byte Folded Spill
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b64 v[48:49], 24, v[14:15]
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v49, -16, v54
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v14.l, v50.l, 15
	v_and_b16 v47.l, v15.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v47.h, 4, v15.l
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v15.l, v53.l, 15
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v49, v54, v49, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v14.l
	.loc	1 554 72 is_stmt 1              ; attention_backward.py:554:72
	v_and_b16 v15.h, v52.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v14.h, 4, v50.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v50, -16, v58
	v_or_b32_e32 v53, -16, v60
	.loc	1 557 25 is_stmt 0              ; attention_backward.py:557:25
	v_cndmask_b32_e64 v52, v55, v89, s2
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v43.l
	.loc	1 556 28 is_stmt 1              ; attention_backward.py:556:28
	v_and_b16 v67.l, v14.h, 15
	v_and_b16 v71.l, v47.h, 15
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v47.h, v48.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v48.l, 4, v48.l
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v54, v56, v63, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v15.l
	.loc	1 556 28 is_stmt 1              ; attention_backward.py:556:28
	v_and_b16 v70.l, v43.h, 15
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v56, 0, v69, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v49, v49
	s_waitcnt lgkmcnt(0)
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v14, v58, v50, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v46.l
	.loc	1 556 28 is_stmt 1              ; attention_backward.py:556:28
	v_and_b16 v46.l, v48.l, 15
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v48, v52
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v58, 0, v70, vcc_lo
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v63, -16, v56
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v50, v59, v78, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v15.h
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e32 v59, 0, v71, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v15, v60, v53, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v47.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v53, -16, v51
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v69, -16, v59
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v52, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v55, v61, v88, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v47.h
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v47, v54
	v_cvt_f32_i32_e32 v54, v14
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_dual_cndmask_b32 v14, 0, v46 :: v_dual_cndmask_b32 v15, 0, v57
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v43, v51, v53, s2
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v51, v55
	v_cvt_f32_i32_e32 v53, v50
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_dual_cndmask_b32 v46, 0, v67 :: v_dual_cndmask_b32 v55, 0, v68
	v_cndmask_b32_e32 v57, 0, v62, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v50, v43
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v43, -16, v14
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v14
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v60, -16, v15
	v_or_b32_e32 v61, -16, v46
	v_or_b32_e32 v62, -16, v55
	v_or_b32_e32 v67, -16, v57
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v14, v14, v43, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v15
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v68, -16, v58
	v_mad_u64_u32 v[189:190], null, s46, 12, v[91:92]
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v15, v15, v60, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v46
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v43, v46, v61, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v55
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v46, v55, v62, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v56
	.loc	1 620 52 is_stmt 1              ; attention_backward.py:620:52
	v_cmp_gt_i32_e64 s5, s45, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v55, v46
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v60, v56, v63, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v57
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v56, v43
	v_cvt_f32_i32_e32 v62, v60
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v61, v57, v67, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v58
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v57, v15
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v61, v61
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v63, v58, v68, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v59
	v_add_nc_u32_e32 v244, 0, v98
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v58, v14
	ds_store_b128 v72, v[47:50]
	ds_store_b128 v72, v[55:58] offset:128
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v59, v59, v69, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v60, v63
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[46:49], v79
	ds_load_b128 v[55:58], v79 offset:512
	v_cvt_f32_i32_e32 v59, v59
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v72, v[51:54]
	ds_store_b128 v72, v[59:62] offset:128
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[50:53], v79
	ds_load_b128 v[59:62], v79 offset:512
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_lshlrev_b32_e32 v14, 16, v44
	v_add_nc_u32_e32 v212, 0, v100
	v_lshlrev_b32_e32 v72, 16, v73
	v_xor_b32_e32 v98, 4, v186
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v44, v49, v11
	v_mul_f32_e32 v11, v58, v11
	v_mul_f32_e32 v15, v47, v10
	v_mul_f32_e32 v43, v48, v64
	v_dual_mul_f32 v49, v57, v64 :: v_dual_mul_f32 v10, v56, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_bfe_u32 v63, v11, 16, 1
	v_cmp_o_f32_e64 s2, v15, v15
	s_delay_alu instid0(VALU_DEP_4)
	v_bfe_u32 v54, v43, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v47, v52, v66
	.loc	1 527 29 is_stmt 1              ; attention_backward.py:527:29
	scratch_store_b32 off, v14, off offset:60 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v14, 16, v45
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v45, v50, v65
	v_mul_f32_e32 v48, v53, v13
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v50, v59, v65
	v_mul_f32_e32 v13, v62, v13
	.loc	1 567 32                        ; attention_backward.py:567:32
	scratch_store_b32 off, v14, off offset:56 ; 4-byte Folded Spill
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v14, v46, v42
	v_mul_f32_e32 v46, v51, v12
	v_mul_f32_e32 v42, v55, v42
	v_dual_mul_f32 v51, v61, v66 :: v_dual_mul_f32 v12, v60, v12
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_bfe_u32 v52, v14, 16, 1
	v_bfe_u32 v53, v15, 16, 1
	v_bfe_u32 v55, v44, 16, 1
	v_bfe_u32 v56, v45, 16, 1
	v_bfe_u32 v57, v46, 16, 1
	v_bfe_u32 v58, v47, 16, 1
	v_bfe_u32 v59, v48, 16, 1
	v_bfe_u32 v60, v42, 16, 1
	v_bfe_u32 v61, v10, 16, 1
	v_bfe_u32 v62, v49, 16, 1
	v_bfe_u32 v64, v50, 16, 1
	v_bfe_u32 v65, v12, 16, 1
	v_bfe_u32 v66, v51, 16, 1
	v_bfe_u32 v67, v13, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v14, v14
	v_cmp_o_f32_e64 s6, v43, v43
	v_cmp_o_f32_e64 s7, v44, v44
	v_cmp_o_f32_e64 s8, v45, v45
	v_cmp_o_f32_e64 s9, v46, v46
	v_cmp_o_f32_e64 s10, v47, v47
	v_cmp_o_f32_e64 s11, v48, v48
	v_add3_u32 v14, v14, v52, 0x7fff
	v_add3_u32 v15, v15, v53, 0x7fff
	v_add3_u32 v43, v43, v54, 0x7fff
	v_add3_u32 v44, v44, v55, 0x7fff
	v_add3_u32 v45, v45, v56, 0x7fff
	v_add3_u32 v46, v46, v57, 0x7fff
	v_add3_u32 v47, v47, v58, 0x7fff
	v_add3_u32 v48, v48, v59, 0x7fff
	v_cmp_o_f32_e64 s12, v42, v42
	v_cmp_o_f32_e64 s13, v10, v10
	v_cmp_o_f32_e64 s14, v49, v49
	v_cmp_o_f32_e64 s16, v11, v11
	v_cmp_o_f32_e64 s17, v50, v50
	v_cmp_o_f32_e64 s18, v12, v12
	v_cmp_o_f32_e64 s19, v51, v51
	v_cmp_o_f32_e64 s20, v13, v13
	v_add3_u32 v42, v42, v60, 0x7fff
	v_add3_u32 v52, v10, v61, 0x7fff
	v_add3_u32 v49, v49, v62, 0x7fff
	v_add3_u32 v53, v11, v63, 0x7fff
	v_add3_u32 v50, v50, v64, 0x7fff
	v_add3_u32 v54, v12, v65, 0x7fff
	v_add3_u32 v51, v51, v66, 0x7fff
	v_add3_u32 v55, v13, v67, 0x7fff
	v_cndmask_b16 v10.l, 0x7fff, v14.h, vcc_lo
	v_cndmask_b16 v10.h, 0x7fff, v15.h, s2
	v_cndmask_b16 v11.l, 0x7fff, v43.h, s6
	v_cndmask_b16 v11.h, 0x7fff, v44.h, s7
	v_cndmask_b16 v12.l, 0x7fff, v45.h, s8
	v_cndmask_b16 v12.h, 0x7fff, v46.h, s9
	v_cndmask_b16 v13.l, 0x7fff, v47.h, s10
	v_cndmask_b16 v13.h, 0x7fff, v48.h, s11
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s12
	v_cndmask_b16 v42.h, 0x7fff, v52.h, s13
	v_cndmask_b16 v43.l, 0x7fff, v49.h, s14
	v_cndmask_b16 v43.h, 0x7fff, v53.h, s16
	v_cndmask_b16 v44.l, 0x7fff, v50.h, s17
	v_cndmask_b16 v44.h, 0x7fff, v54.h, s18
	v_cndmask_b16 v45.l, 0x7fff, v51.h, s19
	v_cndmask_b16 v45.h, 0x7fff, v55.h, s20
	.loc	1 717 21 is_stmt 1              ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v77, v[10:13]
	ds_store_b128 v77, v[42:45] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[213:216], v80
	ds_load_b128 v[217:220], v81
	ds_load_b128 v[56:59], v82
	ds_load_b128 v[60:63], v83
	ds_load_b128 v[64:67], v84
	ds_load_b128 v[68:71], v85
	ds_load_b128 v[236:239], v86
	ds_load_b128 v[240:243], v87
	v_mad_u64_u32 v[46:47], null, s46, 20, v[91:92]
	v_mad_u64_u32 v[47:48], null, s46, 24, v[91:92]
	v_mad_u64_u32 v[48:49], null, s46, 28, v[91:92]
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_lshlrev_b32_e32 v43, 16, v74
	v_lshlrev_b32_e32 v45, 16, v75
	v_lshlrev_b32_e32 v42, 16, v76
	v_lshlrev_b32_e32 v44, 16, v16
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:132
	scratch_store_b32 off, v106, off offset:136
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[236:239], off offset:64 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_clause 0x2                            ; 28-byte Folded Spill
	scratch_store_b128 off, v[240:243], off offset:80
	scratch_store_b64 off, v[107:108], off offset:112
	scratch_store_b32 off, v105, off offset:120
	s_branch .LBB0_2
.LBB0_1:                                ; %Flow255
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 29 is_stmt 0                ; attention_backward.py:0:29
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
	s_or_b32 s41, s34, s51
	s_mov_b32 s51, s40
.LBB0_4:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 25 is_stmt 0                ; attention_backward.py:0:25
	scratch_load_b32 v0, off, off offset:124 ; 4-byte Folded Reload
	v_lshl_add_u32 v14, s46, 2, v91
	.loc	1 616 25 is_stmt 1              ; attention_backward.py:616:25
	s_or_b32 s2, s51, s41
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_clause 0x2                            ; 24-byte Folded Spill
	scratch_store_b64 off, v[46:47], off offset:16
	scratch_store_b64 off, v[48:49], off offset:8
	scratch_store_b64 off, v[47:48], off
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s54, s26
	s_mov_b32 s55, s27
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s58, s26
	s_mov_b32 s59, s27
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v132, 0x1c00, v188
	v_add_nc_u32_e32 v104, 0x1800, v188
	v_mov_b32_e32 v100, v185
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b32_e32 v106, v244
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v10, s2, v0
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s2, s2, s46
	v_or_b32_e32 v13, s41, v0
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v14, s2, v14, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_mad_u64_u32 v[10:11], null, v10, s45, v[107:108]
	v_or_b32_e32 v11, s41, v222
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v15, 0x80000000, v14, s1
	v_lshl_add_u32 v14, s46, 3, v91
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v13, s51, v13, 1
	v_mov_b32_e32 v107, v98
	.loc	1 624 25                        ; attention_backward.py:624:25
	v_or_b32_e32 v11, s51, v11
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v10, 0x80000000, v10, s5
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v14, s2, v14, 2
	.loc	1 623 39                        ; attention_backward.py:623:39
	buffer_load_u16 v82, v13, s[28:31], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v13, s2, v91, 2
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v12, 1, v11
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_lshlrev_b32_e32 v11, 2, v11
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v16, 0x80000000, v14, s1
	v_add_lshl_u32 v14, s2, v189, 2
	v_cndmask_b32_e64 v13, 0x80000000, v13, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v85, 0x80000000, v14, s1
	v_lshl_add_u32 v14, s46, 4, v91
	v_add_lshl_u32 v14, s2, v14, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v86, 0x80000000, v14, s1
	v_add_lshl_u32 v14, s2, v46, 2
	v_cndmask_b32_e64 v87, 0x80000000, v14, s1
	v_add_lshl_u32 v14, s2, v47, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v88, 0x80000000, v14, s1
	v_add_lshl_u32 v14, s2, v48, 2
	v_cndmask_b32_e64 v89, 0x80000000, v14, s1
	.loc	1 623 39                        ; attention_backward.py:623:39
	buffer_load_u16 v83, v12, s[28:31], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v81, v11, s[52:55], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v84, v11, s[56:59], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x7
	buffer_load_b128 v[11:14], v13, s[36:39], 0 offen
	buffer_load_b128 v[73:76], v15, s[36:39], 0 offen
	buffer_load_b128 v[77:80], v16, s[36:39], 0 offen
	buffer_load_b128 v[192:195], v85, s[36:39], 0 offen
	buffer_load_b128 v[196:199], v86, s[36:39], 0 offen
	buffer_load_b128 v[223:226], v87, s[36:39], 0 offen
	buffer_load_b128 v[227:230], v88, s[36:39], 0 offen
	buffer_load_b128 v[231:234], v89, s[36:39], 0 offen
	.loc	1 615 36                        ; attention_backward.py:615:36
	buffer_load_b128 v[87:90], v10, s[24:27], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v10, 0, v105
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(8)
	ds_store_b128 v10, v[11:14]
	s_waitcnt vmcnt(7)
	ds_store_b128 v10, v[73:76] offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b128 v10, v[77:80] offset:2048
	s_waitcnt vmcnt(5)
	ds_store_b128 v10, v[192:195] offset:3072
	s_waitcnt vmcnt(4)
	ds_store_b128 v10, v[196:199] offset:4096
	s_waitcnt vmcnt(3)
	ds_store_b128 v10, v[223:226] offset:5120
	s_waitcnt vmcnt(2)
	ds_store_b128 v10, v[227:230] offset:6144
	s_waitcnt vmcnt(1)
	ds_store_b128 v10, v[231:234] offset:7168
	v_add_nc_u32_e32 v10, 0x400, v188
	v_add_nc_u32_e32 v15, 0x800, v188
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v16, 0xc00, v188
	v_add_nc_u32_e32 v85, 0x1000, v188
	v_add_nc_u32_e32 v86, 0x1400, v188
	ds_load_2addr_b32 v[130:131], v10 offset1:32
	ds_load_2addr_b32 v[136:137], v10 offset0:64 offset1:96
	ds_load_2addr_b32 v[128:129], v10 offset0:128 offset1:160
	ds_load_2addr_b32 v[138:139], v10 offset0:192 offset1:224
	ds_load_2addr_b32 v[126:127], v15 offset1:32
	ds_load_2addr_b32 v[140:141], v15 offset0:64 offset1:96
	ds_load_2addr_b32 v[124:125], v15 offset0:128 offset1:160
	ds_load_2addr_b32 v[142:143], v15 offset0:192 offset1:224
	ds_load_2addr_b32 v[122:123], v16 offset1:32
	ds_load_2addr_b32 v[144:145], v16 offset0:64 offset1:96
	ds_load_2addr_b32 v[120:121], v16 offset0:128 offset1:160
	ds_load_2addr_b32 v[146:147], v16 offset0:192 offset1:224
	ds_load_2addr_b32 v[118:119], v85 offset1:32
	ds_load_2addr_b32 v[148:149], v85 offset0:64 offset1:96
	ds_load_2addr_b32 v[207:208], v85 offset0:128 offset1:160
	ds_load_2addr_b32 v[150:151], v85 offset0:192 offset1:224
	ds_load_2addr_b32 v[210:211], v86 offset1:32
	ds_load_2addr_b32 v[152:153], v86 offset0:64 offset1:96
	ds_load_2addr_b32 v[190:191], v86 offset0:128 offset1:160
	ds_load_2addr_b32 v[154:155], v86 offset0:192 offset1:224
	ds_load_2addr_b32 v[54:55], v104 offset1:32
	ds_load_2addr_b32 v[156:157], v104 offset0:64 offset1:96
	ds_load_2addr_b32 v[50:51], v104 offset0:128 offset1:160
	ds_load_2addr_b32 v[158:159], v104 offset0:192 offset1:224
	ds_load_2addr_b32 v[52:53], v132 offset1:32
	ds_load_2addr_b32 v[160:161], v132 offset0:64 offset1:96
	ds_load_2addr_b32 v[46:47], v132 offset0:128 offset1:160
	ds_load_2addr_b32 v[162:163], v132 offset0:192 offset1:224
	ds_load_2addr_b32 v[134:135], v188 offset1:32
	ds_load_2addr_b32 v[164:165], v188 offset0:64 offset1:96
	ds_load_2addr_b32 v[132:133], v188 offset0:128 offset1:160
	ds_load_2addr_b32 v[166:167], v188 offset0:192 offset1:224
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v10, 0, v169
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v10, v[11:14]
	ds_store_b128 v10, v[196:199] offset:4096
	ds_store_b128 v109, v[73:76]
	ds_store_b128 v109, v[223:226] offset:4096
	ds_store_b128 v171, v[77:80]
	ds_store_b128 v171, v[227:230] offset:4096
	ds_store_b128 v111, v[192:195]
	ds_store_b128 v111, v[231:234] offset:4096
	v_add_nc_u32_e32 v10, 0, v176
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v10
	ds_load_b128 v[73:76], v92
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:104
	scratch_load_b64 v[48:49], off, off offset:32
	v_dual_mov_b32 v104, v111 :: v_dual_lshlrev_b32 v83, 16, v83
	v_mov_b32_e32 v105, v99
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 640 41                        ; attention_backward.py:640:41
	v_mul_f32_e32 v83, s35, v83
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v14, v10, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	v_cmp_o_f32_e64 s2, v11, v11
	v_cmp_o_f32_e64 s6, v12, v12
	v_cmp_o_f32_e64 s7, v13, v13
	v_add3_u32 v14, v10, v14, 0x7fff
	v_bfe_u32 v10, v11, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s8, v73, v73
	v_cmp_o_f32_e64 s9, v74, v74
	v_cmp_o_f32_e64 s10, v75, v75
	v_cmp_o_f32_e64 s11, v76, v76
	v_add3_u32 v15, v11, v10, 0x7fff
	v_bfe_u32 v10, v12, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v16, v12, v10, 0x7fff
	v_bfe_u32 v10, v13, 16, 1
	v_add3_u32 v77, v13, v10, 0x7fff
	v_bfe_u32 v10, v73, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v78, v73, v10, 0x7fff
	v_bfe_u32 v10, v74, 16, 1
	v_add3_u32 v79, v74, v10, 0x7fff
	v_bfe_u32 v10, v75, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v80, v75, v10, 0x7fff
	v_bfe_u32 v10, v76, 16, 1
	v_add3_u32 v85, v76, v10, 0x7fff
	ds_load_b128 v[10:13], v181
	ds_load_b128 v[73:76], v182
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v86, v10, 16, 1
	v_cmp_o_f32_e64 s12, v10, v10
	v_cmp_o_f32_e64 s13, v11, v11
	v_cmp_o_f32_e64 s14, v12, v12
	v_cmp_o_f32_e64 s16, v13, v13
	v_add3_u32 v10, v10, v86, 0x7fff
	v_bfe_u32 v86, v11, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s17, v73, v73
	v_cmp_o_f32_e64 s18, v74, v74
	v_cmp_o_f32_e64 s19, v75, v75
	v_cmp_o_f32_e64 s20, v76, v76
	v_add3_u32 v11, v11, v86, 0x7fff
	v_bfe_u32 v86, v12, 16, 1
	v_cndmask_b16 v77.l, 0x7fff, v10.h, s12
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v10, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v12, v12, v86, 0x7fff
	v_bfe_u32 v86, v13, 16, 1
	v_cndmask_b16 v78.l, 0x7fff, v12.h, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v13, v13, v86, 0x7fff
	v_bfe_u32 v86, v73, 16, 1
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v12, v9
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v86, v73, v86, 0x7fff
	v_bfe_u32 v73, v74, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v79.l, 0x7fff, v86.h, s17
	v_add3_u32 v192, v74, v73, 0x7fff
	v_bfe_u32 v73, v75, 16, 1
	v_cndmask_b16 v74.l, 0x7fff, v16.h, s6
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v16, v9
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v74.h, 0x7fff, v77.h, s7
	v_cndmask_b16 v77.h, 0x7fff, v11.h, s13
	v_add3_u32 v193, v75, v73, 0x7fff
	v_bfe_u32 v73, v76, 16, 1
	v_cndmask_b16 v75.l, 0x7fff, v78.h, s8
	v_cndmask_b16 v78.h, 0x7fff, v13.h, s16
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v11, v9
	v_mov_b32_e32 v13, v9
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v194, v76, v73, 0x7fff
	v_cndmask_b16 v73.l, 0x7fff, v14.h, vcc_lo
	v_cndmask_b16 v73.h, 0x7fff, v15.h, s2
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v14, v9
	v_mov_b32_e32 v15, v9
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v230, v16 :: v_dual_mov_b32 v223, v9
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v75.h, 0x7fff, v79.h, s9
	v_cndmask_b16 v76.l, 0x7fff, v80.h, s10
	v_cndmask_b16 v76.h, 0x7fff, v85.h, s11
	v_cndmask_b16 v79.h, 0x7fff, v192.h, s18
	v_cndmask_b16 v80.l, 0x7fff, v193.h, s19
	v_cndmask_b16 v80.h, 0x7fff, v194.h, s20
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v229, v15 :: v_dual_mov_b32 v228, v14
	v_dual_mov_b32 v227, v13 :: v_dual_mov_b32 v226, v12
	v_dual_mov_b32 v225, v11 :: v_dual_mov_b32 v224, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[223:230], v[213:220], v[73:80], v[223:230]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[73:76], v183
	ds_load_b128 v[77:80], v221
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v85, v73, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_cmp_o_f32_e64 s2, v74, v74
	v_cmp_o_f32_e64 s6, v75, v75
	v_cmp_o_f32_e64 s7, v76, v76
	v_add3_u32 v85, v73, v85, 0x7fff
	v_bfe_u32 v73, v74, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s8, v77, v77
	v_cmp_o_f32_e64 s9, v78, v78
	v_cmp_o_f32_e64 s10, v79, v79
	v_cmp_o_f32_e64 s11, v80, v80
	v_add3_u32 v86, v74, v73, 0x7fff
	v_bfe_u32 v73, v75, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v192, v75, v73, 0x7fff
	v_bfe_u32 v73, v76, 16, 1
	v_add3_u32 v193, v76, v73, 0x7fff
	v_bfe_u32 v73, v77, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v194, v77, v73, 0x7fff
	v_bfe_u32 v73, v78, 16, 1
	v_add3_u32 v195, v78, v73, 0x7fff
	v_bfe_u32 v73, v79, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v196, v79, v73, 0x7fff
	v_bfe_u32 v73, v80, 16, 1
	v_add3_u32 v197, v80, v73, 0x7fff
	ds_load_b128 v[73:76], v185
	ds_load_b128 v[77:80], v187
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v198, v73, 16, 1
	v_cmp_o_f32_e64 s12, v73, v73
	v_cmp_o_f32_e64 s13, v74, v74
	v_cmp_o_f32_e64 s14, v75, v75
	v_cmp_o_f32_e64 s16, v76, v76
	v_add3_u32 v198, v73, v198, 0x7fff
	v_bfe_u32 v73, v74, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s17, v77, v77
	v_cmp_o_f32_e64 s18, v78, v78
	v_cmp_o_f32_e64 s19, v79, v79
	v_cmp_o_f32_e64 s20, v80, v80
	v_add3_u32 v199, v74, v73, 0x7fff
	v_bfe_u32 v73, v75, 16, 1
	v_cndmask_b16 v74.l, 0x7fff, v192.h, s6
	v_cndmask_b16 v74.h, 0x7fff, v193.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v231, v75, v73, 0x7fff
	v_bfe_u32 v73, v76, 16, 1
	v_cndmask_b16 v75.l, 0x7fff, v194.h, s8
	v_cndmask_b16 v75.h, 0x7fff, v195.h, s9
	v_add3_u32 v232, v76, v73, 0x7fff
	v_bfe_u32 v73, v77, 16, 1
	v_cndmask_b16 v76.l, 0x7fff, v196.h, s10
	v_cndmask_b16 v76.h, 0x7fff, v197.h, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v233, v77, v73, 0x7fff
	v_bfe_u32 v73, v78, 16, 1
	v_cndmask_b16 v77.l, 0x7fff, v198.h, s12
	v_cndmask_b16 v77.h, 0x7fff, v199.h, s13
	v_add3_u32 v234, v78, v73, 0x7fff
	v_bfe_u32 v73, v79, 16, 1
	v_cndmask_b16 v78.l, 0x7fff, v231.h, s14
	v_cndmask_b16 v78.h, 0x7fff, v232.h, s16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v235, v79, v73, 0x7fff
	v_bfe_u32 v73, v80, 16, 1
	v_cndmask_b16 v79.l, 0x7fff, v233.h, s17
	v_cndmask_b16 v79.h, 0x7fff, v234.h, s18
	v_add3_u32 v80, v80, v73, 0x7fff
	v_cndmask_b16 v73.l, 0x7fff, v85.h, vcc_lo
	v_cndmask_b16 v73.h, 0x7fff, v86.h, s2
	v_cndmask_b16 v80.l, 0x7fff, v235.h, s19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v80.h, 0x7fff, v80.h, s20
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_wmma_f32_16x16x16_bf16 v[223:230], v[56:63], v[73:80], v[223:230]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[73:76], v101
	ds_load_b128 v[77:80], v102
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v85, v73, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_cmp_o_f32_e64 s2, v74, v74
	v_cmp_o_f32_e64 s6, v75, v75
	v_cmp_o_f32_e64 s7, v76, v76
	v_add3_u32 v85, v73, v85, 0x7fff
	v_bfe_u32 v73, v74, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s8, v77, v77
	v_cmp_o_f32_e64 s9, v78, v78
	v_cmp_o_f32_e64 s10, v79, v79
	v_cmp_o_f32_e64 s11, v80, v80
	v_add3_u32 v86, v74, v73, 0x7fff
	v_bfe_u32 v73, v75, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v192, v75, v73, 0x7fff
	v_bfe_u32 v73, v76, 16, 1
	v_add3_u32 v193, v76, v73, 0x7fff
	v_bfe_u32 v73, v77, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v194, v77, v73, 0x7fff
	v_bfe_u32 v73, v78, 16, 1
	v_add3_u32 v195, v78, v73, 0x7fff
	v_bfe_u32 v73, v79, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v196, v79, v73, 0x7fff
	v_bfe_u32 v73, v80, 16, 1
	v_add3_u32 v197, v80, v73, 0x7fff
	ds_load_b128 v[73:76], v103
	ds_load_b128 v[77:80], v200
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v198, v73, 16, 1
	v_cmp_o_f32_e64 s12, v73, v73
	v_cmp_o_f32_e64 s13, v74, v74
	v_cmp_o_f32_e64 s14, v75, v75
	v_cmp_o_f32_e64 s16, v76, v76
	v_add3_u32 v198, v73, v198, 0x7fff
	v_bfe_u32 v73, v74, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s17, v77, v77
	v_cmp_o_f32_e64 s18, v78, v78
	v_cmp_o_f32_e64 s19, v79, v79
	v_cmp_o_f32_e64 s20, v80, v80
	v_add3_u32 v199, v74, v73, 0x7fff
	v_bfe_u32 v73, v75, 16, 1
	v_cndmask_b16 v74.l, 0x7fff, v192.h, s6
	v_cndmask_b16 v74.h, 0x7fff, v193.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v231, v75, v73, 0x7fff
	v_bfe_u32 v73, v76, 16, 1
	v_cndmask_b16 v75.l, 0x7fff, v194.h, s8
	v_cndmask_b16 v75.h, 0x7fff, v195.h, s9
	v_add3_u32 v232, v76, v73, 0x7fff
	v_bfe_u32 v73, v77, 16, 1
	v_cndmask_b16 v76.l, 0x7fff, v196.h, s10
	v_cndmask_b16 v76.h, 0x7fff, v197.h, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v233, v77, v73, 0x7fff
	v_bfe_u32 v73, v78, 16, 1
	v_cndmask_b16 v77.l, 0x7fff, v198.h, s12
	v_cndmask_b16 v77.h, 0x7fff, v199.h, s13
	v_add3_u32 v234, v78, v73, 0x7fff
	v_bfe_u32 v73, v79, 16, 1
	v_cndmask_b16 v78.l, 0x7fff, v231.h, s14
	v_cndmask_b16 v78.h, 0x7fff, v232.h, s16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v235, v79, v73, 0x7fff
	v_bfe_u32 v73, v80, 16, 1
	v_cndmask_b16 v79.l, 0x7fff, v233.h, s17
	v_cndmask_b16 v79.h, 0x7fff, v234.h, s18
	v_add3_u32 v80, v80, v73, 0x7fff
	v_cndmask_b16 v73.l, 0x7fff, v85.h, vcc_lo
	v_cndmask_b16 v73.h, 0x7fff, v86.h, s2
	v_cndmask_b16 v80.l, 0x7fff, v235.h, s19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v80.h, 0x7fff, v80.h, s20
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_wmma_f32_16x16x16_bf16 v[223:230], v[64:71], v[73:80], v[223:230]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(1)
	ds_load_b128 v[73:76], v0
	scratch_load_b32 v0, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v85, v73, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v73, v73
	v_cmp_o_f32_e64 s2, v74, v74
	v_cmp_o_f32_e64 s6, v75, v75
	v_cmp_o_f32_e64 s7, v76, v76
	v_add3_u32 v85, v73, v85, 0x7fff
	v_bfe_u32 v73, v74, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v86, v74, v73, 0x7fff
	v_bfe_u32 v73, v75, 16, 1
	v_add3_u32 v192, v75, v73, 0x7fff
	v_bfe_u32 v73, v76, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v193, v76, v73, 0x7fff
	s_waitcnt vmcnt(0)
	ds_load_b128 v[77:80], v0
	scratch_load_b32 v0, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v73, v77, 16, 1
	v_cmp_o_f32_e64 s8, v77, v77
	v_cmp_o_f32_e64 s9, v78, v78
	v_cmp_o_f32_e64 s10, v79, v79
	v_cmp_o_f32_e64 s11, v80, v80
	v_add3_u32 v194, v77, v73, 0x7fff
	v_bfe_u32 v73, v78, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v195, v78, v73, 0x7fff
	v_bfe_u32 v73, v79, 16, 1
	v_add3_u32 v196, v79, v73, 0x7fff
	v_bfe_u32 v73, v80, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v197, v80, v73, 0x7fff
	s_waitcnt vmcnt(0)
	ds_load_b128 v[73:76], v0
	scratch_load_b32 v0, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v198, v73, 16, 1
	v_cmp_o_f32_e64 s12, v73, v73
	v_cmp_o_f32_e64 s13, v74, v74
	v_cmp_o_f32_e64 s14, v75, v75
	v_cmp_o_f32_e64 s16, v76, v76
	v_add3_u32 v198, v73, v198, 0x7fff
	v_bfe_u32 v73, v74, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v199, v74, v73, 0x7fff
	v_bfe_u32 v73, v75, 16, 1
	v_cndmask_b16 v74.l, 0x7fff, v192.h, s6
	v_cndmask_b16 v74.h, 0x7fff, v193.h, s7
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_bpermute_b32 v193, v98, v88
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v231, v75, v73, 0x7fff
	v_bfe_u32 v73, v76, 16, 1
	v_cndmask_b16 v75.l, 0x7fff, v194.h, s8
	v_cndmask_b16 v75.h, 0x7fff, v195.h, s9
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_bpermute_b32 v195, v98, v89
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v232, v76, v73, 0x7fff
	v_cndmask_b16 v76.l, 0x7fff, v196.h, s10
	v_cndmask_b16 v76.h, 0x7fff, v197.h, s11
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_bpermute_b32 v197, v98, v90
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt vmcnt(0)
	ds_load_b128 v[77:80], v0
	.loc	1 676 30                        ; attention_backward.py:676:30
	scratch_load_b32 v0, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v73, v77, 16, 1
	v_cmp_o_f32_e64 s17, v77, v77
	v_cmp_o_f32_e64 s18, v78, v78
	v_cmp_o_f32_e64 s19, v79, v79
	v_cmp_o_f32_e64 s20, v80, v80
	v_add3_u32 v233, v77, v73, 0x7fff
	v_bfe_u32 v73, v78, 16, 1
	v_cndmask_b16 v77.l, 0x7fff, v198.h, s12
	v_cndmask_b16 v77.h, 0x7fff, v199.h, s13
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v234, v78, v73, 0x7fff
	v_bfe_u32 v73, v79, 16, 1
	v_cndmask_b16 v78.l, 0x7fff, v231.h, s14
	v_cndmask_b16 v78.h, 0x7fff, v232.h, s16
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_alignbit_b32 v231, v90, v89, 24
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v232, v89, 20, 4
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v235, v79, v73, 0x7fff
	v_bfe_u32 v73, v80, 16, 1
	v_cndmask_b16 v79.l, 0x7fff, v233.h, s17
	v_cndmask_b16 v79.h, 0x7fff, v234.h, s18
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v233, v90, 0, 8
	v_lshrrev_b32_e32 v234, 8, v90
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v80, v80, v73, 0x7fff
	v_cndmask_b16 v73.l, 0x7fff, v85.h, vcc_lo
	v_cndmask_b16 v73.h, 0x7fff, v86.h, s2
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_bpermute_b32 v85, v186, v87
	ds_bpermute_b32 v86, v98, v87
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v80.l, 0x7fff, v235.h, s19
	v_cndmask_b16 v80.h, 0x7fff, v80.h, s20
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e64 v235.l, v90.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s18, v50, v50
	v_cmp_o_f32_e64 s19, v52, v52
	v_cmp_o_f32_e64 s20, v46, v46
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_wmma_f32_16x16x16_bf16 v[223:230], v[236:243], v[73:80], v[223:230]
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v238, v90, 8, 4
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v236, 24, v90
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v239, v90, 20, 4
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v240, v90, 16, 4
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v80, v223, v84
	v_sub_f32_e32 v79, v224, v84
	v_sub_f32_e32 v78, v225, v84
	v_sub_f32_e32 v77, v226, v84
	v_sub_f32_e32 v76, v227, v84
	v_sub_f32_e32 v75, v228, v84
	v_sub_f32_e32 v74, v229, v84
	v_sub_f32_e32 v73, v230, v84
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v84, v86, v85, s0
	v_cndmask_b32_e64 v192, v85, v86, s0
	ds_bpermute_b32 v86, v186, v88
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v241, v90, 24, 4
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v243, -16, v240
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v85, v193, v86, s0
	v_cndmask_b32_e64 v193, v86, v193, s0
	ds_bpermute_b32 v86, v186, v89
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_wmma_i32_16x16x16_iu4 v[223:230], v[48:49], v[84:85], v[9:16] neg_lo:[1,1,0]
	scratch_load_b64 v[10:11], off, off offset:48 ; 8-byte Folded Reload
	v_dual_mov_b32 v48, v96 :: v_dual_mov_b32 v49, v97
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v194, v195, v86, s0
	v_cndmask_b32_e64 v196, v86, v195, s0
	ds_bpermute_b32 v86, v186, v90
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v195, v197, v86, s0
	v_cndmask_b32_e64 v197, v86, v197, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_wmma_i32_16x16x16_iu4 v[223:230], v[96:97], v[194:195], v[223:230] neg_lo:[1,1,0]
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v194, v87, 0, 8
	v_mov_b32_e32 v97, v174
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s17, 0, v194.l
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[223:230], v[10:11], v[192:193], v[223:230] neg_lo:[1,1,0]
	scratch_load_b64 v[10:11], off, off offset:40 ; 8-byte Folded Reload
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b64 v[192:193], 24, v[87:88]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v193.l, 4, v192.l
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[223:230], v[10:11], v[196:197], v[223:230] neg_lo:[1,1,0]
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v10, s51, v222
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v196, v87, 16, 4
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v13, v225
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v10, s33, v10
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v11, v223
	v_cvt_f32_i32_e32 v12, v224
	v_cvt_f32_i32_e32 v14, v226
	v_mul_f32_e32 v13, v83, v13
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s11, v0, v10
	scratch_load_b32 v0, off, off offset:24 ; 4-byte Folded Reload
	v_cmp_le_i32_e64 s12, v168, v10
	v_cmp_le_i32_e64 s10, v172, v10
	v_cmp_le_i32_e64 s8, v173, v10
	v_cmp_le_i32_e64 s7, v174, v10
	v_cmp_le_i32_e64 s6, v177, v10
	v_cmp_le_i32_e32 vcc_lo, v179, v10
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v15, v227
	v_cvt_f32_i32_e32 v16, v228
	v_cvt_f32_i32_e32 v84, v229
	v_cvt_f32_i32_e32 v85, v230
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v86, 15, v87
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v197, -16, v196
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_dual_mul_f32 v15, v83, v15 :: v_dual_and_b32 v198, 15, v88
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v223, v88, 16, 4
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v11, v83, v11
	v_mul_f32_e32 v14, v83, v14
	v_mul_f32_e32 v84, v83, v84
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v199, -16, v198
	v_or_b32_e32 v224, -16, v223
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v229, 24, v88
	v_bfe_i32 v225, v192, 0, 8
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v192.l, v192.l, 15
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v13, v13, v41, -v81
	v_fma_f32 v14, v14, v72, -v81
	v_fma_f32 v15, v15, v43, -v81
	v_fma_f32 v84, v84, v42, -v81
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s11, s15, s11
	s_and_b32 s10, s15, s10
	s_and_b32 s8, s15, s8
	s_and_b32 s7, s15, s7
	s_and_b32 s6, s15, s6
	s_and_b32 vcc_lo, s15, vcc_lo
	.loc	1 676 30 is_stmt 0              ; attention_backward.py:676:30
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s9, v0, v10
	.loc	1 703 34 is_stmt 1              ; attention_backward.py:703:34
	scratch_load_b32 v0, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v10.l, v87.l, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e32 v10.h, 0
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v12, v83, v12
	v_mul_f32_e32 v16, v83, v16
	v_mul_f32_e32 v83, v83, v85
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s13, 7, v10.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v10.l, v87.h, 15
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v195, -16, v86
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v16, v16, v45, -v81
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s9, s15, s9
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v252.l, v10.h
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s14, 7, v10.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v10.l, v88.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v194, v86, v195, s13
	v_mov_b32_e32 v98, v172
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v254.l, v10.h
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v195, v196, v197, s14
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s2, 7, v10.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v10.l, v88.h, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v196, 8, v87
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v197, v87, 8, 4
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v204.l, v10.h
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v198, v198, v199, s2
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s16, 7, v10.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v86.l, v196.l, 15
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v227, -16, v197
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v10.l, 4, v87.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v205.l, v10.h
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v199, v223, v224, s16
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v223, 8, v88
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s13, 7, v86.l
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v224, v88, 8, 4
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v10.l, v10.l, 15
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v206.l, v10.h
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v86.l, v223.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v197, v197, v227, s13
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v227, -16, v224
	.loc	1 651 60 is_stmt 1              ; attention_backward.py:651:60
	v_or_b32_e32 v226, -16, v10
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v251.l, v10.h
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s2, 7, v86.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v86.l, v229.l, 15
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v253.l, v10.h
	v_mov_b16_e64 v184.l, v10.h
	v_mov_b16_e64 v185.l, v10.h
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v228, v224, v227, s2
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v224, v88, 24, 4
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s2, 7, v86.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_alignbit_b32 v86, v88, v87, 24
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v174.l, v10.h
	v_mov_b16_e64 v201.l, v10.h
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v227, -16, v224
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v202.l, v10.h
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v86, 15, v86
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v203.l, v10.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v230, v224, v227, s2
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s2, 7, v192.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v224, -16, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v224, v86, v224, s2
	.loc	1 615 36 is_stmt 1              ; attention_backward.py:615:36
	v_mov_b16_e32 v86.l, v87.h
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v87, v87, 20, 4
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v86, v86, 0, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v192, -16, v87
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s2, 0, v86.l
	.loc	1 615 36 is_stmt 1              ; attention_backward.py:615:36
	v_mov_b16_e32 v86.l, v88.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v87, v87, v192, s2
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v86, v86, 0, 8
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v192, v88, 20, 4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v87, v87
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s2, 0, v86.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v227, -16, v192
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v86, v192, v227, s2
	.loc	1 623 39 is_stmt 1              ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v227, 16, v82
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v82, v194
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v192, v10, v226, s17
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v237, 15, v90
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v86, v86
	v_mul_f32_e32 v87, v227, v87
	v_mul_f32_e32 v82, v227, v82
	v_cvt_f32_i32_e32 v192, v192
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v242, -16, v237
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v86, v227, v86
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v87, 0, v87, s3
	v_cndmask_b32_e64 v194, 0, v82, s3
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v82.l, 4, v196.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v192, v227, v192
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v86, 0, v86, s3
	v_cmp_o_f32_e64 s16, v87, v87
	v_mov_b16_e64 v10.l, v194.h
	v_cmp_o_f32_e64 s13, v194, v194
	v_cndmask_b32_e64 v192, 0, v192, s3
	v_cmp_o_f32_e64 s17, v86, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_and_b32_e32 v226, 1, v10
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v10.l, v82.l, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v82, v196, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s14, v192, v192
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v196, -16, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s2, 0, v82.l
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_add3_u32 v82, v194, v226, 0x7fff
	v_mov_b16_e64 v194.h, v10.h
	v_mov_b16_e64 v194.l, v192.h
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v85, v10, v196, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v194, 1, v194
	v_add3_u32 v192, v192, v194, 0x7fff
	v_mov_b16_e64 v194.h, v10.h
	v_mov_b16_e64 v194.l, v87.h
	v_cndmask_b16 v192.l, 0x7fff, v82.h, s13
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v82, v197
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v192.h, 0x7fff, v192.h, s14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v194, 1, v194
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v82, v227, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v87, v87, v194, 0x7fff
	v_mov_b16_e64 v194.h, v10.h
	v_mov_b16_e64 v194.l, v86.h
	v_cndmask_b32_e64 v82, 0, v82, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v194, 1, v194
	v_mov_b16_e32 v10.l, v82.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s13, v82, v82
	v_add3_u32 v86, v86, v194, 0x7fff
	v_cndmask_b16 v194.h, 0x7fff, v87.h, s16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v87, 1, v10
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s16, v190, v190
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v82, v82, v87, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v87, v195
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v87, v227, v87
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v87, 0, v87, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v10.l, v87.h
	v_cmp_o_f32_e64 s2, v87, v87
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v195, 1, v10
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v10.l, v193.l, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v193.l, 0x7fff, v82.h, s13
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v196, v11, v0, -v81
	scratch_load_b32 v0, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v11, v87, v195, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v11.l, v225.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v194.l, 0x7fff, v11.h, s2
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s14, 0, v11.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v11, v224
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v11, v227, v11
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v82, 0, v11, s3
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v11.l, 4, v88.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s13, v82, v82
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v12, v12, v0, -v81
	v_fma_f32 v81, v83, v44, -v81
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v83, -16, v10
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v0.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v83, v10, v83, s14
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v10.l, v82.h
	v_and_b32_e32 v87, 1, v10
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v10.l, v11.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v11, v85
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v85.h, v10.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v82, v82, v87, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v11, v227, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v195.l, 0x7fff, v82.h, s13
	v_cndmask_b32_e64 v11, 0, v11, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v85.l, v11.h
	v_cmp_o_f32_e64 s2, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v85, 1, v85
	v_add3_u32 v11, v11, v85, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v85, v88, 0, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v193.h, 0x7fff, v11.h, s2
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v11.l, v85.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v85, -16, v10
	.loc	1 676 21 is_stmt 1              ; attention_backward.py:676:21
	s_and_b32 s2, s15, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s14, 0, v11.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v11, v198
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v198.h, 0x7fff, v86.h, s17
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s17, v54, v54
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v85, v10, v85, s14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v11, v227, v11
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v82, 0, v11, s3
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v11.l, 4, v223.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v10.l, v82.h
	v_cmp_o_f32_e64 s13, v82, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v87, 1, v10
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v10.l, v11.l, 15
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v11, v196
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v225, 0, v11, s2
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v11, v225, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v11, s47, v11
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v80, v11, 16, 1
	v_cmp_o_f32_e64 s2, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v80, v11, v80, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v11, v12
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v224, 0, v11, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v11, v224, v79
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v11, s47, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v12, v11, 16, 1
	v_cmp_o_f32_e64 s11, v11, v11
	v_add3_u32 v79, v11, v12, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v11, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v11, 0, v11, s10
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v12, v11, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v12, s47, v12
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v13, v12, 16, 1
	v_cmp_o_f32_e64 s10, v12, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v78, v12, v13, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v12, v14
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v12, 0, v12, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v13, v12, v77
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v13, s47, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v14, v13, 16, 1
	v_cmp_o_f32_e64 s9, v13, v13
	v_add3_u32 v77, v13, v14, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v13, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v226, 0, v13, s8
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v13, v226, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v13, s47, v13
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v14, v13, 16, 1
	v_cmp_o_f32_e64 s8, v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v76, v13, v14, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v13, v16
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v13, 0, v13, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v14, v13, v75
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v14, s47, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v15, v14, 16, 1
	v_cmp_o_f32_e64 s7, v14, v14
	v_add3_u32 v75, v14, v15, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v14, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v14, 0, v14, s6
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v15, v14, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v15, s47, v15
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v16, v15, 16, 1
	v_cmp_o_f32_e64 s6, v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_add3_u32 v74, v15, v16, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v15, v81
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v81, -16, v10
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v15, 0, v15, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v16, v15, v73
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v16, s47, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v73, v16, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_add3_u32 v73, v16, v73, 0x7fff
	.loc	1 615 36 is_stmt 1              ; attention_backward.py:615:36
	v_bfe_i32 v16, v223, 0, 8
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v223, 0, v170
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s12, 0, v16.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v16, v82, v87, 0x7fff
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v16.l, 0x7fff, v80.h, s2
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v82, v83
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v83.h, v10.h
	v_cndmask_b16 v196.l, 0x7fff, v16.h, s13
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v16.h, 0x7fff, v76.h, s8
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v223, v16
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v16.l, 0x7fff, v79.h, s11
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v82, v227, v82
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s11, v120, v120
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v223, v16 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v16.h, 0x7fff, v75.h, s7
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v95, v16
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v16.l, 0x7fff, v78.h, s10
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v75.h, v10.h
	v_cndmask_b32_e64 v82, 0, v82, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v95, v16 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v16.h, 0x7fff, v74.h, s6
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v93, v16
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v16.l, 0x7fff, v77.h, s9
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v83.l, v82.h
	v_cmp_o_f32_e64 s14, v82, v82
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v93, v16 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v16.h, 0x7fff, v73.h, vcc_lo
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v209, v16
	ds_store_b16_d16_hi v209, v16 offset:512
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v16, v228
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v73, v10, v81, s12
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v83, 1, v83
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v16, v227, v16
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v228, v89, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v82, v82, v83, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s9, v14, v14
	v_cmp_o_f32_e64 s10, v15, v15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v16, 0, v16, s3
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s12, v118, v118
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v195.h, 0x7fff, v82.h, s14
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s13, v207, v207
	v_cmp_o_f32_e64 s14, v210, v210
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v10.l, v16.h
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v74, 1, v10
	v_add3_u32 v16, v16, v74, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v74, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v197.l, 0x7fff, v16.h, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v74, v227, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v74, 0, v74, s3
	v_mov_b16_e32 v75.l, v74.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v74, v74
	v_and_b32_e32 v75, 1, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v74, v74, v75, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v75, v199
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v196.h, 0x7fff, v74.h, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v75, v227, v75
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v75, 0, v75, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v10.l, v75.h
	v_cmp_o_f32_e64 s6, v75, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v76, 1, v10
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v10.l, 4, v229.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v75, v75, v76, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v76, v229, 0, 8
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v229, v89, 8, 4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v198.l, 0x7fff, v75.h, s6
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v16.l, v76.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v76, -16, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s7, 0, v16.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v16, v73
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v73.h, v10.h
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v74, v10, v76, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v16, v227, v16
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v16, 0, v16, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v73.l, v16.h
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v73, 1, v73
	v_add3_u32 v16, v16, v73, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v73, v230
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e64 v230.l, v89.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v197.h, 0x7fff, v16.h, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v73, v227, v73
	v_cvt_f32_i32_e32 v16, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v73, 0, v73, s3
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v16, v227, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v10.l, v73.h
	v_cmp_o_f32_e64 s2, v73, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v16, 0, v16, s3
	v_and_b32_e32 v75, 1, v10
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v10.l, v89.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v16, v16
	v_add3_u32 v73, v73, v75, 0x7fff
	v_mov_b16_e32 v73.l, v16.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v199.l, 0x7fff, v73.h, s2
	v_mov_b16_e32 v73.h, v10.h
	v_and_b32_e32 v73, 1, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v16, v16, v73, 0x7fff
	v_cndmask_b16 v199.h, 0x7fff, v16.h, vcc_lo
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v16, 0, v180
	ds_load_b128 v[81:84], v16
	ds_load_b128 v[85:88], v99
	ds_load_b128 v[73:76], v244
	ds_load_b128 v[77:80], v212
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v175, v[192:195]
	ds_store_b128 v175, v[196:199] offset:16
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v197, 15, v89
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v198, 8, v89
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v192.l, v89.h, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_bfe_u32 v199, v89, 16, 4
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v193.h, 4, v90.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v193.l, v90.l, 15
	v_and_b16 v194.l, v90.h, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b64 v[195:196], 24, v[89:90]
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v90, -16, v197
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v10.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v89.h, v198.l, 15
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v196, -16, v199
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s2, 7, v192.l
	v_cmp_lt_u16_e64 s7, 7, v194.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v194, v197, v90, vcc_lo
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v90, -16, v229
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v89.h
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v89.h, v234.l, 15
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v192.h, 4, v89.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v244, v195, 0, 8
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v89.l, 4, v195.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v10.l, v195.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v195, v199, v196, s2
	v_cndmask_b32_e32 v196, v229, v90, vcc_lo
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v90, -16, v238
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v89.h
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v89.h, v236.l, 15
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s6, 7, v193.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v195, v195
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v199, v240, v243, s7
	v_cndmask_b32_e32 v229, v238, v90, vcc_lo
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v90, -16, v241
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v89.h
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v197, v237, v242, s6
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_mul_f32_e32 v195, v227, v195
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v89.h, 4, v198.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v199, v199
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_dual_cndmask_b32 v237, v241, v90 :: v_dual_and_b32 v90, 15, v231
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v10.l
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b32_e64 v195, 0, v195, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v199, v227, v199
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v231, -16, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v199, 0, v199, s4
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v231, v90, v231, vcc_lo
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v90, v230, 0, 8
	v_bfe_i32 v230, v235, 0, 8
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v194, v194
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v10.l, v90.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v90, -16, v232
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_mul_f32_e32 v194, v227, v194
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v10.l
	v_mov_b16_e64 v10.l, v230.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v230, -16, v239
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b32_e64 v194, 0, v194, s4
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v90, v232, v90, vcc_lo
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v232.h, v10.h
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v10.l
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v10.l, v192.h, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v90, v90
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v230, v239, v230, vcc_lo
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v192, -16, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_mul_f32_e32 v90, v227, v90
	v_cvt_f32_i32_e32 v230, v230
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v90, 0, v90, s4
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v230, v227, v230
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v232.l, v90.h
	v_cmp_o_f32_e32 vcc_lo, v90, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v230, 0, v230, s4
	v_and_b32_e32 v232, 1, v232
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v230, v230
	v_add3_u32 v90, v90, v232, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v90.l, v228.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v232.h, v10.h
	v_mov_b16_e64 v232.l, v230.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s6, 0, v90.l
	.loc	1 651 34 is_stmt 0              ; attention_backward.py:651:34
	v_cndmask_b32_e64 v228, v10, v192, s6
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_mov_b16_e64 v10.l, v194.h
	v_cmp_o_f32_e64 s6, v194, v194
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v192, 1, v10
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v10.l, v89.h, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v192, v194, v192, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v194, v198, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v194.h, 0x7fff, v90.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v198, -16, v10
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v192.l, 0x7fff, v192.h, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v90.l, v194.l
	v_cmp_gt_i16_e64 s7, 0, v90.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v90, v196
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v196, v10, v198, s7
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v90, v227, v90
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s7, v195, v195
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v196, v196
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v90, 0, v90, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v196, v227, v196
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v10.l, v90.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e32 vcc_lo, v90, v90
	v_cndmask_b32_e64 v196, 0, v196, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v198, 1, v10
	v_mov_b16_e64 v10.l, v195.h
	v_add3_u32 v90, v90, v198, 0x7fff
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v198, 1, v10
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v10.l, v89.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v89, v228
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v228.h, v10.h
	v_cndmask_b16 v193.l, 0x7fff, v90.h, vcc_lo
	v_add3_u32 v195, v195, v198, 0x7fff
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v198, -16, v10
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v89, v227, v89
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v196, v196
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v194.l, 0x7fff, v195.h, s7
	v_cndmask_b32_e64 v89, 0, v89, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e64 v228.l, v89.h
	v_cmp_o_f32_e64 s6, v89, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v228, 1, v228
	v_add3_u32 v89, v89, v228, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v89.l, v244.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v192.h, 0x7fff, v89.h, s6
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s8, 0, v89.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v89, v231
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v232, 1, v232
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v90, v10, v198, s8
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v89, v227, v89
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v198.h, v10.h
	v_mov_b16_e64 v198.l, v196.h
	v_add3_u32 v230, v230, v232, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v90, v90
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v89, 0, v89, s4
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s8, v12, v12
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v198, 1, v198
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v90, v227, v90
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v10.l, v89.h
	v_cmp_o_f32_e64 s6, v89, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v196, v196, v198, 0x7fff
	v_cndmask_b32_e64 v90, 0, v90, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v195, 1, v10
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v10.l, v193.h, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v193.h, 0x7fff, v196.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v89, v89, v195, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v89.l, v233.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v198, -16, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b16 v195.l, 0x7fff, v89.h, s6
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s7, 0, v89.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v89, v197
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v197, v10, v198, s7
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v89, v227, v89
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s7, v90, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v197, v197
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v196, 0, v89, s4
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v89.l, 4, v234.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v197, v227, v197
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e64 v10.l, v196.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s6, v196, v196
	v_cndmask_b32_e64 v197, 0, v197, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b32_e32 v198, 1, v10
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v10.l, v89.l, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v89, v234, 0, 8
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v228, -16, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v89.l
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_add3_u32 v89, v196, v198, 0x7fff
	v_mov_b16_e64 v196.h, v10.h
	v_mov_b16_e64 v196.l, v90.h
	v_cndmask_b16 v198.h, 0x7fff, v230.h, s2
	v_and_b32_e32 v196, 1, v196
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v90, v90, v196, 0x7fff
	v_cndmask_b16 v196.l, 0x7fff, v89.h, s6
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v89, v229
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s6, v199, v199
	v_cndmask_b16 v195.h, 0x7fff, v90.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_dual_cndmask_b32 v90, v10, v228 :: v_dual_mul_f32 v89, v227, v89
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v197, v197
	v_cndmask_b32_e64 v89, 0, v89, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v10.l, v89.h
	v_cmp_o_f32_e64 s2, v89, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v228, 1, v10
	v_mov_b16_e64 v10.l, v199.h
	v_add3_u32 v89, v89, v228, 0x7fff
	v_mov_b16_e64 v228.h, v10.h
	v_mov_b16_e64 v228.l, v197.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v228, 1, v228
	v_add3_u32 v197, v197, v228, 0x7fff
	v_and_b32_e32 v228, 1, v10
	v_cndmask_b16 v197.l, 0x7fff, v89.h, s2
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v10.l, 4, v236.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v196.h, 0x7fff, v197.h, vcc_lo
	v_add3_u32 v199, v199, v228, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v228, v236, 0, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v198.l, 0x7fff, v199.h, s6
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e64 v89.l, v228.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v228, -16, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s7, 0, v89.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v89, v90
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v90.h, v10.h
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v199, v10, v228, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v89, v227, v89
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s7, v13, v13
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v199, v199
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v89, 0, v89, s4
	v_mov_b16_e32 v90.l, v89.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v89, v89
	v_and_b32_e32 v90, 1, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v89, v89, v90, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v90, v237
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v197.h, 0x7fff, v89.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v90, v227, v90
	v_mul_f32_e32 v227, v227, v199
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v90, 0, v90, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v89, 0, v227, s4
	v_mov_b16_e32 v10.l, v90.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s2, v90, v90
	v_cmp_o_f32_e32 vcc_lo, v89, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v228, 1, v10
	v_add3_u32 v90, v90, v228, 0x7fff
	v_mov_b16_e32 v90.l, v89.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v199.l, 0x7fff, v90.h, s2
	v_mov_b16_e32 v90.h, v10.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s2, v226, v226
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v90, 1, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v89, v89, v90, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v90.l, v10.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v199.h, 0x7fff, v89.h, vcc_lo
	ds_store_b128 v175, v[192:195] offset:32
	ds_store_b128 v175, v[196:199] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v228, v178 offset:256
	ds_load_u16_d16 v227, v178
	ds_load_u16_d16 v229, v178 offset:512
	ds_load_u16_d16 v230, v178 offset:768
	ds_load_u16_d16 v231, v178 offset:1024
	ds_load_u16_d16 v233, v178 offset:1536
	ds_load_u16_d16 v232, v178 offset:1280
	ds_load_u16_d16 v239, v178 offset:1088
	ds_load_u16_d16 v238, v178 offset:832
	ds_load_u16_d16 v234, v178 offset:1792
	ds_load_u16_d16 v243, v178 offset:2048
	ds_load_u16_d16 v244, v178 offset:2304
	ds_load_u16_d16 v245, v178 offset:2560
	ds_load_u16_d16 v247, v178 offset:3072
	ds_load_u16_d16 v194, v178 offset:2624
	ds_load_u16_d16 v193, v178 offset:2368
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v239, v178 offset:1216
	ds_load_u16_d16_hi v229, v178 offset:640
	ds_load_u16_d16_hi v230, v178 offset:896
	ds_load_u16_d16_hi v231, v178 offset:1152
	ds_load_u16_d16 v240, v178 offset:1344
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v194, v178 offset:2752
	ds_load_u16_d16_hi v233, v178 offset:1664
	ds_load_u16_d16_hi v232, v178 offset:1408
	ds_load_u16_d16 v235, v178 offset:64
	ds_load_u16_d16_hi v228, v178 offset:384
	ds_load_u16_d16_hi v227, v178 offset:128
	ds_load_u16_d16 v237, v178 offset:576
	ds_load_u16_d16 v236, v178 offset:320
	ds_load_u16_d16_hi v234, v178 offset:1920
	ds_load_u16_d16 v241, v178 offset:1600
	ds_load_u16_d16 v192, v178 offset:2112
	ds_load_u16_d16 v242, v178 offset:1856
	ds_load_u16_d16_hi v238, v178 offset:960
	ds_load_u16_d16 v250, v178 offset:3840
	ds_load_u16_d16 v248, v178 offset:3328
	ds_load_u16_d16 v246, v178 offset:2816
	ds_load_u16_d16 v249, v178 offset:3584
	ds_load_u16_d16 v199, v178 offset:3904
	ds_load_u16_d16 v196, v178 offset:3136
	ds_load_u16_d16 v198, v178 offset:3648
	ds_load_u16_d16 v197, v178 offset:3392
	ds_load_u16_d16_hi v247, v178 offset:3200
	ds_load_u16_d16 v195, v178 offset:2880
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v193, v178 offset:2496
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v240, v178 offset:1472
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v241, v178 offset:1728
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v242, v178 offset:1984
	ds_load_u16_d16_hi v243, v178 offset:2176
	ds_load_u16_d16_hi v192, v178 offset:2240
	ds_load_u16_d16_hi v235, v178 offset:192
	ds_load_u16_d16_hi v237, v178 offset:704
	ds_load_u16_d16_hi v236, v178 offset:448
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v248, v178 offset:3456
	ds_load_u16_d16_hi v244, v178 offset:2432
	ds_load_u16_d16_hi v245, v178 offset:2688
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v246, v178 offset:2944
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v249, v178 offset:3712
	ds_load_u16_d16_hi v250, v178 offset:3968
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v199, v178 offset:4032
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v195, v178 offset:3008
	ds_load_u16_d16_hi v196, v178 offset:3264
	ds_load_u16_d16_hi v198, v178 offset:3776
	ds_load_u16_d16_hi v197, v178 offset:3520
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[33:40], v[227:234], v[81:88], v[33:40]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v225, v225
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v227.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v228, v54, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[235:242], v[81:88], v[25:32]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v231.l, v10.h
	v_mov_b16_e64 v232.l, v10.h
	v_mov_b16_e64 v233.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v239, v54, v228, 0x7fff
	v_bfe_u32 v228, v50, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v234.l, v10.h
	v_mov_b16_e64 v235.l, v10.h
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[33:40], v[243:250], v[73:80], v[33:40]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v236.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v240, v50, v228, 0x7fff
	v_bfe_u32 v228, v52, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v237.l, v10.h
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[192:199], v[73:80], v[25:32]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v73, v225, 16, 1
	v_dual_mov_b32 v117, v40 :: v_dual_mov_b32 v116, v39
	v_dual_mov_b32 v115, v38 :: v_dual_mov_b32 v114, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v73, v225, v73, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v73.l, v10.h
	v_dual_mov_b32 v113, v36 :: v_dual_mov_b32 v112, v35
	v_mov_b32_e32 v111, v34
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v73.h, 0x7fff, v73.h, vcc_lo
	v_mov_b32_e32 v110, v33
	v_dual_mov_b32 v40, v32 :: v_dual_mov_b32 v39, v31
	v_mov_b32_e32 v38, v30
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v74, v225, v73
	v_dual_mov_b32 v37, v29 :: v_dual_mov_b32 v36, v28
	v_dual_mov_b32 v35, v27 :: v_dual_mov_b32 v34, v26
	v_mov_b32_e32 v33, v25
	v_mov_b32_e32 v25, v64
	v_mov_b32_e32 v29, v68
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_bfe_u32 v75, v74, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v74, v74
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v76.l, v10.h
	v_mov_b32_e32 v31, v70
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_bfe_u32 v192, v166, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v74, v74, v75, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v75, v226, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v225.l, v10.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v199.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v193, v166, v192, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v10.l, 0x7fff, v74.h, vcc_lo
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v75, v226, v75, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v164, v164
	v_dual_mov_b32 v26, v65 :: v_dual_mov_b32 v27, v66
	v_mov_b32_e32 v28, v67
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v76.h, 0x7fff, v75.h, s2
	v_cmp_o_f32_e64 s2, v224, v224
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v223, v73
	ds_store_b16_d16_hi v223, v76 offset:512
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v75, v226, v76
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v73, v13, 16, 1
	v_bfe_u32 v76, v12, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v226.l, v10.h
	v_mov_b32_e32 v30, v69
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_bfe_u32 v77, v75, 16, 1
	v_cmp_o_f32_e64 s6, v75, v75
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_add3_u32 v73, v13, v73, 0x7fff
	v_add3_u32 v76, v12, v76, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v241, v52, v228, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v75, v75, v77, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v77, v224, 16, 1
	v_cndmask_b16 v90.h, 0x7fff, v73.h, s7
	v_bfe_u32 v73, v11, 16, 1
	v_cmp_o_f32_e64 s7, v11, v11
	v_cndmask_b16 v225.h, 0x7fff, v76.h, s8
	v_add3_u32 v77, v224, v77, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v77.l, v10.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v73, v11, v73, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v13, v13, v90 :: v_dual_sub_f32 v12, v12, v225
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v77.h, 0x7fff, v77.h, s2
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v228, v46, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v196.l, v10.h
	v_mov_b16_e64 v198.l, v10.h
	v_mov_b16_e64 v192.l, v10.h
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v78, v224, v77
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v95, v77
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v77, v14, 16, 1
	v_cndmask_b16 v224.h, 0x7fff, v73.h, s7
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e64 v224.l, v10.h
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_bfe_u32 v79, v78, 16, 1
	v_cmp_o_f32_e64 s2, v78, v78
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_add3_u32 v77, v14, v77, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v242, v46, v228, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v11, v11, v224
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_add3_u32 v89, v78, v79, 0x7fff
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_bfe_u32 v78, v15, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v89.l, 0x7fff, v75.h, s6
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v226.h, 0x7fff, v77.h, s9
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s6, v13, v13
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s9, v124, v124
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v78, v15, v78, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v193.l, v10.h
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v14, v14, v226
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v194.l, v10.h
	v_mov_b16_e64 v195.l, v10.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v227.h, 0x7fff, v78.h, s10
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v95, v90 offset:512
	ds_store_b16_d16_hi v93, v224
	ds_store_b16_d16_hi v93, v226 offset:512
	ds_store_b16_d16_hi v209, v225
	ds_store_b16_d16_hi v209, v227 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[81:84], v16
	ds_load_b128 v[85:88], v99
	ds_load_b128 v[73:76], v106
	ds_load_b128 v[77:80], v212
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v223, v10
	ds_store_b16 v223, v89 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v10.l, 0x7fff, v89.h, s2
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v89, v164, 16, 1
	v_cmp_o_f32_e64 s2, v166, v166
	v_bfe_u32 v223, v150, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v15, v15, v227
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v90, v122, 16, 1
	v_add3_u32 v89, v164, v89, 0x7fff
	v_cndmask_b16 v193.h, 0x7fff, v193.h, s2
	v_cmp_o_f32_e64 s2, v150, v150
	v_add3_u32 v223, v150, v223, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s8, v15, v15
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v192.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v136, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v136, v136
	v_cndmask_b16 v232.h, 0x7fff, v223.h, s2
	v_bfe_u32 v223, v120, 16, 1
	v_bfe_u32 v224, v118, 16, 1
	v_add3_u32 v89, v136, v89, 0x7fff
	v_bfe_u32 v225, v207, 16, 1
	v_bfe_u32 v226, v210, 16, 1
	v_cmp_o_f32_e64 s10, v122, v122
	v_add3_u32 v90, v122, v90, 0x7fff
	v_cndmask_b16 v194.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v138, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v138, v138
	v_add3_u32 v223, v120, v223, 0x7fff
	v_add3_u32 v224, v118, v224, 0x7fff
	v_add3_u32 v225, v207, v225, 0x7fff
	v_add3_u32 v89, v138, v89, 0x7fff
	v_add3_u32 v226, v210, v226, 0x7fff
	v_bfe_u32 v227, v190, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v197.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v174.h, 0x7fff, v90.h, s10
	v_cndmask_b16 v195.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v140, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v140, v140
	v_add3_u32 v227, v190, v227, 0x7fff
	v_cndmask_b16 v230.h, 0x7fff, v224.h, s12
	v_cndmask_b16 v229.h, 0x7fff, v225.h, s13
	v_add3_u32 v89, v140, v89, 0x7fff
	v_cndmask_b16 v228.h, 0x7fff, v226.h, s14
	v_cndmask_b16 v226.h, 0x7fff, v239.h, s17
	v_cndmask_b16 v225.h, 0x7fff, v240.h, s18
	v_cndmask_b16 v224.h, 0x7fff, v241.h, s19
	v_cndmask_b16 v196.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v142, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v142, v142
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v238.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v227.h, 0x7fff, v227.h, s16
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v255, v136, v194
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v89, v142, v89, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v248.l, v10.h
	v_mov_b16_e64 v250.l, v10.h
	v_mov_b32_e32 v94, v169
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v150, v150, v232
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v197.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v144, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v144, v144
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v232.l, v229.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v247.l, v10.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v172, v142, v197
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v89, v144, v89, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v249.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s10, v123, v123
	v_cmp_o_f32_e64 s12, v119, v119
	v_cmp_o_f32_e64 s13, v208, v208
	v_cndmask_b16 v198.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v146, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v146, v146
	v_cmp_o_f32_e64 s14, v211, v211
	v_cmp_o_f32_e64 s16, v191, v191
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v169, v144, v198
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v89, v146, v89, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v198.l, v174.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s17, v55, v55
	v_cmp_o_f32_e64 s18, v51, v51
	v_cmp_o_f32_e64 s19, v53, v53
	v_cndmask_b16 v199.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v148, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v148, v148
	v_mov_b32_e32 v32, v71
	v_mov_b32_e32 v71, v63
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s2, v12, v12
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v89, v148, v89, 0x7fff
	v_mov_b32_e32 v69, v61
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s7, v14, v14
	v_mov_b32_e32 v70, v62
	v_mov_b32_e32 v68, v60
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v231.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v152, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v152, v152
	v_dual_mov_b32 v67, v59 :: v_dual_mov_b32 v66, v58
	v_mov_b32_e32 v65, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v89, v152, v89, 0x7fff
	v_mov_b32_e32 v64, v56
	v_dual_mov_b32 v56, v213 :: v_dual_mov_b32 v57, v214
	v_mov_b32_e32 v58, v215
	v_cndmask_b16 v233.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v154, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v154, v154
	v_dual_mov_b32 v59, v216 :: v_dual_mov_b32 v60, v217
	v_mov_b32_e32 v61, v218
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v89, v154, v89, 0x7fff
	v_dual_mov_b32 v62, v219 :: v_dual_mov_b32 v63, v220
	v_dual_mov_b32 v217, v181 :: v_dual_mov_b32 v218, v182
	v_cndmask_b16 v234.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v156, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v156, v156
	v_mov_b32_e32 v219, v183
	v_dual_mov_b32 v213, v176 :: v_dual_mov_b32 v176, v177
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v89, v156, v89, 0x7fff
	v_cndmask_b16 v177.h, 0x7fff, v223.h, s11
	v_cndmask_b16 v223.h, 0x7fff, v242.h, s20
	v_dual_mov_b32 v220, v103 :: v_dual_mov_b32 v103, v102
	v_cndmask_b16 v235.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v158, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v158, v158
	v_dual_mov_b32 v102, v101 :: v_dual_mov_b32 v101, v187
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v187, v146, v199
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v89, v158, v89, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v199.l, v177.h
	v_dual_mov_b32 v214, v179 :: v_dual_sub_f32 v179, v140, v196
	v_mov_b32_e32 v215, v180
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v236.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v160, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v160, v160
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v180, v138, v195
	v_sub_f32_e32 v164, v164, v192
	v_mov_b32_e32 v108, v44
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v89, v160, v89, 0x7fff
	v_mov_b32_e32 v44, v42
	v_dual_mov_b32 v42, v45 :: v_dual_mov_b32 v45, v43
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v166, v166, v193
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v237.h, 0x7fff, v89.h, vcc_lo
	v_bfe_u32 v89, v162, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v162, v162
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v140, v158, v236
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v236.l, v225.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v138, v160, v237
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v89, v162, v89, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v237.l, v224.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v142, v156, v235
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v235.l, v226.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v146, v152, v233
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v238.h, 0x7fff, v89.h, vcc_lo
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v89, v11, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v233.l, v228.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v148, v148, v231
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v231.l, v230.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v11, v11, v89, 0x7fff
	v_bfe_u32 v89, v12, 16, 1
	v_dual_mov_b32 v43, v72 :: v_dual_sub_f32 v136, v162, v238
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v238.l, v223.h
	v_mov_b32_e32 v72, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v12, v12, v89, 0x7fff
	v_bfe_u32 v89, v13, 16, 1
	v_dual_mov_b32 v41, v200 :: v_dual_sub_f32 v144, v154, v234
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v234.l, v227.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s11, v121, v121
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v13, v13, v89, 0x7fff
	v_bfe_u32 v89, v14, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v152, v119, 16, 1
	v_bfe_u32 v154, v211, 16, 1
	v_bfe_u32 v156, v55, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v11.l, 0x7fff, v13.h, s6
	v_add3_u32 v14, v14, v89, 0x7fff
	v_bfe_u32 v89, v15, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v95, v10
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v10.l, 0x7fff, v11.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v95, v11 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v11.l, 0x7fff, v14.h, s7
	v_add3_u32 v15, v15, v89, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v13, v130, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v93, v10
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v10.l, 0x7fff, v12.h, s2
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v93, v11 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v11.l, 0x7fff, v15.h, s8
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v209, v10
	ds_store_b16 v209, v11 offset:512
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v11, v134, 16, 1
	v_bfe_u32 v12, v132, 16, 1
	v_bfe_u32 v14, v128, 16, 1
	v_bfe_u32 v15, v126, 16, 1
	v_bfe_u32 v89, v124, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v134, v134
	v_cmp_o_f32_e64 s2, v132, v132
	v_cmp_o_f32_e64 s6, v130, v130
	v_cmp_o_f32_e64 s7, v128, v128
	v_cmp_o_f32_e64 s8, v126, v126
	v_add3_u32 v11, v134, v11, 0x7fff
	v_add3_u32 v12, v132, v12, 0x7fff
	v_add3_u32 v13, v130, v13, 0x7fff
	v_add3_u32 v14, v128, v14, 0x7fff
	v_add3_u32 v15, v126, v15, 0x7fff
	v_add3_u32 v89, v124, v89, 0x7fff
	v_cndmask_b16 v181.h, 0x7fff, v11.h, vcc_lo
	v_cndmask_b16 v0.h, 0x7fff, v12.h, s2
	v_cndmask_b16 v182.h, 0x7fff, v13.h, s6
	v_cndmask_b16 v183.h, 0x7fff, v14.h, s7
	v_cndmask_b16 v184.h, 0x7fff, v15.h, s8
	v_cndmask_b16 v185.h, 0x7fff, v89.h, s9
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[239:242], v16
	ds_load_b128 v[243:246], v99
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v196.l, v184.h
	v_mov_b16_e64 v197.l, v185.h
	v_mov_b16_e64 v195.l, v183.h
	v_mov_b16_e64 v194.l, v182.h
	v_mov_b16_e64 v193.l, v0.h
	v_mov_b16_e64 v192.l, v181.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v11, v165, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v165, v165
	v_bfe_u32 v12, v167, 16, 1
	v_cmp_o_f32_e64 s2, v167, v167
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[192:199], v[81:88], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v11, v165, v11, 0x7fff
	v_mov_b32_e32 v99, v173
	v_add3_u32 v12, v167, v12, 0x7fff
	v_mov_b32_e32 v216, v92
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[231:238], v[73:80], v[1:8]
	v_mov_b32_e32 v92, v168
	v_mov_b32_e32 v96, v170
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s6, v131, v131
	v_cmp_o_f32_e64 s7, v129, v129
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[192:199], v[239:246], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v192.h, 0x7fff, v11.h, vcc_lo
	v_bfe_u32 v11, v137, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v137, v137
	v_cndmask_b16 v193.h, 0x7fff, v12.h, s2
	v_bfe_u32 v12, v151, 16, 1
	v_cmp_o_f32_e64 s2, v151, v151
	v_add3_u32 v11, v137, v11, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v192.l, v10.h
	v_mov_b16_e64 v193.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v12, v151, v12, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v194.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v194.h, 0x7fff, v11.h, vcc_lo
	v_bfe_u32 v11, v139, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v139, v139
	v_cndmask_b16 v248.h, 0x7fff, v12.h, s2
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v195.l, v10.h
	v_mov_b16_e64 v196.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v11, v139, v11, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v197.l, v10.h
	v_mov_b16_e64 v198.l, v10.h
	v_mov_b16_e64 v199.l, v10.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v160, v165, v192
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v195.h, 0x7fff, v11.h, vcc_lo
	v_bfe_u32 v11, v141, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v141, v141
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v162, v167, v193 :: v_dual_sub_f32 v165, v137, v194
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_sub_f32_e32 v167, v139, v195
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v11, v141, v11, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v89, v151, v248
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v137, v135, 16, 1
	v_bfe_u32 v139, v133, 16, 1
	v_bfe_u32 v151, v121, 16, 1
	v_cndmask_b16 v196.h, 0x7fff, v11.h, vcc_lo
	v_bfe_u32 v11, v143, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v143, v143
	v_cmp_o_f32_e64 s2, v133, v133
	v_cmp_o_f32_e64 s8, v127, v127
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v173, v141, v196
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v11, v143, v11, 0x7fff
	v_bfe_u32 v141, v131, 16, 1
	v_cmp_o_f32_e64 s9, v125, v125
	v_add3_u32 v137, v135, v137, 0x7fff
	v_add3_u32 v139, v133, v139, 0x7fff
	v_cndmask_b16 v197.h, 0x7fff, v11.h, vcc_lo
	v_bfe_u32 v11, v145, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v145, v145
	v_add3_u32 v141, v131, v141, 0x7fff
	v_add3_u32 v151, v121, v151, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v168, v143, v197
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v11, v145, v11, 0x7fff
	v_bfe_u32 v143, v129, 16, 1
	v_bfe_u32 v158, v53, 16, 1
	v_cmp_o_f32_e64 s20, v47, v47
	v_add3_u32 v152, v119, v152, 0x7fff
	v_cndmask_b16 v198.h, 0x7fff, v11.h, vcc_lo
	v_bfe_u32 v11, v147, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v147, v147
	v_add3_u32 v143, v129, v143, 0x7fff
	v_add3_u32 v154, v211, v154, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v170, v145, v198
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v11, v147, v11, 0x7fff
	v_bfe_u32 v145, v127, 16, 1
	v_add3_u32 v156, v55, v156, 0x7fff
	v_add3_u32 v158, v53, v158, 0x7fff
	v_cndmask_b16 v201.h, 0x7fff, v141.h, s6
	v_cndmask_b16 v199.h, 0x7fff, v11.h, vcc_lo
	v_bfe_u32 v11, v149, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v149, v149
	v_add3_u32 v145, v127, v145, 0x7fff
	v_cndmask_b16 v202.h, 0x7fff, v143.h, s7
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v200, v147, v199
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v11, v149, v11, 0x7fff
	v_bfe_u32 v147, v125, 16, 1
	v_cndmask_b16 v203.h, 0x7fff, v145.h, s8
	v_cndmask_b16 v206.h, 0x7fff, v151.h, s11
	v_cndmask_b16 v151.h, 0x7fff, v152.h, s12
	v_cndmask_b16 v247.h, 0x7fff, v11.h, vcc_lo
	v_bfe_u32 v11, v153, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v153, v153
	v_add3_u32 v147, v125, v147, 0x7fff
	v_cndmask_b16 v143.h, 0x7fff, v156.h, s17
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v90, v149, v247
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v11, v153, v11, 0x7fff
	v_bfe_u32 v149, v123, 16, 1
	v_cndmask_b16 v204.h, 0x7fff, v147.h, s9
	v_cndmask_b16 v147.h, 0x7fff, v154.h, s14
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v199.l, v206.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v249.h, 0x7fff, v11.h, vcc_lo
	v_bfe_u32 v11, v155, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v155, v155
	v_add3_u32 v149, v123, v149, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v197.l, v204.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v16, v153, v249
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v11, v155, v11, 0x7fff
	v_bfe_u32 v153, v208, 16, 1
	v_cndmask_b16 v205.h, 0x7fff, v149.h, s10
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v196.l, v203.h
	v_mov_b16_e64 v195.l, v202.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v250.h, 0x7fff, v11.h, vcc_lo
	v_bfe_u32 v11, v157, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v157, v157
	v_add3_u32 v153, v208, v153, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v198.l, v205.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v15, v155, v250
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v11, v157, v11, 0x7fff
	v_bfe_u32 v155, v191, 16, 1
	v_cndmask_b16 v149.h, 0x7fff, v153.h, s13
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v194.l, v201.h
	v_mov_b16_e64 v249.l, v147.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v251.h, 0x7fff, v11.h, vcc_lo
	v_bfe_u32 v11, v159, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v159, v159
	v_add3_u32 v155, v191, v155, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v248.l, v149.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v14, v157, v251
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v11, v159, v11, 0x7fff
	v_bfe_u32 v157, v51, 16, 1
	v_cndmask_b16 v145.h, 0x7fff, v155.h, s16
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v251.l, v143.h
	v_mov_b16_e64 v247.l, v151.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v252.h, 0x7fff, v11.h, vcc_lo
	v_bfe_u32 v11, v161, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v161, v161
	v_add3_u32 v157, v51, v157, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v250.l, v145.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v13, v159, v252
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v11, v161, v11, 0x7fff
	v_bfe_u32 v159, v47, 16, 1
	v_cndmask_b16 v141.h, 0x7fff, v157.h, s18
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v182.l, v10.h
	v_mov_b16_e64 v183.l, v10.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v253.h, 0x7fff, v11.h, vcc_lo
	v_bfe_u32 v11, v163, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v163, v163
	v_add3_u32 v159, v47, v159, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v252.l, v141.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v12, v161, v253
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v11, v163, v11, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v130, v130, v182
	v_dual_sub_f32 v128, v128, v183 :: v_dual_mov_b32 v183, v219
	v_sub_f32_e32 v126, v126, v184
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v254.h, 0x7fff, v11.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v135, v135
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s8, v130, v130
	v_cmp_o_f32_e64 s10, v128, v128
	v_cmp_o_f32_e64 s12, v126, v126
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v11, v163, v254
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v161.h, 0x7fff, v137.h, vcc_lo
	v_cndmask_b16 v163.h, 0x7fff, v139.h, s2
	v_cndmask_b16 v139.h, 0x7fff, v158.h, s19
	v_cndmask_b16 v137.h, 0x7fff, v159.h, s20
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_load_b128 v[152:155], v106
	ds_load_b128 v[156:159], v212
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v192.l, v161.h
	v_mov_b16_e64 v193.l, v163.h
	v_mov_b16_e64 v253.l, v139.h
	v_mov_b16_e64 v254.l, v137.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v124, v124, v185
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v149.l, v10.h
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[17:24], v[192:199], v[81:88], v[17:24]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v122, v122, v174
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v177.l, v10.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s14, v124, v124
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v132, v0
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[17:24], v[247:254], v[73:80], v[17:24]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s17, v122, v122
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v120, v120, v177
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v163.l, v10.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v132, v0, 16, 1
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[17:24], v[192:199], v[239:246], v[17:24]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v141.l, v10.h
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s19, v120, v120
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[231:238], v[152:159], v[1:8]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v0, v0
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[17:24], v[247:254], v[152:159], v[17:24]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v153, v130, 16, 1
	v_add3_u32 v0, v0, v132, 0x7fff
	v_mov_b32_e32 v185, v100
	v_bfe_u32 v132, v166, 16, 1
	v_cmp_o_f32_e64 s7, v166, v166
	v_add3_u32 v130, v130, v153, 0x7fff
	v_bfe_u32 v153, v255, 16, 1
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v125, v125, v204
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v132, v166, v132, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v181.l, v10.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s16, v172, v172
	v_add3_u32 v154, v255, v153, 0x7fff
	v_bfe_u32 v153, v128, 16, 1
	v_cndmask_b16 v154.l, 0x7fff, v130.h, s8
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v134, v134, v181 :: v_dual_mov_b32 v181, v217
	v_mov_b32_e32 v182, v218
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v128, v128, v153, 0x7fff
	v_bfe_u32 v153, v180, 16, 1
	v_cmp_o_f32_e64 s11, v180, v180
	v_cmp_o_f32_e64 s13, v179, v179
	v_mov_b32_e32 v177, v176
	v_cmp_o_f32_e64 s20, v187, v187
	v_add3_u32 v155, v180, v153, 0x7fff
	v_bfe_u32 v153, v126, 16, 1
	v_cndmask_b16 v155.l, 0x7fff, v128.h, s10
	v_mov_b32_e32 v180, v215
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v145.l, v10.h
	v_mov_b32_e32 v176, v213
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v126, v126, v153, 0x7fff
	v_bfe_u32 v153, v179, 16, 1
	v_dual_mov_b32 v244, v106 :: v_dual_sub_f32 v123, v123, v205
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v161.l, v10.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s9, v255, v255
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v156, v179, v153, 0x7fff
	v_bfe_u32 v153, v124, 16, 1
	v_cndmask_b16 v156.l, 0x7fff, v126.h, s12
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v126, v127, v203 :: v_dual_mov_b32 v179, v214
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v164, v164
	v_add3_u32 v124, v124, v153, 0x7fff
	v_bfe_u32 v153, v172, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_o_f32_e64 s12, v126, v126
	v_cmp_o_f32_e64 s18, v169, v169
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v121, v121, v206
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v154.h, 0x7fff, v154.h, s9
	v_add3_u32 v157, v172, v153, 0x7fff
	v_bfe_u32 v153, v122, 16, 1
	v_cndmask_b16 v157.l, 0x7fff, v124.h, s14
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v124, v129, v202
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s14, v125, v125
	v_cndmask_b16 v157.h, 0x7fff, v157.h, s16
	v_add3_u32 v122, v122, v153, 0x7fff
	v_bfe_u32 v153, v169, 16, 1
	v_cmp_o_f32_e64 s10, v124, v124
	v_cmp_o_f32_e64 s16, v168, v168
	v_cndmask_b16 v155.h, 0x7fff, v155.h, s11
	v_cndmask_b16 v156.h, 0x7fff, v156.h, s13
	v_add3_u32 v158, v169, v153, 0x7fff
	v_bfe_u32 v153, v120, 16, 1
	v_cndmask_b16 v158.l, 0x7fff, v122.h, s17
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v122, v131, v201
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v173, v173
	v_cndmask_b16 v158.h, 0x7fff, v158.h, s18
	v_add3_u32 v120, v120, v153, 0x7fff
	v_bfe_u32 v153, v187, 16, 1
	v_cmp_o_f32_e64 s8, v122, v122
	v_cmp_o_f32_e64 s9, v165, v165
	v_cmp_o_f32_e64 s11, v167, v167
	v_cmp_o_f32_e64 s17, v123, v123
	v_add3_u32 v159, v187, v153, 0x7fff
	v_cndmask_b16 v159.l, 0x7fff, v120.h, s19
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v120, v133, v163
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v153.l, 0x7fff, v0.h, s6
	v_cndmask_b16 v153.h, 0x7fff, v132.h, s7
	v_mov_b32_e32 v187, v101
	v_mov_b32_e32 v101, v102
	v_bfe_u32 v128, v120, 16, 1
	v_cmp_o_f32_e64 s6, v120, v120
	v_dual_mov_b32 v102, v103 :: v_dual_mov_b32 v103, v220
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v135, v161
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v128, v120, v128, 0x7fff
	v_bfe_u32 v120, v162, 16, 1
	v_cndmask_b16 v159.h, 0x7fff, v159.h, s20
	v_cmp_o_f32_e64 s19, v121, v121
	v_bfe_u32 v127, v0, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v230.l, v10.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v129, v162, v120, 0x7fff
	v_bfe_u32 v120, v122, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v229.l, v10.h
	v_mov_b16_e64 v228.l, v10.h
	v_mov_b16_e64 v227.l, v10.h
	v_mov_b16_e64 v226.l, v10.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v122, v122, v120, 0x7fff
	v_bfe_u32 v120, v165, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v225.l, v10.h
	v_mov_b16_e64 v224.l, v10.h
	v_mov_b16_e64 v223.l, v10.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v122.l, 0x7fff, v122.h, s8
	v_add3_u32 v130, v165, v120, 0x7fff
	v_bfe_u32 v120, v124, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v106, v52, v224 :: v_dual_mov_b32 v169, v94
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v151.l, v10.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v122.h, 0x7fff, v130.h, s9
	v_add3_u32 v124, v124, v120, 0x7fff
	v_bfe_u32 v120, v167, 16, 1
	v_cmp_o_f32_e64 s9, v146, v146
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v147.l, v10.h
	v_mov_b16_e64 v143.l, v10.h
	v_mov_b16_e64 v139.l, v10.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v131, v167, v120, 0x7fff
	v_bfe_u32 v120, v126, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v137.l, v10.h
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[236:239], off, off offset:64
	scratch_load_b128 v[240:243], off, off offset:80
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v126, v126, v120, 0x7fff
	v_bfe_u32 v120, v173, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v10, v47, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v124.l, 0x7fff, v126.h, s12
	v_add3_u32 v132, v173, v120, 0x7fff
	v_bfe_u32 v120, v125, 16, 1
	v_mov_b32_e32 v173, v99
	v_mov_b32_e32 v99, v105
	v_cmp_o_f32_e64 s7, v162, v162
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v125, v125, v120, 0x7fff
	v_bfe_u32 v120, v168, 16, 1
	v_cndmask_b16 v125.l, 0x7fff, v125.h, s14
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v133, v168, v120, 0x7fff
	v_mov_b32_e32 v168, v92
	v_mov_b32_e32 v92, v216
	v_dual_mov_b32 v220, v63 :: v_dual_mov_b32 v219, v62
	v_dual_mov_b32 v218, v61 :: v_dual_mov_b32 v217, v60
	v_dual_mov_b32 v216, v59 :: v_dual_mov_b32 v215, v58
	v_dual_mov_b32 v214, v57 :: v_dual_mov_b32 v213, v56
	v_dual_mov_b32 v56, v64 :: v_dual_mov_b32 v57, v65
	v_dual_mov_b32 v58, v66 :: v_dual_mov_b32 v59, v67
	v_dual_mov_b32 v60, v68 :: v_dual_mov_b32 v61, v69
	v_dual_mov_b32 v62, v70 :: v_dual_mov_b32 v63, v71
	v_dual_mov_b32 v71, v32 :: v_dual_mov_b32 v70, v31
	v_dual_mov_b32 v69, v30 :: v_dual_mov_b32 v68, v29
	v_dual_mov_b32 v67, v28 :: v_dual_mov_b32 v66, v27
	v_dual_mov_b32 v65, v26 :: v_dual_mov_b32 v64, v25
	v_mov_b32_e32 v25, v33
	v_mov_b32_e32 v29, v37
	v_bfe_u32 v152, v134, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v134, v134
	v_bfe_u32 v120, v123, 16, 1
	v_cmp_o_f32_e64 s18, v170, v170
	v_cmp_o_f32_e64 s20, v200, v200
	v_add3_u32 v134, v134, v152, 0x7fff
	v_bfe_u32 v152, v164, 16, 1
	v_cndmask_b16 v125.h, 0x7fff, v133.h, s16
	v_dual_mov_b32 v26, v34 :: v_dual_mov_b32 v27, v35
	v_mov_b32_e32 v28, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v152, v164, v152, 0x7fff
	v_cndmask_b16 v152.l, 0x7fff, v134.h, vcc_lo
	v_add3_u32 v134, v123, v120, 0x7fff
	v_bfe_u32 v120, v170, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cndmask_b16 v152.h, 0x7fff, v152.h, s2
	v_add3_u32 v0, v0, v127, 0x7fff
	v_bfe_u32 v127, v160, 16, 1
	v_add3_u32 v135, v170, v120, 0x7fff
	v_bfe_u32 v120, v121, 16, 1
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[152:159], v[81:88], v[1:8]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v160, v160
	v_add3_u32 v127, v160, v127, 0x7fff
	v_cndmask_b16 v123.l, 0x7fff, v124.h, s10
	v_add3_u32 v152, v121, v120, 0x7fff
	v_bfe_u32 v120, v200, 16, 1
	v_cndmask_b16 v121.l, 0x7fff, v128.h, s6
	v_cndmask_b16 v121.h, 0x7fff, v129.h, s7
	v_cndmask_b16 v123.h, 0x7fff, v131.h, s11
	v_cndmask_b16 v124.h, 0x7fff, v132.h, s13
	v_add3_u32 v153, v200, v120, 0x7fff
	v_cndmask_b16 v120.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v120.h, 0x7fff, v127.h, s2
	v_cndmask_b16 v126.l, 0x7fff, v134.h, s17
	v_cndmask_b16 v126.h, 0x7fff, v135.h, s18
	v_cndmask_b16 v127.l, 0x7fff, v152.h, s19
	v_cndmask_b16 v127.h, 0x7fff, v153.h, s20
	v_dual_mov_b32 v30, v38 :: v_dual_mov_b32 v31, v39
	v_dual_mov_b32 v32, v40 :: v_dual_mov_b32 v33, v110
	v_mov_b32_e32 v172, v98
	v_mov_b32_e32 v174, v97
	v_dual_mov_b32 v34, v111 :: v_dual_mov_b32 v35, v112
	v_dual_mov_b32 v36, v113 :: v_dual_mov_b32 v37, v114
	v_dual_mov_b32 v38, v115 :: v_dual_mov_b32 v39, v116
	v_dual_mov_b32 v40, v117 :: v_dual_mov_b32 v111, v104
	v_dual_mov_b32 v200, v41 :: v_dual_mov_b32 v41, v72
	v_dual_mov_b32 v72, v43 :: v_dual_mov_b32 v43, v45
	v_dual_mov_b32 v45, v42 :: v_dual_mov_b32 v42, v44
	v_mov_b32_e32 v44, v108
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[17:24], v[120:127], v[81:88], v[17:24]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v118, v230
	v_sub_f32_e32 v82, v207, v229
	v_sub_f32_e32 v84, v210, v228
	v_sub_f32_e32 v86, v190, v227
	v_sub_f32_e32 v88, v54, v226
	v_sub_f32_e32 v108, v50, v225
	v_sub_f32_e32 v104, v46, v223
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v81, v0, 16, 1
	v_bfe_u32 v83, v82, 16, 1
	v_bfe_u32 v85, v84, 16, 1
	v_bfe_u32 v87, v86, 16, 1
	v_bfe_u32 v110, v88, 16, 1
	v_bfe_u32 v112, v108, 16, 1
	v_bfe_u32 v114, v106, 16, 1
	v_bfe_u32 v116, v104, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_add3_u32 v0, v0, v81, 0x7fff
	v_bfe_u32 v81, v148, 16, 1
	v_cmp_o_f32_e64 s6, v82, v82
	v_add3_u32 v82, v82, v83, 0x7fff
	v_bfe_u32 v83, v150, 16, 1
	v_cmp_o_f32_e64 s8, v84, v84
	v_add3_u32 v84, v84, v85, 0x7fff
	v_bfe_u32 v85, v146, 16, 1
	v_cmp_o_f32_e64 s10, v86, v86
	v_add3_u32 v86, v86, v87, 0x7fff
	v_bfe_u32 v87, v144, 16, 1
	v_cmp_o_f32_e64 s12, v88, v88
	v_add3_u32 v88, v88, v110, 0x7fff
	v_bfe_u32 v110, v142, 16, 1
	v_cmp_o_f32_e64 s14, v108, v108
	v_add3_u32 v108, v108, v112, 0x7fff
	v_bfe_u32 v112, v140, 16, 1
	v_cmp_o_f32_e64 s17, v106, v106
	v_add3_u32 v106, v106, v114, 0x7fff
	v_bfe_u32 v114, v138, 16, 1
	v_cmp_o_f32_e64 s19, v104, v104
	v_add3_u32 v104, v104, v116, 0x7fff
	v_bfe_u32 v116, v136, 16, 1
	v_cmp_o_f32_e64 s2, v148, v148
	v_add3_u32 v81, v148, v81, 0x7fff
	v_cmp_o_f32_e64 s7, v150, v150
	v_add3_u32 v83, v150, v83, 0x7fff
	v_add3_u32 v85, v146, v85, 0x7fff
	v_cmp_o_f32_e64 s11, v144, v144
	v_add3_u32 v87, v144, v87, 0x7fff
	v_cmp_o_f32_e64 s13, v142, v142
	v_add3_u32 v110, v142, v110, 0x7fff
	v_cmp_o_f32_e64 s16, v140, v140
	v_add3_u32 v112, v140, v112, 0x7fff
	v_cmp_o_f32_e64 s18, v138, v138
	v_add3_u32 v114, v138, v114, 0x7fff
	v_cmp_o_f32_e64 s20, v136, v136
	v_add3_u32 v116, v136, v116, 0x7fff
	v_cndmask_b16 v81.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v81.h, 0x7fff, v81.h, s2
	v_cndmask_b16 v82.l, 0x7fff, v82.h, s6
	v_cndmask_b16 v82.h, 0x7fff, v83.h, s7
	v_cndmask_b16 v83.l, 0x7fff, v84.h, s8
	v_cndmask_b16 v83.h, 0x7fff, v85.h, s9
	v_cndmask_b16 v84.l, 0x7fff, v86.h, s10
	v_cndmask_b16 v84.h, 0x7fff, v87.h, s11
	v_cndmask_b16 v85.l, 0x7fff, v88.h, s12
	v_cndmask_b16 v85.h, 0x7fff, v110.h, s13
	v_cndmask_b16 v86.l, 0x7fff, v108.h, s14
	v_cndmask_b16 v86.h, 0x7fff, v112.h, s16
	v_cndmask_b16 v87.l, 0x7fff, v106.h, s17
	v_cndmask_b16 v87.h, 0x7fff, v114.h, s18
	v_cndmask_b16 v88.l, 0x7fff, v104.h, s19
	v_cndmask_b16 v88.h, 0x7fff, v116.h, s20
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v0, v119, v151
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s7, v89, v89
	v_cmp_o_f32_e64 s2, v90, v90
	v_cmp_o_f32_e64 s9, v16, v16
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[81:88], v[73:80], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v81, v208, v149 :: v_dual_sub_f32 v82, v211, v147
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v87, v0, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v83, v191, v145
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v88, v81, 16, 1
	v_cmp_o_f32_e64 s6, v81, v81
	v_add3_u32 v0, v0, v87, 0x7fff
	v_bfe_u32 v87, v90, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v84, v55, v143
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v88, v81, v88, 0x7fff
	v_bfe_u32 v81, v89, 16, 1
	v_cmp_o_f32_e64 s11, v15, v15
	v_add3_u32 v87, v90, v87, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v85, v51, v141
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v14, v14
	v_add3_u32 v89, v89, v81, 0x7fff
	v_bfe_u32 v81, v82, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v86, v53, v139
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s16, v13, v13
	v_cmp_o_f32_e64 s12, v84, v84
	v_mov_b32_e32 v170, v96
	v_add3_u32 v90, v82, v81, 0x7fff
	v_bfe_u32 v81, v16, 16, 1
	v_dual_mov_b32 v97, v49 :: v_dual_mov_b32 v96, v48
	scratch_load_b64 v[47:48], off, off     ; 8-byte Folded Reload
	v_mov_b32_e32 v98, v107
	v_add3_u32 v16, v16, v81, 0x7fff
	v_bfe_u32 v81, v83, 16, 1
	v_cmp_o_f32_e64 s14, v85, v85
	v_cmp_o_f32_e64 s17, v86, v86
	v_cmp_o_f32_e64 s18, v12, v12
	v_cmp_o_f32_e64 s19, v10, v10
	v_add3_u32 v104, v83, v81, 0x7fff
	v_bfe_u32 v81, v15, 16, 1
	v_cmp_o_f32_e64 s8, v82, v82
	v_cmp_o_f32_e64 s10, v83, v83
	v_cmp_o_f32_e64 s20, v11, v11
	v_cndmask_b16 v82.l, 0x7fff, v88.h, s6
	v_add3_u32 v15, v15, v81, 0x7fff
	v_bfe_u32 v81, v84, 16, 1
	v_cndmask_b16 v82.h, 0x7fff, v89.h, s7
	v_cndmask_b16 v83.l, 0x7fff, v90.h, s8
	v_cndmask_b16 v83.h, 0x7fff, v16.h, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v105, v84, v81, 0x7fff
	v_bfe_u32 v81, v14, 16, 1
	v_cndmask_b16 v84.l, 0x7fff, v104.h, s10
	v_cndmask_b16 v84.h, 0x7fff, v15.h, s11
	v_add3_u32 v14, v14, v81, 0x7fff
	v_bfe_u32 v81, v85, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add3_u32 v106, v85, v81, 0x7fff
	v_bfe_u32 v81, v13, 16, 1
	v_cndmask_b16 v85.h, 0x7fff, v14.h, s13
	v_cndmask_b16 v85.l, 0x7fff, v105.h, s12
	scratch_load_b32 v105, off, off offset:120 ; 4-byte Folded Reload
	v_add3_u32 v13, v13, v81, 0x7fff
	v_bfe_u32 v81, v86, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v107, v86, v81, 0x7fff
	v_cndmask_b16 v86.h, 0x7fff, v13.h, s16
	s_clause 0x2                            ; 24-byte Folded Reload
	scratch_load_b64 v[13:14], off, off offset:112
	scratch_load_b64 v[48:49], off, off offset:8
	scratch_load_b64 v[49:50], off, off offset:16
	v_bfe_u32 v81, v12, 16, 1
	v_cndmask_b16 v86.l, 0x7fff, v106.h, s14
	v_cndmask_b16 v87.l, 0x7fff, v107.h, s17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v12, v12, v81, 0x7fff
	v_bfe_u32 v81, v10, 16, 1
	v_add3_u32 v10, v10, v81, 0x7fff
	v_bfe_u32 v81, v11, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v88.l, 0x7fff, v10.h, s19
	v_add3_u32 v11, v11, v81, 0x7fff
	v_cndmask_b16 v81.l, 0x7fff, v0.h, vcc_lo
	v_cndmask_b16 v81.h, 0x7fff, v87.h, s2
	v_cndmask_b16 v87.h, 0x7fff, v12.h, s18
	.loc	1 607 13 is_stmt 1              ; attention_backward.py:607:13
	s_add_i32 s2, s51, 32
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v88.h, 0x7fff, v11.h, s20
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmpk_lt_u32 s51, 0x7e0
	s_mov_b32 s51, s2
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[17:24], v[81:88], v[73:80], v[17:24]
	s_waitcnt vmcnt(2)
	v_mov_b32_e32 v107, v13
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v46, v49
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc1 .LBB0_4
	s_branch .LBB0_1
.LBB0_5:
	.loc	1 550 20                        ; attention_backward.py:550:20
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v10, off, off offset:132
	scratch_load_b32 v9, off, off offset:128
	scratch_load_b32 v11, off, off offset:136
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
	v_or_b32_e32 v0, s21, v10
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_or_b32_e32 v10, s22, v10
	.loc	1 550 20                        ; attention_backward.py:550:20
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v9, v9, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v43, s44, v10
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s2, s44, v9
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
	v_cmp_gt_i32_e64 s3, s44, v0
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
	v_mul_lo_u32 v10, s46, v10
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
	v_cmp_gt_i32_e64 s0, s46, v9
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
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 144
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 60
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 144
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21960
; TotalNumSgprs: 62
; NumVgprs: 256
; ScratchSize: 144
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 62
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 144
    .sgpr_count:     62
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 35
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
