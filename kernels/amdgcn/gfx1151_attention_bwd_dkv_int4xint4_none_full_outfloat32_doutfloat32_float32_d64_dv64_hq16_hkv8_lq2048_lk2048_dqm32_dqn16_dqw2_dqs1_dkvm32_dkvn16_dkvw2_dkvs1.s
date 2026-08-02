	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	.loc	1 514 33 prologue_end           ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v2, 2, v0
	v_dual_mov_b32 v41, 0 :: v_dual_and_b32 v48, 7, v0
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_lshlrev_b32_e32 v45, 3, v0
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s38, s2, 4
	.loc	1 521 24                        ; attention_backward.py:521:24
	s_lshl_b32 s5, s3, 11
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v4, s38, v2
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_add_i32 s39, s5, s38
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_and_b32_e32 v1, 24, v45
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_or_b32_e32 v3, s39, v2
	s_mov_b32 s67, 0x31027000
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	s_mov_b32 s66, 0x7ffffffe
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_u32 v86, v0, 4, 1
	s_load_b128 s[8:11], s[0:1], 0x20
	.loc	1 541 32                        ; attention_backward.py:541:32
	s_ashr_i32 s6, s38, 1
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_lshlrev_b32_e32 v6, 3, v48
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_bfe_i32 s2, s2, 0x1001b
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[2:3], null, s57, v3, v[1:2]
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_cmp_gt_i32_e64 s4, s57, v1
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_and_b32 s65, s43, 0xffff
	s_mov_b32 s64, s42
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v5, s38, v86
	s_load_b64 s[60:61], s[0:1], 0x58
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_dual_cndmask_b32 v1, 0x80000000, v2 :: v_dual_and_b32 v46, 48, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v2, 3, v0
	.loc	1 543 26                        ; attention_backward.py:543:26
	s_lshl_b32 s4, s3, 10
	s_load_b256 s[48:55], s[0:1], 0x38
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshrrev_b32_e32 v47, 1, v46
	buffer_load_b64 v[3:4], v1, s[64:67], 0 offen
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_or_b32_e32 v1, s5, v86
	.loc	1 545 17                        ; attention_backward.py:545:17
	s_add_i32 s4, s6, s4
	.loc	1 541 32                        ; attention_backward.py:541:32
	v_or_b32_e32 v7, s6, v2
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_or_b32_e32 v8, s4, v2
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xad_u32 v9, v45, v47, 0
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_add_lshl_u32 v1, v1, s38, 1
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s6, 0x800, v5
	.loc	1 549 23                        ; attention_backward.py:549:23
	v_cmp_gt_i32_e32 vcc_lo, 0x400, v7
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_and_b32 s65, s9, 0xffff
	s_mov_b32 s64, s8
	v_or_b32_e32 v10, 4, v1
	v_or_b32_e32 v11, 8, v1
	v_or_b32_e32 v12, 12, v1
	v_or_b32_e32 v13, 16, v1
	v_cndmask_b32_e64 v5, 0x80000000, v1, s6
	v_or_b32_e32 v14, 20, v1
	v_or_b32_e32 v15, 24, v1
	v_or_b32_e32 v1, 28, v1
	.loc	1 570 20                        ; attention_backward.py:570:20
	s_lshr_b32 s0, s2, 28
	v_dual_mov_b32 v33, 0 :: v_dual_and_b32 v54, 16, v0
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v56, 32, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v1, 0x80000000, v1, s6
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v53, 56, v0
	v_bfe_i32 v55, v0, 4, 1
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v114, 1, v0
	v_bfe_i32 v57, v0, 5, 1
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshlrev_b32_e32 v58, 1, v0
	v_dual_mov_b32 v16, v41 :: v_dual_and_b32 v59, 1, v0
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_bfe_i32 v60, v0, 0, 1
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_lshlrev_b32_e32 v66, 4, v0
	v_bfe_i32 v67, v0, 3, 1
	v_and_b32_e32 v68, 14, v0
	v_lshlrev_b32_e32 v69, 6, v0
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_mov_b16_e32 v42.l, 0
	v_dual_mov_b32 v38, v41 :: v_dual_lshlrev_b32 v81, 4, v48
	v_dual_mov_b32 v27, v41 :: v_dual_and_b32 v60, 0x240, v60
	v_dual_mov_b32 v28, v41 :: v_dual_lshlrev_b32 v85, 7, v56
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v61.h, v42.l
	v_dual_mov_b32 v40, v41 :: v_dual_and_b32 v57, 0x820, v57
	v_dual_mov_b32 v26, v41 :: v_dual_lshlrev_b32 v83, 1, v56
	v_mov_b16_e32 v62.h, v42.l
	v_mov_b16_e32 v64.h, v42.l
	v_dual_mov_b32 v35, v41 :: v_dual_lshlrev_b32 v80, 5, v59
	v_mul_u32_u24_e32 v48, 0x90, v48
	.loc	1 620 52                        ; attention_backward.py:620:52
	v_lshlrev_b32_e32 v110, 4, v59
	v_and_or_b32 v57, 0x410, v67, v57
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v70.h, v42.l
	v_mov_b16_e32 v63.h, v42.l
	v_mov_b32_e32 v31, v41
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v78, 3, v46
	v_xor_b32_e32 v113, v57, v48
	v_lshrrev_b32_e32 v89, 1, v56
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_mov_b16_e32 v44.h, v42.l
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v72.l, v42.l
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s1, s56, v80
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v65.l, v42.l
	v_mov_b16_e32 v121.l, v42.l
	v_xor_b32_e32 v98, 0x1050, v113
	v_xor_b32_e32 v99, 0x1060, v113
	v_xor_b32_e32 v100, 0x1070, v113
	v_xor_b32_e32 v101, 0x1010, v113
	v_xor_b32_e32 v102, 0x1020, v113
	v_xor_b32_e32 v103, 0x1030, v113
	v_add_nc_u32_e32 v236, 0, v98
	v_add_nc_u32_e32 v235, 0, v99
	v_add_nc_u32_e32 v234, 0, v100
	v_add_nc_u32_e32 v160, 0, v101
	s_and_b32 s47, s47, 0xffff
	s_waitcnt lgkmcnt(0)
	s_and_b32 s51, s51, 0xffff
	s_and_b32 s53, s53, 0xffff
	s_mov_b32 s21, 0
	s_mov_b32 s22, -1
	s_mov_b32 s70, s66
	s_mov_b32 s71, s67
	s_mov_b32 s74, s66
	s_mov_b32 s75, s67
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s42, s66
	s_mov_b32 s43, s67
	s_mov_b32 s68, s50
	s_mov_b32 s72, s52
	s_mov_b32 s50, s66
	s_mov_b32 s69, s51
	s_mov_b32 s73, s53
	s_mov_b32 s51, s67
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_and_b32_e32 v55, 0x440, v55
	v_dual_mov_b32 v29, v41 :: v_dual_and_b32 v88, 15, v0
	v_mov_b32_e32 v37, v41
	v_dual_mov_b32 v32, v41 :: v_dual_lshlrev_b32 v77, 3, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshlrev_b32_e32 v74, 4, v88
	v_lshlrev_b32_e32 v84, 8, v88
	v_lshlrev_b32_e32 v87, 1, v88
	v_and_b32_e32 v76, 0x440, v67
	v_xor_b32_e32 v55, v55, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_or3_b32 v161, v84, v85, v74
	v_lshl_or_b32 v162, v46, 5, v74
	v_add3_u32 v243, 0, v56, v87
	v_add3_u32 v74, 0, v77, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v57, 0x50, v161
	v_xor_b32_e32 v48, 32, v161
	v_xor_b32_e32 v91, 0xf0, v161
	v_xor_b32_e32 v90, 0xe0, v161
	v_xor_b32_e32 v67, 0x90, v161
	v_add_nc_u32_e32 v251, 0, v90
	v_xor_b32_e32 v90, 16, v113
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v129, 0, v90
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt vmcnt(0)
	ds_store_b64 v9, v[3:4]
	v_mov_b32_e32 v9, 0
	.loc	1 545 17                        ; attention_backward.py:545:17
	v_mad_u64_u32 v[7:8], null, s58, v8, v[6:7]
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s4, s58, v6
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v8, 0x80000000, v10, s6
	v_cndmask_b32_e64 v10, 0x80000000, v11, s6
	v_cndmask_b32_e64 v11, 0x80000000, v12, s6
	v_cndmask_b32_e64 v12, 0x80000000, v13, s6
	.loc	1 549 22                        ; attention_backward.py:549:22
	s_and_b32 s5, vcc_lo, s4
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v13, 0x80000000, v14, s6
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_cndmask_b32_e64 v7, 0x80000000, v7, s5
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v14, 0x80000000, v15, s6
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_clause 0x7
	buffer_load_u16 v43, v5, s[64:67], 0 offen
	buffer_load_u16 v17, v8, s[64:67], 0 offen
	buffer_load_u16 v22, v10, s[64:67], 0 offen
	buffer_load_u16 v23, v11, s[64:67], 0 offen
	buffer_load_u16 v24, v12, s[64:67], 0 offen
	buffer_load_u16 v73, v13, s[64:67], 0 offen
	buffer_load_u16 v20, v14, s[64:67], 0 offen
	buffer_load_u16 v21, v1, s[64:67], 0 offen
	.loc	1 544 28                        ; attention_backward.py:544:28
	s_and_b32 s65, s45, 0xffff
	s_mov_b32 s64, s44
	v_mov_b32_e32 v13, v41
	buffer_load_b64 v[18:19], v7, s[64:67], 0 offen
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v7, s38, v2
	v_mov_b32_e32 v1, 0
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_and_b32 s65, s11, 0xffff
	s_mov_b32 s64, s10
	v_mov_b32_e32 v14, v41
	.loc	1 570 20                        ; attention_backward.py:570:20
	v_add_nc_u32_e32 v2, s0, v7
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s0, 0x800, v7
	v_mov_b32_e32 v15, v41
	v_mov_b32_e32 v3, v41
	v_mov_b32_e32 v4, v41
	.loc	1 570 20                        ; attention_backward.py:570:20
	v_ashrrev_i32_e32 v2, 4, v2
	.loc	1 572 22                        ; attention_backward.py:572:22
	s_and_b32 s0, s0, s4
	v_mov_b32_e32 v5, v41
	v_mov_b32_e32 v7, v41
	v_dual_mov_b32 v36, v41 :: v_dual_lshlrev_b32 v53, 1, v53
	.loc	1 568 17                        ; attention_backward.py:568:17
	v_lshl_add_u32 v0, s3, 7, v2
	v_dual_mov_b32 v39, v41 :: v_dual_lshlrev_b32 v82, 3, v68
	v_mov_b32_e32 v11, v41
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_and_b32_e32 v75, 0x370, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 568 17                        ; attention_backward.py:568:17
	v_mul_lo_u32 v0, v0, s58
	v_mov_b32_e32 v8, v41
	v_dual_mov_b32 v34, v41 :: v_dual_and_b32 v79, 24, v58
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_xad_u32 v75, v76, v75, 0
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v76, v66, v53, 0
	v_lshl_or_b32 v53, v88, 7, v81
	v_xor3_b32 v47, v82, v60, v47
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_add_lshl_u32 v0, v0, v6, 1
	v_mov_b32_e32 v6, v41
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshl_or_b32 v59, v88, 5, v79
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v79, v53, 16, 0
	v_xad_u32 v81, v53, 32, 0
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cmp_eq_u32_e64 s0, 0, v54
	v_lshlrev_b32_e32 v54, 2, v54
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v82, v53, 48, 0
	v_lshl_or_b32 v107, v68, 9, v47
	.loc	1 567 32                        ; attention_backward.py:567:32
	buffer_load_b128 v[49:52], v0, s[64:67], 0 offen
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_lshlrev_b32_e32 v0, 2, v88
	v_or3_b32 v66, v87, v54, v56
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v84, 0x50, v53, 0
	v_xad_u32 v85, 0x60, v53, 0
	v_xad_u32 v87, 0x70, v53, 0
	v_add3_u32 v239, 0, v83, v0
	v_xad_u32 v83, v53, 64, 0
	v_mov_b32_e32 v10, v41
	v_dual_mov_b32 v30, v41 :: v_dual_and_b32 v45, 48, v45
	v_xor_b32_e32 v47, 16, v161
	scratch_store_b32 off, v86, off offset:360 ; 4-byte Folded Spill
	v_and_or_b32 v58, v58, 30, v86
	v_lshlrev_b32_e32 v86, 1, v46
	v_lshl_or_b32 v71, v88, 6, v45
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xad_u32 v46, v59, 8, 0
	v_add_nc_u32_e32 v237, 0, v47
	v_xor_b32_e32 v47, 0x120, v107
	v_dual_mov_b32 v2, v41 :: v_dual_add_nc_u32 v69, 0, v69
	v_mov_b32_e32 v244, v66
	v_xad_u32 v54, v59, 16, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v116, 0, v47
	v_xad_u32 v55, v59, 24, 0
	s_lshl_b32 s44, s3, 12
	v_lshlrev_b32_e32 v159, 2, v58
	v_xor_b32_e32 v163, v162, v86
	v_xor_b32_e32 v56, 64, v161
	v_xor_b32_e32 v58, 0x60, v161
	v_xor_b32_e32 v60, 0x80, v161
	v_xor_b32_e32 v86, 0xb0, v161
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s3, s58, v0
	v_mad_u64_u32 v[130:131], null, s58, v78, v[0:1]
	v_xor_b32_e32 v0, 0x90, v107
	v_add_nc_u32_e32 v166, 0, v56
	v_add_nc_u32_e32 v168, 0, v58
	v_add_nc_u32_e32 v245, 0, v60
	v_xor_b32_e32 v56, 0xb0, v107
	v_xor_b32_e32 v58, 64, v107
	v_xor_b32_e32 v60, 0x160, v107
	v_xor_b32_e32 v78, 0x1f0, v107
	v_add_nc_u32_e32 v112, 0, v0
	v_xor_b32_e32 v92, 0x90, v66
	v_xor_b32_e32 v93, 0x120, v66
	v_xor_b32_e32 v94, 0x1b0, v66
	v_add_nc_u32_e32 v118, 0, v56
	v_add_nc_u32_e32 v122, 0, v60
	v_xor_b32_e32 v68, 0xa0, v161
	v_xor_b32_e32 v97, 48, v71
	v_xor_b32_e32 v96, 32, v71
	v_xor_b32_e32 v95, 16, v71
	v_add_nc_u32_e32 v210, 0, v94
	v_add_nc_u32_e32 v247, 0, v68
	v_xor_b32_e32 v94, 0x50, v113
	v_xor_b32_e32 v104, 0x110, v163
	v_add_nc_u32_e32 v252, 0, v95
	v_xor_b32_e32 v95, 0x60, v113
	v_xor_b32_e32 v105, 0x880, v163
	v_xor_b32_e32 v106, 0x990, v163
	v_mov_b32_e32 v12, v41
	.loc	1 641 25                        ; attention_backward.py:641:25
	s_mul_f32 s45, s59, 0x3fb8aa3b
	v_add_nc_u32_e32 v95, 0, v95
	s_mov_b32 s64, s46
	v_add_nc_u32_e32 v157, 0, v106
	s_mov_b32 s65, s47
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v66, 16, v43
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v169, 16, v23
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v238, 16, v24
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v255, 16, v73
	.loc	1 556 28                        ; attention_backward.py:556:28
	s_waitcnt vmcnt(1)
	v_lshrrev_b16 v42.h, 4, v18.l
	v_lshrrev_b16 v44.l, 4, v19.l
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v0.l, v18.h, 15
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v56, 15, v18
	v_bfe_u32 v60, v19, 8, 4
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v62.l, v42.h, 15
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_add_nc_u32_e32 v77, 0, v53
	v_xor_b32_e32 v53, 48, v161
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_and_b16 v70.l, v44.l, 15
	v_add_nc_u32_e32 v167, 0, v57
	v_xor_b32_e32 v57, 0x190, v107
	.loc	1 557 34                        ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v0.l
	v_add_nc_u32_e32 v242, 0, v53
	v_xor_b32_e32 v53, 32, v107
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v0.h, v18.l, 15
	v_add_nc_u32_e32 v120, 0, v57
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_bfe_u32 v57, v18, 20, 4
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v45, 0, v59
	v_add_nc_u32_e32 v109, 0, v53
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b32_e32 v53, 24, v19
	v_xor_b32_e32 v59, 0x70, v161
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v63.l, 4, v53.l
	v_add_nc_u32_e32 v164, 0, v48
	v_xor_b32_e32 v48, 0x1b0, v107
	v_add_nc_u32_e32 v158, 0, v59
	v_xor_b32_e32 v59, 0xd0, v107
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v42.h, v53.l, 15
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v108, 0, v48
	.loc	1 522 24                        ; attention_backward.py:522:24
	ds_load_b64 v[47:48], v45
	ds_load_b64 v[45:46], v46
	v_add_nc_u32_e32 v127, 0, v59
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v59, v19, 16, 4
	.loc	1 567 32                        ; attention_backward.py:567:32
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v72.h, v52.l
	v_add_nc_u32_e32 v248, 0, v86
	v_xor_b32_e32 v86, 0xf0, v107
	v_mov_b16_e32 v65.h, v50.l
	v_add_nc_u32_e32 v254, 0, v91
	v_xor_b32_e32 v91, 32, v113
	v_add_nc_u32_e32 v111, 0, v58
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v58, v19, 24, 4
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_mov_b16_e32 v121.h, v51.l
	v_add_nc_u32_e32 v117, 0, v86
	v_and_b32_e32 v43, 0xffff0000, v51
	v_add_nc_u32_e32 v123, 0, v78
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt lgkmcnt(1)
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[47:48], off offset:132
	scratch_store_b32 off, v89, off offset:356
	scratch_store_b32 off, v69, off offset:176
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[45:46], off offset:140 ; 8-byte Folded Spill
	ds_load_b64 v[45:46], v54
	scratch_store_b32 off, v71, off offset:344 ; 4-byte Folded Spill
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_or_b32_e32 v69, 16, v80
	v_xor_b32_e32 v80, 0x60, v107
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v54, v18, 16, 4
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_alignbit_b32 v48, v19, v18, 24
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v78, 15, v19
	v_add_nc_u32_e32 v124, 0, v91
	v_add_nc_u32_e32 v115, 0, v80
	.loc	1 556 26                        ; attention_backward.py:556:26
	v_bfe_u32 v80, v19, 20, 4
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v86, -16, v54
	v_xor_b32_e32 v89, 0xd0, v161
	v_or_b32_e32 v53, -16, v58
	v_add_nc_u32_e32 v68, 0, v92
	v_xor_b32_e32 v92, 48, v113
	v_or_b32_e32 v90, -16, v78
	v_add_nc_u32_e32 v250, 0, v89
	v_xor_b32_e32 v89, 0x1d0, v107
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_and_b32_e32 v48, 15, v48
	v_add_nc_u32_e32 v126, 0, v92
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[45:46], off offset:148 ; 8-byte Folded Spill
	ds_load_b64 v[45:46], v55
	scratch_store_b32 off, v88, off offset:352 ; 4-byte Folded Spill
	v_xor_b32_e32 v88, 0xc0, v161
	.loc	1 555 25                        ; attention_backward.py:555:25
	v_bfe_u32 v55, v18, 8, 4
	v_add_nc_u32_e32 v119, 0, v89
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v89, -16, v59
	v_or_b32_e32 v92, -16, v60
	v_add_nc_u32_e32 v249, 0, v88
	v_xor_b32_e32 v88, 0x140, v107
	v_or_b32_e32 v91, -16, v55
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s4, s56, v69
	v_add_nc_u32_e32 v71, 0, v105
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v125, 0, v88
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v88, -16, v56
	.loc	1 575 27                        ; attention_backward.py:575:27
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[45:46], off offset:156 ; 8-byte Folded Spill
	.loc	1 544 28                        ; attention_backward.py:544:28
	v_lshrrev_b32_e32 v45, 8, v18
	v_lshrrev_b64 v[46:47], 24, v[18:19]
	v_lshrrev_b32_e32 v47, 8, v19
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v18.h, v19.l, 15
	v_and_b16 v18.l, v19.h, 15
	v_and_b16 v19.l, v45.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v19.h, 4, v45.l
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v44.l, v47.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v45.l, 4, v47.l
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v47, v54, v86, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v19.l
	.loc	1 556 28 is_stmt 1              ; attention_backward.py:556:28
	v_and_b16 v61.l, v19.h, 15
	.loc	1 554 72                        ; attention_backward.py:554:72
	v_and_b16 v45.h, v46.l, 15
	.loc	1 556 28                        ; attention_backward.py:556:28
	v_lshrrev_b16 v46.l, 4, v46.l
	v_and_b16 v64.l, v45.l, 15
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v54, v55, v91, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v0.h
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v47, v47
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v0, v56, v88, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v42.h
	.loc	1 567 32 is_stmt 1              ; attention_backward.py:567:32
	v_mov_b16_e32 v42.h, v49.l
	v_add_nc_u32_e32 v88, 0, v104
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v19, v58, v53, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v18.l
	.loc	1 557 50                        ; attention_backward.py:557:50
	v_or_b32_e32 v53, -16, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v56, v19
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v55, v59, v89, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v44.l
	.loc	1 556 28 is_stmt 1              ; attention_backward.py:556:28
	v_and_b16 v44.l, v46.l, 15
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v46, v54
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v19, 0, v61, vcc_lo
	v_cndmask_b32_e32 v59, 0, v64, vcc_lo
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v58, v60, v92, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v18.h
	.loc	1 554 28 is_stmt 1              ; attention_backward.py:554:28
	v_cndmask_b32_e32 v60, 0, v70, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v55, v55
	.loc	1 620 52                        ; attention_backward.py:620:52
	v_cmp_gt_i32_e64 s5, s57, v110
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v54, v58
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v18, v78, v90, s2
	.loc	1 557 34 is_stmt 0              ; attention_backward.py:557:34
	v_cmp_lt_u16_e64 s2, 7, v45.h
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v45, v0
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_cndmask_b32_e32 v0, 0, v44, vcc_lo
	v_cndmask_b32_e32 v44, 0, v62, vcc_lo
	v_cndmask_b32_e32 v58, 0, v80, vcc_lo
	.loc	1 557 25                        ; attention_backward.py:557:25
	v_cndmask_b32_e64 v48, v48, v53, s2
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v53, v18
	.loc	1 554 28                        ; attention_backward.py:554:28
	v_dual_cndmask_b32 v18, 0, v57 :: v_dual_cndmask_b32 v57, 0, v63
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v61, -16, v0
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v0
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v63, -16, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b32_e32 v62, -16, v18
	v_or_b32_e32 v64, -16, v44
	v_or_b32_e32 v70, -16, v57
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v0, v0, v61, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v18
	.loc	1 558 52                        ; attention_backward.py:558:52
	v_or_b32_e32 v78, -16, v58
	v_or_b32_e32 v80, -16, v59
	v_or_b32_e32 v86, -16, v60
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v48, v48
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v18, v18, v62, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v19
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v19, v19, v63, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v44
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v44, v44, v64, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v57
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v61, v57, v70, vcc_lo
	.loc	1 558 35                        ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v57, v44
	v_cvt_f32_i32_e32 v64, v61
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v62, v58, v78, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v59
	v_add_nc_u32_e32 v181, 0, v97
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v58, v19
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_and_b32_e32 v19, 0xffff0000, v50
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v63, v62
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v70, v59, v80, vcc_lo
	.loc	1 558 35 is_stmt 0              ; attention_backward.py:558:35
	v_cmp_lt_u32_e32 vcc_lo, 7, v60
	v_add_nc_u32_e32 v253, 0, v96
	.loc	1 575 27 is_stmt 1              ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v59, v18
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_and_b32_e32 v18, 0xffff0000, v49
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v62, v70
	.loc	1 558 26                        ; attention_backward.py:558:26
	v_cndmask_b32_e32 v78, v60, v86, vcc_lo
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_cvt_f32_i32_e32 v60, v0
	ds_store_b128 v75, v[45:48]
	ds_store_b128 v75, v[57:60] offset:128
	v_cvt_f32_i32_e32 v61, v78
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[44:47], v74
	ds_load_b128 v[57:60], v74 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v75, v[53:56]
	ds_store_b128 v75, v[61:64] offset:128
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[53:56], v74
	ds_load_b128 v[61:64], v74 offset:512
	.loc	1 567 32                        ; attention_backward.py:567:32
	v_and_b32_e32 v48, 0xffff0000, v52
	v_add_nc_u32_e32 v246, 0, v67
	v_add_nc_u32_e32 v240, 0, v93
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xor_b32_e32 v93, 64, v113
	v_xor_b32_e32 v96, 0x70, v113
	v_xor_b32_e32 v97, 0x1040, v113
	v_add_nc_u32_e32 v67, 0, v94
	v_add_nc_u32_e32 v70, 0, v102
	.loc	1 575 27                        ; attention_backward.py:575:27
	v_dual_mul_f32 v44, v44, v42 :: v_dual_add_nc_u32 v93, 0, v93
	v_dual_mul_f32 v45, v45, v18 :: v_dual_mul_f32 v46, v46, v65
	v_dual_mul_f32 v47, v47, v19 :: v_dual_mul_f32 v42, v57, v42
	v_dual_mul_f32 v18, v58, v18 :: v_dual_mul_f32 v19, v60, v19
	v_dual_mul_f32 v49, v53, v121 :: v_dual_mul_f32 v50, v54, v43
	v_mul_f32_e32 v51, v55, v72
	v_dual_mul_f32 v52, v56, v48 :: v_dual_mul_f32 v53, v59, v65
	v_dual_mul_f32 v54, v61, v121 :: v_dual_mul_f32 v43, v62, v43
	v_mul_f32_e32 v55, v63, v72
	v_mul_f32_e32 v48, v64, v48
	.loc	1 575 26 is_stmt 0              ; attention_backward.py:575:26
	v_bfe_u32 v56, v44, 16, 1
	v_bfe_u32 v57, v45, 16, 1
	v_bfe_u32 v58, v46, 16, 1
	v_bfe_u32 v59, v47, 16, 1
	v_bfe_u32 v60, v49, 16, 1
	v_bfe_u32 v61, v50, 16, 1
	v_bfe_u32 v62, v51, 16, 1
	v_bfe_u32 v63, v52, 16, 1
	v_bfe_u32 v64, v42, 16, 1
	v_bfe_u32 v65, v18, 16, 1
	v_bfe_u32 v0, v53, 16, 1
	v_bfe_u32 v72, v19, 16, 1
	v_bfe_u32 v74, v54, 16, 1
	v_bfe_u32 v75, v43, 16, 1
	v_bfe_u32 v78, v55, 16, 1
	v_bfe_u32 v80, v48, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	v_cmp_o_f32_e64 s2, v45, v45
	v_cmp_o_f32_e64 s7, v46, v46
	v_cmp_o_f32_e64 s8, v47, v47
	v_cmp_o_f32_e64 s9, v49, v49
	v_cmp_o_f32_e64 s10, v50, v50
	v_cmp_o_f32_e64 s11, v51, v51
	v_cmp_o_f32_e64 s12, v52, v52
	v_add3_u32 v44, v44, v56, 0x7fff
	v_add3_u32 v45, v45, v57, 0x7fff
	v_add3_u32 v46, v46, v58, 0x7fff
	v_add3_u32 v47, v47, v59, 0x7fff
	v_add3_u32 v49, v49, v60, 0x7fff
	v_add3_u32 v50, v50, v61, 0x7fff
	v_add3_u32 v51, v51, v62, 0x7fff
	v_add3_u32 v52, v52, v63, 0x7fff
	v_cmp_o_f32_e64 s13, v42, v42
	v_cmp_o_f32_e64 s14, v18, v18
	v_cmp_o_f32_e64 s15, v53, v53
	v_cmp_o_f32_e64 s16, v19, v19
	v_cmp_o_f32_e64 s17, v54, v54
	v_cmp_o_f32_e64 s18, v43, v43
	v_cmp_o_f32_e64 s19, v55, v55
	v_cmp_o_f32_e64 s20, v48, v48
	v_add3_u32 v56, v42, v64, 0x7fff
	v_add3_u32 v18, v18, v65, 0x7fff
	v_add3_u32 v53, v53, v0, 0x7fff
	v_add3_u32 v19, v19, v72, 0x7fff
	v_add3_u32 v54, v54, v74, 0x7fff
	v_add3_u32 v57, v43, v75, 0x7fff
	v_add3_u32 v55, v55, v78, 0x7fff
	v_add3_u32 v58, v48, v80, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v44.h, vcc_lo
	v_cndmask_b16 v42.h, 0x7fff, v45.h, s2
	v_cndmask_b16 v43.l, 0x7fff, v46.h, s7
	v_cndmask_b16 v43.h, 0x7fff, v47.h, s8
	v_cndmask_b16 v44.l, 0x7fff, v49.h, s9
	v_cndmask_b16 v44.h, 0x7fff, v50.h, s10
	v_cndmask_b16 v45.l, 0x7fff, v51.h, s11
	v_cndmask_b16 v45.h, 0x7fff, v52.h, s12
	v_cndmask_b16 v46.l, 0x7fff, v56.h, s13
	v_cndmask_b16 v46.h, 0x7fff, v18.h, s14
	v_cndmask_b16 v47.l, 0x7fff, v53.h, s15
	v_cndmask_b16 v47.h, 0x7fff, v19.h, s16
	v_cndmask_b16 v48.l, 0x7fff, v54.h, s17
	v_cndmask_b16 v48.h, 0x7fff, v57.h, s18
	v_cndmask_b16 v49.l, 0x7fff, v55.h, s19
	v_cndmask_b16 v49.h, 0x7fff, v58.h, s20
	.loc	1 717 21 is_stmt 1              ; attention_backward.py:717:21
	ds_store_b128 v76, v[42:45]
	ds_store_b128 v76, v[46:49] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[42:45], v77
	ds_load_b128 v[46:49], v79
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[42:45], off offset:188 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[46:49], off offset:204 ; 16-byte Folded Spill
	ds_load_b128 v[42:45], v81
	ds_load_b128 v[46:49], v82
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[42:45], off offset:220 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[46:49], off offset:236 ; 16-byte Folded Spill
	ds_load_b128 v[42:45], v83
	ds_load_b128 v[46:49], v84
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[42:45], off offset:252 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[46:49], off offset:268 ; 16-byte Folded Spill
	ds_load_b128 v[42:45], v85
	ds_load_b128 v[46:49], v87
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_lshlrev_b32_e32 v0, 16, v20
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[42:45], off offset:284 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_clause 0x1                            ; 20-byte Folded Spill
	scratch_store_b128 off, v[46:49], off offset:300
	scratch_store_b32 off, v0, off offset:332
	v_lshlrev_b32_e32 v0, 16, v21
	v_mad_u64_u32 v[44:45], null, s58, 24, v[130:131]
	v_lshlrev_b32_e32 v87, 16, v22
	v_mad_u64_u32 v[22:23], null, s58, 9, v[130:131]
	v_mad_u64_u32 v[42:43], null, s58, 17, v[130:131]
	v_mad_u64_u32 v[45:46], null, s58, 25, v[130:131]
	v_add_nc_u32_e32 v69, 0, v96
	v_add_nc_u32_e32 v241, 0, v97
	v_add_nc_u32_e32 v86, 0, v103
	v_lshlrev_b32_e32 v72, 16, v17
	scratch_store_b32 off, v0, off offset:336 ; 4-byte Folded Spill
	v_xor_b32_e32 v0, 4, v159
	s_clause 0x1f                           ; 132-byte Folded Spill
	scratch_store_b64 off, v[110:111], off offset:44
	scratch_store_b32 off, v111, off offset:52
	scratch_store_b32 off, v112, off offset:56
	scratch_store_b32 off, v113, off offset:60
	scratch_store_b32 off, v114, off offset:64
	scratch_store_b32 off, v116, off offset:68
	scratch_store_b32 off, v108, off offset:72
	scratch_store_b32 off, v118, off offset:76
	scratch_store_b32 off, v120, off offset:80
	scratch_store_b32 off, v123, off offset:84
	scratch_store_b32 off, v125, off offset:88
	scratch_store_b32 off, v127, off offset:92
	scratch_store_b32 off, v93, off offset:96
	scratch_store_b32 off, v107, off offset:100
	scratch_store_b32 off, v95, off offset:104
	scratch_store_b32 off, v109, off offset:108
	scratch_store_b32 off, v115, off offset:112
	scratch_store_b32 off, v122, off offset:116
	scratch_store_b32 off, v119, off offset:120
	scratch_store_b32 off, v117, off offset:124
	scratch_store_b32 off, v124, off offset:128
	scratch_store_b32 off, v126, off offset:164
	scratch_store_b32 off, v129, off offset:168
	scratch_store_b32 off, v70, off offset:172
	scratch_store_b32 off, v163, off offset:180
	scratch_store_b32 off, v158, off offset:184
	scratch_store_b32 off, v168, off offset:316
	scratch_store_b32 off, v169, off offset:320
	scratch_store_b32 off, v167, off offset:324
	scratch_store_b32 off, v255, off offset:328
	scratch_store_b32 off, v67, off offset:348
	scratch_store_b32 off, v0, off offset:340
