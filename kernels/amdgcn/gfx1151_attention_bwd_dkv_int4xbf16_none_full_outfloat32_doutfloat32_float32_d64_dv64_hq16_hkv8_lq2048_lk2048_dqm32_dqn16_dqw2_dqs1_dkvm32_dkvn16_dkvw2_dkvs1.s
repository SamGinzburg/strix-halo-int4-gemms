	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	s_lshl_b32 s38, s2, 4
	.loc	1 521 24                        ; attention_backward.py:521:24
	s_lshl_b32 s4, s3, 11
	v_dual_mov_b32 v41, 0 :: v_dual_and_b32 v54, 56, v0
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_add_i32 s39, s4, s38
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_and_b32_e32 v1, 24, v34
	.loc	1 523 17                        ; attention_backward.py:523:17
	v_or_b32_e32 v3, s39, v2
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v4, s38, v2
	s_mov_b32 s67, 0x31027000
	s_mov_b32 s66, 0x7ffffffe
	.loc	1 514 33 is_stmt 0              ; attention_backward.py:514:33
	v_bfe_u32 v74, v0, 4, 1
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	v_and_b32_e32 v33, 7, v0
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	v_dual_mov_b32 v12, v41 :: v_dual_and_b32 v39, 48, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_or_b32_e32 v4, s4, v74
	.loc	1 523 17                        ; attention_backward.py:523:17
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[2:3], null, s57, v3, v[1:2]
	.loc	1 524 23                        ; attention_backward.py:524:23
	v_cmp_gt_i32_e64 s2, s57, v1
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_and_b32 s65, s43, 0xffff
	s_mov_b32 s64, s42
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_lshlrev_b32_e32 v6, 3, v33
	.loc	1 524 22                        ; attention_backward.py:524:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_mul_i32 s76, s58, s39
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v5, s38, v3
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_mul_lo_u32 v3, s58, v3
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshrrev_b32_e32 v40, 1, v39
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v7, s38, v74
	.loc	1 522 24                        ; attention_backward.py:522:24
	buffer_load_b64 v[1:2], v1, s[64:67], 0 offen
	.loc	1 528 17                        ; attention_backward.py:528:17
	v_add_lshl_u32 v4, v4, s38, 1
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v5
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s4, s58, v6
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_lshl_b32 s12, s58, 3
	v_add3_u32 v3, s76, v6, v3
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xad_u32 v5, v34, v40, 0
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s2, 0x800, v7
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_or_b32_e32 v9, 8, v4
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_lshlrev_b32_e32 v6, 1, v3
	v_add_lshl_u32 v3, v3, s12, 1
	s_and_b32 s65, s45, 0xffff
	s_mov_b32 s64, s44
	s_load_b64 s[8:9], s[0:1], 0x20
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_or_b32_e32 v8, 4, v4
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_or_b32_e32 v10, 12, v4
	v_or_b32_e32 v11, 16, v4
	v_cndmask_b32_e64 v7, 0x80000000, v4, s2
	s_mov_b32 s10, s66
	s_mov_b32 s11, s67
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v56, 32, v0
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_bfe_i32 v57, v0, 5, 1
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_bfe_i32 v60, v0, 0, 1
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v62, 14, v0
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshlrev_b32_e32 v58, 1, v0
	v_bfe_i32 v63, v0, 3, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v27, v41 :: v_dual_and_b32 v60, 0x240, v60
	v_dual_mov_b32 v28, v41 :: v_dual_lshlrev_b32 v73, 7, v56
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	v_dual_mov_b32 v16, v41 :: v_dual_and_b32 v59, 1, v0
	v_dual_mov_b32 v15, v41 :: v_dual_and_b32 v66, 24, v58
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v20, v41 :: v_dual_lshlrev_b32 v93, 4, v59
	v_dual_mov_b32 v21, v41 :: v_dual_and_b32 v34, 48, v34
	v_dual_mov_b32 v14, v41 :: v_dual_and_b32 v55, 16, v0
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v173, 1, v0
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshlrev_b32_e32 v61, 4, v0
	v_dual_mov_b32 v13, v41 :: v_dual_lshlrev_b32 v64, 6, v0
	v_dual_mov_b32 v26, v41 :: v_dual_lshlrev_b32 v71, 1, v56
	v_mov_b32_e32 v19, v41
	.loc	1 520 26                        ; attention_backward.py:520:26
	v_lshrrev_b32_e32 v65, 3, v39
	v_and_or_b32 v58, v58, 30, v74
	s_clause 0x1
	s_load_b64 s[60:61], s[0:1], 0x58
	s_load_b256 s[48:55], s[0:1], 0x38
	v_mov_b32_e32 v30, v41
	v_cmp_eq_u32_e64 s0, 0, v55
	v_lshlrev_b32_e32 v55, 2, v55
	v_lshrrev_b32_e32 v77, 1, v56
	v_dual_mov_b32 v23, v41 :: v_dual_lshlrev_b32 v244, 2, v58
	v_dual_mov_b32 v18, v41 :: v_dual_add_nc_u32 v247, 0, v64
	s_lshl_b32 s44, s3, 12
	.loc	1 620 52                        ; attention_backward.py:620:52
	v_cmp_gt_i32_e64 s5, s57, v93
	.loc	1 641 25                        ; attention_backward.py:641:25
	s_mul_f32 s45, s59, 0x3fb8aa3b
	s_and_b32 s47, s47, 0xffff
	s_mov_b32 s7, 0
	s_mov_b32 s6, -1
	s_mov_b32 s70, s66
	s_mov_b32 s71, s67
	s_mov_b32 s74, s66
	s_mov_b32 s75, s67
	s_and_b32 s41, s41, 0xffff
	s_waitcnt lgkmcnt(0)
	s_and_b32 s51, s51, 0xffff
	s_and_b32 s53, s53, 0xffff
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s42, s66
	s_mov_b32 s43, s67
	s_mov_b32 s68, s50
	s_mov_b32 s72, s52
	s_mov_b32 s50, s66
	s_mov_b32 s69, s51
	s_mov_b32 s73, s53
	s_mov_b32 s51, s67
	v_and_b32_e32 v57, 0x820, v57
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_lshlrev_b32_e32 v67, 5, v59
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_lshlrev_b32_e32 v54, 1, v54
	v_dual_mov_b32 v29, v41 :: v_dual_and_b32 v76, 15, v0
	v_mov_b32_e32 v31, v41
	v_and_or_b32 v57, 0x410, v63, v57
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v32, v41 :: v_dual_lshlrev_b32 v75, 1, v76
	v_lshlrev_b32_e32 v70, 4, v76
	v_lshlrev_b32_e32 v72, 8, v76
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_lshl_or_b32 v59, v76, 5, v66
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_lshlrev_b32_e32 v0, 2, v76
	v_lshl_or_b32 v164, v76, 6, v34
	v_or_b32_e32 v64, 16, v67
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s3, s56, v67
	v_or3_b32 v80, v72, v73, v70
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_add_nc_u32_e32 v34, 0, v59
	v_lshl_or_b32 v160, v39, 5, v70
	v_add3_u32 v239, 0, v71, v0
	v_or3_b32 v163, v75, v55, v56
	v_xad_u32 v55, v59, 16, 0
	v_add3_u32 v243, 0, v56, v75
	v_xad_u32 v56, v59, 24, 0
	v_xor_b32_e32 v84, 16, v164
	v_xor_b32_e32 v85, 32, v164
	v_xor_b32_e32 v86, 48, v164
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s1, s58, v0
	.loc	1 657 25                        ; attention_backward.py:657:25
	v_cmp_gt_i32_e64 s4, s56, v64
	v_xor_b32_e32 v66, 0x50, v80
	v_xor_b32_e32 v87, 0x60, v80
	v_xor_b32_e32 v72, 0x70, v80
	v_xor_b32_e32 v73, 0x80, v80
	v_xor_b32_e32 v75, 0xa0, v80
	v_xor_b32_e32 v78, 0xd0, v80
	v_xor_b32_e32 v79, 0xe0, v80
	v_xor_b32_e32 v82, 0x120, v163
	v_xor_b32_e32 v83, 0x1b0, v163
	v_xor_b32_e32 v81, 0x90, v163
	v_add_nc_u32_e32 v200, 0, v84
	v_add_nc_u32_e32 v253, 0, v85
	v_add_nc_u32_e32 v238, 0, v86
	v_add_nc_u32_e32 v71, 0, v66
	v_add_nc_u32_e32 v169, 0, v87
	v_add_nc_u32_e32 v234, 0, v72
	v_add_nc_u32_e32 v158, 0, v73
	v_add_nc_u32_e32 v159, 0, v75
	v_add_nc_u32_e32 v246, 0, v78
	v_add_nc_u32_e32 v237, 0, v79
	v_add_nc_u32_e32 v250, 0, v82
	v_add_nc_u32_e32 v202, 0, v83
	v_add_nc_u32_e32 v249, 0, v81
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt vmcnt(0)
	ds_store_b64 v5, v[1:2]
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_cndmask_b32_e64 v5, 0x80000000, v9, s2
	v_dual_mov_b32 v9, 0 :: v_dual_cndmask_b32 v6, 0x80000000, v6
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_clause 0x1
	buffer_load_b128 v[35:38], v6, s[64:67], 0 offen
	buffer_load_b128 v[42:45], v3, s[64:67], 0 offen
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_or_b32_e32 v1, 20, v4
	v_or_b32_e32 v2, 24, v4
	v_or_b32_e32 v3, 28, v4
	v_cndmask_b32_e64 v4, 0x80000000, v8, s2
	v_cndmask_b32_e64 v6, 0x80000000, v10, s2
	v_cndmask_b32_e64 v8, 0x80000000, v11, s2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	s_clause 0x6
	buffer_load_u16 v46, v7, s[8:11], 0 offen
	buffer_load_u16 v47, v4, s[8:11], 0 offen
	buffer_load_u16 v48, v5, s[8:11], 0 offen
	buffer_load_u16 v49, v6, s[8:11], 0 offen
	buffer_load_u16 v50, v8, s[8:11], 0 offen
	buffer_load_u16 v51, v1, s[8:11], 0 offen
	buffer_load_u16 v52, v2, s[8:11], 0 offen
	v_cndmask_b32_e64 v1, 0x80000000, v3, s2
	v_mov_b32_e32 v11, v41
	v_dual_mov_b32 v6, v41 :: v_dual_lshlrev_b32 v69, 3, v62
	v_mov_b32_e32 v8, v41
	buffer_load_u16 v53, v1, s[8:11], 0 offen
	v_mov_b32_e32 v1, 0
	v_dual_mov_b32 v7, v41 :: v_dual_lshlrev_b32 v68, 4, v33
	v_mul_u32_u24_e32 v33, 0x90, v33
	v_xor3_b32 v40, v69, v60, v40
	v_mov_b32_e32 v4, v41
	v_mov_b32_e32 v3, v41
	scratch_store_b32 off, v74, off offset:408 ; 4-byte Folded Spill
	v_xor_b32_e32 v102, v57, v33
	v_lshl_or_b32 v97, v62, 9, v40
	v_xor_b32_e32 v33, 16, v80
	v_lshlrev_b32_e32 v74, 1, v39
	.loc	1 522 24                        ; attention_backward.py:522:24
	v_xad_u32 v39, v59, 8, 0
	v_mov_b32_e32 v5, v41
	v_mov_b32_e32 v2, v41
	v_add_nc_u32_e32 v162, 0, v33
	v_xor_b32_e32 v33, 0x120, v97
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_xad_u32 v54, v61, v54, 0
	v_lshl_or_b32 v61, v76, 7, v68
	v_xor_b32_e32 v40, 32, v80
	v_mov_b32_e32 v22, v41
	v_add_nc_u32_e32 v66, 0, v33
	.loc	1 522 24                        ; attention_backward.py:522:24
	ds_load_b64 v[254:255], v34
	ds_load_b64 v[33:34], v39
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v80, off offset:116
	scratch_store_b32 off, v76, off offset:400
	.loc	1 717 21                        ; attention_backward.py:717:21
	v_add_nc_u32_e32 v58, 0, v61
	v_add_nc_u32_e32 v165, 0, v40
	v_xor_b32_e32 v40, 0x1b0, v97
	v_xad_u32 v59, v61, 16, 0
	v_xad_u32 v60, v61, 32, 0
	v_xad_u32 v63, v61, 48, 0
	v_xad_u32 v68, v61, 64, 0
	v_add_nc_u32_e32 v98, 0, v40
	v_xad_u32 v109, 0x50, v61, 0
	v_xad_u32 v110, 0x60, v61, 0
	v_xad_u32 v61, 0x70, v61, 0
	v_mad_u64_u32 v[94:95], null, s58, v65, v[0:1]
	v_xor_b32_e32 v161, v160, v74
	v_xor_b32_e32 v57, 48, v80
	v_xor_b32_e32 v62, 64, v80
	v_xor_b32_e32 v74, 0x90, v80
	.loc	1 522 24                        ; attention_backward.py:522:24
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[33:34], off offset:244 ; 8-byte Folded Spill
	ds_load_b64 v[33:34], v55
	scratch_store_b32 off, v77, off offset:404 ; 4-byte Folded Spill
	v_xor_b32_e32 v76, 0xb0, v80
	v_xor_b32_e32 v77, 0xc0, v80
	v_xor_b32_e32 v80, 0xf0, v80
	v_dual_mov_b32 v24, v41 :: v_dual_add_nc_u32 v69, 0, v57
	v_add_nc_u32_e32 v70, 0, v62
	v_add_nc_u32_e32 v241, 0, v74
	v_add_nc_u32_e32 v236, 0, v76
	v_add_nc_u32_e32 v242, 0, v77
	v_add_nc_u32_e32 v157, 0, v80
	v_xor_b32_e32 v0, 0x90, v97
	v_xor_b32_e32 v57, 32, v97
	v_xor_b32_e32 v62, 0xb0, v97
	v_xor_b32_e32 v64, 0x190, v97
	v_xor_b32_e32 v65, 64, v97
	v_xor_b32_e32 v96, 0xd0, v97
	v_xor_b32_e32 v67, 0x160, v97
	v_xor_b32_e32 v103, 0x1f0, v97
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[33:34], off offset:252 ; 8-byte Folded Spill
	ds_load_b64 v[33:34], v56
	v_xor_b32_e32 v72, 0x60, v97
	v_xor_b32_e32 v73, 0xf0, v97
	v_xor_b32_e32 v74, 0x140, v97
	v_xor_b32_e32 v75, 0x1d0, v97
	v_xor_b32_e32 v76, 16, v102
	v_xor_b32_e32 v77, 32, v102
	v_xor_b32_e32 v78, 48, v102
	v_xor_b32_e32 v79, 64, v102
	v_xor_b32_e32 v80, 0x50, v102
	v_xor_b32_e32 v82, 0x70, v102
	v_xor_b32_e32 v83, 0x1040, v102
	v_xor_b32_e32 v84, 0x1050, v102
	v_xor_b32_e32 v85, 0x1060, v102
	v_xor_b32_e32 v86, 0x1070, v102
	v_xor_b32_e32 v87, 0x1010, v102
	v_xor_b32_e32 v88, 0x1020, v102
	v_xor_b32_e32 v89, 0x1030, v102
	v_xor_b32_e32 v90, 0x110, v161
	v_xor_b32_e32 v91, 0x880, v161
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	scratch_store_b64 off, v[33:34], off offset:260 ; 8-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_xor_b32_e32 v92, 0x990, v161
	v_mov_b32_e32 v10, v41
	v_xor_b32_e32 v81, 0x60, v102
	v_add_nc_u32_e32 v0, 0, v0
	v_add_nc_u32_e32 v99, 0, v57
	v_add_nc_u32_e32 v100, 0, v62
	v_add_nc_u32_e32 v101, 0, v64
	v_add_nc_u32_e32 v65, 0, v65
	v_add_nc_u32_e32 v248, 0, v96
	v_add_nc_u32_e32 v67, 0, v67
	v_add_nc_u32_e32 v171, 0, v103
	v_add_nc_u32_e32 v72, 0, v72
	v_add_nc_u32_e32 v96, 0, v73
	v_add_nc_u32_e32 v235, 0, v74
	v_add_nc_u32_e32 v103, 0, v75
	v_add_nc_u32_e32 v104, 0, v76
	v_add_nc_u32_e32 v105, 0, v77
	v_add_nc_u32_e32 v106, 0, v78
	v_add_nc_u32_e32 v107, 0, v79
	v_add_nc_u32_e32 v108, 0, v80
	v_add_nc_u32_e32 v121, 0, v82
	v_add_nc_u32_e32 v122, 0, v83
	v_add_nc_u32_e32 v123, 0, v84
	v_add_nc_u32_e32 v124, 0, v85
	v_add_nc_u32_e32 v86, 0, v86
	v_add_nc_u32_e32 v87, 0, v87
	v_add_nc_u32_e32 v88, 0, v88
	v_add_nc_u32_e32 v170, 0, v89
	v_add_nc_u32_e32 v240, 0, v90
	v_add_nc_u32_e32 v245, 0, v91
	v_add_nc_u32_e32 v251, 0, v92
	v_xor_b32_e32 v89, 4, v244
	s_mov_b32 s64, s46
	s_mov_b32 s65, s47
	v_add_nc_u32_e32 v64, 0, v81
	s_waitcnt vmcnt(9)
	ds_store_b128 v54, v[35:38]
	s_waitcnt vmcnt(8)
	ds_store_b128 v54, v[42:45] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v58
	ds_load_b128 v[37:40], v59
	v_mad_u64_u32 v[44:45], null, s58, 24, v[94:95]
	v_mad_u64_u32 v[42:43], null, s58, 17, v[94:95]
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v168, 16, v47
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v167, 16, v48
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v91, 16, v49
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v90, 16, v50
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v166, 16, v51
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v92, 16, v52
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[33:36], off offset:268 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[37:40], off offset:284 ; 16-byte Folded Spill
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[33:36], v60
	ds_load_b128 v[37:40], v63
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[33:36], off offset:300 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[37:40], off offset:316 ; 16-byte Folded Spill
	ds_load_b128 v[33:36], v68
	ds_load_b128 v[37:40], v109
	.loc	1 527 29                        ; attention_backward.py:527:29
	v_lshlrev_b32_e32 v68, 16, v46
	v_mad_u64_u32 v[45:46], null, s58, 25, v[94:95]
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[33:36], off offset:332 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[37:40], off offset:348 ; 16-byte Folded Spill
	.loc	1 717 21                        ; attention_backward.py:717:21
	ds_load_b128 v[33:36], v110
	ds_load_b128 v[37:40], v61
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[33:36], off offset:364 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[37:40], off offset:380 ; 16-byte Folded Spill
	v_mad_u64_u32 v[35:36], null, s58, 9, v[94:95]
	.loc	1 527 29                        ; attention_backward.py:527:29
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v95, 16, v53
	v_add_nc_u32_e32 v37, s12, v94
	s_clause 0x1f                           ; 132-byte Folded Spill
	scratch_store_b64 off, v[93:94], off offset:120
	scratch_store_b32 off, v97, off offset:128
	scratch_store_b32 off, v98, off offset:132
	scratch_store_b32 off, v99, off offset:136
	scratch_store_b32 off, v100, off offset:140
	scratch_store_b32 off, v101, off offset:144
	scratch_store_b32 off, v102, off offset:148
	scratch_store_b32 off, v65, off offset:152
	scratch_store_b32 off, v162, off offset:156
	scratch_store_b32 off, v161, off offset:160
	scratch_store_b32 off, v72, off offset:164
	scratch_store_b32 off, v173, off offset:168
	scratch_store_b32 off, v96, off offset:172
	scratch_store_b32 off, v103, off offset:176
	scratch_store_b32 off, v104, off offset:180
	scratch_store_b32 off, v105, off offset:184
	scratch_store_b32 off, v106, off offset:188
	scratch_store_b32 off, v107, off offset:192
	scratch_store_b32 off, v108, off offset:196
	scratch_store_b32 off, v64, off offset:16
	scratch_store_b32 off, v121, off offset:200
	scratch_store_b32 off, v122, off offset:204
	scratch_store_b32 off, v123, off offset:208
	scratch_store_b32 off, v124, off offset:212
	scratch_store_b32 off, v66, off offset:216
	scratch_store_b32 off, v0, off offset:220
	scratch_store_b32 off, v236, off offset:224
	scratch_store_b32 off, v170, off offset:228
	scratch_store_b32 off, v159, off offset:232
	scratch_store_b32 off, v245, off offset:236
	scratch_store_b32 off, v241, off offset:240
	scratch_store_b32 off, v95, off offset:396
	scratch_store_b32 off, v37, off offset:20 ; 4-byte Folded Spill
