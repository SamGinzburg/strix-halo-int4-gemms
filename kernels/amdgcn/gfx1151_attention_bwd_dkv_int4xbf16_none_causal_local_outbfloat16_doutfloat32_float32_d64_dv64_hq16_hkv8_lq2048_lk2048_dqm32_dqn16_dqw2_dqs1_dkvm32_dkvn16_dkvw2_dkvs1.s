	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	v_lshlrev_b32_e32 v34, 3, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v2, 2, v0
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s62, s2, 4
	.loc	1 521 24                        ; attention_backward.py:521:24
	s_lshl_b32 s63, s3, 11
	s_mov_b32 s11, 0x31027000
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_add_i32 s63, s63, s62
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_and_b32_e32 v1, 24, v34
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_or_b32_e32 v3, s63, v2
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v4, s62, v2
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 514 33 is_stmt 0              ; attention_backward.py:514:33
	v_bfe_u32 v81, v0, 4, 1
	v_mov_b32_e32 v41, 0
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	v_and_b32_e32 v33, 7, v0
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_and_b32_e32 v39, 48, v0
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_or_b32_e32 v6, s63, v81
	s_clause 0x1
	s_load_b64 s[60:61], s[0:1], 0x58
	s_load_b64 s[12:13], s[0:1], 0x20
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[2:3], null, s57, v3, v[1:2]
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_cmp_gt_i32_e64 s2, s57, v1
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_and_b32 s9, s43, 0xffff
	s_mov_b32 s8, s42
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_lshlrev_b32_e32 v6, 1, v6
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_dual_cndmask_b32 v1, 0x80000000, v2 :: v_dual_lshlrev_b32 v4, 3, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v5, s62, v3
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_mul_lo_u32 v3, s58, v3
	s_mul_i32 s72, s58, s63
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s4, s58, v4
	.loc	1 522 24                        ; attention_backward.py:522:24
	buffer_load_b64 v[1:2], v1, s[8:11], 0 offen
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v5
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_lshl_b32 s7, s58, 3
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshrrev_b32_e32 v40, 1, v39
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_and_b32 s9, s45, 0xffff
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add3_u32 v3, s72, v4, v3
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, vcc_lo, s4
	v_mov_b32_e32 v25, 0
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xad_u32 v5, v34, v40, 0
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_mov_b32 s8, s44
	v_lshlrev_b32_e32 v4, 1, v3
	v_add_lshl_u32 v3, v3, s7, 1
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v46, 2, v81
	v_or_b32_e32 v47, 4, v81
	v_or_b32_e32 v48, 6, v81
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_or_b32_e32 v49, 8, v81
	v_or_b32_e32 v50, 10, v81
	v_or_b32_e32 v51, 12, v81
	v_or_b32_e32 v52, 14, v81
	.loc	1 514 23 is_stmt 0              ; attention_backward.py:514:23
	v_or_b32_e32 v168, s62, v81
	.loc	1 528 17 is_stmt 1              ; attention_backward.py:528:17
	v_or_b32_e32 v7, s63, v46
	v_or_b32_e32 v8, s63, v47
	v_or_b32_e32 v9, s63, v48
	v_or_b32_e32 v10, s63, v49
	v_or_b32_e32 v11, s63, v50
	v_or_b32_e32 v12, s63, v51
	v_or_b32_e32 v13, s63, v52
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, 0x800, v168
	v_dual_mov_b32 v14, v41 :: v_dual_lshlrev_b32 v7, 1, v7
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_lshlrev_b32_e32 v8, 1, v8
	v_dual_mov_b32 v16, v41 :: v_dual_lshlrev_b32 v9, 1, v9
	v_lshlrev_b32_e32 v10, 1, v10
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_lshlrev_b32_e32 v11, 1, v11
	s_mov_b32 s14, s10
	s_mov_b32 s15, s11
	s_and_b32 s13, s13, 0xffff
	s_clause 0x2
	s_load_b256 s[48:55], s[0:1], 0x38
	s_load_b64 s[38:39], s[0:1], 0x98
	s_load_b32 s74, s[0:1], 0xa0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v61, 56, v0
	v_and_b32_e32 v95, 15, v0
	v_dual_mov_b32 v26, v41 :: v_dual_and_b32 v63, 32, v0
	v_dual_mov_b32 v28, v41 :: v_dual_lshlrev_b32 v65, 1, v0
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_bfe_i32 v67, v0, 0, 1
	v_dual_mov_b32 v30, v41 :: v_dual_and_b32 v69, 14, v0
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v62, 16, v0
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v100, 1, v0
	v_bfe_i32 v64, v0, 5, 1
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_and_b32_e32 v66, 1, v0
	v_dual_mov_b32 v15, v41 :: v_dual_lshlrev_b32 v68, 4, v0
	v_bfe_i32 v70, v0, 3, 1
	v_dual_mov_b32 v32, v41 :: v_dual_lshlrev_b32 v71, 6, v0
	v_dual_mov_b32 v18, v41 :: v_dual_and_b32 v73, 24, v65
	v_dual_mov_b32 v24, v41 :: v_dual_and_b32 v67, 0x240, v67
	v_lshlrev_b32_e32 v79, 7, v63
	v_dual_mov_b32 v21, v41 :: v_dual_and_b32 v34, 48, v34
	v_and_or_b32 v65, v65, 30, v81
	v_mov_b32_e32 v23, v41
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v235, s62, v46
	v_or_b32_e32 v237, s62, v47
	v_or_b32_e32 v246, s62, v48
	v_or_b32_e32 v247, s62, v49
	v_or_b32_e32 v248, s62, v50
	v_or_b32_e32 v249, s62, v51
	v_or_b32_e32 v250, s62, v52
	v_lshlrev_b32_e32 v252, 2, v65
	s_lshl_b32 s75, s3, 12
	v_dual_mov_b32 v27, v41 :: v_dual_and_b32 v64, 0x820, v64
	v_add_nc_u32_e32 v253, 0, v71
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v96, 1, v63
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_waitcnt lgkmcnt(0)
	s_add_i32 s39, s39, s74
	s_mov_b32 s42, s10
	v_and_or_b32 v64, 0x410, v70, v64
	s_mov_b32 s68, s52
	.loc	1 641 25                        ; attention_backward.py:641:25
	s_mul_f32 s76, s59, 0x3fb8aa3b
	s_mov_b32 s6, 0
	s_mov_b32 s73, -1
	s_mov_b32 s43, s11
	s_mov_b32 s44, s46
	s_mov_b32 s64, s50
	v_dual_mov_b32 v17, 0 :: v_dual_lshlrev_b32 v76, 3, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_xor3_b32 v40, v76, v67, v40
	v_lshl_or_b32 v102, v69, 9, v40
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt vmcnt(0)
	ds_store_b64 v5, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_clause 0x1
	buffer_load_b128 v[35:38], v4, s[8:11], 0 offen
	buffer_load_b128 v[42:45], v3, s[8:11], 0 offen
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_lshlrev_b32_e32 v1, 1, v12
	v_lshlrev_b32_e32 v2, 1, v13
	v_cndmask_b32_e64 v3, 0x80000000, v7, s2
	v_cndmask_b32_e64 v5, 0x80000000, v9, s2
	v_mov_b32_e32 v9, 0
	v_cndmask_b32_e64 v4, 0x80000000, v8, s2
	v_cndmask_b32_e64 v7, 0x80000000, v10, s2
	v_cndmask_b32_e64 v8, 0x80000000, v11, s2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	s_clause 0x7
	buffer_load_u16 v53, v6, s[12:15], 0 offen
	buffer_load_u16 v54, v3, s[12:15], 0 offen
	buffer_load_u16 v55, v4, s[12:15], 0 offen
	buffer_load_u16 v56, v5, s[12:15], 0 offen
	buffer_load_u16 v57, v7, s[12:15], 0 offen
	buffer_load_u16 v58, v8, s[12:15], 0 offen
	buffer_load_u16 v59, v1, s[12:15], 0 offen
	buffer_load_u16 v60, v2, s[12:15], 0 offen
	v_mov_b32_e32 v10, v41
	v_mov_b32_e32 v6, v41
	v_mov_b32_e32 v7, v41
	v_mov_b32_e32 v8, v41
	v_dual_mov_b32 v5, v41 :: v_dual_lshlrev_b32 v0, 2, v95
	v_dual_mov_b32 v29, v41 :: v_dual_lshlrev_b32 v78, 8, v95
	v_dual_mov_b32 v20, v41 :: v_dual_lshlrev_b32 v61, 1, v61
	v_dual_mov_b32 v22, v41 :: v_dual_lshlrev_b32 v75, 4, v33
	v_lshlrev_b32_e32 v77, 4, v95
	v_mov_b32_e32 v11, v41
	v_mov_b32_e32 v13, v41
	v_dual_mov_b32 v3, v41 :: v_dual_lshlrev_b32 v74, 5, v66
	v_mov_b32_e32 v31, v41
	v_dual_mov_b32 v19, v41 :: v_dual_lshlrev_b32 v80, 1, v95
	v_cmp_eq_u32_e64 s0, 0, v62
	v_lshlrev_b32_e32 v62, 2, v62
	.loc	1 620 52                        ; attention_backward.py:620:52
	v_lshlrev_b32_e32 v97, 4, v66
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshl_or_b32 v66, v95, 5, v73
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v61, v68, v61, 0
	v_lshl_or_b32 v68, v95, 7, v75
	v_add_nc_u32_e32 v73, 0, v0
	v_or3_b32 v159, v78, v79, v77
	v_mov_b32_e32 v12, v41
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v72, 3, v39
	scratch_store_b32 off, v81, off offset:436 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v81, 1, v39
	v_or3_b32 v167, v80, v62, v63
	v_lshl_or_b32 v169, v39, 5, v77
	v_lshl_or_b32 v234, v95, 6, v34
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v34, 0, v66
	v_xad_u32 v39, v66, 8, 0
	v_xad_u32 v46, v66, 16, 0
	v_xad_u32 v47, v66, 24, 0
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_add_nc_u32_e32 v48, 0, v68
	v_xad_u32 v49, v68, 16, 0
	v_xad_u32 v50, v68, 32, 0
	v_xad_u32 v51, v68, 48, 0
	v_xad_u32 v52, v68, 64, 0
	v_xad_u32 v62, 0x50, v68, 0
	v_xad_u32 v65, 0x60, v68, 0
	v_xad_u32 v66, 0x70, v68, 0
	v_lshl_add_u32 v255, v63, 1, v73
	v_xor_b32_e32 v40, 32, v159
	v_xor_b32_e32 v67, 0x50, v159
	v_xor_b32_e32 v68, 0x60, v159
	v_xor_b32_e32 v73, 0x90, v159
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s8, s62, s38
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v71, 16, v74
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s3, s56, v74
	v_add_nc_u32_e32 v165, 0, v40
	v_add_nc_u32_e32 v160, 0, v67
	v_add_nc_u32_e32 v161, 0, v68
	v_add_nc_u32_e32 v166, 0, v73
	v_xor_b32_e32 v40, 0x120, v102
	v_xor_b32_e32 v67, 0xb0, v102
	v_xor_b32_e32 v68, 0x190, v102
	v_xor_b32_e32 v73, 0x60, v102
	v_xor_b32_e32 v74, 0xf0, v102
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_sub_i32 s8, s8, s74
	v_mov_b32_e32 v1, 0
	s_add_i32 s8, s8, 16
	v_mul_u32_u24_e32 v33, 0x90, v33
	.loc	1 590 24                        ; attention_backward.py:590:24
	v_med3_i32 v94, s8, 0, 0x800
	v_add_nc_u32_e32 v108, 0, v40
	v_add_nc_u32_e32 v111, 0, v67
	v_add_nc_u32_e32 v112, 0, v68
	v_add_nc_u32_e32 v113, 0, v73
	v_add_nc_u32_e32 v114, 0, v74
	.loc	1 522 24                        ; attention_backward.py:522:24
	ds_load_b64 v[67:68], v34
	ds_load_b64 v[39:40], v39
	ds_load_b64 v[73:74], v46
	ds_load_b64 v[46:47], v47
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mad_u64_u32 v[98:99], null, s58, v72, v[0:1]
	v_add3_u32 v242, 0, v63, v80
	v_xor_b32_e32 v101, v64, v33
	v_xor_b32_e32 v157, v169, v81
	v_xor_b32_e32 v33, 16, v159
	v_xor_b32_e32 v63, 48, v159
	v_xor_b32_e32 v64, 64, v159
	v_xor_b32_e32 v69, 0x70, v159
	v_xor_b32_e32 v70, 0x80, v159
	v_xor_b32_e32 v75, 0xa0, v159
	v_xor_b32_e32 v76, 0xb0, v159
	v_xor_b32_e32 v77, 0xc0, v159
	v_xor_b32_e32 v78, 0xd0, v159
	v_xor_b32_e32 v79, 0xe0, v159
	v_xor_b32_e32 v81, 0x90, v167
	v_xor_b32_e32 v82, 0x120, v167
	v_xor_b32_e32 v83, 0x1b0, v167
	v_xor_b32_e32 v84, 16, v234
	v_xor_b32_e32 v85, 32, v234
	v_xor_b32_e32 v86, 48, v234
	.loc	1 600 19                        ; attention_backward.py:600:19
	v_readfirstlane_b32 s8, v94
	.loc	1 603 39                        ; attention_backward.py:603:39
	s_sub_i32 s9, s62, s74
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_sub_i32 s10, s62, s39
	v_xor_b32_e32 v80, 0xf0, v159
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s1, s58, v0
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s4, s56, v71
	.loc	1 603 25                        ; attention_backward.py:603:25
	s_max_i32 s9, s9, 0
	v_add_nc_u32_e32 v163, 0, v33
	v_add_nc_u32_e32 v238, 0, v63
	v_add_nc_u32_e32 v239, 0, v64
	v_add_nc_u32_e32 v162, 0, v69
	v_add_nc_u32_e32 v164, 0, v70
	v_add_nc_u32_e32 v241, 0, v75
	v_add_nc_u32_e32 v244, 0, v76
	v_add_nc_u32_e32 v240, 0, v77
	v_add_nc_u32_e32 v245, 0, v78
	v_add_nc_u32_e32 v251, 0, v79
	v_add_nc_u32_e32 v0, 0, v81
	v_add_nc_u32_e32 v243, 0, v82
	v_add_nc_u32_e32 v103, 0, v83
	v_add_nc_u32_e32 v104, 0, v84
	v_add_nc_u32_e32 v105, 0, v85
	v_add_nc_u32_e32 v106, 0, v86
	v_xor_b32_e32 v33, 0x90, v102
	v_xor_b32_e32 v63, 0x1b0, v102
	v_xor_b32_e32 v64, 32, v102
	v_xor_b32_e32 v69, 64, v102
	v_xor_b32_e32 v70, 0xd0, v102
	v_xor_b32_e32 v71, 0x160, v102
	v_xor_b32_e32 v72, 0x1f0, v102
	v_xor_b32_e32 v75, 0x140, v102
	v_xor_b32_e32 v76, 0x1d0, v102
	v_xor_b32_e32 v77, 16, v101
	v_xor_b32_e32 v78, 32, v101
	v_xor_b32_e32 v79, 48, v101
	v_xor_b32_e32 v81, 0x50, v101
	v_xor_b32_e32 v82, 0x60, v101
	v_xor_b32_e32 v83, 0x70, v101
	v_xor_b32_e32 v84, 0x1040, v101
	v_xor_b32_e32 v85, 0x1050, v101
	v_xor_b32_e32 v86, 0x1060, v101
	v_xor_b32_e32 v87, 0x1070, v101
	v_xor_b32_e32 v88, 0x1010, v101
	v_xor_b32_e32 v89, 0x1020, v101
	v_xor_b32_e32 v90, 0x1030, v101
	v_xor_b32_e32 v91, 0x110, v157
	v_xor_b32_e32 v92, 0x880, v157
	.loc	1 589 24                        ; attention_backward.py:589:24
	s_max_i32 s10, s10, 0
	.loc	1 600 19                        ; attention_backward.py:600:19
	s_add_i32 s8, s8, 31
	.loc	1 604 45                        ; attention_backward.py:604:45
	s_and_b32 s9, s9, 0x7fffffe0
	.loc	1 597 45                        ; attention_backward.py:597:45
	s_and_b32 s10, s10, 0x7fffffe0
	.loc	1 600 17                        ; attention_backward.py:600:17
	s_and_b32 s8, s8, 0x1fe0
	.loc	1 604 24                        ; attention_backward.py:604:24
	s_max_u32 s52, s10, s9
	.loc	1 598 24                        ; attention_backward.py:598:24
	s_min_u32 s77, s8, 0x800
	v_mov_b32_e32 v2, v41
	v_mov_b32_e32 v4, v41
	.loc	1 620 52                        ; attention_backward.py:620:52
	v_cmp_gt_i32_e64 s5, s57, v97
	v_add_nc_u32_e32 v158, 0, v80
	v_xor_b32_e32 v80, 64, v101
	v_xor_b32_e32 v93, 0x990, v157
	v_add_nc_u32_e32 v107, 0, v33
	v_add_nc_u32_e32 v109, 0, v63
	v_add_nc_u32_e32 v110, 0, v64
	v_add_nc_u32_e32 v69, 0, v69
	v_add_nc_u32_e32 v70, 0, v70
	v_add_nc_u32_e32 v71, 0, v71
	v_add_nc_u32_e32 v72, 0, v72
	v_add_nc_u32_e32 v115, 0, v75
	v_add_nc_u32_e32 v116, 0, v76
	v_add_nc_u32_e32 v117, 0, v77
	v_add_nc_u32_e32 v118, 0, v78
	v_add_nc_u32_e32 v119, 0, v79
	v_add_nc_u32_e32 v121, 0, v81
	v_add_nc_u32_e32 v82, 0, v82
	v_add_nc_u32_e32 v83, 0, v83
	v_add_nc_u32_e32 v84, 0, v84
	v_add_nc_u32_e32 v85, 0, v85
	v_add_nc_u32_e32 v86, 0, v86
	v_add_nc_u32_e32 v87, 0, v87
	v_add_nc_u32_e32 v88, 0, v88
	v_add_nc_u32_e32 v94, 0, v89
	v_add_nc_u32_e32 v170, 0, v90
	v_add_nc_u32_e32 v89, 0, v91
	v_add_nc_u32_e32 v254, 0, v92
	s_cmp_lt_u32 s52, s77
	v_add_nc_u32_e32 v64, 0, v80
	s_cselect_b32 s78, -1, 0
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s45, s47, 0xffff
	s_and_b32 s65, s51, 0xffff
	s_and_b32 s69, s53, 0xffff
	s_and_b32 s49, s49, 0xffff
	v_add_nc_u32_e32 v33, 0, v93
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt vmcnt(9)
	ds_store_b128 v61, v[35:38]
	s_waitcnt vmcnt(8)
	ds_store_b128 v61, v[42:45] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[122:125], v48
	ds_load_b128 v[126:129], v49
	ds_load_b128 v[130:133], v50
	ds_load_b128 v[134:137], v51
	ds_load_b128 v[138:141], v52
	ds_load_b128 v[142:145], v62
	ds_load_b128 v[146:149], v65
	ds_load_b128 v[150:153], v66
	v_mad_u64_u32 v[48:49], null, s58, 9, v[98:99]
	v_mad_u64_u32 v[49:50], null, s58, 17, v[98:99]
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v34, 16, v53
	v_mad_u64_u32 v[50:51], null, s58, 24, v[98:99]
	v_mad_u64_u32 v[52:53], null, s58, 25, v[98:99]
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_or_b32_e32 v45, v96, v95
	v_add_nc_u32_e32 v53, s7, v98
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v35, 16, v54
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v36, 16, v55
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v37, 16, v56
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v38, 16, v57
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v42, 16, v58
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v43, 16, v59
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v44, 16, v60
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v95, off offset:440
	scratch_store_b32 off, v96, off offset:444
	v_xor_b32_e32 v51, 4, v252
	s_clause 0x1f                           ; 132-byte Folded Spill
	scratch_store_b64 off, v[97:98], off offset:284
	scratch_store_b32 off, v100, off offset:292
	scratch_store_b32 off, v101, off offset:296
	scratch_store_b32 off, v102, off offset:300
	scratch_store_b32 off, v163, off offset:304
	scratch_store_b32 off, v165, off offset:308
	scratch_store_b32 off, v238, off offset:312
	scratch_store_b32 off, v239, off offset:316
	scratch_store_b32 off, v159, off offset:320
	scratch_store_b32 off, v169, off offset:324
	scratch_store_b32 off, v245, off offset:328
	scratch_store_b32 off, v157, off offset:332
	scratch_store_b32 off, v107, off offset:336
	scratch_store_b32 off, v108, off offset:340
	scratch_store_b32 off, v109, off offset:344
	scratch_store_b32 off, v110, off offset:348
	scratch_store_b32 off, v111, off offset:352
	scratch_store_b32 off, v112, off offset:356
	scratch_store_b32 off, v69, off offset:360
	scratch_store_b32 off, v113, off offset:364
	scratch_store_b32 off, v114, off offset:368
	scratch_store_b32 off, v115, off offset:372
	scratch_store_b32 off, v116, off offset:376
	scratch_store_b32 off, v117, off offset:380
	scratch_store_b32 off, v118, off offset:384
	scratch_store_b32 off, v119, off offset:388
	scratch_store_b32 off, v64, off
	scratch_store_b32 off, v121, off offset:392
	scratch_store_b32 off, v82, off offset:396
	scratch_store_b32 off, v83, off offset:400
	scratch_store_b32 off, v84, off offset:404
	scratch_store_b32 off, v85, off offset:408
	s_clause 0xe                            ; 60-byte Folded Spill
	scratch_store_b32 off, v86, off offset:412
	scratch_store_b32 off, v87, off offset:416
	scratch_store_b32 off, v88, off offset:420
	scratch_store_b32 off, v94, off offset:424
	scratch_store_b32 off, v170, off offset:428
	scratch_store_b32 off, v45, off offset:4
	scratch_store_b32 off, v53, off offset:432
	scratch_store_b32 off, v44, off offset:64
	scratch_store_b32 off, v51, off offset:68
	scratch_store_b32 off, v42, off offset:72
	scratch_store_b32 off, v43, off offset:76
	scratch_store_b32 off, v37, off offset:80
	scratch_store_b32 off, v38, off offset:84
	scratch_store_b32 off, v35, off offset:88
	scratch_store_b32 off, v36, off offset:92
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[146:149], off offset:96 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_clause 0x11                           ; 172-byte Folded Spill
	scratch_store_b128 off, v[150:153], off offset:112
	scratch_store_b32 off, v34, off offset:128
	scratch_store_b128 off, v[130:133], off offset:132
	scratch_store_b128 off, v[134:137], off offset:148
	scratch_store_b128 off, v[138:141], off offset:164
	scratch_store_b128 off, v[142:145], off offset:180
	scratch_store_b64 off, v[46:47], off offset:196
	scratch_store_b128 off, v[122:125], off offset:204
	scratch_store_b128 off, v[126:129], off offset:220
	scratch_store_b64 off, v[39:40], off offset:236
	scratch_store_b64 off, v[73:74], off offset:244
	scratch_store_b32 off, v33, off offset:252
	scratch_store_b64 off, v[67:68], off offset:256
	scratch_store_b32 off, v0, off offset:264
	scratch_store_b32 off, v243, off offset:268
	scratch_store_b32 off, v105, off offset:272
	scratch_store_b32 off, v103, off offset:276
	scratch_store_b32 off, v104, off offset:280
	s_branch .LBB0_2
