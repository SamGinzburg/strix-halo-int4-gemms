	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[58:59], s[0:1], 0x74
	s_load_b128 s[52:55], s[0:1], 0x0
.Ltmp0:
	.loc	1 514 33 prologue_end           ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v9, 3, v0
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_and_b32_e32 v33, 7, v0
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s72, s2, 4
	.loc	1 533 24                        ; attention_backward.py:533:24
	s_lshl_b32 s70, s3, 11
	s_mov_b32 s11, 0x31027000
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_add_i32 s70, s70, s72
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_lshlrev_b32_e32 v65, 3, v33
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v36, s72, v9
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v35, 4, v0
	s_load_b64 s[12:13], s[0:1], 0x10
	.loc	1 541 32                        ; attention_backward.py:541:32
	s_ashr_i32 s7, s72, 1
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s6, 0x800, v36
	.loc	1 541 32                        ; attention_backward.py:541:32
	v_or_b32_e32 v11, s7, v9
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_bfe_i32 s2, s2, 0x1001b
	s_clause 0x2
	s_load_b32 s71, s[0:1], 0x7c
	s_load_b64 s[68:69], s[0:1], 0x94
	s_load_b64 s[56:57], s[0:1], 0x58
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s58, v9
	s_mul_i32 s35, s58, s70
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_cmp_gt_i32_e64 s5, s58, v65
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_lshl_b32 s4, s58, 3
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_and_b32 s9, s55, 0xffff
	s_mov_b32 s8, s54
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_bfe_i32 v42, v0, 3, 1
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s6, s5
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add3_u32 v1, s35, v65, v1
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_i32 v38, v0, 4, 1
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_bfe_i32 v41, v0, 5, 1
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_u32 v49, v0, 4, 1
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_and_b32 s13, s13, 0xffff
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v2, 1, v1
	v_add_lshl_u32 v1, v1, s4, 1
	.loc	1 543 26                        ; attention_backward.py:543:26
	s_lshl_b32 s4, s3, 10
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_mov_b16_e32 v45.l, 0
	.loc	1 545 17                        ; attention_backward.py:545:17
	s_add_i32 s4, s7, s4
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v5, 0x80000000, v1
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v34, 56, v0
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_or_b32_e32 v10, s4, v9
	.loc	1 549 23                        ; attention_backward.py:549:23
	v_cmp_gt_i32_e32 vcc_lo, 0x400, v11
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_clause 0x1
	buffer_load_b128 v[1:4], v2, s[8:11], 0 offen
	buffer_load_b128 v[5:8], v5, s[8:11], 0 offen
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v46.l, v45.l
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v12, 1, v34
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_lshrrev_b32_e32 v58, 1, v34
	v_lshrrev_b32_e32 v59, 2, v34
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v48.l, v45.l
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v63.h, v45.l
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xad_u32 v44, v35, v12, 0
	s_lshl_b32 s75, s3, 12
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e64 v148.h, v45.l
	v_mul_u32_u24_e32 v69, 0x90, v33
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v47.l, v45.l
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v62.h, v45.l
	v_mov_b16_e32 v64.h, v45.l
	v_mov_b16_e32 v68.h, v45.l
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v141, s72, v49
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v57.h, v45.l
	s_mov_b32 s54, s10
	s_mov_b32 s55, s11
	.loc	1 672 31                        ; attention_backward.py:672:31
	s_mul_f32 s76, s71, 0x3fb8aa3b
	s_mov_b32 s36, 0
	s_mov_b32 s73, -1
	s_mov_b32 s18, 0
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(1)
	ds_store_b128 v44, v[1:4]
	s_waitcnt vmcnt(0)
	ds_store_b128 v44, v[5:8] offset:1024
	v_mov_b32_e32 v1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v115, 15, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v12, v1 :: v_dual_and_b32 v51, 0x440, v42
	v_mov_b32_e32 v2, v1
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_mad_u64_u32 v[9:10], null, s59, v10, v[65:66]
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s4, s59, v65
	v_mov_b32_e32 v4, v1
	v_dual_mov_b32 v13, v1 :: v_dual_and_b32 v50, 0x370, v35
	v_dual_mov_b32 v5, v1 :: v_dual_and_b32 v40, 32, v0
	.loc	1 549 22                        ; attention_backward.py:549:22
	s_and_b32 s7, vcc_lo, s4
	v_mov_b32_e32 v6, v1
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v9, 0x80000000, v9, s7
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_xad_u32 v77, v51, v50, 0
	v_dual_mov_b32 v14, v1 :: v_dual_lshlrev_b32 v55, 4, v115
	v_dual_mov_b32 v26, v1 :: v_dual_lshlrev_b32 v71, 7, v40
	.loc	1 544 28                        ; attention_backward.py:544:28
	buffer_load_b64 v[66:67], v9, s[12:15], 0 offen
	s_clause 0x2
	s_load_b64 s[12:13], s[0:1], 0x28
	s_load_b256 s[44:51], s[0:1], 0x38
	s_load_b32 s74, s[0:1], 0x9c
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_lshr_b32 s0, s2, 28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v11, v1 :: v_dual_add_nc_u32 v36, s0, v36
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s0, s6, s4
	v_dual_mov_b32 v9, v1 :: v_dual_lshlrev_b32 v54, 4, v33
	v_dual_mov_b32 v29, v1 :: v_dual_lshlrev_b32 v70, 8, v115
	.loc	1 570 20                        ; attention_backward.py:570:20
	v_ashrrev_i32_e32 v36, 4, v36
	v_dual_mov_b32 v10, v1 :: v_dual_lshlrev_b32 v43, 6, v0
	v_dual_mov_b32 v15, v1 :: v_dual_and_b32 v38, 0x440, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 568 17                        ; attention_backward.py:568:17
	v_lshl_add_u32 v36, s3, 7, v36
	v_dual_mov_b32 v16, v1 :: v_dual_and_b32 v61, 0x820, v41
	v_dual_mov_b32 v30, v1 :: v_dual_and_b32 v41, 0x420, v41
	v_mul_lo_u32 v36, v36, s59
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshl_or_b32 v76, v115, 7, v54
	v_or3_b32 v117, v70, v71, v55
	v_dual_mov_b32 v27, v1 :: v_dual_and_b32 v60, 0x240, v42
	v_dual_mov_b32 v32, v1 :: v_dual_and_b32 v35, 48, v35
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_add_lshl_u32 v36, v36, v65, 1
	v_dual_mov_b32 v18, v1 :: v_dual_lshlrev_b32 v73, 5, v33
	v_and_or_b32 v41, 0x210, v42, v41
	v_lshl_or_b32 v123, v40, 6, v76
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v36, 0x80000000, v36, s0
	v_dual_mov_b32 v8, v1 :: v_dual_and_b32 v37, 16, v0
	v_dual_mov_b32 v7, v1 :: v_dual_lshlrev_b32 v0, 3, v0
	buffer_load_b128 v[50:53], v36, s[12:15], 0 offen
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_xor_b32_e32 v36, v38, v55
	v_and_or_b32 v38, 0xc00, v43, v54
	v_and_or_b32 v43, 0x410, v42, v61
	v_xor_b32_e32 v42, v54, v34
	v_xor_b32_e32 v54, 0xa0, v117
	v_xor_b32_e32 v55, 0xb0, v117
	v_dual_mov_b32 v20, v1 :: v_dual_lshlrev_b32 v75, 2, v34
	v_xor_b32_e32 v35, v35, v34
	v_lshl_or_b32 v189, v34, 6, v73
	v_xor_b32_e32 v34, 32, v117
	v_add_nc_u32_e32 v135, 0, v54
	v_add_nc_u32_e32 v136, 0, v55
	v_xor_b32_e32 v54, 48, v123
	v_xor_b32_e32 v55, 64, v123
	v_dual_mov_b32 v28, v1 :: v_dual_lshlrev_b32 v37, 2, v37
	v_dual_mov_b32 v31, v1 :: v_dual_lshlrev_b32 v72, 1, v115
	v_dual_mov_b32 v17, v1 :: v_dual_and_b32 v0, 48, v0
	v_dual_mov_b32 v24, v1 :: v_dual_add_nc_u32 v125, 0, v34
	v_add_nc_u32_e32 v34, 0, v54
	v_add_nc_u32_e32 v144, 0, v55
	v_or3_b32 v118, v72, v37, v40
	v_lshl_or_b32 v37, v33, 6, v0
	v_xor_b32_e32 v120, v38, v60
	v_lshl_or_b32 v131, v33, 10, v42
	v_xor_b32_e32 v60, 0xd0, v117
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s1, s72, s68
	v_xor_b32_e32 v121, v41, v37
	v_mul_lo_u32 v37, s59, v59
	v_xor_b32_e32 v59, 0x70, v123
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_add_i32 s69, s69, s74
	.loc	1 603 39                        ; attention_backward.py:603:39
	s_sub_i32 s2, s72, s74
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_sub_i32 s1, s1, s74
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_sub_i32 s3, s72, s69
	v_dual_mov_b32 v25, v1 :: v_dual_lshlrev_b32 v56, 3, v40
	v_dual_mov_b32 v19, v1 :: v_dual_add_nc_u32 v78, 0, v76
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xad_u32 v79, v76, 16, 0
	v_xad_u32 v80, v76, 32, 0
	v_xad_u32 v81, v76, 48, 0
	v_xad_u32 v147, v76, 64, 0
	v_xad_u32 v83, 0x50, v76, 0
	v_xad_u32 v84, 0x60, v76, 0
	v_xad_u32 v85, 0x70, v76, 0
	v_xor_b32_e32 v41, 0x70, v117
	v_xor_b32_e32 v76, 64, v131
	.loc	1 603 25                        ; attention_backward.py:603:25
	s_max_i32 s2, s2, 0
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s1, s1, 16
	.loc	1 589 24                        ; attention_backward.py:589:24
	s_max_i32 s3, s3, 0
	.loc	1 604 45                        ; attention_backward.py:604:45
	s_and_b32 s2, s2, 0x7fffffe0
	.loc	1 590 24                        ; attention_backward.py:590:24
	v_med3_i32 v113, s1, 0, 0x800
	.loc	1 597 45                        ; attention_backward.py:597:45
	s_and_b32 s1, s3, 0x7fffffe0
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_add3_u32 v86, 0, v56, v36
	v_xor_b32_e32 v42, 0x80, v117
	v_xor_b32_e32 v56, 0xc0, v117
	s_mov_b32 s64, s48
	v_add_nc_u32_e32 v132, 0, v41
	v_xor_b32_e32 v41, 0x1b0, v120
	.loc	1 604 24                        ; attention_backward.py:604:24
	s_max_u32 s48, s1, s2
	v_add_nc_u32_e32 v156, 0, v76
	v_xor_b32_e32 v130, v43, v69
	v_xor_b32_e32 v43, 0x90, v117
	v_xor_b32_e32 v61, 0xe0, v117
	v_add_nc_u32_e32 v151, 0, v41
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_lshrrev_b32_e32 v116, 1, v40
	v_lshl_add_u32 v74, v40, 1, 0
	v_lshl_or_b32 v119, v115, 6, v0
	v_xor_b32_e32 v38, 0x50, v117
	v_xor_b32_e32 v40, 0x60, v117
	v_xor_b32_e32 v69, 0xf0, v117
	v_add_nc_u32_e32 v134, 0, v43
	v_xor_b32_e32 v43, 32, v123
	v_lshl_add_u32 v252, v115, 2, v74
	v_xor_b32_e32 v0, v189, v75
	v_xor_b32_e32 v36, 64, v117
	v_xor_b32_e32 v70, 0x90, v118
	v_xor_b32_e32 v74, 32, v119
	v_xor_b32_e32 v75, 48, v119
	v_add_nc_u32_e32 v128, 0, v38
	v_xor_b32_e32 v38, 0x90, v120
	v_xor_b32_e32 v87, 0xd0, v131
	v_dual_mov_b32 v22, v1 :: v_dual_add_nc_u32 v143, 0, v43
	v_add_nc_u32_e32 v255, 0, v0
	v_xor_b32_e32 v71, 0x120, v118
	v_add_nc_u32_e32 v0, 0, v70
	v_xor_b32_e32 v70, 0x240, v131
	v_add_nc_u32_e32 v168, 0, v38
	v_add_nc_u32_e32 v157, 0, v87
	v_add_nc_u32_e32 v253, 0, v71
	v_xor_b32_e32 v71, 0x2d0, v131
	v_add_nc_u32_e32 v152, 0, v70
	v_xor_b32_e32 v88, 0x160, v131
	v_lshl_add_u32 v114, s59, 4, v37
	v_add_nc_u32_e32 v142, v65, v37
	v_lshl_or_b32 v122, v33, 9, v35
	v_xor_b32_e32 v33, 16, v117
	v_xor_b32_e32 v72, 0x1b0, v118
	v_dual_mov_b32 v21, v1 :: v_dual_add_nc_u32 v158, 0, v88
	v_xor_b32_e32 v73, 16, v119
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v124, 0, v33
	v_xor_b32_e32 v35, 48, v117
	v_mov_b32_e32 v23, v1
	v_xor_b32_e32 v89, 0x1f0, v131
	v_add_nc_u32_e32 v149, 0, v73
	v_xor_b32_e32 v73, 0x3f0, v131
	v_add_nc_u32_e32 v126, 0, v35
	scratch_store_b32 off, v49, off offset:556 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v159, 0, v89
	.loc	1 534 24                        ; attention_backward.py:534:24
	ds_load_b128 v[169:172], v78
	ds_load_b128 v[173:176], v79
	ds_load_b128 v[196:199], v80
	ds_load_b128 v[200:203], v81
	ds_load_b128 v[204:207], v147
	ds_load_b128 v[208:211], v83
	ds_load_b128 v[212:215], v84
	ds_load_b128 v[216:219], v85
	.loc	1 575 27                        ; attention_backward.py:575:27
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v49, 4, v65
	.loc	1 600 19                        ; attention_backward.py:600:19
	v_readfirstlane_b32 s2, v113
	v_xor_b32_e32 v90, 0x290, v131
	v_xor_b32_e32 v91, 0x320, v131
	v_xor_b32_e32 v92, 0x3b0, v131
	v_xor_b32_e32 v93, 16, v130
	s_add_i32 s2, s2, 31
	v_xor_b32_e32 v94, 32, v130
	.loc	1 600 17 is_stmt 0              ; attention_backward.py:600:17
	s_and_b32 s19, s2, 0x1fe0
	v_xor_b32_e32 v95, 48, v130
	v_xor_b32_e32 v96, 64, v130
	v_xor_b32_e32 v97, 0x50, v130
	v_xor_b32_e32 v98, 0x60, v130
	v_xor_b32_e32 v99, 0x70, v130
	v_xor_b32_e32 v100, 0x1040, v130
	v_xor_b32_e32 v101, 0x1050, v130
	v_xor_b32_e32 v102, 0x1060, v130
	v_xor_b32_e32 v103, 0x1070, v130
	v_xor_b32_e32 v104, 0x1010, v130
	v_xor_b32_e32 v105, 0x1020, v130
	v_xor_b32_e32 v106, 0x1030, v130
	.loc	1 598 24 is_stmt 1              ; attention_backward.py:598:24
	s_min_u32 s77, s19, 0x800
	v_mov_b32_e32 v3, v1
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s0, 0x800, v141
	v_xor_b32_e32 v107, 0x90, v122
	v_xor_b32_e32 v108, 0x120, v122
	v_xor_b32_e32 v109, 0x1b0, v122
	v_xor_b32_e32 v110, 16, v121
	v_xor_b32_e32 v111, 32, v121
	v_xor_b32_e32 v112, 48, v121
	v_add_nc_u32_e32 v160, 0, v90
	v_add_nc_u32_e32 v161, 0, v91
	v_add_nc_u32_e32 v162, 0, v92
	v_add_nc_u32_e32 v166, 0, v93
	v_dual_mov_b32 v93, v141 :: v_dual_add_nc_u32 v94, 0, v94
	v_add_nc_u32_e32 v95, 0, v95
	v_add_nc_u32_e32 v96, 0, v96
	v_add_nc_u32_e32 v141, 0, v97
	v_add_nc_u32_e32 v195, 0, v98
	v_add_nc_u32_e32 v186, 0, v99
	v_add_nc_u32_e32 v188, 0, v100
	v_add_nc_u32_e32 v190, 0, v101
	v_add_nc_u32_e32 v191, 0, v102
	v_add_nc_u32_e32 v39, 0, v103
	v_add_nc_u32_e32 v192, 0, v104
	v_add_nc_u32_e32 v193, 0, v105
	v_add_nc_u32_e32 v187, 0, v106
	s_cmp_lt_u32 s48, s77
	s_mov_b32 s60, s46
	s_cselect_b32 s78, -1, 0
	s_and_b32 s53, s53, 0xffff
	s_and_b32 s61, s47, 0xffff
	s_and_b32 s65, s49, 0xffff
	s_and_b32 s45, s45, 0xffff
	v_add_nc_u32_e32 v90, 0, v107
	v_add_nc_u32_e32 v91, 0, v108
	v_add_nc_u32_e32 v92, 0, v109
	v_add_nc_u32_e32 v97, 0, v110
	v_add_nc_u32_e32 v98, 0, v111
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_waitcnt vmcnt(1)
	v_lshrrev_b64 v[54:55], 24, v[66:67]
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v54.h, v66.h, 15
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b32_e32 v55, 8, v67
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v41.h, 4, v66.l
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v41.l, v66.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v43.l, 4, v67.l
	v_lshrrev_b16 v48.h, 4, v54.l
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v54.h
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v46.h, 4, v55.l
	v_and_b16 v62.l, v41.h, 15
	v_add_nc_u32_e32 v129, 0, v40
	v_and_b16 v148.l, v48.h, 15
	v_add_nc_u32_e32 v133, 0, v42
	v_and_b16 v64.l, v46.h, 15
	v_add_nc_u32_e32 v139, 0, v61
	v_xor_b32_e32 v61, 0x120, v131
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v62, 0, v62, vcc_lo
	v_add_nc_u32_e32 v140, 0, v69
	v_xor_b32_e32 v69, 0x1b0, v131
	v_xor_b32_e32 v40, 0x120, v120
	v_add_nc_u32_e32 v82, 0, v61
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v61, v66, 8, 4
	v_xor_b32_e32 v42, 16, v123
	v_bfe_u32 v70, v67, 24, 4
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v68.l, v43.l, 15
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v45.h, v55.l, 15
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v87, -16, v61
	v_add_nc_u32_e32 v153, 0, v42
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v42.l, v67.h, 15
	v_and_b16 v47.h, v54.l, 15
	.loc	1 554 28 is_stmt 0              ; attention_backward.py:554:28
	v_cndmask_b32_e32 v64, 0, v64, vcc_lo
	v_mad_u64_u32 v[145:146], null, s58, v58, v[65:66]
	v_xor_b32_e32 v58, 0x60, v123
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v42.h, v67.l, 15
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v48.h, v51.l
	v_add_nc_u32_e32 v177, 0, v59
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b32_e32 v59, 24, v67
	v_add_nc_u32_e32 v150, 0, v75
	v_add_nc_u32_e32 v35, 0, v58
	v_alignbit_b32 v58, v67, v66, 24
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v46.h, v53.l
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v63.l, 4, v59.l
	v_add_nc_u32_e32 v138, 0, v60
	v_xor_b32_e32 v60, 0x90, v131
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v43.l, v59.l, 15
	v_add_nc_u32_e32 v155, 0, v73
	.loc	1 554 28 is_stmt 0              ; attention_backward.py:554:28
	v_cndmask_b32_e32 v63, 0, v63, vcc_lo
	.loc	1 555 25 is_stmt 1              ; attention_backward.py:555:25
	v_and_b32_e32 v73, 15, v67
	v_add_nc_u32_e32 v165, 0, v60
	v_bfe_u32 v60, v66, 16, 4
	v_and_b32_e32 v58, 15, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v89, -16, v73
	v_or_b32_e32 v76, -16, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 557 25 is_stmt 0              ; attention_backward.py:557:25
	v_cndmask_b32_e64 v60, v60, v76, s1
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e32 v76, 0, v148, vcc_lo
	v_add_nc_u32_e32 v137, 0, v56
	v_xor_b32_e32 v56, 0x50, v123
	v_add_nc_u32_e32 v164, 0, v56
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b32_e32 v56, 8, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v43.h, v56.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v41.h, 4, v56.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v56, -16, v70
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v43.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 556 28 is_stmt 1              ; attention_backward.py:556:28
	v_and_b16 v57.l, v41.h, 15
	v_add_nc_u32_e32 v127, 0, v36
	v_add_nc_u32_e32 v36, 0, v74
	v_mad_u64_u32 v[74:75], null, s59, 17, v[37:38]
	v_add_nc_u32_e32 v38, 0, v69
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v69, 15, v66
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v55, v61, v87, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v41.l
	v_add_nc_u32_e32 v37, 0, v40
	v_add_nc_u32_e32 v40, 0, v71
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v75, -16, v69
	.loc	1 555 25 is_stmt 1              ; attention_backward.py:555:25
	v_bfe_u32 v71, v67, 16, 4
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_bfe_u32 v66, v66, 20, 4
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v55, v55
	v_add_nc_u32_e32 v254, v65, v74
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v54, v69, v75, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v43.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v88, -16, v71
	v_or_b32_e32 v43, -16, v58
	v_add_nc_u32_e32 v87, v49, v114
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v54, v54
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v41, v70, v56, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v42.l
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v56, v60
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v70, -16, v62
	v_add_nc_u32_e32 v49, v49, v74
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v61, v41
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v69, v71, v88, s1
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v71, -16, v63
	v_add_nc_u32_e32 v33, 0, v72
	v_xor_b32_e32 v72, 0x360, v131
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v45.h
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v41, 0, v66, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v60, v69
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v45.h, v50.l
	v_add_nc_u32_e32 v154, 0, v72
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v72, v67, 8, 4
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_bfe_u32 v67, v67, 20, 4
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v74, 2, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v59, -16, v72
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_dual_cndmask_b32 v66, 0, v67 :: v_dual_cndmask_b32 v67, 0, v68
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v68, -16, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v59, v72, v59, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v42.h
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v72, -16, v66
	v_or_b32_e32 v75, -16, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v59, v59
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v42, v73, v89, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v47.h
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v73, -16, v64
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v47.h, v52.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v43, v58, v43, s1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v58, v42
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v42, 0, v57, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v76
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v57, v43
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v43, -16, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b32_e32 v69, -16, v42
	.loc	1 558 26 is_stmt 0              ; attention_backward.py:558:26
	v_cndmask_b32_e32 v76, v76, v43, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v41
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v41, v41, v68, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v42
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v68, v41
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v42, v42, v69, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v62
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v69, v76
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_and_b32_e32 v41, 0xffff0000, v50
	v_and_b32_e32 v50, 0xffff0000, v53
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_dual_cndmask_b32 v43, v62, v70 :: v_dual_add_nc_u32 v76, 0, v112
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v63
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v62, v63, v71, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v66
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v63, v66, v72, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v64
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v66, v43
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_and_b32_e32 v43, 0xffff0000, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v72, v63
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v64, v64, v73, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v67
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v73, v62
	v_cvt_f32_i32_e32 v71, v64
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v70, v67, v75, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v67, v42
	ds_store_b128 v77, v[54:57]
	ds_store_b128 v77, v[66:69] offset:128
	v_cvt_f32_i32_e32 v70, v70
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[54:57], v86
	ds_load_b128 v[66:69], v86 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v77, v[58:61]
	ds_store_b128 v77, v[70:73] offset:128
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[58:61], v86
	v_add_nc_u32_e32 v77, v65, v114
	ds_load_b128 v[62:65], v86 offset:512
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_and_b32_e32 v42, 0xffff0000, v51
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v86, v116, v115
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v51, v54, v45
	v_dual_mul_f32 v52, v55, v41 :: v_dual_mul_f32 v53, v56, v48
	v_dual_mul_f32 v54, v57, v42 :: v_dual_mul_f32 v45, v66, v45
	v_dual_mul_f32 v41, v67, v41 :: v_dual_mul_f32 v48, v68, v48
	v_mul_f32_e32 v55, v58, v47
	v_dual_mul_f32 v56, v59, v43 :: v_dual_mul_f32 v57, v60, v46
	v_mul_f32_e32 v58, v61, v50
	v_dual_mul_f32 v42, v69, v42 :: v_dual_mul_f32 v47, v62, v47
	v_dual_mul_f32 v43, v63, v43 :: v_dual_mul_f32 v46, v64, v46
	v_mul_f32_e32 v50, v65, v50
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_bfe_u32 v59, v51, 16, 1
	v_bfe_u32 v60, v52, 16, 1
	v_bfe_u32 v61, v53, 16, 1
	v_bfe_u32 v62, v54, 16, 1
	v_bfe_u32 v63, v55, 16, 1
	v_bfe_u32 v64, v56, 16, 1
	v_bfe_u32 v65, v57, 16, 1
	v_bfe_u32 v66, v58, 16, 1
	v_bfe_u32 v67, v45, 16, 1
	v_bfe_u32 v68, v41, 16, 1
	v_bfe_u32 v69, v48, 16, 1
	v_bfe_u32 v70, v42, 16, 1
	v_bfe_u32 v71, v47, 16, 1
	v_bfe_u32 v72, v43, 16, 1
	v_bfe_u32 v73, v46, 16, 1
	v_bfe_u32 v75, v50, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v51, v51
	v_cmp_o_f32_e64 s1, v52, v52
	v_cmp_o_f32_e64 s2, v53, v53
	v_cmp_o_f32_e64 s3, v54, v54
	v_cmp_o_f32_e64 s6, v55, v55
	v_cmp_o_f32_e64 s7, v56, v56
	v_cmp_o_f32_e64 s8, v57, v57
	v_cmp_o_f32_e64 s9, v58, v58
	v_add3_u32 v51, v51, v59, 0x7fff
	v_add3_u32 v52, v52, v60, 0x7fff
	v_add3_u32 v53, v53, v61, 0x7fff
	v_add3_u32 v54, v54, v62, 0x7fff
	v_add3_u32 v55, v55, v63, 0x7fff
	v_add3_u32 v56, v56, v64, 0x7fff
	v_add3_u32 v57, v57, v65, 0x7fff
	v_add3_u32 v58, v58, v66, 0x7fff
	v_cmp_o_f32_e64 s10, v45, v45
	v_cmp_o_f32_e64 s11, v41, v41
	v_cmp_o_f32_e64 s12, v48, v48
	v_cmp_o_f32_e64 s13, v42, v42
	v_cmp_o_f32_e64 s14, v47, v47
	v_cmp_o_f32_e64 s15, v43, v43
	v_cmp_o_f32_e64 s16, v46, v46
	v_cmp_o_f32_e64 s17, v50, v50
	v_add3_u32 v59, v45, v67, 0x7fff
	v_add3_u32 v41, v41, v68, 0x7fff
	v_add3_u32 v60, v48, v69, 0x7fff
	v_add3_u32 v42, v42, v70, 0x7fff
	v_add3_u32 v61, v47, v71, 0x7fff
	v_add3_u32 v43, v43, v72, 0x7fff
	v_add3_u32 v62, v46, v73, 0x7fff
	v_add3_u32 v63, v50, v75, 0x7fff
	v_cndmask_b16 v45.l, 0x7fff, v51.h, vcc_lo
	v_cndmask_b16 v45.h, 0x7fff, v52.h, s1
	v_cndmask_b16 v46.l, 0x7fff, v53.h, s2
	v_cndmask_b16 v46.h, 0x7fff, v54.h, s3
	v_cndmask_b16 v47.l, 0x7fff, v55.h, s6
	v_cndmask_b16 v47.h, 0x7fff, v56.h, s7
	v_cndmask_b16 v48.l, 0x7fff, v57.h, s8
	v_cndmask_b16 v48.h, 0x7fff, v58.h, s9
	v_cndmask_b16 v50.l, 0x7fff, v59.h, s10
	v_cndmask_b16 v50.h, 0x7fff, v41.h, s11
	v_cndmask_b16 v51.l, 0x7fff, v60.h, s12
	v_cndmask_b16 v51.h, 0x7fff, v42.h, s13
	v_cndmask_b16 v52.l, 0x7fff, v61.h, s14
	v_cndmask_b16 v52.h, 0x7fff, v43.h, s15
	v_cndmask_b16 v53.l, 0x7fff, v62.h, s16
	v_cndmask_b16 v53.h, 0x7fff, v63.h, s17
	.loc	1 717 21 is_stmt 1              ; attention_backward.py:717:21
	ds_store_b128 v44, v[45:48]
	ds_store_b128 v44, v[50:53] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v78
	ds_load_b128 v[45:48], v79
	ds_load_b128 v[50:53], v80
	ds_load_b128 v[54:57], v81
	ds_load_b128 v[58:61], v147
	ds_load_b128 v[62:65], v83
	ds_load_b128 v[66:69], v84
	ds_load_b128 v[70:73], v85
	v_mad_u64_u32 v[83:84], null, s58, 3, v[145:146]
	v_add_nc_u32_e32 v85, 4, v142
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v75, 4, v93
	v_or_b32_e32 v78, 6, v93
	v_or_b32_e32 v79, 8, v93
	v_or_b32_e32 v80, 10, v93
	v_or_b32_e32 v81, 12, v93
	v_or_b32_e32 v84, 14, v93
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v115, off offset:552
	scratch_store_b32 off, v116, off offset:560
	scratch_store_b32 off, v120, off offset:280
	scratch_store_b32 off, v143, off offset:284
	scratch_store_b32 off, v123, off offset:288
	scratch_store_b32 off, v34, off offset:292
	scratch_store_b32 off, v130, off offset:296
	scratch_store_b32 off, v37, off offset:300
	scratch_store_b32 off, v144, off offset:304
	scratch_store_b32 off, v142, off offset:308
	scratch_store_b32 off, v151, off offset:312
	scratch_store_b32 off, v153, off offset:316
	scratch_store_b32 off, v131, off offset:320
	scratch_store_b32 off, v155, off offset:324
	scratch_store_b32 off, v38, off offset:328
	scratch_store_b32 off, v157, off offset:332
	scratch_store_b32 off, v152, off offset:336
	scratch_store_b32 off, v159, off offset:340
	scratch_store_b32 off, v156, off offset:344
	scratch_store_b32 off, v161, off offset:348
	scratch_store_b32 off, v154, off offset:352
	scratch_store_b32 off, v164, off offset:356
	scratch_store_b32 off, v160, off offset:360
	scratch_store_b32 off, v168, off offset:364
	scratch_store_b32 off, v186, off offset:368
	scratch_store_b32 off, v40, off offset:372
	scratch_store_b32 off, v35, off offset:376
	scratch_store_b32 off, v162, off offset:380
	scratch_store_b32 off, v165, off offset:384
	scratch_store_b32 off, v166, off offset:388
	scratch_store_b32 off, v82, off offset:392
	scratch_store_b32 off, v195, off offset:396
	s_clause 0xe                            ; 156-byte Folded Spill
	scratch_store_b128 off, v[169:172], off offset:400
	scratch_store_b128 off, v[173:176], off offset:416
	scratch_store_b128 off, v[196:199], off offset:432
	scratch_store_b128 off, v[200:203], off offset:448
	scratch_store_b128 off, v[204:207], off offset:464
	scratch_store_b128 off, v[208:211], off offset:480
	scratch_store_b128 off, v[212:215], off offset:496
	scratch_store_b128 off, v[216:219], off offset:512
	scratch_store_b32 off, v77, off offset:528
	scratch_store_b32 off, v87, off offset:532
	scratch_store_b32 off, v158, off offset:536
	scratch_store_b32 off, v49, off offset:540
	scratch_store_b32 off, v85, off offset:544
	scratch_store_b32 off, v86, off offset:16
	scratch_store_b32 off, v177, off offset:548
	s_waitcnt lgkmcnt(5)
	scratch_store_b128 off, v[50:53], off offset:20 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(4)
	s_clause 0x7                            ; 44-byte Folded Spill
	scratch_store_b128 off, v[54:57], off offset:36
	scratch_store_b32 off, v84, off offset:52
	scratch_store_b32 off, v81, off offset:56
	scratch_store_b32 off, v80, off offset:60
	scratch_store_b32 off, v79, off offset:64
	scratch_store_b32 off, v78, off offset:68
	scratch_store_b32 off, v75, off offset:72
	scratch_store_b32 off, v74, off offset:76
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[66:69], off offset:80 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_clause 0x1e                           ; 184-byte Folded Spill
	scratch_store_b128 off, v[70:73], off offset:96
	scratch_store_b128 off, v[58:61], off offset:112
	scratch_store_b128 off, v[62:65], off offset:128
	scratch_store_b32 off, v76, off offset:144
	scratch_store_b128 off, v[41:44], off offset:148
	scratch_store_b128 off, v[45:48], off offset:164
	scratch_store_b32 off, v97, off offset:180
	scratch_store_b32 off, v98, off offset:184
	scratch_store_b32 off, v91, off offset:188
	scratch_store_b32 off, v92, off offset:192
	scratch_store_b32 off, v90, off offset:196
	scratch_store_b32 off, v139, off offset:200
	scratch_store_b32 off, v140, off offset:204
	scratch_store_b32 off, v137, off offset:208
	scratch_store_b32 off, v138, off offset:212
	scratch_store_b32 off, v135, off offset:216
	scratch_store_b32 off, v136, off offset:220
	scratch_store_b32 off, v133, off offset:224
	scratch_store_b32 off, v134, off offset:228
	scratch_store_b32 off, v129, off offset:232
	scratch_store_b32 off, v132, off offset:236
	scratch_store_b32 off, v127, off offset:240
	scratch_store_b32 off, v128, off offset:244
	scratch_store_b32 off, v125, off offset:248
	scratch_store_b32 off, v126, off offset:252
	scratch_store_b32 off, v117, off offset:256
	scratch_store_b32 off, v122, off offset:260
	scratch_store_b32 off, v124, off offset:264
	scratch_store_b32 off, v118, off offset:268
	scratch_store_b32 off, v119, off offset:272
	scratch_store_b32 off, v121, off offset:276
	s_branch .LBB0_2