.LBB0_1:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_2 Depth 2
	.loc	1 520 26                        ; attention_backward.py:520:26
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v33, off, off offset:400
	scratch_load_b32 v34, off, off offset:404
	.loc	1 613 25                        ; attention_backward.py:613:25
	s_or_b32 s47, s44, s7
	s_xor_b32 s46, s6, -1
	s_mov_b32 s52, 0
	.loc	1 520 26                        ; attention_backward.py:520:26
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, v34, v33
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b32_e32 v33, s47, v33
	scratch_store_b32 off, v33, off offset:112 ; 4-byte Folded Spill
.LBB0_2:                                ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 616 25                        ; attention_backward.py:616:25
	s_or_b32 s6, s52, s47
	s_waitcnt vmcnt(3)
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[45:46], off offset:40
	scratch_store_b64 off, v[44:45], off offset:32
	s_waitcnt vmcnt(2)
	scratch_store_b64 off, v[42:43], off offset:8 ; 8-byte Folded Spill
	s_waitcnt vmcnt(0)
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[35:36], off
	scratch_store_b64 off, v[94:95], off offset:24
	v_or_b32_e32 v33, s6, v173
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x2                            ; 20-byte Folded Reload
	scratch_load_b64 v[39:40], off, off
	scratch_load_b32 v38, off, off offset:20
	scratch_load_b64 v[42:43], off, off offset:8
	v_or_b32_e32 v36, s47, v173
	.loc	1 616 25                        ; attention_backward.py:616:25
	v_mad_u64_u32 v[33:34], null, v33, s57, v[93:94]
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s6, s6, s58
	v_add_nc_u32_e32 v37, s58, v94
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_add_lshl_u32 v36, s52, v36, 1
	s_waitcnt vmcnt(2)
	v_lshl_add_u32 v40, s58, 4, v94
	.loc	1 651 43                        ; attention_backward.py:651:43
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_cndmask_b32_e64 v34, 0x80000000, v33, s5
	.loc	1 624 25                        ; attention_backward.py:624:25
	scratch_load_b32 v33, off, off offset:112 ; 4-byte Folded Reload
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v43, s6, v44, 2
	.loc	1 623 39                        ; attention_backward.py:623:39
	buffer_load_u16 v74, v36, s[64:67], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v36, s6, v94, 2
	v_add_lshl_u32 v37, s6, v37, 2
	v_add_lshl_u32 v40, s6, v40, 2
	v_cndmask_b32_e64 v51, 0x80000000, v43, s1
	v_add_lshl_u32 v43, s6, v45, 2
	v_cndmask_b32_e64 v36, 0x80000000, v36, s1
	v_cndmask_b32_e64 v37, 0x80000000, v37, s1
	v_cndmask_b32_e64 v40, 0x80000000, v40, s1
	v_mov_b32_e32 v93, v254
	v_cndmask_b32_e64 v60, 0x80000000, v43, s1
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b32_e32 v252, v251
	v_mov_b32_e32 v94, v255
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v39, s6, v39, 2
	v_add_lshl_u32 v38, s6, v38, 2
	v_add_lshl_u32 v42, s6, v42, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v39, 0x80000000, v39, s1
	v_cndmask_b32_e64 v38, 0x80000000, v38, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v42, 0x80000000, v42, s1
	.loc	1 624 25                        ; attention_backward.py:624:25
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v33, s52, v33
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v35, 1, v33
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_lshlrev_b32_e32 v33, 2, v33
	.loc	1 623 39                        ; attention_backward.py:623:39
	buffer_load_u16 v75, v35, s[64:67], 0 offen
	.loc	1 699 25                        ; attention_backward.py:699:25
	buffer_load_b32 v73, v33, s[68:71], 0 offen
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v76, v33, s[72:75], 0 offen
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
	buffer_load_b128 v[77:80], v51, s[48:51], 0 offen
	buffer_load_b128 v[82:85], v60, s[48:51], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v40, 0, v97
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	v_dual_mov_b32 v97, v167 :: v_dual_mov_b32 v42, v33
	s_waitcnt vmcnt(6)
	v_dual_mov_b32 v37, v34 :: v_dual_mov_b32 v38, v44
	ds_store_b64 v40, v[42:43]
	ds_store_b64 v0, v[37:38]
	v_dual_mov_b32 v37, v35 :: v_dual_mov_b32 v38, v45
	s_waitcnt vmcnt(5)
	v_mov_b32_e32 v51, v47
	s_waitcnt vmcnt(3)
	v_dual_mov_b32 v39, v53 :: v_dual_mov_b32 v60, v56
	s_waitcnt vmcnt(1)
	v_mov_b32_e32 v81, v77
	ds_store_b64 v66, v[37:38]
	v_dual_mov_b32 v37, v46 :: v_dual_mov_b32 v38, v48
	ds_store_b64 v98, v[36:37]
	ds_store_b64 v99, v[51:52]
	ds_store_b64 v100, v[38:39]
	v_dual_mov_b32 v37, v49 :: v_dual_mov_b32 v38, v54
	v_mov_b32_e32 v51, v55
	v_mov_b32_e32 v98, v171
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v42, 0x1400, v239
	v_mov_b32_e32 v0, v202
	.loc	1 732 34                        ; attention_backward.py:732:34
	ds_store_b64 v40, v[37:38] offset:256
	v_dual_mov_b32 v37, v57 :: v_dual_mov_b32 v38, v62
	ds_store_b64 v101, v[50:51]
	ds_store_b64 v65, v[60:61]
	ds_store_b64 v248, v[37:38]
	v_dual_mov_b32 v37, v58 :: v_dual_mov_b32 v38, v63
	v_dual_mov_b32 v60, v64 :: v_dual_add_nc_u32 v51, 0x1800, v239
	v_dual_mov_b32 v99, v166 :: v_dual_mov_b32 v66, v168
	ds_store_b64 v67, v[37:38]
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v37, v78 :: v_dual_mov_b32 v38, v83
	ds_store_b64 v171, v[59:60]
	ds_store_b64 v72, v[81:82]
	ds_store_b64 v96, v[37:38]
	v_dual_mov_b32 v37, v79 :: v_dual_mov_b32 v38, v84
	v_dual_mov_b32 v81, v85 :: v_dual_mov_b32 v72, v200
	v_dual_mov_b32 v101, v163 :: v_dual_add_nc_u32 v60, 0x1c00, v239
	ds_store_b64 v235, v[37:38]
	v_add_nc_u32_e32 v37, 0, v102
	ds_store_b64 v103, v[80:81]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[137:140], v37
	ds_load_b128 v[37:40], v37 offset:4096
	ds_load_b128 v[149:152], v104
	ds_load_b128 v[145:148], v105
	ds_load_b128 v[141:144], v106
	ds_load_b128 v[117:120], v107
	ds_load_b128 v[113:116], v108
	s_waitcnt lgkmcnt(5)
	scratch_store_b128 off, v[37:40], off offset:48 ; 16-byte Folded Spill
	scratch_load_b32 v37, off, off offset:16 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_b128 v[109:112], v37
	ds_load_b128 v[105:108], v121
	ds_load_b128 v[133:136], v122
	ds_load_b128 v[129:132], v123
	ds_load_b128 v[125:128], v124
	ds_load_b128 v[121:124], v86
	ds_load_b128 v[37:40], v87
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[37:40], off offset:64 ; 16-byte Folded Spill
	ds_load_b128 v[37:40], v88
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[37:40], off offset:80 ; 16-byte Folded Spill
	ds_load_b128 v[37:40], v170
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	scratch_store_b128 off, v[37:40], off offset:96 ; 16-byte Folded Spill
	v_add_nc_u32_e32 v37, 0, v160
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v37, v[33:36]
	ds_store_b128 v37, v[43:46] offset:256
	ds_store_b128 v37, v[47:50] offset:2048
	ds_store_b128 v37, v[52:55] offset:2304
	ds_store_b128 v37, v[56:59] offset:4096
	ds_store_b128 v37, v[61:64] offset:4352
	ds_store_b128 v37, v[77:80] offset:6144
	ds_store_b128 v37, v[82:85] offset:6400
	v_add_nc_u32_e32 v37, 0x400, v239
	v_add_nc_u32_e32 v38, 0x800, v239
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v39, 0xc00, v239
	v_add_nc_u32_e32 v40, 0x1000, v239
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
	v_add_nc_u32_e32 v37, 0, v161
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
	ds_load_2addr_b32 v[232:233], v239 offset1:32
	ds_load_2addr_b32 v[230:231], v239 offset0:64 offset1:96
	ds_load_2addr_b32 v[228:229], v239 offset0:128 offset1:160
	ds_load_2addr_b32 v[226:227], v239 offset0:192 offset1:224
	ds_load_2addr_b32 v[202:203], v39 offset0:192 offset1:224
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v37, v[33:36]
	ds_store_b128 v37, v[56:59] offset:4096
	ds_store_b128 v240, v[43:46]
	ds_store_b128 v240, v[61:64] offset:4096
	ds_store_b128 v245, v[47:50]
	ds_store_b128 v245, v[77:80] offset:4096
	ds_store_b128 v251, v[52:55]
	ds_store_b128 v251, v[82:85] offset:4096
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v33, off, off offset:116 ; 4-byte Folded Reload
	v_mov_b32_e32 v245, v160
	v_mov_b32_e32 v251, v157
	v_cmp_o_f32_e64 s25, v193, v193
	v_cmp_o_f32_e64 s27, v189, v189
	v_cmp_o_f32_e64 s29, v185, v185
	v_cmp_o_f32_e64 s31, v181, v181
	v_cmp_o_f32_e64 s30, v183, v183
	v_cmp_o_f32_e64 s33, v179, v179
	v_cmp_o_f32_e64 s34, v177, v177
	v_cmp_o_f32_e64 s35, v175, v175
	v_cmp_o_f32_e64 s36, v173, v173
	v_cmp_o_f32_e64 s26, v191, v191
	v_cmp_o_f32_e64 s37, v171, v171
	v_cmp_o_f32_e64 s28, v187, v187
	v_cmp_o_f32_e64 s21, v201, v201
	v_cmp_o_f32_e64 s22, v199, v199
	v_cmp_o_f32_e64 s23, v197, v197
	v_cmp_o_f32_e64 s24, v195, v195
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v33, 0, v33
	ds_load_b128 v[33:36], v33
	ds_load_b128 v[37:40], v162
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v162, 16, v74
	.loc	1 716 21                        ; attention_backward.py:716:21
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
	ds_load_b128 v[37:40], v69
	.loc	1 630 33                        ; attention_backward.py:630:33
	v_mov_b32_e32 v48, v41
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
	scratch_load_b128 v[49:52], off, off offset:268
	scratch_load_b128 v[53:56], off, off offset:284
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v84.h, 0x7fff, v40.h, s20
	.loc	1 715 36                        ; attention_backward.py:715:36
	v_dual_mov_b32 v33, v41 :: v_dual_mov_b32 v36, v44
	v_dual_mov_b32 v34, v42 :: v_dual_mov_b32 v35, v43
	v_dual_mov_b32 v38, v46 :: v_dual_mov_b32 v37, v45
	v_dual_mov_b32 v40, v48 :: v_dual_mov_b32 v39, v47
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[49:56], v[77:84], v[33:40]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[49:52], v70
	ds_load_b128 v[53:56], v71
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
	ds_load_b128 v[49:52], v169
	ds_load_b128 v[53:56], v234
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
	scratch_load_b128 v[49:52], off, off offset:300
	scratch_load_b128 v[53:56], off, off offset:316
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[49:56], v[77:84], v[33:40]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[49:52], v158
	ds_load_b128 v[53:56], v241
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
	ds_load_b128 v[49:52], v159
	ds_load_b128 v[53:56], v236
	v_mov_b32_e32 v236, v87
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
	scratch_load_b128 v[49:52], off, off offset:332
	scratch_load_b128 v[53:56], off, off offset:348
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[49:56], v[77:84], v[33:40]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[49:52], v242
	ds_load_b128 v[53:56], v246
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
	ds_load_b128 v[49:52], v237
	ds_load_b128 v[53:56], v157
	v_mov_b32_e32 v157, v237
	v_mov_b32_e32 v237, v246
	v_mov_b32_e32 v246, v242
	v_cndmask_b16 v80.h, 0x7fff, v64.h, s12
	v_mov_b32_e32 v242, v164
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
	scratch_load_b128 v[49:52], off, off offset:364
	scratch_load_b128 v[53:56], off, off offset:380
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s20, v172, v172
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[33:40], v[49:56], v[77:84], v[33:40]
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_bpermute_b32 v49, v89, v156
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v82, v34, v76
	v_sub_f32_e32 v81, v35, v76
	v_sub_f32_e32 v80, v36, v76
	v_sub_f32_e32 v79, v37, v76
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_bpermute_b32 v34, v244, v153
	ds_bpermute_b32 v35, v89, v153
	ds_bpermute_b32 v36, v244, v154
	ds_bpermute_b32 v37, v89, v154
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v83, v33, v76
	v_sub_f32_e32 v78, v38, v76
	v_sub_f32_e32 v77, v39, v76
	v_sub_f32_e32 v76, v40, v76
	.loc	1 615 36                        ; attention_backward.py:615:36
	ds_bpermute_b32 v38, v244, v155
	ds_bpermute_b32 v39, v89, v155
	ds_bpermute_b32 v40, v244, v156
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
	v_wmma_i32_16x16x16_iu4 v[49:56], v[254:255], v[33:34], v[41:48] neg_lo:[1,1,0]
	scratch_load_b64 v[33:34], off, off offset:244 ; 8-byte Folded Reload
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v44, 15, v153
	v_bfe_u32 v46, v153, 16, 4
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b64 v[42:43], 24, v[153:154]
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v48, 15, v154
	v_mov_b32_e32 v254, v240
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v45, -16, v44
	v_or_b32_e32 v47, -16, v46
	v_mov_b32_e32 v240, v67
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v43, v42, 0, 8
	v_mov_b32_e32 v67, v158
	v_mov_b32_e32 v158, v234
	v_mov_b32_e32 v234, v169
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[33:34], v[37:38], v[49:56] neg_lo:[1,1,0]
	scratch_load_b64 v[33:34], off, off offset:252 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[33:34], v[35:36], v[49:56] neg_lo:[1,1,0]
	scratch_load_b64 v[33:34], off, off offset:260 ; 8-byte Folded Reload
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 630 33                        ; attention_backward.py:630:33
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[33:34], v[39:40], v[49:56] neg_lo:[1,1,0]
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v33.l, v153.l, 15
	v_and_b16 v33.h, v42.l, 15
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v34.l, 4, v153.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e32 v34.h, 0
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v36, v50
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v33.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v33.l, v153.h, 15
	.loc	1 648 33 is_stmt 0              ; attention_backward.py:648:33
	v_bfe_u32 v50, v154, 16, 4
	.loc	1 644 25 is_stmt 1              ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v35, v49
	v_cvt_f32_i32_e32 v37, v51
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v49, -16, v48
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s6, 7, v33.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v33.l, v154.l, 15
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v51, -16, v50
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v44, v44, v45, vcc_lo
	.loc	1 644 25 is_stmt 1              ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v39, v53
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v45, v46, v47, s6
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s7, 7, v33.l
	.loc	1 648 34 is_stmt 1              ; attention_backward.py:648:34
	v_and_b16 v33.l, v154.h, 15
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v46, 8, v153
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v47, v153, 8, 4
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v40, v54
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v48, v48, v49, s7
	.loc	1 650 42 is_stmt 0              ; attention_backward.py:650:42
	v_cmp_lt_u16_e64 s8, 7, v33.l
	.loc	1 649 36 is_stmt 1              ; attention_backward.py:649:36
	v_lshrrev_b16 v33.l, 4, v42.l
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
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v85, v56
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v42.l
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v42.l, v50.l, 15
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v56, v153, 20, 4
	.loc	1 649 36 is_stmt 0              ; attention_backward.py:649:36
	v_and_b16 v34.l, v34.l, 15
	.loc	1 644 25 is_stmt 1              ; attention_backward.py:644:25
	v_cvt_f32_i32_e32 v38, v52
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v47, v47, v53, vcc_lo
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v53, -16, v51
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v42.l
	.loc	1 651 60 is_stmt 1              ; attention_backward.py:651:60
	v_or_b32_e32 v57, -16, v56
	v_or_b32_e32 v52, -16, v34
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v47, v47
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
	v_cmp_lt_u16_e32 vcc_lo, 7, v33.h
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v33.h, 4, v46.l
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v55, -16, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 650 33 is_stmt 0              ; attention_backward.py:650:33
	v_cndmask_b32_e32 v55, v42, v55, vcc_lo
	.loc	1 615 36 is_stmt 1              ; attention_backward.py:615:36
	v_mov_b16_e64 v42.l, v153.h
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v153, 0, v163
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
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v42.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v42, v44
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v44, v34, v52, s9
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v58, -16, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_mul_f32_e32 v42, v162, v42
	v_cvt_f32_i32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v57, v57, v58, vcc_lo
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v52, 0, v42, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v44, v162, v44
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v42, v46, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v34.l, v52.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v44, 0, v44, s3
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v42.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e64 s6, v52, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v58, 1, v34
	v_cmp_o_f32_e64 s7, v44, v44
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v34.l, v33.h, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v42, v52, v58, 0x7fff
	v_mov_b16_e32 v52.h, v34.h
	v_mov_b16_e32 v52.l, v44.h
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v46, -16, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v42.l, 0x7fff, v42.h, s6
	v_and_b32_e32 v52, 1, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v46, v34, v46, vcc_lo
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v44, v44, v52, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v52, v56
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v56.h, v34.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v42.h, 0x7fff, v44.h, s7
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v52, v162, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v52, 0, v52, s3
	v_mov_b16_e32 v56.l, v52.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s8, v52, v52
	v_and_b32_e32 v56, 1, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v52, v52, v56, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v56, v57
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v57.h, v34.h
	v_cndmask_b16 v44.h, 0x7fff, v52.h, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v56, v162, v56
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v56, 0, v56, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v57.l, v56.h
	v_cmp_o_f32_e64 s9, v56, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v57, 1, v57
	v_add3_u32 v56, v56, v57, 0x7fff
	.loc	1 623 39                        ; attention_backward.py:623:39
	v_lshlrev_b32_e32 v57, 16, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 640 41                        ; attention_backward.py:640:41
	v_mul_f32_e32 v57, s45, v57
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v47, v162, v47
	v_mul_f32_e32 v45, v162, v45
	v_dual_mul_f32 v49, v162, v49 :: v_dual_mul_f32 v36, v57, v36
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v38, v57, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v47, 0, v47, s3
	v_cndmask_b32_e64 v45, 0, v45, s3
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v35, v57, v35
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v36, v36, v168, -v73
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v37, v57, v37
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v34.l, v47.h
	v_cmp_o_f32_e64 s6, v47, v47
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v35, v35, v68, -v73
	v_fma_f32 v37, v37, v167, -v73
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v52, 1, v34
	v_mov_b16_e32 v34.l, v45.h
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v38, v38, v91, -v73
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v39, v57, v39
	v_mul_f32_e32 v40, v57, v40
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v47, v47, v52, 0x7fff
	v_and_b32_e32 v52, 1, v34
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v34.l, v33.l, 15
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v39, v39, v90, -v73
	v_fma_f32 v40, v40, v99, -v73
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v49, 0, v49, s3
	v_add3_u32 v33, v45, v52, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v33.l, v43.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v45, -16, v34
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b16 v43.l, 0x7fff, v47.h, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v44.l, 0x7fff, v33.h, vcc_lo
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s7, 0, v33.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v33, v55
	.loc	1 644 25                        ; attention_backward.py:644:25
	v_mul_f32_e32 v58, v57, v84
	v_mul_f32_e32 v57, v57, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v52, v34, v45, s7
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v33, v162, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 703 34                        ; attention_backward.py:703:34
	v_fma_f32 v58, v58, v92, -v73
	v_fma_f32 v57, v57, v95, -v73
	v_dual_mov_b32 v95, v68 :: v_dual_mov_b32 v68, v165
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v47, 0, v33, s3
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v33.l, 4, v154.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v34.l, v47.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s6, v47, v47
	v_and_b32_e32 v45, 1, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v34.l, v33.l, 15
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v33, v46
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v46.h, v34.h
	v_add3_u32 v45, v47, v45, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v33, v162, v33
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v45.l, 0x7fff, v45.h, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v33, 0, v33, s3
	v_mov_b16_e32 v46.l, v33.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_and_b32_e32 v46, 1, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v33, v33, v46, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v46, v154, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v43.h, 0x7fff, v33.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v33.l, v46.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v46, -16, v34
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s7, 0, v33.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v33, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v55, v34, v46, s7
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v33, v162, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v47, 0, v33, s3
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v33.l, 4, v50.l
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v34.l, v47.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s15, v47, v47
	v_and_b32_e32 v46, 1, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v34.l, v33.l, 15
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v33, v35
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v161, 0, v33, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v33, v161, v83
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v33, s59, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v35, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_add3_u32 v33, v33, v35, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v35, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v154, 0, v35, s2
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v35, v154, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v35, s59, v35
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v46, v47, v46, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v47, v52
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v52, v155, 20, 4
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v36, v35, 16, 1
	v_cmp_o_f32_e64 s6, v35, v35
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v47, v162, v47
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s15
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s15, v192, v192
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v59, v35, v36, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v35, v37
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v47, 0, v47, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_o_f32_e64 s16, v47, v47
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v35, 0, v35, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v36, v35, v81
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v36, s59, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v37, v36, 16, 1
	v_cmp_o_f32_e64 s7, v36, v36
	v_add3_u32 v37, v36, v37, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v36, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v36, 0, v36, s2
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v38, v36, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v38, s59, v38
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v48, v38, 16, 1
	v_cmp_o_f32_e64 s8, v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v60, v38, v48, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v38, v39
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v160, 0, v38, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v38, v160, v79
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v38, s59, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v39, v38, 16, 1
	v_cmp_o_f32_e64 s10, v38, v38
	v_add3_u32 v61, v38, v39, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v38, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v38, 0, v38, s2
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v39, v38, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v39, s59, v39
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v40, v39, 16, 1
	v_cmp_o_f32_e64 s11, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v62, v39, v40, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v39, v58
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v39, 0, v39, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v40, v39, v77
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v40, s59, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v48, v40, 16, 1
	v_cmp_o_f32_e64 s12, v40, v40
	v_add3_u32 v58, v40, v48, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v40, v57
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v40, 0, v40, s2
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v48, v40, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v48, s59, v48
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v57, v48, 16, 1
	v_cmp_o_f32_e64 s13, v48, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add3_u32 v57, v48, v57, 0x7fff
	.loc	1 615 36 is_stmt 1              ; attention_backward.py:615:36
	v_bfe_i32 v48, v50, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v48.h, v34.h
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v50, -16, v34
	.loc	1 651 43 is_stmt 0              ; attention_backward.py:651:43
	v_mov_b16_e32 v33.l, v48.l
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_mov_b16_e32 v48.l, v47.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s14, 0, v33.l
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.l, 0x7fff, v33.h, vcc_lo
	v_cndmask_b16 v33.h, 0x7fff, v61.h, s10
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v48, 1, v48
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v61, v156, 24, 4
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s10, v39, v39
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v153, v33
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.l, 0x7fff, v59.h, s6
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v153, v33 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.h, 0x7fff, v62.h, s11
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v47, v47, v48, 0x7fff
	v_cndmask_b16 v48.h, 0x7fff, v56.h, s9
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v249, v33
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.l, 0x7fff, v37.h, s7
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v249, v33 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.h, 0x7fff, v58.h, s12
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v37, v34, v50, s14
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v45.h, 0x7fff, v47.h, s16
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v250, v33
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.l, 0x7fff, v60.h, s8
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v250, v33 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v33.h, 0x7fff, v57.h, s13
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v0, v33
	ds_store_b16_d16_hi v0, v33 offset:512
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v33, v51
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v50.h, v34.h
	v_cmp_o_f32_e64 s7, v49, v49
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v33, v162, v33
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_alignbit_b32 v51, v156, v155, 24
	v_mov_b32_e32 v241, v86
	.loc	1 649 34                        ; attention_backward.py:649:34
	v_bfe_u32 v59, v156, 20, 4
	v_mov_b32_e32 v159, v88
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v33, 0, v33, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_load_b128 v[85:88], v72
	ds_load_b128 v[73:76], v253
	ds_load_b128 v[77:80], v238
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_and_b32_e32 v57, 15, v156
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v56, 24, v156
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v58, v156, 8, 4
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v34.l, v33.h
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v63, -16, v57
	.loc	1 648 33                        ; attention_backward.py:648:33
	v_bfe_u32 v60, v156, 16, 4
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s11, v40, v40
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_and_b32_e32 v47, 1, v34
	v_mov_b16_e32 v34.l, v49.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s12, v204, v204
	.loc	1 650 58                        ; attention_backward.py:650:58
	v_or_b32_e32 v64, -16, v60
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s13, v200, v200
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_add3_u32 v33, v33, v47, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v47, v55
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e64 v55.l, v156.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s14, v196, v196
	v_cmp_o_f32_e64 s16, v188, v188
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v47, v162, v47
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v47, 0, v47, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v50.l, v47.h
	v_cmp_o_f32_e64 s6, v47, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v50, 1, v50
	v_add3_u32 v47, v47, v50, 0x7fff
	v_and_b32_e32 v50, 1, v34
	v_cndmask_b16 v47.l, 0x7fff, v33.h, vcc_lo
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v34.l, 4, v53.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v46.h, 0x7fff, v47.h, s6
	v_add3_u32 v49, v49, v50, 0x7fff
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v50, v53, 0, 8
	v_bfe_i32 v53, v156, 0, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v48.l, 0x7fff, v49.h, s7
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v33.l, v50.l
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v50, -16, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s8, 0, v33.l
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v33, v37
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v37.h, v34.h
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v50, v34, v50, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v33, v162, v33
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v33, 0, v33, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v37.l, v33.h
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v33, v33, v37, 0x7fff
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v37, v54
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_lshrrev_b32_e32 v54, 8, v156
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v47.h, 0x7fff, v33.h, vcc_lo
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v37, v162, v37
	v_cvt_f32_i32_e32 v33, v50
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_mov_b16_e64 v50.l, v155.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v37, 0, v37, s3
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v33, v162, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v34.l, v37.h
	v_cmp_o_f32_e64 s6, v37, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v33, 0, v33, s3
	v_and_b32_e32 v49, 1, v34
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v34.l, 4, v155.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_add3_u32 v37, v37, v49, 0x7fff
	v_mov_b16_e32 v37.l, v33.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v34.l, v34.l, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v49.l, 0x7fff, v37.h, s6
	v_mov_b16_e32 v37.h, v34.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v33, v33, v37, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_add_nc_u32_e32 v37, 0, v164
	.loc	1 648 34                        ; attention_backward.py:648:34
	v_and_b16 v33.l, v155.l, 15
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v49.h, 0x7fff, v33.h, vcc_lo
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_load_b128 v[81:84], v37
	.loc	1 656 37                        ; attention_backward.py:656:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v247, v[42:45]
	ds_store_b128 v247, v[46:49] offset:16
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
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e64 v49, v60, v64, s8
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v58, v61, v58, vcc_lo
	.loc	1 650 58 is_stmt 0              ; attention_backward.py:650:58
	v_or_b32_e32 v51, -16, v42
	.loc	1 650 42                        ; attention_backward.py:650:42
	v_cmp_lt_u16_e32 vcc_lo, 7, v33.h
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v49, v49
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_lshrrev_b16 v33.h, 4, v43.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v45, v162, v45
	v_mul_f32_e32 v46, v162, v46
	.loc	1 650 33                        ; attention_backward.py:650:33
	v_cndmask_b32_e32 v51, v42, v51, vcc_lo
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v42, v50, 0, 8
	.loc	1 651 60                        ; attention_backward.py:651:60
	v_or_b32_e32 v50, -16, v52
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v49, v162, v49
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v46, 0, v46, s4
	v_cndmask_b32_e64 v45, 0, v45, s4
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v42.l
	.loc	1 615 36                        ; attention_backward.py:615:36
	v_bfe_i32 v42, v55, 0, 8
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v49, 0, v49, s4
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v155.l, v34.h
	v_mov_b16_e64 v156.l, v34.h
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v50, v52, v50, vcc_lo
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v52, -16, v59
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e32 vcc_lo, 0, v42.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25 is_stmt 1              ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v50, v50
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e32 v42, v59, v52, vcc_lo
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v52.h, v34.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v50, v162, v50
	v_cvt_f32_i32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v50, 0, v50, s4
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v42, v162, v42
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
	v_mul_f32_e32 v42, v162, v42
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
	v_mul_f32_e32 v33, v162, v33
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
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v48, v50
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_mov_b16_e32 v50.h, v34.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s9, v36, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v46, v46
	v_mul_f32_e32 v48, v162, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v46, v162, v46
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v48, 0, v48, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v46, 0, v46, s4
	v_mov_b16_e32 v50.l, v48.h
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v33, v162, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	v_and_b32_e32 v50, 1, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v33, 0, v33, s4
	v_add3_u32 v48, v48, v50, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v34.l, v33.h
	v_cmp_o_f32_e64 s7, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v45, 1, v34
	.loc	1 649 36                        ; attention_backward.py:649:36
	v_and_b16 v34.l, v43.h, 15
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b16 v43.h, 0x7fff, v48.h, vcc_lo
	v_add3_u32 v33, v33, v45, 0x7fff
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_mov_b16_e32 v33.l, v53.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 651 60 is_stmt 0              ; attention_backward.py:651:60
	v_or_b32_e32 v50, -16, v34
	.loc	1 656 37 is_stmt 1              ; attention_backward.py:656:37
	v_cndmask_b16 v45.l, 0x7fff, v33.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 651 43                        ; attention_backward.py:651:43
	v_cmp_gt_i16_e64 s8, 0, v33.l
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v33, v47
	.loc	1 651 34                        ; attention_backward.py:651:34
	v_cndmask_b32_e64 v50, v34, v50, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v33, v162, v33
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
	v_mul_f32_e32 v33, v162, v33
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
	v_mul_f32_e32 v47, v162, v47
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
	v_mul_f32_e32 v33, v162, v33
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s8, v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_cvt_f32_i32_e32 v50, v50
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v33, 0, v33, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v50, v162, v50
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
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 658 25                        ; attention_backward.py:658:25
	v_mul_f32_e32 v49, v162, v49
	.loc	1 656 37                        ; attention_backward.py:656:37
	v_cndmask_b32_e64 v33, 0, v50, s4
	v_mov_b16_e32 v50.h, v34.h
	v_cndmask_b32_e64 v49, 0, v49, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v50.l, v33.h
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v34.l, v49.h
	v_and_b32_e32 v50, 1, v50
	v_cmp_o_f32_e64 s6, v49, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v51, 1, v34
	v_add3_u32 v33, v33, v50, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v49, v49, v51, 0x7fff
	v_cndmask_b16 v49.l, 0x7fff, v49.h, s6
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b16 v49.h, 0x7fff, v33.h, vcc_lo
	ds_store_b128 v247, v[42:45] offset:32
	ds_store_b128 v247, v[46:49] offset:48
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
	ds_load_u16_d16 v164, v243 offset:2624
	ds_load_u16_d16 v169, v243 offset:3904
	ds_load_u16_d16 v166, v243 offset:3136
	ds_load_u16_d16 v163, v243 offset:2368
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v54, v243 offset:1216
	ds_load_u16_d16_hi v44, v243 offset:640
	ds_load_u16_d16_hi v45, v243 offset:896
	ds_load_u16_d16_hi v46, v243 offset:1152
	ds_load_u16_d16 v55, v243 offset:1344
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v164, v243 offset:2752
	ds_load_u16_d16_hi v48, v243 offset:1664
	ds_load_u16_d16_hi v47, v243 offset:1408
	ds_load_u16_d16 v50, v243 offset:64
	ds_load_u16_d16_hi v43, v243 offset:384
	ds_load_u16_d16_hi v42, v243 offset:128
	ds_load_u16_d16 v52, v243 offset:576
	ds_load_u16_d16 v51, v243 offset:320
	ds_load_u16_d16_hi v49, v243 offset:1920
	ds_load_u16_d16 v56, v243 offset:1600
	ds_load_u16_d16 v162, v243 offset:2112
	ds_load_u16_d16 v57, v243 offset:1856
	ds_load_u16_d16_hi v53, v243 offset:960
	ds_load_u16_d16 v65, v243 offset:3840
	ds_load_u16_d16 v63, v243 offset:3328
	ds_load_u16_d16 v61, v243 offset:2816
	ds_load_u16_d16 v64, v243 offset:3584
	ds_load_u16_d16 v165, v243 offset:2880
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v163, v243 offset:2496
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v55, v243 offset:1472
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v56, v243 offset:1728
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v57, v243 offset:1984
	ds_load_u16_d16_hi v58, v243 offset:2176
	ds_load_u16_d16_hi v162, v243 offset:2240
	ds_load_u16_d16 v168, v243 offset:3648
	ds_load_u16_d16 v167, v243 offset:3392
	ds_load_u16_d16_hi v62, v243 offset:3200
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v63, v243 offset:3456
	ds_load_u16_d16_hi v59, v243 offset:2432
	ds_load_u16_d16_hi v60, v243 offset:2688
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v61, v243 offset:2944
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v64, v243 offset:3712
	ds_load_u16_d16_hi v65, v243 offset:3968
	ds_load_u16_d16_hi v169, v243 offset:4032
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v165, v243 offset:3008
	ds_load_u16_d16_hi v166, v243 offset:3264
	ds_load_u16_d16_hi v50, v243 offset:192
	ds_load_u16_d16_hi v52, v243 offset:704
	ds_load_u16_d16_hi v51, v243 offset:448
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v168, v243 offset:3776
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v167, v243 offset:3520
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v33, v161, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[42:49], v[81:88], v[25:32]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v161, v161
	v_cmp_o_f32_e64 s6, v160, v160
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v46, v214, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v33, v161, v33, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[58:65], v[73:80], v[25:32]
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v58.l, v34.h
	v_mov_b16_e32 v59.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v46, v214, v46, 0x7fff
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[50:57], v[81:88], v[17:24]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v46.l, v34.h
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v44, v39, 16, 1
	v_bfe_u32 v45, v40, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v47, v210, 16, 1
	v_bfe_u32 v48, v206, 16, 1
	v_bfe_u32 v49, v202, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[17:24], v[162:169], v[73:80], v[17:24]
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v73.h, 0x7fff, v33.h, vcc_lo
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v73.l, v34.h
	v_mov_b16_e32 v76.l, v34.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v44, v39, v44, 0x7fff
	v_add3_u32 v45, v40, v45, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v47, v210, v47, 0x7fff
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v33, v161, v73
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v48, v206, v48, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v61.h, 0x7fff, v44.h, s10
	v_cndmask_b16 v62.h, 0x7fff, v45.h, s11
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v44, v222, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v42, v33, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v45, v218, 16, 1
	v_add3_u32 v49, v202, v49, 0x7fff
	v_add3_u32 v44, v222, v44, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v74, v33, v42, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v33, v160, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v45, v218, v45, 0x7fff
	v_bfe_u32 v50, v198, 16, 1
	v_bfe_u32 v52, v190, 16, 1
	v_bfe_u32 v53, v186, 16, 1
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v33, v160, v33, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v54, v182, 16, 1
	v_add3_u32 v50, v198, v50, 0x7fff
	v_add3_u32 v52, v190, v52, 0x7fff
	v_add3_u32 v53, v186, v53, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v76.h, 0x7fff, v33.h, s6
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v153, v73
	ds_store_b16_d16_hi v153, v76 offset:512
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v33, v160, v76
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v54, v182, v54, 0x7fff
	v_bfe_u32 v55, v178, 16, 1
	v_bfe_u32 v56, v174, 16, 1
	v_bfe_u32 v57, v170, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v42, v33, 16, 1
	v_cmp_o_f32_e64 s6, v33, v33
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v55, v178, v55, 0x7fff
	v_add3_u32 v56, v174, v56, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v60.l, v34.h
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_add3_u32 v75, v33, v42, 0x7fff
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_bfe_u32 v33, v154, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v51, v194, 16, 1
	v_add3_u32 v57, v170, v57, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v61.l, v34.h
	v_mov_b16_e32 v62.l, v34.h
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v33, v154, v33, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v33.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v51, v194, v51, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v39, v39, v61 :: v_dual_sub_f32 v40, v40, v62
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s7
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v63, v188, 16, 1
	v_bfe_u32 v64, v184, 16, 1
	v_bfe_u32 v65, v180, 16, 1
	v_cmp_o_f32_e64 s10, v212, v212
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v42, v154, v33
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v249, v33
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v33, v35, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s11, v208, v208
	v_add3_u32 v63, v188, v63, 0x7fff
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
	v_mov_b16_e32 v47.l, v34.h
	v_mov_b16_e32 v48.l, v34.h
	v_mov_b16_e32 v49.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v161.h, 0x7fff, v63.h, s16
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v58.h, 0x7fff, v43.h, s8
	v_bfe_u32 v43, v36, 16, 1
	v_cmp_o_f32_e64 s8, v35, v35
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v155.h, 0x7fff, v64.h, s17
	v_cndmask_b16 v156.h, 0x7fff, v65.h, s18
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
	ds_store_b16_d16_hi v249, v58 offset:512
	ds_store_b16_d16_hi v250, v59
	ds_store_b16_d16_hi v250, v61 offset:512
	ds_store_b16_d16_hi v0, v60
	ds_store_b16_d16_hi v0, v62 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[81:84], v37
	ds_load_b128 v[85:88], v72
	ds_load_b128 v[73:76], v253
	ds_load_b128 v[77:80], v238
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v153, v33
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.l, 0x7fff, v42.h, s7
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v42, v230, 16, 1
	v_bfe_u32 v43, v226, 16, 1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v35, v35, v59
	v_dual_mov_b32 v255, v98 :: v_dual_sub_f32 v36, v36, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v42, v230, v42, 0x7fff
	v_add3_u32 v43, v226, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v58, v35, 16, 1
	v_cmp_o_f32_e64 s7, v38, v38
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v153, v33 offset:512
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v42.h, 0x7fff, v42.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v222, v222
	v_cndmask_b16 v43.h, 0x7fff, v43.h, s6
	v_cmp_o_f32_e64 s6, v194, v194
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s9, v40, v40
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v59, v204, 16, 1
	v_cndmask_b16 v44.h, 0x7fff, v44.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v218, v218
	v_cndmask_b16 v51.h, 0x7fff, v51.h, s6
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s6, v36, v36
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v60, v200, 16, 1
	v_bfe_u32 v61, v196, 16, 1
	v_cndmask_b16 v45.h, 0x7fff, v45.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v214, v214
	v_bfe_u32 v62, v192, 16, 1
	v_add3_u32 v59, v204, v59, 0x7fff
	v_add3_u32 v60, v200, v60, 0x7fff
	v_mov_b32_e32 v200, v72
	v_cndmask_b16 v46.h, 0x7fff, v46.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v210, v210
	v_add3_u32 v61, v196, v61, 0x7fff
	v_add3_u32 v62, v192, v62, 0x7fff
	v_bfe_u32 v72, v176, 16, 1
	v_bfe_u32 v153, v172, 16, 1
	v_cndmask_b16 v47.h, 0x7fff, v47.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v206, v206
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v42.l, v34.h
	v_mov_b16_e32 v43.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v72, v176, v72, 0x7fff
	v_add3_u32 v154, v172, v153, 0x7fff
	v_cndmask_b16 v48.h, 0x7fff, v48.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v202, v202
	v_cndmask_b16 v184.h, 0x7fff, v59.h, s12
	v_cndmask_b16 v162.h, 0x7fff, v60.h, s13
	v_cndmask_b16 v163.h, 0x7fff, v61.h, s14
	v_cndmask_b16 v160.h, 0x7fff, v62.h, s15
	v_cndmask_b16 v49.h, 0x7fff, v49.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v198, v198
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v50.l, v34.h
	v_mov_b16_e32 v51.l, v34.h
	v_mov_b16_e32 v52.l, v34.h
	v_mov_b16_e32 v53.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v50.h, 0x7fff, v50.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v190, v190
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v54.l, v34.h
	v_mov_b16_e32 v55.l, v34.h
	v_mov_b16_e32 v56.l, v34.h
	v_mov_b16_e32 v57.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v52.h, 0x7fff, v52.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v186, v186
	v_cndmask_b16 v153.h, 0x7fff, v72.h, s19
	v_cndmask_b16 v154.h, 0x7fff, v154.h, s20
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v72, v144, v49
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v49.l, v184.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v53.h, 0x7fff, v53.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v182, v182
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v186, v142, v48
	v_sub_f32_e32 v188, v148, v47
	v_sub_f32_e32 v190, v146, v46
	v_sub_f32_e32 v192, v152, v45
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v54.h, 0x7fff, v54.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v178, v178
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v194, v150, v44
	v_sub_f32_e32 v196, v140, v43
	v_sub_f32_e32 v198, v138, v42
	v_sub_f32_e32 v110, v110, v54
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v55.h, 0x7fff, v55.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v174, v174
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v54.l, v155.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v116, v116, v53
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v53.l, v161.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v112, v112, v55
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v56.h, 0x7fff, v56.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v170, v170
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v55.l, v156.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v114, v114, v52
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v52.l, v160.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v106, v106, v56
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v57.h, 0x7fff, v57.h, vcc_lo
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e32 vcc_lo, v35, v35
	v_add3_u32 v35, v35, v58, 0x7fff
	v_bfe_u32 v58, v36, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v56.l, v153.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v108, v108, v57
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v57.l, v154.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v120, v120, v51
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v36, v36, v58, 0x7fff
	v_bfe_u32 v58, v38, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v51.l, v163.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v118, v118, v50
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v50.l, v162.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s19, v205, v205
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v38, v38, v58, 0x7fff
	v_bfe_u32 v58, v39, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s20, v203, v203
	v_cmp_o_f32_e64 s13, v217, v217
	v_cmp_o_f32_e64 s17, v209, v209
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.h, 0x7fff, v38.h, s7
	v_add3_u32 v39, v39, v58, 0x7fff
	v_bfe_u32 v58, v40, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v249, v33
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.l, 0x7fff, v35.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v249, v33 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.h, 0x7fff, v39.h, s8
	v_add3_u32 v40, v40, v58, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v35, v228, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v250, v33
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.l, 0x7fff, v36.h, s6
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v250, v33 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v33.h, 0x7fff, v40.h, s9
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v0, v33
	ds_store_b16_d16_hi v0, v33 offset:512
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
	v_cndmask_b16 v33.h, 0x7fff, v33.h, vcc_lo
	v_cndmask_b16 v172.h, 0x7fff, v35.h, s6
	v_cndmask_b16 v174.h, 0x7fff, v36.h, s7
	v_cndmask_b16 v176.h, 0x7fff, v38.h, s8
	v_cndmask_b16 v178.h, 0x7fff, v39.h, s9
	v_cndmask_b16 v180.h, 0x7fff, v40.h, s10
	v_cndmask_b16 v182.h, 0x7fff, v58.h, s11
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[58:61], v37
	ds_load_b128 v[62:65], v200
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v47.l, v180.h
	v_mov_b16_e64 v48.l, v182.h
	v_mov_b16_e64 v46.l, v178.h
	v_mov_b16_e64 v45.l, v176.h
	v_mov_b16_e64 v44.l, v174.h
	v_mov_b16_e64 v43.l, v172.h
	v_mov_b16_e32 v42.l, v33.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v37, v229, 16, 1
	v_bfe_u32 v38, v227, 16, 1
	v_bfe_u32 v39, v225, 16, 1
	v_bfe_u32 v40, v223, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[42:49], v[81:88], v[9:16]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s7, v229, v229
	v_add3_u32 v37, v229, v37, 0x7fff
	v_cmp_o_f32_e64 s8, v227, v227
	v_add3_u32 v38, v227, v38, 0x7fff
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[50:57], v[73:80], v[9:16]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s9, v225, v225
	v_add3_u32 v39, v225, v39, 0x7fff
	v_cmp_o_f32_e64 s10, v223, v223
	v_add3_u32 v40, v223, v40, 0x7fff
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[42:49], v[58:65], v[9:16]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v42, v221, 16, 1
	v_cndmask_b16 v43.h, 0x7fff, v38.h, s8
	v_bfe_u32 v36, v231, 16, 1
	v_cndmask_b16 v44.h, 0x7fff, v40.h, s10
	v_cmp_o_f32_e64 s6, v231, v231
	v_add3_u32 v138, v221, v42, 0x7fff
	v_bfe_u32 v42, v219, 16, 1
	v_add3_u32 v36, v231, v36, 0x7fff
	v_cmp_o_f32_e64 s18, v207, v207
	v_bfe_u32 v35, v233, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v233, v233
	v_add3_u32 v45, v219, v42, 0x7fff
	v_bfe_u32 v42, v217, 16, 1
	v_cmp_o_f32_e64 s15, v213, v213
	v_add3_u32 v35, v233, v35, 0x7fff
	v_cmp_o_f32_e64 s16, v211, v211
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v96, off, off offset:172
	scratch_load_b32 v100, off, off offset:140
	v_add3_u32 v140, v217, v42, 0x7fff
	v_bfe_u32 v42, v215, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v162.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s11, v221, v221
	v_cmp_o_f32_e64 s12, v219, v219
	v_cmp_o_f32_e64 s14, v215, v215
	v_add3_u32 v46, v215, v42, 0x7fff
	v_bfe_u32 v42, v213, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v43.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v45.h, 0x7fff, v45.h, s12
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v44.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v46.h, 0x7fff, v46.h, s14
	v_add3_u32 v142, v213, v42, 0x7fff
	v_bfe_u32 v42, v211, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v45.l, v34.h
	v_mov_b16_e32 v46.l, v34.h
	v_mov_b16_e64 v164.l, v34.h
	v_mov_b16_e32 v33.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v47, v211, v42, 0x7fff
	v_bfe_u32 v42, v209, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v47.l, v34.h
	v_mov_b16_e64 v174.l, v34.h
	v_mov_b16_e64 v178.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v47.h, 0x7fff, v47.h, s16
	v_add3_u32 v144, v209, v42, 0x7fff
	v_bfe_u32 v42, v207, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v132, v132, v45
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v182.l, v34.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v128, v128, v47 :: v_dual_sub_f32 v33, v137, v33
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v48, v207, v42, 0x7fff
	v_bfe_u32 v42, v205, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v48.l, v34.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v130, v130, v44
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v160.l, v34.h
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v48.h, 0x7fff, v48.h, s18
	v_add3_u32 v146, v205, v42, 0x7fff
	v_bfe_u32 v42, v203, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v172.l, v34.h
	v_mov_b16_e64 v176.l, v34.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v122, v122, v48
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v180.l, v34.h
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v49, v203, v42, 0x7fff
	v_bfe_u32 v42, v201, 16, 1
	scratch_load_b128 v[203:206], off, off offset:80 ; 16-byte Folded Reload
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v49.l, v34.h
	v_mov_b16_e64 v184.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v49.h, 0x7fff, v49.h, s20
	v_add3_u32 v148, v201, v42, 0x7fff
	v_bfe_u32 v42, v199, 16, 1
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s14, v190, v190
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v163.l, v34.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v124, v124, v49
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v161.l, v34.h
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v150, v199, v42, 0x7fff
	v_bfe_u32 v42, v197, 16, 1
	v_cndmask_b16 v199.h, 0x7fff, v146.h, s19
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v199.l, v34.h
	v_mov_b32_e32 v202, v0
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v164.h, 0x7fff, v150.h, s22
	v_add3_u32 v152, v197, v42, 0x7fff
	v_bfe_u32 v42, v195, 16, 1
	v_cndmask_b16 v197.h, 0x7fff, v144.h, s17
	v_cndmask_b16 v150.h, 0x7fff, v148.h, s21
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v49.l, v199.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v152.h, 0x7fff, v152.h, s23
	v_add3_u32 v165, v195, v42, 0x7fff
	v_bfe_u32 v42, v193, 16, 1
	v_cndmask_b16 v195.h, 0x7fff, v142.h, s15
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v165.l, v34.h
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v48.l, v197.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v165.h, 0x7fff, v165.h, s24
	v_add3_u32 v193, v193, v42, 0x7fff
	v_bfe_u32 v42, v191, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v47.l, v195.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v197.l, v34.h
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v136, v136, v43
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_cndmask_b16 v146.h, 0x7fff, v193.h, s25
	v_add3_u32 v166, v191, v42, 0x7fff
	v_bfe_u32 v42, v189, 16, 1
	v_cndmask_b16 v191.h, 0x7fff, v140.h, s13
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v191.l, v34.h
	v_mov_b16_e64 v166.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v166.h, 0x7fff, v166.h, s26
	v_add3_u32 v189, v189, v42, 0x7fff
	v_bfe_u32 v42, v187, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v195.l, v34.h
	v_mov_b16_e64 v153.l, v34.h
	v_mov_b16_e64 v150.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v148.h, 0x7fff, v189.h, s27
	v_add3_u32 v167, v187, v42, 0x7fff
	v_bfe_u32 v42, v185, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v167.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v187.h, 0x7fff, v138.h, s11
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v187.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v167.h, 0x7fff, v167.h, s28
	v_add3_u32 v185, v185, v42, 0x7fff
	v_bfe_u32 v42, v183, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v45.l, v187.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v140.l, v34.h
	v_mov_b16_e64 v154.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v142.h, 0x7fff, v185.h, s29
	v_add3_u32 v168, v183, v42, 0x7fff
	v_bfe_u32 v42, v181, 16, 1
	v_cndmask_b16 v183.h, 0x7fff, v39.h, s9
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v168.l, v34.h
	v_mov_b16_e64 v183.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v168.h, 0x7fff, v168.h, s30
	v_add3_u32 v181, v181, v42, 0x7fff
	v_bfe_u32 v42, v179, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v44.l, v183.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v146.l, v34.h
	v_mov_b16_e64 v148.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v144.h, 0x7fff, v181.h, s31
	v_add3_u32 v169, v179, v42, 0x7fff
	v_cndmask_b16 v179.h, 0x7fff, v37.h, s7
	scratch_load_b128 v[37:40], off, off offset:96 ; 16-byte Folded Reload
	v_bfe_u32 v42, v177, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v169.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v169.h, 0x7fff, v169.h, s33
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v43.l, v179.h
	v_mov_b32_e32 v181, v92
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v177, v177, v42, 0x7fff
	v_bfe_u32 v42, v175, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v179.l, v34.h
	v_mov_b16_e64 v142.l, v34.h
	v_mov_b16_e64 v144.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v138.h, 0x7fff, v177.h, s34
	v_add3_u32 v170, v175, v42, 0x7fff
	v_bfe_u32 v42, v173, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v170.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v175.h, 0x7fff, v35.h, vcc_lo
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v175.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v170.h, 0x7fff, v170.h, s35
	v_add3_u32 v173, v173, v42, 0x7fff
	v_bfe_u32 v42, v171, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v126, v126, v46
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v46.l, v191.h
	v_mov_b32_e32 v177, v90
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v140.h, 0x7fff, v173.h, s36
	v_add3_u32 v171, v171, v42, 0x7fff
	v_cndmask_b16 v42.h, 0x7fff, v36.h, s6
	scratch_load_b32 v173, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v171.l, v34.h
	v_mov_b16_e32 v42.l, v34.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v171.h, 0x7fff, v171.h, s37
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_cmp_o_f32_e64 s6, v198, v198
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v138.l, v34.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v134, v134, v42
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v42.l, v175.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v152.l, v34.h
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v98, off, off offset:132
	scratch_load_b32 v104, off, off offset:180
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[42:49], v[81:88], v[1:8]
	s_waitcnt vmcnt(4)
	v_mov_b32_e32 v207, v203
	v_mov_b32_e32 v209, v205
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s16, v188, v188
	v_cmp_o_f32_e64 s20, v72, v72
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	s_waitcnt vmcnt(3)
	v_sub_f32_e32 v36, v38, v170
	v_dual_mov_b32 v208, v37 :: v_dual_sub_f32 v37, v206, v169
	v_sub_f32_e32 v38, v204, v168
	scratch_load_b128 v[203:206], off, off offset:64 ; 16-byte Folded Reload
	v_dual_sub_f32 v35, v40, v171 :: v_dual_mov_b32 v210, v39
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v171.l, v140.h
	v_mov_b16_e64 v170.l, v138.h
	v_mov_b16_e64 v169.l, v144.h
	v_mov_b16_e64 v168.l, v142.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s18, v186, v186
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	s_waitcnt vmcnt(0)
	v_dual_sub_f32 v39, v206, v167 :: v_dual_sub_f32 v40, v204, v166
	v_mov_b32_e32 v211, v203
	v_mov_b32_e32 v213, v205
	scratch_load_b128 v[203:206], off, off offset:48 ; 16-byte Folded Reload
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v167.l, v148.h
	v_mov_b16_e64 v166.l, v146.h
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s8, v196, v196
	v_cmp_o_f32_e64 s10, v194, v194
	v_cmp_o_f32_e64 s12, v192, v192
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	s_waitcnt vmcnt(0)
	v_sub_f32_e32 v92, v206, v165
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v165.l, v152.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v90, v204, v164
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v164.l, v150.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[164:171], v[73:80], v[1:8]
	.loc	1 740 35                        ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[42:49], v[58:65], v[1:8]
	ds_load_b128 v[42:45], v253
	ds_load_b128 v[46:49], v238
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v65, off, off offset:152
	scratch_load_b32 v64, off, off offset:16
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[50:57], v[42:49], v[9:16]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[164:171], v[42:49], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v42, v139, v172 :: v_dual_sub_f32 v43, v149, v174
	v_dual_sub_f32 v44, v151, v176 :: v_dual_sub_f32 v45, v145, v178
	v_sub_f32_e32 v46, v147, v180
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v50, v42, 16, 1
	v_cmp_o_f32_e64 s7, v42, v42
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v47, v141, v182 :: v_dual_sub_f32 v48, v143, v184
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v49, v33, 16, 1
	v_add3_u32 v50, v42, v50, 0x7fff
	v_bfe_u32 v42, v196, 16, 1
	v_cmp_o_f32_e64 s9, v43, v43
	v_cmp_o_f32_e64 s11, v44, v44
	v_add3_u32 v33, v33, v49, 0x7fff
	v_bfe_u32 v49, v198, 16, 1
	v_add3_u32 v51, v196, v42, 0x7fff
	v_bfe_u32 v42, v43, 16, 1
	v_cmp_o_f32_e64 s13, v45, v45
	v_cmp_o_f32_e64 s15, v46, v46
	v_add3_u32 v49, v198, v49, 0x7fff
	v_cmp_o_f32_e64 s17, v47, v47
	v_add3_u32 v52, v43, v42, 0x7fff
	v_bfe_u32 v42, v194, 16, 1
	v_cmp_o_f32_e64 s19, v48, v48
	v_cndmask_b16 v43.l, 0x7fff, v50.h, s7
	v_cndmask_b16 v43.h, 0x7fff, v51.h, s8
	v_mov_b32_e32 v164, v242
	v_add3_u32 v53, v194, v42, 0x7fff
	v_bfe_u32 v42, v44, 16, 1
	v_mov_b32_e32 v242, v246
	v_mov_b32_e32 v246, v237
	v_mov_b32_e32 v237, v157
	v_mov_b32_e32 v157, v251
	v_add3_u32 v54, v44, v42, 0x7fff
	v_bfe_u32 v42, v192, 16, 1
	v_cndmask_b16 v44.l, 0x7fff, v52.h, s9
	v_cndmask_b16 v44.h, 0x7fff, v53.h, s10
	v_mov_b32_e32 v251, v252
	v_cmp_o_f32_e64 s10, v130, v130
	v_add3_u32 v55, v192, v42, 0x7fff
	v_bfe_u32 v42, v45, 16, 1
	v_mov_b32_e32 v165, v68
	v_mov_b32_e32 v169, v234
	v_dual_mov_b32 v234, v158 :: v_dual_mov_b32 v171, v255
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v56, v45, v42, 0x7fff
	v_bfe_u32 v42, v190, 16, 1
	v_cndmask_b16 v45.l, 0x7fff, v54.h, s11
	v_cndmask_b16 v45.h, 0x7fff, v55.h, s12
	v_cmp_o_f32_e64 s12, v132, v132
	v_mov_b32_e32 v167, v97
	v_add3_u32 v57, v190, v42, 0x7fff
	v_bfe_u32 v42, v46, 16, 1
	v_mov_b32_e32 v168, v66
	v_mov_b32_e32 v166, v99
	v_mov_b32_e32 v68, v95
	scratch_load_b32 v170, off, off offset:228 ; 4-byte Folded Reload
	v_add3_u32 v58, v46, v42, 0x7fff
	v_bfe_u32 v42, v188, 16, 1
	v_cndmask_b16 v46.l, 0x7fff, v56.h, s13
	v_cndmask_b16 v46.h, 0x7fff, v57.h, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v59, v188, v42, 0x7fff
	v_bfe_u32 v42, v47, 16, 1
	v_add3_u32 v60, v47, v42, 0x7fff
	v_bfe_u32 v42, v186, 16, 1
	v_cndmask_b16 v47.l, 0x7fff, v58.h, s15
	v_cndmask_b16 v47.h, 0x7fff, v59.h, s16
	v_cmp_o_f32_e64 s16, v128, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v61, v186, v42, 0x7fff
	v_bfe_u32 v42, v48, 16, 1
	v_add3_u32 v62, v48, v42, 0x7fff
	v_bfe_u32 v42, v72, 16, 1
	v_cndmask_b16 v48.l, 0x7fff, v60.h, s17
	v_cndmask_b16 v48.h, 0x7fff, v61.h, s18
	v_cmp_o_f32_e64 s18, v122, v122
	v_cndmask_b16 v49.l, 0x7fff, v62.h, s19
	v_add3_u32 v63, v72, v42, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v33.h, vcc_lo
	v_cndmask_b16 v42.h, 0x7fff, v49.h, s6
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v33, v133, v175
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s14, v126, v126
	v_cndmask_b16 v49.h, 0x7fff, v63.h, s20
	v_cmp_o_f32_e64 s20, v124, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[42:49], v[81:88], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v42, v135, v179
	v_sub_f32_e32 v43, v129, v183
	v_dual_sub_f32 v47, v121, v197 :: v_dual_sub_f32 v44, v131, v187
	v_sub_f32_e32 v45, v125, v191
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v50, v42, 16, 1
	v_cmp_o_f32_e64 s7, v42, v42
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v46, v127, v195
	v_sub_f32_e32 v48, v123, v199
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v49, v33, 16, 1
	v_add3_u32 v50, v42, v50, 0x7fff
	v_bfe_u32 v42, v136, 16, 1
	v_cmp_o_f32_e64 s6, v134, v134
	v_cmp_o_f32_e64 s8, v136, v136
	v_add3_u32 v33, v33, v49, 0x7fff
	v_bfe_u32 v49, v134, 16, 1
	v_add3_u32 v51, v136, v42, 0x7fff
	v_bfe_u32 v42, v43, 16, 1
	v_cmp_o_f32_e64 s9, v43, v43
	v_cmp_o_f32_e64 s11, v44, v44
	v_add3_u32 v49, v134, v49, 0x7fff
	v_cmp_o_f32_e64 s13, v45, v45
	v_add3_u32 v52, v43, v42, 0x7fff
	v_bfe_u32 v42, v130, 16, 1
	v_cmp_o_f32_e64 s15, v46, v46
	v_cmp_o_f32_e64 s17, v47, v47
	v_cmp_o_f32_e64 s19, v48, v48
	v_cndmask_b16 v43.l, 0x7fff, v50.h, s7
	v_add3_u32 v53, v130, v42, 0x7fff
	v_bfe_u32 v42, v44, 16, 1
	v_cndmask_b16 v43.h, 0x7fff, v51.h, s8
	v_cmp_o_f32_e64 s8, v120, v120
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v121, off, off offset:200
	scratch_load_b32 v123, off, off offset:208
	v_add3_u32 v54, v44, v42, 0x7fff
	v_bfe_u32 v42, v132, 16, 1
	v_cndmask_b16 v44.l, 0x7fff, v52.h, s9
	v_cndmask_b16 v44.h, 0x7fff, v53.h, s10
	v_cmp_o_f32_e64 s10, v114, v114
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v55, v132, v42, 0x7fff
	v_bfe_u32 v42, v45, 16, 1
	v_add3_u32 v56, v45, v42, 0x7fff
	v_bfe_u32 v42, v126, 16, 1
	v_cndmask_b16 v45.l, 0x7fff, v54.h, s11
	v_cndmask_b16 v45.h, 0x7fff, v55.h, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v57, v126, v42, 0x7fff
	v_bfe_u32 v42, v46, 16, 1
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
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v61, v122, v42, 0x7fff
	v_bfe_u32 v42, v48, 16, 1
	v_add3_u32 v62, v48, v42, 0x7fff
	v_bfe_u32 v42, v124, 16, 1
	v_cndmask_b16 v48.l, 0x7fff, v60.h, s17
	v_cndmask_b16 v48.h, 0x7fff, v61.h, s18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v49.l, 0x7fff, v62.h, s19
	v_add3_u32 v63, v124, v42, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v33.h, vcc_lo
	v_cndmask_b16 v42.h, 0x7fff, v49.h, s6
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v33, v117, v162 :: v_dual_mov_b32 v158, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cndmask_b16 v49.h, 0x7fff, v63.h, s20
	v_dual_mov_b32 v67, v240 :: v_dual_mov_b32 v240, v254
	v_mov_b32_e32 v255, v94
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[42:49], v[81:88], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v42, v119, v163 :: v_dual_sub_f32 v43, v113, v160
	v_dual_sub_f32 v44, v115, v161 :: v_dual_sub_f32 v45, v109, v155
	v_sub_f32_e32 v46, v111, v156
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v50, v42, 16, 1
	v_cmp_o_f32_e64 s7, v42, v42
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v47, v105, v153 :: v_dual_sub_f32 v48, v107, v154
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v49, v33, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v50, v42, v50, 0x7fff
	v_bfe_u32 v42, v120, 16, 1
	v_cmp_o_f32_e64 s6, v118, v118
	v_cmp_o_f32_e64 s9, v43, v43
	v_add3_u32 v33, v33, v49, 0x7fff
	v_bfe_u32 v49, v118, 16, 1
	v_add3_u32 v51, v120, v42, 0x7fff
	v_bfe_u32 v42, v43, 16, 1
	v_cmp_o_f32_e64 s11, v44, v44
	v_cmp_o_f32_e64 s12, v116, v116
	v_add3_u32 v49, v118, v49, 0x7fff
	v_cmp_o_f32_e64 s13, v45, v45
	v_add3_u32 v52, v43, v42, 0x7fff
	v_bfe_u32 v42, v114, 16, 1
	v_cmp_o_f32_e64 s15, v46, v46
	v_cmp_o_f32_e64 s17, v47, v47
	v_cmp_o_f32_e64 s18, v106, v106
	v_cmp_o_f32_e64 s19, v48, v48
	v_add3_u32 v53, v114, v42, 0x7fff
	v_bfe_u32 v42, v44, 16, 1
	v_cmp_o_f32_e64 s20, v108, v108
	v_cndmask_b16 v43.l, 0x7fff, v50.h, s7
	v_cndmask_b16 v43.h, 0x7fff, v51.h, s8
	v_mov_b32_e32 v254, v93
	v_add3_u32 v54, v44, v42, 0x7fff
	v_bfe_u32 v42, v116, 16, 1
	v_cndmask_b16 v44.l, 0x7fff, v52.h, s9
	v_cndmask_b16 v44.h, 0x7fff, v53.h, s10
	v_cmp_o_f32_e64 s10, v40, v40
	v_mov_b32_e32 v163, v101
	v_add3_u32 v55, v116, v42, 0x7fff
	v_bfe_u32 v42, v45, 16, 1
	v_mov_b32_e32 v87, v236
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v34, v208, v138
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s8, v92, v92
	v_mov_b32_e32 v88, v159
	v_add3_u32 v56, v45, v42, 0x7fff
	v_bfe_u32 v42, v110, 16, 1
	v_cndmask_b16 v45.l, 0x7fff, v54.h, s11
	v_cndmask_b16 v45.h, 0x7fff, v55.h, s12
	v_cmp_o_f32_e64 s12, v39, v39
	v_mov_b32_e32 v86, v241
	v_add3_u32 v57, v110, v42, 0x7fff
	v_bfe_u32 v42, v46, 16, 1
	v_mov_b32_e32 v160, v245
	s_clause 0xb                            ; 52-byte Folded Reload
	scratch_load_b32 v241, off, off offset:240
	scratch_load_b32 v245, off, off offset:236
	scratch_load_b32 v159, off, off offset:232
	scratch_load_b32 v236, off, off offset:224
	scratch_load_b32 v0, off, off offset:220
	scratch_load_b32 v66, off, off offset:216
	scratch_load_b32 v161, off, off offset:160
	scratch_load_b32 v105, off, off offset:184
	scratch_load_b32 v107, off, off offset:192
	scratch_load_b32 v103, off, off offset:176
	scratch_load_b32 v99, off, off offset:136
	scratch_load_b64 v[93:94], off, off offset:120
	v_add3_u32 v58, v46, v42, 0x7fff
	v_bfe_u32 v42, v112, 16, 1
	v_cndmask_b16 v46.l, 0x7fff, v56.h, s13
	v_cndmask_b16 v46.h, 0x7fff, v57.h, s14
	v_cmp_o_f32_e64 s14, v38, v38
	scratch_load_b64 v[94:95], off, off offset:24 ; 8-byte Folded Reload
	v_add3_u32 v59, v112, v42, 0x7fff
	v_bfe_u32 v42, v47, 16, 1
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v124, off, off offset:212
	scratch_load_b32 v122, off, off offset:204
	scratch_load_b32 v162, off, off offset:156
	scratch_load_b32 v101, off, off offset:144
	v_add3_u32 v60, v47, v42, 0x7fff
	v_bfe_u32 v42, v106, 16, 1
	v_cndmask_b16 v47.l, 0x7fff, v58.h, s15
	v_cndmask_b16 v47.h, 0x7fff, v59.h, s16
	v_cmp_o_f32_e64 s16, v37, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v61, v106, v42, 0x7fff
	v_bfe_u32 v42, v48, 16, 1
	scratch_load_b32 v106, off, off offset:188 ; 4-byte Folded Reload
	v_add3_u32 v62, v48, v42, 0x7fff
	v_bfe_u32 v42, v108, 16, 1
	v_cndmask_b16 v48.l, 0x7fff, v60.h, s17
	v_cndmask_b16 v48.h, 0x7fff, v61.h, s18
	v_cmp_o_f32_e64 s17, v34, v34
	v_cndmask_b16 v49.l, 0x7fff, v62.h, s19
	v_add3_u32 v63, v108, v42, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v33.h, vcc_lo
	v_cndmask_b16 v42.h, 0x7fff, v49.h, s6
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v33, v203, v150
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s6, v90, v90
	v_cndmask_b16 v49.h, 0x7fff, v63.h, s20
	v_cmp_o_f32_e64 s18, v36, v36
	v_cmp_o_f32_e64 s20, v35, v35
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v108, off, off offset:196
	scratch_load_b32 v72, off, off offset:164
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[42:49], v[73:80], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v43, v211, v146 :: v_dual_sub_f32 v44, v213, v148
	v_dual_sub_f32 v45, v207, v142 :: v_dual_sub_f32 v46, v209, v144
	v_sub_f32_e32 v42, v205, v152
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v50, v43, 16, 1
	v_cmp_o_f32_e64 s9, v43, v43
	v_cmp_o_f32_e64 s11, v44, v44
	v_cmp_o_f32_e64 s13, v45, v45
	v_cmp_o_f32_e64 s15, v46, v46
	v_add3_u32 v43, v43, v50, 0x7fff
	v_bfe_u32 v50, v40, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v47, v210, v140
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v48, v33, 16, 1
	v_bfe_u32 v49, v42, 16, 1
	v_cmp_o_f32_e64 s7, v42, v42
	v_add3_u32 v40, v40, v50, 0x7fff
	v_bfe_u32 v50, v44, 16, 1
	v_add3_u32 v33, v33, v48, 0x7fff
	v_bfe_u32 v48, v90, 16, 1
	v_add3_u32 v42, v42, v49, 0x7fff
	v_bfe_u32 v49, v92, 16, 1
	v_add3_u32 v44, v44, v50, 0x7fff
	v_bfe_u32 v50, v39, 16, 1
	v_cmp_o_f32_e64 s19, v47, v47
	v_add3_u32 v48, v90, v48, 0x7fff
	v_add3_u32 v49, v92, v49, 0x7fff
	v_cndmask_b16 v33.l, 0x7fff, v33.h, vcc_lo
	v_add3_u32 v39, v39, v50, 0x7fff
	v_bfe_u32 v50, v45, 16, 1
	v_cndmask_b16 v33.h, 0x7fff, v48.h, s6
	v_mov_b32_e32 v90, v177
	v_mov_b32_e32 v92, v181
	.loc	1 607 13 is_stmt 1              ; attention_backward.py:607:13
	s_add_i32 s6, s52, 32
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v45, v45, v50, 0x7fff
	v_bfe_u32 v50, v38, 16, 1
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmpk_lt_u32 s52, 0x7e0
	s_mov_b32 s52, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v38, v38, v50, 0x7fff
	v_bfe_u32 v50, v46, 16, 1
	v_add3_u32 v46, v46, v50, 0x7fff
	v_bfe_u32 v50, v37, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v38.l, 0x7fff, v46.h, s15
	v_add3_u32 v50, v37, v50, 0x7fff
	v_bfe_u32 v37, v34, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v51, v34, v37, 0x7fff
	v_bfe_u32 v34, v36, 16, 1
	v_cndmask_b16 v37.l, 0x7fff, v45.h, s13
	v_cndmask_b16 v37.h, 0x7fff, v38.h, s14
	v_cndmask_b16 v38.h, 0x7fff, v50.h, s16
	v_cndmask_b16 v39.l, 0x7fff, v51.h, s17
	v_add3_u32 v52, v36, v34, 0x7fff
	v_bfe_u32 v34, v47, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v44.h, s11
	v_cndmask_b16 v36.h, 0x7fff, v39.h, s12
	scratch_load_b64 v[44:45], off, off offset:32 ; 8-byte Folded Reload
	v_cndmask_b16 v39.h, 0x7fff, v52.h, s18
	v_add3_u32 v47, v47, v34, 0x7fff
	v_bfe_u32 v34, v35, 16, 1
	s_clause 0x3                            ; 20-byte Folded Reload
	scratch_load_b32 v95, off, off offset:396
	scratch_load_b32 v102, off, off offset:148
	scratch_load_b32 v97, off, off offset:128
	scratch_load_b64 v[45:46], off, off offset:40
	v_cndmask_b16 v40.l, 0x7fff, v47.h, s19
	v_add3_u32 v53, v35, v34, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v42.h, s7
	v_cndmask_b16 v34.h, 0x7fff, v49.h, s8
	v_cndmask_b16 v35.l, 0x7fff, v43.h, s9
	v_cndmask_b16 v35.h, 0x7fff, v40.h, s10
	v_cndmask_b16 v40.h, 0x7fff, v53.h, s20
	scratch_load_b64 v[42:43], off, off offset:8 ; 8-byte Folded Reload
	.loc	1 745 35                        ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[33:40], v[73:80], v[1:8]
	s_clause 0x1                            ; 12-byte Folded Reload
	scratch_load_b32 v37, off, off offset:20
	scratch_load_b64 v[35:36], off, off
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc1 .LBB0_2
; %bb.3:                                ;   in Loop: Header=BB0_1 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	s_movk_i32 s7, 0x800
	.loc	1 605 9 is_stmt 1               ; attention_backward.py:605:9
	s_and_not1_b32 vcc_lo, exec_lo, s46
	s_mov_b32 s6, 0
	s_cbranch_vccnz .LBB0_1