.LBB0_1:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_2 Depth 2
	.loc	1 520 26                        ; attention_backward.py:520:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:352
	scratch_load_b32 v18, off, off offset:356
	.loc	1 613 25                        ; attention_backward.py:613:25
	s_or_b32 s47, s44, s21
	s_xor_b32 s46, s22, -1
	s_mov_b32 s52, 0
	.loc	1 520 26                        ; attention_backward.py:520:26
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, v18, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v0, s47, v17
	scratch_store_b32 off, v0, off offset:40 ; 4-byte Folded Spill
.LBB0_2:                                ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 624 25                        ; attention_backward.py:624:25
	scratch_load_b32 v0, off, off offset:40 ; 4-byte Folded Reload
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(3)
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[45:46], off offset:32
	scratch_store_b64 off, v[44:45], off offset:24
	s_waitcnt vmcnt(2)
	scratch_store_b64 off, v[42:43], off offset:8 ; 8-byte Folded Spill
	s_waitcnt vmcnt(1)
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[22:23], off
	scratch_store_b64 off, v[130:131], off offset:16
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x1                            ; 16-byte Folded Reload
	scratch_load_b64 v[23:24], off, off
	scratch_load_b64 v[42:43], off, off offset:8
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_or_b32 s2, s52, s47
	v_or_b32_e32 v20, s47, v114
	v_or_b32_e32 v17, s2, v114
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s2, s2, s58
	v_add_nc_u32_e32 v21, s58, v130
	v_lshl_add_u32 v22, s58, 3, v130
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v20, s52, v20, 1
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_mad_u64_u32 v[17:18], null, v17, s57, v[110:111]
	s_waitcnt vmcnt(1)
	v_lshl_add_u32 v24, s58, 4, v130
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v43, s2, v44, 2
	.loc	1 623 39                        ; attention_backward.py:623:39
	buffer_load_u16 v74, v20, s[64:67], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v20, s2, v130, 2
	v_add_lshl_u32 v21, s2, v21, 2
	v_add_lshl_u32 v22, s2, v22, 2
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v18, 0x80000000, v17, s5
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v24, s2, v24, 2
	v_cndmask_b32_e64 v51, 0x80000000, v43, s3
	v_add_lshl_u32 v43, s2, v45, 2
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	v_cndmask_b32_e64 v21, 0x80000000, v21, s3
	v_cndmask_b32_e64 v22, 0x80000000, v22, s3
	v_cndmask_b32_e64 v24, 0x80000000, v24, s3
	v_cndmask_b32_e64 v60, 0x80000000, v43, s3
	.loc	1 651 43                        ; attention_backward.py:651:43
	.loc	1 624 25                        ; attention_backward.py:624:25
	v_or_b32_e32 v17, s52, v0
	v_mov_b32_e32 v0, v210
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v23, s2, v23, 2
	v_add_lshl_u32 v42, s2, v42, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v19, 1, v17
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_lshlrev_b32_e32 v17, 2, v17
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v23, 0x80000000, v23, s3
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v42, 0x80000000, v42, s3
	.loc	1 623 39                        ; attention_backward.py:623:39
	buffer_load_u16 v75, v19, s[64:67], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v73, v17, s[68:71], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v76, v17, s[72:75], 0 offen
	.loc	1 615 36                        ; attention_backward.py:615:36
	buffer_load_b128 v[153:156], v18, s[40:43], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x7
	buffer_load_b128 v[17:20], v20, s[48:51], 0 offen
	buffer_load_b128 v[43:46], v21, s[48:51], 0 offen
	buffer_load_b128 v[47:50], v22, s[48:51], 0 offen
	buffer_load_b128 v[52:55], v23, s[48:51], 0 offen
	buffer_load_b128 v[56:59], v24, s[48:51], 0 offen
	buffer_load_b128 v[61:64], v42, s[48:51], 0 offen
	buffer_load_b128 v[77:80], v51, s[48:51], 0 offen
	buffer_load_b128 v[82:85], v60, s[48:51], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v24, 0, v107
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v165, v249
	s_waitcnt vmcnt(7)
	v_dual_mov_b32 v42, v17 :: v_dual_mov_b32 v21, v18
	s_waitcnt vmcnt(6)
	v_mov_b32_e32 v22, v44
	ds_store_b64 v24, v[42:43]
	ds_store_b64 v112, v[21:22]
	v_dual_mov_b32 v21, v19 :: v_dual_mov_b32 v22, v45
	s_waitcnt vmcnt(5)
	v_mov_b32_e32 v51, v47
	s_waitcnt vmcnt(3)
	v_dual_mov_b32 v23, v53 :: v_dual_mov_b32 v60, v56
	s_waitcnt vmcnt(1)
	v_mov_b32_e32 v81, v77
	ds_store_b64 v116, v[21:22]
	v_dual_mov_b32 v21, v46 :: v_dual_mov_b32 v22, v48
	ds_store_b64 v108, v[20:21]
	ds_store_b64 v109, v[51:52]
	ds_store_b64 v118, v[22:23]
	v_dual_mov_b32 v21, v49 :: v_dual_mov_b32 v22, v54
	v_dual_mov_b32 v51, v55 :: v_dual_add_nc_u32 v42, 0x1400, v239
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v23, 0xc00, v239
	.loc	1 732 34                        ; attention_backward.py:732:34
	ds_store_b64 v24, v[21:22] offset:256
	v_dual_mov_b32 v21, v57 :: v_dual_mov_b32 v22, v62
	ds_store_b64 v120, v[50:51]
	ds_store_b64 v111, v[60:61]
	ds_store_b64 v127, v[21:22]
	v_dual_mov_b32 v21, v58 :: v_dual_mov_b32 v22, v63
	v_mov_b32_e32 v60, v64
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v24, 0x1000, v239
	v_add_nc_u32_e32 v51, 0x1800, v239
	.loc	1 732 34                        ; attention_backward.py:732:34
	ds_store_b64 v122, v[21:22]
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v21, v78 :: v_dual_mov_b32 v22, v83
	ds_store_b64 v123, v[59:60]
	ds_store_b64 v115, v[81:82]
	ds_store_b64 v117, v[21:22]
	v_dual_mov_b32 v21, v79 :: v_dual_mov_b32 v22, v84
	v_dual_mov_b32 v81, v85 :: v_dual_add_nc_u32 v60, 0x1c00, v239
	ds_store_b64 v125, v[21:22]
	v_add_nc_u32_e32 v21, 0, v113
	ds_store_b64 v119, v[80:81]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[137:140], v21
	ds_load_b128 v[89:92], v21 offset:4096
	ds_load_b128 v[149:152], v129
	ds_load_b128 v[145:148], v124
	ds_load_b128 v[141:144], v126
	ds_load_b128 v[117:120], v93
	ds_load_b128 v[113:116], v67
	ds_load_b128 v[109:112], v95
	ds_load_b128 v[105:108], v69
	ds_load_b128 v[133:136], v241
	ds_load_b128 v[129:132], v236
	ds_load_b128 v[125:128], v235
	ds_load_b128 v[121:124], v234
	ds_load_b128 v[101:104], v160
	ds_load_b128 v[97:100], v70
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v21, 0, v162
	.loc	1 732 34                        ; attention_backward.py:732:34
	ds_load_b128 v[93:96], v86
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v21, v[17:20]
	ds_store_b128 v21, v[43:46] offset:256
	ds_store_b128 v21, v[47:50] offset:2048
	ds_store_b128 v21, v[52:55] offset:2304
	ds_store_b128 v21, v[56:59] offset:4096
	ds_store_b128 v21, v[61:64] offset:4352
	ds_store_b128 v21, v[77:80] offset:6144
	ds_store_b128 v21, v[82:85] offset:6400
	v_add_nc_u32_e32 v21, 0x400, v239
	v_add_nc_u32_e32 v22, 0x800, v239
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b32 v[224:225], v21 offset1:32
	ds_load_2addr_b32 v[222:223], v21 offset0:64 offset1:96
	ds_load_2addr_b32 v[220:221], v21 offset0:128 offset1:160
	ds_load_2addr_b32 v[218:219], v21 offset0:192 offset1:224
	ds_load_2addr_b32 v[216:217], v22 offset1:32
	ds_load_2addr_b32 v[214:215], v22 offset0:64 offset1:96
	ds_load_2addr_b32 v[212:213], v22 offset0:128 offset1:160
	v_dual_mov_b32 v70, v69 :: v_dual_add_nc_u32 v21, 0, v163
	ds_load_2addr_b32 v[210:211], v22 offset0:192 offset1:224
	ds_load_2addr_b32 v[208:209], v23 offset1:32
	ds_load_2addr_b32 v[206:207], v23 offset0:64 offset1:96
	ds_load_2addr_b32 v[204:205], v23 offset0:128 offset1:160
	ds_load_2addr_b32 v[202:203], v23 offset0:192 offset1:224
	ds_load_2addr_b32 v[200:201], v24 offset1:32
	ds_load_2addr_b32 v[198:199], v24 offset0:64 offset1:96
	ds_load_2addr_b32 v[196:197], v24 offset0:128 offset1:160
	ds_load_2addr_b32 v[194:195], v24 offset0:192 offset1:224
	ds_load_2addr_b32 v[192:193], v42 offset1:32
	ds_load_2addr_b32 v[190:191], v42 offset0:64 offset1:96
	ds_load_2addr_b32 v[188:189], v42 offset0:128 offset1:160
	ds_load_2addr_b32 v[186:187], v42 offset0:192 offset1:224
	ds_load_2addr_b32 v[184:185], v51 offset1:32
	ds_load_2addr_b32 v[182:183], v51 offset0:64 offset1:96
	v_mov_b32_e32 v69, v181
	ds_load_2addr_b32 v[180:181], v51 offset0:128 offset1:160
	ds_load_2addr_b32 v[178:179], v51 offset0:192 offset1:224
	ds_load_2addr_b32 v[176:177], v60 offset1:32
	ds_load_2addr_b32 v[174:175], v60 offset0:64 offset1:96
	ds_load_2addr_b32 v[172:173], v60 offset0:128 offset1:160
	ds_load_2addr_b32 v[170:171], v60 offset0:192 offset1:224
	ds_load_2addr_b32 v[232:233], v239 offset1:32
	ds_load_2addr_b32 v[230:231], v239 offset0:64 offset1:96
	ds_load_2addr_b32 v[228:229], v239 offset0:128 offset1:160
	ds_load_2addr_b32 v[226:227], v239 offset0:192 offset1:224
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v21, v[17:20]
	ds_store_b128 v21, v[56:59] offset:4096
	ds_store_b128 v88, v[43:46]
	ds_store_b128 v88, v[61:64] offset:4096
	ds_store_b128 v71, v[47:50]
	ds_store_b128 v71, v[77:80] offset:4096
	ds_store_b128 v157, v[52:55]
	ds_store_b128 v157, v[82:85] offset:4096
	v_add_nc_u32_e32 v17, 0, v161
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v17
	ds_load_b128 v[21:24], v237
	v_cmp_o_f32_e64 s21, v201, v201
	v_cmp_o_f32_e64 s31, v181, v181
	v_cmp_o_f32_e64 s33, v179, v179
	v_cmp_o_f32_e64 s25, v193, v193
	v_cmp_o_f32_e64 s34, v177, v177
	v_cmp_o_f32_e64 s27, v189, v189
	v_cmp_o_f32_e64 s28, v187, v187
	v_cmp_o_f32_e64 s29, v185, v185
	v_cmp_o_f32_e64 s30, v183, v183
	v_cmp_o_f32_e64 s26, v191, v191
	v_cmp_o_f32_e64 s37, v171, v171
	v_cmp_o_f32_e64 s22, v199, v199
	v_cmp_o_f32_e64 s23, v197, v197
	v_cmp_o_f32_e64 s24, v195, v195
	v_cmp_o_f32_e64 s35, v175, v175
	v_cmp_o_f32_e64 s36, v173, v173
	v_mov_b32_e32 v67, v244
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v42, v17, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_cmp_o_f32_e64 s2, v18, v18
	v_cmp_o_f32_e64 s7, v19, v19
	v_cmp_o_f32_e64 s8, v20, v20
	v_add3_u32 v42, v17, v42, 0x7fff
	v_bfe_u32 v17, v18, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s9, v21, v21
	v_cmp_o_f32_e64 s10, v22, v22
	v_cmp_o_f32_e64 s11, v23, v23
	v_cmp_o_f32_e64 s12, v24, v24
	v_add3_u32 v43, v18, v17, 0x7fff
	v_bfe_u32 v17, v19, 16, 1
	v_cndmask_b16 v77.l, 0x7fff, v42.h, vcc_lo
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v42, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v77.h, 0x7fff, v43.h, s2
	v_add3_u32 v44, v19, v17, 0x7fff
	v_bfe_u32 v17, v20, 16, 1
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v43, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v78.l, 0x7fff, v44.h, s7
	v_add3_u32 v45, v20, v17, 0x7fff
	v_bfe_u32 v17, v21, 16, 1
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v44, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v78.h, 0x7fff, v45.h, s8
	v_add3_u32 v46, v21, v17, 0x7fff
	v_bfe_u32 v17, v22, 16, 1
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v45, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v79.l, 0x7fff, v46.h, s9
	v_add3_u32 v47, v22, v17, 0x7fff
	v_bfe_u32 v17, v23, 16, 1
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v46, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v79.h, 0x7fff, v47.h, s10
	v_add3_u32 v48, v23, v17, 0x7fff
	v_bfe_u32 v17, v24, 16, 1
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v47, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v80.l, 0x7fff, v48.h, s11
	v_add3_u32 v49, v24, v17, 0x7fff
	ds_load_b128 v[17:20], v164
	ds_load_b128 v[21:24], v242
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v48, v41
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v80.h, 0x7fff, v49.h, s12
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v50, v17, 16, 1
	v_cmp_o_f32_e64 s13, v17, v17
	v_cmp_o_f32_e64 s14, v18, v18
	v_cmp_o_f32_e64 s15, v19, v19
	v_cmp_o_f32_e64 s16, v20, v20
	v_add3_u32 v17, v17, v50, 0x7fff
	v_bfe_u32 v50, v18, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s17, v21, v21
	v_cmp_o_f32_e64 s18, v22, v22
	v_cmp_o_f32_e64 s19, v23, v23
	v_cmp_o_f32_e64 s20, v24, v24
	v_add3_u32 v18, v18, v50, 0x7fff
	v_bfe_u32 v50, v19, 16, 1
	v_cndmask_b16 v81.l, 0x7fff, v17.h, s13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v81.h, 0x7fff, v18.h, s14
	v_add3_u32 v19, v19, v50, 0x7fff
	v_bfe_u32 v50, v20, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v82.l, 0x7fff, v19.h, s15
	v_add3_u32 v20, v20, v50, 0x7fff
	v_bfe_u32 v50, v21, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v82.h, 0x7fff, v20.h, s16
	v_add3_u32 v21, v21, v50, 0x7fff
	v_bfe_u32 v50, v22, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.l, 0x7fff, v21.h, s17
	v_add3_u32 v22, v22, v50, 0x7fff
	v_bfe_u32 v50, v23, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.h, 0x7fff, v22.h, s18
	v_add3_u32 v23, v23, v50, 0x7fff
	v_bfe_u32 v50, v24, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v84.l, 0x7fff, v23.h, s19
	v_add3_u32 v24, v24, v50, 0x7fff
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[49:52], off, off offset:188
	scratch_load_b128 v[53:56], off, off offset:204
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v84.h, 0x7fff, v24.h, s20
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v17, v41 :: v_dual_mov_b32 v22, v46
	v_dual_mov_b32 v18, v42 :: v_dual_mov_b32 v19, v43
	v_mov_b32_e32 v24, v48
	v_dual_mov_b32 v20, v44 :: v_dual_mov_b32 v21, v45
	v_mov_b32_e32 v23, v47
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[49:56], v[77:84], v[17:24]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[49:52], v166
	ds_load_b128 v[53:56], v167
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v57, v49, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_cmp_o_f32_e64 s2, v50, v50
	v_cmp_o_f32_e64 s7, v51, v51
	v_cmp_o_f32_e64 s8, v52, v52
	v_add3_u32 v57, v49, v57, 0x7fff
	v_bfe_u32 v49, v50, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s9, v53, v53
	v_cmp_o_f32_e64 s10, v54, v54
	v_cmp_o_f32_e64 s11, v55, v55
	v_cmp_o_f32_e64 s12, v56, v56
	v_add3_u32 v58, v50, v49, 0x7fff
	v_bfe_u32 v49, v51, 16, 1
	v_cndmask_b16 v77.l, 0x7fff, v57.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v77.h, 0x7fff, v58.h, s2
	v_add3_u32 v59, v51, v49, 0x7fff
	v_bfe_u32 v49, v52, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v78.l, 0x7fff, v59.h, s7
	v_add3_u32 v60, v52, v49, 0x7fff
	v_bfe_u32 v49, v53, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v78.h, 0x7fff, v60.h, s8
	v_add3_u32 v61, v53, v49, 0x7fff
	v_bfe_u32 v49, v54, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v79.l, 0x7fff, v61.h, s9
	v_add3_u32 v62, v54, v49, 0x7fff
	v_bfe_u32 v49, v55, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v79.h, 0x7fff, v62.h, s10
	v_add3_u32 v63, v55, v49, 0x7fff
	v_bfe_u32 v49, v56, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v80.l, 0x7fff, v63.h, s11
	v_add3_u32 v64, v56, v49, 0x7fff
	ds_load_b128 v[49:52], v168
	ds_load_b128 v[53:56], v158
	v_mov_b32_e32 v168, v254
	v_mov_b32_e32 v158, v157
	v_cndmask_b16 v80.h, 0x7fff, v64.h, s12
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v65, v49, 16, 1
	v_cmp_o_f32_e64 s13, v49, v49
	v_cmp_o_f32_e64 s14, v50, v50
	v_cmp_o_f32_e64 s15, v51, v51
	v_cmp_o_f32_e64 s16, v52, v52
	v_add3_u32 v49, v49, v65, 0x7fff
	v_bfe_u32 v65, v50, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s17, v53, v53
	v_cmp_o_f32_e64 s18, v54, v54
	v_cmp_o_f32_e64 s19, v55, v55
	v_cmp_o_f32_e64 s20, v56, v56
	v_add3_u32 v50, v50, v65, 0x7fff
	v_bfe_u32 v65, v51, 16, 1
	v_cndmask_b16 v81.l, 0x7fff, v49.h, s13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v81.h, 0x7fff, v50.h, s14
	v_add3_u32 v51, v51, v65, 0x7fff
	v_bfe_u32 v65, v52, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v82.l, 0x7fff, v51.h, s15
	v_add3_u32 v52, v52, v65, 0x7fff
	v_bfe_u32 v65, v53, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v82.h, 0x7fff, v52.h, s16
	v_add3_u32 v53, v53, v65, 0x7fff
	v_bfe_u32 v65, v54, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.l, 0x7fff, v53.h, s17
	v_add3_u32 v54, v54, v65, 0x7fff
	v_bfe_u32 v65, v55, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.h, 0x7fff, v54.h, s18
	v_add3_u32 v55, v55, v65, 0x7fff
	v_bfe_u32 v65, v56, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v84.l, 0x7fff, v55.h, s19
	v_add3_u32 v56, v56, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v84.h, 0x7fff, v56.h, s20
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[49:52], off, off offset:220
	scratch_load_b128 v[53:56], off, off offset:236
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[49:56], v[77:84], v[17:24]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[49:52], v245
	ds_load_b128 v[53:56], v246
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v57, v49, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_cmp_o_f32_e64 s2, v50, v50
	v_cmp_o_f32_e64 s7, v51, v51
	v_cmp_o_f32_e64 s8, v52, v52
	v_add3_u32 v57, v49, v57, 0x7fff
	v_bfe_u32 v49, v50, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s9, v53, v53
	v_cmp_o_f32_e64 s10, v54, v54
	v_cmp_o_f32_e64 s11, v55, v55
	v_cmp_o_f32_e64 s12, v56, v56
	v_add3_u32 v58, v50, v49, 0x7fff
	v_bfe_u32 v49, v51, 16, 1
	v_cndmask_b16 v77.l, 0x7fff, v57.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v77.h, 0x7fff, v58.h, s2
	v_add3_u32 v59, v51, v49, 0x7fff
	v_bfe_u32 v49, v52, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v78.l, 0x7fff, v59.h, s7
	v_add3_u32 v60, v52, v49, 0x7fff
	v_bfe_u32 v49, v53, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v78.h, 0x7fff, v60.h, s8
	v_add3_u32 v61, v53, v49, 0x7fff
	v_bfe_u32 v49, v54, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v79.l, 0x7fff, v61.h, s9
	v_add3_u32 v62, v54, v49, 0x7fff
	v_bfe_u32 v49, v55, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v79.h, 0x7fff, v62.h, s10
	v_add3_u32 v63, v55, v49, 0x7fff
	v_bfe_u32 v49, v56, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v80.l, 0x7fff, v63.h, s11
	v_add3_u32 v64, v56, v49, 0x7fff
	ds_load_b128 v[49:52], v247
	ds_load_b128 v[53:56], v248
	v_cndmask_b16 v80.h, 0x7fff, v64.h, s12
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v65, v49, 16, 1
	v_cmp_o_f32_e64 s13, v49, v49
	v_cmp_o_f32_e64 s14, v50, v50
	v_cmp_o_f32_e64 s15, v51, v51
	v_cmp_o_f32_e64 s16, v52, v52
	v_add3_u32 v49, v49, v65, 0x7fff
	v_bfe_u32 v65, v50, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s17, v53, v53
	v_cmp_o_f32_e64 s18, v54, v54
	v_cmp_o_f32_e64 s19, v55, v55
	v_cmp_o_f32_e64 s20, v56, v56
	v_add3_u32 v50, v50, v65, 0x7fff
	v_bfe_u32 v65, v51, 16, 1
	v_cndmask_b16 v81.l, 0x7fff, v49.h, s13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v81.h, 0x7fff, v50.h, s14
	v_add3_u32 v51, v51, v65, 0x7fff
	v_bfe_u32 v65, v52, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v82.l, 0x7fff, v51.h, s15
	v_add3_u32 v52, v52, v65, 0x7fff
	v_bfe_u32 v65, v53, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v82.h, 0x7fff, v52.h, s16
	v_add3_u32 v53, v53, v65, 0x7fff
	v_bfe_u32 v65, v54, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.l, 0x7fff, v53.h, s17
	v_add3_u32 v54, v54, v65, 0x7fff
	v_bfe_u32 v65, v55, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.h, 0x7fff, v54.h, s18
	v_add3_u32 v55, v55, v65, 0x7fff
	v_bfe_u32 v65, v56, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v84.l, 0x7fff, v55.h, s19
	v_add3_u32 v56, v56, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v84.h, 0x7fff, v56.h, s20
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[49:52], off, off offset:252
	scratch_load_b128 v[53:56], off, off offset:268
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[49:56], v[77:84], v[17:24]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[49:52], v249
	ds_load_b128 v[53:56], v250
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v57, v49, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_cmp_o_f32_e64 s2, v50, v50
	v_cmp_o_f32_e64 s7, v51, v51
	v_cmp_o_f32_e64 s8, v52, v52
	v_add3_u32 v57, v49, v57, 0x7fff
	v_bfe_u32 v49, v50, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s9, v53, v53
	v_cmp_o_f32_e64 s10, v54, v54
	v_cmp_o_f32_e64 s11, v55, v55
	v_cmp_o_f32_e64 s12, v56, v56
	v_add3_u32 v58, v50, v49, 0x7fff
	v_bfe_u32 v49, v51, 16, 1
	v_cndmask_b16 v77.l, 0x7fff, v57.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v77.h, 0x7fff, v58.h, s2
	v_add3_u32 v59, v51, v49, 0x7fff
	v_bfe_u32 v49, v52, 16, 1
	.loc	1 630 33                        ; attention_backward.py:630:33
	scratch_load_b64 v[57:58], off, off offset:132 ; 8-byte Folded Reload
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v78.l, 0x7fff, v59.h, s7
	v_add3_u32 v60, v52, v49, 0x7fff
	v_bfe_u32 v49, v53, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v78.h, 0x7fff, v60.h, s8
	v_add3_u32 v61, v53, v49, 0x7fff
	v_bfe_u32 v49, v54, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v79.l, 0x7fff, v61.h, s9
	v_add3_u32 v62, v54, v49, 0x7fff
	v_bfe_u32 v49, v55, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v79.h, 0x7fff, v62.h, s10
	v_add3_u32 v63, v55, v49, 0x7fff
	v_bfe_u32 v49, v56, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v80.l, 0x7fff, v63.h, s11
	v_add3_u32 v64, v56, v49, 0x7fff
	ds_load_b128 v[49:52], v251
	ds_load_b128 v[53:56], v254
	v_mov_b32_e32 v254, v164
	v_mov_b32_e32 v164, v66
	v_cndmask_b16 v80.h, 0x7fff, v64.h, s12
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v65, v49, 16, 1
	v_cmp_o_f32_e64 s13, v49, v49
	v_cmp_o_f32_e64 s14, v50, v50
	v_cmp_o_f32_e64 s15, v51, v51
	v_cmp_o_f32_e64 s16, v52, v52
	v_add3_u32 v49, v49, v65, 0x7fff
	v_bfe_u32 v65, v50, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s17, v53, v53
	v_cmp_o_f32_e64 s18, v54, v54
	v_cmp_o_f32_e64 s19, v55, v55
	v_cmp_o_f32_e64 s20, v56, v56
	v_add3_u32 v50, v50, v65, 0x7fff
	v_bfe_u32 v65, v51, 16, 1
	v_cndmask_b16 v81.l, 0x7fff, v49.h, s13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v81.h, 0x7fff, v50.h, s14
	v_add3_u32 v51, v51, v65, 0x7fff
	v_bfe_u32 v65, v52, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v82.l, 0x7fff, v51.h, s15
	v_add3_u32 v52, v52, v65, 0x7fff
	v_bfe_u32 v65, v53, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v82.h, 0x7fff, v52.h, s16
	v_add3_u32 v53, v53, v65, 0x7fff
	v_bfe_u32 v65, v54, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.l, 0x7fff, v53.h, s17
	v_add3_u32 v54, v54, v65, 0x7fff
	v_bfe_u32 v65, v55, 16, 1
	v_cmp_o_f32_e64 s17, v184, v184
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v83.h, 0x7fff, v54.h, s18
	v_add3_u32 v55, v55, v65, 0x7fff
	v_bfe_u32 v65, v56, 16, 1
	v_cmp_o_f32_e64 s18, v180, v180
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v84.l, 0x7fff, v55.h, s19
	v_add3_u32 v56, v56, v65, 0x7fff
	v_cmp_o_f32_e64 s19, v176, v176
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v84.h, 0x7fff, v56.h, s20
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[49:52], off, off offset:284
	scratch_load_b128 v[53:56], off, off offset:300
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s20, v172, v172
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[49:56], v[77:84], v[17:24]
	scratch_load_b32 v49, off, off offset:340 ; 4-byte Folded Reload
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v82, v18, v76
	v_sub_f32_e32 v81, v19, v76
	v_sub_f32_e32 v80, v20, v76
	v_sub_f32_e32 v79, v21, v76
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_bpermute_b32 v18, v159, v153
	ds_bpermute_b32 v20, v159, v154
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v83, v17, v76
	v_sub_f32_e32 v78, v22, v76
	v_sub_f32_e32 v77, v23, v76
	v_sub_f32_e32 v76, v24, v76
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_bpermute_b32 v22, v159, v155
	ds_bpermute_b32 v24, v159, v156
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v19, v49, v153
	ds_bpermute_b32 v21, v49, v154
	ds_bpermute_b32 v23, v49, v155
	ds_bpermute_b32 v49, v49, v156
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v17, v19, v18, s0
	v_cndmask_b32_e64 v19, v18, v19, s0
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v18, v21, v20, s0
	v_cndmask_b32_e64 v20, v20, v21, s0
	s_waitcnt lgkmcnt(1)
	v_cndmask_b32_e64 v21, v23, v22, s0
	v_cndmask_b32_e64 v23, v22, v23, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v22, v49, v24, s0
	v_cndmask_b32_e64 v24, v24, v49, s0
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_wmma_i32_16x16x16_iu4 v[49:56], v[57:58], v[17:18], v[41:48] neg_lo:[1,1,0]
	scratch_load_b64 v[17:18], off, off offset:140 ; 8-byte Folded Reload
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v44, 15, v153
	v_bfe_u32 v46, v153, 16, 4
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b64 v[42:43], 24, v[153:154]
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v48, 15, v154
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v45, -16, v44
	v_or_b32_e32 v47, -16, v46
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v43, v42, 0, 8
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[17:18], v[21:22], v[49:56] neg_lo:[1,1,0]
	scratch_load_b64 v[17:18], off, off offset:148 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[17:18], v[19:20], v[49:56] neg_lo:[1,1,0]
	scratch_load_b64 v[17:18], off, off offset:156 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[17:18], v[23:24], v[49:56] neg_lo:[1,1,0]
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v17.l, v153.l, 15
	v_and_b16 v17.h, v42.l, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e32 v18.h, 0
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v18.l, 4, v153.l
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v20, v50
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v17.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v17.l, v153.h, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_bfe_u32 v50, v154, 16, 4
	.loc	1 644 25 is_stmt 1              ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v19, v49
	v_cvt_f32_i32_e32 v21, v51
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v49, -16, v48
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s2, 7, v17.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v17.l, v154.l, 15
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v51, -16, v50
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v44, v44, v45, vcc_lo
	.loc	1 644 25 is_stmt 1              ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v23, v53
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v45, v46, v47, s2
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s7, 7, v17.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v17.l, v154.h, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v46, 8, v153
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v47, v153, 8, 4
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v24, v54
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v48, v48, v49, s7
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s8, 7, v17.l
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v17.l, 4, v42.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v42, v153, 0, 8
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v53, -16, v47
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v54, v154, 24, 4
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v49, v50, v51, s8
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v50, 8, v154
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s9, 0, v42.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v42.l, v46.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_bfe_u32 v51, v154, 8, 4
	.loc	1 644 25 is_stmt 1              ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v84, v55
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v55, -16, v54
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v163, 16, v74
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v42.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v42.l, v50.l, 15
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v85, v56
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v56, v153, 20, 4
	.loc	1 649 36 is_stmt 0              ; attention_backward.py:649:36
	v_and_b16 v18.l, v18.l, 15
	.loc	1 650 33 is_stmt 1              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v47, v47, v53, vcc_lo
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v53, -16, v51
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v42.l
	.loc	1 651 60 is_stmt 1              ; attention_backward.py:651:60
	v_or_b32_e32 v57, -16, v56
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v22, v52
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v52, -16, v18
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v51, v51, v53, vcc_lo
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v53, 24, v154
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v49, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v42.l, v53.l, 15
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v42.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_alignbit_b32 v42, v154, v153, 24
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v54, v54, v55, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v42, 15, v42
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v17.h
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v17.h, 4, v46.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v55, -16, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v55, v42, v55, vcc_lo
	.loc	1 615 36 is_stmt 1              ; attention_backward.py:615:36
	v_mov_b16_e64 v42.l, v153.h
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v153, 0, v67
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v42, v42, 0, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v42.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e64 v42.l, v154.h
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v56, v56, v57, vcc_lo
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v42, v42, 0, 8
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v57, v154, 20, 4
	v_mov_b32_e32 v167, v237
	v_mov_b32_e32 v237, v161
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v42.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v42, v44
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v44, v18, v52, s9
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v58, -16, v57
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_mul_f32_e32 v42, v163, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v44, v44
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v57, v57, v58, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v52, 0, v42, s1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v44, v163, v44
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v42, v46, 0, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v18.l, v52.h
	v_cndmask_b32_e64 v44, 0, v44, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v42.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s2, v52, v52
	v_and_b32_e32 v58, 1, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s7, v44, v44
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v18.l, v17.h, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v42, v52, v58, 0x7fff
	v_mov_b16_e32 v52.h, v18.h
	v_mov_b16_e32 v52.l, v44.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v46, -16, v18
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v52, 1, v52
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v46, v18, v46, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v44, v44, v52, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v52, v56
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v56.h, v18.h
	v_cndmask_b16 v42.h, 0x7fff, v44.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v52, v163, v52
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v52, 0, v52, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v56.l, v52.h
	v_cmp_o_f32_e64 s8, v52, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v56, 1, v56
	v_add3_u32 v52, v52, v56, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v56, v57
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v57.h, v18.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v44.h, 0x7fff, v52.h, s8
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v56, v163, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v56, 0, v56, s1
	v_mov_b16_e32 v57.l, v56.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s9, v56, v56
	v_and_b32_e32 v57, 1, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v56, v56, v57, 0x7fff
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v57, 16, v75
	.loc	1 640 41                        ; attention_backward.py:640:41
	v_mul_f32_e32 v57, s45, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v20, v57, v20
	v_dual_mul_f32 v22, v57, v22 :: v_dual_mul_f32 v47, v163, v47
	v_dual_mul_f32 v24, v57, v24 :: v_dual_mul_f32 v45, v163, v45
	v_mul_f32_e32 v19, v57, v19
	v_mul_f32_e32 v58, v57, v84
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v47, 0, v47, s1
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v22, v22, v169, -v73
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v45, 0, v45, s1
	v_mov_b32_e32 v169, v242
	v_mov_b32_e32 v242, v162
	v_mov_b16_e32 v18.l, v47.h
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v21, v57, v21
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s2, v47, v47
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v19, v19, v66, -v73
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v52, 1, v18
	v_mov_b16_e32 v18.l, v45.h
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v23, v57, v23
	v_mul_f32_e32 v57, v57, v85
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v20, v20, v72, -v73
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v47, v47, v52, 0x7fff
	v_and_b32_e32 v52, 1, v18
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v18.l, v17.l, 15
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v17, off, off offset:332 ; 4-byte Folded Reload
	v_fma_f32 v21, v21, v87, -v73
	v_fma_f32 v24, v24, v255, -v73
	v_fma_f32 v23, v23, v238, -v73
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v49, v163, v49
	v_mov_b32_e32 v66, v87
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v49, 0, v49, s1
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v58, v58, v17, -v73
	scratch_load_b32 v17, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v57, v57, v17, -v73
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v17, v45, v52, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v17.l, v43.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v45, -16, v18
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b16 v43.l, 0x7fff, v47.h, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v44.l, 0x7fff, v17.h, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s7, 0, v17.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v17, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v52, v18, v45, s7
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v17, v163, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v47, 0, v17, s1
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v17.l, 4, v154.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v18.l, v47.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v47, v47
	v_and_b32_e32 v45, 1, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v18.l, v17.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v17, v46
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v46.h, v18.h
	v_add3_u32 v45, v47, v45, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v17, v163, v17
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v17, 0, v17, s1
	v_mov_b16_e32 v46.l, v17.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_and_b32_e32 v46, 1, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v17, v17, v46, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v46, v154, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v43.h, 0x7fff, v17.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v17.l, v46.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v46, -16, v18
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s7, 0, v17.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v17, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v55, v18, v46, s7
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v17, v163, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v47, 0, v17, s1
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v17.l, 4, v50.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v18.l, v47.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s15, v47, v47
	v_and_b32_e32 v46, 1, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v18.l, v17.l, 15
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v17, v19
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v46, v47, v46, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v47, v52
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v52, v155, 20, 4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s15
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s15, v192, v192
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v162, 0, v17, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v17, v162, v83
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v17, s59, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v19, v17, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_add3_u32 v17, v17, v19, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v19, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v154, 0, v19, s6
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v19, v154, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v19, s59, v19
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v20, v19, 16, 1
	v_cmp_o_f32_e64 s2, v19, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v59, v19, v20, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v19, v21
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v19, 0, v19, s6
	v_dual_mov_b32 v255, v166 :: v_dual_mov_b32 v166, v72
	v_dual_mov_b32 v72, v71 :: v_dual_mov_b32 v71, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v20, v19, v81
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v20, s59, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v21, v20, 16, 1
	v_cmp_o_f32_e64 s7, v20, v20
	v_add3_u32 v21, v20, v21, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v20, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v20, 0, v20, s6
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v22, v20, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v22, s59, v22
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v48, v22, 16, 1
	v_cmp_o_f32_e64 s8, v22, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v60, v22, v48, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v22, v23
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v161, 0, v22, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v22, v161, v79
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v22, s59, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v23, v22, 16, 1
	v_cmp_o_f32_e64 s10, v22, v22
	v_add3_u32 v61, v22, v23, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v22, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v22, 0, v22, s6
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v23, v22, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v23, s59, v23
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v24, v23, 16, 1
	v_cmp_o_f32_e64 s11, v23, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v62, v23, v24, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v23, v58
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v23, 0, v23, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v24, v23, v77
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v24, s59, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v48, v24, 16, 1
	v_cmp_o_f32_e64 s12, v24, v24
	v_add3_u32 v58, v24, v48, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v24, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v24, 0, v24, s6
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v48, v24, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v48, s59, v48
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v57, v48, 16, 1
	v_cmp_o_f32_e64 s13, v48, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v57, v48, v57, 0x7fff
	.loc	1 615 36 is_stmt 1              ; attention_backward.py:615:36
	v_bfe_i32 v48, v50, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v48.h, v18.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v47, v163, v47
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v50, -16, v18
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_mov_b16_e32 v17.l, v48.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b32_e64 v47, 0, v47, s1
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s14, 0, v17.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v17.l, 0x7fff, v17.h, vcc_lo
	v_cndmask_b16 v17.h, 0x7fff, v61.h, s10
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v48.l, v47.h
	v_cmp_o_f32_e64 s16, v47, v47
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v61, v156, 24, 4
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v153, v17
	ds_store_b16_d16_hi v153, v17 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v17.l, 0x7fff, v59.h, s2
	v_cndmask_b16 v17.h, 0x7fff, v62.h, s11
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v48, 1, v48
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v59, v156, 20, 4
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s11, v24, v24
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v68, v17
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v17.l, 0x7fff, v21.h, s7
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v68, v17 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v17.h, 0x7fff, v58.h, s12
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v21, v18, v50, s14
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v50.h, v18.h
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v240, v17
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v17.l, 0x7fff, v60.h, s8
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v240, v17 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v17.h, 0x7fff, v57.h, s13
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v0, v17
	ds_store_b16_d16_hi v0, v17 offset:512
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v17, v51
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v47, v47, v48, 0x7fff
	v_cmp_o_f32_e64 s7, v49, v49
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v17, v163, v17
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v45.h, 0x7fff, v47.h, s16
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_alignbit_b32 v51, v156, v155, 24
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v48.h, 0x7fff, v56.h, s9
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v57, 15, v156
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v56, 24, v156
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v58, v156, 8, 4
	v_bfe_u32 v60, v156, 16, 4
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v63, -16, v57
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v18.l, v17.h
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s10, v23, v23
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v64, -16, v60
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s12, v204, v204
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v47, 1, v18
	v_mov_b16_e32 v18.l, v49.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s13, v200, v200
	v_cmp_o_f32_e64 s14, v196, v196
	v_cmp_o_f32_e64 s16, v188, v188
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v17, v17, v47, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v47, v55
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e64 v55.l, v156.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v47, v163, v47
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v47, 0, v47, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v50.l, v47.h
	v_cmp_o_f32_e64 s2, v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v47, v47, v50, 0x7fff
	v_and_b32_e32 v50, 1, v18
	v_cndmask_b16 v47.l, 0x7fff, v17.h, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v18.l, 4, v53.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v46.h, 0x7fff, v47.h, s2
	v_add3_u32 v49, v49, v50, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v50, v53, 0, 8
	v_bfe_i32 v53, v156, 0, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v48.l, 0x7fff, v49.h, s7
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v17.l, v50.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v50, -16, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s8, 0, v17.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v17, v21
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v21.h, v18.h
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v50, v18, v50, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v17, v163, v17
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v17, 0, v17, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v21.l, v17.h
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v17, v17, v21, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v21, v54
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v54, 8, v156
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v47.h, 0x7fff, v17.h, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v21, v163, v21
	v_cvt_f32_i32_e32 v17, v50
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e64 v50.l, v155.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v21, 0, v21, s1
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v17, v163, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v18.l, v21.h
	v_cmp_o_f32_e64 s2, v21, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v17, 0, v17, s1
	v_and_b32_e32 v49, 1, v18
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v18.l, 4, v155.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_add3_u32 v21, v21, v49, 0x7fff
	v_mov_b16_e32 v21.l, v17.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v18.l, v18.l, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v49.l, 0x7fff, v21.h, s2
	v_mov_b16_e32 v21.h, v18.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v17, v17, v21, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v49.h, 0x7fff, v17.h, vcc_lo
	scratch_load_b32 v17, off, off offset:344 ; 4-byte Folded Reload
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v21, 0, v17
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v17.l, v155.l, 15
	v_and_b16 v17.h, v155.h, 15
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_load_b128 v[81:84], v21
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v17.l
	v_mov_b32_e32 v157, v159
	v_mov_b32_e32 v159, v86
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_load_b128 v[85:88], v252
	ds_load_b128 v[73:76], v253
	ds_load_b128 v[77:80], v69
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v244, off, off offset:176 ; 4-byte Folded Reload
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s2, 7, v17.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt vmcnt(0)
	ds_store_b128 v244, v[42:45]
	ds_store_b128 v244, v[46:49] offset:16
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v46, 15, v155
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v43, 8, v155
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v42.l, v156.l, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b64 v[44:45], 24, v[155:156]
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v47, v155, 16, 4
	v_bfe_u32 v49, v155, 8, 4
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v45, -16, v46
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s7, 7, v42.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v42.l, v43.l, 15
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v62, -16, v47
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v65, v44, 0, 8
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v17.l, 4, v44.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v17.h, v44.l, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v44, v46, v45, vcc_lo
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v46, -16, v49
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v42.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v42.l, v54.l, 15
	v_and_b16 v42.h, v156.h, 15
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v45, v47, v62, s2
	v_cndmask_b32_e64 v47, v57, v63, s7
	v_cndmask_b32_e32 v46, v49, v46, vcc_lo
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v57, -16, v58
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v42.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v42.l, v56.l, 15
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s8, 7, v42.h
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v48, v155, 0, 8
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v43.h, 4, v156.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v57, v58, v57, vcc_lo
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v58, -16, v61
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v42.l
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_and_b32_e32 v42, 15, v51
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v49, v60, v64, s8
	v_cndmask_b32_e32 v58, v61, v58, vcc_lo
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v51, -16, v42
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v17.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v17.h, 4, v43.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v45, v163, v45
	v_mul_f32_e32 v46, v163, v46
	v_mov_b32_e32 v156, v246
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v51, v42, v51, vcc_lo
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v42, v50, 0, 8
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v50, -16, v52
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v46, 0, v46, s4
	v_cndmask_b32_e64 v45, 0, v45, s4
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v49, v49
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v42.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v42, v55, 0, 8
	v_mov_b32_e32 v155, v245
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_dual_mul_f32 v49, v163, v49 :: v_dual_cndmask_b32 v50, v52, v50
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v52, -16, v59
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v42.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b32_e64 v49, 0, v49, s4
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v42, v59, v52, vcc_lo
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v52.h, v18.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v50, v163, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_f32_i32_e32 v42, v42
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v50, 0, v50, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v42, v163, v42
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v52.l, v50.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	v_cndmask_b32_e64 v42, 0, v42, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v52, 1, v52
	v_cmp_o_f32_e64 s2, v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v50, v50, v52, 0x7fff
	v_mov_b16_e32 v52.h, v18.h
	v_mov_b16_e32 v52.l, v42.h
	v_and_b32_e32 v52, 1, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v52, v42, v52, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v42.l, v48.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v48, -16, v18
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s7, 0, v42.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v42, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v48, v18, v48, s7
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v42, v163, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v42, 0, v42, s4
	v_mov_b16_e32 v18.l, v42.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s7, v42, v42
	v_and_b32_e32 v44, 1, v18
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v18.l, v17.h, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v42, v42, v44, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v44, v43, 0, 8
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v55, -16, v18
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v44.h, 0x7fff, v50.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v42.l, v44.l
	v_cmp_gt_i16_e64 s8, 0, v42.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v50, v18, v55, s8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v18.l, v46.h
	v_cmp_o_f32_e64 s8, v45, v45
	v_and_b32_e32 v55, 1, v18
	v_mov_b16_e32 v18.l, v45.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v46, v46, v55, 0x7fff
	v_and_b32_e32 v55, 1, v18
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v18.l, v17.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v17, v48
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v48.h, v18.h
	v_cndmask_b16 v43.l, 0x7fff, v46.h, vcc_lo
	v_add3_u32 v45, v45, v55, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v17, v163, v17
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v44.l, 0x7fff, v45.h, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v17, 0, v17, s4
	v_mov_b16_e32 v48.l, v17.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s7, v17, v17
	v_and_b32_e32 v48, 1, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v17, v17, v48, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v17.l, v65.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v48, -16, v18
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b16 v42.h, 0x7fff, v17.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s9, 0, v17.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v17, v51
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v46, v18, v48, s9
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v48, v50
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v50.h, v18.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s9, v20, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v46, v46
	v_mul_f32_e32 v48, v163, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v46, v163, v46
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v48, 0, v48, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v46, 0, v46, s4
	v_mov_b16_e32 v50.l, v48.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v17, v163, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v17, 0, v17, s4
	v_add3_u32 v48, v48, v50, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v18.l, v17.h
	v_cmp_o_f32_e64 s7, v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v45, 1, v18
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v18.l, v43.h, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v43.h, 0x7fff, v48.h, vcc_lo
	v_add3_u32 v17, v17, v45, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v17.l, v53.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v50, -16, v18
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b16 v45.l, 0x7fff, v17.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s8, 0, v17.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v17, v47
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v50, v18, v50, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v17, v163, v17
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s8, v46, v46
	v_cndmask_b32_e64 v47, 0, v17, s4
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v17.l, 4, v54.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v18.l, v47.h
	v_cmp_o_f32_e64 s7, v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v48, 1, v18
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v18.l, v17.l, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v17, v54, 0, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v51, -16, v18
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v17.l
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_add3_u32 v17, v47, v48, 0x7fff
	v_mov_b16_e32 v47.h, v18.h
	v_mov_b16_e32 v47.l, v46.h
	v_cndmask_b16 v48.h, 0x7fff, v52.h, s2
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v51, v18, v51, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v47, 1, v47
	v_add3_u32 v46, v46, v47, 0x7fff
	v_cndmask_b16 v46.l, 0x7fff, v17.h, s7
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v17, v57
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s7, v49, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v45.h, 0x7fff, v46.h, s8
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v17, v163, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v17, 0, v17, s4
	v_mov_b16_e32 v18.l, v17.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s2, v17, v17
	v_and_b32_e32 v47, 1, v18
	v_mov_b16_e32 v18.l, v49.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v17, v17, v47, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v47, v50
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v50.h, v18.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v47, v163, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v47, 0, v47, s4
	v_mov_b16_e32 v50.l, v47.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v47, v47, v50, 0x7fff
	v_and_b32_e32 v50, 1, v18
	v_cndmask_b16 v47.l, 0x7fff, v17.h, s2
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v18.l, 4, v56.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v46.h, 0x7fff, v47.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v49, v49, v50, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v50, v56, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v48.l, 0x7fff, v49.h, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v17.l, v50.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v50, -16, v18
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_mov_b16_e32 v49.h, v18.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s7, v154, v154
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s8, 0, v17.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v17, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v50, v18, v50, s8
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v17, v163, v17
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s8, v22, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v50, v50
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v17, 0, v17, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v50, v163, v50
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v49.l, v17.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v17, v17, v49, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v49, v58
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v47.h, 0x7fff, v17.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v49, v163, v49
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v17, 0, v50, s4
	v_mov_b16_e32 v50.h, v18.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v163.l, v18.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v49, 0, v49, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v50.l, v17.h
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_mov_b16_e32 v18.l, v49.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v50, 1, v50
	v_cmp_o_f32_e64 s2, v49, v49
	v_and_b32_e32 v51, 1, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v17, v17, v50, 0x7fff
	v_add3_u32 v49, v49, v51, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v49.l, 0x7fff, v49.h, s2
	v_cndmask_b16 v49.h, 0x7fff, v17.h, vcc_lo
	ds_store_b128 v244, v[42:45] offset:32
	ds_store_b128 v244, v[46:49] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v43, v243 offset:256
	ds_load_u16_d16 v42, v243
	ds_load_u16_d16 v44, v243 offset:512
	ds_load_u16_d16 v45, v243 offset:768
	ds_load_u16_d16 v46, v243 offset:1024
	ds_load_u16_d16 v48, v243 offset:1536
	ds_load_u16_d16 v47, v243 offset:1280
	ds_load_u16_d16 v54, v243 offset:1088
	ds_load_u16_d16 v53, v243 offset:832
	ds_load_u16_d16 v49, v243 offset:1792
	ds_load_u16_d16 v58, v243 offset:2048
	ds_load_u16_d16 v59, v243 offset:2304
	ds_load_u16_d16 v60, v243 offset:2560
	ds_load_u16_d16 v62, v243 offset:3072
	ds_load_u16_d16 v246, v243 offset:2624
	ds_load_u16_d16 v245, v243 offset:2368
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v54, v243 offset:1216
	ds_load_u16_d16_hi v44, v243 offset:640
	ds_load_u16_d16_hi v45, v243 offset:896
	ds_load_u16_d16_hi v46, v243 offset:1152
	ds_load_u16_d16 v55, v243 offset:1344
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v246, v243 offset:2752
	ds_load_u16_d16_hi v48, v243 offset:1664
	ds_load_u16_d16_hi v47, v243 offset:1408
	ds_load_u16_d16 v50, v243 offset:64
	ds_load_u16_d16_hi v43, v243 offset:384
	ds_load_u16_d16_hi v42, v243 offset:128
	ds_load_u16_d16 v52, v243 offset:576
	ds_load_u16_d16 v51, v243 offset:320
	ds_load_u16_d16_hi v49, v243 offset:1920
	ds_load_u16_d16 v56, v243 offset:1600
	ds_load_u16_d16 v244, v243 offset:2112
	ds_load_u16_d16 v57, v243 offset:1856
	ds_load_u16_d16_hi v53, v243 offset:960
	ds_load_u16_d16 v65, v243 offset:3840
	ds_load_u16_d16 v63, v243 offset:3328
	ds_load_u16_d16 v61, v243 offset:2816
	ds_load_u16_d16 v64, v243 offset:3584
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v50, v243 offset:192
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v52, v243 offset:704
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v51, v243 offset:448
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(11)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[42:49], v[81:88], v[33:40]
	v_mov_b32_e32 v42, v247
	.loc	1 656 37                        ; attention_backward.py:656:37
	ds_load_u16_d16 v247, v243 offset:2880
	ds_load_u16_d16_hi v245, v243 offset:2496
	ds_load_u16_d16_hi v55, v243 offset:1472
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v56, v243 offset:1728
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v57, v243 offset:1984
	ds_load_u16_d16_hi v58, v243 offset:2176
	ds_load_u16_d16_hi v244, v243 offset:2240
	v_mov_b32_e32 v46, v251
	ds_load_u16_d16 v251, v243 offset:3904
	v_mov_b32_e32 v43, v248
	ds_load_u16_d16 v248, v243 offset:3136
	v_mov_b32_e32 v45, v250
	ds_load_u16_d16 v250, v243 offset:3648
	ds_load_u16_d16 v249, v243 offset:3392
	ds_load_u16_d16_hi v62, v243 offset:3200
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v63, v243 offset:3456
	ds_load_u16_d16_hi v59, v243 offset:2432
	ds_load_u16_d16_hi v60, v243 offset:2688
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v61, v243 offset:2944
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v64, v243 offset:3712
	ds_load_u16_d16_hi v65, v243 offset:3968
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v251, v243 offset:4032
	ds_load_u16_d16_hi v247, v243 offset:3008
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v248, v243 offset:3264
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v250, v243 offset:3776
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v249, v243 offset:3520
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v17, v162, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[50:57], v[81:88], v[25:32]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v162, v162
	v_cmp_o_f32_e64 s2, v161, v161
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v47, v210, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v17, v162, v17, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[58:65], v[73:80], v[33:40]
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v62.l, v18.h
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v47, v210, v47, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v47.l, v18.h
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_barrier
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v44, v23, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v60.l, v18.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v48, v206, 16, 1
	v_bfe_u32 v49, v202, 16, 1
	v_bfe_u32 v50, v198, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v44, v23, v44, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v52, v190, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[244:251], v[73:80], v[25:32]
	v_mov_b32_e32 v250, v45
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v73.h, 0x7fff, v17.h, vcc_lo
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v73.l, v18.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v45, v24, 16, 1
	v_mov_b32_e32 v244, v67
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v76.l, v18.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v61.h, 0x7fff, v44.h, s10
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v17, v162, v73
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v45, v24, v45, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v44, v222, 16, 1
	v_add3_u32 v48, v206, v48, 0x7fff
	v_add3_u32 v49, v202, v49, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v62.h, 0x7fff, v45.h, s11
	v_mov_b32_e32 v247, v42
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v42, v17, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v44, v222, v44, 0x7fff
	v_bfe_u32 v45, v218, 16, 1
	v_add3_u32 v50, v198, v50, 0x7fff
	v_add3_u32 v52, v190, v52, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v74, v17, v42, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v17, v161, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v45, v218, v45, 0x7fff
	v_bfe_u32 v53, v186, 16, 1
	v_bfe_u32 v54, v182, 16, 1
	v_bfe_u32 v55, v178, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v17, v161, v17, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v56, v174, 16, 1
	v_add3_u32 v53, v186, v53, 0x7fff
	v_add3_u32 v54, v182, v54, 0x7fff
	v_add3_u32 v55, v178, v55, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v76.h, 0x7fff, v17.h, s2
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v153, v73
	ds_store_b16_d16_hi v153, v76 offset:512
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v17, v161, v76
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e32 v59.l, v18.h
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_bfe_u32 v51, v194, 16, 1
	v_add3_u32 v56, v174, v56, 0x7fff
	v_bfe_u32 v57, v170, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v42, v17, 16, 1
	v_cmp_o_f32_e64 s2, v17, v17
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e32 v58.l, v18.h
	.loc	1 732 54 is_stmt 1              ; attention_backward.py:732:54
	v_mov_b16_e32 v48.l, v18.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v51, v194, v51, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v75, v17, v42, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v17, v154, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v57, v170, v57, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v61.l, v18.h
	.loc	1 728 35 is_stmt 0              ; attention_backward.py:728:35
	v_sub_f32_e32 v24, v24, v62
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_bfe_u32 v63, v188, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v17, v154, v17, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v17.l, v18.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v64, v184, 16, 1
	v_bfe_u32 v65, v180, 16, 1
	v_cmp_o_f32_e64 s10, v212, v212
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s7
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s11, v208, v208
	v_add3_u32 v63, v188, v63, 0x7fff
	v_add3_u32 v64, v184, v64, 0x7fff
	v_add3_u32 v65, v180, v65, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v42, v154, v17
	v_mov_b32_e32 v248, v43
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v68, v17
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v17, v19, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v154, v172, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v43, v42, 16, 1
	v_cmp_o_f32_e64 s7, v42, v42
	v_mov_b32_e32 v246, v156
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v17, v19, v17, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v17.l, 0x7fff, v74.h, vcc_lo
	v_add3_u32 v42, v42, v43, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v43, v22, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v230, v230
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v44.l, v18.h
	v_mov_b16_e32 v45.l, v18.h
	v_mov_b16_e32 v49.l, v18.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v43, v22, v43, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v154, v172, v154, 0x7fff
	v_cndmask_b16 v162.h, 0x7fff, v63.h, s16
	v_cndmask_b16 v156.h, 0x7fff, v65.h, s18
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v50.l, v18.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v58.h, 0x7fff, v43.h, s8
	v_bfe_u32 v43, v20, 16, 1
	v_cmp_o_f32_e64 s8, v19, v19
	v_mov_b32_e32 v249, v165
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v51.l, v18.h
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v22, v22, v58
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v43, v20, v43, 0x7fff
	v_cndmask_b16 v59.h, 0x7fff, v17.h, s8
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v17.h, 0x7fff, v75.h, s2
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s2, v226, v226
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v52.l, v18.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v60.h, 0x7fff, v43.h, s9
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v68, v58 offset:512
	ds_store_b16_d16_hi v240, v59
	ds_store_b16_d16_hi v240, v61 offset:512
	ds_store_b16_d16_hi v0, v60
	ds_store_b16_d16_hi v0, v62 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[81:84], v21
	ds_load_b128 v[85:88], v252
	ds_load_b128 v[73:76], v253
	ds_load_b128 v[77:80], v69
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v153, v17
	ds_store_b16_d16_hi v153, v17 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v17.l, 0x7fff, v42.h, s7
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v42, v230, 16, 1
	v_dual_mov_b32 v251, v46 :: v_dual_sub_f32 v20, v20, v60
	v_bfe_u32 v46, v214, 16, 1
	v_bfe_u32 v43, v226, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v42, v230, v42, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s7, v22, v22
	v_cmp_o_f32_e64 s9, v24, v24
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v46, v214, v46, 0x7fff
	v_add3_u32 v43, v226, v43, 0x7fff
	v_cndmask_b16 v42.h, 0x7fff, v42.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v222, v222
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v46.l, v18.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v60, v200, 16, 1
	v_cndmask_b16 v43.h, 0x7fff, v43.h, s2
	v_cmp_o_f32_e64 s2, v194, v194
	v_cndmask_b16 v44.h, 0x7fff, v44.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v218, v218
	v_bfe_u32 v62, v192, 16, 1
	v_add3_u32 v60, v200, v60, 0x7fff
	v_cndmask_b16 v51.h, 0x7fff, v51.h, s2
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s2, v20, v20
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v45.h, 0x7fff, v45.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v214, v214
	v_add3_u32 v62, v192, v62, 0x7fff
	v_bfe_u32 v153, v176, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v42.l, v18.h
	v_mov_b16_e32 v43.l, v18.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v46.h, 0x7fff, v46.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v210, v210
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v23, v23, v61
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v61, v196, 16, 1
	v_add3_u32 v153, v176, v153, 0x7fff
	v_cndmask_b16 v163.h, 0x7fff, v60.h, s13
	v_cndmask_b16 v47.h, 0x7fff, v47.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v206, v206
	v_add3_u32 v61, v196, v61, 0x7fff
	v_cndmask_b16 v161.h, 0x7fff, v62.h, s15
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v53.l, v18.h
	v_mov_b16_e32 v54.l, v18.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v48.h, 0x7fff, v48.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v202, v202
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v19, v19, v59
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v59, v204, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v55.l, v18.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v194, v142, v48
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v49.h, 0x7fff, v49.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v198, v198
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v58, v19, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v198, v146, v46
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s8, v23, v23
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v59, v204, v59, 0x7fff
	v_cndmask_b16 v50.h, 0x7fff, v50.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v190, v190
	v_dual_mov_b32 v245, v155 :: v_dual_sub_f32 v192, v144, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v190.h, 0x7fff, v59.h, s12
	v_cndmask_b16 v155.h, 0x7fff, v64.h, s17
	v_cndmask_b16 v52.h, 0x7fff, v52.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v186, v186
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v56.l, v18.h
	v_mov_b16_e32 v57.l, v18.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v153.h, 0x7fff, v153.h, s19
	v_cndmask_b16 v154.h, 0x7fff, v154.h, s20
	v_cndmask_b16 v53.h, 0x7fff, v53.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v182, v182
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v49.l, v190.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v196, v148, v47
	v_sub_f32_e32 v200, v152, v45
	v_sub_f32_e32 v202, v150, v44
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v54.h, 0x7fff, v54.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v178, v178
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v204, v140, v43
	v_sub_f32_e32 v206, v138, v42
	v_sub_f32_e32 v114, v114, v52
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v52.l, v161.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v55.h, 0x7fff, v55.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v174, v174
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v120, v120, v51
	v_sub_f32_e32 v118, v118, v50
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v50.l, v163.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v180.l, v18.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v56.h, 0x7fff, v56.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v170, v170
	v_cndmask_b16 v170.h, 0x7fff, v61.h, s14
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v184.l, v18.h
	v_mov_b16_e64 v188.l, v18.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v106, v106, v56
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v57.h, 0x7fff, v57.h, vcc_lo
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_add3_u32 v19, v19, v58, 0x7fff
	v_bfe_u32 v58, v20, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v56.l, v153.h
	v_mov_b16_e64 v51.l, v170.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s12, v219, v219
	v_cmp_o_f32_e64 s13, v217, v217
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v20, v20, v58, 0x7fff
	v_bfe_u32 v58, v22, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s14, v215, v215
	v_cmp_o_f32_e64 s15, v213, v213
	v_cmp_o_f32_e64 s16, v211, v211
	v_cmp_o_f32_e64 s17, v209, v209
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v22, v22, v58, 0x7fff
	v_bfe_u32 v58, v23, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s18, v207, v207
	v_cmp_o_f32_e64 s19, v205, v205
	v_cmp_o_f32_e64 s20, v203, v203
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v17.h, 0x7fff, v22.h, s7
	v_add3_u32 v23, v23, v58, 0x7fff
	v_bfe_u32 v58, v24, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v68, v17
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v17.l, 0x7fff, v19.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v68, v17 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v17.h, 0x7fff, v23.h, s8
	v_add3_u32 v24, v24, v58, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v19, v228, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v240, v17
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v17.l, 0x7fff, v20.h, s2
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v240, v17 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v17.h, 0x7fff, v24.h, s9
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v0, v17
	ds_store_b16_d16_hi v0, v17 offset:512
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v17, v232, 16, 1
	v_bfe_u32 v20, v224, 16, 1
	v_bfe_u32 v22, v220, 16, 1
	v_bfe_u32 v23, v216, 16, 1
	v_bfe_u32 v24, v212, 16, 1
	v_bfe_u32 v58, v208, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v232, v232
	v_cmp_o_f32_e64 s2, v228, v228
	v_cmp_o_f32_e64 s7, v224, v224
	v_cmp_o_f32_e64 s8, v220, v220
	v_cmp_o_f32_e64 s9, v216, v216
	v_add3_u32 v17, v232, v17, 0x7fff
	v_add3_u32 v19, v228, v19, 0x7fff
	v_add3_u32 v20, v224, v20, 0x7fff
	v_add3_u32 v22, v220, v22, 0x7fff
	v_add3_u32 v23, v216, v23, 0x7fff
	v_add3_u32 v24, v212, v24, 0x7fff
	v_add3_u32 v58, v208, v58, 0x7fff
	v_cndmask_b16 v17.h, 0x7fff, v17.h, vcc_lo
	v_cndmask_b16 v165.h, 0x7fff, v19.h, s2
	v_cndmask_b16 v180.h, 0x7fff, v20.h, s7
	v_cndmask_b16 v182.h, 0x7fff, v22.h, s8
	v_cndmask_b16 v184.h, 0x7fff, v23.h, s9
	v_cndmask_b16 v186.h, 0x7fff, v24.h, s10
	v_cndmask_b16 v188.h, 0x7fff, v58.h, s11
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[58:61], v21
	ds_load_b128 v[62:65], v252
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v47.l, v186.h
	v_mov_b16_e64 v48.l, v188.h
	v_mov_b16_e64 v46.l, v184.h
	v_mov_b16_e64 v45.l, v182.h
	v_mov_b16_e64 v44.l, v180.h
	v_mov_b16_e64 v43.l, v165.h
	v_mov_b16_e32 v42.l, v17.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v108, v108, v57
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v57.l, v154.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v110, v110, v54
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v54.l, v155.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v116, v116, v53
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v53.l, v162.h
	v_wmma_f32_16x16x16_bf16 v[9:16], v[42:49], v[81:88], v[9:16]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v17.l, v18.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v112, v112, v55
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v55.l, v156.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v19, v233, 16, 1
	v_bfe_u32 v20, v231, 16, 1
	v_bfe_u32 v21, v229, 16, 1
	v_bfe_u32 v22, v227, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[50:57], v[73:80], v[9:16]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v23, v225, 16, 1
	v_bfe_u32 v24, v223, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v233, v233
	v_add3_u32 v19, v233, v19, 0x7fff
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[42:49], v[58:65], v[9:16]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v42, v221, 16, 1
	v_cmp_o_f32_e64 s2, v231, v231
	v_add3_u32 v20, v231, v20, 0x7fff
	v_cmp_o_f32_e64 s7, v229, v229
	v_add3_u32 v21, v229, v21, 0x7fff
	v_add3_u32 v138, v221, v42, 0x7fff
	v_bfe_u32 v42, v219, 16, 1
	v_cmp_o_f32_e64 s8, v227, v227
	v_add3_u32 v22, v227, v22, 0x7fff
	v_cmp_o_f32_e64 s9, v225, v225
	v_add3_u32 v23, v225, v23, 0x7fff
	v_add3_u32 v45, v219, v42, 0x7fff
	v_bfe_u32 v42, v217, 16, 1
	v_cmp_o_f32_e64 s10, v223, v223
	v_add3_u32 v24, v223, v24, 0x7fff
	v_cmp_o_f32_e64 s11, v221, v221
	v_cndmask_b16 v43.h, 0x7fff, v22.h, s8
	v_add3_u32 v140, v217, v42, 0x7fff
	v_bfe_u32 v42, v215, 16, 1
	v_cndmask_b16 v44.h, 0x7fff, v24.h, s10
	v_cndmask_b16 v45.h, 0x7fff, v45.h, s12
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v43.l, v18.h
	v_mov_b16_e32 v44.l, v18.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v46, v215, v42, 0x7fff
	v_bfe_u32 v42, v213, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v45.l, v18.h
	v_mov_b16_e32 v46.l, v18.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v130, v130, v44
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v46.h, 0x7fff, v46.h, s14
	v_add3_u32 v142, v213, v42, 0x7fff
	v_bfe_u32 v42, v211, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v132, v132, v45
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v161.l, v18.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v126, v126, v46
	v_sub_f32_e32 v136, v136, v43
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v47, v211, v42, 0x7fff
	v_bfe_u32 v42, v209, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v47.l, v18.h
	v_mov_b16_e64 v155.l, v18.h
	v_mov_b16_e64 v153.l, v18.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v47.h, 0x7fff, v47.h, s16
	v_add3_u32 v144, v209, v42, 0x7fff
	v_bfe_u32 v42, v207, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v165.l, v18.h
	v_mov_b16_e64 v142.l, v18.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v128, v128, v47
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v182.l, v18.h
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v48, v207, v42, 0x7fff
	v_bfe_u32 v42, v205, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v48.l, v18.h
	v_mov_b16_e64 v186.l, v18.h
	v_mov_b16_e64 v190.l, v18.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v48.h, 0x7fff, v48.h, s18
	v_add3_u32 v146, v205, v42, 0x7fff
	v_bfe_u32 v42, v203, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v146.l, v18.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v17, v137, v17
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s14, v198, v198
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v205.h, 0x7fff, v146.h, s19
	v_add3_u32 v49, v203, v42, 0x7fff
	v_bfe_u32 v42, v201, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v49.l, v18.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v203.h, 0x7fff, v144.h, s17
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v203.l, v18.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v49.h, 0x7fff, v49.h, s20
	v_add3_u32 v148, v201, v42, 0x7fff
	v_bfe_u32 v42, v199, 16, 1
	v_cndmask_b16 v201.h, 0x7fff, v142.h, s15
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v122, v122, v48
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v48.l, v203.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s16, v196, v196
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v150, v199, v42, 0x7fff
	v_bfe_u32 v42, v197, 16, 1
	v_cndmask_b16 v199.h, 0x7fff, v140.h, s13
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v47.l, v201.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v199.l, v18.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v124, v124, v49
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v152, v197, v42, 0x7fff
	v_bfe_u32 v42, v195, 16, 1
	v_cndmask_b16 v197.h, 0x7fff, v138.h, s11
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v49.l, v205.h
	v_mov_b16_e64 v46.l, v199.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v152.h, 0x7fff, v152.h, s23
	v_add3_u32 v172, v195, v42, 0x7fff
	v_bfe_u32 v42, v193, 16, 1
	v_cndmask_b16 v195.h, 0x7fff, v23.h, s9
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v172.l, v18.h
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v45.l, v197.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v172.h, 0x7fff, v172.h, s24
	v_add3_u32 v193, v193, v42, 0x7fff
	v_bfe_u32 v42, v191, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v44.l, v195.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v150.l, v18.h
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s18, v194, v194
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v146.h, 0x7fff, v193.h, s25
	v_add3_u32 v174, v191, v42, 0x7fff
	v_bfe_u32 v42, v189, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v174.l, v18.h
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s20, v192, v192
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v195.l, v18.h
	v_mov_b16_e64 v197.l, v18.h
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v189, v189, v42, 0x7fff
	v_bfe_u32 v42, v187, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v201.l, v18.h
	v_mov_b16_e64 v205.l, v18.h
	v_mov_b16_e64 v170.l, v18.h
	v_mov_b16_e64 v162.l, v18.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v176, v187, v42, 0x7fff
	v_bfe_u32 v42, v185, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v176.l, v18.h
	v_mov_b16_e64 v156.l, v18.h
	v_mov_b16_e64 v154.l, v18.h
	v_mov_b16_e64 v148.l, v18.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v185, v185, v42, 0x7fff
	v_bfe_u32 v42, v183, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v144.l, v18.h
	v_mov_b16_e64 v138.l, v18.h
	v_mov_b16_e64 v152.l, v18.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v142.h, 0x7fff, v185.h, s29
	v_add3_u32 v178, v183, v42, 0x7fff
	v_bfe_u32 v42, v181, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v178.l, v18.h
	v_mov_b16_e64 v140.l, v18.h
	v_mov_b32_e32 v210, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v181, v181, v42, 0x7fff
	v_bfe_u32 v42, v179, 16, 1
	v_cndmask_b16 v144.h, 0x7fff, v181.h, s31
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v179, v179, v42, 0x7fff
	v_bfe_u32 v42, v177, 16, 1
	v_mov_b32_e32 v181, v69
	v_mov_b32_e32 v69, v70
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s8, v204, v204
	v_cmp_o_f32_e64 s12, v200, v200
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v183, v177, v42, 0x7fff
	v_bfe_u32 v42, v175, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v179.l, v18.h
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v67, off, off offset:348
	scratch_load_b32 v70, off, off offset:172
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v138.h, 0x7fff, v183.h, s34
	v_add3_u32 v177, v175, v42, 0x7fff
	v_bfe_u32 v42, v173, 16, 1
	v_cndmask_b16 v175.h, 0x7fff, v178.h, s30
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v175.l, v18.h
	v_mov_b16_e64 v177.l, v18.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v177.h, 0x7fff, v177.h, s35
	v_add3_u32 v187, v173, v42, 0x7fff
	v_bfe_u32 v42, v171, 16, 1
	v_cndmask_b16 v173.h, 0x7fff, v174.h, s26
	v_cndmask_b16 v174.h, 0x7fff, v176.h, s28
	v_cndmask_b16 v176.h, 0x7fff, v179.h, s33
	v_cndmask_b16 v179.h, 0x7fff, v19.h, vcc_lo
	v_add3_u32 v191, v171, v42, 0x7fff
	v_cndmask_b16 v42.h, 0x7fff, v20.h, s2
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v42.l, v18.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v171.h, 0x7fff, v150.h, s22
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v171.l, v18.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v178.h, 0x7fff, v191.h, s37
	v_cndmask_b16 v191.h, 0x7fff, v21.h, s7
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v173.l, v18.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v150.h, 0x7fff, v148.h, s21
	v_cndmask_b16 v148.h, 0x7fff, v189.h, s27
	v_cndmask_b16 v140.h, 0x7fff, v187.h, s36
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v43.l, v191.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v134, v134, v42
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v42.l, v179.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v19, v96, v178
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v178.l, v140.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v20, v94, v177
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v177.l, v138.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v21, v100, v176
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v176.l, v144.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v22, v98, v175
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v175.l, v142.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v23, v104, v174
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v174.l, v148.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v24, v102, v173
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v173.l, v146.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v92, v92, v172
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v172.l, v152.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v90, v90, v171
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v171.l, v150.h
	v_wmma_f32_16x16x16_bf16 v[1:8], v[42:49], v[81:88], v[1:8]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_cmp_o_f32_e64 s2, v206, v206
	v_cmp_o_f32_e64 s10, v202, v202
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v191.l, v18.h
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[171:178], v[73:80], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v18, v93, v138
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[42:49], v[58:65], v[1:8]
	ds_load_b128 v[42:45], v253
	ds_load_b128 v[46:49], v181
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[50:57], v[42:49], v[9:16]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[171:178], v[42:49], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v42, v139, v165 :: v_dual_sub_f32 v43, v149, v180
	v_dual_sub_f32 v44, v151, v182 :: v_dual_sub_f32 v45, v145, v184
	v_sub_f32_e32 v46, v147, v186
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v50, v42, 16, 1
	v_cmp_o_f32_e64 s7, v42, v42
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v47, v141, v188 :: v_dual_sub_f32 v48, v143, v190
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v49, v17, 16, 1
	v_add3_u32 v50, v42, v50, 0x7fff
	v_bfe_u32 v42, v204, 16, 1
	v_cmp_o_f32_e64 s9, v43, v43
	v_cmp_o_f32_e64 s11, v44, v44
	v_add3_u32 v17, v17, v49, 0x7fff
	v_bfe_u32 v49, v206, 16, 1
	v_add3_u32 v51, v204, v42, 0x7fff
	v_bfe_u32 v42, v43, 16, 1
	v_cmp_o_f32_e64 s13, v45, v45
	v_cmp_o_f32_e64 s15, v46, v46
	v_add3_u32 v49, v206, v49, 0x7fff
	v_cmp_o_f32_e64 s17, v47, v47
	v_add3_u32 v52, v43, v42, 0x7fff
	v_bfe_u32 v42, v202, 16, 1
	v_cmp_o_f32_e64 s19, v48, v48
	v_cndmask_b16 v43.l, 0x7fff, v50.h, s7
	v_cndmask_b16 v43.h, 0x7fff, v51.h, s8
	v_cmp_o_f32_e64 s8, v136, v136
	v_add3_u32 v53, v202, v42, 0x7fff
	v_bfe_u32 v42, v44, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v54, v44, v42, 0x7fff
	v_bfe_u32 v42, v200, 16, 1
	v_cndmask_b16 v44.l, 0x7fff, v52.h, s9
	v_cndmask_b16 v44.h, 0x7fff, v53.h, s10
	v_add3_u32 v55, v200, v42, 0x7fff
	v_bfe_u32 v42, v45, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v56, v45, v42, 0x7fff
	v_bfe_u32 v42, v198, 16, 1
	v_cndmask_b16 v45.l, 0x7fff, v54.h, s11
	v_cndmask_b16 v45.h, 0x7fff, v55.h, s12
	v_cmp_o_f32_e64 s12, v132, v132
	v_add3_u32 v57, v198, v42, 0x7fff
	v_bfe_u32 v42, v46, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v58, v46, v42, 0x7fff
	v_bfe_u32 v42, v196, 16, 1
	v_cndmask_b16 v46.l, 0x7fff, v56.h, s13
	v_cndmask_b16 v46.h, 0x7fff, v57.h, s14
	v_cmp_o_f32_e64 s14, v126, v126
	v_add3_u32 v59, v196, v42, 0x7fff
	v_bfe_u32 v42, v47, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v60, v47, v42, 0x7fff
	v_bfe_u32 v42, v194, 16, 1
	v_cndmask_b16 v47.l, 0x7fff, v58.h, s15
	v_cndmask_b16 v47.h, 0x7fff, v59.h, s16
	v_cmp_o_f32_e64 s16, v128, v128
	v_add3_u32 v61, v194, v42, 0x7fff
	v_bfe_u32 v42, v48, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v62, v48, v42, 0x7fff
	v_bfe_u32 v42, v192, 16, 1
	v_cndmask_b16 v48.l, 0x7fff, v60.h, s17
	v_cndmask_b16 v48.h, 0x7fff, v61.h, s18
	v_cndmask_b16 v49.l, 0x7fff, v62.h, s19
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v63, v192, v42, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v17.h, vcc_lo
	v_cndmask_b16 v42.h, 0x7fff, v49.h, s2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v17, v133, v179
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s2, v134, v134
	v_cndmask_b16 v49.h, 0x7fff, v63.h, s20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[42:49], v[81:88], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v42, v135, v191
	v_dual_sub_f32 v43, v129, v195 :: v_dual_sub_f32 v44, v131, v197
	v_dual_sub_f32 v45, v125, v199 :: v_dual_sub_f32 v46, v127, v201
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v50, v42, 16, 1
	v_cmp_o_f32_e64 s7, v42, v42
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v47, v121, v203 :: v_dual_sub_f32 v48, v123, v205
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v49, v17, 16, 1
	v_add3_u32 v50, v42, v50, 0x7fff
	v_bfe_u32 v42, v136, 16, 1
	v_cmp_o_f32_e64 s9, v43, v43
	v_cmp_o_f32_e64 s11, v44, v44
	v_add3_u32 v17, v17, v49, 0x7fff
	v_bfe_u32 v49, v134, 16, 1
	v_add3_u32 v51, v136, v42, 0x7fff
	v_bfe_u32 v42, v43, 16, 1
	v_cmp_o_f32_e64 s13, v45, v45
	v_cmp_o_f32_e64 s15, v46, v46
	v_add3_u32 v49, v134, v49, 0x7fff
	v_cmp_o_f32_e64 s17, v47, v47
	v_add3_u32 v52, v43, v42, 0x7fff
	v_bfe_u32 v42, v130, 16, 1
	v_cmp_o_f32_e64 s18, v122, v122
	v_cmp_o_f32_e64 s19, v48, v48
	v_cmp_o_f32_e64 s20, v124, v124
	v_cndmask_b16 v43.l, 0x7fff, v50.h, s7
	v_add3_u32 v53, v130, v42, 0x7fff
	v_bfe_u32 v42, v44, 16, 1
	v_cndmask_b16 v43.h, 0x7fff, v51.h, s8
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v129, off, off offset:168
	scratch_load_b32 v125, off, off offset:88
	scratch_load_b32 v127, off, off offset:92
	v_add3_u32 v54, v44, v42, 0x7fff
	v_bfe_u32 v42, v132, 16, 1
	v_cndmask_b16 v44.l, 0x7fff, v52.h, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v55, v132, v42, 0x7fff
	v_bfe_u32 v42, v45, 16, 1
	v_add3_u32 v56, v45, v42, 0x7fff
	v_bfe_u32 v42, v126, 16, 1
	v_cndmask_b16 v45.l, 0x7fff, v54.h, s11
	v_cndmask_b16 v45.h, 0x7fff, v55.h, s12
	v_cmp_o_f32_e64 s12, v116, v116
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v57, v126, v42, 0x7fff
	v_bfe_u32 v42, v46, 16, 1
	scratch_load_b32 v126, off, off offset:164 ; 4-byte Folded Reload
	v_add3_u32 v58, v46, v42, 0x7fff
	v_bfe_u32 v42, v128, 16, 1
	v_cndmask_b16 v46.l, 0x7fff, v56.h, s13
	v_cndmask_b16 v46.h, 0x7fff, v57.h, s14
	v_cmp_o_f32_e64 s14, v110, v110
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v59, v128, v42, 0x7fff
	v_bfe_u32 v42, v47, 16, 1
	v_add3_u32 v60, v47, v42, 0x7fff
	v_bfe_u32 v42, v122, 16, 1
	v_cndmask_b16 v47.l, 0x7fff, v58.h, s15
	v_cndmask_b16 v47.h, 0x7fff, v59.h, s16
	v_cmp_o_f32_e64 s16, v112, v112
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v61, v122, v42, 0x7fff
	v_bfe_u32 v42, v48, 16, 1
	scratch_load_b32 v122, off, off offset:116 ; 4-byte Folded Reload
	v_add3_u32 v62, v48, v42, 0x7fff
	v_bfe_u32 v42, v124, 16, 1
	v_cndmask_b16 v48.l, 0x7fff, v60.h, s17
	v_cndmask_b16 v48.h, 0x7fff, v61.h, s18
	v_cmp_o_f32_e64 s18, v106, v106
	v_cndmask_b16 v49.l, 0x7fff, v62.h, s19
	v_add3_u32 v63, v124, v42, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v17.h, vcc_lo
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v17, v117, v163
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s10, v130, v130
	v_cndmask_b16 v42.h, 0x7fff, v49.h, s2
	v_cndmask_b16 v49.h, 0x7fff, v63.h, s20
	v_cmp_o_f32_e64 s2, v118, v118
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_cndmask_b16 v44.h, 0x7fff, v53.h, s10
	v_cmp_o_f32_e64 s10, v114, v114
	v_cmp_o_f32_e64 s20, v108, v108
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[130:131], off, off offset:16
	scratch_load_b32 v124, off, off offset:128
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[42:49], v[81:88], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v42, v119, v170 :: v_dual_mov_b32 v87, v66
	v_dual_sub_f32 v43, v113, v161 :: v_dual_sub_f32 v44, v115, v162
	v_sub_f32_e32 v45, v109, v155
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v50, v42, 16, 1
	v_cmp_o_f32_e64 s7, v42, v42
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v46, v111, v156 :: v_dual_sub_f32 v47, v105, v153
	v_sub_f32_e32 v48, v107, v154
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v50, v42, v50, 0x7fff
	v_bfe_u32 v42, v120, 16, 1
	v_bfe_u32 v49, v17, 16, 1
	v_cmp_o_f32_e64 s8, v120, v120
	v_cmp_o_f32_e64 s9, v43, v43
	v_cmp_o_f32_e64 s11, v44, v44
	v_add3_u32 v51, v120, v42, 0x7fff
	v_bfe_u32 v42, v43, 16, 1
	v_add3_u32 v17, v17, v49, 0x7fff
	v_bfe_u32 v49, v118, 16, 1
	v_cmp_o_f32_e64 s13, v45, v45
	v_cmp_o_f32_e64 s15, v46, v46
	v_add3_u32 v52, v43, v42, 0x7fff
	v_bfe_u32 v42, v114, 16, 1
	v_add3_u32 v49, v118, v49, 0x7fff
	v_cmp_o_f32_e64 s17, v47, v47
	v_cmp_o_f32_e64 s19, v48, v48
	v_cndmask_b16 v43.l, 0x7fff, v50.h, s7
	v_add3_u32 v53, v114, v42, 0x7fff
	v_bfe_u32 v42, v44, 16, 1
	v_cndmask_b16 v43.h, 0x7fff, v51.h, s8
	v_dual_mov_b32 v66, v164 :: v_dual_mov_b32 v161, v237
	v_mov_b32_e32 v237, v167
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v54, v44, v42, 0x7fff
	v_bfe_u32 v42, v116, 16, 1
	v_cndmask_b16 v44.l, 0x7fff, v52.h, s9
	v_cndmask_b16 v44.h, 0x7fff, v53.h, s10
	v_cmp_o_f32_e64 s10, v24, v24
	v_mov_b32_e32 v88, v71
	v_add3_u32 v55, v116, v42, 0x7fff
	v_bfe_u32 v42, v45, 16, 1
	v_dual_mov_b32 v71, v72 :: v_dual_mov_b32 v86, v159
	v_mov_b32_e32 v159, v157
	v_mov_b32_e32 v157, v158
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v56, v45, v42, 0x7fff
	v_bfe_u32 v42, v110, 16, 1
	v_cndmask_b16 v45.l, 0x7fff, v54.h, s11
	v_cndmask_b16 v45.h, 0x7fff, v55.h, s12
	v_cmp_o_f32_e64 s12, v23, v23
	v_mov_b32_e32 v72, v166
	v_add3_u32 v57, v110, v42, 0x7fff
	v_bfe_u32 v42, v46, 16, 1
	v_mov_b32_e32 v164, v254
	v_mov_b32_e32 v254, v168
	v_mov_b32_e32 v162, v242
	v_mov_b32_e32 v242, v169
	v_add3_u32 v58, v46, v42, 0x7fff
	v_bfe_u32 v42, v112, 16, 1
	v_cndmask_b16 v46.l, 0x7fff, v56.h, s13
	v_cndmask_b16 v46.h, 0x7fff, v57.h, s14
	v_cmp_o_f32_e64 s14, v22, v22
	v_mov_b32_e32 v166, v255
	v_add3_u32 v59, v112, v42, 0x7fff
	v_bfe_u32 v42, v47, 16, 1
	s_clause 0x9                            ; 40-byte Folded Reload
	scratch_load_b32 v255, off, off offset:328
	scratch_load_b32 v169, off, off offset:320
	scratch_load_b32 v167, off, off offset:324
	scratch_load_b32 v168, off, off offset:316
	scratch_load_b32 v158, off, off offset:184
	scratch_load_b32 v117, off, off offset:124
	scratch_load_b32 v163, off, off offset:180
	scratch_load_b32 v119, off, off offset:120
	scratch_load_b32 v115, off, off offset:112
	scratch_load_b32 v109, off, off offset:108
	v_add3_u32 v60, v47, v42, 0x7fff
	v_bfe_u32 v42, v106, 16, 1
	v_cndmask_b16 v47.l, 0x7fff, v58.h, s15
	v_cndmask_b16 v47.h, 0x7fff, v59.h, s16
	v_cmp_o_f32_e64 s16, v21, v21
	scratch_load_b32 v107, off, off offset:100 ; 4-byte Folded Reload
	v_add3_u32 v61, v106, v42, 0x7fff
	v_bfe_u32 v42, v48, 16, 1
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v120, off, off offset:80
	scratch_load_b32 v118, off, off offset:76
	v_add3_u32 v62, v48, v42, 0x7fff
	v_bfe_u32 v42, v108, 16, 1
	v_cndmask_b16 v48.l, 0x7fff, v60.h, s17
	v_cndmask_b16 v48.h, 0x7fff, v61.h, s18
	v_cmp_o_f32_e64 s17, v18, v18
	v_cndmask_b16 v49.l, 0x7fff, v62.h, s19
	v_add3_u32 v63, v108, v42, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v17.h, vcc_lo
	v_cndmask_b16 v42.h, 0x7fff, v49.h, s2
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v17, v89, v150
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s8, v92, v92
	v_cndmask_b16 v49.h, 0x7fff, v63.h, s20
	v_cmp_o_f32_e64 s18, v20, v20
	v_cmp_o_f32_e64 s20, v19, v19
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	s_clause 0x5                            ; 28-byte Folded Reload
	scratch_load_b32 v108, off, off offset:72
	scratch_load_b32 v114, off, off offset:64
	scratch_load_b32 v116, off, off offset:68
	scratch_load_b32 v112, off, off offset:56
	scratch_load_b32 v113, off, off offset:60
	scratch_load_b64 v[110:111], off, off offset:44
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[42:49], v[73:80], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v43, v101, v146 :: v_dual_sub_f32 v44, v103, v148
	v_dual_sub_f32 v45, v97, v142 :: v_dual_sub_f32 v46, v99, v144
	v_sub_f32_e32 v42, v91, v152
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v50, v43, 16, 1
	v_cmp_o_f32_e64 s9, v43, v43
	v_cmp_o_f32_e64 s11, v44, v44
	v_cmp_o_f32_e64 s13, v45, v45
	v_cmp_o_f32_e64 s15, v46, v46
	v_add3_u32 v43, v43, v50, 0x7fff
	v_bfe_u32 v50, v24, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v47, v95, v140
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v48, v17, 16, 1
	v_bfe_u32 v49, v42, 16, 1
	v_cmp_o_f32_e64 s7, v42, v42
	v_add3_u32 v24, v24, v50, 0x7fff
	v_bfe_u32 v50, v44, 16, 1
	v_add3_u32 v17, v17, v48, 0x7fff
	v_bfe_u32 v48, v90, 16, 1
	v_add3_u32 v42, v42, v49, 0x7fff
	v_bfe_u32 v49, v92, 16, 1
	v_add3_u32 v44, v44, v50, 0x7fff
	v_bfe_u32 v50, v23, 16, 1
	v_cmp_o_f32_e64 s19, v47, v47
	v_cmp_o_f32_e64 s2, v90, v90
	v_add3_u32 v48, v90, v48, 0x7fff
	v_add3_u32 v49, v92, v49, 0x7fff
	v_add3_u32 v23, v23, v50, 0x7fff
	v_bfe_u32 v50, v45, 16, 1
	v_cndmask_b16 v17.l, 0x7fff, v17.h, vcc_lo
	v_cndmask_b16 v17.h, 0x7fff, v48.h, s2
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v111, off, off offset:52
	scratch_load_b32 v95, off, off offset:104
	scratch_load_b32 v93, off, off offset:96
	scratch_load_b32 v123, off, off offset:84
	v_add3_u32 v45, v45, v50, 0x7fff
	v_bfe_u32 v50, v22, 16, 1
	.loc	1 607 13 is_stmt 1              ; attention_backward.py:607:13
	s_add_i32 s2, s52, 32
	s_cmpk_lt_u32 s52, 0x7e0
	s_mov_b32 s52, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v22, v22, v50, 0x7fff
	v_bfe_u32 v50, v46, 16, 1
	v_add3_u32 v46, v46, v50, 0x7fff
	v_bfe_u32 v50, v21, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v22.l, 0x7fff, v46.h, s15
	v_add3_u32 v50, v21, v50, 0x7fff
	v_bfe_u32 v21, v18, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v51, v18, v21, 0x7fff
	v_bfe_u32 v18, v20, 16, 1
	v_cndmask_b16 v21.l, 0x7fff, v45.h, s13
	v_cndmask_b16 v21.h, 0x7fff, v22.h, s14
	v_cndmask_b16 v22.h, 0x7fff, v50.h, s16
	v_cndmask_b16 v23.l, 0x7fff, v51.h, s17
	v_add3_u32 v52, v20, v18, 0x7fff
	v_bfe_u32 v18, v47, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v44.h, s11
	v_cndmask_b16 v20.h, 0x7fff, v23.h, s12
	scratch_load_b64 v[44:45], off, off offset:24 ; 8-byte Folded Reload
	v_cndmask_b16 v23.h, 0x7fff, v52.h, s18
	v_add3_u32 v47, v47, v18, 0x7fff
	v_bfe_u32 v18, v19, 16, 1
	scratch_load_b64 v[45:46], off, off offset:32 ; 8-byte Folded Reload
	v_cndmask_b16 v24.l, 0x7fff, v47.h, s19
	v_add3_u32 v53, v19, v18, 0x7fff
	v_cndmask_b16 v18.l, 0x7fff, v42.h, s7
	v_cndmask_b16 v18.h, 0x7fff, v49.h, s8
	v_cndmask_b16 v19.l, 0x7fff, v43.h, s9
	v_cndmask_b16 v19.h, 0x7fff, v24.h, s10
	v_cndmask_b16 v24.h, 0x7fff, v53.h, s20
	scratch_load_b64 v[42:43], off, off offset:8 ; 8-byte Folded Reload
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[17:24], v[73:80], v[1:8]
	scratch_load_b64 v[22:23], off, off     ; 8-byte Folded Reload
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ;   in Loop: Header=BB0_1 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	s_movk_i32 s21, 0x800
	.loc	1 605 9 is_stmt 1               ; attention_backward.py:605:9
	s_and_not1_b32 vcc_lo, exec_lo, s46
	s_mov_b32 s22, 0
	s_cbranch_vccnz .LBB0_1
