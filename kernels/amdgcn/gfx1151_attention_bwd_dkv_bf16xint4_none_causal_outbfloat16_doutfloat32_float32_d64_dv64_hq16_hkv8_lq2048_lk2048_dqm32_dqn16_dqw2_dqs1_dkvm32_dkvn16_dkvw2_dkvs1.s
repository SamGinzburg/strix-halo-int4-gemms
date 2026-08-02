	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	s_lshl_b32 s71, s2, 4
	.loc	1 533 24                        ; attention_backward.py:533:24
	s_lshl_b32 s68, s3, 11
	s_mov_b32 s11, 0x31027000
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_add_i32 s68, s68, s71
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_lshlrev_b32_e32 v97, 3, v33
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v14, s71, v9
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v35, 4, v0
	s_load_b64 s[12:13], s[0:1], 0x10
	.loc	1 541 32                        ; attention_backward.py:541:32
	s_ashr_i32 s7, s71, 1
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s6, 0x800, v14
	.loc	1 541 32                        ; attention_backward.py:541:32
	v_or_b32_e32 v11, s7, v9
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_bfe_i32 s2, s2, 0x1001b
	s_clause 0x2
	s_load_b32 s69, s[0:1], 0x7c
	s_load_b32 s70, s[0:1], 0x9c
	s_load_b64 s[56:57], s[0:1], 0x58
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s58, v9
	s_mul_i32 s35, s58, s68
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_cmp_gt_i32_e64 s5, s58, v97
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_lshl_b32 s4, s58, 3
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_and_b32 s9, s55, 0xffff
	s_mov_b32 s8, s54
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_bfe_i32 v49, v0, 5, 1
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 vcc_lo, s6, s5
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add3_u32 v1, s35, v97, v1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_bfe_i32 v50, v0, 3, 1
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_u32 v75, v0, 4, 1
	v_bfe_i32 v37, v0, 4, 1
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_and_b32 s13, s13, 0xffff
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v2, 1, v1
	v_add_lshl_u32 v1, v1, s4, 1
	.loc	1 543 26                        ; attention_backward.py:543:26
	s_lshl_b32 s4, s3, 10
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v254, s71, v75
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
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_mov_b16_e32 v44.l, 0
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v12, 1, v34
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_lshrrev_b32_e32 v62, 1, v34
	v_lshrrev_b32_e32 v63, 2, v34
	v_mul_u32_u24_e32 v68, 0x90, v33
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v58.h, v44.l
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xad_u32 v45, v35, v12, 0
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v61.h, v44.l
	v_mov_b16_e32 v38.h, v44.l
	v_mov_b16_e32 v59.h, v44.l
	.loc	1 603 39                        ; attention_backward.py:603:39
	s_sub_i32 s19, s71, s70
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v48.l, v44.l
	v_mov_b16_e32 v47.l, v44.l
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v57.h, v44.l
	v_mov_b16_e32 v60.h, v44.l
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v46.l, v44.l
	s_lshl_b32 s73, s3, 12
	s_mov_b32 s54, s10
	s_mov_b32 s55, s11
	.loc	1 672 31                        ; attention_backward.py:672:31
	s_mul_f32 s74, s69, 0x3fb8aa3b
	s_mov_b32 s36, 0
	s_mov_b32 s72, -1
	s_mov_b32 s18, 0
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(1)
	ds_store_b128 v45, v[1:4]
	s_waitcnt vmcnt(0)
	ds_store_b128 v45, v[5:8] offset:1024
	v_mov_b32_e32 v1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v114, 15, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v6, v1 :: v_dual_and_b32 v43, 32, v0
	v_mov_b32_e32 v2, v1
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_mad_u64_u32 v[9:10], null, s59, v10, v[97:98]
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s4, s59, v97
	v_dual_mov_b32 v7, v1 :: v_dual_and_b32 v36, 16, v0
	v_dual_mov_b32 v8, v1 :: v_dual_lshlrev_b32 v51, 6, v0
	.loc	1 549 22                        ; attention_backward.py:549:22
	s_and_b32 s7, vcc_lo, s4
	v_mov_b32_e32 v5, v1
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v9, 0x80000000, v9, s7
	v_dual_mov_b32 v11, v1 :: v_dual_lshlrev_b32 v52, 4, v33
	v_dual_mov_b32 v27, v1 :: v_dual_lshlrev_b32 v70, 7, v43
	buffer_load_b64 v[65:66], v9, s[12:15], 0 offen
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x28
	s_load_b256 s[44:51], s[0:1], 0x38
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_lshr_b32 s0, s2, 28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v10, v1 :: v_dual_add_nc_u32 v17, s0, v14
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s0, s6, s4
	v_dual_mov_b32 v14, v1 :: v_dual_lshlrev_b32 v55, 4, v114
	v_dual_mov_b32 v28, v1 :: v_dual_lshlrev_b32 v69, 8, v114
	.loc	1 570 20                        ; attention_backward.py:570:20
	v_ashrrev_i32_e32 v17, 4, v17
	v_mov_b32_e32 v4, v1
	v_dual_mov_b32 v12, v1 :: v_dual_and_b32 v53, 0x370, v35
	v_dual_mov_b32 v13, v1 :: v_dual_and_b32 v54, 0x440, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 568 17                        ; attention_backward.py:568:17
	v_lshl_add_u32 v18, s3, 7, v17
	v_dual_mov_b32 v26, v1 :: v_dual_and_b32 v67, 0x820, v49
	v_dual_mov_b32 v32, v1 :: v_dual_and_b32 v49, 0x420, v49
	v_mul_lo_u32 v39, v18, s59
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	v_dual_mov_b32 v25, v1 :: v_dual_and_b32 v64, 0x240, v50
	v_dual_mov_b32 v29, v1 :: v_dual_lshlrev_b32 v36, 2, v36
	v_dual_mov_b32 v30, v1 :: v_dual_lshlrev_b32 v71, 1, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_lshl_u32 v39, v39, v97, 1
	v_dual_mov_b32 v17, v1 :: v_dual_lshlrev_b32 v72, 5, v33
	v_dual_mov_b32 v18, v1 :: v_dual_and_b32 v35, 48, v35
	v_cndmask_b32_e64 v39, 0x80000000, v39, s0
	scratch_store_b32 off, v75, off offset:524 ; 4-byte Folded Spill
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshl_or_b32 v75, v114, 7, v52
	v_and_or_b32 v51, 0xc00, v51, v52
	v_or3_b32 v116, v69, v70, v55
	.loc	1 567 32                        ; attention_backward.py:567:32
	buffer_load_b128 v[39:42], v39, s[12:15], 0 offen
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_xad_u32 v77, v54, v53, 0
	v_and_or_b32 v53, 0x410, v50, v67
	v_and_or_b32 v49, 0x210, v50, v49
	v_xor_b32_e32 v50, v52, v34
	v_dual_mov_b32 v15, v1 :: v_dual_lshlrev_b32 v56, 3, v43
	v_dual_mov_b32 v16, v1 :: v_dual_and_b32 v37, 0x440, v37
	v_dual_mov_b32 v19, v1 :: v_dual_lshlrev_b32 v74, 2, v34
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_lshrrev_b32_e32 v115, 1, v43
	v_lshl_add_u32 v73, v43, 1, 0
	v_or3_b32 v117, v71, v36, v43
	v_xor_b32_e32 v35, v35, v34
	v_lshl_or_b32 v189, v34, 6, v72
	v_xor_b32_e32 v119, v51, v64
	v_lshl_or_b32 v122, v43, 6, v75
	v_xor_b32_e32 v34, 32, v116
	v_xor_b32_e32 v43, 0x50, v116
	v_lshl_or_b32 v131, v33, 10, v50
	v_dual_mov_b32 v9, v1 :: v_dual_lshlrev_b32 v0, 3, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v21, v1 :: v_dual_add_nc_u32 v124, 0, v34
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_xor_b32_e32 v37, v37, v55
	v_xor_b32_e32 v55, 0xc0, v116
	v_add_nc_u32_e32 v127, 0, v43
	v_xor_b32_e32 v43, 0x90, v119
	v_xor_b32_e32 v34, 48, v122
	v_xor_b32_e32 v89, 0x290, v131
	v_xor_b32_e32 v90, 0x320, v131
	v_dual_mov_b32 v31, v1 :: v_dual_and_b32 v0, 48, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v144, 0, v34
	v_add3_u32 v81, 0, v56, v37
	v_mul_lo_u32 v37, s59, v63
	v_add_nc_u32_e32 v188, 0, v89
	v_add_nc_u32_e32 v159, 0, v90
	v_lshl_or_b32 v36, v33, 6, v0
	v_lshl_or_b32 v118, v114, 6, v0
	v_xor_b32_e32 v130, v53, v68
	v_xor_b32_e32 v0, v189, v74
	v_xor_b32_e32 v53, 0xa0, v116
	v_xor_b32_e32 v67, 0xf0, v116
	v_xor_b32_e32 v68, 0x90, v117
	v_xor_b32_e32 v87, 0x160, v131
	v_dual_mov_b32 v22, v1 :: v_dual_add_nc_u32 v255, 0, v0
	.loc	1 603 25                        ; attention_backward.py:603:25
	s_max_i32 s1, s19, 0
	v_lshl_or_b32 v121, v33, 9, v35
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v156, 0, v87
	v_xor_b32_e32 v35, 48, v116
	v_xor_b32_e32 v54, 0xb0, v116
	s_mov_b32 s64, s48
	.loc	1 604 45                        ; attention_backward.py:604:45
	s_and_b32 s48, s1, 0x7fffffe0
	v_xor_b32_e32 v120, v49, v36
	v_xor_b32_e32 v49, 0x60, v116
	v_mad_u64_u32 v[145:146], null, s58, v62, v[97:98]
	v_xor_b32_e32 v62, 0x70, v122
	v_xor_b32_e32 v51, 0x80, v116
	v_xor_b32_e32 v74, 0x120, v117
	v_xor_b32_e32 v88, 0x1f0, v131
	v_xor_b32_e32 v50, 0x70, v116
	v_xor_b32_e32 v56, 0xd0, v116
	v_xor_b32_e32 v82, 16, v118
	v_add_nc_u32_e32 v253, 0, v74
	v_xor_b32_e32 v74, 0x1b0, v131
	v_dual_mov_b32 v20, v1 :: v_dual_add_nc_u32 v157, 0, v88
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_add_nc_u32_e32 v69, 0, v75
	v_lshl_add_u32 v252, v114, 2, v73
	v_xad_u32 v70, v75, 16, 0
	v_xad_u32 v71, v75, 32, 0
	v_xad_u32 v72, v75, 48, 0
	v_xad_u32 v73, v75, 64, 0
	v_xad_u32 v78, 0x50, v75, 0
	v_xad_u32 v79, 0x60, v75, 0
	v_xad_u32 v80, 0x70, v75, 0
	v_xor_b32_e32 v33, 16, v116
	v_xor_b32_e32 v75, 0x1b0, v117
	v_add_nc_u32_e32 v137, 0, v56
	v_add_nc_u32_e32 v147, 0, v82
	v_xor_b32_e32 v56, 0x60, v122
	v_xor_b32_e32 v82, 0x2d0, v131
	v_add_nc_u32_e32 v164, 0, v74
	v_dual_mov_b32 v24, v1 :: v_dual_add_nc_u32 v123, 0, v33
	v_xor_b32_e32 v52, 0x90, v116
	v_xor_b32_e32 v64, 0xe0, v116
	v_add_nc_u32_e32 v33, 0, v75
	v_xor_b32_e32 v63, 0x90, v131
	v_xor_b32_e32 v75, 0x240, v131
	v_add_nc_u32_e32 v151, 0, v82
	v_xor_b32_e32 v83, 32, v118
	v_xor_b32_e32 v84, 48, v118
	v_add_nc_u32_e32 v133, 0, v52
	v_add_nc_u32_e32 v52, 0, v63
	v_add_nc_u32_e32 v150, 0, v75
	v_add_nc_u32_e32 v148, 0, v83
	v_xor_b32_e32 v83, 0x360, v131
	v_xor_b32_e32 v85, 64, v131
	v_xor_b32_e32 v86, 0xd0, v131
	ds_load_b128 v[169:172], v69
	ds_load_b128 v[173:176], v70
	ds_load_b128 v[192:195], v71
	ds_load_b128 v[196:199], v72
	ds_load_b128 v[200:203], v73
	ds_load_b128 v[204:207], v78
	ds_load_b128 v[208:211], v79
	ds_load_b128 v[212:215], v80
	.loc	1 575 27                        ; attention_backward.py:575:27
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v158, 0, v83
	v_add_nc_u32_e32 v154, 0, v85
	v_add_nc_u32_e32 v155, 0, v86
	s_barrier
	v_lshl_add_u32 v113, s59, 4, v37
	v_xor_b32_e32 v91, 0x3b0, v131
	v_xor_b32_e32 v92, 16, v130
	v_xor_b32_e32 v93, 32, v130
	v_xor_b32_e32 v94, 48, v130
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v76, 4, v97
	v_add_nc_u32_e32 v160, 0, v91
	v_add_nc_u32_e32 v161, 0, v92
	v_add_nc_u32_e32 v166, 0, v93
	v_add_nc_u32_e32 v167, 0, v94
	v_xor_b32_e32 v36, 64, v116
	v_xor_b32_e32 v95, 64, v130
	v_xor_b32_e32 v96, 0x50, v130
	v_xor_b32_e32 v98, 0x60, v130
	v_xor_b32_e32 v99, 0x70, v130
	v_xor_b32_e32 v100, 0x1040, v130
	v_xor_b32_e32 v101, 0x1050, v130
	v_xor_b32_e32 v102, 0x1060, v130
	v_xor_b32_e32 v103, 0x1070, v130
	v_xor_b32_e32 v104, 0x1010, v130
	v_xor_b32_e32 v105, 0x1020, v130
	v_xor_b32_e32 v106, 0x1030, v130
	v_mov_b32_e32 v3, v1
	v_dual_mov_b32 v23, v1 :: v_dual_add_nc_u32 v126, 0, v36
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s0, 0x800, v254
	v_xor_b32_e32 v107, 0x90, v121
	v_xor_b32_e32 v108, 0x120, v121
	v_xor_b32_e32 v109, 0x1b0, v121
	v_xor_b32_e32 v110, 16, v120
	v_xor_b32_e32 v111, 32, v120
	v_xor_b32_e32 v112, 48, v120
	v_add_nc_u32_e32 v187, 0, v95
	v_add_nc_u32_e32 v96, 0, v96
	v_add_nc_u32_e32 v36, 0, v99
	v_add_nc_u32_e32 v190, 0, v100
	v_add_nc_u32_e32 v191, 0, v101
	v_add_nc_u32_e32 v216, 0, v102
	v_add_nc_u32_e32 v217, 0, v103
	v_add_nc_u32_e32 v218, 0, v104
	v_add_nc_u32_e32 v219, 0, v105
	v_add_nc_u32_e32 v220, 0, v106
	s_cmpk_lt_i32 s19, 0x800
	s_mov_b32 s60, s46
	s_cselect_b32 s75, -1, 0
	s_and_b32 s53, s53, 0xffff
	s_and_b32 s61, s47, 0xffff
	s_and_b32 s65, s49, 0xffff
	s_and_b32 s45, s45, 0xffff
	.loc	1 556 28                        ; attention_backward.py:556:28
	s_waitcnt vmcnt(1)
	v_lshrrev_b16 v47.h, 4, v66.l
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b32_e32 v34, 24, v66
	v_lshrrev_b64 v[89:90], 24, v[65:66]
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v88, v65, 16, 4
	v_bfe_u32 v63, v66, 24, 4
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v61.l, v47.h, 15
	v_add_nc_u32_e32 v136, 0, v55
	v_lshrrev_b16 v59.l, 4, v34.l
	v_add_nc_u32_e32 v134, 0, v53
	v_lshrrev_b16 v87.h, 4, v89.l
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_dual_cndmask_b32 v61, 0, v61 :: v_dual_add_nc_u32 v140, 0, v43
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v43.h, 4, v65.l
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v59, 0, v59, vcc_lo
	v_add_nc_u32_e32 v139, 0, v67
	v_xor_b32_e32 v55, 0x50, v122
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v74, -16, v88
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v58.l, v43.h, 15
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v43.l, v65.l, 15
	v_and_b16 v47.h, v34.l, 15
	v_add_nc_u32_e32 v162, 0, v55
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v55, v65, 8, 4
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v58, 0, v58, vcc_lo
	v_add_nc_u32_e32 v0, 0, v68
	v_mad_u64_u32 v[67:68], null, s59, 17, v[37:38]
	.loc	1 554 72 is_stmt 0              ; attention_backward.py:554:72
	v_and_b16 v38.l, v65.h, 15
	.loc	1 557 50 is_stmt 1              ; attention_backward.py:557:50
	v_or_b32_e32 v82, -16, v55
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v44.h, v66.h, 15
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v34, -16, v63
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_alignbit_b32 v83, v66, v65, 24
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v38.l
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v38.l, v87.h, 15
	v_add_nc_u32_e32 v125, 0, v35
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v46.h, v66.l, 15
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v68, 15, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_dual_cndmask_b32 v38, 0, v38 :: v_dual_and_b32 v83, 15, v83
	v_add_nc_u32_e32 v135, 0, v54
	v_xor_b32_e32 v54, 32, v122
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v86, -16, v68
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v87.l, v89.l, 15
	v_xor_b32_e32 v35, 0x1b0, v119
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v143, 0, v54
	v_add_nc_u32_e32 v54, 0, v62
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_bfe_u32 v62, v65, 20, 4
	v_add_nc_u32_e32 v128, 0, v49
	v_xor_b32_e32 v49, 0x120, v119
	v_add_nc_u32_e32 v152, 0, v49
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b32_e32 v49, 8, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v43.h, 4, v49.l
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v48.h, v49.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v57.l, v43.h, 15
	v_add_nc_u32_e32 v132, 0, v51
	v_xor_b32_e32 v51, 16, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_dual_cndmask_b32 v57, 0, v57 :: v_dual_add_nc_u32 v138, 0, v64
	v_add_nc_u32_e32 v142, 0, v51
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b32_e32 v51, 8, v66
	v_xor_b32_e32 v64, 0x120, v131
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v49.h, 4, v51.l
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v49.l, v51.l, 15
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v51, v88, v74, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v48.h
	v_add_nc_u32_e32 v53, 0, v64
	.loc	1 556 28 is_stmt 1              ; attention_backward.py:556:28
	v_and_b16 v60.l, v49.h, 15
	v_add_nc_u32_e32 v129, 0, v50
	v_xor_b32_e32 v50, 64, v122
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v82, v55, v82, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v43.l
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e32 v60, 0, v60, vcc_lo
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v64, v66, 16, 4
	v_add_nc_u32_e32 v168, 0, v50
	v_add_nc_u32_e32 v50, 0, v56
	v_and_b32_e32 v56, 15, v65
	v_bfe_u32 v65, v66, 8, 4
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_bfe_u32 v66, v66, 20, 4
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v88, v82
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v82, -16, v61
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v75, -16, v56
	v_or_b32_e32 v85, -16, v65
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v89, v51
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v48.h, v40.l
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v74, v56, v75, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v47.h
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v75, -16, v60
	v_add_nc_u32_e32 v186, 0, v84
	v_xor_b32_e32 v84, 0x3f0, v131
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v47.h, v41.l
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v43, v63, v34, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v44.h
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v34, -16, v83
	v_add_nc_u32_e32 v153, 0, v84
	v_or_b32_e32 v84, -16, v64
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_mov_b16_e32 v44.h, v39.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v55, v64, v84, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v49.l
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v63, v65, v85, s1
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v46.h
	.loc	1 558 52 is_stmt 1              ; attention_backward.py:558:52
	v_or_b32_e32 v65, -16, v57
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v85, v55
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v46.h, v42.l
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v84, v63
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v56, v68, v86, s1
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s1, 7, v87.l
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v86, v43
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v43, 0, v62, vcc_lo
	v_cndmask_b32_e32 v62, 0, v66, vcc_lo
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v63, -16, v38
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v64, v83, v34, s1
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v38
	.loc	1 558 52 is_stmt 0              ; attention_backward.py:558:52
	v_or_b32_e32 v66, -16, v58
	v_or_b32_e32 v68, -16, v59
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v87, v74
	v_cvt_f32_i32_e32 v90, v64
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v64, -16, v43
	.loc	1 558 26 is_stmt 0              ; attention_backward.py:558:26
	v_cndmask_b32_e32 v38, v38, v63, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v43
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v74, -16, v62
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v83, v56
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v43, v43, v64, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v57
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v63, v57, v65, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v58
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v57, v58, v66, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v58, v63
	v_cvt_f32_i32_e32 v57, v57
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v64, v59, v68, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v62
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v59, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v64, v64
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v62, v62, v74, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v60
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v63, v62
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v65, v60, v75, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v61
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v60, v38
	ds_store_b128 v77, v[87:90]
	ds_store_b128 v77, v[57:60] offset:128
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v61, v61, v82, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v62, v65
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[87:90], v81
	ds_load_b128 v[57:60], v81 offset:512
	v_cvt_f32_i32_e32 v61, v61
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v77, v[83:86]
	ds_store_b128 v77, v[61:64] offset:128
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[82:85], v81
	ds_load_b128 v[61:64], v81 offset:512
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_and_b32_e32 v38, 0xffff0000, v39
	v_and_b32_e32 v39, 0xffff0000, v40
	v_and_b32_e32 v40, 0xffff0000, v41
	v_and_b32_e32 v41, 0xffff0000, v42
	v_add_nc_u32_e32 v141, v97, v37
	v_add_nc_u32_e32 v37, 0, v35
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_dual_mul_f32 v42, v87, v44 :: v_dual_add_nc_u32 v35, 0, v98
	v_mul_f32_e32 v43, v88, v38
	v_mul_f32_e32 v49, v89, v48
	v_dual_mul_f32 v81, v90, v39 :: v_dual_mul_f32 v44, v57, v44
	v_mul_f32_e32 v38, v58, v38
	v_dual_mul_f32 v48, v59, v48 :: v_dual_mul_f32 v39, v60, v39
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_bfe_u32 v55, v42, 16, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_mul_f32_e32 v51, v82, v47
	v_dual_mul_f32 v83, v83, v40 :: v_dual_mul_f32 v34, v84, v46
	v_mul_f32_e32 v82, v85, v41
	v_dual_mul_f32 v47, v61, v47 :: v_dual_mul_f32 v40, v62, v40
	v_dual_mul_f32 v46, v63, v46 :: v_dual_mul_f32 v41, v64, v41
	.loc	1 575 26                        ; attention_backward.py:575:26
	v_bfe_u32 v56, v43, 16, 1
	v_bfe_u32 v57, v49, 16, 1
	v_bfe_u32 v58, v81, 16, 1
	v_bfe_u32 v59, v51, 16, 1
	v_bfe_u32 v60, v83, 16, 1
	v_bfe_u32 v61, v34, 16, 1
	v_bfe_u32 v62, v82, 16, 1
	v_bfe_u32 v63, v44, 16, 1
	v_bfe_u32 v64, v38, 16, 1
	v_bfe_u32 v65, v48, 16, 1
	v_bfe_u32 v66, v39, 16, 1
	v_bfe_u32 v68, v47, 16, 1
	v_bfe_u32 v74, v40, 16, 1
	v_bfe_u32 v75, v46, 16, 1
	v_bfe_u32 v77, v41, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_cmp_o_f32_e64 s1, v43, v43
	v_cmp_o_f32_e64 s2, v49, v49
	v_cmp_o_f32_e64 s3, v81, v81
	v_cmp_o_f32_e64 s6, v51, v51
	v_cmp_o_f32_e64 s7, v83, v83
	v_cmp_o_f32_e64 s8, v34, v34
	v_cmp_o_f32_e64 s9, v82, v82
	v_add3_u32 v42, v42, v55, 0x7fff
	v_add3_u32 v43, v43, v56, 0x7fff
	v_add3_u32 v49, v49, v57, 0x7fff
	v_add3_u32 v81, v81, v58, 0x7fff
	v_add3_u32 v51, v51, v59, 0x7fff
	v_add3_u32 v83, v83, v60, 0x7fff
	v_add3_u32 v34, v34, v61, 0x7fff
	v_add3_u32 v61, v82, v62, 0x7fff
	v_cmp_o_f32_e64 s10, v44, v44
	v_cmp_o_f32_e64 s11, v38, v38
	v_cmp_o_f32_e64 s12, v48, v48
	v_cmp_o_f32_e64 s13, v39, v39
	v_cmp_o_f32_e64 s14, v47, v47
	v_cmp_o_f32_e64 s15, v40, v40
	v_cmp_o_f32_e64 s16, v46, v46
	v_cmp_o_f32_e64 s17, v41, v41
	v_add3_u32 v44, v44, v63, 0x7fff
	v_add3_u32 v55, v38, v64, 0x7fff
	v_add3_u32 v48, v48, v65, 0x7fff
	v_add3_u32 v56, v39, v66, 0x7fff
	v_add3_u32 v57, v47, v68, 0x7fff
	v_add3_u32 v58, v40, v74, 0x7fff
	v_add3_u32 v59, v46, v75, 0x7fff
	v_add3_u32 v60, v41, v77, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v42.h, vcc_lo
	v_cndmask_b16 v38.h, 0x7fff, v43.h, s1
	v_cndmask_b16 v39.l, 0x7fff, v49.h, s2
	v_cndmask_b16 v39.h, 0x7fff, v81.h, s3
	v_cndmask_b16 v40.l, 0x7fff, v51.h, s6
	v_cndmask_b16 v40.h, 0x7fff, v83.h, s7
	v_cndmask_b16 v41.l, 0x7fff, v34.h, s8
	v_cndmask_b16 v41.h, 0x7fff, v61.h, s9
	v_cndmask_b16 v46.l, 0x7fff, v44.h, s10
	v_cndmask_b16 v46.h, 0x7fff, v55.h, s11
	v_cndmask_b16 v47.l, 0x7fff, v48.h, s12
	v_cndmask_b16 v47.h, 0x7fff, v56.h, s13
	v_cndmask_b16 v48.l, 0x7fff, v57.h, s14
	v_cndmask_b16 v48.h, 0x7fff, v58.h, s15
	v_cndmask_b16 v49.l, 0x7fff, v59.h, s16
	v_cndmask_b16 v49.h, 0x7fff, v60.h, s17
	.loc	1 717 21 is_stmt 1              ; attention_backward.py:717:21
	ds_store_b128 v45, v[38:41]
	ds_store_b128 v45, v[46:49] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[38:41], v69
	ds_load_b128 v[42:45], v70
	ds_load_b128 v[55:58], v71
	ds_load_b128 v[59:62], v72
	ds_load_b128 v[68:71], v73
	ds_load_b128 v[72:75], v78
	ds_load_b128 v[87:90], v79
	ds_load_b128 v[91:94], v80
	v_add_nc_u32_e32 v64, v97, v67
	v_add_nc_u32_e32 v65, v76, v67
	v_mad_u64_u32 v[66:67], null, s58, 3, v[145:146]
	v_add_nc_u32_e32 v51, v97, v113
	v_add_nc_u32_e32 v63, v76, v113
	v_add_nc_u32_e32 v67, 4, v141
	v_add_nc_u32_e32 v86, 0, v107
	v_add_nc_u32_e32 v34, 0, v108
	v_add_nc_u32_e32 v46, 0, v109
	v_add_nc_u32_e32 v47, 0, v110
	v_add_nc_u32_e32 v48, 0, v111
	v_add_nc_u32_e32 v49, 0, v112
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v114, off offset:520
	scratch_store_b32 off, v115, off offset:528
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v76, v115, v114
	s_clause 0x1f                           ; 200-byte Folded Spill
	scratch_store_b32 off, v119, off offset:252
	scratch_store_b32 off, v122, off offset:256
	scratch_store_b32 off, v143, off offset:260
	scratch_store_b32 off, v131, off offset:264
	scratch_store_b32 off, v130, off offset:268
	scratch_store_b32 off, v140, off offset:272
	scratch_store_b32 off, v144, off offset:276
	scratch_store_b32 off, v142, off offset:280
	scratch_store_b32 off, v151, off offset:284
	scratch_store_b32 off, v152, off offset:288
	scratch_store_b32 off, v153, off offset:292
	scratch_store_b32 off, v141, off offset:296
	scratch_store_b32 off, v155, off offset:300
	scratch_store_b32 off, v37, off offset:304
	scratch_store_b32 off, v157, off offset:308
	scratch_store_b32 off, v158, off offset:312
	scratch_store_b32 off, v159, off offset:316
	scratch_store_b32 off, v150, off offset:320
	scratch_store_b32 off, v161, off offset:324
	scratch_store_b32 off, v156, off offset:328
	scratch_store_b32 off, v154, off offset:332
	scratch_store_b32 off, v187, off offset:336
	scratch_store_b32 off, v162, off offset:340
	scratch_store_b32 off, v164, off offset:344
	scratch_store_b32 off, v168, off offset:348
	scratch_store_b32 off, v160, off offset:352
	scratch_store_b128 off, v[169:172], off offset:356
	scratch_store_b128 off, v[173:176], off offset:372
	scratch_store_b128 off, v[192:195], off offset:388
	scratch_store_b128 off, v[196:199], off offset:404
	scratch_store_b128 off, v[200:203], off offset:420
	scratch_store_b128 off, v[204:207], off offset:436
	s_clause 0xe                            ; 84-byte Folded Spill
	scratch_store_b128 off, v[208:211], off offset:452
	scratch_store_b128 off, v[212:215], off offset:468
	scratch_store_b32 off, v50, off offset:484
	scratch_store_b32 off, v54, off offset:488
	scratch_store_b32 off, v52, off offset:492
	scratch_store_b32 off, v53, off offset:496
	scratch_store_b32 off, v63, off offset:500
	scratch_store_b32 off, v64, off offset:504
	scratch_store_b32 off, v65, off offset:508
	scratch_store_b32 off, v67, off offset:512
	scratch_store_b32 off, v49, off offset:16
	scratch_store_b32 off, v48, off offset:20
	scratch_store_b32 off, v47, off offset:24
	scratch_store_b32 off, v76, off offset:28
	scratch_store_b32 off, v166, off offset:516
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[87:90], off offset:32 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_clause 0x1d                           ; 204-byte Folded Spill
	scratch_store_b128 off, v[91:94], off offset:48
	scratch_store_b32 off, v46, off offset:64
	scratch_store_b128 off, v[55:58], off offset:68
	scratch_store_b128 off, v[59:62], off offset:84
	scratch_store_b128 off, v[68:71], off offset:100
	scratch_store_b128 off, v[72:75], off offset:116
	scratch_store_b32 off, v34, off offset:132
	scratch_store_b128 off, v[38:41], off offset:136
	scratch_store_b128 off, v[42:45], off offset:152
	scratch_store_b32 off, v86, off offset:168
	scratch_store_b32 off, v118, off offset:172
	scratch_store_b32 off, v120, off offset:176
	scratch_store_b32 off, v138, off offset:180
	scratch_store_b32 off, v139, off offset:184
	scratch_store_b32 off, v136, off offset:188
	scratch_store_b32 off, v137, off offset:192
	scratch_store_b32 off, v134, off offset:196
	scratch_store_b32 off, v135, off offset:200
	scratch_store_b32 off, v132, off offset:204
	scratch_store_b32 off, v133, off offset:208
	scratch_store_b32 off, v128, off offset:212
	scratch_store_b32 off, v129, off offset:216
	scratch_store_b32 off, v126, off offset:220
	scratch_store_b32 off, v127, off offset:224
	scratch_store_b32 off, v124, off offset:228
	scratch_store_b32 off, v125, off offset:232
	scratch_store_b32 off, v117, off offset:236
	scratch_store_b32 off, v121, off offset:240
	scratch_store_b32 off, v123, off offset:244
	scratch_store_b32 off, v116, off offset:248
	s_branch .LBB0_2