.LBB0_1:                                ; %Flow289
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 29 is_stmt 0                ; attention_backward.py:0:29
	s_xor_b32 s7, s73, -1
	s_movk_i32 s6, 0x800
	.loc	1 605 9 is_stmt 1               ; attention_backward.py:605:9
	s_and_not1_b32 vcc_lo, exec_lo, s7
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
	v_mov_b32_e32 v91, v106
	.loc	1 613 25 is_stmt 1              ; attention_backward.py:613:25
	s_or_b32 s53, s75, s6
	s_mov_b32 s79, s52
.LBB0_4:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 25 is_stmt 0                ; attention_backward.py:0:25
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 616 25 is_stmt 1              ; attention_backward.py:616:25
	s_add_i32 s6, s79, s53
	s_waitcnt vmcnt(8)
	v_or_b32_e32 v36, s53, v100
	v_or_b32_e32 v33, s6, v100
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s6, s6, s58
	v_add_nc_u32_e32 v37, s58, v98
	v_lshl_add_u32 v40, s58, 4, v98
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v36, v36, s79, 1
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_mad_u64_u32 v[33:34], null, v33, s57, v[97:98]
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v43, s6, v50, 2
	.loc	1 623 39                        ; attention_backward.py:623:39
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_waitcnt vmcnt(0)
	s_clause 0x4                            ; 40-byte Folded Spill
	scratch_store_b64 off, v[52:53], off offset:40
	scratch_store_b64 off, v[50:51], off offset:32
	scratch_store_b64 off, v[49:50], off offset:24
	scratch_store_b64 off, v[48:49], off offset:16
	scratch_store_b64 off, v[98:99], off offset:8
	.loc	1 623 39                        ; attention_backward.py:623:39
	buffer_load_u16 v74, v36, s[44:47], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v36, s6, v98, 2
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v34, 0x80000000, v33, s5
	v_or_b32_e32 v33, s53, v45
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v37, s6, v37, 2
	v_add_lshl_u32 v38, s6, v53, 2
	v_add_lshl_u32 v39, s6, v48, 2
	v_add_lshl_u32 v40, s6, v40, 2
	.loc	1 624 25                        ; attention_backward.py:624:25
	v_add_nc_u32_e32 v33, s79, v33
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v42, s6, v49, 2
	v_cndmask_b32_e64 v51, 0x80000000, v43, s1
	v_add_lshl_u32 v43, s6, v52, 2
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s66, s42
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v35, 1, v33
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_lshlrev_b32_e32 v33, 2, v33
	s_mov_b32 s67, s43
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v36, 0x80000000, v36, s1
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s70, s42
	s_mov_b32 s71, s43
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s50, s42
	s_mov_b32 s51, s43
	v_cndmask_b32_e64 v37, 0x80000000, v37, s1
	v_cndmask_b32_e64 v38, 0x80000000, v38, s1
	v_cndmask_b32_e64 v39, 0x80000000, v39, s1
	v_cndmask_b32_e64 v40, 0x80000000, v40, s1
	v_cndmask_b32_e64 v42, 0x80000000, v42, s1
	v_cndmask_b32_e64 v60, 0x80000000, v43, s1
	.loc	1 623 39                        ; attention_backward.py:623:39
	buffer_load_u16 v75, v35, s[44:47], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v73, v33, s[64:67], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v76, v33, s[68:71], 0 offen
	.loc	1 615 36                        ; attention_backward.py:615:36
	buffer_load_b128 v[153:156], v34, s[40:43], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x7
	buffer_load_b128 v[33:36], v36, s[48:51], 0 offen
	buffer_load_b128 v[43:46], v37, s[48:51], 0 offen
	buffer_load_b128 v[47:50], v38, s[48:51], 0 offen
	buffer_load_b128 v[52:55], v39, s[48:51], 0 offen
	buffer_load_b128 v[56:59], v40, s[48:51], 0 offen
	buffer_load_b128 v[61:64], v42, s[48:51], 0 offen
	buffer_load_b128 v[65:68], v51, s[48:51], 0 offen
	buffer_load_b128 v[78:81], v60, s[48:51], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v236, v252
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_dual_mov_b32 v243, v254 :: v_dual_add_nc_u32 v40, 0, v102
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(7)
	v_dual_mov_b32 v42, v33 :: v_dual_mov_b32 v37, v34
	s_waitcnt vmcnt(6)
	v_mov_b32_e32 v38, v44
	ds_store_b64 v40, v[42:43]
	ds_store_b64 v107, v[37:38]
	v_dual_mov_b32 v37, v35 :: v_dual_mov_b32 v38, v45
	s_waitcnt vmcnt(5)
	v_mov_b32_e32 v51, v47
	s_waitcnt vmcnt(3)
	v_dual_mov_b32 v39, v53 :: v_dual_mov_b32 v60, v56
	s_waitcnt vmcnt(1)
	v_mov_b32_e32 v77, v65
	ds_store_b64 v108, v[37:38]
	v_dual_mov_b32 v37, v46 :: v_dual_mov_b32 v38, v48
	ds_store_b64 v109, v[36:37]
	ds_store_b64 v110, v[51:52]
	ds_store_b64 v111, v[38:39]
	v_dual_mov_b32 v37, v49 :: v_dual_mov_b32 v38, v54
	v_dual_mov_b32 v51, v55 :: v_dual_add_nc_u32 v42, 0x1400, v255
	ds_store_b64 v40, v[37:38] offset:256
	v_dual_mov_b32 v37, v57 :: v_dual_mov_b32 v38, v62
	ds_store_b64 v112, v[50:51]
	ds_store_b64 v69, v[60:61]
	ds_store_b64 v70, v[37:38]
	v_dual_mov_b32 v37, v58 :: v_dual_mov_b32 v38, v63
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v60, v64 :: v_dual_mov_b32 v69, v81
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v51, 0x1800, v255
	.loc	1 732 34                        ; attention_backward.py:732:34
	ds_store_b64 v71, v[37:38]
	v_dual_mov_b32 v37, v66 :: v_dual_mov_b32 v38, v79
	ds_store_b64 v72, v[59:60]
	ds_store_b64 v113, v[77:78]
	ds_store_b64 v114, v[37:38]
	v_dual_mov_b32 v37, v67 :: v_dual_add_nc_u32 v60, 0x1c00, v255
	v_mov_b32_e32 v38, v80
	ds_store_b64 v115, v[37:38]
	v_add_nc_u32_e32 v37, 0, v101
	ds_store_b64 v116, v[68:69]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[137:140], v37
	ds_load_b128 v[37:40], v37 offset:4096
	ds_load_b128 v[149:152], v117
	ds_load_b128 v[145:148], v118
	ds_load_b128 v[141:144], v119
	s_waitcnt lgkmcnt(3)
	scratch_store_b128 off, v[37:40], off offset:48 ; 16-byte Folded Spill
	scratch_load_b32 v37, off, off          ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[117:120], v37
	ds_load_b128 v[113:116], v121
	ds_load_b128 v[109:112], v82
	ds_load_b128 v[105:108], v83
	ds_load_b128 v[133:136], v84
	ds_load_b128 v[129:132], v85
	ds_load_b128 v[125:128], v86
	ds_load_b128 v[121:124], v87
	ds_load_b128 v[101:104], v88
	ds_load_b128 v[97:100], v94
	ds_load_b128 v[93:96], v170
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v37, 0, v169
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v37, v[33:36]
	ds_store_b128 v37, v[43:46] offset:256
	ds_store_b128 v37, v[47:50] offset:2048
	ds_store_b128 v37, v[52:55] offset:2304
	ds_store_b128 v37, v[56:59] offset:4096
	ds_store_b128 v37, v[61:64] offset:4352
	ds_store_b128 v37, v[65:68] offset:6144
	ds_store_b128 v37, v[78:81] offset:6400
	v_add_nc_u32_e32 v37, 0x400, v255
	v_add_nc_u32_e32 v38, 0x800, v255
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v39, 0xc00, v255
	v_add_nc_u32_e32 v40, 0x1000, v255
	ds_load_2addr_b32 v[224:225], v37 offset1:32
	ds_load_2addr_b32 v[222:223], v37 offset0:64 offset1:96
	ds_load_2addr_b32 v[220:221], v37 offset0:128 offset1:160
	ds_load_2addr_b32 v[218:219], v37 offset0:192 offset1:224
	ds_load_2addr_b32 v[216:217], v38 offset1:32
	ds_load_2addr_b32 v[214:215], v38 offset0:64 offset1:96
	ds_load_2addr_b32 v[212:213], v38 offset0:128 offset1:160
	ds_load_2addr_b32 v[210:211], v38 offset0:192 offset1:224
	ds_load_2addr_b32 v[208:209], v39 offset1:32
	ds_load_2addr_b32 v[206:207], v39 offset0:64 offset1:96
	ds_load_2addr_b32 v[204:205], v39 offset0:128 offset1:160
	ds_load_2addr_b32 v[202:203], v39 offset0:192 offset1:224
	ds_load_2addr_b32 v[200:201], v40 offset1:32
	ds_load_2addr_b32 v[198:199], v40 offset0:64 offset1:96
	ds_load_2addr_b32 v[196:197], v40 offset0:128 offset1:160
	ds_load_2addr_b32 v[194:195], v40 offset0:192 offset1:224
	ds_load_2addr_b32 v[192:193], v42 offset1:32
	ds_load_2addr_b32 v[190:191], v42 offset0:64 offset1:96
	ds_load_2addr_b32 v[188:189], v42 offset0:128 offset1:160
	ds_load_2addr_b32 v[186:187], v42 offset0:192 offset1:224
	ds_load_2addr_b32 v[184:185], v51 offset1:32
	ds_load_2addr_b32 v[182:183], v51 offset0:64 offset1:96
	ds_load_2addr_b32 v[180:181], v51 offset0:128 offset1:160
	ds_load_2addr_b32 v[178:179], v51 offset0:192 offset1:224
	ds_load_2addr_b32 v[176:177], v60 offset1:32
	ds_load_2addr_b32 v[174:175], v60 offset0:64 offset1:96
	ds_load_2addr_b32 v[172:173], v60 offset0:128 offset1:160
	ds_load_2addr_b32 v[170:171], v60 offset0:192 offset1:224
	ds_load_2addr_b32 v[232:233], v255 offset1:32
	ds_load_2addr_b32 v[230:231], v255 offset0:64 offset1:96
	ds_load_2addr_b32 v[228:229], v255 offset0:128 offset1:160
	ds_load_2addr_b32 v[226:227], v255 offset0:192 offset1:224
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:252 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v37, 0, v157
	ds_store_b128 v37, v[33:36]
	ds_store_b128 v37, v[56:59] offset:4096
	ds_store_b128 v89, v[43:46]
	ds_store_b128 v89, v[61:64] offset:4096
	ds_store_b128 v254, v[47:50]
	ds_store_b128 v254, v[65:68] offset:4096
	v_add_nc_u32_e32 v33, 0, v159
	s_waitcnt vmcnt(0)
	ds_store_b128 v0, v[52:55]
	ds_store_b128 v0, v[78:81] offset:4096
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v33
	ds_load_b128 v[37:40], v163
	scratch_load_b32 v0, off, off offset:68 ; 4-byte Folded Reload
	v_mov_b32_e32 v169, v164
	v_dual_mov_b32 v157, v166 :: v_dual_and_b32 v86, 15, v153
	v_mov_b32_e32 v254, v234
	v_cmp_o_f32_e64 s29, v185, v185
	v_cmp_o_f32_e64 s31, v181, v181
	v_cmp_o_f32_e64 s34, v177, v177
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v87, -16, v86
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s36, v173, v173
	v_cmp_o_f32_e64 s26, v191, v191
	v_cmp_o_f32_e64 s27, v189, v189
	v_cmp_o_f32_e64 s28, v187, v187
	v_cmp_o_f32_e64 s30, v183, v183
	v_cmp_o_f32_e64 s33, v179, v179
	v_cmp_o_f32_e64 s35, v175, v175
	v_cmp_o_f32_e64 s37, v171, v171
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v42, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_cmp_o_f32_e64 s6, v34, v34
	v_cmp_o_f32_e64 s7, v35, v35
	v_cmp_o_f32_e64 s8, v36, v36
	v_add3_u32 v42, v33, v42, 0x7fff
	v_bfe_u32 v33, v34, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s9, v37, v37
	v_cmp_o_f32_e64 s10, v38, v38
	v_cmp_o_f32_e64 s11, v39, v39
	v_cmp_o_f32_e64 s12, v40, v40
	v_add3_u32 v43, v34, v33, 0x7fff
	v_bfe_u32 v33, v35, 16, 1
	v_cndmask_b16 v77.l, 0x7fff, v42.h, vcc_lo
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v42, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v77.h, 0x7fff, v43.h, s6
	v_add3_u32 v44, v35, v33, 0x7fff
	v_bfe_u32 v33, v36, 16, 1
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v43, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v78.l, 0x7fff, v44.h, s7
	v_add3_u32 v45, v36, v33, 0x7fff
	v_bfe_u32 v33, v37, 16, 1
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v44, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v78.h, 0x7fff, v45.h, s8
	v_add3_u32 v46, v37, v33, 0x7fff
	v_bfe_u32 v33, v38, 16, 1
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v45, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v79.l, 0x7fff, v46.h, s9
	v_add3_u32 v47, v38, v33, 0x7fff
	v_bfe_u32 v33, v39, 16, 1
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v46, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v79.h, 0x7fff, v47.h, s10
	v_add3_u32 v48, v39, v33, 0x7fff
	v_bfe_u32 v33, v40, 16, 1
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v47, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v80.l, 0x7fff, v48.h, s11
	v_add3_u32 v49, v40, v33, 0x7fff
	ds_load_b128 v[33:36], v165
	ds_load_b128 v[37:40], v238
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v48, v41
	v_mov_b32_e32 v238, v162
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v80.h, 0x7fff, v49.h, s12
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v50, v33, 16, 1
	v_cmp_o_f32_e64 s13, v33, v33
	v_cmp_o_f32_e64 s14, v34, v34
	v_cmp_o_f32_e64 s15, v35, v35
	v_cmp_o_f32_e64 s16, v36, v36
	v_add3_u32 v33, v33, v50, 0x7fff
	v_bfe_u32 v50, v34, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s17, v37, v37
	v_cmp_o_f32_e64 s18, v38, v38
	v_cmp_o_f32_e64 s19, v39, v39
	v_cmp_o_f32_e64 s20, v40, v40
	v_add3_u32 v34, v34, v50, 0x7fff
	v_bfe_u32 v50, v35, 16, 1
	v_cndmask_b16 v81.l, 0x7fff, v33.h, s13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v81.h, 0x7fff, v34.h, s14
	v_add3_u32 v35, v35, v50, 0x7fff
	v_bfe_u32 v50, v36, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v82.l, 0x7fff, v35.h, s15
	v_add3_u32 v36, v36, v50, 0x7fff
	v_bfe_u32 v50, v37, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v82.h, 0x7fff, v36.h, s16
	v_add3_u32 v37, v37, v50, 0x7fff
	v_bfe_u32 v50, v38, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.l, 0x7fff, v37.h, s17
	v_add3_u32 v38, v38, v50, 0x7fff
	v_bfe_u32 v50, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v83.h, 0x7fff, v38.h, s18
	v_add3_u32 v39, v39, v50, 0x7fff
	v_bfe_u32 v50, v40, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v84.l, 0x7fff, v39.h, s19
	v_add3_u32 v40, v40, v50, 0x7fff
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[49:52], off, off offset:204
	scratch_load_b128 v[53:56], off, off offset:220
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v84.h, 0x7fff, v40.h, s20
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v33, v41 :: v_dual_mov_b32 v34, v42
	v_dual_mov_b32 v35, v43 :: v_dual_mov_b32 v36, v44
	v_dual_mov_b32 v37, v45 :: v_dual_mov_b32 v38, v46
	v_dual_mov_b32 v39, v47 :: v_dual_mov_b32 v40, v48
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[49:56], v[77:84], v[33:40]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[49:52], v239
	ds_load_b128 v[53:56], v160
	v_mov_b32_e32 v239, v161
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v57, v49, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_cmp_o_f32_e64 s6, v50, v50
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
	v_cndmask_b16 v77.h, 0x7fff, v58.h, s6
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
	ds_load_b128 v[49:52], v161
	ds_load_b128 v[53:56], v162
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
	scratch_load_b128 v[49:52], off, off offset:132
	scratch_load_b128 v[53:56], off, off offset:148
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[49:56], v[77:84], v[33:40]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[49:52], v164
	ds_load_b128 v[53:56], v166
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v57, v49, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_cmp_o_f32_e64 s6, v50, v50
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
	v_cndmask_b16 v77.h, 0x7fff, v58.h, s6
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
	ds_load_b128 v[49:52], v241
	ds_load_b128 v[53:56], v244
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
	scratch_load_b128 v[49:52], off, off offset:164
	scratch_load_b128 v[53:56], off, off offset:180
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[49:56], v[77:84], v[33:40]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[49:52], v240
	ds_load_b128 v[53:56], v245
	v_mov_b32_e32 v245, v241
	v_mov_b32_e32 v241, v240
	v_mov_b32_e32 v240, v160
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v57, v49, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_cmp_o_f32_e64 s6, v50, v50
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
	v_cndmask_b16 v77.h, 0x7fff, v58.h, s6
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
	ds_load_b128 v[49:52], v251
	ds_load_b128 v[53:56], v158
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
	scratch_load_b128 v[49:52], off, off offset:96
	scratch_load_b128 v[53:56], off, off offset:112
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[49:56], v[77:84], v[33:40]
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_bpermute_b32 v49, v0, v156
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v52, v153, 8, 4
	v_bfe_u32 v54, v154, 24, 4
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v56, v153, 20, 4
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v83, v33, v76
	v_sub_f32_e32 v82, v34, v76
	v_sub_f32_e32 v81, v35, v76
	v_sub_f32_e32 v80, v36, v76
	v_sub_f32_e32 v79, v37, v76
	v_sub_f32_e32 v78, v38, v76
	v_sub_f32_e32 v77, v39, v76
	v_sub_f32_e32 v76, v40, v76
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_bpermute_b32 v34, v252, v153
	ds_bpermute_b32 v35, v0, v153
	ds_bpermute_b32 v36, v252, v154
	ds_bpermute_b32 v37, v0, v154
	ds_bpermute_b32 v38, v252, v155
	ds_bpermute_b32 v39, v0, v155
	ds_bpermute_b32 v40, v252, v156
	.loc	1 608 29                        ; attention_backward.py:608:29
	scratch_load_b32 v0, off, off offset:4  ; 4-byte Folded Reload
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v53, -16, v52
	v_or_b32_e32 v55, -16, v54
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v57, -16, v56
	v_mov_b32_e32 v252, v158
	v_dual_mov_b32 v158, v251 :: v_dual_mov_b32 v251, v253
	.loc	1 615 36                        ; attention_backward.py:615:36
	s_waitcnt lgkmcnt(5)
	v_cndmask_b32_e64 v33, v35, v34, s0
	v_cndmask_b32_e64 v35, v34, v35, s0
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v34, v37, v36, s0
	v_cndmask_b32_e64 v36, v36, v37, s0
	s_waitcnt lgkmcnt(1)
	v_cndmask_b32_e64 v37, v39, v38, s0
	v_cndmask_b32_e64 v39, v38, v39, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v38, v49, v40, s0
	v_cndmask_b32_e64 v40, v40, v49, s0
	.loc	1 630 33                        ; attention_backward.py:630:33
	scratch_load_b64 v[49:50], off, off offset:256 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[159:166], v[49:50], v[33:34], v[41:48] neg_lo:[1,1,0]
	scratch_load_b64 v[33:34], off, off offset:236 ; 8-byte Folded Reload
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v44, v153, 16, 4
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b64 v[42:43], 24, v[153:154]
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v46, 15, v154
	v_bfe_u32 v48, v154, 16, 4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v45, -16, v44
	v_or_b32_e32 v47, -16, v46
	s_delay_alu instid0(VALU_DEP_3)
	v_or_b32_e32 v49, -16, v48
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v43, v42, 0, 8
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[159:166], v[33:34], v[37:38], v[159:166] neg_lo:[1,1,0]
	scratch_load_b64 v[33:34], off, off offset:244 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[159:166], v[33:34], v[35:36], v[159:166] neg_lo:[1,1,0]
	scratch_load_b64 v[33:34], off, off offset:196 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[159:166], v[33:34], v[39:40], v[159:166] neg_lo:[1,1,0]
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v33, s79, v0
	.loc	1 703 34                        ; attention_backward.py:703:34
	scratch_load_b32 v0, off, off offset:128 ; 4-byte Folded Reload
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s79, s79, 32
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v36, v160
	.loc	1 610 35                        ; attention_backward.py:610:35
	v_add_nc_u32_e32 v34, s74, v33
	.loc	1 679 47                        ; attention_backward.py:679:47
	v_add_nc_u32_e32 v33, s39, v33
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v37, v161
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v161, 16, v74
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v38, v162
	v_cvt_f32_i32_e32 v40, v164
	.loc	1 678 21                        ; attention_backward.py:678:21
	v_min_i32_e32 v33, v34, v33
	.loc	1 678 47 is_stmt 0              ; attention_backward.py:678:47
	v_subrev_nc_u32_e32 v34, s38, v34
	.loc	1 644 25 is_stmt 1              ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v35, v159
	v_cvt_f32_i32_e32 v39, v163
	v_cvt_f32_i32_e32 v84, v165
	.loc	1 678 21                        ; attention_backward.py:678:21
	v_cmp_ge_i32_e64 s20, v33, v168
	v_cmp_ge_i32_e64 s19, v33, v235
	v_cmp_ge_i32_e64 s17, v33, v237
	v_cmp_ge_i32_e64 s15, v33, v246
	v_cmp_ge_i32_e64 s13, v33, v247
	v_cmp_ge_i32_e64 s11, v33, v248
	v_cmp_ge_i32_e64 s9, v33, v249
	v_cmp_ge_i32_e64 s7, v33, v250
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v33.l, v153.l, 15
	v_and_b16 v33.h, v42.l, 15
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s18, v168, v34
	v_cmp_ge_i32_e64 s16, v235, v34
	v_cmp_ge_i32_e64 s14, v237, v34
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s21, 7, v33.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v33.l, v153.h, 15
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s12, v246, v34
	v_cmp_ge_i32_e64 s10, v247, v34
	v_cmp_ge_i32_e64 s8, v248, v34
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v51, v86, v87, s21
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s22, 7, v33.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v33.l, v154.l, 15
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s6, v249, v34
	v_cmp_ge_i32_e32 vcc_lo, v250, v34
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v34.l, 4, v153.l
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v45, v44, v45, s22
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s23, 7, v33.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v33.l, v154.h, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v44, 8, v153
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v34.l, v34.l, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e32 v34.h, 0
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v46, v46, v47, s23
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s24, 7, v33.l
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v33.l, 4, v42.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v42, v153, 0, 8
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v50, -16, v34
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v47, v48, v49, s24
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v48, 8, v154
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s25, 0, v42.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v42.l, v44.l, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_bfe_u32 v49, v154, 8, 4
	.loc	1 679 21 is_stmt 1              ; attention_backward.py:679:21
	s_and_b32 s18, s20, s18
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v85, v166
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v50, v34, v50, s25
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s21, 7, v42.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v42.l, v48.l, 15
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s18, s2, s18
	s_and_b32 s16, s19, s16
	s_and_b32 s14, s17, s14
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v52, v52, v53, s21
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v53, -16, v49
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s21, 7, v42.l
	.loc	1 679 21 is_stmt 1              ; attention_backward.py:679:21
	s_and_b32 s16, s2, s16
	s_and_b32 s14, s2, s14
	s_and_b32 s12, s15, s12
	s_and_b32 s10, s13, s10
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v49, v49, v53, s21
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v53, 24, v154
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s12, s2, s12
	s_and_b32 s10, s2, s10
	s_and_b32 s8, s11, s8
	s_and_b32 s7, s7, vcc_lo
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v42.l, v53.l, 15
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s8, s2, s8
	s_and_b32 vcc_lo, s2, s7
	s_and_b32 s6, s9, s6
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s21, 7, v42.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_alignbit_b32 v42, v154, v153, 24
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s6, s2, s6
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s13, v200, v200
	v_cmp_o_f32_e64 s15, v192, v192
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v54, v54, v55, s21
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v42, 15, v42
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s21, 7, v33.h
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v33.h, 4, v44.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s17, v184, v184
	v_cmp_o_f32_e64 s19, v176, v176
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v55, -16, v42
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s20, v172, v172
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v69.l, v34.h
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_u32 s79, s77
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v55, v42, v55, s21
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e64 v42.l, v153.h
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v153, 0, v167
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v42, v42, 0, 8
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s21, 0, v42.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e64 v42.l, v154.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v56, v56, v57, s21
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v42, v42, 0, 8
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v57, v154, 20, 4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s21, 0, v42.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v42, v51
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v58, -16, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v42, v161, v42
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v57, v57, v58, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v51, 0, v42, s3
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v42, v44, 0, 8
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v44, v50
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v50.h, v34.h
	v_mov_b16_e32 v34.l, v51.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s21, 0, v42.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v44, v161, v44
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s22, v51, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v58, 1, v34
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v34.l, v33.h, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v44, 0, v44, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v42, v51, v58, 0x7fff
	v_mov_b16_e32 v51.h, v34.h
	v_mov_b16_e32 v50.l, v44.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s23, v44, v44
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v59, -16, v34
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s22
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v44, v44, v50, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v50, v56
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v56.h, v34.h
	v_cndmask_b16 v42.h, 0x7fff, v44.h, s23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v50, v161, v50
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v50, 0, v50, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v51.l, v50.h
	v_cmp_o_f32_e64 s24, v50, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v51, 1, v51
	v_add3_u32 v50, v50, v51, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v51, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v44.h, 0x7fff, v50.h, s24
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v51, v161, v51
	v_cvt_f32_i32_e32 v50, v52
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v52, v34, v59, s21
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s24, v195, v195
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v51, 0, v51, s3
	v_mov_b16_e32 v56.l, v51.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s25, v51, v51
	v_and_b32_e32 v56, 1, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v51, v51, v56, 0x7fff
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v56, 16, v75
	.loc	1 640 41                        ; attention_backward.py:640:41
	v_mul_f32_e32 v56, s76, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v36, v56, v36
	v_dual_mul_f32 v35, v56, v35 :: v_dual_mul_f32 v50, v161, v50
	v_dual_mul_f32 v38, v56, v38 :: v_dual_mul_f32 v45, v161, v45
	v_dual_mul_f32 v40, v56, v40 :: v_dual_mul_f32 v47, v161, v47
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v50, 0, v50, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v45, 0, v45, s3
	v_cndmask_b32_e64 v47, 0, v47, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v34.l, v50.h
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v37, v56, v37
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s22, v50, v50
	v_cmp_o_f32_e64 s21, v45, v45
	v_and_b32_e32 v58, 1, v34
	v_mov_b16_e32 v34.l, v45.h
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v39, v56, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v50, v50, v58, 0x7fff
	v_and_b32_e32 v58, 1, v34
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v34.l, v33.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v33, v45, v58, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v33.l, v43.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v45, -16, v34
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b16 v43.l, 0x7fff, v50.h, s22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v44.l, 0x7fff, v33.h, s21
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s23, 0, v33.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v33, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v55, v34, v45, s23
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v33, v161, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v50, 0, v33, s3
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v33.l, 4, v154.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v34.l, v50.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s22, v50, v50
	v_and_b32_e32 v45, 1, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v34.l, v33.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v33, v52
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v52.h, v34.h
	v_add3_u32 v45, v50, v45, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v50, v154, 0, 8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v33, v161, v33
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s22
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s22, v199, v199
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v33, 0, v33, s3
	v_mov_b16_e32 v52.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s21, v33, v33
	v_and_b32_e32 v52, 1, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v33, v33, v52, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v33.l, v50.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v50, -16, v34
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b16 v43.h, 0x7fff, v33.h, s21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s23, 0, v33.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v33, v46
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s21, v201, v201
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v50, v34, v50, s23
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v33, v161, v33
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s23, v197, v197
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v35, v35, v0, -v73
	scratch_load_b32 v0, off, off offset:88 ; 4-byte Folded Reload
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v46, 0, v33, s3
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v33.l, 4, v48.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v48, v48, 0, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v34.l, v46.h
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v57, v56, v84
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s9, v46, v46
	v_and_b32_e32 v52, 1, v34
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v34.l, v33.l, 15
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v33, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v46, v46, v52, 0x7fff
	v_mov_b16_e32 v52.h, v34.h
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v159, 0, v33, s18
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_dual_mul_f32 v56, v56, v85 :: v_dual_mul_f32 v33, v159, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v33, s59, v33
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v35, v33, 16, 1
	v_cmp_o_f32_e64 s18, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v33, v33, v35, 0x7fff
	.loc	1 651 43 is_stmt 1              ; attention_backward.py:651:43
	v_mov_b16_e32 v33.l, v48.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v48, v55
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e64 v55.l, v156.h
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s7, 0, v33.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s18
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s18, v180, v180
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v36, v36, v0, -v73
	scratch_load_b32 v0, off, off offset:92 ; 4-byte Folded Reload
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v35, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v154, 0, v35, s16
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v35, v154, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v35, s59, v35
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v36, v35, 16, 1
	v_cmp_o_f32_e64 s16, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_add3_u32 v58, v35, v36, 0x7fff
	.loc	1 703 34 is_stmt 1              ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v37, v37, v0, -v73
	scratch_load_b32 v0, off, off offset:80 ; 4-byte Folded Reload
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v35, v37
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v35, 0, v35, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v36, v35, v81
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v36, s59, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v37, v36, 16, 1
	v_cmp_o_f32_e64 s14, v36, v36
	v_add3_u32 v37, v36, v37, 0x7fff
	.loc	1 703 34 is_stmt 1              ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v38, v38, v0, -v73
	scratch_load_b32 v0, off, off offset:84 ; 4-byte Folded Reload
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v36, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v36, 0, v36, s12
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v38, v36, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v38, s59, v38
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v59, v38, 16, 1
	v_cmp_o_f32_e64 s12, v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_add3_u32 v59, v38, v59, 0x7fff
	.loc	1 703 34 is_stmt 1              ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v39, v39, v0, -v73
	scratch_load_b32 v0, off, off offset:72 ; 4-byte Folded Reload
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v38, v39
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v160, 0, v38, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v38, v160, v79
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v38, s59, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v39, v38, 16, 1
	v_cmp_o_f32_e64 s10, v38, v38
	v_add3_u32 v60, v38, v39, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v33.h, 0x7fff, v60.h, s10
	.loc	1 648 33 is_stmt 1              ; attention_backward.py:648:33
	v_bfe_u32 v60, v156, 16, 4
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v64, -16, v60
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v40, v40, v0, -v73
	scratch_load_b32 v0, off, off offset:76 ; 4-byte Folded Reload
	.loc	1 703 21 is_stmt 0              ; attention_backward.py:703:21
	v_exp_f32_e32 v38, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v38, 0, v38, s8
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v39, v38, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v39, s59, v39
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v40, v39, 16, 1
	v_cmp_o_f32_e64 s8, v39, v39
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v61, v39, v40, 0x7fff
	.loc	1 703 34 is_stmt 1              ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v57, v57, v0, -v73
	scratch_load_b32 v0, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v66, off, off offset:264
	scratch_load_b32 v67, off, off offset:268
	scratch_load_b32 v68, off, off offset:276
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v39, v57
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v153, v33
	ds_store_b16_d16_hi v153, v33 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.l, 0x7fff, v58.h, s16
	v_cndmask_b16 v33.h, 0x7fff, v61.h, s8
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v61, v156, 24, 4
	v_bfe_u32 v58, v156, 8, 4
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s16, v188, v188
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v39, 0, v39, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v40, v39, v77
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s10, v39, v39
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v40, s59, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v57, v40, 16, 1
	v_cmp_o_f32_e64 s6, v40, v40
	v_add3_u32 v57, v40, v57, 0x7fff
	.loc	1 703 34 is_stmt 1              ; attention_backward.py:703:34
	s_waitcnt vmcnt(3)
	v_fma_f32 v56, v56, v0, -v73
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(2)
	ds_store_b16 v66, v33
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.l, 0x7fff, v37.h, s14
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v40, v56
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v66, v33 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.h, 0x7fff, v57.h, s6
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v57, 15, v156
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(1)
	ds_store_b16 v67, v33
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.l, 0x7fff, v59.h, s12
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v59, v156, 20, 4
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v67, v33 offset:512
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v63, -16, v57
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s12, v204, v204
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v40, 0, v40, vcc_lo
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s14, v196, v196
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v56, v40, v76
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v56, s59, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v62, v56, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v56, v56
	v_add3_u32 v56, v56, v62, 0x7fff
	.loc	1 651 60 is_stmt 1              ; attention_backward.py:651:60
	v_or_b32_e32 v62, -16, v34
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.h, 0x7fff, v56.h, vcc_lo
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	ds_store_b16 v68, v33
	ds_store_b16_d16_hi v68, v33 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v90, off, off offset:280
	scratch_load_b32 v0, off, off offset:272
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v33, v49
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v37, v34, v62, s7
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s7, v47, v47
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	ds_load_b128 v[73:76], v0
	ds_load_b128 v[77:80], v91
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v33, v161, v33
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_load_b128 v[85:88], v90
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v56, 24, v156
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v33, 0, v33, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v34.l, v33.h
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v49, 1, v34
	v_mov_b16_e32 v34.l, v47.h
	v_add3_u32 v33, v33, v49, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v49, v50
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v50.h, v34.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v49, v161, v49
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v49, 0, v49, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v50.l, v49.h
	v_cmp_o_f32_e64 s6, v49, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v49, v49, v50, 0x7fff
	v_and_b32_e32 v50, 1, v34
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v34.l, 4, v53.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v46.h, 0x7fff, v49.h, s6
	v_add3_u32 v47, v47, v50, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v50, v53, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v47.l, 0x7fff, v33.h, vcc_lo
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v53, v156, 0, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v33.l, v50.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v50, -16, v34
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s8, 0, v33.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v33, v37
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v37.h, v34.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v50, v34, v50, s8
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v33, v161, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v33, 0, v33, s3
	v_mov_b16_e32 v37.l, v33.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v48, v161, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_and_b32_e32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v48, 0, v48, s3
	v_add3_u32 v33, v33, v37, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v52.l, v48.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v37, v54
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s11, v48, v48
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v54, 8, v156
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_dual_mul_f32 v37, v161, v37 :: v_dual_and_b32 v52, 1, v52
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v52, v48, v52, 0x7fff
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v37, 0, v37, s3
	v_cndmask_b16 v48.l, 0x7fff, v47.h, s7
	v_cndmask_b16 v47.h, 0x7fff, v33.h, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v33, v50
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v48.h, 0x7fff, v51.h, s25
	v_mov_b16_e32 v34.l, v37.h
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_alignbit_b32 v51, v156, v155, 24
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s6, v37, v37
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v33, v161, v33
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v45.h, 0x7fff, v52.h, s11
	v_and_b32_e32 v49, 1, v34
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v52, v155, 20, 4
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e64 v50.l, v155.h
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v33, 0, v33, s3
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v34.l, 4, v155.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v37, v37, v49, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s11, v40, v40
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s25, v193, v193
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v37.l, v33.h
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_cndmask_b16 v49.l, 0x7fff, v37.h, s6
	v_mov_b16_e32 v37.h, v34.h
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v34.l, v34.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v33, v33, v37, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v37, 0, v234
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v33.l, v155.l, 15
	v_mov_b32_e32 v234, v250
	v_mov_b32_e32 v250, v248
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v49.h, 0x7fff, v33.h, vcc_lo
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_load_b128 v[81:84], v37
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v253, v[42:45]
	ds_store_b128 v253, v[46:49] offset:16
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v46, 15, v155
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v43, 8, v155
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v42.l, v156.l, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b64 v[44:45], 24, v[155:156]
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v33.h, v155.h, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_bfe_u32 v47, v155, 16, 4
	v_bfe_u32 v49, v155, 8, 4
	.loc	1 650 58 is_stmt 1              ; attention_backward.py:650:58
	v_or_b32_e32 v45, -16, v46
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v33.l
	v_cmp_lt_u16_e64 s7, 7, v42.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v42.l, v43.l, 15
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v62, -16, v47
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s6, 7, v33.h
	.loc	1 615 36 is_stmt 1              ; attention_backward.py:615:36
	v_bfe_i32 v65, v44, 0, 8
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v33.l, 4, v44.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v33.h, v44.l, 15
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
	v_cndmask_b32_e64 v45, v47, v62, s6
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
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v48, v155, 0, 8
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v57, v58, v57, vcc_lo
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v58, -16, v61
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v42.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_dual_mul_f32 v45, v161, v45 :: v_dual_and_b32 v42, 15, v51
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v43.h, 4, v156.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v46, v46
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v58, v61, v58, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v51, -16, v42
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v33.h
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v33.h, 4, v43.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v46, v161, v46
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v49, v60, v64, s8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v45, 0, v45, s4
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v51, v42, v51, vcc_lo
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v42, v50, 0, 8
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v50, -16, v52
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v46, 0, v46, s4
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v49, v49
	v_mov_b32_e32 v248, v246
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v42.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v42, v55, 0, 8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v246, v235 :: v_dual_mul_f32 v49, v161, v49
	v_dual_mov_b32 v235, v167 :: v_dual_cndmask_b32 v50, v52, v50
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v52, -16, v59
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v42.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b32_e64 v49, 0, v49, s4
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v155.l, v34.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v50, v50
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v156.l, v34.h
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v42, v59, v52, vcc_lo
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v52.h, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v50, v161, v50
	v_cvt_f32_i32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v50, 0, v50, s4
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v42, v161, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v52.l, v50.h
	v_cmp_o_f32_e32 vcc_lo, v50, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v42, 0, v42, s4
	v_and_b32_e32 v52, 1, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s6, v42, v42
	v_add3_u32 v50, v50, v52, 0x7fff
	v_mov_b16_e32 v52.h, v34.h
	v_mov_b16_e32 v52.l, v42.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v52, 1, v52
	v_add3_u32 v52, v42, v52, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v42.l, v48.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v48, -16, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s7, 0, v42.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v42, v44
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v48, v34, v48, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v42, v161, v42
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v42, 0, v42, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v34.l, v42.h
	v_cmp_o_f32_e64 s7, v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v44, 1, v34
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v34.l, v33.h, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v42, v42, v44, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v44, v43, 0, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v55, -16, v34
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v44.h, 0x7fff, v50.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v42.l, v44.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_gt_i16_e64 s8, 0, v42.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s7
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v50, v34, v55, s8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v34.l, v46.h
	v_cmp_o_f32_e64 s8, v45, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v55, 1, v34
	v_mov_b16_e32 v34.l, v45.h
	v_add3_u32 v46, v46, v55, 0x7fff
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v55, 1, v34
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v34.l, v33.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v33, v48
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v48.h, v34.h
	v_cndmask_b16 v43.l, 0x7fff, v46.h, vcc_lo
	v_add3_u32 v45, v45, v55, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v33, v161, v33
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v44.l, 0x7fff, v45.h, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v33, 0, v33, s4
	v_mov_b16_e32 v48.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s7, v33, v33
	v_and_b32_e32 v48, 1, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v33, v33, v48, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v33.l, v65.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v48, -16, v34
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b16 v42.h, 0x7fff, v33.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s9, 0, v33.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v33, v51
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v46, v34, v48, s9
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v33, v161, v33
	v_cvt_f32_i32_e32 v48, v50
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v50.h, v34.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s9, v36, v36
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v46, v46
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v33, 0, v33, s4
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v48, v161, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v46, v161, v46
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v34.l, v33.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s7, v33, v33
	v_cndmask_b32_e64 v48, 0, v48, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v46, 0, v46, s4
	v_and_b32_e32 v45, 1, v34
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v34.l, v43.h, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v50.l, v48.h
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	v_add3_u32 v33, v33, v45, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v33.l, v53.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v50, 1, v50
	v_cndmask_b16 v45.l, 0x7fff, v33.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s8, 0, v33.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v33, v47
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v48, v48, v50, 0x7fff
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v50, -16, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v33, v161, v33
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v43.h, 0x7fff, v48.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v50, v34, v50, s8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s8, v46, v46
	v_cndmask_b32_e64 v47, 0, v33, s4
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v33.l, 4, v54.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v34.l, v47.h
	v_cmp_o_f32_e64 s7, v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v48, 1, v34
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v34.l, v33.l, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v33, v54, 0, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v51, -16, v34
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v33.l
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_add3_u32 v33, v47, v48, 0x7fff
	v_mov_b16_e32 v47.h, v34.h
	v_mov_b16_e32 v47.l, v46.h
	v_cndmask_b16 v48.h, 0x7fff, v52.h, s6
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v51, v34, v51, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v47, 1, v47
	v_add3_u32 v46, v46, v47, 0x7fff
	v_cndmask_b16 v46.l, 0x7fff, v33.h, s7
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v33, v57
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s7, v49, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v45.h, 0x7fff, v46.h, s8
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v33, v161, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v33, 0, v33, s4
	v_mov_b16_e32 v34.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s6, v33, v33
	v_and_b32_e32 v47, 1, v34
	v_mov_b16_e32 v34.l, v49.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v33, v33, v47, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v47, v50
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v50.h, v34.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v47, v161, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v47, 0, v47, s4
	v_mov_b16_e32 v50.l, v47.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v47, v47
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v47, v47, v50, 0x7fff
	v_and_b32_e32 v50, 1, v34
	v_cndmask_b16 v47.l, 0x7fff, v33.h, s6
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v34.l, 4, v56.l
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
	v_mov_b16_e32 v33.l, v50.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v50, -16, v34
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_mov_b16_e32 v49.h, v34.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s7, v154, v154
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s8, 0, v33.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v33, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v50, v34, v50, s8
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v33, v161, v33
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s8, v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v50, v50
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v33, 0, v33, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v50, v161, v50
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v49.l, v33.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v33, v33, v49, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v49, v58
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v47.h, 0x7fff, v33.h, vcc_lo
	v_cndmask_b32_e64 v33, 0, v50, s4
	v_mov_b16_e32 v50.h, v34.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v50.l, v33.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v49, v161, v49
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v50, 1, v50
	v_cndmask_b32_e64 v49, 0, v49, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v33, v33, v50, 0x7fff
	v_mov_b16_e32 v34.l, v49.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s6, v49, v49
	v_and_b32_e32 v51, 1, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v49, v49, v51, 0x7fff
	v_cndmask_b16 v49.l, 0x7fff, v49.h, s6
	v_cndmask_b16 v49.h, 0x7fff, v33.h, vcc_lo
	ds_store_b128 v253, v[42:45] offset:32
	ds_store_b128 v253, v[46:49] offset:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v162, v242 offset:256
	ds_load_u16_d16 v161, v242
	ds_load_u16_d16 v163, v242 offset:512
	ds_load_u16_d16 v164, v242 offset:768
	ds_load_u16_d16 v165, v242 offset:1024
	ds_load_u16_d16 v167, v242 offset:1536
	ds_load_u16_d16 v166, v242 offset:1280
	ds_load_u16_d16 v46, v242 offset:1088
	ds_load_u16_d16 v45, v242 offset:832
	v_mov_b32_e32 v253, v249
	v_mov_b32_e32 v249, v247
	v_mov_b32_e32 v247, v237
	v_mov_b32_e32 v237, v168
	ds_load_u16_d16 v168, v242 offset:1792
	ds_load_u16_d16 v50, v242 offset:2048
	ds_load_u16_d16 v51, v242 offset:2304
	ds_load_u16_d16 v52, v242 offset:2560
	ds_load_u16_d16 v54, v242 offset:3072
	ds_load_u16_d16 v60, v242 offset:2624
	ds_load_u16_d16 v59, v242 offset:2368
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v46, v242 offset:1216
	ds_load_u16_d16_hi v163, v242 offset:640
	ds_load_u16_d16_hi v164, v242 offset:896
	ds_load_u16_d16_hi v165, v242 offset:1152
	ds_load_u16_d16 v47, v242 offset:1344
	s_waitcnt lgkmcnt(6)
	ds_load_u16_d16_hi v60, v242 offset:2752
	ds_load_u16_d16_hi v167, v242 offset:1664
	ds_load_u16_d16_hi v166, v242 offset:1408
	ds_load_u16_d16 v42, v242 offset:64
	ds_load_u16_d16_hi v162, v242 offset:384
	ds_load_u16_d16_hi v161, v242 offset:128
	ds_load_u16_d16 v44, v242 offset:576
	ds_load_u16_d16 v43, v242 offset:320
	ds_load_u16_d16_hi v168, v242 offset:1920
	ds_load_u16_d16 v48, v242 offset:1600
	ds_load_u16_d16 v58, v242 offset:2112
	ds_load_u16_d16 v49, v242 offset:1856
	ds_load_u16_d16_hi v45, v242 offset:960
	ds_load_u16_d16 v57, v242 offset:3840
	ds_load_u16_d16 v55, v242 offset:3328
	ds_load_u16_d16 v53, v242 offset:2816
	ds_load_u16_d16 v56, v242 offset:3584
	ds_load_u16_d16 v65, v242 offset:3904
	ds_load_u16_d16 v62, v242 offset:3136
	ds_load_u16_d16 v64, v242 offset:3648
	ds_load_u16_d16 v63, v242 offset:3392
	ds_load_u16_d16_hi v54, v242 offset:3200
	ds_load_u16_d16 v61, v242 offset:2880
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v59, v242 offset:2496
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v47, v242 offset:1472
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v48, v242 offset:1728
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v49, v242 offset:1984
	ds_load_u16_d16_hi v50, v242 offset:2176
	ds_load_u16_d16_hi v58, v242 offset:2240
	ds_load_u16_d16_hi v42, v242 offset:192
	ds_load_u16_d16_hi v44, v242 offset:704
	ds_load_u16_d16_hi v43, v242 offset:448
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v55, v242 offset:3456
	ds_load_u16_d16_hi v51, v242 offset:2432
	ds_load_u16_d16_hi v52, v242 offset:2688
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v53, v242 offset:2944
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v56, v242 offset:3712
	ds_load_u16_d16_hi v57, v242 offset:3968
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v65, v242 offset:4032
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v61, v242 offset:3008
	ds_load_u16_d16_hi v62, v242 offset:3264
	ds_load_u16_d16_hi v64, v242 offset:3776
	ds_load_u16_d16_hi v63, v242 offset:3520
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v33, v159, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[161:168], v[81:88], v[25:32]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v159, v159
	v_cmp_o_f32_e64 s6, v160, v160
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v33, v159, v33, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[17:24], v[42:49], v[81:88], v[17:24]
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_barrier
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v44, v39, 16, 1
	v_bfe_u32 v45, v40, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v46, v214, 16, 1
	v_bfe_u32 v47, v210, 16, 1
	v_bfe_u32 v48, v206, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v44, v39, v44, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[50:57], v[73:80], v[25:32]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v45, v40, v45, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v46, v214, v46, 0x7fff
	v_add3_u32 v47, v210, v47, 0x7fff
	v_add3_u32 v48, v206, v48, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[17:24], v[58:65], v[73:80], v[17:24]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v73.h, 0x7fff, v33.h, vcc_lo
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v73.l, v34.h
	v_mov_b16_e32 v60.l, v34.h
	v_mov_b16_e32 v76.l, v34.h
	v_mov_b16_e32 v58.l, v34.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v61.h, 0x7fff, v44.h, s10
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v33, v159, v73
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v62.h, 0x7fff, v45.h, s11
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v44, v222, 16, 1
	v_bfe_u32 v45, v218, 16, 1
	v_bfe_u32 v49, v202, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v42, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v44, v222, v44, 0x7fff
	v_add3_u32 v45, v218, v45, 0x7fff
	v_add3_u32 v49, v202, v49, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v74, v33, v42, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v33, v160, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v50, v198, 16, 1
	v_bfe_u32 v52, v190, 16, 1
	v_bfe_u32 v53, v186, 16, 1
	v_bfe_u32 v54, v182, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v33, v160, v33, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v50, v198, v50, 0x7fff
	v_add3_u32 v52, v190, v52, 0x7fff
	v_add3_u32 v53, v186, v53, 0x7fff
	v_add3_u32 v54, v182, v54, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v76.h, 0x7fff, v33.h, s6
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v153, v73
	ds_store_b16_d16_hi v153, v76 offset:512
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v33, v160, v76
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v55, v178, 16, 1
	v_bfe_u32 v56, v174, 16, 1
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v59.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v57, v170, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v42, v33, 16, 1
	v_cmp_o_f32_e64 s6, v33, v33
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v55, v178, v55, 0x7fff
	v_add3_u32 v56, v174, v56, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v62.l, v34.h
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_add3_u32 v75, v33, v42, 0x7fff
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_bfe_u32 v33, v154, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v51, v194, 16, 1
	v_add3_u32 v57, v170, v57, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v40, v40, v62
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e32 v61.l, v34.h
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_add3_u32 v33, v154, v33, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v33.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v51, v194, v51, 0x7fff
	v_bfe_u32 v63, v188, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v39, v39, v61
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s7
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v64, v184, 16, 1
	v_bfe_u32 v65, v180, 16, 1
	v_add3_u32 v63, v188, v63, 0x7fff
	v_mov_b32_e32 v188, v70
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v42, v154, v33
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v66, v33
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v33, v35, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s10, v212, v212
	v_cmp_o_f32_e64 s11, v208, v208
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v43, v42, 16, 1
	v_cmp_o_f32_e64 s7, v42, v42
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v33, v35, v33, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.l, 0x7fff, v74.h, vcc_lo
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v230, v230
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v42, v42, v43, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v43, v38, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v64, v184, v64, 0x7fff
	v_add3_u32 v65, v180, v65, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v44.l, v34.h
	v_mov_b16_e32 v45.l, v34.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v43, v38, v43, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v46.l, v34.h
	v_mov_b16_e32 v47.l, v34.h
	v_mov_b16_e32 v48.l, v34.h
	v_mov_b16_e32 v49.l, v34.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v58.h, 0x7fff, v43.h, s8
	v_bfe_u32 v43, v36, 16, 1
	v_cmp_o_f32_e64 s8, v35, v35
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v57.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v168.h, 0x7fff, v63.h, s16
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v38, v38, v58
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v43, v36, v43, 0x7fff
	v_cndmask_b16 v59.h, 0x7fff, v33.h, s8
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.h, 0x7fff, v75.h, s6
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s6, v226, v226
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s8, v39, v39
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v60.h, 0x7fff, v43.h, s9
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v66, v58 offset:512
	ds_store_b16_d16_hi v67, v59
	ds_store_b16_d16_hi v67, v61 offset:512
	ds_store_b16_d16_hi v68, v60
	ds_store_b16_d16_hi v68, v62 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[81:84], v37
	ds_load_b128 v[85:88], v90
	ds_load_b128 v[73:76], v0
	ds_load_b128 v[77:80], v91
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v153, v33
	ds_store_b16_d16_hi v153, v33 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.l, 0x7fff, v42.h, s7
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v42, v230, 16, 1
	v_bfe_u32 v43, v226, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v35, v35, v59 :: v_dual_sub_f32 v36, v36, v60
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s7, v38, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v42, v230, v42, 0x7fff
	v_add3_u32 v43, v226, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v58, v35, 16, 1
	v_cmp_o_f32_e64 s9, v40, v40
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v59, v204, 16, 1
	v_cndmask_b16 v42.h, 0x7fff, v42.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v222, v222
	v_cndmask_b16 v43.h, 0x7fff, v43.h, s6
	v_cmp_o_f32_e64 s6, v194, v194
	v_bfe_u32 v60, v200, 16, 1
	v_bfe_u32 v61, v196, 16, 1
	v_cndmask_b16 v44.h, 0x7fff, v44.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v218, v218
	v_cndmask_b16 v51.h, 0x7fff, v51.h, s6
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s6, v36, v36
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v62, v192, 16, 1
	v_add3_u32 v59, v204, v59, 0x7fff
	v_cndmask_b16 v45.h, 0x7fff, v45.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v214, v214
	v_add3_u32 v60, v200, v60, 0x7fff
	v_add3_u32 v61, v196, v61, 0x7fff
	v_add3_u32 v62, v192, v62, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v42.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v46.h, 0x7fff, v46.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v210, v210
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v43.l, v34.h
	v_mov_b32_e32 v192, v72
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v154.h, 0x7fff, v59.h, s12
	v_cndmask_b16 v155.h, 0x7fff, v60.h, s13
	v_cndmask_b16 v47.h, 0x7fff, v47.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v206, v206
	v_cndmask_b16 v156.h, 0x7fff, v61.h, s14
	v_cndmask_b16 v167.h, 0x7fff, v62.h, s15
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v50.l, v34.h
	v_mov_b16_e32 v51.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v48.h, 0x7fff, v48.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v202, v202
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v52.l, v34.h
	v_mov_b16_e32 v53.l, v34.h
	v_mov_b16_e32 v54.l, v34.h
	v_mov_b16_e32 v55.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v49.h, 0x7fff, v49.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v198, v198
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v56.l, v34.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v148, v148, v47
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v153.l, v34.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v144, v144, v49
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v50.h, 0x7fff, v50.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v190, v190
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v49.l, v154.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v167.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s12, v219, v219
	v_cmp_o_f32_e64 s13, v217, v217
	v_cndmask_b16 v52.h, 0x7fff, v52.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v186, v186
	v_cmp_o_f32_e64 s14, v215, v215
	v_cmp_o_f32_e64 s15, v213, v213
	v_cmp_o_f32_e64 s16, v211, v211
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v70.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v53.h, 0x7fff, v53.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v182, v182
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v72.l, v34.h
	v_mov_b16_e64 v154.l, v34.h
	v_mov_b16_e64 v168.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v54.h, 0x7fff, v54.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v178, v178
	v_cndmask_b16 v55.h, 0x7fff, v55.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v174, v174
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v142, v142, v48
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v56.h, 0x7fff, v56.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v170, v170
	v_cndmask_b16 v170.h, 0x7fff, v64.h, s17
	v_cmp_o_f32_e64 s17, v209, v209
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v170.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v57.h, 0x7fff, v57.h, vcc_lo
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	v_add3_u32 v35, v35, v58, 0x7fff
	v_bfe_u32 v58, v36, 16, 1
	v_mov_b32_e32 v190, v71
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v71.l, v34.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v36, v36, v58, 0x7fff
	v_bfe_u32 v58, v38, 16, 1
	v_add3_u32 v38, v38, v58, 0x7fff
	v_bfe_u32 v58, v39, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v33.h, 0x7fff, v38.h, s7
	v_add3_u32 v39, v39, v58, 0x7fff
	v_bfe_u32 v58, v40, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v66, v33
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.l, 0x7fff, v35.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v66, v33 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.h, 0x7fff, v39.h, s8
	v_add3_u32 v40, v40, v58, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v35, v228, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v67, v33
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.l, 0x7fff, v36.h, s6
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v67, v33 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.h, 0x7fff, v40.h, s9
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v68, v33
	ds_store_b16_d16_hi v68, v33 offset:512
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v33, v232, 16, 1
	v_bfe_u32 v36, v224, 16, 1
	v_bfe_u32 v38, v220, 16, 1
	v_bfe_u32 v39, v216, 16, 1
	v_bfe_u32 v40, v212, 16, 1
	v_bfe_u32 v58, v208, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v232, v232
	v_cmp_o_f32_e64 s6, v228, v228
	v_cmp_o_f32_e64 s7, v224, v224
	v_cmp_o_f32_e64 s8, v220, v220
	v_cmp_o_f32_e64 s9, v216, v216
	v_add3_u32 v33, v232, v33, 0x7fff
	v_add3_u32 v35, v228, v35, 0x7fff
	v_add3_u32 v36, v224, v36, 0x7fff
	v_add3_u32 v38, v220, v38, 0x7fff
	v_add3_u32 v39, v216, v39, 0x7fff
	v_add3_u32 v40, v212, v40, 0x7fff
	v_add3_u32 v58, v208, v58, 0x7fff
	v_bfe_u32 v66, v176, 16, 1
	v_bfe_u32 v67, v172, 16, 1
	v_cndmask_b16 v33.h, 0x7fff, v33.h, vcc_lo
	v_cndmask_b16 v68.h, 0x7fff, v35.h, s6
	v_cndmask_b16 v69.h, 0x7fff, v36.h, s7
	v_add3_u32 v66, v176, v66, 0x7fff
	v_add3_u32 v67, v172, v67, 0x7fff
	v_cndmask_b16 v70.h, 0x7fff, v38.h, s8
	v_cndmask_b16 v71.h, 0x7fff, v39.h, s9
	v_cndmask_b16 v72.h, 0x7fff, v40.h, s10
	v_cndmask_b16 v153.h, 0x7fff, v58.h, s11
	v_cndmask_b16 v172.h, 0x7fff, v65.h, s18
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[58:61], v37
	ds_load_b128 v[62:65], v90
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s19
	v_cndmask_b16 v67.h, 0x7fff, v67.h, s20
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v48.l, v153.h
	v_mov_b16_e32 v47.l, v72.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v152, v152, v45
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v45.l, v70.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v150, v150, v44
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v44.l, v69.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v138, v138, v42
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v42.l, v33.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v35, v108, v57
	v_sub_f32_e32 v140, v140, v43
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v43.l, v68.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v33.l, v34.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v146, v146, v46
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e32 v46.l, v71.h
	v_mov_b16_e32 v57.l, v67.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v38, v106, v56
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v56.l, v66.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v39, v112, v55
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v55.l, v172.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v106, v110, v54
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v54.l, v170.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v108, v116, v53
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v53.l, v168.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v110, v114, v52
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v52.l, v167.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v112, v120, v51
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v51.l, v156.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v114, v118, v50
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v50.l, v155.h
	v_wmma_f32_16x16x16_bf16 v[9:16], v[42:49], v[81:88], v[9:16]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v36, v233, 16, 1
	v_bfe_u32 v37, v231, 16, 1
	v_bfe_u32 v40, v229, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v233, v233
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[50:57], v[73:80], v[9:16]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v36, v233, v36, 0x7fff
	v_cmp_o_f32_e64 s6, v231, v231
	v_add3_u32 v37, v231, v37, 0x7fff
	v_cmp_o_f32_e64 s7, v229, v229
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[42:49], v[58:65], v[9:16]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v42, v227, 16, 1
	v_add3_u32 v40, v229, v40, 0x7fff
	v_cmp_o_f32_e64 s8, v227, v227
	v_cmp_o_f32_e64 s9, v225, v225
	v_cmp_o_f32_e64 s10, v223, v223
	v_add3_u32 v43, v227, v42, 0x7fff
	v_bfe_u32 v42, v225, 16, 1
	v_cmp_o_f32_e64 s11, v221, v221
	v_cmp_o_f32_e64 s18, v207, v207
	v_cmp_o_f32_e64 s19, v205, v205
	v_cmp_o_f32_e64 s20, v203, v203
	v_add3_u32 v116, v225, v42, 0x7fff
	v_bfe_u32 v42, v223, 16, 1
	v_cndmask_b16 v43.h, 0x7fff, v43.h, s8
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v43.l, v34.h
	v_mov_b16_e32 v66.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v116.h, 0x7fff, v116.h, s9
	v_add3_u32 v44, v223, v42, 0x7fff
	v_bfe_u32 v42, v221, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v44.l, v34.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v136, v136, v43
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v68.l, v34.h
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s10
	v_add3_u32 v118, v221, v42, 0x7fff
	v_bfe_u32 v42, v219, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v33, v137, v33
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e32 v116.l, v34.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v130, v130, v44
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v118.h, 0x7fff, v118.h, s11
	v_add3_u32 v45, v219, v42, 0x7fff
	v_bfe_u32 v42, v217, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v45.l, v34.h
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v44.l, v116.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v118.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v45.h, 0x7fff, v45.h, s12
	v_add3_u32 v120, v217, v42, 0x7fff
	v_bfe_u32 v42, v215, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v120.l, v34.h
	v_mov_b16_e64 v172.l, v34.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v132, v132, v45
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v120.h, 0x7fff, v120.h, s13
	v_add3_u32 v46, v215, v42, 0x7fff
	v_bfe_u32 v42, v213, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v46.l, v34.h
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v45.l, v118.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v67.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v46.h, 0x7fff, v46.h, s14
	v_add3_u32 v174, v213, v42, 0x7fff
	v_bfe_u32 v42, v211, 16, 1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s14, v146, v146
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v174.l, v34.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v126, v126, v46
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v174.h, 0x7fff, v174.h, s15
	v_add3_u32 v47, v211, v42, 0x7fff
	v_bfe_u32 v42, v209, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v47.l, v34.h
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v46.l, v120.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v47.h, 0x7fff, v47.h, s16
	v_add3_u32 v176, v209, v42, 0x7fff
	v_bfe_u32 v42, v207, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v176.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v128, v128, v47
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v176.h, 0x7fff, v176.h, s17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v48, v207, v42, 0x7fff
	v_bfe_u32 v42, v205, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v48.l, v34.h
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v47.l, v174.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v48.h, 0x7fff, v48.h, s18
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v178, v205, v42, 0x7fff
	v_bfe_u32 v42, v203, 16, 1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s18, v142, v142
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v178.l, v34.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v122, v122, v48
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v178.h, 0x7fff, v178.h, s19
	v_add3_u32 v49, v203, v42, 0x7fff
	v_bfe_u32 v42, v201, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v49.l, v34.h
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v48.l, v176.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v49.h, 0x7fff, v49.h, s20
	v_add3_u32 v180, v201, v42, 0x7fff
	v_bfe_u32 v42, v199, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v180.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v124, v124, v49
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v49.l, v178.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v159, v199, v42, 0x7fff
	v_bfe_u32 v42, v197, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v159.l, v34.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v159.h, 0x7fff, v159.h, s22
	v_add3_u32 v182, v197, v42, 0x7fff
	v_bfe_u32 v42, v195, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v182.l, v34.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v160, v195, v42, 0x7fff
	v_bfe_u32 v42, v193, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v160.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v160.h, 0x7fff, v160.h, s24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v184, v193, v42, 0x7fff
	scratch_load_b128 v[193:196], off, off offset:48 ; 16-byte Folded Reload
	v_bfe_u32 v42, v191, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v184.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v161, v191, v42, 0x7fff
	v_bfe_u32 v42, v189, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v161.l, v34.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v161.h, 0x7fff, v161.h, s26
	v_add3_u32 v186, v189, v42, 0x7fff
	v_bfe_u32 v42, v187, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v162, v187, v42, 0x7fff
	v_bfe_u32 v42, v185, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v162.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v162.h, 0x7fff, v162.h, s28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v185, v185, v42, 0x7fff
	v_bfe_u32 v42, v183, 16, 1
	v_add3_u32 v163, v183, v42, 0x7fff
	v_bfe_u32 v42, v181, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v163.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v183.h, 0x7fff, v186.h, s27
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v183.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v163.h, 0x7fff, v163.h, s30
	v_add3_u32 v181, v181, v42, 0x7fff
	v_bfe_u32 v42, v179, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v181.l, v34.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v181.h, 0x7fff, v181.h, s31
	v_add3_u32 v164, v179, v42, 0x7fff
	v_bfe_u32 v42, v177, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v164.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v179.h, 0x7fff, v180.h, s21
	v_cndmask_b16 v180.h, 0x7fff, v182.h, s23
	v_cndmask_b16 v164.h, 0x7fff, v164.h, s33
	v_add3_u32 v177, v177, v42, 0x7fff
	v_bfe_u32 v42, v175, 16, 1
	v_cndmask_b16 v182.h, 0x7fff, v184.h, s25
	v_cndmask_b16 v184.h, 0x7fff, v185.h, s29
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v179.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v177.h, 0x7fff, v177.h, s34
	v_add3_u32 v165, v175, v42, 0x7fff
	v_bfe_u32 v42, v173, 16, 1
	v_cndmask_b16 v175.h, 0x7fff, v40.h, s7
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v165.l, v34.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v40, v100, v164
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v165.h, 0x7fff, v165.h, s35
	v_add3_u32 v173, v173, v42, 0x7fff
	v_bfe_u32 v42, v171, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v43.l, v175.h
	v_mov_b16_e64 v164.l, v181.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v175.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v173.h, 0x7fff, v173.h, s36
	v_add3_u32 v166, v171, v42, 0x7fff
	v_cndmask_b16 v42.h, 0x7fff, v37.h, s6
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v42.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v171.h, 0x7fff, v36.h, vcc_lo
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v166.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v166.h, 0x7fff, v166.h, s37
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v37, v94, v165
	v_sub_f32_e32 v134, v134, v42
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v42.l, v171.h
	v_mov_b16_e64 v165.l, v177.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v36, v96, v166
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v166.l, v173.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v94, v98, v163
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v163.l, v184.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v96, v104, v162
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v162.l, v183.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v98, v102, v161
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v161.l, v182.h
	v_wmma_f32_16x16x16_bf16 v[1:8], v[42:49], v[81:88], v[1:8]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v171.l, v34.h
	v_mov_b16_e64 v177.l, v34.h
	v_mov_b16_e64 v173.l, v34.h
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v93, v177
	s_waitcnt vmcnt(0)
	v_sub_f32_e32 v92, v196, v160
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v160.l, v180.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v90, v194, v159
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v159.l, v179.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[159:166], v[73:80], v[1:8]
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[42:49], v[58:65], v[1:8]
	ds_load_b128 v[42:45], v0
	ds_load_b128 v[46:49], v91
	scratch_load_b32 v64, off, off          ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[50:57], v[42:49], v[9:16]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[159:166], v[42:49], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v42, v139, v68 :: v_dual_sub_f32 v43, v149, v69
	v_sub_f32_e32 v45, v145, v71
	v_dual_mov_b32 v71, v190 :: v_dual_sub_f32 v44, v151, v70
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v50, v42, 16, 1
	v_cmp_o_f32_e64 s7, v42, v42
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v46, v147, v72
	v_mov_b32_e32 v160, v240
	v_mov_b32_e32 v240, v241
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v50, v42, v50, 0x7fff
	v_bfe_u32 v42, v140, 16, 1
	v_mov_b32_e32 v241, v245
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v47, v141, v153 :: v_dual_sub_f32 v48, v143, v154
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v49, v33, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v51, v140, v42, 0x7fff
	v_bfe_u32 v42, v43, 16, 1
	v_mov_b32_e32 v161, v239
	v_cmp_o_f32_e64 s6, v138, v138
	v_add3_u32 v33, v33, v49, 0x7fff
	v_bfe_u32 v49, v138, 16, 1
	v_add3_u32 v52, v43, v42, 0x7fff
	v_bfe_u32 v42, v150, 16, 1
	v_cmp_o_f32_e64 s8, v140, v140
	v_cmp_o_f32_e64 s9, v43, v43
	v_add3_u32 v49, v138, v49, 0x7fff
	v_cmp_o_f32_e64 s10, v150, v150
	v_add3_u32 v53, v150, v42, 0x7fff
	v_bfe_u32 v42, v44, 16, 1
	v_cmp_o_f32_e64 s11, v44, v44
	v_cmp_o_f32_e64 s12, v152, v152
	v_cmp_o_f32_e64 s13, v45, v45
	v_cmp_o_f32_e64 s15, v46, v46
	v_add3_u32 v54, v44, v42, 0x7fff
	v_bfe_u32 v42, v152, 16, 1
	v_cmp_o_f32_e64 s16, v148, v148
	v_cmp_o_f32_e64 s17, v47, v47
	v_cmp_o_f32_e64 s19, v48, v48
	v_cmp_o_f32_e64 s20, v144, v144
	v_add3_u32 v55, v152, v42, 0x7fff
	v_bfe_u32 v42, v45, 16, 1
	v_cndmask_b16 v43.l, 0x7fff, v50.h, s7
	v_cndmask_b16 v43.h, 0x7fff, v51.h, s8
	v_cndmask_b16 v44.l, 0x7fff, v52.h, s9
	v_cndmask_b16 v44.h, 0x7fff, v53.h, s10
	v_add3_u32 v56, v45, v42, 0x7fff
	v_bfe_u32 v42, v146, 16, 1
	v_cndmask_b16 v45.l, 0x7fff, v54.h, s11
	v_cndmask_b16 v45.h, 0x7fff, v55.h, s12
	v_cmp_o_f32_e64 s8, v136, v136
	v_cmp_o_f32_e64 s10, v130, v130
	v_add3_u32 v57, v146, v42, 0x7fff
	v_bfe_u32 v42, v46, 16, 1
	v_cmp_o_f32_e64 s12, v132, v132
	v_mov_b32_e32 v166, v157
	v_mov_b32_e32 v164, v169
	v_mov_b32_e32 v162, v238
	v_add3_u32 v58, v46, v42, 0x7fff
	v_bfe_u32 v42, v148, 16, 1
	v_cndmask_b16 v46.l, 0x7fff, v56.h, s13
	v_cndmask_b16 v46.h, 0x7fff, v57.h, s14
	v_cmp_o_f32_e64 s14, v126, v126
	s_clause 0x7                            ; 32-byte Folded Reload
	scratch_load_b32 v245, off, off offset:328
	scratch_load_b32 v157, off, off offset:332
	scratch_load_b32 v169, off, off offset:324
	scratch_load_b32 v159, off, off offset:320
	scratch_load_b32 v239, off, off offset:316
	scratch_load_b32 v238, off, off offset:312
	scratch_load_b32 v165, off, off offset:308
	scratch_load_b32 v163, off, off offset:304
	v_add3_u32 v59, v148, v42, 0x7fff
	v_bfe_u32 v42, v47, 16, 1
	scratch_load_b32 v69, off, off offset:360 ; 4-byte Folded Reload
	v_mov_b32_e32 v70, v188
	v_mov_b32_e32 v72, v192
	v_add3_u32 v60, v47, v42, 0x7fff
	v_bfe_u32 v42, v142, 16, 1
	v_cndmask_b16 v47.l, 0x7fff, v58.h, s15
	v_cndmask_b16 v47.h, 0x7fff, v59.h, s16
	v_cmp_o_f32_e64 s16, v128, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v61, v142, v42, 0x7fff
	v_bfe_u32 v42, v48, 16, 1
	v_add3_u32 v62, v48, v42, 0x7fff
	v_bfe_u32 v42, v144, 16, 1
	v_cndmask_b16 v48.l, 0x7fff, v60.h, s17
	v_cndmask_b16 v48.h, 0x7fff, v61.h, s18
	v_cmp_o_f32_e64 s18, v122, v122
	v_cndmask_b16 v49.l, 0x7fff, v62.h, s19
	v_add3_u32 v63, v144, v42, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v33.h, vcc_lo
	v_cndmask_b16 v42.h, 0x7fff, v49.h, s6
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v33, v133, v171
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v134, v134
	v_cndmask_b16 v49.h, 0x7fff, v63.h, s20
	v_cmp_o_f32_e64 s20, v124, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[42:49], v[81:88], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v42, v135, v175 :: v_dual_sub_f32 v43, v129, v116
	v_dual_sub_f32 v44, v131, v118 :: v_dual_sub_f32 v45, v125, v120
	v_sub_f32_e32 v46, v127, v174
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v50, v42, 16, 1
	v_cmp_o_f32_e64 s7, v42, v42
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v47, v121, v176 :: v_dual_sub_f32 v48, v123, v178
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v49, v33, 16, 1
	v_add3_u32 v50, v42, v50, 0x7fff
	v_bfe_u32 v42, v136, 16, 1
	v_cmp_o_f32_e64 s9, v43, v43
	v_cmp_o_f32_e64 s11, v44, v44
	v_add3_u32 v33, v33, v49, 0x7fff
	v_bfe_u32 v49, v134, 16, 1
	v_add3_u32 v51, v136, v42, 0x7fff
	v_bfe_u32 v42, v43, 16, 1
	v_cmp_o_f32_e64 s13, v45, v45
	v_cmp_o_f32_e64 s15, v46, v46
	v_add3_u32 v49, v134, v49, 0x7fff
	v_cmp_o_f32_e64 s17, v47, v47
	v_add3_u32 v52, v43, v42, 0x7fff
	v_bfe_u32 v42, v130, 16, 1
	v_cmp_o_f32_e64 s19, v48, v48
	v_cndmask_b16 v43.l, 0x7fff, v50.h, s7
	v_cndmask_b16 v43.h, 0x7fff, v51.h, s8
	v_cmp_o_f32_e64 s8, v112, v112
	v_add3_u32 v53, v130, v42, 0x7fff
	v_bfe_u32 v42, v44, 16, 1
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v116, off, off offset:376
	scratch_load_b32 v118, off, off offset:384
	scratch_load_b32 v121, off, off offset:392
	v_add3_u32 v54, v44, v42, 0x7fff
	v_bfe_u32 v42, v132, 16, 1
	v_cndmask_b16 v44.l, 0x7fff, v52.h, s9
	v_cndmask_b16 v44.h, 0x7fff, v53.h, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v55, v132, v42, 0x7fff
	v_bfe_u32 v42, v45, 16, 1
	v_add3_u32 v56, v45, v42, 0x7fff
	v_bfe_u32 v42, v126, 16, 1
	v_cndmask_b16 v45.l, 0x7fff, v54.h, s11
	v_cndmask_b16 v45.h, 0x7fff, v55.h, s12
	v_cmp_o_f32_e64 s12, v108, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v57, v126, v42, 0x7fff
	v_bfe_u32 v42, v46, 16, 1
	v_add3_u32 v58, v46, v42, 0x7fff
	v_bfe_u32 v42, v128, 16, 1
	v_cndmask_b16 v46.l, 0x7fff, v56.h, s13
	v_cndmask_b16 v46.h, 0x7fff, v57.h, s14
	v_cmp_o_f32_e64 s14, v106, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v59, v128, v42, 0x7fff
	v_bfe_u32 v42, v47, 16, 1
	v_add3_u32 v60, v47, v42, 0x7fff
	v_bfe_u32 v42, v122, 16, 1
	v_cndmask_b16 v47.l, 0x7fff, v58.h, s15
	v_cndmask_b16 v47.h, 0x7fff, v59.h, s16
	v_cmp_o_f32_e64 s16, v39, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v61, v122, v42, 0x7fff
	v_bfe_u32 v42, v48, 16, 1
	v_add3_u32 v62, v48, v42, 0x7fff
	v_bfe_u32 v42, v124, 16, 1
	v_cndmask_b16 v48.l, 0x7fff, v60.h, s17
	v_cndmask_b16 v48.h, 0x7fff, v61.h, s18
	v_cmp_o_f32_e64 s18, v38, v38
	v_cndmask_b16 v49.l, 0x7fff, v62.h, s19
	v_add3_u32 v63, v124, v42, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v33.h, vcc_lo
	v_cndmask_b16 v42.h, 0x7fff, v49.h, s6
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v33, v117, v155
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s10, v110, v110
	v_cndmask_b16 v49.h, 0x7fff, v63.h, s20
	v_cmp_o_f32_e64 s20, v35, v35
	scratch_load_b32 v117, off, off offset:380 ; 4-byte Folded Reload
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[42:49], v[81:88], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v42, v119, v156 :: v_dual_sub_f32 v43, v113, v167
	v_dual_sub_f32 v44, v115, v168 :: v_dual_sub_f32 v45, v109, v170
	v_sub_f32_e32 v46, v111, v172
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v50, v42, 16, 1
	v_cmp_o_f32_e64 s7, v42, v42
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v47, v105, v66 :: v_dual_sub_f32 v48, v107, v67
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v49, v33, 16, 1
	v_add3_u32 v50, v42, v50, 0x7fff
	v_bfe_u32 v42, v112, 16, 1
	v_cmp_o_f32_e64 s6, v114, v114
	v_cmp_o_f32_e64 s9, v43, v43
	v_add3_u32 v33, v33, v49, 0x7fff
	v_bfe_u32 v49, v114, 16, 1
	v_add3_u32 v51, v112, v42, 0x7fff
	v_bfe_u32 v42, v43, 16, 1
	v_cmp_o_f32_e64 s11, v44, v44
	v_cmp_o_f32_e64 s13, v45, v45
	v_add3_u32 v49, v114, v49, 0x7fff
	v_cmp_o_f32_e64 s15, v46, v46
	v_add3_u32 v52, v43, v42, 0x7fff
	v_bfe_u32 v42, v110, 16, 1
	v_cmp_o_f32_e64 s17, v47, v47
	v_cmp_o_f32_e64 s19, v48, v48
	v_cndmask_b16 v43.l, 0x7fff, v50.h, s7
	v_cndmask_b16 v43.h, 0x7fff, v51.h, s8
	v_add3_u32 v53, v110, v42, 0x7fff
	v_bfe_u32 v42, v44, 16, 1
	s_clause 0x9                            ; 40-byte Folded Reload
	scratch_load_b32 v88, off, off offset:420
	scratch_load_b32 v87, off, off offset:416
	scratch_load_b32 v86, off, off offset:412
	scratch_load_b32 v85, off, off offset:408
	scratch_load_b32 v84, off, off offset:404
	scratch_load_b32 v83, off, off offset:400
	scratch_load_b32 v82, off, off offset:396
	scratch_load_b32 v114, off, off offset:368
	scratch_load_b32 v110, off, off offset:348
	scratch_load_b32 v112, off, off offset:356
	v_add3_u32 v54, v44, v42, 0x7fff
	v_bfe_u32 v42, v108, 16, 1
	v_cndmask_b16 v44.l, 0x7fff, v52.h, s9
	v_cndmask_b16 v44.h, 0x7fff, v53.h, s10
	v_cmp_o_f32_e64 s10, v98, v98
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v119, off, off offset:388
	scratch_load_b32 v113, off, off offset:364
	scratch_load_b32 v107, off, off offset:336
	v_add3_u32 v55, v108, v42, 0x7fff
	v_bfe_u32 v42, v45, 16, 1
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v108, off, off offset:340
	scratch_load_b32 v170, off, off offset:428
	scratch_load_b32 v109, off, off offset:344
	v_mov_b32_e32 v167, v235
	v_mov_b32_e32 v235, v246
	v_add3_u32 v56, v45, v42, 0x7fff
	v_bfe_u32 v42, v106, 16, 1
	v_cndmask_b16 v45.l, 0x7fff, v54.h, s11
	v_cndmask_b16 v45.h, 0x7fff, v55.h, s12
	v_mov_b32_e32 v246, v248
	v_mov_b32_e32 v248, v250
	v_add3_u32 v57, v106, v42, 0x7fff
	v_bfe_u32 v42, v46, 16, 1
	v_mov_b32_e32 v250, v234
	v_mov_b32_e32 v234, v254
	v_mov_b32_e32 v254, v243
	v_mov_b32_e32 v168, v237
	v_add3_u32 v58, v46, v42, 0x7fff
	v_bfe_u32 v42, v39, 16, 1
	v_cndmask_b16 v46.l, 0x7fff, v56.h, s13
	v_cndmask_b16 v46.h, 0x7fff, v57.h, s14
	v_cmp_o_f32_e64 s14, v94, v94
	v_mov_b32_e32 v237, v247
	v_add3_u32 v39, v39, v42, 0x7fff
	v_bfe_u32 v42, v47, 16, 1
	v_mov_b32_e32 v247, v249
	v_mov_b32_e32 v249, v253
	v_mov_b32_e32 v253, v251
	v_mov_b32_e32 v251, v158
	v_add3_u32 v59, v47, v42, 0x7fff
	v_bfe_u32 v42, v38, 16, 1
	v_cndmask_b16 v47.l, 0x7fff, v58.h, s15
	v_cndmask_b16 v47.h, 0x7fff, v39.h, s16
	v_cmp_o_f32_e64 s16, v40, v40
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v39, v103, v183
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v38, v38, v42, 0x7fff
	v_bfe_u32 v42, v48, 16, 1
	v_cmp_o_f32_e64 s12, v96, v96
	v_mov_b32_e32 v158, v252
	v_cmp_o_f32_e64 s11, v39, v39
	v_mov_b32_e32 v252, v236
	v_add3_u32 v60, v48, v42, 0x7fff
	v_bfe_u32 v42, v35, 16, 1
	v_cndmask_b16 v48.l, 0x7fff, v59.h, s17
	v_cndmask_b16 v48.h, 0x7fff, v38.h, s18
	v_cmp_o_f32_e64 s17, v34, v34
	v_cndmask_b16 v49.l, 0x7fff, v60.h, s19
	v_add3_u32 v35, v35, v42, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v33.h, vcc_lo
	v_cndmask_b16 v42.h, 0x7fff, v49.h, s6
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v33, v193, v179
	v_sub_f32_e32 v38, v101, v182
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v49.h, 0x7fff, v35.h, s20
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v35, v195, v180
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s20, v36, v36
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_cmp_o_f32_e64 s9, v38, v38
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[42:49], v[73:80], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v43, v99, v181 :: v_dual_sub_f32 v42, v97, v184
	v_sub_f32_e32 v44, v95, v173
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v48, v39, 16, 1
	v_bfe_u32 v45, v33, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_bfe_u32 v50, v43, 16, 1
	v_cmp_o_f32_e64 s15, v43, v43
	v_bfe_u32 v49, v42, 16, 1
	v_bfe_u32 v47, v38, 16, 1
	v_add3_u32 v39, v39, v48, 0x7fff
	v_add3_u32 v43, v43, v50, 0x7fff
	v_bfe_u32 v50, v40, 16, 1
	v_bfe_u32 v48, v96, 16, 1
	v_cmp_o_f32_e64 s13, v42, v42
	v_add3_u32 v42, v42, v49, 0x7fff
	v_bfe_u32 v49, v94, 16, 1
	v_add3_u32 v40, v40, v50, 0x7fff
	v_bfe_u32 v50, v34, 16, 1
	v_cmp_o_f32_e64 s19, v44, v44
	v_add3_u32 v33, v33, v45, 0x7fff
	v_bfe_u32 v45, v90, 16, 1
	v_add3_u32 v38, v38, v47, 0x7fff
	v_add3_u32 v50, v34, v50, 0x7fff
	v_bfe_u32 v34, v37, 16, 1
	v_bfe_u32 v47, v98, 16, 1
	v_bfe_u32 v46, v35, 16, 1
	v_add3_u32 v48, v96, v48, 0x7fff
	v_add3_u32 v49, v94, v49, 0x7fff
	v_add3_u32 v51, v37, v34, 0x7fff
	v_bfe_u32 v34, v44, 16, 1
	v_cmp_o_f32_e64 s6, v90, v90
	v_add3_u32 v45, v90, v45, 0x7fff
	v_cmp_o_f32_e64 s18, v37, v37
	v_add3_u32 v47, v98, v47, 0x7fff
	v_add3_u32 v44, v44, v34, 0x7fff
	v_bfe_u32 v34, v36, 16, 1
	scratch_load_b64 v[97:98], off, off offset:284 ; 8-byte Folded Reload
	v_cmp_o_f32_e64 s7, v35, v35
	v_add3_u32 v35, v35, v46, 0x7fff
	scratch_load_b64 v[98:99], off, off offset:8 ; 8-byte Folded Reload
	v_add3_u32 v52, v36, v34, 0x7fff
	v_cndmask_b16 v36.h, 0x7fff, v48.h, s12
	v_cndmask_b16 v37.h, 0x7fff, v49.h, s14
	s_clause 0x3                            ; 20-byte Folded Reload
	scratch_load_b64 v[48:49], off, off offset:16
	scratch_load_b32 v101, off, off offset:296
	scratch_load_b32 v102, off, off offset:300
	scratch_load_b32 v100, off, off offset:292
	v_cndmask_b16 v35.l, 0x7fff, v38.h, s9
	v_cndmask_b16 v38.h, 0x7fff, v40.h, s16
	v_cndmask_b16 v39.l, 0x7fff, v50.h, s17
	scratch_load_b64 v[49:50], off, off offset:24 ; 8-byte Folded Reload
	v_cndmask_b16 v40.h, 0x7fff, v52.h, s20
	s_clause 0x3                            ; 20-byte Folded Reload
	scratch_load_b64 v[52:53], off, off offset:40
	scratch_load_b32 v94, off, off offset:424
	scratch_load_b32 v115, off, off offset:372
	scratch_load_b32 v111, off, off offset:352
	v_cndmask_b16 v33.l, 0x7fff, v33.h, vcc_lo
	v_cndmask_b16 v33.h, 0x7fff, v45.h, s6
	scratch_load_b32 v45, off, off offset:4 ; 4-byte Folded Reload
	v_cndmask_b16 v36.l, 0x7fff, v39.h, s11
	v_cndmask_b16 v39.h, 0x7fff, v51.h, s18
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b64 v[50:51], off, off offset:32
	scratch_load_b32 v53, off, off offset:432
	v_bfe_u32 v46, v92, 16, 1
	v_cmp_o_f32_e64 s8, v92, v92
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s7
	v_cndmask_b16 v35.h, 0x7fff, v47.h, s10
	v_cndmask_b16 v37.l, 0x7fff, v42.h, s13
	v_add3_u32 v46, v92, v46, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v43.h, s15
	v_cndmask_b16 v40.l, 0x7fff, v44.h, s19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v34.h, 0x7fff, v46.h, s8
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[73:80], v[1:8]
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %Flow
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	s_clause 0x1a                           ; 220-byte Folded Reload
	scratch_load_b32 v33, off, off offset:252
	scratch_load_b64 v[67:68], off, off offset:256
	scratch_load_b64 v[39:40], off, off offset:236
	scratch_load_b64 v[73:74], off, off offset:244
	scratch_load_b64 v[46:47], off, off offset:196
	scratch_load_b128 v[122:125], off, off offset:204
	scratch_load_b128 v[126:129], off, off offset:220
	scratch_load_b128 v[130:133], off, off offset:132
	scratch_load_b128 v[134:137], off, off offset:148
	scratch_load_b128 v[138:141], off, off offset:164
	scratch_load_b128 v[142:145], off, off offset:180
	scratch_load_b128 v[146:149], off, off offset:96
	scratch_load_b128 v[150:153], off, off offset:112
	scratch_load_b32 v34, off, off offset:128
	scratch_load_b32 v35, off, off offset:88
	scratch_load_b32 v36, off, off offset:92
	scratch_load_b32 v37, off, off offset:80
	scratch_load_b32 v38, off, off offset:84
	scratch_load_b32 v42, off, off offset:72
	scratch_load_b32 v43, off, off offset:76
	scratch_load_b32 v44, off, off offset:64
	scratch_load_b32 v51, off, off offset:68
	scratch_load_b32 v0, off, off offset:264
	scratch_load_b32 v243, off, off offset:268
	scratch_load_b32 v103, off, off offset:276
	scratch_load_b32 v104, off, off offset:280
	scratch_load_b32 v105, off, off offset:272
	v_mov_b32_e32 v106, v91
	s_branch .LBB0_1