.LBB0_1:                                ; %Flow258
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 23 is_stmt 0                ; attention_backward.py:0:23
	s_xor_b32 s1, s73, -1
	s_movk_i32 s18, 0x800
	.loc	1 605 9 is_stmt 1               ; attention_backward.py:605:9
	s_and_not1_b32 vcc_lo, exec_lo, s1
	s_mov_b32 s73, 0
	s_cbranch_vccz .LBB0_6
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_and_not1_b32 vcc_lo, exec_lo, s78
	s_cbranch_vccnz .LBB0_1
; %bb.3:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	s_waitcnt vmcnt(33)
	v_dual_mov_b32 v51, v149 :: v_dual_mov_b32 v52, v150
	.loc	1 662 34 is_stmt 1              ; attention_backward.py:662:34
	s_or_b32 s49, s75, s18
	s_mov_b32 s79, s48
.LBB0_4:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 34 is_stmt 0                ; attention_backward.py:0:34
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 664 25 is_stmt 1              ; attention_backward.py:664:25
	s_add_i32 s1, s79, s49
	s_waitcnt vmcnt(18)
	v_lshl_add_u32 v43, s58, 1, v145
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	v_add_nc_u32_e32 v42, s58, v145
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_mul_i32 s2, s1, s58
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v104, s43 :: v_dual_mov_b32 v101, s40
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v41, s2, v145, 1
	v_add_lshl_u32 v43, s2, v43, 1
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v103, s42
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v42, s2, v42, 1
	s_waitcnt vmcnt(11)
	v_add_lshl_u32 v44, s2, v83, 1
	v_cndmask_b32_e64 v41, 0x80000000, v41, s5
	v_cndmask_b32_e64 v43, 0x80000000, v43, s5
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[83:84], off offset:8
	scratch_store_b64 off, v[145:146], off
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e64 v42, 0x80000000, v42, s5
	v_cndmask_b32_e64 v44, 0x80000000, v44, s5
	s_clause 0x3
	buffer_load_b128 v[178:181], v41, s[52:55], 0 offen
	buffer_load_b128 v[182:185], v43, s[52:55], 0 offen
	buffer_load_b128 v[105:108], v42, s[52:55], 0 offen
	buffer_load_b128 v[110:113], v44, s[52:55], 0 offen
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt vmcnt(5)
	v_dual_mov_b32 v102, s41 :: v_dual_add_nc_u32 v41, 0, v120
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s62, s54
	s_mov_b32 s63, s55
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v99, s38 :: v_dual_mov_b32 v98, s37
	v_mov_b32_e32 v97, s36
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s1, s1, s59
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s66, s54
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v43, s1, v85, 2
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s67, s55
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s46, s54
	s_mov_b32 s47, s55
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v100, s39
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v45, 0x80000000, v43, s4
	v_add_nc_u32_e32 v43, s59, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v43, s1, v43, 2
	v_cndmask_b32_e64 v46, 0x80000000, v43, s4
	v_add_nc_u32_e32 v43, s59, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v43, s1, v43, 2
	v_cndmask_b32_e64 v47, 0x80000000, v43, s4
	v_add_lshl_u32 v43, s1, v77, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v62, 0x80000000, v43, s4
	v_add_lshl_u32 v43, s1, v87, 2
	v_cndmask_b32_e64 v71, 0x80000000, v43, s4
	v_add_lshl_u32 v43, s1, v254, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v76, 0x80000000, v43, s4
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v43, s1, v49, 2
	v_cndmask_b32_e64 v77, 0x80000000, v43, s4
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(3)
	ds_store_b128 v41, v[178:181]
	s_waitcnt vmcnt(1)
	ds_store_b128 v168, v[105:108]
	ds_store_b128 v37, v[182:185]
	s_waitcnt vmcnt(0)
	ds_store_b128 v151, v[110:113]
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v53, off, off offset:16 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v41, 0, v123
	ds_load_b128 v[54:57], v41
	ds_load_b128 v[58:61], v153
	ds_load_b128 v[114:117], v143
	ds_load_b128 v[118:121], v34
	v_mov_b32_e32 v34, v141
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[122:129], v[169:176], v[54:61], v[97:104]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[54:57], v144
	ds_load_b128 v[58:61], v164
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[122:129], v[196:203], v[114:121], v[122:129]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[122:129], v[204:211], v[54:61], v[122:129]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[54:57], v35
	ds_load_b128 v[58:61], v177
	v_mov_b32_e32 v35, v188
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[122:129], v[212:219], v[54:61], v[122:129]
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v41, s49, v53
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_add_lshl_u32 v41, v41, s79, 2
	buffer_load_b32 v42, v41, s[60:63], 0 offen
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v60, s76, v122, -v42
	v_fma_f32 v59, s76, v123, -v42
	v_fma_f32 v58, s76, v124, -v42
	v_fma_f32 v57, s76, v125, -v42
	v_fma_f32 v109, s76, v126, -v42
	v_fma_f32 v56, s76, v127, -v42
	v_fma_f32 v55, s76, v128, -v42
	v_fma_f32 v54, s76, v129, -v42
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v42, s1, v142, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v42, 0x80000000, v42, s4
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v61, v41, s[64:67], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x7
	buffer_load_b128 v[41:44], v42, s[44:47], 0 offen
	buffer_load_b128 v[63:66], v46, s[44:47], 0 offen
	buffer_load_b128 v[67:70], v45, s[44:47], 0 offen
	buffer_load_b128 v[47:50], v47, s[44:47], 0 offen
	buffer_load_b128 v[72:75], v62, s[44:47], 0 offen
	buffer_load_b128 v[78:81], v76, s[44:47], 0 offen
	buffer_load_b128 v[83:86], v71, s[44:47], 0 offen
	buffer_load_b128 v[89:92], v77, s[44:47], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v87, 0, v131
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v37, v189
	s_waitcnt vmcnt(7)
	v_dual_mov_b32 v62, v41 :: v_dual_mov_b32 v45, v42
	s_waitcnt vmcnt(6)
	v_mov_b32_e32 v46, v64
	s_waitcnt vmcnt(5)
	v_mov_b32_e32 v76, v68
	ds_store_b64 v87, v[62:63]
	ds_store_b64 v165, v[45:46]
	v_dual_mov_b32 v45, v43 :: v_dual_mov_b32 v46, v65
	s_waitcnt vmcnt(4)
	v_mov_b32_e32 v77, v48
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v71, v50 :: v_dual_mov_b32 v88, v83
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v62, 0xc00, v252
	.loc	1 732 34                        ; attention_backward.py:732:34
	ds_store_b64 v82, v[45:46]
	v_dual_mov_b32 v45, v66 :: v_dual_mov_b32 v46, v67
	ds_store_b64 v38, v[44:45]
	ds_store_b64 v152, v[46:47]
	ds_store_b64 v40, v[76:77]
	v_mov_b32_e32 v45, v69
	v_dual_mov_b32 v46, v49 :: v_dual_mov_b32 v77, v72
	v_mov_b32_e32 v76, v81
	v_mov_b32_e32 v82, v192
	v_mov_b32_e32 v38, v191
	ds_store_b64 v154, v[45:46]
	v_dual_mov_b32 v45, v73 :: v_dual_mov_b32 v46, v79
	ds_store_b64 v155, v[70:71]
	ds_store_b64 v156, v[77:78]
	ds_store_b64 v157, v[45:46]
	v_dual_mov_b32 v45, v74 :: v_dual_mov_b32 v46, v80
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v71, 0x1000, v252
	v_dual_mov_b32 v40, v190 :: v_dual_add_nc_u32 v77, 0x1800, v252
	.loc	1 732 34                        ; attention_backward.py:732:34
	ds_store_b64 v158, v[45:46]
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v45, v84 :: v_dual_mov_b32 v46, v90
	ds_store_b64 v159, v[75:76]
	ds_store_b64 v87, v[88:89] offset:512
	v_dual_mov_b32 v87, v92 :: v_dual_add_nc_u32 v76, 0x1400, v252
	ds_store_b64 v160, v[45:46]
	v_dual_mov_b32 v45, v85 :: v_dual_mov_b32 v46, v91
	ds_store_b64 v161, v[45:46]
	v_add_nc_u32_e32 v45, 0, v130
	ds_store_b64 v162, v[86:87]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[138:141], v141
	ds_load_b128 v[134:137], v195
	ds_load_b128 v[130:133], v186
	ds_load_b128 v[158:161], v188
	ds_load_b128 v[154:157], v190
	ds_load_b128 v[150:153], v191
	ds_load_b128 v[146:149], v39
	ds_load_b128 v[126:129], v192
	ds_load_b128 v[122:125], v193
	ds_load_b128 v[118:121], v187
	v_mov_b32_e32 v186, v39
	ds_load_b128 v[162:165], v45
	ds_load_b128 v[114:117], v45 offset:4096
	ds_load_b128 v[174:177], v166
	ds_load_b128 v[170:173], v94
	ds_load_b128 v[166:169], v95
	ds_load_b128 v[142:145], v96
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v45, 0, v189
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v45, v[41:44]
	ds_store_b128 v45, v[67:70] offset:16
	ds_store_b128 v45, v[63:66] offset:256
	ds_store_b128 v45, v[47:50] offset:272
	ds_store_b128 v45, v[72:75] offset:4096
	ds_store_b128 v45, v[83:86] offset:4112
	ds_store_b128 v45, v[78:81] offset:4352
	ds_store_b128 v45, v[89:92] offset:4368
	v_add_nc_u32_e32 v45, 0x400, v252
	v_add_nc_u32_e32 v87, 0x1c00, v252
	v_add_nc_u32_e32 v46, 0x800, v252
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[242:243], v45 offset1:32
	ds_load_2addr_b32 v[240:241], v45 offset0:64 offset1:96
	ds_load_2addr_b32 v[238:239], v45 offset0:128 offset1:160
	ds_load_2addr_b32 v[236:237], v45 offset0:192 offset1:224
	ds_load_2addr_b32 v[234:235], v46 offset1:32
	ds_load_2addr_b32 v[232:233], v46 offset0:64 offset1:96
	ds_load_2addr_b32 v[230:231], v46 offset0:128 offset1:160
	ds_load_2addr_b32 v[228:229], v46 offset0:192 offset1:224
	ds_load_2addr_b32 v[226:227], v62 offset1:32
	ds_load_2addr_b32 v[224:225], v62 offset0:64 offset1:96
	ds_load_2addr_b32 v[222:223], v62 offset0:128 offset1:160
	ds_load_2addr_b32 v[220:221], v62 offset0:192 offset1:224
	ds_load_2addr_b32 v[218:219], v71 offset1:32
	ds_load_2addr_b32 v[216:217], v71 offset0:64 offset1:96
	ds_load_2addr_b32 v[214:215], v71 offset0:128 offset1:160
	ds_load_2addr_b32 v[212:213], v71 offset0:192 offset1:224
	ds_load_2addr_b32 v[210:211], v76 offset1:32
	ds_load_2addr_b32 v[208:209], v76 offset0:64 offset1:96
	ds_load_2addr_b32 v[206:207], v76 offset0:128 offset1:160
	ds_load_2addr_b32 v[204:205], v76 offset0:192 offset1:224
	ds_load_2addr_b32 v[202:203], v77 offset1:32
	ds_load_2addr_b32 v[200:201], v77 offset0:64 offset1:96
	ds_load_2addr_b32 v[198:199], v77 offset0:128 offset1:160
	ds_load_2addr_b32 v[196:197], v77 offset0:192 offset1:224
	ds_load_2addr_b32 v[194:195], v87 offset1:32
	v_mov_b32_e32 v39, v193
	ds_load_2addr_b32 v[192:193], v87 offset0:64 offset1:96
	ds_load_2addr_b32 v[190:191], v87 offset0:128 offset1:160
	ds_load_2addr_b32 v[188:189], v87 offset0:192 offset1:224
	ds_load_2addr_b32 v[250:251], v252 offset1:32
	ds_load_2addr_b32 v[248:249], v252 offset0:64 offset1:96
	ds_load_2addr_b32 v[246:247], v252 offset0:128 offset1:160
	ds_load_2addr_b32 v[244:245], v252 offset0:192 offset1:224
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v255, v[41:44]
	ds_store_b128 v255, v[67:70] offset:16
	ds_store_b128 v255, v[63:66] offset:272
	ds_store_b128 v255, v[47:50] offset:256
	ds_store_b128 v255, v[72:75] offset:4096
	ds_store_b128 v255, v[83:86] offset:4112
	ds_store_b128 v255, v[78:81] offset:4368
	ds_store_b128 v255, v[89:92] offset:4352
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off offset:256
	scratch_load_b32 v45, off, off offset:264
	v_cmp_o_f32_e64 s19, v217, v217
	v_cmp_o_f32_e64 s21, v213, v213
	v_cmp_o_f32_e64 s23, v209, v209
	v_cmp_o_f32_e64 s25, v205, v205
	v_cmp_o_f32_e64 s18, v219, v219
	v_cmp_o_f32_e64 s27, v201, v201
	v_cmp_o_f32_e64 s20, v215, v215
	v_cmp_o_f32_e64 s29, v197, v197
	v_cmp_o_f32_e64 s22, v211, v211
	v_cmp_o_f32_e64 s24, v207, v207
	v_cmp_o_f32_e64 s31, v193, v193
	v_cmp_o_f32_e64 s26, v203, v203
	v_cmp_o_f32_e64 s28, v199, v199
	v_cmp_o_f32_e64 s30, v195, v195
	v_cmp_o_f32_e64 s33, v191, v191
	v_cmp_o_f32_e64 s34, v189, v189
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v41, 0, v41
	s_waitcnt vmcnt(0)
	ds_load_b128 v[45:48], v45
	ds_load_b128 v[41:44], v41
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s6, v45, v45
	v_cmp_o_f32_e64 s7, v46, v46
	v_cmp_o_f32_e64 s8, v47, v47
	v_cmp_o_f32_e64 s9, v48, v48
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v49, v41, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	v_cmp_o_f32_e64 s1, v42, v42
	v_cmp_o_f32_e64 s2, v43, v43
	v_cmp_o_f32_e64 s3, v44, v44
	v_add3_u32 v49, v41, v49, 0x7fff
	v_bfe_u32 v41, v42, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v50, v42, v41, 0x7fff
	v_bfe_u32 v41, v43, 16, 1
	v_add3_u32 v62, v43, v41, 0x7fff
	v_bfe_u32 v41, v44, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v63, v44, v41, 0x7fff
	v_bfe_u32 v41, v45, 16, 1
	v_add3_u32 v64, v45, v41, 0x7fff
	v_bfe_u32 v41, v46, 16, 1
	scratch_load_b32 v45, off, off offset:252 ; 4-byte Folded Reload
	v_add3_u32 v65, v46, v41, 0x7fff
	v_bfe_u32 v41, v47, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v66, v47, v41, 0x7fff
	v_bfe_u32 v41, v48, 16, 1
	v_add3_u32 v67, v48, v41, 0x7fff
	scratch_load_b32 v41, off, off offset:248 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[45:48], v45
	s_waitcnt vmcnt(0)
	ds_load_b128 v[41:44], v41
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s14, v45, v45
	v_cmp_o_f32_e64 s15, v46, v46
	v_cmp_o_f32_e64 s16, v47, v47
	v_cmp_o_f32_e64 s17, v48, v48
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v68, v41, 16, 1
	v_cmp_o_f32_e64 s10, v41, v41
	v_cmp_o_f32_e64 s11, v42, v42
	v_cmp_o_f32_e64 s12, v43, v43
	v_cmp_o_f32_e64 s13, v44, v44
	v_add3_u32 v68, v41, v68, 0x7fff
	v_bfe_u32 v41, v42, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v69, v42, v41, 0x7fff
	v_bfe_u32 v41, v43, 16, 1
	v_cndmask_b16 v42.l, 0x7fff, v62.h, s2
	v_cndmask_b16 v42.h, 0x7fff, v63.h, s3
	v_add3_u32 v70, v43, v41, 0x7fff
	v_bfe_u32 v41, v44, 16, 1
	v_cndmask_b16 v43.l, 0x7fff, v64.h, s6
	v_cndmask_b16 v43.h, 0x7fff, v65.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v71, v44, v41, 0x7fff
	v_bfe_u32 v41, v45, 16, 1
	v_cndmask_b16 v44.l, 0x7fff, v66.h, s8
	v_cndmask_b16 v44.h, 0x7fff, v67.h, s9
	v_add3_u32 v72, v45, v41, 0x7fff
	v_cndmask_b16 v45.l, 0x7fff, v68.h, s10
	v_cndmask_b16 v45.h, 0x7fff, v69.h, s11
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[62:65], off, off offset:148
	scratch_load_b128 v[66:69], off, off offset:164
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v41, v46, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v73, v46, v41, 0x7fff
	v_bfe_u32 v41, v47, 16, 1
	v_cndmask_b16 v46.l, 0x7fff, v70.h, s12
	v_cndmask_b16 v46.h, 0x7fff, v71.h, s13
	v_add3_u32 v74, v47, v41, 0x7fff
	v_bfe_u32 v41, v48, 16, 1
	v_cndmask_b16 v47.l, 0x7fff, v72.h, s14
	v_cndmask_b16 v47.h, 0x7fff, v73.h, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v48, v48, v41, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v49.h, vcc_lo
	v_cndmask_b16 v41.h, 0x7fff, v50.h, s1
	v_cndmask_b16 v48.l, 0x7fff, v74.h, s16
	v_cndmask_b16 v48.h, 0x7fff, v48.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[62:69], v[41:48], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off offset:240
	scratch_load_b32 v45, off, off offset:244
	s_waitcnt vmcnt(1)
	ds_load_b128 v[41:44], v41
	s_waitcnt vmcnt(0)
	ds_load_b128 v[45:48], v45
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v49, v41, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v45, v45
	v_cmp_o_f32_e64 s1, v42, v42
	v_cmp_o_f32_e64 s2, v43, v43
	v_add3_u32 v49, v41, v49, 0x7fff
	v_bfe_u32 v41, v42, 16, 1
	v_cmp_o_f32_e64 s3, v44, v44
	v_cmp_o_f32_e64 s7, v46, v46
	v_cmp_o_f32_e64 s8, v47, v47
	v_cmp_o_f32_e64 s9, v48, v48
	v_add3_u32 v50, v42, v41, 0x7fff
	v_bfe_u32 v41, v43, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v62, v43, v41, 0x7fff
	v_bfe_u32 v41, v44, 16, 1
	v_add3_u32 v63, v44, v41, 0x7fff
	v_bfe_u32 v41, v45, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v64, v45, v41, 0x7fff
	v_bfe_u32 v41, v46, 16, 1
	scratch_load_b32 v45, off, off offset:236 ; 4-byte Folded Reload
	v_add3_u32 v65, v46, v41, 0x7fff
	v_bfe_u32 v41, v47, 16, 1
	v_add3_u32 v66, v47, v41, 0x7fff
	v_bfe_u32 v41, v48, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v67, v48, v41, 0x7fff
	scratch_load_b32 v41, off, off offset:232 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[45:48], v45
	s_waitcnt vmcnt(0)
	ds_load_b128 v[41:44], v41
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s14, v45, v45
	v_cmp_o_f32_e64 s15, v46, v46
	v_cmp_o_f32_e64 s16, v47, v47
	v_cmp_o_f32_e64 s17, v48, v48
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v68, v41, 16, 1
	v_cmp_o_f32_e64 s10, v41, v41
	v_cmp_o_f32_e64 s11, v42, v42
	v_cmp_o_f32_e64 s12, v43, v43
	v_cmp_o_f32_e64 s13, v44, v44
	v_add3_u32 v68, v41, v68, 0x7fff
	v_bfe_u32 v41, v42, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v69, v42, v41, 0x7fff
	v_bfe_u32 v41, v43, 16, 1
	v_cndmask_b16 v42.l, 0x7fff, v62.h, s2
	v_cndmask_b16 v42.h, 0x7fff, v63.h, s3
	v_add3_u32 v70, v43, v41, 0x7fff
	v_bfe_u32 v41, v44, 16, 1
	v_cndmask_b16 v43.l, 0x7fff, v64.h, s6
	v_cndmask_b16 v43.h, 0x7fff, v65.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v71, v44, v41, 0x7fff
	v_bfe_u32 v41, v45, 16, 1
	v_cndmask_b16 v44.l, 0x7fff, v66.h, s8
	v_cndmask_b16 v44.h, 0x7fff, v67.h, s9
	v_add3_u32 v72, v45, v41, 0x7fff
	v_cndmask_b16 v45.l, 0x7fff, v68.h, s10
	v_cndmask_b16 v45.h, 0x7fff, v69.h, s11
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[62:65], off, off offset:20
	scratch_load_b128 v[66:69], off, off offset:36
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v41, v46, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v73, v46, v41, 0x7fff
	v_bfe_u32 v41, v47, 16, 1
	v_cndmask_b16 v46.l, 0x7fff, v70.h, s12
	v_cndmask_b16 v46.h, 0x7fff, v71.h, s13
	v_add3_u32 v74, v47, v41, 0x7fff
	v_bfe_u32 v41, v48, 16, 1
	v_cndmask_b16 v47.l, 0x7fff, v72.h, s14
	v_cndmask_b16 v47.h, 0x7fff, v73.h, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v48, v48, v41, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v49.h, vcc_lo
	v_cndmask_b16 v41.h, 0x7fff, v50.h, s1
	v_cndmask_b16 v48.l, 0x7fff, v74.h, s16
	v_cndmask_b16 v48.h, 0x7fff, v48.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[62:69], v[41:48], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off offset:224
	scratch_load_b32 v45, off, off offset:228
	s_waitcnt vmcnt(1)
	ds_load_b128 v[41:44], v41
	s_waitcnt vmcnt(0)
	ds_load_b128 v[45:48], v45
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v49, v41, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v45, v45
	v_cmp_o_f32_e64 s1, v42, v42
	v_cmp_o_f32_e64 s2, v43, v43
	v_add3_u32 v49, v41, v49, 0x7fff
	v_bfe_u32 v41, v42, 16, 1
	v_cmp_o_f32_e64 s3, v44, v44
	v_cmp_o_f32_e64 s7, v46, v46
	v_cmp_o_f32_e64 s8, v47, v47
	v_cmp_o_f32_e64 s9, v48, v48
	v_add3_u32 v50, v42, v41, 0x7fff
	v_bfe_u32 v41, v43, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v62, v43, v41, 0x7fff
	v_bfe_u32 v41, v44, 16, 1
	v_add3_u32 v63, v44, v41, 0x7fff
	v_bfe_u32 v41, v45, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v64, v45, v41, 0x7fff
	v_bfe_u32 v41, v46, 16, 1
	scratch_load_b32 v45, off, off offset:220 ; 4-byte Folded Reload
	v_add3_u32 v65, v46, v41, 0x7fff
	v_bfe_u32 v41, v47, 16, 1
	v_add3_u32 v66, v47, v41, 0x7fff
	v_bfe_u32 v41, v48, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v67, v48, v41, 0x7fff
	scratch_load_b32 v41, off, off offset:216 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[45:48], v45
	s_waitcnt vmcnt(0)
	ds_load_b128 v[41:44], v41
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s14, v45, v45
	v_cmp_o_f32_e64 s15, v46, v46
	v_cmp_o_f32_e64 s16, v47, v47
	v_cmp_o_f32_e64 s17, v48, v48
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v68, v41, 16, 1
	v_cmp_o_f32_e64 s10, v41, v41
	v_cmp_o_f32_e64 s11, v42, v42
	v_cmp_o_f32_e64 s12, v43, v43
	v_cmp_o_f32_e64 s13, v44, v44
	v_add3_u32 v68, v41, v68, 0x7fff
	v_bfe_u32 v41, v42, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v69, v42, v41, 0x7fff
	v_bfe_u32 v41, v43, 16, 1
	v_cndmask_b16 v42.l, 0x7fff, v62.h, s2
	v_cndmask_b16 v42.h, 0x7fff, v63.h, s3
	v_add3_u32 v70, v43, v41, 0x7fff
	v_bfe_u32 v41, v44, 16, 1
	v_cndmask_b16 v43.l, 0x7fff, v64.h, s6
	v_cndmask_b16 v43.h, 0x7fff, v65.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v71, v44, v41, 0x7fff
	v_bfe_u32 v41, v45, 16, 1
	v_cndmask_b16 v44.l, 0x7fff, v66.h, s8
	v_cndmask_b16 v44.h, 0x7fff, v67.h, s9
	v_add3_u32 v72, v45, v41, 0x7fff
	v_cndmask_b16 v45.l, 0x7fff, v68.h, s10
	v_cndmask_b16 v45.h, 0x7fff, v69.h, s11
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[62:65], off, off offset:112
	scratch_load_b128 v[66:69], off, off offset:128
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v41, v46, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v73, v46, v41, 0x7fff
	v_bfe_u32 v41, v47, 16, 1
	v_cndmask_b16 v46.l, 0x7fff, v70.h, s12
	v_cndmask_b16 v46.h, 0x7fff, v71.h, s13
	v_add3_u32 v74, v47, v41, 0x7fff
	v_bfe_u32 v41, v48, 16, 1
	v_cndmask_b16 v47.l, 0x7fff, v72.h, s14
	v_cndmask_b16 v47.h, 0x7fff, v73.h, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v48, v48, v41, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v49.h, vcc_lo
	v_cndmask_b16 v41.h, 0x7fff, v50.h, s1
	v_cndmask_b16 v48.l, 0x7fff, v74.h, s16
	v_cndmask_b16 v48.h, 0x7fff, v48.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[62:69], v[41:48], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off offset:208
	scratch_load_b32 v45, off, off offset:212
	s_waitcnt vmcnt(1)
	ds_load_b128 v[41:44], v41
	s_waitcnt vmcnt(0)
	ds_load_b128 v[45:48], v45
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v49, v41, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v45, v45
	v_cmp_o_f32_e64 s1, v42, v42
	v_cmp_o_f32_e64 s2, v43, v43
	v_add3_u32 v49, v41, v49, 0x7fff
	v_bfe_u32 v41, v42, 16, 1
	v_cmp_o_f32_e64 s3, v44, v44
	v_cmp_o_f32_e64 s7, v46, v46
	v_cmp_o_f32_e64 s8, v47, v47
	v_cmp_o_f32_e64 s9, v48, v48
	v_add3_u32 v50, v42, v41, 0x7fff
	v_bfe_u32 v41, v43, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v62, v43, v41, 0x7fff
	v_bfe_u32 v41, v44, 16, 1
	v_add3_u32 v63, v44, v41, 0x7fff
	v_bfe_u32 v41, v45, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v64, v45, v41, 0x7fff
	v_bfe_u32 v41, v46, 16, 1
	scratch_load_b32 v45, off, off offset:204 ; 4-byte Folded Reload
	v_add3_u32 v65, v46, v41, 0x7fff
	v_bfe_u32 v41, v47, 16, 1
	v_add3_u32 v66, v47, v41, 0x7fff
	v_bfe_u32 v41, v48, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v67, v48, v41, 0x7fff
	scratch_load_b32 v41, off, off offset:200 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[45:48], v45
	s_waitcnt vmcnt(0)
	ds_load_b128 v[41:44], v41
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s14, v45, v45
	v_cmp_o_f32_e64 s15, v46, v46
	v_cmp_o_f32_e64 s16, v47, v47
	v_cmp_o_f32_e64 s17, v48, v48
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v68, v41, 16, 1
	v_cmp_o_f32_e64 s10, v41, v41
	v_cmp_o_f32_e64 s11, v42, v42
	v_cmp_o_f32_e64 s12, v43, v43
	v_cmp_o_f32_e64 s13, v44, v44
	v_add3_u32 v68, v41, v68, 0x7fff
	v_bfe_u32 v41, v42, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v69, v42, v41, 0x7fff
	v_bfe_u32 v41, v43, 16, 1
	v_cndmask_b16 v42.l, 0x7fff, v62.h, s2
	v_cndmask_b16 v42.h, 0x7fff, v63.h, s3
	v_add3_u32 v70, v43, v41, 0x7fff
	v_bfe_u32 v41, v44, 16, 1
	v_cndmask_b16 v43.l, 0x7fff, v64.h, s6
	v_cndmask_b16 v43.h, 0x7fff, v65.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v71, v44, v41, 0x7fff
	v_bfe_u32 v41, v45, 16, 1
	v_cndmask_b16 v44.l, 0x7fff, v66.h, s8
	v_cndmask_b16 v44.h, 0x7fff, v67.h, s9
	v_add3_u32 v72, v45, v41, 0x7fff
	v_cndmask_b16 v45.l, 0x7fff, v68.h, s10
	v_cndmask_b16 v45.h, 0x7fff, v69.h, s11
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[62:65], off, off offset:80
	scratch_load_b128 v[66:69], off, off offset:96
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v41, v46, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v73, v46, v41, 0x7fff
	v_bfe_u32 v41, v47, 16, 1
	v_cndmask_b16 v46.l, 0x7fff, v70.h, s12
	v_cndmask_b16 v46.h, 0x7fff, v71.h, s13
	v_add3_u32 v74, v47, v41, 0x7fff
	v_bfe_u32 v41, v48, 16, 1
	v_cndmask_b16 v47.l, 0x7fff, v72.h, s14
	v_cndmask_b16 v47.h, 0x7fff, v73.h, s15
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v48, v48, v41, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v49.h, vcc_lo
	v_cndmask_b16 v41.h, 0x7fff, v50.h, s1
	v_cndmask_b16 v48.l, 0x7fff, v74.h, s16
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v49, s79, v53
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v48.h, 0x7fff, v48.h, s17
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s79, s79, 32
	scratch_load_b32 v53, off, off offset:52 ; 4-byte Folded Reload
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v50, s74, v49
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v49, s69, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 678 21                        ; attention_backward.py:678:21
	v_min_i32_e32 v49, v50, v49
	.loc	1 678 47 is_stmt 0              ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v50, s68, v50
	.loc	1 678 21                        ; attention_backward.py:678:21
	v_cmp_ge_i32_e64 s10, v49, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v93, v50
	.loc	1 679 21 is_stmt 1              ; attention_backward.py:679:21
	s_and_b32 s10, s10, vcc_lo
	s_and_b32 vcc_lo, s0, s10
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s10, v218, v218
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[62:69], v[41:48], v[97:104]
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v66, off, off offset:76
	scratch_load_b32 v65, off, off offset:72
	scratch_load_b32 v64, off, off offset:68
	scratch_load_b32 v63, off, off offset:64
	scratch_load_b32 v62, off, off offset:60
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v41, v97, v61
	v_sub_f32_e32 v42, v98, v61
	v_sub_f32_e32 v44, v100, v61
	v_sub_f32_e32 v43, v99, v61
	v_sub_f32_e32 v45, v101, v61
	v_sub_f32_e32 v46, v102, v61
	v_sub_f32_e32 v47, v103, v61
	v_sub_f32_e32 v48, v104, v61
	scratch_load_b32 v61, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v67, v198, 16, 1
	v_bfe_u32 v68, v194, 16, 1
	v_bfe_u32 v69, v190, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v67, v198, v67, 0x7fff
	v_add3_u32 v68, v194, v68, 0x7fff
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v69, v190, v69, 0x7fff
	.loc	1 678 21                        ; attention_backward.py:678:21
	s_waitcnt vmcnt(6)
	v_cmp_ge_i32_e64 s17, v49, v53
	.loc	1 678 30 is_stmt 0              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s9, v53, v50
	.loc	1 679 21 is_stmt 1              ; attention_backward.py:679:21
	s_and_b32 s9, s17, s9
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s17, v190, v190
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s9, s0, s9
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v85.h, 0x7fff, v69.h, s17
	v_cmp_o_f32_e64 s17, v221, v221
	.loc	1 678 21                        ; attention_backward.py:678:21
	s_waitcnt vmcnt(5)
	v_cmp_ge_i32_e64 s11, v49, v66
	s_waitcnt vmcnt(4)
	v_cmp_ge_i32_e64 s12, v49, v65
	s_waitcnt vmcnt(3)
	v_cmp_ge_i32_e64 s13, v49, v64
	s_waitcnt vmcnt(2)
	v_cmp_ge_i32_e64 s14, v49, v63
	s_waitcnt vmcnt(1)
	v_cmp_ge_i32_e64 s15, v49, v62
	.loc	1 678 30 is_stmt 0              ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s6, v63, v50
	v_cmp_ge_i32_e64 s1, v66, v50
	v_cmp_ge_i32_e64 s7, v62, v50
	v_cmp_ge_i32_e64 s2, v65, v50
	v_cmp_ge_i32_e64 s3, v64, v50
	.loc	1 679 21 is_stmt 1              ; attention_backward.py:679:21
	s_and_b32 s6, s14, s6
	s_and_b32 s1, s11, s1
	s_and_b32 s6, s0, s6
	.loc	1 678 21                        ; attention_backward.py:678:21
	s_waitcnt vmcnt(0)
	v_cmp_ge_i32_e64 s16, v49, v61
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v49, v60
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s1, s0, s1
	s_and_b32 s2, s12, s2
	s_and_b32 s3, s13, s3
	s_and_b32 s2, s0, s2
	s_and_b32 s3, s0, s3
	s_and_b32 s7, s15, s7
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s8, v61, v50
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s7, s0, s7
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b16_e64 v50.l, v182.l
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v63, 0, v49, vcc_lo
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b16_e32 v50.h, v110.l
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s8, s16, s8
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b16_e64 v110.l, v182.h
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s8, s0, s8
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v41, v63, v41
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s15, v198, v198
	v_cmp_o_f32_e64 s16, v194, v194
	v_cmp_o_f32_e64 s11, v214, v214
	v_cmp_o_f32_e64 s12, v210, v210
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v41, s71, v41
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s13, v206, v206
	v_cmp_o_f32_e64 s14, v202, v202
	v_cndmask_b16 v83.h, 0x7fff, v67.h, s15
	v_cndmask_b16 v84.h, 0x7fff, v68.h, s16
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v49, v41, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s15, v225, v225
	v_cmp_o_f32_e64 s16, v223, v223
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_u32 s79, s77
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v41, v41, v49, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v49, v59
	v_mov_b32_e32 v198, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v41.l, 0x7fff, v41.h, vcc_lo
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v62, 0, v49, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v42, v62, v42
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v42, s71, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v49, v42, 16, 1
	v_cmp_o_f32_e64 s1, v42, v42
	v_add3_u32 v42, v42, v49, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v49, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v58, 0, v49, s2
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v43, v58, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v43, s71, v43
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v49, v43, 16, 1
	v_cmp_o_f32_e64 s2, v43, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v43, v43, v49, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v49, v57
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v57, 0, v49, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v44, v57, v44
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v44, s71, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v49, v44, 16, 1
	v_cmp_o_f32_e64 s3, v44, v44
	v_add3_u32 v44, v44, v49, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v49, v109
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v64, 0, v49, s6
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v45, v64, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v45, s71, v45
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v49, v45, 16, 1
	v_cmp_o_f32_e64 s6, v45, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v45, v45, v49, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v49, v56
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v41.h, 0x7fff, v45.h, s6
	.loc	1 722 33                        ; attention_backward.py:722:33
	scratch_load_b32 v45, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s6, v57, v57
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v56, 0, v49, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v46, v56, v46
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v46, s71, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v49, v46, 16, 1
	v_cmp_o_f32_e64 s7, v46, v46
	v_add3_u32 v46, v46, v49, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v49, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v59, 0, v49, s8
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v47, v59, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v47, s71, v47
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v49, v47, 16, 1
	v_cmp_o_f32_e64 s8, v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v47, v47, v49, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v49, v54
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v60, 0, v49, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v48, v60, v48
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v63, v63
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v48, s71, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v49, v48, 16, 1
	v_cmp_o_f32_e64 s9, v48, v48
	v_add3_u32 v48, v48, v49, 0x7fff
	.loc	1 663 37 is_stmt 1              ; attention_backward.py:663:37
	v_mov_b16_e32 v49.h, v105.l
	v_mov_b16_e64 v105.l, v178.h
	v_mov_b16_e64 v49.l, v178.l
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_e32 v109, v105
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v61, 0, v45
	ds_store_b16 v61, v41
	ds_store_b16_d16_hi v61, v41 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v41.l, 0x7fff, v42.h, s1
	v_cndmask_b16 v41.h, 0x7fff, v46.h, s7
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s1, v64, v64
	v_cmp_o_f32_e64 s7, v59, v59
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v0, v41
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v41.l, 0x7fff, v43.h, s2
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v0, v41 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v41.h, 0x7fff, v47.h, s8
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s2, v62, v62
	v_cmp_o_f32_e64 s8, v60, v60
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v253, v41
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v41.l, 0x7fff, v44.h, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v253, v41 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v41.h, 0x7fff, v48.h, s9
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v33, v41
	ds_store_b16_d16_hi v33, v41 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v41, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s3, v56, v56
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s9, v222, v222
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v55, 0, v41
	ds_load_b128 v[41:44], v55
	ds_load_b128 v[45:48], v51
	ds_load_b128 v[97:100], v36
	ds_load_b128 v[101:104], v52
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v53, off, off offset:260 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v54, 0, v53
	scratch_load_b32 v53, off, off offset:196 ; 4-byte Folded Reload
	ds_store_2addr_b64 v54, v[49:50], v[109:110] offset1:8
	v_mov_b16_e32 v49.h, v106.l
	v_mov_b16_e64 v106.l, v179.h
	v_mov_b16_e64 v50.l, v183.l
	v_mov_b16_e32 v50.h, v111.l
	v_mov_b16_e64 v49.l, v179.l
	v_mov_b16_e64 v111.l, v183.h
	v_mov_b32_e32 v110, v106
	v_mov_b16_e32 v54.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v65.l, v54.l
	v_mov_b16_e32 v66.l, v54.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v72.l, v54.l
	v_mov_b16_e32 v74.l, v54.l
	v_mov_b16_e32 v76.l, v54.l
	v_mov_b16_e64 v190.l, v54.l
	v_mov_b16_e32 v78.l, v54.l
	v_mov_b16_e32 v80.l, v54.l
	v_mov_b16_e32 v83.l, v54.l
	v_mov_b16_e32 v85.l, v54.l
	v_mov_b16_e32 v71.l, v54.l
	v_mov_b16_e32 v73.l, v54.l
	v_mov_b16_e32 v75.l, v54.l
	v_mov_b16_e32 v81.l, v54.l
	v_mov_b16_e32 v84.l, v54.l
	v_mov_b16_e32 v77.l, v54.l
	v_mov_b16_e32 v79.l, v54.l
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v53, v[49:50], v[110:111] offset1:8
	scratch_load_b32 v53, off, off offset:188 ; 4-byte Folded Reload
	v_mov_b16_e32 v49.h, v107.l
	v_mov_b16_e64 v107.l, v180.h
	v_mov_b16_e64 v50.l, v184.l
	v_mov_b16_e32 v50.h, v112.l
	v_mov_b16_e64 v49.l, v180.l
	v_mov_b16_e64 v112.l, v184.h
	v_mov_b32_e32 v111, v107
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v53, v[49:50], v[111:112] offset1:8
	scratch_load_b32 v53, off, off offset:192 ; 4-byte Folded Reload
	v_mov_b16_e32 v50.h, v113.l
	v_mov_b16_e64 v113.l, v185.h
	v_mov_b16_e64 v50.l, v185.l
	v_mov_b16_e64 v49.l, v181.l
	v_mov_b16_e32 v49.h, v108.l
	v_mov_b16_e64 v108.l, v181.h
	v_mov_b32_e32 v109, v113
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v53, v[49:50], v[108:109] offset1:8
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:276
	scratch_load_b32 v50, off, off offset:180
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v49, 0, v49
	s_waitcnt vmcnt(0)
	ds_load_b128 v[109:112], v50
	ds_load_b128 v[105:108], v49
	ds_load_b128 v[178:181], v49 offset:2048
	ds_load_b128 v[182:185], v50 offset:2048
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v49, off, off offset:144
	scratch_load_b32 v50, off, off offset:184
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[105:112], v[41:48], v[25:32]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[178:185], v[41:48], v[17:24]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v185.l, v54.l
	v_mov_b16_e64 v179.l, v54.l
	v_mov_b16_e64 v178.l, v54.l
	v_mov_b16_e64 v180.l, v54.l
	v_mov_b16_e64 v181.l, v54.l
	v_mov_b16_e64 v182.l, v54.l
	v_mov_b16_e64 v183.l, v54.l
	v_mov_b16_e64 v184.l, v54.l
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	ds_load_b128 v[41:44], v50
	ds_load_b128 v[105:108], v50 offset:2048
	ds_load_b128 v[109:112], v49 offset:2048
	ds_load_b128 v[45:48], v49
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v50.l, v54.l
	v_mov_b16_e32 v49.l, v54.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[17:24], v[105:112], v[97:104], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[25:32], v[41:48], v[97:104], v[25:32]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v41, v63, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v97.l, v54.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v44, v59, 16, 1
	v_bfe_u32 v45, v60, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v46, v228, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v41, v63, v41, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v47, v224, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v44, v59, v44, 0x7fff
	v_add3_u32 v45, v60, v45, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v46, v228, v46, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v54.h, 0x7fff, v41.h, vcc_lo
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v47, v224, v47, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v65.h, 0x7fff, v44.h, s7
	v_cndmask_b16 v66.h, 0x7fff, v45.h, s8
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v44, v236, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v41, v63, v54
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v45, v232, 16, 1
	v_bfe_u32 v48, v220, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v46.l, v54.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v44, v236, v44, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v42, v41, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v45, v232, v45, 0x7fff
	v_add3_u32 v48, v220, v48, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v44.l, v54.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v63, v41, v42, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v41, v64, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s7, v230, v230
	v_cmp_o_f32_e64 s8, v226, v226
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v45.l, v54.l
	v_mov_b16_e32 v47.l, v54.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v41, v64, v41, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v48.l, v54.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v97.h, 0x7fff, v41.h, s1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v41, v64, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_bfe_u32 v42, v41, 16, 1
	v_cmp_o_f32_e64 s1, v41, v41
	v_add3_u32 v64, v41, v42, 0x7fff
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_bfe_u32 v41, v62, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v41, v62, v41, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v41.l, v54.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s2
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v61, v97 offset:512
	ds_store_b16_d16_hi v0, v41
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v42, v62, v41
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v41, v58, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v62.l, v54.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_bfe_u32 v43, v42, 16, 1
	v_cmp_o_f32_e64 s2, v42, v42
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_add3_u32 v41, v58, v41, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v41.l, 0x7fff, v63.h, vcc_lo
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v248, v248
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v42, v42, v43, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v43, v56, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v63, v212, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v43, v56, v43, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v63, v212, v63, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v49.h, 0x7fff, v43.h, s3
	v_bfe_u32 v43, v57, 16, 1
	v_cmp_o_f32_e64 s3, v58, v58
	v_add3_u32 v43, v57, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v50.h, 0x7fff, v41.h, s3
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v41.h, 0x7fff, v64.h, s1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s1, v244, v244
	v_bfe_u32 v64, v210, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v62.h, 0x7fff, v43.h, s6
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v61, v54
	ds_store_b16_d16_hi v0, v49 offset:512
	ds_store_b16_d16_hi v253, v50
	ds_store_b16_d16_hi v253, v65 offset:512
	ds_store_b16_d16_hi v33, v62
	ds_store_b16_d16_hi v33, v66 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[105:108], v55
	ds_load_b128 v[109:112], v51
	ds_load_b128 v[97:100], v36
	ds_load_b128 v[101:104], v52
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v61, v41
	ds_store_b16_d16_hi v61, v41 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v41.l, 0x7fff, v42.h, s2
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v42, v248, 16, 1
	v_bfe_u32 v43, v244, 16, 1
	v_bfe_u32 v61, v216, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v50, v58, v50
	v_sub_f32_e32 v57, v57, v62
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v42, v248, v42, 0x7fff
	v_add3_u32 v43, v244, v43, 0x7fff
	v_add3_u32 v61, v216, v61, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v58, v60, v66
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v60, v226, 16, 1
	v_cndmask_b16 v41.h, 0x7fff, v42.h, vcc_lo
	v_cndmask_b16 v42.h, 0x7fff, v43.h, s1
	v_bfe_u32 v43, v240, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v240, v240
	v_cmp_o_f32_e64 s1, v212, v212
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s6, v58, v58
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v66, v202, 16, 1
	v_add3_u32 v43, v240, v43, 0x7fff
	v_add3_u32 v60, v226, v60, 0x7fff
	v_cndmask_b16 v179.h, 0x7fff, v63.h, s1
	v_bfe_u32 v63, v214, 16, 1
	v_bfe_u32 v62, v218, 16, 1
	v_cndmask_b16 v43.h, 0x7fff, v43.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v236, v236
	v_add3_u32 v64, v210, v64, 0x7fff
	v_add3_u32 v63, v214, v63, 0x7fff
	v_add3_u32 v66, v202, v66, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v43.l, v54.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v44.h, 0x7fff, v44.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v232, v232
	v_add3_u32 v62, v218, v62, 0x7fff
	v_cndmask_b16 v75.h, 0x7fff, v60.h, s8
	v_cndmask_b16 v78.h, 0x7fff, v63.h, s11
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v90, v177, v44
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v45.h, 0x7fff, v45.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v228, v228
	v_bfe_u32 v177, v197, 16, 1
	v_cndmask_b16 v79.h, 0x7fff, v64.h, s12
	v_cndmask_b16 v81.h, 0x7fff, v66.h, s14
	v_cndmask_b16 v77.h, 0x7fff, v62.h, s10
	v_cndmask_b16 v46.h, 0x7fff, v46.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v224, v224
	v_add3_u32 v177, v197, v177, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v89, v171, v45
	v_mov_b32_e32 v202, v95
	v_sub_f32_e32 v88, v173, v46
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v47.h, 0x7fff, v47.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v220, v220
	v_bfe_u32 v173, v201, 16, 1
	v_cmp_o_f32_e64 s8, v239, v239
	v_cmp_o_f32_e64 s10, v235, v235
	v_cmp_o_f32_e64 s11, v233, v233
	v_cndmask_b16 v48.h, 0x7fff, v48.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v216, v216
	v_add3_u32 v173, v201, v173, 0x7fff
	v_cmp_o_f32_e64 s12, v231, v231
	v_cmp_o_f32_e64 s14, v227, v227
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v86, v169, v48
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v178.h, 0x7fff, v61.h, vcc_lo
	v_bfe_u32 v61, v208, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v208, v208
	v_bfe_u32 v169, v205, 16, 1
	v_bfe_u32 v171, v203, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v173.l, v54.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v61, v208, v61, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v169, v205, v169, 0x7fff
	v_add3_u32 v171, v203, v171, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v169.l, v54.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v180.h, 0x7fff, v61.h, vcc_lo
	v_bfe_u32 v61, v204, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v204, v204
	v_cndmask_b16 v171.h, 0x7fff, v171.h, s26
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v171.l, v54.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v61, v204, v61, 0x7fff
	v_mov_b32_e32 v204, v96
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s1, v57, v57
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v96, v145, v179
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v179.l, v78.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v181.h, 0x7fff, v61.h, vcc_lo
	v_bfe_u32 v61, v200, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v200, v200
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v87, v167, v47
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v47.l, v75.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v145, v213, 16, 1
	v_add3_u32 v61, v200, v61, 0x7fff
	v_mov_b32_e32 v200, v94
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v94, v141, v181
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v141, v217, 16, 1
	v_add3_u32 v145, v213, v145, 0x7fff
	v_cndmask_b16 v182.h, 0x7fff, v61.h, vcc_lo
	v_bfe_u32 v61, v196, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v196, v196
	v_add3_u32 v141, v217, v141, 0x7fff
	v_bfe_u32 v167, v207, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v145.l, v54.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v61, v196, v61, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v141.l, v54.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v167, v207, v167, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v167.l, v54.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v183.h, 0x7fff, v61.h, vcc_lo
	v_bfe_u32 v61, v192, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v192, v192
	v_cndmask_b16 v167.h, 0x7fff, v167.h, s24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v61, v192, v61, 0x7fff
	v_cndmask_b16 v192.h, 0x7fff, v173.h, s27
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v192.l, v54.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v184.h, 0x7fff, v61.h, vcc_lo
	v_bfe_u32 v61, v188, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v188, v188
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v61, v188, v61, 0x7fff
	v_bfe_u32 v188, v195, 16, 1
	v_cndmask_b16 v185.h, 0x7fff, v61.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v196, v195, v188, 0x7fff
	v_bfe_u32 v188, v193, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v61, v222, 16, 1
	v_add3_u32 v194, v193, v188, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v194.l, v54.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v61, v222, v61, 0x7fff
	v_cndmask_b16 v193.h, 0x7fff, v177.h, s29
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v193.l, v54.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v194.h, 0x7fff, v194.h, s31
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v49, v56, v49
	v_sub_f32_e32 v56, v59, v65
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_bfe_u32 v59, v50, 16, 1
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_bfe_u32 v65, v206, 16, 1
	v_cndmask_b16 v76.h, 0x7fff, v61.h, s9
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s2, v49, v49
	v_cmp_o_f32_e64 s3, v56, v56
	v_add3_u32 v50, v50, v59, 0x7fff
	v_bfe_u32 v59, v57, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v65, v206, v65, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v48.l, v76.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v91, v175, v43
	v_sub_f32_e32 v113, v143, v178
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v57, v57, v59, 0x7fff
	v_bfe_u32 v59, v49, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v80.h, 0x7fff, v65.h, s13
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v178.l, v77.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v188, v191, 16, 1
	v_cmp_o_f32_e64 s9, v237, v237
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v49, v49, v59, 0x7fff
	v_bfe_u32 v59, v56, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v181.l, v80.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s13, v229, v229
	v_bfe_u32 v143, v215, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v42.l, 0x7fff, v49.h, s2
	v_add3_u32 v56, v56, v59, 0x7fff
	v_bfe_u32 v59, v58, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v0, v41
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v41.l, 0x7fff, v50.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v0, v42 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v42.l, 0x7fff, v56.h, s3
	v_add3_u32 v58, v58, v59, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v49, v250, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v253, v41
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v41.l, 0x7fff, v57.h, s1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v253, v42 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v42.l, 0x7fff, v58.h, s6
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v50, v246, 16, 1
	v_bfe_u32 v56, v242, 16, 1
	v_bfe_u32 v57, v238, 16, 1
	v_bfe_u32 v58, v234, 16, 1
	v_bfe_u32 v59, v230, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v250, v250
	v_cmp_o_f32_e64 s1, v246, v246
	v_cmp_o_f32_e64 s2, v242, v242
	v_cmp_o_f32_e64 s3, v238, v238
	v_cmp_o_f32_e64 s6, v234, v234
	v_add3_u32 v49, v250, v49, 0x7fff
	v_add3_u32 v50, v246, v50, 0x7fff
	v_add3_u32 v56, v242, v56, 0x7fff
	v_add3_u32 v57, v238, v57, 0x7fff
	v_add3_u32 v58, v234, v58, 0x7fff
	v_add3_u32 v59, v230, v59, 0x7fff
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v33, v41
	ds_store_b16 v33, v42 offset:512
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v41.l, v54.l
	v_mov_b16_e32 v42.l, v54.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v49.h, 0x7fff, v49.h, vcc_lo
	v_cndmask_b16 v50.h, 0x7fff, v50.h, s1
	v_cndmask_b16 v71.h, 0x7fff, v56.h, s2
	v_cndmask_b16 v72.h, 0x7fff, v57.h, s3
	v_cndmask_b16 v73.h, 0x7fff, v58.h, s6
	v_cndmask_b16 v74.h, 0x7fff, v59.h, s7
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[63:66], v55
	ds_load_b128 v[67:70], v51
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v45.l, v73.h
	v_mov_b16_e32 v46.l, v74.h
	v_mov_b16_e32 v44.l, v72.h
	v_mov_b16_e32 v43.l, v71.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v92, v165, v42
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v42.l, v50.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v93, v163, v41
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v41.l, v49.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v56, v133, v185
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v185.l, v85.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v59, v137, v183
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v183.l, v83.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v61, v135, v182
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v182.l, v81.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v95, v139, v180
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v180.l, v79.h
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[105:112], v[1:8]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v50.l, v54.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v57, v131, v184
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v184.l, v84.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v165, v209, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v251, v251
	v_cmp_o_f32_e64 s1, v249, v249
	v_cmp_o_f32_e64 s2, v247, v247
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[178:185], v[97:104], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s3, v245, v245
	v_cmp_o_f32_e64 s6, v243, v243
	v_cmp_o_f32_e64 s7, v241, v241
	v_bfe_u32 v139, v219, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[63:70], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v41, v251, 16, 1
	v_bfe_u32 v42, v247, 16, 1
	v_bfe_u32 v43, v243, 16, 1
	v_bfe_u32 v44, v239, 16, 1
	v_bfe_u32 v45, v235, 16, 1
	v_bfe_u32 v46, v231, 16, 1
	v_bfe_u32 v47, v227, 16, 1
	v_bfe_u32 v48, v223, 16, 1
	v_add3_u32 v55, v251, v41, 0x7fff
	v_bfe_u32 v41, v249, 16, 1
	v_add3_u32 v58, v247, v42, 0x7fff
	v_bfe_u32 v42, v245, 16, 1
	v_add3_u32 v60, v243, v43, 0x7fff
	v_bfe_u32 v43, v241, 16, 1
	v_add3_u32 v62, v239, v44, 0x7fff
	v_bfe_u32 v44, v237, 16, 1
	v_add3_u32 v131, v235, v45, 0x7fff
	v_bfe_u32 v45, v233, 16, 1
	v_add3_u32 v133, v231, v46, 0x7fff
	v_bfe_u32 v46, v229, 16, 1
	v_add3_u32 v135, v227, v47, 0x7fff
	v_bfe_u32 v47, v225, 16, 1
	v_add3_u32 v137, v223, v48, 0x7fff
	v_bfe_u32 v48, v221, 16, 1
	v_add3_u32 v41, v249, v41, 0x7fff
	v_add3_u32 v42, v245, v42, 0x7fff
	v_add3_u32 v43, v241, v43, 0x7fff
	v_add3_u32 v44, v237, v44, 0x7fff
	v_add3_u32 v45, v233, v45, 0x7fff
	v_add3_u32 v46, v229, v46, 0x7fff
	v_add3_u32 v47, v225, v47, 0x7fff
	v_add3_u32 v48, v221, v48, 0x7fff
	v_bfe_u32 v163, v211, 16, 1
	v_add3_u32 v165, v209, v165, 0x7fff
	v_bfe_u32 v175, v199, 16, 1
	v_add3_u32 v197, v191, v188, 0x7fff
	v_bfe_u32 v188, v189, 16, 1
	v_add3_u32 v139, v219, v139, 0x7fff
	v_add3_u32 v143, v215, v143, 0x7fff
	v_add3_u32 v163, v211, v163, 0x7fff
	v_add3_u32 v175, v199, v175, 0x7fff
	v_add3_u32 v195, v189, v188, 0x7fff
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s1
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s3
	v_cndmask_b16 v43.h, 0x7fff, v43.h, s7
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s9
	v_cndmask_b16 v45.h, 0x7fff, v45.h, s11
	v_cndmask_b16 v46.h, 0x7fff, v46.h, s13
	v_cndmask_b16 v47.h, 0x7fff, v47.h, s15
	v_cndmask_b16 v48.h, 0x7fff, v48.h, s17
	v_cndmask_b16 v188.h, 0x7fff, v141.h, s19
	v_cndmask_b16 v189.h, 0x7fff, v145.h, s21
	v_cndmask_b16 v190.h, 0x7fff, v165.h, s23
	v_cndmask_b16 v191.h, 0x7fff, v169.h, s25
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v41.l, v54.l
	v_mov_b16_e32 v42.l, v54.l
	v_mov_b16_e32 v43.l, v54.l
	v_mov_b16_e32 v44.l, v54.l
	v_mov_b16_e32 v45.l, v54.l
	v_mov_b16_e32 v46.l, v54.l
	v_mov_b16_e32 v47.l, v54.l
	v_mov_b16_e32 v48.l, v54.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v141.h, 0x7fff, v55.h, vcc_lo
	v_cndmask_b16 v145.h, 0x7fff, v58.h, s2
	v_cndmask_b16 v165.h, 0x7fff, v60.h, s6
	v_cndmask_b16 v169.h, 0x7fff, v62.h, s8
	v_cndmask_b16 v131.h, 0x7fff, v131.h, s10
	v_cndmask_b16 v133.h, 0x7fff, v133.h, s12
	v_cndmask_b16 v135.h, 0x7fff, v135.h, s14
	v_cndmask_b16 v137.h, 0x7fff, v137.h, s16
	v_cndmask_b16 v195.h, 0x7fff, v195.h, s34
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v188.l, v54.l
	v_mov_b16_e64 v189.l, v54.l
	v_mov_b16_e64 v191.l, v54.l
	v_mov_b16_e64 v195.l, v54.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v139.h, 0x7fff, v139.h, s18
	v_cndmask_b16 v143.h, 0x7fff, v143.h, s20
	v_cndmask_b16 v163.h, 0x7fff, v163.h, s22
	v_cndmask_b16 v173.h, 0x7fff, v175.h, s28
	v_cndmask_b16 v175.h, 0x7fff, v196.h, s30
	v_cndmask_b16 v54.h, 0x7fff, v197.h, s33
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v149, v149, v48
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v48.l, v137.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v147, v147, v47
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v47.l, v135.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v153, v153, v46
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v46.l, v133.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v151, v151, v45
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v45.l, v131.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v161, v161, v42
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v42.l, v145.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v159, v159, v41
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v41.l, v141.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v133.l, v54.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v157, v157, v44
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v44.l, v169.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v137.l, v54.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v155, v155, v43
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v43.l, v165.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v55, v121, v195
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v195.l, v54.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v58, v119, v194
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v194.l, v175.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v60, v125, v193
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v193.l, v173.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v62, v123, v192
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v192.l, v171.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v119, v129, v191
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v191.l, v167.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v121, v127, v190
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v190.l, v163.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v115, v115, v188
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v188.l, v139.h
	v_wmma_f32_16x16x16_bf16 v[9:16], v[41:48], v[105:112], v[9:16]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v143.l, v54.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v117, v117, v189
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v189.l, v143.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v49.l, v54.l
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v92, v92
	v_cmp_o_f32_e64 s7, v91, v91
	v_cmp_o_f32_e64 s9, v90, v90
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[188:195], v[97:104], v[9:16]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v88, v88
	v_cmp_o_f32_e64 s15, v87, v87
	v_cmp_o_f32_e64 s17, v86, v86
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v165.l, v54.l
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[41:48], v[63:70], v[9:16]
	ds_load_b128 v[41:44], v36
	ds_load_b128 v[45:48], v52
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v131.l, v54.l
	v_mov_b16_e64 v135.l, v54.l
	v_mov_b16_e64 v139.l, v54.l
	v_mov_b16_e64 v175.l, v54.l
	s_clause 0x2                            ; 36-byte Folded Reload
	scratch_load_b128 v[212:215], off, off offset:496
	scratch_load_b128 v[216:219], off, off offset:512
	scratch_load_b32 v123, off, off offset:288
	v_mov_b16_e64 v163.l, v54.l
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[178:185], v[41:48], v[1:8]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[188:195], v[41:48], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v41, v162, v49 :: v_dual_sub_f32 v42, v164, v50
	v_dual_sub_f32 v43, v174, v71 :: v_dual_sub_f32 v44, v176, v72
	v_dual_sub_f32 v45, v170, v73 :: v_dual_sub_f32 v46, v172, v74
	v_dual_sub_f32 v47, v166, v75 :: v_dual_sub_f32 v48, v168, v76
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v49, v41, 16, 1
	v_bfe_u32 v50, v42, 16, 1
	v_bfe_u32 v63, v43, 16, 1
	v_bfe_u32 v64, v44, 16, 1
	v_bfe_u32 v65, v45, 16, 1
	v_bfe_u32 v66, v46, 16, 1
	v_bfe_u32 v67, v47, 16, 1
	v_bfe_u32 v68, v48, 16, 1
	v_mov_b32_e32 v192, v82
	v_mov_b32_e32 v190, v40
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	v_add3_u32 v41, v41, v49, 0x7fff
	v_bfe_u32 v49, v93, 16, 1
	v_cmp_o_f32_e64 s2, v42, v42
	v_add3_u32 v42, v42, v50, 0x7fff
	v_bfe_u32 v50, v92, 16, 1
	v_cmp_o_f32_e64 s6, v43, v43
	v_add3_u32 v43, v43, v63, 0x7fff
	v_bfe_u32 v63, v91, 16, 1
	v_cmp_o_f32_e64 s8, v44, v44
	v_add3_u32 v44, v44, v64, 0x7fff
	v_bfe_u32 v64, v90, 16, 1
	v_cmp_o_f32_e64 s10, v45, v45
	v_add3_u32 v45, v45, v65, 0x7fff
	v_bfe_u32 v65, v89, 16, 1
	v_cmp_o_f32_e64 s12, v46, v46
	v_add3_u32 v46, v46, v66, 0x7fff
	v_bfe_u32 v66, v88, 16, 1
	v_cmp_o_f32_e64 s14, v47, v47
	v_add3_u32 v47, v47, v67, 0x7fff
	v_bfe_u32 v67, v87, 16, 1
	v_cmp_o_f32_e64 s16, v48, v48
	v_add3_u32 v48, v48, v68, 0x7fff
	v_bfe_u32 v68, v86, 16, 1
	v_cmp_o_f32_e64 s1, v93, v93
	v_add3_u32 v49, v93, v49, 0x7fff
	v_add3_u32 v50, v92, v50, 0x7fff
	v_add3_u32 v63, v91, v63, 0x7fff
	v_add3_u32 v64, v90, v64, 0x7fff
	v_cmp_o_f32_e64 s11, v89, v89
	v_add3_u32 v65, v89, v65, 0x7fff
	v_add3_u32 v66, v88, v66, 0x7fff
	v_add3_u32 v67, v87, v67, 0x7fff
	v_add3_u32 v68, v86, v68, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v41.h, vcc_lo
	v_cndmask_b16 v41.h, 0x7fff, v49.h, s1
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s2
	v_cndmask_b16 v42.h, 0x7fff, v50.h, s3
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s6
	v_cndmask_b16 v43.h, 0x7fff, v63.h, s7
	v_cndmask_b16 v44.l, 0x7fff, v44.h, s8
	v_cndmask_b16 v44.h, 0x7fff, v64.h, s9
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s10
	v_cndmask_b16 v45.h, 0x7fff, v65.h, s11
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s12
	v_cndmask_b16 v46.h, 0x7fff, v66.h, s13
	v_cndmask_b16 v47.l, 0x7fff, v47.h, s14
	v_cndmask_b16 v47.h, 0x7fff, v67.h, s15
	v_cndmask_b16 v48.l, 0x7fff, v48.h, s16
	v_cndmask_b16 v48.h, 0x7fff, v68.h, s17
	v_mov_b32_e32 v188, v35
	v_cmp_o_f32_e64 s1, v159, v159
	v_cmp_o_f32_e64 s3, v161, v161
	v_cmp_o_f32_e64 s11, v151, v151
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[105:112], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v41, v158, v141
	v_sub_f32_e32 v42, v160, v145
	v_sub_f32_e32 v43, v154, v165
	v_dual_sub_f32 v44, v156, v169 :: v_dual_sub_f32 v45, v150, v131
	v_dual_sub_f32 v46, v152, v133 :: v_dual_sub_f32 v47, v146, v135
	v_sub_f32_e32 v48, v148, v137
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v49, v41, 16, 1
	v_bfe_u32 v50, v42, 16, 1
	v_bfe_u32 v63, v43, 16, 1
	v_bfe_u32 v64, v44, 16, 1
	v_bfe_u32 v65, v45, 16, 1
	v_bfe_u32 v66, v46, 16, 1
	v_bfe_u32 v67, v47, 16, 1
	v_bfe_u32 v68, v48, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	v_add3_u32 v41, v41, v49, 0x7fff
	v_bfe_u32 v49, v159, 16, 1
	v_cmp_o_f32_e64 s2, v42, v42
	v_add3_u32 v42, v42, v50, 0x7fff
	v_bfe_u32 v50, v161, 16, 1
	v_cmp_o_f32_e64 s6, v43, v43
	v_add3_u32 v43, v43, v63, 0x7fff
	v_bfe_u32 v63, v155, 16, 1
	v_cmp_o_f32_e64 s8, v44, v44
	v_add3_u32 v44, v44, v64, 0x7fff
	v_bfe_u32 v64, v157, 16, 1
	v_cmp_o_f32_e64 s10, v45, v45
	v_add3_u32 v45, v45, v65, 0x7fff
	v_bfe_u32 v65, v151, 16, 1
	v_cmp_o_f32_e64 s12, v46, v46
	v_add3_u32 v46, v46, v66, 0x7fff
	v_bfe_u32 v66, v153, 16, 1
	v_cmp_o_f32_e64 s14, v47, v47
	v_add3_u32 v47, v47, v67, 0x7fff
	v_bfe_u32 v67, v147, 16, 1
	v_cmp_o_f32_e64 s16, v48, v48
	v_add3_u32 v48, v48, v68, 0x7fff
	v_bfe_u32 v68, v149, 16, 1
	v_add3_u32 v49, v159, v49, 0x7fff
	v_add3_u32 v50, v161, v50, 0x7fff
	v_cmp_o_f32_e64 s7, v155, v155
	v_add3_u32 v63, v155, v63, 0x7fff
	v_cmp_o_f32_e64 s9, v157, v157
	v_add3_u32 v64, v157, v64, 0x7fff
	v_add3_u32 v65, v151, v65, 0x7fff
	v_cmp_o_f32_e64 s13, v153, v153
	v_add3_u32 v66, v153, v66, 0x7fff
	v_cmp_o_f32_e64 s15, v147, v147
	v_add3_u32 v67, v147, v67, 0x7fff
	v_cmp_o_f32_e64 s17, v149, v149
	v_add3_u32 v68, v149, v68, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v41.h, vcc_lo
	v_cndmask_b16 v41.h, 0x7fff, v49.h, s1
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s2
	v_cndmask_b16 v42.h, 0x7fff, v50.h, s3
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s6
	v_cndmask_b16 v43.h, 0x7fff, v63.h, s7
	v_cndmask_b16 v44.l, 0x7fff, v44.h, s8
	v_cndmask_b16 v44.h, 0x7fff, v64.h, s9
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s10
	v_cndmask_b16 v45.h, 0x7fff, v65.h, s11
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s12
	v_cndmask_b16 v46.h, 0x7fff, v66.h, s13
	v_cndmask_b16 v47.l, 0x7fff, v47.h, s14
	v_cndmask_b16 v47.h, 0x7fff, v67.h, s15
	v_cndmask_b16 v48.l, 0x7fff, v48.h, s16
	v_cndmask_b16 v48.h, 0x7fff, v68.h, s17
	v_cmp_o_f32_e64 s11, v61, v61
	v_cmp_o_f32_e64 s13, v59, v59
	v_cmp_o_f32_e64 s15, v57, v57
	v_cmp_o_f32_e64 s1, v113, v113
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[41:48], v[105:112], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v45, v134, v81 :: v_dual_sub_f32 v46, v136, v83
	v_sub_f32_e32 v47, v130, v84
	v_dual_sub_f32 v41, v142, v77 :: v_dual_sub_f32 v42, v144, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v65, v45, 16, 1
	v_cmp_o_f32_e64 s10, v45, v45
	v_cmp_o_f32_e64 s12, v46, v46
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v43, v138, v79 :: v_dual_sub_f32 v44, v140, v80
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v45, v45, v65, 0x7fff
	v_bfe_u32 v65, v61, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v48, v132, v85
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s14, v47, v47
	v_bfe_u32 v49, v41, 16, 1
	v_bfe_u32 v50, v42, 16, 1
	v_add3_u32 v61, v61, v65, 0x7fff
	v_bfe_u32 v65, v46, 16, 1
	v_bfe_u32 v63, v43, 16, 1
	v_bfe_u32 v64, v44, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	v_add3_u32 v41, v41, v49, 0x7fff
	v_add3_u32 v46, v46, v65, 0x7fff
	v_bfe_u32 v65, v59, 16, 1
	v_bfe_u32 v49, v113, 16, 1
	v_cmp_o_f32_e64 s2, v42, v42
	v_add3_u32 v42, v42, v50, 0x7fff
	v_bfe_u32 v50, v96, 16, 1
	v_add3_u32 v59, v59, v65, 0x7fff
	v_bfe_u32 v65, v47, 16, 1
	v_cmp_o_f32_e64 s6, v43, v43
	v_add3_u32 v43, v43, v63, 0x7fff
	v_bfe_u32 v63, v95, 16, 1
	v_cmp_o_f32_e64 s8, v44, v44
	v_add3_u32 v47, v47, v65, 0x7fff
	v_bfe_u32 v65, v57, 16, 1
	v_add3_u32 v44, v44, v64, 0x7fff
	v_bfe_u32 v64, v94, 16, 1
	v_cmp_o_f32_e64 s16, v48, v48
	v_add3_u32 v49, v113, v49, 0x7fff
	v_add3_u32 v57, v57, v65, 0x7fff
	v_bfe_u32 v65, v48, 16, 1
	v_cmp_o_f32_e64 s3, v96, v96
	v_add3_u32 v50, v96, v50, 0x7fff
	v_cmp_o_f32_e64 s7, v95, v95
	v_add3_u32 v63, v95, v63, 0x7fff
	v_add3_u32 v48, v48, v65, 0x7fff
	v_bfe_u32 v65, v56, 16, 1
	v_cmp_o_f32_e64 s9, v94, v94
	v_add3_u32 v64, v94, v64, 0x7fff
	v_cmp_o_f32_e64 s17, v56, v56
	v_cndmask_b16 v41.l, 0x7fff, v41.h, vcc_lo
	v_add3_u32 v56, v56, v65, 0x7fff
	v_cndmask_b16 v41.h, 0x7fff, v49.h, s1
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s2
	v_cndmask_b16 v42.h, 0x7fff, v50.h, s3
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s6
	v_cndmask_b16 v43.h, 0x7fff, v63.h, s7
	v_cndmask_b16 v44.l, 0x7fff, v44.h, s8
	v_cndmask_b16 v44.h, 0x7fff, v64.h, s9
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s10
	v_cndmask_b16 v45.h, 0x7fff, v61.h, s11
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s12
	v_cndmask_b16 v46.h, 0x7fff, v59.h, s13
	v_cndmask_b16 v47.l, 0x7fff, v47.h, s14
	v_cndmask_b16 v47.h, 0x7fff, v57.h, s15
	v_cndmask_b16 v48.l, 0x7fff, v48.h, s16
	v_cndmask_b16 v48.h, 0x7fff, v56.h, s17
	v_mov_b32_e32 v189, v37
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v77, off, off offset:528
	scratch_load_b32 v142, off, off offset:308
	scratch_load_b32 v153, off, off offset:316
	scratch_load_b32 v151, off, off offset:312
	scratch_load_b32 v37, off, off offset:300
	v_mov_b32_e32 v193, v39
	v_mov_b32_e32 v39, v186
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[97:104], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v41, v114, v139
	v_sub_f32_e32 v44, v128, v167
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s1, v115, v115
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v158, off, off offset:536
	scratch_load_b32 v186, off, off offset:368
	scratch_load_b32 v195, off, off offset:396
	scratch_load_b32 v168, off, off offset:364
	v_mov_b32_e32 v191, v38
	v_bfe_u32 v49, v41, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v162, off, off offset:380
	scratch_load_b32 v166, off, off offset:388
	scratch_load_b32 v154, off, off offset:352
	scratch_load_b32 v156, off, off offset:344
	scratch_load_b32 v165, off, off offset:384
	scratch_load_b32 v40, off, off offset:372
	scratch_load_b32 v161, off, off offset:348
	scratch_load_b32 v159, off, off offset:340
	v_add3_u32 v41, v41, v49, 0x7fff
	v_bfe_u32 v49, v115, 16, 1
	v_mov_b32_e32 v93, v198
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v87, off, off offset:532
	scratch_load_b32 v85, off, off offset:544
	v_mov_b32_e32 v141, v34
	v_add3_u32 v49, v115, v49, 0x7fff
	s_clause 0xd                            ; 64-byte Folded Reload
	scratch_load_b32 v160, off, off offset:360
	scratch_load_b32 v164, off, off offset:356
	scratch_load_b32 v82, off, off offset:392
	scratch_load_b32 v131, off, off offset:320
	scratch_load_b32 v152, off, off offset:336
	scratch_load_b64 v[145:146], off, off
	scratch_load_b32 v155, off, off offset:324
	scratch_load_b32 v157, off, off offset:332
	scratch_load_b32 v38, off, off offset:328
	scratch_load_b32 v144, off, off offset:304
	scratch_load_b32 v177, off, off offset:548
	scratch_load_b32 v35, off, off offset:376
	scratch_load_b64 v[83:84], off, off offset:8
	scratch_load_b32 v130, off, off offset:296
	v_mov_b32_e32 v96, v204
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[204:207], off, off offset:464
	scratch_load_b128 v[208:211], off, off offset:480
	v_dual_mov_b32 v95, v202 :: v_dual_mov_b32 v94, v200
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[196:199], off, off offset:432
	scratch_load_b128 v[200:203], off, off offset:448
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v42, v116, v143
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v34, off, off offset:292
	scratch_load_b32 v143, off, off offset:284
	v_dual_sub_f32 v45, v122, v171 :: v_dual_sub_f32 v46, v124, v173
	v_sub_f32_e32 v47, v118, v175
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[169:172], off, off offset:400
	scratch_load_b128 v[173:176], off, off offset:416
	v_sub_f32_e32 v48, v120, v54
	scratch_load_b32 v120, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v41.l, 0x7fff, v41.h, vcc_lo
	v_cndmask_b16 v41.h, 0x7fff, v49.h, s1
	scratch_load_b32 v49, off, off offset:540 ; 4-byte Folded Reload
	v_bfe_u32 v59, v46, 16, 1
	v_cmp_o_f32_e64 s12, v46, v46
	v_cmp_o_f32_e64 s13, v60, v60
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v43, v126, v163
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s14, v47, v47
	v_add3_u32 v46, v46, v59, 0x7fff
	v_bfe_u32 v59, v60, 16, 1
	v_bfe_u32 v50, v42, 16, 1
	v_bfe_u32 v54, v43, 16, 1
	v_bfe_u32 v56, v44, 16, 1
	v_bfe_u32 v57, v45, 16, 1
	v_add3_u32 v59, v60, v59, 0x7fff
	v_bfe_u32 v60, v47, 16, 1
	v_cmp_o_f32_e64 s15, v58, v58
	v_cmp_o_f32_e64 s2, v42, v42
	v_add3_u32 v42, v42, v50, 0x7fff
	v_bfe_u32 v50, v117, 16, 1
	v_add3_u32 v47, v47, v60, 0x7fff
	v_bfe_u32 v60, v58, 16, 1
	v_cmp_o_f32_e64 s6, v43, v43
	v_add3_u32 v43, v43, v54, 0x7fff
	v_bfe_u32 v54, v121, 16, 1
	v_cmp_o_f32_e64 s8, v44, v44
	v_add3_u32 v58, v58, v60, 0x7fff
	v_bfe_u32 v60, v48, 16, 1
	v_add3_u32 v44, v44, v56, 0x7fff
	v_bfe_u32 v56, v119, 16, 1
	v_cmp_o_f32_e64 s10, v45, v45
	v_add3_u32 v45, v45, v57, 0x7fff
	v_bfe_u32 v57, v62, 16, 1
	v_cmp_o_f32_e64 s16, v48, v48
	v_add3_u32 v48, v48, v60, 0x7fff
	v_bfe_u32 v60, v55, 16, 1
	v_cmp_o_f32_e64 s3, v117, v117
	v_add3_u32 v50, v117, v50, 0x7fff
	v_cmp_o_f32_e64 s7, v121, v121
	v_add3_u32 v54, v121, v54, 0x7fff
	v_cmp_o_f32_e64 s9, v119, v119
	v_add3_u32 v56, v119, v56, 0x7fff
	v_cmp_o_f32_e64 s11, v62, v62
	v_add3_u32 v57, v62, v57, 0x7fff
	v_cmp_o_f32_e64 s17, v55, v55
	v_add3_u32 v55, v55, v60, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s2
	v_cndmask_b16 v42.h, 0x7fff, v50.h, s3
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s6
	v_cndmask_b16 v43.h, 0x7fff, v54.h, s7
	v_cndmask_b16 v44.l, 0x7fff, v44.h, s8
	v_cndmask_b16 v44.h, 0x7fff, v56.h, s9
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s10
	v_cndmask_b16 v45.h, 0x7fff, v57.h, s11
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s12
	v_cndmask_b16 v46.h, 0x7fff, v59.h, s13
	v_cndmask_b16 v47.l, 0x7fff, v47.h, s14
	v_cndmask_b16 v47.h, 0x7fff, v58.h, s15
	v_cndmask_b16 v48.l, 0x7fff, v48.h, s16
	v_cndmask_b16 v48.h, 0x7fff, v55.h, s17
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[41:48], v[97:104], v[9:16]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %Flow
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	v_dual_mov_b32 v149, v51 :: v_dual_mov_b32 v150, v52
	s_clause 0x1f                           ; 224-byte Folded Reload
	scratch_load_b32 v90, off, off offset:196
	scratch_load_b32 v91, off, off offset:188
	scratch_load_b32 v92, off, off offset:192
	scratch_load_b32 v97, off, off offset:180
	scratch_load_b32 v98, off, off offset:184
	scratch_load_b32 v76, off, off offset:144
	scratch_load_b128 v[41:44], off, off offset:148
	scratch_load_b128 v[45:48], off, off offset:164
	scratch_load_b128 v[50:53], off, off offset:20
	scratch_load_b128 v[54:57], off, off offset:36
	scratch_load_b128 v[58:61], off, off offset:112
	scratch_load_b128 v[62:65], off, off offset:128
	scratch_load_b128 v[66:69], off, off offset:80
	scratch_load_b128 v[70:73], off, off offset:96
	scratch_load_b32 v74, off, off offset:76
	scratch_load_b32 v75, off, off offset:72
	scratch_load_b32 v78, off, off offset:68
	scratch_load_b32 v79, off, off offset:64
	scratch_load_b32 v80, off, off offset:60
	scratch_load_b32 v81, off, off offset:56
	scratch_load_b32 v84, off, off offset:52
	scratch_load_b32 v86, off, off offset:16
	scratch_load_b32 v117, off, off offset:256
	scratch_load_b32 v118, off, off offset:268
	scratch_load_b32 v119, off, off offset:272
	scratch_load_b32 v121, off, off offset:276
	scratch_load_b32 v122, off, off offset:260
	scratch_load_b32 v124, off, off offset:264
	scratch_load_b32 v125, off, off offset:248
	scratch_load_b32 v126, off, off offset:252
	scratch_load_b32 v127, off, off offset:240
	scratch_load_b32 v128, off, off offset:244
	s_clause 0x9                            ; 40-byte Folded Reload
	scratch_load_b32 v129, off, off offset:232
	scratch_load_b32 v132, off, off offset:236
	scratch_load_b32 v133, off, off offset:224
	scratch_load_b32 v134, off, off offset:228
	scratch_load_b32 v135, off, off offset:216
	scratch_load_b32 v136, off, off offset:220
	scratch_load_b32 v137, off, off offset:208
	scratch_load_b32 v138, off, off offset:212
	scratch_load_b32 v139, off, off offset:200
	scratch_load_b32 v140, off, off offset:204
	s_branch .LBB0_1