.LBB0_1:                                ; %Flow258
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 39 is_stmt 0                ; attention_backward.py:0:39
	s_xor_b32 s1, s72, -1
	s_movk_i32 s18, 0x800
	.loc	1 605 9 is_stmt 1               ; attention_backward.py:605:9
	s_and_not1_b32 vcc_lo, exec_lo, s1
	s_mov_b32 s72, 0
	s_cbranch_vccz .LBB0_6
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_and_not1_b32 vcc_lo, exec_lo, s75
	s_cbranch_vccnz .LBB0_1
; %bb.3:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v49, v147 :: v_dual_mov_b32 v48, v148
	.loc	1 662 34 is_stmt 1              ; attention_backward.py:662:34
	s_or_b32 s49, s73, s18
	s_mov_b32 s76, s48
.LBB0_4:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 34 is_stmt 0                ; attention_backward.py:0:34
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 664 25 is_stmt 1              ; attention_backward.py:664:25
	s_or_b32 s1, s76, s49
	s_waitcnt vmcnt(34)
	v_lshl_add_u32 v40, s58, 1, v145
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v104, s43 :: v_dual_add_nc_u32 v39, s58, v145
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_mul_i32 s2, s1, s58
	s_waitcnt vmcnt(1)
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[66:67], off offset:8
	scratch_store_b64 off, v[145:146], off
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v38, s2, v145, 1
	v_add_lshl_u32 v40, s2, v40, 1
	v_add_lshl_u32 v39, s2, v39, 1
	v_add_lshl_u32 v41, s2, v66, 1
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v103, s42
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e64 v38, 0x80000000, v38, s5
	v_cndmask_b32_e64 v40, 0x80000000, v40, s5
	v_cndmask_b32_e64 v39, 0x80000000, v39, s5
	v_cndmask_b32_e64 v41, 0x80000000, v41, s5
	s_clause 0x3
	buffer_load_b128 v[178:181], v38, s[52:55], 0 offen
	buffer_load_b128 v[182:185], v40, s[52:55], 0 offen
	buffer_load_b128 v[105:108], v39, s[52:55], 0 offen
	buffer_load_b128 v[110:113], v41, s[52:55], 0 offen
	v_add_nc_u32_e32 v38, 0, v119
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s62, s54
	s_mov_b32 s63, s55
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v102, s41 :: v_dual_mov_b32 v99, s38
	v_dual_mov_b32 v100, s39 :: v_dual_mov_b32 v97, s36
	v_mov_b32_e32 v98, s37
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s1, s1, s59
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s66, s54
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v40, s1, v67, 2
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s67, s55
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s46, s54
	s_mov_b32 s47, s55
	v_mov_b32_e32 v34, v167
	v_cndmask_b32_e64 v42, 0x80000000, v40, s4
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v101, s40 :: v_dual_add_nc_u32 v40, s59, v141
	v_mov_b32_e32 v46, v219
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v40, s1, v40, 2
	v_cndmask_b32_e64 v43, 0x80000000, v40, s4
	v_add_nc_u32_e32 v40, s59, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v40, s1, v40, 2
	v_cndmask_b32_e64 v44, 0x80000000, v40, s4
	v_add_lshl_u32 v40, s1, v51, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v45, 0x80000000, v40, s4
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v40, s1, v63, 2
	v_cndmask_b32_e64 v63, 0x80000000, v40, s4
	v_add_lshl_u32 v40, s1, v64, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v72, 0x80000000, v40, s4
	v_add_lshl_u32 v40, s1, v65, 2
	v_cndmask_b32_e64 v73, 0x80000000, v40, s4
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(3)
	ds_store_b128 v38, v[178:181]
	s_waitcnt vmcnt(1)
	ds_store_b128 v140, v[105:108]
	ds_store_b128 v152, v[182:185]
	s_waitcnt vmcnt(0)
	ds_store_b128 v37, v[110:113]
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v47, off, off offset:28 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v38, 0, v122
	ds_load_b128 v[55:58], v38
	ds_load_b128 v[59:62], v142
	ds_load_b128 v[114:117], v143
	ds_load_b128 v[118:121], v144
	v_mov_b32_e32 v37, v220
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[122:129], v[169:176], v[55:62], v[97:104]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[55:58], v168
	ds_load_b128 v[59:62], v162
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[122:129], v[192:199], v[114:121], v[122:129]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[122:129], v[200:207], v[55:62], v[122:129]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[55:58], v50
	ds_load_b128 v[59:62], v54
	v_dual_mov_b32 v54, v51 :: v_dual_mov_b32 v51, v189
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[122:129], v[208:215], v[55:62], v[122:129]
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v38, s49, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 699 33                        ; attention_backward.py:699:33
	v_or_b32_e32 v38, s76, v38
	.loc	1 699 25 is_stmt 0              ; attention_backward.py:699:25
	v_lshlrev_b32_e32 v38, 2, v38
	buffer_load_b32 v39, v38, s[60:63], 0 offen
	.loc	1 703 34 is_stmt 1              ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v61, s74, v122, -v39
	v_fma_f32 v60, s74, v123, -v39
	v_fma_f32 v59, s74, v124, -v39
	v_fma_f32 v58, s74, v125, -v39
	v_fma_f32 v57, s74, v126, -v39
	v_fma_f32 v109, s74, v127, -v39
	v_fma_f32 v56, s74, v128, -v39
	v_fma_f32 v55, s74, v129, -v39
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v39, s1, v141, 2
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v57, v57
	v_exp_f32_e32 v59, v59
	v_exp_f32_e32 v61, v61
	v_exp_f32_e32 v58, v58
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v39, 0x80000000, v39, s4
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v62, v38, s[64:67], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x7
	buffer_load_b128 v[38:41], v39, s[44:47], 0 offen
	buffer_load_b128 v[64:67], v43, s[44:47], 0 offen
	buffer_load_b128 v[68:71], v42, s[44:47], 0 offen
	buffer_load_b128 v[74:77], v44, s[44:47], 0 offen
	buffer_load_b128 v[78:81], v45, s[44:47], 0 offen
	buffer_load_b128 v[83:86], v72, s[44:47], 0 offen
	buffer_load_b128 v[87:90], v63, s[44:47], 0 offen
	buffer_load_b128 v[92:95], v73, s[44:47], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v45, 0, v131
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v50, v217
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v60, v60
	v_exp_f32_e32 v56, v56
	v_exp_f32_e32 v55, v55
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(7)
	v_dual_mov_b32 v63, v38 :: v_dual_mov_b32 v42, v39
	s_waitcnt vmcnt(6)
	v_mov_b32_e32 v43, v65
	ds_store_b64 v45, v[63:64]
	ds_store_b64 v52, v[42:43]
	v_dual_mov_b32 v42, v40 :: v_dual_mov_b32 v43, v66
	s_waitcnt vmcnt(4)
	v_dual_mov_b32 v73, v68 :: v_dual_mov_b32 v44, v75
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v72, v77 :: v_dual_mov_b32 v91, v87
	ds_store_b64 v53, v[42:43]
	v_dual_mov_b32 v42, v67 :: v_dual_mov_b32 v43, v69
	ds_store_b64 v164, v[41:42]
	ds_store_b64 v150, v[73:74]
	ds_store_b64 v151, v[43:44]
	v_dual_mov_b32 v42, v70 :: v_dual_mov_b32 v43, v76
	v_mov_b32_e32 v82, v78
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v44, 0xc00, v252
	v_add_nc_u32_e32 v73, 0x1c00, v252
	v_add_nc_u32_e32 v63, 0x1400, v252
	.loc	1 732 34                        ; attention_backward.py:732:34
	ds_store_b64 v158, v[42:43]
	v_dual_mov_b32 v42, v79 :: v_dual_mov_b32 v43, v84
	ds_store_b64 v153, v[71:72]
	ds_store_b64 v154, v[82:83]
	ds_store_b64 v155, v[42:43]
	v_dual_mov_b32 v42, v80 :: v_dual_mov_b32 v43, v85
	v_mov_b32_e32 v82, v86
	v_dual_mov_b32 v53, v35 :: v_dual_add_nc_u32 v72, 0x1800, v252
	v_mov_b32_e32 v52, v36
	ds_store_b64 v156, v[42:43]
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v42, v88 :: v_dual_mov_b32 v43, v93
	ds_store_b64 v157, v[81:82]
	ds_store_b64 v45, v[91:92] offset:512
	v_mov_b32_e32 v91, v95
	v_dual_mov_b32 v82, v216 :: v_dual_add_nc_u32 v45, 0x1000, v252
	ds_store_b64 v188, v[42:43]
	v_dual_mov_b32 v42, v89 :: v_dual_mov_b32 v43, v94
	ds_store_b64 v159, v[42:43]
	v_add_nc_u32_e32 v42, 0, v130
	ds_store_b64 v160, v[90:91]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[162:165], v42
	ds_load_b128 v[114:117], v42 offset:4096
	ds_load_b128 v[174:177], v161
	ds_load_b128 v[170:173], v166
	v_dual_mov_b32 v91, v218 :: v_dual_add_nc_u32 v42, 0, v189
	ds_load_b128 v[166:169], v167
	ds_load_b128 v[142:145], v187
	ds_load_b128 v[138:141], v96
	ds_load_b128 v[134:137], v35
	ds_load_b128 v[130:133], v36
	ds_load_b128 v[158:161], v190
	ds_load_b128 v[154:157], v191
	ds_load_b128 v[150:153], v216
	ds_load_b128 v[146:149], v217
	ds_load_b128 v[126:129], v218
	ds_load_b128 v[122:125], v219
	ds_load_b128 v[118:121], v220
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v42, v[38:41]
	ds_store_b128 v42, v[68:71] offset:16
	ds_store_b128 v42, v[64:67] offset:256
	ds_store_b128 v42, v[74:77] offset:272
	ds_store_b128 v42, v[78:81] offset:4096
	ds_store_b128 v42, v[87:90] offset:4112
	ds_store_b128 v42, v[83:86] offset:4352
	ds_store_b128 v42, v[92:95] offset:4368
	v_add_nc_u32_e32 v42, 0x400, v252
	v_add_nc_u32_e32 v43, 0x800, v252
	v_mov_b32_e32 v187, v188
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[218:219], v45 offset1:32
	ds_load_2addr_b32 v[216:217], v45 offset0:64 offset1:96
	ds_load_2addr_b32 v[214:215], v45 offset0:128 offset1:160
	ds_load_2addr_b32 v[212:213], v45 offset0:192 offset1:224
	ds_load_2addr_b32 v[210:211], v63 offset1:32
	ds_load_2addr_b32 v[208:209], v63 offset0:64 offset1:96
	ds_load_2addr_b32 v[206:207], v63 offset0:128 offset1:160
	ds_load_2addr_b32 v[204:205], v63 offset0:192 offset1:224
	ds_load_2addr_b32 v[202:203], v72 offset1:32
	ds_load_2addr_b32 v[200:201], v72 offset0:64 offset1:96
	ds_load_2addr_b32 v[198:199], v72 offset0:128 offset1:160
	ds_load_2addr_b32 v[196:197], v72 offset0:192 offset1:224
	ds_load_2addr_b32 v[194:195], v73 offset1:32
	ds_load_2addr_b32 v[192:193], v73 offset0:64 offset1:96
	v_mov_b32_e32 v35, v190
	ds_load_2addr_b32 v[242:243], v42 offset1:32
	ds_load_2addr_b32 v[240:241], v42 offset0:64 offset1:96
	ds_load_2addr_b32 v[238:239], v42 offset0:128 offset1:160
	ds_load_2addr_b32 v[236:237], v42 offset0:192 offset1:224
	ds_load_2addr_b32 v[234:235], v43 offset1:32
	ds_load_2addr_b32 v[232:233], v43 offset0:64 offset1:96
	ds_load_2addr_b32 v[230:231], v43 offset0:128 offset1:160
	ds_load_2addr_b32 v[228:229], v43 offset0:192 offset1:224
	ds_load_2addr_b32 v[226:227], v44 offset1:32
	ds_load_2addr_b32 v[224:225], v44 offset0:64 offset1:96
	ds_load_2addr_b32 v[222:223], v44 offset0:128 offset1:160
	ds_load_2addr_b32 v[220:221], v44 offset0:192 offset1:224
	v_mov_b32_e32 v36, v191
	ds_load_2addr_b32 v[190:191], v73 offset0:128 offset1:160
	ds_load_2addr_b32 v[188:189], v73 offset0:192 offset1:224
	ds_load_2addr_b32 v[250:251], v252 offset1:32
	ds_load_2addr_b32 v[248:249], v252 offset0:64 offset1:96
	ds_load_2addr_b32 v[246:247], v252 offset0:128 offset1:160
	ds_load_2addr_b32 v[244:245], v252 offset0:192 offset1:224
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v255, v[38:41]
	ds_store_b128 v255, v[68:71] offset:16
	ds_store_b128 v255, v[64:67] offset:272
	ds_store_b128 v255, v[74:77] offset:256
	ds_store_b128 v255, v[78:81] offset:4096
	ds_store_b128 v255, v[87:90] offset:4112
	ds_store_b128 v255, v[83:86] offset:4368
	ds_store_b128 v255, v[92:95] offset:4352
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:248
	scratch_load_b32 v42, off, off offset:244
	v_cmp_o_f32_e64 s19, v217, v217
	v_cmp_o_f32_e64 s21, v213, v213
	v_cmp_o_f32_e64 s23, v209, v209
	v_cmp_o_f32_e64 s25, v205, v205
	v_cmp_o_f32_e64 s29, v197, v197
	v_cmp_o_f32_e64 s30, v195, v195
	v_cmp_o_f32_e64 s31, v193, v193
	v_cmp_o_f32_e64 s18, v219, v219
	v_cmp_o_f32_e64 s20, v215, v215
	v_cmp_o_f32_e64 s22, v211, v211
	v_cmp_o_f32_e64 s24, v207, v207
	v_cmp_o_f32_e64 s26, v203, v203
	v_cmp_o_f32_e64 s27, v201, v201
	v_cmp_o_f32_e64 s28, v199, v199
	v_cmp_o_f32_e64 s33, v191, v191
	v_cmp_o_f32_e64 s34, v189, v189
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, 0, v38
	s_waitcnt vmcnt(0)
	ds_load_b128 v[42:45], v42
	ds_load_b128 v[38:41], v38
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s6, v42, v42
	v_cmp_o_f32_e64 s7, v43, v43
	v_cmp_o_f32_e64 s8, v44, v44
	v_cmp_o_f32_e64 s9, v45, v45
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v63, v38, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	v_cmp_o_f32_e64 s1, v39, v39
	v_cmp_o_f32_e64 s2, v40, v40
	v_cmp_o_f32_e64 s3, v41, v41
	v_add3_u32 v63, v38, v63, 0x7fff
	v_bfe_u32 v38, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, v39, v38, 0x7fff
	v_bfe_u32 v38, v40, 16, 1
	v_add3_u32 v65, v40, v38, 0x7fff
	v_bfe_u32 v38, v41, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v66, v41, v38, 0x7fff
	v_bfe_u32 v38, v42, 16, 1
	v_add3_u32 v67, v42, v38, 0x7fff
	v_bfe_u32 v38, v43, 16, 1
	scratch_load_b32 v42, off, off offset:232 ; 4-byte Folded Reload
	v_add3_u32 v68, v43, v38, 0x7fff
	v_bfe_u32 v38, v44, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v69, v44, v38, 0x7fff
	v_bfe_u32 v38, v45, 16, 1
	v_add3_u32 v70, v45, v38, 0x7fff
	scratch_load_b32 v38, off, off offset:228 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[42:45], v42
	s_waitcnt vmcnt(0)
	ds_load_b128 v[38:41], v38
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s17, v45, v45
	v_cmp_o_f32_e64 s14, v42, v42
	v_cmp_o_f32_e64 s15, v43, v43
	v_cmp_o_f32_e64 s16, v44, v44
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v71, v38, 16, 1
	v_cmp_o_f32_e64 s10, v38, v38
	v_cmp_o_f32_e64 s11, v39, v39
	v_cmp_o_f32_e64 s12, v40, v40
	v_cmp_o_f32_e64 s13, v41, v41
	v_add3_u32 v71, v38, v71, 0x7fff
	v_bfe_u32 v38, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v72, v39, v38, 0x7fff
	v_bfe_u32 v38, v40, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v65.h, s2
	v_cndmask_b16 v39.h, 0x7fff, v66.h, s3
	v_add3_u32 v73, v40, v38, 0x7fff
	v_bfe_u32 v38, v41, 16, 1
	v_cndmask_b16 v40.l, 0x7fff, v67.h, s6
	v_cndmask_b16 v40.h, 0x7fff, v68.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v74, v41, v38, 0x7fff
	v_bfe_u32 v38, v42, 16, 1
	v_cndmask_b16 v41.l, 0x7fff, v69.h, s8
	v_cndmask_b16 v41.h, 0x7fff, v70.h, s9
	v_add3_u32 v75, v42, v38, 0x7fff
	v_bfe_u32 v38, v43, 16, 1
	v_cndmask_b16 v42.l, 0x7fff, v71.h, s10
	v_cndmask_b16 v42.h, 0x7fff, v72.h, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v76, v43, v38, 0x7fff
	v_bfe_u32 v38, v44, 16, 1
	v_cndmask_b16 v43.l, 0x7fff, v73.h, s12
	v_cndmask_b16 v43.h, 0x7fff, v74.h, s13
	v_add3_u32 v77, v44, v38, 0x7fff
	v_bfe_u32 v38, v45, 16, 1
	v_cndmask_b16 v44.l, 0x7fff, v75.h, s14
	v_cndmask_b16 v44.h, 0x7fff, v76.h, s15
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v45, v45, v38, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v63.h, vcc_lo
	v_cndmask_b16 v38.h, 0x7fff, v64.h, s1
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[63:66], off, off offset:136
	scratch_load_b128 v[67:70], off, off offset:152
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v45.l, 0x7fff, v77.h, s16
	v_cndmask_b16 v45.h, 0x7fff, v45.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[63:70], v[38:45], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:220
	scratch_load_b32 v42, off, off offset:224
	s_waitcnt vmcnt(1)
	ds_load_b128 v[38:41], v38
	s_waitcnt vmcnt(0)
	ds_load_b128 v[42:45], v42
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v63, v38, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v42, v42
	v_cmp_o_f32_e64 s1, v39, v39
	v_cmp_o_f32_e64 s2, v40, v40
	v_add3_u32 v63, v38, v63, 0x7fff
	v_bfe_u32 v38, v39, 16, 1
	v_cmp_o_f32_e64 s3, v41, v41
	v_cmp_o_f32_e64 s7, v43, v43
	v_cmp_o_f32_e64 s8, v44, v44
	v_cmp_o_f32_e64 s9, v45, v45
	v_add3_u32 v64, v39, v38, 0x7fff
	v_bfe_u32 v38, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v65, v40, v38, 0x7fff
	v_bfe_u32 v38, v41, 16, 1
	v_add3_u32 v66, v41, v38, 0x7fff
	v_bfe_u32 v38, v42, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v67, v42, v38, 0x7fff
	v_bfe_u32 v38, v43, 16, 1
	scratch_load_b32 v42, off, off offset:216 ; 4-byte Folded Reload
	v_add3_u32 v68, v43, v38, 0x7fff
	v_bfe_u32 v38, v44, 16, 1
	v_add3_u32 v69, v44, v38, 0x7fff
	v_bfe_u32 v38, v45, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v70, v45, v38, 0x7fff
	scratch_load_b32 v38, off, off offset:212 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[42:45], v42
	s_waitcnt vmcnt(0)
	ds_load_b128 v[38:41], v38
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s17, v45, v45
	v_cmp_o_f32_e64 s14, v42, v42
	v_cmp_o_f32_e64 s15, v43, v43
	v_cmp_o_f32_e64 s16, v44, v44
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v71, v38, 16, 1
	v_cmp_o_f32_e64 s10, v38, v38
	v_cmp_o_f32_e64 s11, v39, v39
	v_cmp_o_f32_e64 s12, v40, v40
	v_cmp_o_f32_e64 s13, v41, v41
	v_add3_u32 v71, v38, v71, 0x7fff
	v_bfe_u32 v38, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v72, v39, v38, 0x7fff
	v_bfe_u32 v38, v40, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v65.h, s2
	v_cndmask_b16 v39.h, 0x7fff, v66.h, s3
	v_add3_u32 v73, v40, v38, 0x7fff
	v_bfe_u32 v38, v41, 16, 1
	v_cndmask_b16 v40.l, 0x7fff, v67.h, s6
	v_cndmask_b16 v40.h, 0x7fff, v68.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v74, v41, v38, 0x7fff
	v_bfe_u32 v38, v42, 16, 1
	v_cndmask_b16 v41.l, 0x7fff, v69.h, s8
	v_cndmask_b16 v41.h, 0x7fff, v70.h, s9
	v_add3_u32 v75, v42, v38, 0x7fff
	v_bfe_u32 v38, v43, 16, 1
	v_cndmask_b16 v42.l, 0x7fff, v71.h, s10
	v_cndmask_b16 v42.h, 0x7fff, v72.h, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v76, v43, v38, 0x7fff
	v_bfe_u32 v38, v44, 16, 1
	v_cndmask_b16 v43.l, 0x7fff, v73.h, s12
	v_cndmask_b16 v43.h, 0x7fff, v74.h, s13
	v_add3_u32 v77, v44, v38, 0x7fff
	v_bfe_u32 v38, v45, 16, 1
	v_cndmask_b16 v44.l, 0x7fff, v75.h, s14
	v_cndmask_b16 v44.h, 0x7fff, v76.h, s15
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v45, v45, v38, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v63.h, vcc_lo
	v_cndmask_b16 v38.h, 0x7fff, v64.h, s1
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[63:66], off, off offset:68
	scratch_load_b128 v[67:70], off, off offset:84
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v45.l, 0x7fff, v77.h, s16
	v_cndmask_b16 v45.h, 0x7fff, v45.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[63:70], v[38:45], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:204
	scratch_load_b32 v42, off, off offset:208
	s_waitcnt vmcnt(1)
	ds_load_b128 v[38:41], v38
	s_waitcnt vmcnt(0)
	ds_load_b128 v[42:45], v42
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v63, v38, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v42, v42
	v_cmp_o_f32_e64 s1, v39, v39
	v_cmp_o_f32_e64 s2, v40, v40
	v_add3_u32 v63, v38, v63, 0x7fff
	v_bfe_u32 v38, v39, 16, 1
	v_cmp_o_f32_e64 s3, v41, v41
	v_cmp_o_f32_e64 s7, v43, v43
	v_cmp_o_f32_e64 s8, v44, v44
	v_cmp_o_f32_e64 s9, v45, v45
	v_add3_u32 v64, v39, v38, 0x7fff
	v_bfe_u32 v38, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v65, v40, v38, 0x7fff
	v_bfe_u32 v38, v41, 16, 1
	v_add3_u32 v66, v41, v38, 0x7fff
	v_bfe_u32 v38, v42, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v67, v42, v38, 0x7fff
	v_bfe_u32 v38, v43, 16, 1
	scratch_load_b32 v42, off, off offset:200 ; 4-byte Folded Reload
	v_add3_u32 v68, v43, v38, 0x7fff
	v_bfe_u32 v38, v44, 16, 1
	v_add3_u32 v69, v44, v38, 0x7fff
	v_bfe_u32 v38, v45, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v70, v45, v38, 0x7fff
	scratch_load_b32 v38, off, off offset:196 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[42:45], v42
	s_waitcnt vmcnt(0)
	ds_load_b128 v[38:41], v38
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s17, v45, v45
	v_cmp_o_f32_e64 s14, v42, v42
	v_cmp_o_f32_e64 s15, v43, v43
	v_cmp_o_f32_e64 s16, v44, v44
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v71, v38, 16, 1
	v_cmp_o_f32_e64 s10, v38, v38
	v_cmp_o_f32_e64 s11, v39, v39
	v_cmp_o_f32_e64 s12, v40, v40
	v_cmp_o_f32_e64 s13, v41, v41
	v_add3_u32 v71, v38, v71, 0x7fff
	v_bfe_u32 v38, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v72, v39, v38, 0x7fff
	v_bfe_u32 v38, v40, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v65.h, s2
	v_cndmask_b16 v39.h, 0x7fff, v66.h, s3
	v_add3_u32 v73, v40, v38, 0x7fff
	v_bfe_u32 v38, v41, 16, 1
	v_cndmask_b16 v40.l, 0x7fff, v67.h, s6
	v_cndmask_b16 v40.h, 0x7fff, v68.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v74, v41, v38, 0x7fff
	v_bfe_u32 v38, v42, 16, 1
	v_cndmask_b16 v41.l, 0x7fff, v69.h, s8
	v_cndmask_b16 v41.h, 0x7fff, v70.h, s9
	v_add3_u32 v75, v42, v38, 0x7fff
	v_bfe_u32 v38, v43, 16, 1
	v_cndmask_b16 v42.l, 0x7fff, v71.h, s10
	v_cndmask_b16 v42.h, 0x7fff, v72.h, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v76, v43, v38, 0x7fff
	v_bfe_u32 v38, v44, 16, 1
	v_cndmask_b16 v43.l, 0x7fff, v73.h, s12
	v_cndmask_b16 v43.h, 0x7fff, v74.h, s13
	v_add3_u32 v77, v44, v38, 0x7fff
	v_bfe_u32 v38, v45, 16, 1
	v_cndmask_b16 v44.l, 0x7fff, v75.h, s14
	v_cndmask_b16 v44.h, 0x7fff, v76.h, s15
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v45, v45, v38, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v63.h, vcc_lo
	v_cndmask_b16 v38.h, 0x7fff, v64.h, s1
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[63:66], off, off offset:100
	scratch_load_b128 v[67:70], off, off offset:116
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v45.l, 0x7fff, v77.h, s16
	v_cndmask_b16 v45.h, 0x7fff, v45.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[63:70], v[38:45], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v38, off, off offset:188
	scratch_load_b32 v42, off, off offset:192
	s_waitcnt vmcnt(1)
	ds_load_b128 v[38:41], v38
	s_waitcnt vmcnt(0)
	ds_load_b128 v[42:45], v42
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v63, v38, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v42, v42
	v_cmp_o_f32_e64 s1, v39, v39
	v_cmp_o_f32_e64 s2, v40, v40
	v_add3_u32 v63, v38, v63, 0x7fff
	v_bfe_u32 v38, v39, 16, 1
	v_cmp_o_f32_e64 s3, v41, v41
	v_cmp_o_f32_e64 s7, v43, v43
	v_cmp_o_f32_e64 s8, v44, v44
	v_cmp_o_f32_e64 s9, v45, v45
	v_add3_u32 v64, v39, v38, 0x7fff
	v_bfe_u32 v38, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v65, v40, v38, 0x7fff
	v_bfe_u32 v38, v41, 16, 1
	v_add3_u32 v66, v41, v38, 0x7fff
	v_bfe_u32 v38, v42, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v67, v42, v38, 0x7fff
	v_bfe_u32 v38, v43, 16, 1
	scratch_load_b32 v42, off, off offset:184 ; 4-byte Folded Reload
	v_add3_u32 v68, v43, v38, 0x7fff
	v_bfe_u32 v38, v44, 16, 1
	v_add3_u32 v69, v44, v38, 0x7fff
	v_bfe_u32 v38, v45, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v70, v45, v38, 0x7fff
	scratch_load_b32 v38, off, off offset:180 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[42:45], v42
	s_waitcnt vmcnt(0)
	ds_load_b128 v[38:41], v38
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s17, v45, v45
	v_cmp_o_f32_e64 s14, v42, v42
	v_cmp_o_f32_e64 s15, v43, v43
	v_cmp_o_f32_e64 s16, v44, v44
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v71, v38, 16, 1
	v_cmp_o_f32_e64 s10, v38, v38
	v_cmp_o_f32_e64 s11, v39, v39
	v_cmp_o_f32_e64 s12, v40, v40
	v_cmp_o_f32_e64 s13, v41, v41
	v_add3_u32 v71, v38, v71, 0x7fff
	v_bfe_u32 v38, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v72, v39, v38, 0x7fff
	v_bfe_u32 v38, v40, 16, 1
	v_cndmask_b16 v39.l, 0x7fff, v65.h, s2
	v_cndmask_b16 v39.h, 0x7fff, v66.h, s3
	v_add3_u32 v73, v40, v38, 0x7fff
	v_bfe_u32 v38, v41, 16, 1
	v_cndmask_b16 v40.l, 0x7fff, v67.h, s6
	v_cndmask_b16 v40.h, 0x7fff, v68.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v74, v41, v38, 0x7fff
	v_bfe_u32 v38, v42, 16, 1
	v_cndmask_b16 v41.l, 0x7fff, v69.h, s8
	v_cndmask_b16 v41.h, 0x7fff, v70.h, s9
	v_add3_u32 v75, v42, v38, 0x7fff
	v_bfe_u32 v38, v43, 16, 1
	v_cndmask_b16 v42.l, 0x7fff, v71.h, s10
	v_cndmask_b16 v42.h, 0x7fff, v72.h, s11
	v_bfe_u32 v71, v194, 16, 1
	v_cmp_o_f32_e64 s10, v218, v218
	v_add3_u32 v76, v43, v38, 0x7fff
	v_bfe_u32 v38, v44, 16, 1
	v_cndmask_b16 v43.l, 0x7fff, v73.h, s12
	v_cndmask_b16 v43.h, 0x7fff, v74.h, s13
	v_cmp_o_f32_e64 s11, v214, v214
	v_cmp_o_f32_e64 s12, v210, v210
	v_add3_u32 v77, v44, v38, 0x7fff
	v_bfe_u32 v38, v45, 16, 1
	v_cndmask_b16 v44.l, 0x7fff, v75.h, s14
	v_cndmask_b16 v44.h, 0x7fff, v76.h, s15
	v_cmp_o_f32_e64 s13, v206, v206
	v_cmp_o_f32_e64 s14, v202, v202
	v_add3_u32 v45, v45, v38, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v63.h, vcc_lo
	v_cndmask_b16 v38.h, 0x7fff, v64.h, s1
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[63:66], off, off offset:32
	scratch_load_b128 v[67:70], off, off offset:48
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v45.l, 0x7fff, v77.h, s16
	v_cndmask_b16 v45.h, 0x7fff, v45.h, s17
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s15, v198, v198
	v_cmp_o_f32_e64 s16, v194, v194
	v_add3_u32 v71, v194, v71, 0x7fff
	v_bfe_u32 v72, v190, 16, 1
	v_cmp_o_f32_e64 s17, v190, v190
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v87.h, 0x7fff, v71.h, s16
	v_add3_u32 v72, v190, v72, 0x7fff
	v_cmp_o_f32_e64 s16, v223, v223
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v72.h, 0x7fff, v72.h, s17
	v_cmp_o_f32_e64 s17, v221, v221
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[63:70], v[38:45], v[97:104]
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v63, 2, v254
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b16_e32 v64.h, v105.l
	v_mov_b16_e64 v105.l, v178.h
	v_mov_b16_e64 v65.l, v182.l
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v39, v98, v62
	v_sub_f32_e32 v40, v99, v62
	v_sub_f32_e32 v41, v100, v62
	v_sub_f32_e32 v38, v97, v62
	v_sub_f32_e32 v42, v101, v62
	v_sub_f32_e32 v43, v102, v62
	v_sub_f32_e32 v44, v103, v62
	v_sub_f32_e32 v45, v104, v62
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v62, s76, v47
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b16_e32 v65.h, v110.l
	v_mov_b16_e64 v64.l, v178.l
	v_mov_b16_e64 v110.l, v182.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v69, v202, 16, 1
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v62, s70, v62
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v70, v198, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v69, v202, v69, 0x7fff
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s1, v63, v62
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v63, 4, v254
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e32 vcc_lo, v254, v62
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v70, v198, v70, 0x7fff
	v_cndmask_b16 v85.h, 0x7fff, v69.h, s14
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s1, s0, s1
	.loc	1 676 30 is_stmt 0              ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s2, v63, v62
	.loc	1 514 23 is_stmt 1              ; attention_backward.py:514:23
	v_or_b32_e32 v63, 6, v254
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v86.h, 0x7fff, v70.h, s15
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v66, 0, v61, vcc_lo
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s2, s0, s2
	.loc	1 676 30 is_stmt 0              ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s3, v63, v62
	.loc	1 514 23 is_stmt 1              ; attention_backward.py:514:23
	v_or_b32_e32 v63, 8, v254
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v59, 0, v59, s2
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s14, v227, v227
	v_cmp_o_f32_e64 s15, v225, v225
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s3, s0, s3
	.loc	1 676 30 is_stmt 0              ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s6, v63, v62
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v58, 0, v58, s3
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v63, 10, v254
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s6, s0, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v41, v58, v41
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v67, 0, v57, s6
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s7, v63, v62
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v63, 12, v254
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_dual_mul_f32 v41, s69, v41 :: v_dual_mul_f32 v42, v67, v42
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v40, v59, v40
	.loc	1 676 30                        ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s8, v63, v62
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v63, 14, v254
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s7, s0, s7
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v42, s69, v42
	v_mul_f32_e32 v40, s69, v40
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_cmp_o_f32_e64 s3, v41, v41
	.loc	1 676 30 is_stmt 1              ; attention_backward.py:676:30
	v_cmp_le_i32_e64 s9, v63, v62
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v63, 0, v60, s1
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v57, v42, 16, 1
	v_cmp_o_f32_e64 s6, v42, v42
	v_cmp_o_f32_e64 s2, v40, v40
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s8, s0, s8
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v39, v63, v39
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v42, v42, v57, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v57, v109
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_dual_mov_b32 v109, v105 :: v_dual_mul_f32 v38, v66, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v39, s69, v39
	.loc	1 676 21                        ; attention_backward.py:676:21
	s_and_b32 s9, s0, s9
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v38, s69, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v60, v39, 16, 1
	v_cmp_o_f32_e64 s1, v39, v39
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v57, 0, v57, s7
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v61, v38, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	v_add3_u32 v39, v39, v60, 0x7fff
	v_bfe_u32 v60, v40, 16, 1
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v43, v57, v43
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v38, v38, v61, 0x7fff
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v61, 0, v55, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v40, v40, v60, 0x7fff
	v_bfe_u32 v60, v41, 16, 1
	v_cndmask_b16 v38.l, 0x7fff, v38.h, vcc_lo
	v_cndmask_b16 v38.h, 0x7fff, v42.h, s6
	.loc	1 722 33                        ; attention_backward.py:722:33
	scratch_load_b32 v42, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v43, s69, v43
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_add3_u32 v41, v41, v60, 0x7fff
	.loc	1 720 30 is_stmt 1              ; attention_backward.py:720:30
	v_mul_f32_e32 v45, v61, v45
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v66, v66
	v_cmp_o_f32_e64 s6, v58, v58
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v60, v43, 16, 1
	v_cmp_o_f32_e64 s7, v43, v43
	.loc	1 721 38 is_stmt 0              ; attention_backward.py:721:38
	v_mul_f32_e32 v45, s69, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v43, v43, v60, 0x7fff
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v60, 0, v56, s8
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v55, v45, 16, 1
	v_cmp_o_f32_e64 s9, v45, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v44, v60, v44
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v45, v45, v55, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38 is_stmt 0              ; attention_backward.py:721:38
	v_mul_f32_e32 v44, s69, v44
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v56, v44, 16, 1
	v_cmp_o_f32_e64 s8, v44, v44
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v44, v44, v56, 0x7fff
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v62, 0, v42
	ds_store_b16 v62, v38
	ds_store_b16_d16_hi v62, v38 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s1
	v_cndmask_b16 v38.h, 0x7fff, v43.h, s7
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s1, v67, v67
	v_cmp_o_f32_e64 s7, v60, v60
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v0, v38
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v38.l, 0x7fff, v40.h, s2
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v0, v38 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v38.h, 0x7fff, v44.h, s8
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s2, v63, v63
	v_cmp_o_f32_e64 s8, v61, v61
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v253, v38
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v38.l, 0x7fff, v41.h, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v253, v38 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v38.h, 0x7fff, v45.h, s9
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v33, v38
	ds_store_b16_d16_hi v33, v38 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v38, off, off offset:172 ; 4-byte Folded Reload
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s3, v57, v57
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s9, v222, v222
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v56, 0, v38
	ds_load_b128 v[38:41], v56
	ds_load_b128 v[42:45], v49
	ds_load_b128 v[97:100], v48
	ds_load_b128 v[101:104], v186
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v47, off, off offset:240 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v55, 0, v47
	scratch_load_b32 v47, off, off offset:168 ; 4-byte Folded Reload
	ds_store_2addr_b64 v55, v[64:65], v[109:110] offset1:8
	v_mov_b16_e32 v64.h, v106.l
	v_mov_b16_e64 v106.l, v179.h
	v_mov_b16_e64 v65.l, v183.l
	v_mov_b16_e32 v65.h, v111.l
	v_mov_b16_e64 v64.l, v179.l
	v_mov_b16_e64 v111.l, v183.h
	v_mov_b32_e32 v110, v106
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v47, v[64:65], v[110:111] offset1:8
	scratch_load_b32 v47, off, off offset:132 ; 4-byte Folded Reload
	v_mov_b16_e32 v64.h, v107.l
	v_mov_b16_e64 v107.l, v180.h
	v_mov_b16_e64 v65.l, v184.l
	v_mov_b16_e32 v65.h, v112.l
	v_mov_b16_e64 v64.l, v180.l
	v_mov_b16_e64 v112.l, v184.h
	v_mov_b32_e32 v111, v107
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v47, v[64:65], v[111:112] offset1:8
	scratch_load_b32 v47, off, off offset:64 ; 4-byte Folded Reload
	v_mov_b16_e32 v65.h, v113.l
	v_mov_b16_e64 v113.l, v185.h
	v_mov_b16_e64 v65.l, v185.l
	v_mov_b16_e64 v64.l, v181.l
	v_mov_b16_e32 v64.h, v108.l
	v_mov_b16_e64 v108.l, v181.h
	v_mov_b32_e32 v109, v113
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v47, v[64:65], v[108:109] offset1:8
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v47, off, off offset:176
	scratch_load_b32 v64, off, off offset:24
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v55, 0, v47
	s_waitcnt vmcnt(0)
	ds_load_b128 v[109:112], v64
	ds_load_b128 v[105:108], v55
	ds_load_b128 v[178:181], v55 offset:2048
	ds_load_b128 v[182:185], v64 offset:2048
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v55, off, off offset:16
	scratch_load_b32 v64, off, off offset:20
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[105:112], v[38:45], v[25:32]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[178:185], v[38:45], v[17:24]
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	ds_load_b128 v[38:41], v64
	ds_load_b128 v[105:108], v64 offset:2048
	ds_load_b128 v[109:112], v55 offset:2048
	ds_load_b128 v[42:45], v55
	v_mov_b16_e32 v55.l, 0
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v185.l, v55.l
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v68.l, v55.l
	v_mov_b16_e32 v65.l, v55.l
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v179.l, v55.l
	v_mov_b16_e64 v178.l, v55.l
	v_mov_b16_e64 v180.l, v55.l
	v_mov_b16_e64 v181.l, v55.l
	v_mov_b16_e64 v182.l, v55.l
	v_mov_b16_e64 v183.l, v55.l
	v_mov_b16_e64 v184.l, v55.l
	v_mov_b16_e64 v190.l, v55.l
	v_mov_b16_e32 v73.l, v55.l
	v_mov_b16_e32 v75.l, v55.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[17:24], v[105:112], v[97:104], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[25:32], v[38:45], v[97:104], v[25:32]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v38, v66, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v98.l, v55.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v42, v61, 16, 1
	v_bfe_u32 v41, v60, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v43, v228, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v38, v66, v38, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v44, v224, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v42, v61, v42, 0x7fff
	v_add3_u32 v41, v60, v41, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v43, v228, v43, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v55.h, 0x7fff, v38.h, vcc_lo
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v44, v224, v44, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v68.h, 0x7fff, v42.h, s8
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v42, v232, 16, 1
	v_bfe_u32 v45, v220, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v38, v66, v55
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e32 v66.l, v55.l
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v61, v61, v68
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v42, v232, v42, 0x7fff
	v_add3_u32 v45, v220, v45, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v39, v38, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v44.l, v55.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s8, v226, v226
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v42.l, v55.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v64, v38, v39, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v38, v67, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v43.l, v55.l
	v_mov_b16_e32 v45.l, v55.l
	v_mov_b16_e32 v77.l, v55.l
	v_mov_b16_e32 v79.l, v55.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v38, v67, v38, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v74.l, v55.l
	v_mov_b16_e32 v76.l, v55.l
	v_mov_b16_e32 v78.l, v55.l
	v_mov_b16_e32 v80.l, v55.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v98.h, 0x7fff, v38.h, s1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v81.l, v55.l
	v_mov_b16_e32 v83.l, v55.l
	v_mov_b16_e32 v87.l, v55.l
	v_mov_b16_e32 v85.l, v55.l
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v38, v67, v98
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v67.h, 0x7fff, v41.h, s7
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v41, v236, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v67.l, v55.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s7, v230, v230
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v39, v38, 16, 1
	v_cmp_o_f32_e64 s1, v38, v38
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v41, v236, v41, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v41.l, v55.l
	v_mov_b16_e32 v86.l, v55.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v97, v38, v39, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v38, v63, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v84.l, v55.l
	v_mov_b16_e32 v72.l, v55.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v38, v63, v38, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v38.l, v55.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s2
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v62, v98 offset:512
	ds_store_b16_d16_hi v0, v38
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v39, v63, v38
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v38, v59, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v63.l, v55.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_bfe_u32 v40, v39, 16, 1
	v_cmp_o_f32_e64 s2, v39, v39
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_add3_u32 v38, v59, v38, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v38.l, 0x7fff, v64.h, vcc_lo
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v248, v248
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v39, v39, v40, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v40, v57, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v64, v212, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v40, v57, v40, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v64, v212, v64, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v63.h, 0x7fff, v40.h, s3
	v_bfe_u32 v40, v58, 16, 1
	v_cmp_o_f32_e64 s3, v59, v59
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v57, v57, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v40, v58, v40, 0x7fff
	v_cndmask_b16 v65.h, 0x7fff, v38.h, s3
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v38.h, 0x7fff, v97.h, s1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s1, v244, v244
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v66.h, 0x7fff, v40.h, s6
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v62, v55
	ds_store_b16_d16_hi v0, v63 offset:512
	ds_store_b16_d16_hi v253, v65
	ds_store_b16_d16_hi v253, v67 offset:512
	ds_store_b16_d16_hi v33, v66
	ds_store_b16_d16_hi v33, v68 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[105:108], v56
	ds_load_b128 v[109:112], v49
	ds_load_b128 v[97:100], v48
	ds_load_b128 v[101:104], v186
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v62, v38
	ds_store_b16_d16_hi v62, v38 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s2
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v39, v248, 16, 1
	v_bfe_u32 v40, v244, 16, 1
	v_bfe_u32 v62, v216, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v59, v59, v65
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s2, v57, v57
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v39, v248, v39, 0x7fff
	v_add3_u32 v40, v244, v40, 0x7fff
	v_add3_u32 v62, v216, v62, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s6, v61, v61
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v63, v226, 16, 1
	v_cndmask_b16 v38.h, 0x7fff, v39.h, vcc_lo
	v_cndmask_b16 v39.h, 0x7fff, v40.h, s1
	v_bfe_u32 v40, v240, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v240, v240
	v_cmp_o_f32_e64 s1, v212, v212
	v_bfe_u32 v65, v218, 16, 1
	v_bfe_u32 v68, v206, 16, 1
	v_add3_u32 v40, v240, v40, 0x7fff
	v_add3_u32 v63, v226, v63, 0x7fff
	v_cndmask_b16 v179.h, 0x7fff, v64.h, s1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v58, v58, v66
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v64, v222, 16, 1
	v_cndmask_b16 v40.h, 0x7fff, v40.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v236, v236
	v_bfe_u32 v66, v214, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s1, v58, v58
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v64, v222, v64, 0x7fff
	v_add3_u32 v65, v218, v65, 0x7fff
	v_cndmask_b16 v41.h, 0x7fff, v41.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v232, v232
	v_add3_u32 v66, v214, v66, 0x7fff
	v_add3_u32 v68, v206, v68, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v40.l, v55.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v79.h, 0x7fff, v63.h, s8
	v_cndmask_b16 v42.h, 0x7fff, v42.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v228, v228
	v_cndmask_b16 v80.h, 0x7fff, v64.h, s9
	v_cndmask_b16 v81.h, 0x7fff, v65.h, s10
	v_cndmask_b16 v84.h, 0x7fff, v68.h, s13
	v_mov_b32_e32 v218, v91
	v_cndmask_b16 v43.h, 0x7fff, v43.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v224, v224
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v91, v171, v42 :: v_dual_sub_f32 v92, v177, v41
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_sub_f32 v93, v175, v40 :: v_dual_sub_f32 v90, v173, v43
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v44.h, 0x7fff, v44.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v220, v220
	v_bfe_u32 v173, v205, 16, 1
	v_cmp_o_f32_e64 s8, v239, v239
	v_cmp_o_f32_e64 s9, v237, v237
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v89, v167, v44
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v45.h, 0x7fff, v45.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v216, v216
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v44.l, v79.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s10, v235, v235
	v_cmp_o_f32_e64 s13, v229, v229
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v88, v169, v45
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v178.h, 0x7fff, v62.h, vcc_lo
	v_bfe_u32 v62, v208, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v208, v208
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v60, v60, v67
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v67, v210, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v45.l, v80.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v62, v208, v62, 0x7fff
	v_bfe_u32 v169, v209, 16, 1
	v_bfe_u32 v167, v211, 16, 1
	v_add3_u32 v67, v210, v67, 0x7fff
	v_bfe_u32 v171, v207, 16, 1
	v_cndmask_b16 v180.h, 0x7fff, v62.h, vcc_lo
	v_bfe_u32 v62, v204, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v204, v204
	v_mov_b32_e32 v216, v82
	v_cndmask_b16 v82.h, 0x7fff, v66.h, s11
	v_cndmask_b16 v83.h, 0x7fff, v67.h, s12
	v_add3_u32 v62, v204, v62, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v113, v139, v180
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s11, v233, v233
	v_cmp_o_f32_e64 s12, v231, v231
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v180.l, v83.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v181.h, 0x7fff, v62.h, vcc_lo
	v_bfe_u32 v62, v200, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v200, v200
	v_add3_u32 v169, v209, v169, 0x7fff
	v_add3_u32 v173, v205, v173, 0x7fff
	v_bfe_u32 v175, v203, 16, 1
	v_add3_u32 v62, v200, v62, 0x7fff
	v_mov_b32_e32 v200, v96
	v_bfe_u32 v177, v201, 16, 1
	v_add3_u32 v167, v211, v167, 0x7fff
	v_add3_u32 v171, v207, v171, 0x7fff
	v_cndmask_b16 v182.h, 0x7fff, v62.h, vcc_lo
	v_bfe_u32 v62, v196, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v196, v196
	v_add3_u32 v175, v203, v175, 0x7fff
	v_add3_u32 v177, v201, v177, 0x7fff
	v_cndmask_b16 v190.h, 0x7fff, v169.h, s23
	v_add3_u32 v62, v196, v62, 0x7fff
	v_cndmask_b16 v167.h, 0x7fff, v167.h, s22
	v_cndmask_b16 v171.h, 0x7fff, v171.h, s24
	v_cndmask_b16 v175.h, 0x7fff, v175.h, s26
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v169.l, v55.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v183.h, 0x7fff, v62.h, vcc_lo
	v_bfe_u32 v62, v192, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v192, v192
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v173.l, v55.l
	v_mov_b16_e64 v167.l, v55.l
	v_mov_b16_e64 v175.l, v55.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v62, v192, v62, 0x7fff
	v_cndmask_b16 v192.h, 0x7fff, v177.h, s27
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v192.l, v55.l
	v_mov_b16_e32 v82.l, v55.l
	v_mov_b16_e64 v177.l, v55.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v184.h, 0x7fff, v62.h, vcc_lo
	v_bfe_u32 v62, v188, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v188, v188
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v171.l, v55.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v62, v188, v62, 0x7fff
	v_bfe_u32 v188, v199, 16, 1
	v_cndmask_b16 v185.h, 0x7fff, v62.h, vcc_lo
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v62, v59, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v59, v59
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v196, v199, v188, 0x7fff
	v_bfe_u32 v188, v197, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v196.l, v55.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v59, v59, v62, 0x7fff
	v_bfe_u32 v62, v58, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v177.h, 0x7fff, v196.h, s28
	v_add3_u32 v194, v197, v188, 0x7fff
	v_bfe_u32 v188, v195, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v194.l, v55.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v58, v58, v62, 0x7fff
	v_bfe_u32 v62, v57, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v197, v195, v188, 0x7fff
	v_bfe_u32 v188, v193, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v57, v57, v62, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v196.h, 0x7fff, v197.h, s30
	v_add3_u32 v195, v193, v188, 0x7fff
	v_cndmask_b16 v193.h, 0x7fff, v194.h, s29
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v39.l, 0x7fff, v57.h, s2
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v57, v250, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v0, v38
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v38.l, 0x7fff, v59.h, vcc_lo
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v250, v250
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v0, v39 offset:512
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v57, v250, v57, 0x7fff
	v_bfe_u32 v59, v242, 16, 1
	v_cmp_o_f32_e64 s2, v242, v242
	v_cndmask_b16 v194.h, 0x7fff, v195.h, s31
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v96, v141, v181
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v73.h, 0x7fff, v57.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v57, v133, v185
	v_sub_f32_e32 v133, v143, v178
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v62, v60, 16, 1
	v_cmp_o_f32_e64 s3, v60, v60
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v59, v242, v59, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v185.l, v72.h
	v_mov_b16_e64 v181.l, v84.h
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v60, v60, v62, 0x7fff
	v_bfe_u32 v62, v61, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v75.h, 0x7fff, v59.h, s2
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v178.l, v81.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v188, v191, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v39.l, 0x7fff, v60.h, s3
	v_add3_u32 v61, v61, v62, 0x7fff
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v253, v38
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v38.l, 0x7fff, v58.h, s1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v58, v246, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v253, v39 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v39.l, 0x7fff, v61.h, s6
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v60, v238, 16, 1
	v_bfe_u32 v61, v234, 16, 1
	v_bfe_u32 v62, v230, 16, 1
	v_cmp_o_f32_e64 s1, v246, v246
	v_cmp_o_f32_e64 s3, v238, v238
	v_cmp_o_f32_e64 s6, v234, v234
	v_add3_u32 v58, v246, v58, 0x7fff
	v_add3_u32 v60, v238, v60, 0x7fff
	v_add3_u32 v61, v234, v61, 0x7fff
	v_add3_u32 v62, v230, v62, 0x7fff
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v33, v38
	ds_store_b16 v33, v39 offset:512
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v38.l, v55.l
	v_mov_b16_e32 v39.l, v55.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v74.h, 0x7fff, v58.h, s1
	v_cndmask_b16 v76.h, 0x7fff, v60.h, s3
	v_cndmask_b16 v77.h, 0x7fff, v61.h, s6
	v_cndmask_b16 v78.h, 0x7fff, v62.h, s7
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[64:67], v56
	ds_load_b128 v[68:71], v49
	v_dual_mov_b32 v220, v37 :: v_dual_sub_f32 v95, v163, v38
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v43.l, v78.h
	v_mov_b16_e32 v42.l, v77.h
	v_mov_b16_e32 v41.l, v76.h
	v_mov_b16_e32 v40.l, v75.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v94, v165, v39
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v39.l, v74.h
	v_mov_b16_e32 v38.l, v73.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v58, v131, v184
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v184.l, v87.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v60, v137, v183
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v183.l, v86.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v62, v135, v182
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v182.l, v85.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v131, v145, v179
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v179.l, v82.h
	v_wmma_f32_16x16x16_bf16 v[1:8], v[38:45], v[105:112], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v145, v217, 16, 1
	v_bfe_u32 v165, v213, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v251, v251
	v_cmp_o_f32_e64 s1, v249, v249
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[178:185], v[97:104], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s2, v247, v247
	v_cmp_o_f32_e64 s3, v245, v245
	v_cmp_o_f32_e64 s6, v243, v243
	v_cmp_o_f32_e64 s7, v241, v241
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[38:45], v[64:71], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v38, v251, 16, 1
	v_bfe_u32 v39, v247, 16, 1
	v_bfe_u32 v40, v243, 16, 1
	v_bfe_u32 v41, v239, 16, 1
	v_bfe_u32 v42, v235, 16, 1
	v_bfe_u32 v43, v231, 16, 1
	v_bfe_u32 v44, v227, 16, 1
	v_bfe_u32 v45, v223, 16, 1
	v_add3_u32 v56, v251, v38, 0x7fff
	v_bfe_u32 v38, v249, 16, 1
	v_add3_u32 v59, v247, v39, 0x7fff
	v_bfe_u32 v39, v245, 16, 1
	v_add3_u32 v61, v243, v40, 0x7fff
	v_bfe_u32 v40, v241, 16, 1
	v_add3_u32 v63, v239, v41, 0x7fff
	v_bfe_u32 v41, v237, 16, 1
	v_add3_u32 v135, v235, v42, 0x7fff
	v_bfe_u32 v42, v233, 16, 1
	v_add3_u32 v137, v231, v43, 0x7fff
	v_bfe_u32 v43, v229, 16, 1
	v_add3_u32 v139, v227, v44, 0x7fff
	v_bfe_u32 v44, v225, 16, 1
	v_add3_u32 v141, v223, v45, 0x7fff
	v_bfe_u32 v45, v221, 16, 1
	v_add3_u32 v38, v249, v38, 0x7fff
	v_add3_u32 v39, v245, v39, 0x7fff
	v_add3_u32 v40, v241, v40, 0x7fff
	v_add3_u32 v41, v237, v41, 0x7fff
	v_add3_u32 v42, v233, v42, 0x7fff
	v_add3_u32 v43, v229, v43, 0x7fff
	v_add3_u32 v44, v225, v44, 0x7fff
	v_add3_u32 v45, v221, v45, 0x7fff
	v_bfe_u32 v143, v219, 16, 1
	v_add3_u32 v145, v217, v145, 0x7fff
	v_bfe_u32 v163, v215, 16, 1
	v_add3_u32 v165, v213, v165, 0x7fff
	v_add3_u32 v198, v191, v188, 0x7fff
	v_bfe_u32 v188, v189, 16, 1
	v_add3_u32 v143, v219, v143, 0x7fff
	v_add3_u32 v163, v215, v163, 0x7fff
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s1
	v_cndmask_b16 v39.h, 0x7fff, v39.h, s3
	v_add3_u32 v199, v189, v188, 0x7fff
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s7
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s9
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s11
	v_cndmask_b16 v43.h, 0x7fff, v43.h, s13
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s15
	v_cndmask_b16 v45.h, 0x7fff, v45.h, s17
	v_cndmask_b16 v188.h, 0x7fff, v145.h, s19
	v_cndmask_b16 v189.h, 0x7fff, v165.h, s21
	v_cndmask_b16 v191.h, 0x7fff, v173.h, s25
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v38.l, v55.l
	v_mov_b16_e32 v39.l, v55.l
	v_mov_b16_e32 v40.l, v55.l
	v_mov_b16_e32 v41.l, v55.l
	v_mov_b16_e32 v42.l, v55.l
	v_mov_b16_e32 v43.l, v55.l
	v_mov_b16_e32 v44.l, v55.l
	v_mov_b16_e32 v45.l, v55.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v145.h, 0x7fff, v56.h, vcc_lo
	v_cndmask_b16 v165.h, 0x7fff, v59.h, s2
	v_cndmask_b16 v169.h, 0x7fff, v61.h, s6
	v_cndmask_b16 v173.h, 0x7fff, v63.h, s8
	v_cndmask_b16 v135.h, 0x7fff, v135.h, s10
	v_cndmask_b16 v137.h, 0x7fff, v137.h, s12
	v_cndmask_b16 v139.h, 0x7fff, v139.h, s14
	v_cndmask_b16 v141.h, 0x7fff, v141.h, s16
	v_cndmask_b16 v195.h, 0x7fff, v199.h, s34
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v188.l, v55.l
	v_mov_b16_e64 v189.l, v55.l
	v_mov_b16_e64 v191.l, v55.l
	v_mov_b16_e64 v193.l, v55.l
	v_mov_b16_e64 v195.l, v55.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v143.h, 0x7fff, v143.h, s18
	v_cndmask_b16 v163.h, 0x7fff, v163.h, s20
	v_cndmask_b16 v55.h, 0x7fff, v198.h, s33
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v149, v149, v45
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v45.l, v141.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v147, v147, v44
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v44.l, v139.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v153, v153, v43
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v43.l, v137.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v151, v151, v42
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v42.l, v135.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v157, v157, v41
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v41.l, v173.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v155, v155, v40
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v40.l, v169.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v161, v161, v39
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v39.l, v165.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v159, v159, v38
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v38.l, v145.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v56, v121, v195 :: v_dual_sub_f32 v63, v123, v192
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v195.l, v55.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v59, v119, v194
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v194.l, v196.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v61, v125, v193
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v193.l, v177.h
	v_mov_b16_e64 v192.l, v175.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v119, v129, v191
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v191.l, v171.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v121, v127, v190
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v190.l, v167.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v117, v117, v189
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v189.l, v163.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v115, v115, v188
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v188.l, v143.h
	v_wmma_f32_16x16x16_bf16 v[9:16], v[38:45], v[105:112], v[9:16]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v135.l, v55.l
	v_mov_b16_e64 v139.l, v55.l
	v_mov_b32_e32 v217, v50
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s1, v95, v95
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[188:195], v[97:104], v[9:16]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v94, v94
	v_cmp_o_f32_e64 s7, v93, v93
	v_cmp_o_f32_e64 s9, v92, v92
	v_cmp_o_f32_e64 s11, v91, v91
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[38:45], v[64:71], v[9:16]
	ds_load_b128 v[38:41], v48
	ds_load_b128 v[42:45], v186
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s13, v90, v90
	v_cmp_o_f32_e64 s15, v89, v89
	v_cmp_o_f32_e64 s17, v88, v88
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v145.l, v55.l
	v_mov_b16_e64 v165.l, v55.l
	v_mov_b16_e64 v137.l, v55.l
	v_mov_b16_e64 v141.l, v55.l
	v_mov_b16_e64 v143.l, v55.l
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[208:211], off, off offset:452
	scratch_load_b128 v[212:215], off, off offset:468
	v_mov_b16_e64 v163.l, v55.l
	v_mov_b32_e32 v219, v46
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[178:185], v[38:45], v[1:8]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[188:195], v[38:45], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v38, v162, v73 :: v_dual_sub_f32 v39, v164, v74
	v_dual_sub_f32 v40, v174, v75 :: v_dual_sub_f32 v41, v176, v76
	v_dual_sub_f32 v42, v170, v77 :: v_dual_sub_f32 v43, v172, v78
	v_dual_sub_f32 v44, v166, v79 :: v_dual_sub_f32 v45, v168, v80
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v64, v38, 16, 1
	v_bfe_u32 v65, v39, 16, 1
	v_bfe_u32 v66, v40, 16, 1
	v_bfe_u32 v67, v41, 16, 1
	v_bfe_u32 v68, v42, 16, 1
	v_bfe_u32 v69, v43, 16, 1
	v_bfe_u32 v70, v44, 16, 1
	v_bfe_u32 v71, v45, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	v_add3_u32 v38, v38, v64, 0x7fff
	v_bfe_u32 v64, v95, 16, 1
	v_cmp_o_f32_e64 s2, v39, v39
	v_add3_u32 v39, v39, v65, 0x7fff
	v_bfe_u32 v65, v94, 16, 1
	v_cmp_o_f32_e64 s6, v40, v40
	v_add3_u32 v40, v40, v66, 0x7fff
	v_bfe_u32 v66, v93, 16, 1
	v_cmp_o_f32_e64 s8, v41, v41
	v_add3_u32 v41, v41, v67, 0x7fff
	v_bfe_u32 v67, v92, 16, 1
	v_cmp_o_f32_e64 s10, v42, v42
	v_add3_u32 v42, v42, v68, 0x7fff
	v_bfe_u32 v68, v91, 16, 1
	v_cmp_o_f32_e64 s12, v43, v43
	v_add3_u32 v43, v43, v69, 0x7fff
	v_bfe_u32 v69, v90, 16, 1
	v_cmp_o_f32_e64 s14, v44, v44
	v_add3_u32 v44, v44, v70, 0x7fff
	v_bfe_u32 v70, v89, 16, 1
	v_cmp_o_f32_e64 s16, v45, v45
	v_add3_u32 v45, v45, v71, 0x7fff
	v_bfe_u32 v71, v88, 16, 1
	v_add3_u32 v64, v95, v64, 0x7fff
	v_add3_u32 v65, v94, v65, 0x7fff
	v_add3_u32 v66, v93, v66, 0x7fff
	v_add3_u32 v67, v92, v67, 0x7fff
	v_add3_u32 v68, v91, v68, 0x7fff
	v_add3_u32 v69, v90, v69, 0x7fff
	v_add3_u32 v70, v89, v70, 0x7fff
	v_add3_u32 v71, v88, v71, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v38.h, vcc_lo
	v_cndmask_b16 v38.h, 0x7fff, v64.h, s1
	v_cndmask_b16 v39.l, 0x7fff, v39.h, s2
	v_cndmask_b16 v39.h, 0x7fff, v65.h, s3
	v_cndmask_b16 v40.l, 0x7fff, v40.h, s6
	v_cndmask_b16 v40.h, 0x7fff, v66.h, s7
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s8
	v_cndmask_b16 v41.h, 0x7fff, v67.h, s9
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s10
	v_cndmask_b16 v42.h, 0x7fff, v68.h, s11
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s12
	v_cndmask_b16 v43.h, 0x7fff, v69.h, s13
	v_cndmask_b16 v44.l, 0x7fff, v44.h, s14
	v_cndmask_b16 v44.h, 0x7fff, v70.h, s15
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s16
	v_cndmask_b16 v45.h, 0x7fff, v71.h, s17
	v_mov_b32_e32 v191, v36
	v_mov_b32_e32 v189, v51
	v_mov_b32_e32 v190, v35
	v_cmp_o_f32_e64 s1, v159, v159
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[38:45], v[105:112], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v38, v158, v145
	v_sub_f32_e32 v39, v160, v165
	v_sub_f32_e32 v40, v154, v169
	v_dual_sub_f32 v41, v156, v173 :: v_dual_sub_f32 v42, v150, v135
	v_dual_sub_f32 v43, v152, v137 :: v_dual_sub_f32 v44, v146, v139
	v_sub_f32_e32 v45, v148, v141
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v64, v38, 16, 1
	v_bfe_u32 v65, v39, 16, 1
	v_bfe_u32 v66, v40, 16, 1
	v_bfe_u32 v67, v41, 16, 1
	v_bfe_u32 v68, v42, 16, 1
	v_bfe_u32 v69, v43, 16, 1
	v_bfe_u32 v70, v44, 16, 1
	v_bfe_u32 v71, v45, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	v_add3_u32 v38, v38, v64, 0x7fff
	v_bfe_u32 v64, v159, 16, 1
	v_cmp_o_f32_e64 s2, v39, v39
	v_add3_u32 v39, v39, v65, 0x7fff
	v_bfe_u32 v65, v161, 16, 1
	v_cmp_o_f32_e64 s6, v40, v40
	v_add3_u32 v40, v40, v66, 0x7fff
	v_bfe_u32 v66, v155, 16, 1
	v_cmp_o_f32_e64 s8, v41, v41
	v_add3_u32 v41, v41, v67, 0x7fff
	v_bfe_u32 v67, v157, 16, 1
	v_cmp_o_f32_e64 s10, v42, v42
	v_add3_u32 v42, v42, v68, 0x7fff
	v_bfe_u32 v68, v151, 16, 1
	v_cmp_o_f32_e64 s12, v43, v43
	v_add3_u32 v43, v43, v69, 0x7fff
	v_bfe_u32 v69, v153, 16, 1
	v_cmp_o_f32_e64 s14, v44, v44
	v_add3_u32 v44, v44, v70, 0x7fff
	v_bfe_u32 v70, v147, 16, 1
	v_cmp_o_f32_e64 s16, v45, v45
	v_add3_u32 v45, v45, v71, 0x7fff
	v_bfe_u32 v71, v149, 16, 1
	v_add3_u32 v64, v159, v64, 0x7fff
	v_cmp_o_f32_e64 s3, v161, v161
	v_add3_u32 v65, v161, v65, 0x7fff
	v_cmp_o_f32_e64 s7, v155, v155
	v_add3_u32 v66, v155, v66, 0x7fff
	v_cmp_o_f32_e64 s9, v157, v157
	v_add3_u32 v67, v157, v67, 0x7fff
	v_cmp_o_f32_e64 s11, v151, v151
	v_add3_u32 v68, v151, v68, 0x7fff
	v_cmp_o_f32_e64 s13, v153, v153
	v_add3_u32 v69, v153, v69, 0x7fff
	v_cmp_o_f32_e64 s15, v147, v147
	v_add3_u32 v70, v147, v70, 0x7fff
	v_cmp_o_f32_e64 s17, v149, v149
	v_add3_u32 v71, v149, v71, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v38.h, vcc_lo
	v_cndmask_b16 v38.h, 0x7fff, v64.h, s1
	v_cndmask_b16 v39.l, 0x7fff, v39.h, s2
	v_cndmask_b16 v39.h, 0x7fff, v65.h, s3
	v_cndmask_b16 v40.l, 0x7fff, v40.h, s6
	v_cndmask_b16 v40.h, 0x7fff, v66.h, s7
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s8
	v_cndmask_b16 v41.h, 0x7fff, v67.h, s9
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s10
	v_cndmask_b16 v42.h, 0x7fff, v68.h, s11
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s12
	v_cndmask_b16 v43.h, 0x7fff, v69.h, s13
	v_cndmask_b16 v44.l, 0x7fff, v44.h, s14
	v_cndmask_b16 v44.h, 0x7fff, v70.h, s15
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s16
	v_cndmask_b16 v45.h, 0x7fff, v71.h, s17
	v_cmp_o_f32_e64 s11, v62, v62
	v_cmp_o_f32_e64 s13, v60, v60
	v_cmp_o_f32_e64 s15, v58, v58
	v_cmp_o_f32_e64 s1, v133, v133
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[38:45], v[105:112], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v39, v144, v82 :: v_dual_sub_f32 v42, v134, v85
	v_dual_sub_f32 v43, v136, v86 :: v_dual_sub_f32 v44, v130, v87
	v_sub_f32_e32 v38, v142, v81
	v_sub_f32_e32 v40, v138, v83
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v68, v42, 16, 1
	v_cmp_o_f32_e64 s10, v42, v42
	v_cmp_o_f32_e64 s12, v43, v43
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v41, v140, v84
	v_sub_f32_e32 v45, v132, v72
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v42, v42, v68, 0x7fff
	v_bfe_u32 v68, v62, 16, 1
	v_cmp_o_f32_e64 s14, v44, v44
	v_bfe_u32 v64, v38, 16, 1
	v_bfe_u32 v65, v39, 16, 1
	v_bfe_u32 v66, v40, 16, 1
	v_add3_u32 v62, v62, v68, 0x7fff
	v_bfe_u32 v68, v43, 16, 1
	v_bfe_u32 v67, v41, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	v_add3_u32 v38, v38, v64, 0x7fff
	v_bfe_u32 v64, v133, 16, 1
	v_add3_u32 v43, v43, v68, 0x7fff
	v_bfe_u32 v68, v60, 16, 1
	v_cmp_o_f32_e64 s2, v39, v39
	v_add3_u32 v39, v39, v65, 0x7fff
	v_bfe_u32 v65, v131, 16, 1
	v_cmp_o_f32_e64 s6, v40, v40
	v_add3_u32 v60, v60, v68, 0x7fff
	v_bfe_u32 v68, v44, 16, 1
	v_add3_u32 v40, v40, v66, 0x7fff
	v_bfe_u32 v66, v113, 16, 1
	v_cmp_o_f32_e64 s8, v41, v41
	v_add3_u32 v41, v41, v67, 0x7fff
	v_add3_u32 v44, v44, v68, 0x7fff
	v_bfe_u32 v68, v58, 16, 1
	v_bfe_u32 v67, v96, 16, 1
	v_cmp_o_f32_e64 s16, v45, v45
	v_add3_u32 v64, v133, v64, 0x7fff
	v_cmp_o_f32_e64 s3, v131, v131
	v_add3_u32 v58, v58, v68, 0x7fff
	v_bfe_u32 v68, v45, 16, 1
	v_add3_u32 v65, v131, v65, 0x7fff
	v_cmp_o_f32_e64 s7, v113, v113
	v_add3_u32 v66, v113, v66, 0x7fff
	v_cmp_o_f32_e64 s9, v96, v96
	v_add3_u32 v45, v45, v68, 0x7fff
	v_bfe_u32 v68, v57, 16, 1
	v_add3_u32 v67, v96, v67, 0x7fff
	v_cmp_o_f32_e64 s17, v57, v57
	v_cndmask_b16 v38.l, 0x7fff, v38.h, vcc_lo
	v_cndmask_b16 v38.h, 0x7fff, v64.h, s1
	v_add3_u32 v57, v57, v68, 0x7fff
	v_cndmask_b16 v39.l, 0x7fff, v39.h, s2
	v_cndmask_b16 v39.h, 0x7fff, v65.h, s3
	v_cndmask_b16 v40.l, 0x7fff, v40.h, s6
	v_cndmask_b16 v40.h, 0x7fff, v66.h, s7
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s8
	v_cndmask_b16 v41.h, 0x7fff, v67.h, s9
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s10
	v_cndmask_b16 v42.h, 0x7fff, v62.h, s11
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s12
	v_cndmask_b16 v43.h, 0x7fff, v60.h, s13
	v_cndmask_b16 v44.l, 0x7fff, v44.h, s14
	v_cndmask_b16 v44.h, 0x7fff, v58.h, s15
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s16
	v_cndmask_b16 v45.h, 0x7fff, v57.h, s17
	v_cmp_o_f32_e64 s11, v63, v63
	v_mov_b32_e32 v36, v52
	v_cmp_o_f32_e64 s13, v61, v61
	v_cmp_o_f32_e64 s15, v59, v59
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[38:45], v[97:104], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v42, v122, v175 :: v_dual_sub_f32 v43, v124, v177
	v_dual_sub_f32 v44, v118, v196 :: v_dual_sub_f32 v41, v128, v171
	v_sub_f32_e32 v45, v120, v55
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v62, v42, 16, 1
	v_cmp_o_f32_e64 s10, v42, v42
	v_cmp_o_f32_e64 s12, v43, v43
	v_cmp_o_f32_e64 s14, v44, v44
	v_bfe_u32 v60, v41, 16, 1
	v_add3_u32 v42, v42, v62, 0x7fff
	v_bfe_u32 v62, v63, 16, 1
	v_cmp_o_f32_e64 s8, v41, v41
	v_cmp_o_f32_e64 s16, v45, v45
	v_add3_u32 v41, v41, v60, 0x7fff
	v_bfe_u32 v60, v119, 16, 1
	v_add3_u32 v62, v63, v62, 0x7fff
	v_bfe_u32 v63, v43, 16, 1
	v_dual_mov_b32 v35, v53 :: v_dual_mov_b32 v188, v187
	v_dual_mov_b32 v51, v54 :: v_dual_mov_b32 v96, v200
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v43, v43, v63, 0x7fff
	v_bfe_u32 v63, v61, 16, 1
	s_clause 0x9                            ; 48-byte Folded Reload
	scratch_load_b32 v53, off, off offset:496
	scratch_load_b32 v141, off, off offset:296
	scratch_load_b32 v37, off, off offset:304
	scratch_load_b32 v152, off, off offset:288
	scratch_load_b32 v52, off, off offset:492
	scratch_load_b32 v54, off, off offset:488
	scratch_load_b32 v50, off, off offset:484
	scratch_load_b32 v162, off, off offset:340
	scratch_load_b64 v[145:146], off, off
	scratch_load_b64 v[66:67], off, off offset:8
	v_add3_u32 v61, v61, v63, 0x7fff
	v_bfe_u32 v63, v44, 16, 1
	s_clause 0x6                            ; 52-byte Folded Reload
	scratch_load_b128 v[169:172], off, off offset:356
	scratch_load_b128 v[173:176], off, off offset:372
	scratch_load_b32 v122, off, off offset:256
	scratch_load_b32 v166, off, off offset:516
	scratch_load_b32 v168, off, off offset:348
	scratch_load_b32 v64, off, off offset:504
	scratch_load_b32 v65, off, off offset:508
	v_add3_u32 v44, v44, v63, 0x7fff
	v_bfe_u32 v63, v59, 16, 1
	s_clause 0x9                            ; 40-byte Folded Reload
	scratch_load_b32 v160, off, off offset:352
	scratch_load_b32 v187, off, off offset:336
	scratch_load_b32 v154, off, off offset:332
	scratch_load_b32 v150, off, off offset:320
	scratch_load_b32 v158, off, off offset:312
	scratch_load_b32 v161, off, off offset:324
	scratch_load_b32 v159, off, off offset:316
	scratch_load_b32 v157, off, off offset:308
	scratch_load_b32 v164, off, off offset:344
	scratch_load_b32 v156, off, off offset:328
	v_add3_u32 v59, v59, v63, 0x7fff
	v_bfe_u32 v63, v45, 16, 1
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v155, off, off offset:300
	scratch_load_b32 v151, off, off offset:284
	scratch_load_b32 v153, off, off offset:292
	scratch_load_b32 v142, off, off offset:280
	scratch_load_b32 v144, off, off offset:276
	scratch_load_b32 v140, off, off offset:272
	scratch_load_b32 v130, off, off offset:268
	scratch_load_b32 v131, off, off offset:264
	v_add3_u32 v45, v45, v63, 0x7fff
	v_bfe_u32 v63, v56, 16, 1
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[200:203], off, off offset:420
	scratch_load_b128 v[204:207], off, off offset:436
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v38, v114, v143
	s_clause 0x2                            ; 36-byte Folded Reload
	scratch_load_b32 v143, off, off offset:260
	scratch_load_b128 v[192:195], off, off offset:388
	scratch_load_b128 v[196:199], off, off offset:404
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s9, v119, v119
	v_add3_u32 v60, v119, v60, 0x7fff
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v119, off, off offset:252
	scratch_load_b32 v67, off, off offset:512
	v_cmp_o_f32_e64 s17, v56, v56
	v_add3_u32 v56, v56, v63, 0x7fff
	scratch_load_b32 v63, off, off offset:500 ; 4-byte Folded Reload
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v39, v116, v163
	v_sub_f32_e32 v40, v126, v167
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v55, v38, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v38, v38
	v_cmp_o_f32_e64 s1, v115, v115
	v_bfe_u32 v57, v39, 16, 1
	v_bfe_u32 v58, v40, 16, 1
	v_add3_u32 v38, v38, v55, 0x7fff
	v_bfe_u32 v55, v115, 16, 1
	v_cmp_o_f32_e64 s2, v39, v39
	v_add3_u32 v39, v39, v57, 0x7fff
	v_bfe_u32 v57, v117, 16, 1
	v_cmp_o_f32_e64 s6, v40, v40
	v_add3_u32 v40, v40, v58, 0x7fff
	v_bfe_u32 v58, v121, 16, 1
	v_add3_u32 v55, v115, v55, 0x7fff
	v_cmp_o_f32_e64 s3, v117, v117
	v_add3_u32 v57, v117, v57, 0x7fff
	v_cmp_o_f32_e64 s7, v121, v121
	v_add3_u32 v58, v121, v58, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v38.h, vcc_lo
	v_cndmask_b16 v38.h, 0x7fff, v55.h, s1
	v_cndmask_b16 v39.l, 0x7fff, v39.h, s2
	v_cndmask_b16 v39.h, 0x7fff, v57.h, s3
	v_cndmask_b16 v40.l, 0x7fff, v40.h, s6
	v_cndmask_b16 v40.h, 0x7fff, v58.h, s7
	v_cndmask_b16 v41.l, 0x7fff, v41.h, s8
	v_cndmask_b16 v41.h, 0x7fff, v60.h, s9
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s10
	v_cndmask_b16 v42.h, 0x7fff, v62.h, s11
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s12
	v_cndmask_b16 v43.h, 0x7fff, v61.h, s13
	v_cndmask_b16 v44.l, 0x7fff, v44.h, s14
	v_cndmask_b16 v44.h, 0x7fff, v59.h, s15
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s16
	v_cndmask_b16 v45.h, 0x7fff, v56.h, s17
	v_mov_b32_e32 v167, v34
	.loc	1 607 13 is_stmt 1              ; attention_backward.py:607:13
	s_add_i32 s1, s76, 32
	s_cmpk_lt_u32 s76, 0x7e0
	s_mov_b32 s76, s1
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[38:45], v[97:104], v[9:16]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %Flow
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	s_clause 0x13                           ; 80-byte Folded Reload
	scratch_load_b32 v116, off, off offset:248
	scratch_load_b32 v117, off, off offset:236
	scratch_load_b32 v118, off, off offset:172
	scratch_load_b32 v120, off, off offset:176
	scratch_load_b32 v121, off, off offset:240
	scratch_load_b32 v123, off, off offset:244
	scratch_load_b32 v124, off, off offset:228
	scratch_load_b32 v125, off, off offset:232
	scratch_load_b32 v126, off, off offset:220
	scratch_load_b32 v127, off, off offset:224
	scratch_load_b32 v128, off, off offset:212
	scratch_load_b32 v129, off, off offset:216
	scratch_load_b32 v132, off, off offset:204
	scratch_load_b32 v133, off, off offset:208
	scratch_load_b32 v134, off, off offset:196
	scratch_load_b32 v135, off, off offset:200
	scratch_load_b32 v136, off, off offset:188
	scratch_load_b32 v137, off, off offset:192
	scratch_load_b32 v138, off, off offset:180
	scratch_load_b32 v139, off, off offset:184
	v_dual_mov_b32 v147, v49 :: v_dual_mov_b32 v148, v48
	s_clause 0xe                            ; 156-byte Folded Reload
	scratch_load_b32 v86, off, off offset:168
	scratch_load_b32 v34, off, off offset:132
	scratch_load_b128 v[38:41], off, off offset:136
	scratch_load_b128 v[42:45], off, off offset:152
	scratch_load_b128 v[55:58], off, off offset:68
	scratch_load_b128 v[59:62], off, off offset:84
	scratch_load_b128 v[68:71], off, off offset:100
	scratch_load_b128 v[72:75], off, off offset:116
	scratch_load_b128 v[87:90], off, off offset:32
	scratch_load_b128 v[91:94], off, off offset:48
	scratch_load_b32 v46, off, off offset:64
	scratch_load_b32 v47, off, off offset:24
	scratch_load_b32 v48, off, off offset:20
	scratch_load_b32 v49, off, off offset:16
	scratch_load_b32 v76, off, off offset:28
	s_branch .LBB0_1
.LBB0_6:
	.loc	1 550 20 is_stmt 1              ; attention_backward.py:550:20
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v64, off, off offset:520
	scratch_load_b32 v33, off, off offset:524
	scratch_load_b32 v34, off, off offset:528
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
	v_or_b32_e32 v0, s71, v64
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
	v_or_b32_e32 v18, s68, v64
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
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 536
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
		.amdhsa_next_free_sgpr 77
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 77
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 536
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 19436
; TotalNumSgprs: 79
; NumVgprs: 256
; ScratchSize: 536
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 79
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 536
    .sgpr_count:     79
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xint4_none_causal_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 133
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