.LBB0_6:
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v53, off, off offset:440
	scratch_load_b32 v33, off, off offset:436
	scratch_load_b32 v34, off, off offset:444
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s5, s55, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s54
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_and_b32 s61, s61, 0xffff
	.loc	1 514 23                        ; attention_backward.py:514:23
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v0, s62, v53
	.loc	1 580 44                        ; attention_backward.py:580:44
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, v33, v34
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_or_b32_e32 v34, s63, v53
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_mov_b32 s62, s6
	s_mov_b32 s63, s7
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s2, s56, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_mul_lo_u32 v34, s56, v34
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v48, 2, v33
	v_or_b32_e32 v47, 4, v33
	v_or_b32_e32 v46, 6, v33
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v45, 8, v33
	v_or_b32_e32 v44, 10, v33
	v_or_b32_e32 v0, 32, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v49, v34, v33, 2
	v_add_lshl_u32 v50, v34, v48, 2
	v_add_lshl_u32 v51, v34, v47, 2
	v_add_lshl_u32 v52, v34, v44, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v42, 14, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v43, 12, v33
	v_or_b32_e32 v41, 34, v33
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s3, s56, v0
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v40, 36, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v25, v49, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v50, s2
	v_add_lshl_u32 v49, v34, v46, 2
	v_cndmask_b32_e64 v50, 0x80000000, v51, s2
	v_add_lshl_u32 v51, v34, v45, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v39, 38, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v26, v25, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v49, s2
	buffer_store_b32 v27, v50, s[4:7], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v51, s2
	v_cndmask_b32_e64 v27, 0x80000000, v52, s2
	v_add_lshl_u32 v49, v34, v43, 2
	buffer_store_b32 v28, v25, s[4:7], 0 offen
	v_add_lshl_u32 v25, v34, v42, 2
	s_clause 0x1
	buffer_store_b32 v29, v26, s[4:7], 0 offen
	buffer_store_b32 v30, v27, s[4:7], 0 offen
	v_add_lshl_u32 v27, v34, v0, 2
	v_cndmask_b32_e64 v26, 0x80000000, v49, s2
	v_add_lshl_u32 v28, v34, v41, 2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s3
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v29, v34, v40, 2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v38, 40, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v31, v26, s[4:7], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v28, s2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v37, 42, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v28, 0x80000000, v29, s2
	s_clause 0x1
	buffer_store_b32 v32, v25, s[4:7], 0 offen
	buffer_store_b32 v17, v27, s[4:7], 0 offen
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v27, s58, v53
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v36, 44, v33
	v_or_b32_e32 v35, 46, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v17, v34, v39, 2
	s_clause 0x1
	buffer_store_b32 v18, v26, s[4:7], 0 offen
	buffer_store_b32 v19, v28, s[4:7], 0 offen
	v_add_lshl_u32 v18, v34, v38, 2
	v_add_lshl_u32 v19, v34, v37, 2
	v_add_lshl_u32 v25, v34, v36, 2
	v_add_lshl_u32 v26, v34, v35, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s0, s58, v33
	v_cmp_gt_i32_e64 s1, s58, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v0, v27, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v18, 0x80000000, v18, s2
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	s_clause 0x4
	buffer_store_b32 v20, v17, s[4:7], 0 offen
	buffer_store_b32 v21, v18, s[4:7], 0 offen
	buffer_store_b32 v22, v19, s[4:7], 0 offen
	buffer_store_b32 v23, v25, s[4:7], 0 offen
	buffer_store_b32 v24, v26, s[4:7], 0 offen
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s0, vcc_lo, s0
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v0, v0, s72, 2
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v17, v27, v33
	v_add_nc_u32_e32 v18, v27, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_add_nc_u32 v19, v27, v47
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v20, v27, v46
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v17, v17, s72, 2
	s_delay_alu instid0(VALU_DEP_4)
	v_add_lshl_u32 v18, v18, s72, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v21, v27, v45
	v_add_nc_u32_e32 v22, v27, v44
	v_add_nc_u32_e32 v23, v27, v43
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v24, v27, v42
	v_add_nc_u32_e32 v25, v27, v41
	v_add_nc_u32_e32 v26, v27, v40
	v_add_nc_u32_e32 v28, v27, v39
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v9, v17, s[60:63], 0 offen
	v_add_lshl_u32 v9, v19, s72, 2
	v_cndmask_b32_e64 v17, 0x80000000, v18, s0
	v_add_lshl_u32 v18, v20, s72, 2
	v_add_lshl_u32 v19, v21, s72, 2
	v_add_lshl_u32 v20, v22, s72, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	buffer_store_b32 v10, v17, s[60:63], 0 offen
	v_cndmask_b32_e64 v10, 0x80000000, v18, s0
	v_cndmask_b32_e64 v17, 0x80000000, v19, s0
	v_cndmask_b32_e64 v18, 0x80000000, v20, s0
	buffer_store_b32 v11, v9, s[60:63], 0 offen
	v_add_lshl_u32 v9, v23, s72, 2
	s_clause 0x2
	buffer_store_b32 v12, v10, s[60:63], 0 offen
	buffer_store_b32 v13, v17, s[60:63], 0 offen
	buffer_store_b32 v14, v18, s[60:63], 0 offen
	v_add_lshl_u32 v10, v24, s72, 2
	v_add_lshl_u32 v11, v25, s72, 2
	v_add_lshl_u32 v12, v26, s72, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v29, v27, v38
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v10, 0x80000000, v10, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v30, v27, v37
	v_add_nc_u32_e32 v31, v27, v36
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	v_dual_cndmask_b32 v12, 0x80000000, v12 :: v_dual_add_nc_u32 v27, v27, v35
	s_clause 0x4
	buffer_store_b32 v15, v9, s[60:63], 0 offen
	buffer_store_b32 v16, v10, s[60:63], 0 offen
	buffer_store_b32 v1, v0, s[60:63], 0 offen
	buffer_store_b32 v2, v11, s[60:63], 0 offen
	buffer_store_b32 v3, v12, s[60:63], 0 offen
	v_add_lshl_u32 v0, v28, s72, 2
	v_add_lshl_u32 v1, v29, s72, 2
	v_add_lshl_u32 v2, v30, s72, 2
	v_add_lshl_u32 v3, v31, s72, 2
	v_add_lshl_u32 v9, v27, s72, 2
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
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 452
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 80
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 452
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21992
; TotalNumSgprs: 82
; NumVgprs: 256
; ScratchSize: 452
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 452
    .sgpr_count:     82
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_causal_local_outbfloat16_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 112
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