; %bb.4:
	.loc	1 550 20                        ; attention_backward.py:550:20
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v18, off, off offset:352
	scratch_load_b32 v17, off, off offset:360
	scratch_load_b32 v19, off, off offset:356
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
	v_or_b32_e32 v0, s38, v18
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_or_b32_e32 v18, s39, v18
	.loc	1 550 20                        ; attention_backward.py:550:20
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v17, v17, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v43, s56, v18
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s2, s56, v17
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
	v_cmp_gt_i32_e64 s3, s56, v0
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
	v_mul_lo_u32 v18, s58, v18
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
	v_cmp_gt_i32_e64 s0, s58, v17
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
	buffer_store_b32 v9, v17, s[60:63], 0 offen
	v_add_lshl_u32 v9, v18, v48, 2
	v_cndmask_b32_e64 v17, 0x80000000, v26, s0
	v_add_lshl_u32 v25, v18, v47, 2
	v_add_lshl_u32 v26, v18, v46, 2
	v_add_lshl_u32 v27, v18, v45, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	buffer_store_b32 v10, v17, s[60:63], 0 offen
	v_cndmask_b32_e64 v10, 0x80000000, v25, s0
	v_cndmask_b32_e64 v17, 0x80000000, v26, s0
	v_cndmask_b32_e64 v25, 0x80000000, v27, s0
	.loc	1 550 20                        ; attention_backward.py:550:20
	v_cmp_gt_i32_e64 s1, s58, v0
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v11, v9, s[60:63], 0 offen
	v_add_lshl_u32 v9, v18, v44, 2
	s_clause 0x2
	buffer_store_b32 v12, v10, s[60:63], 0 offen
	buffer_store_b32 v13, v17, s[60:63], 0 offen
	buffer_store_b32 v14, v25, s[60:63], 0 offen
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
	buffer_store_b32 v15, v9, s[60:63], 0 offen
	buffer_store_b32 v16, v10, s[60:63], 0 offen
	buffer_store_b32 v1, v0, s[60:63], 0 offen
	buffer_store_b32 v2, v11, s[60:63], 0 offen
	buffer_store_b32 v3, v12, s[60:63], 0 offen
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
	buffer_store_b32 v4, v0, s[60:63], 0 offen
	buffer_store_b32 v5, v1, s[60:63], 0 offen
	buffer_store_b32 v6, v2, s[60:63], 0 offen
	buffer_store_b32 v7, v3, s[60:63], 0 offen
	buffer_store_b32 v8, v9, s[60:63], 0 offen
	.loc	1 451 5                         ; attention_backward.py:451:5
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 368
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
		.amdhsa_next_free_sgpr 76
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 76
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 368
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 22696
; TotalNumSgprs: 78
; NumVgprs: 256
; ScratchSize: 368
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 78
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 368
    .sgpr_count:     78
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_int4xint4_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 91
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