; %bb.4:
	.loc	1 580 44                        ; attention_backward.py:580:44
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v53, off, off offset:400
	scratch_load_b32 v33, off, off offset:408
	scratch_load_b32 v34, off, off offset:404
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
	v_or_b32_e32 v0, s38, v53
	.loc	1 580 44                        ; attention_backward.py:580:44
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, v33, v34
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_or_b32_e32 v34, s39, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v0
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s2, s56, v33
	s_delay_alu instid0(VALU_DEP_3)
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
	v_add_lshl_u32 v0, v0, s76, 2
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
	v_add_lshl_u32 v17, v17, s76, 2
	s_delay_alu instid0(VALU_DEP_4)
	v_add_lshl_u32 v18, v18, s76, 2
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
	v_add_lshl_u32 v9, v19, s76, 2
	v_cndmask_b32_e64 v17, 0x80000000, v18, s0
	v_add_lshl_u32 v18, v20, s76, 2
	v_add_lshl_u32 v19, v21, s76, 2
	v_add_lshl_u32 v20, v22, s76, 2
	v_cndmask_b32_e64 v9, 0x80000000, v9, s0
	buffer_store_b32 v10, v17, s[60:63], 0 offen
	v_cndmask_b32_e64 v10, 0x80000000, v18, s0
	v_cndmask_b32_e64 v17, 0x80000000, v19, s0
	v_cndmask_b32_e64 v18, 0x80000000, v20, s0
	buffer_store_b32 v11, v9, s[60:63], 0 offen
	v_add_lshl_u32 v9, v23, s76, 2
	s_clause 0x2
	buffer_store_b32 v12, v10, s[60:63], 0 offen
	buffer_store_b32 v13, v17, s[60:63], 0 offen
	buffer_store_b32 v14, v18, s[60:63], 0 offen
	v_add_lshl_u32 v10, v24, s76, 2
	v_add_lshl_u32 v11, v25, s76, 2
	v_add_lshl_u32 v12, v26, s76, 2
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
	v_add_lshl_u32 v0, v28, s76, 2
	v_add_lshl_u32 v1, v29, s76, 2
	v_add_lshl_u32 v2, v30, s76, 2
	v_add_lshl_u32 v3, v31, s76, 2
	v_add_lshl_u32 v9, v27, s76, 2
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
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 77
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 416
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 21216
; TotalNumSgprs: 79
; NumVgprs: 256
; ScratchSize: 416
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 416
    .sgpr_count:     79
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_int4xbf16_none_full_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
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