.LBB0_6:
	.loc	1 550 20 is_stmt 1              ; attention_backward.py:550:20
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v64, off, off offset:552
	scratch_load_b32 v33, off, off offset:556
	scratch_load_b32 v34, off, off offset:560
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s5, s51, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s50
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_and_b32 s57, s57, 0xffff
	.loc	1 753 13                        ; attention_backward.py:753:13
	s_waitcnt vmcnt(2)
	v_mul_lo_u32 v43, s58, v64
	.loc	1 550 20                        ; attention_backward.py:550:20
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, v33, v34
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, s72, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v47, 2, v33
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v49, v43, v33
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s2, s58, v33
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v46, 6, v33
	v_or_b32_e32 v48, 4, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v50, v43, v47
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v49, v49, s35, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v45, 8, v33
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v51, v43, v48
	v_add_nc_u32_e32 v52, v43, v46
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	v_add_lshl_u32 v50, v50, s35, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v53, v43, v45
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v44, 10, v33
	v_or_b32_e32 v41, 14, v33
	v_or_b32_e32 v42, 12, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v51, v51, s35, 2
	buffer_store_b32 v25, v49, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v50, s2
	v_add_lshl_u32 v49, v52, s35, 2
	v_add_lshl_u32 v50, v53, s35, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v54, v43, v44
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v0, 32, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v55, v43, v42
	v_add_nc_u32_e32 v56, v43, v41
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v51, 0x80000000, v51, s2
	buffer_store_b32 v26, v25, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v49, s2
	v_cndmask_b32_e64 v26, 0x80000000, v50, s2
	v_add_lshl_u32 v52, v54, s35, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v40, 34, v33
	v_cmp_gt_i32_e64 s0, s59, v33
	v_cmp_gt_i32_e64 s1, s59, v0
	v_or_b32_e32 v39, 36, v33
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s3, s58, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v27, v51, s[4:7], 0 offen
	v_add_lshl_u32 v49, v55, s35, 2
	s_clause 0x1
	buffer_store_b32 v28, v25, s[4:7], 0 offen
	buffer_store_b32 v29, v26, s[4:7], 0 offen
	v_add_lshl_u32 v25, v56, s35, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v57, v43, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v27, 0x80000000, v52, s2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v58, v43, v40
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v26, 0x80000000, v49, s2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s3
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s0, vcc_lo, s0
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v59, v43, v39
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v30, v27, s[4:7], 0 offen
	v_add_lshl_u32 v27, v57, s35, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v38, 38, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v28, v58, s35, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v37, 40, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v29, v59, s35, 2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v36, 42, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v35, 44, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v60, v43, v38
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v61, v43, v37
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v31, v26, s[4:7], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v29, s2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v62, v43, v36
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x2
	buffer_store_b32 v32, v25, s[4:7], 0 offen
	buffer_store_b32 v17, v27, s[4:7], 0 offen
	buffer_store_b32 v18, v28, s[4:7], 0 offen
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_or_b32_e32 v18, s70, v64
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v34, 46, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v63, v43, v35
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v17, v60, s35, 2
	buffer_store_b32 v19, v26, s[4:7], 0 offen
	v_add_lshl_u32 v19, v61, s35, 2
	v_add_lshl_u32 v25, v62, s35, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v18, s59, v18
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v43, v43, v34
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	v_add_lshl_u32 v26, v63, s35, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_mov_b32 s58, s6
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v20, v17, s[4:7], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v26, s2
	v_add_lshl_u32 v20, v43, s35, 2
	s_clause 0x1
	buffer_store_b32 v21, v19, s[4:7], 0 offen
	buffer_store_b32 v22, v25, s[4:7], 0 offen
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v19, v18, v33, 2
	s_mov_b32 s59, s7
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v23, v17, s[4:7], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v20, s2
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v20, v18, v47, 2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s0
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v24, v17, s[4:7], 0 offen
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v1, v19, s[56:59], 0 offen
	v_add_lshl_u32 v1, v18, v48, 2
	v_cndmask_b32_e64 v17, 0x80000000, v20, s0
	v_add_lshl_u32 v19, v18, v46, 2
	v_add_lshl_u32 v20, v18, v45, 2
	v_add_lshl_u32 v21, v18, v44, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	buffer_store_b32 v2, v17, s[56:59], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v19, s0
	v_cndmask_b32_e64 v17, 0x80000000, v20, s0
	v_cndmask_b32_e64 v19, 0x80000000, v21, s0
	buffer_store_b32 v3, v1, s[56:59], 0 offen
	v_add_lshl_u32 v1, v18, v42, 2
	s_clause 0x2
	buffer_store_b32 v4, v2, s[56:59], 0 offen
	buffer_store_b32 v5, v17, s[56:59], 0 offen
	buffer_store_b32 v6, v19, s[56:59], 0 offen
	v_add_lshl_u32 v2, v18, v41, 2
	v_add_lshl_u32 v0, v18, v0, 2
	v_add_lshl_u32 v3, v18, v40, 2
	v_add_lshl_u32 v4, v18, v39, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b32 v7, v1, s[56:59], 0 offen
	buffer_store_b32 v8, v2, s[56:59], 0 offen
	buffer_store_b32 v9, v0, s[56:59], 0 offen
	buffer_store_b32 v10, v3, s[56:59], 0 offen
	buffer_store_b32 v11, v4, s[56:59], 0 offen
	v_add_lshl_u32 v0, v18, v38, 2
	v_add_lshl_u32 v1, v18, v37, 2
	v_add_lshl_u32 v2, v18, v36, 2
	v_add_lshl_u32 v3, v18, v35, 2
	v_add_lshl_u32 v4, v18, v34, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b32 v12, v0, s[56:59], 0 offen
	buffer_store_b32 v13, v1, s[56:59], 0 offen
	buffer_store_b32 v14, v2, s[56:59], 0 offen
	buffer_store_b32 v15, v3, s[56:59], 0 offen
	buffer_store_b32 v16, v4, s[56:59], 0 offen
	.loc	1 451 5                         ; attention_backward.py:451:5
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 568
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
		.amdhsa_next_free_sgpr 80
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 80
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 568
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 19908
; TotalNumSgprs: 82
; NumVgprs: 256
; ScratchSize: 568
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 82
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 568
    .sgpr_count:     82
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 141
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
