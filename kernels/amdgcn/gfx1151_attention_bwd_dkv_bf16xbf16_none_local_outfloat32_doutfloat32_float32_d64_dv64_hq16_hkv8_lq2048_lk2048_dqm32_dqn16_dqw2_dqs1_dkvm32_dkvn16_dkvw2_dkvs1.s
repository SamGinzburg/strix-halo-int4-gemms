	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1                          ; -- Begin function amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1,@function
amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1:                                 ; @amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention_backward.py"
	.loc	1 451 0                         ; attention_backward.py:451:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[54:55], s[0:1], 0x74
	s_load_b128 s[56:59], s[0:1], 0x0
.Ltmp0:
	.loc	1 514 33 prologue_end           ; attention_backward.py:514:33
	v_lshrrev_b32_e32 v9, 3, v0
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_and_b32_e32 v33, 7, v0
	.loc	1 509 19                        ; attention_backward.py:509:19
	s_lshl_b32 s70, s2, 4
	.loc	1 533 24                        ; attention_backward.py:533:24
	s_lshl_b32 s2, s3, 11
	s_mov_b32 s7, 0x31027000
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_add_i32 s10, s2, s70
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_lshlrev_b32_e32 v41, 3, v33
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v2, s70, v9
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 514 33 is_stmt 0              ; attention_backward.py:514:33
	v_and_b32_e32 v34, 56, v0
	.loc	1 534 24 is_stmt 1              ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v35, 4, v0
	s_load_b64 s[12:13], s[0:1], 0x10
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v2
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_mov_b32 s14, s6
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v10, 1, v34
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_mov_b32 s15, s7
	s_clause 0x2
	s_load_b32 s69, s[0:1], 0x7c
	s_load_b64 s[8:9], s[0:1], 0x94
	s_load_b64 s[52:53], s[0:1], 0x58
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_bfe_i32 v38, v0, 5, 1
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s54, v9
	s_mul_i32 s68, s54, s10
	.loc	1 536 23                        ; attention_backward.py:536:23
	v_cmp_gt_i32_e64 s2, s54, v41
	.loc	1 535 17                        ; attention_backward.py:535:17
	s_lshl_b32 s4, s54, 3
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_and_b32 s5, s59, 0xffff
	v_xad_u32 v42, v35, v10, 0
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_mul_lo_u32 v9, s55, v9
	s_mul_i32 s35, s55, s10
	.loc	1 535 17                        ; attention_backward.py:535:17
	v_add3_u32 v1, s68, v41, v1
	s_clause 0x1
	s_load_b32 s10, s[0:1], 0x9c
	s_load_b256 s[44:51], s[0:1], 0x38
	v_bfe_i32 v40, v0, 3, 1
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_bfe_u32 v54, v0, 4, 1
	s_lshl_b32 s72, s3, 12
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshlrev_b32_e32 v2, 1, v1
	v_add_lshl_u32 v1, v1, s4, 1
	.loc	1 536 22                        ; attention_backward.py:536:22
	s_and_b32 s4, vcc_lo, s2
	.loc	1 578 26                        ; attention_backward.py:578:26
	s_and_b32 s13, s13, 0xffff
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v129, s70, v54
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_cndmask_b32_e64 v5, 0x80000000, v1, s4
	s_mov_b32 s4, s58
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s1, s70, s8
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e64 s0, 0x800, v129
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_clause 0x1
	buffer_load_b128 v[1:4], v2, s[4:7], 0 offen
	buffer_load_b128 v[5:8], v5, s[4:7], 0 offen
	.loc	1 579 17                        ; attention_backward.py:579:17
	s_lshl_b32 s5, s55, 3
	.loc	1 672 31                        ; attention_backward.py:672:31
	s_mul_f32 s74, s69, 0x3fb8aa3b
	s_mov_b32 s36, 0
	s_mov_b32 s71, -1
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_waitcnt lgkmcnt(0)
	s_sub_i32 s1, s1, s10
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_add_i32 s73, s9, s10
	.loc	1 594 21                        ; attention_backward.py:594:21
	s_add_i32 s1, s1, 16
	.loc	1 589 38                        ; attention_backward.py:589:38
	s_sub_i32 s3, s70, s73
	.loc	1 590 24                        ; attention_backward.py:590:24
	v_med3_i32 v104, s1, 0, 0x800
	.loc	1 589 24                        ; attention_backward.py:589:24
	s_max_i32 s3, s3, 0
	s_mov_b32 s64, s48
	.loc	1 597 45                        ; attention_backward.py:597:45
	s_and_b32 s48, s3, 0x7fffffe0
	s_mov_b32 s58, s6
	.loc	1 600 19                        ; attention_backward.py:600:19
	v_readfirstlane_b32 s1, v104
	s_mov_b32 s59, s7
	s_mov_b32 s60, s46
	.loc	1 534 24                        ; attention_backward.py:534:24
	s_waitcnt vmcnt(1)
	ds_store_b128 v42, v[1:4]
	s_waitcnt vmcnt(0)
	ds_store_b128 v42, v[5:8] offset:1024
	v_mov_b32_e32 v1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 514 33                        ; attention_backward.py:514:33
	v_and_b32_e32 v105, 15, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v5, v1 :: v_dual_and_b32 v36, 16, v0
	v_mov_b32_e32 v2, v1
	.loc	1 579 17                        ; attention_backward.py:579:17
	v_add3_u32 v9, s35, v41, v9
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_cmp_gt_i32_e64 s4, s55, v41
	v_dual_mov_b32 v6, v1 :: v_dual_lshlrev_b32 v43, 3, v0
	v_dual_mov_b32 v14, v1 :: v_dual_lshlrev_b32 v11, 1, v9
	.loc	1 578 26                        ; attention_backward.py:578:26
	v_add_lshl_u32 v9, v9, s5, 1
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 580 44 is_stmt 0              ; attention_backward.py:580:44
	v_and_b32_e32 v37, 32, v0
	v_dual_mov_b32 v12, v1 :: v_dual_lshlrev_b32 v39, 6, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 578 26 is_stmt 1              ; attention_backward.py:578:26
	v_dual_cndmask_b32 v10, 0x80000000, v11 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	s_clause 0x1
	buffer_load_b128 v[65:68], v10, s[12:15], 0 offen
	buffer_load_b128 v[69:72], v9, s[12:15], 0 offen
	v_mov_b32_e32 v4, v1
	v_dual_mov_b32 v7, v1 :: v_dual_lshlrev_b32 v0, 4, v33
	v_mov_b32_e32 v8, v1
	v_dual_mov_b32 v11, v1 :: v_dual_lshlrev_b32 v36, 2, v36
	v_mov_b32_e32 v13, v1
	v_dual_mov_b32 v15, v1 :: v_dual_lshlrev_b32 v50, 5, v33
	v_dual_mov_b32 v16, v1 :: v_dual_and_b32 v47, 0x820, v38
	v_dual_mov_b32 v26, v1 :: v_dual_lshlrev_b32 v49, 1, v105
	v_dual_mov_b32 v28, v1 :: v_dual_and_b32 v43, 48, v43
	v_dual_mov_b32 v30, v1 :: v_dual_and_b32 v35, 48, v35
	v_and_b32_e32 v38, 0x420, v38
	v_mul_u32_u24_e32 v51, 0x110, v105
	v_dual_mov_b32 v9, v1 :: v_dual_and_b32 v46, 0x240, v40
	v_mov_b32_e32 v10, v1
	v_dual_mov_b32 v32, v1 :: v_dual_lshlrev_b32 v53, 2, v34
	v_mul_u32_u24_e32 v48, 0x90, v33
	v_lshl_add_u32 v52, v37, 1, 0
	scratch_store_b32 off, v54, off offset:552 ; 4-byte Folded Spill
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_lshl_or_b32 v54, v105, 7, v0
	v_and_or_b32 v39, 0xc00, v39, v0
	v_and_or_b32 v47, 0x410, v40, v47
	v_or3_b32 v107, v49, v36, v37
	v_lshl_or_b32 v36, v33, 6, v43
	v_and_or_b32 v38, 0x210, v40, v38
	v_xor_b32_e32 v0, v0, v34
	v_xor_b32_e32 v35, v35, v34
	v_lshl_or_b32 v108, v37, 7, v51
	v_lshl_or_b32 v189, v34, 6, v50
	v_lshl_or_b32 v109, v105, 6, v43
	v_dual_mov_b32 v18, v1 :: v_dual_add_nc_u32 v49, 0, v54
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_lshrrev_b32_e32 v45, 2, v34
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_lshrrev_b32_e32 v106, 1, v37
	v_lshl_add_u32 v252, v105, 2, v52
	.loc	1 534 24                        ; attention_backward.py:534:24
	v_xad_u32 v157, v54, 16, 0
	v_xad_u32 v51, v54, 32, 0
	v_xad_u32 v52, v54, 48, 0
	v_xad_u32 v56, v54, 64, 0
	v_xad_u32 v57, 0x50, v54, 0
	v_xad_u32 v58, 0x60, v54, 0
	v_xad_u32 v59, 0x70, v54, 0
	v_xor_b32_e32 v114, v39, v46
	v_xor_b32_e32 v130, v47, v48
	v_xor_b32_e32 v110, v38, v36
	v_lshl_or_b32 v131, v33, 10, v0
	v_lshl_or_b32 v111, v33, 9, v35
	v_lshl_or_b32 v115, v37, 6, v54
	v_xor_b32_e32 v0, v189, v53
	v_xor_b32_e32 v33, 16, v108
	v_xor_b32_e32 v36, 48, v108
	v_xor_b32_e32 v37, 64, v108
	v_xor_b32_e32 v39, 0x60, v108
	v_xor_b32_e32 v40, 0x70, v108
	v_xor_b32_e32 v46, 0x90, v108
	v_xor_b32_e32 v47, 0xa0, v108
	v_xor_b32_e32 v48, 0xb0, v108
	v_xor_b32_e32 v53, 0xc0, v108
	v_xor_b32_e32 v54, 0xd0, v108
	v_xor_b32_e32 v60, 0xe0, v108
	v_xor_b32_e32 v61, 0xf0, v108
	v_xor_b32_e32 v62, 0x90, v107
	v_xor_b32_e32 v63, 0x120, v107
	v_xor_b32_e32 v64, 0x1b0, v107
	v_xor_b32_e32 v73, 16, v109
	v_xor_b32_e32 v74, 32, v109
	v_xor_b32_e32 v75, 48, v109
	v_dual_mov_b32 v27, v1 :: v_dual_add_nc_u32 v112, 0, v33
	v_dual_mov_b32 v29, v1 :: v_dual_add_nc_u32 v116, 0, v36
	v_dual_mov_b32 v17, v1 :: v_dual_add_nc_u32 v120, 0, v40
	v_dual_mov_b32 v19, v1 :: v_dual_add_nc_u32 v122, 0, v46
	v_dual_mov_b32 v21, v1 :: v_dual_add_nc_u32 v124, 0, v48
	v_dual_mov_b32 v22, v1 :: v_dual_add_nc_u32 v117, 0, v37
	v_dual_mov_b32 v23, v1 :: v_dual_add_nc_u32 v126, 0, v54
	v_dual_mov_b32 v24, v1 :: v_dual_add_nc_u32 v119, 0, v39
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_lshrrev_b32_e32 v44, 1, v34
	v_xor_b32_e32 v38, 0x50, v108
	v_mul_lo_u32 v34, s55, v45
	v_add_nc_u32_e32 v123, 0, v47
	v_add_nc_u32_e32 v125, 0, v53
	v_add_nc_u32_e32 v127, 0, v60
	v_add_nc_u32_e32 v128, 0, v61
	v_add_nc_u32_e32 v253, 0, v62
	v_add_nc_u32_e32 v255, 0, v63
	v_add_nc_u32_e32 v33, 0, v64
	v_add_nc_u32_e32 v36, 0, v73
	v_add_nc_u32_e32 v37, 0, v74
	v_add_nc_u32_e32 v158, 0, v75
	v_xor_b32_e32 v39, 0x90, v114
	v_xor_b32_e32 v40, 0x120, v114
	v_xor_b32_e32 v45, 0x1b0, v114
	v_xor_b32_e32 v46, 16, v115
	v_xor_b32_e32 v47, 32, v115
	v_xor_b32_e32 v48, 48, v115
	v_xor_b32_e32 v53, 64, v115
	v_xor_b32_e32 v54, 0x50, v115
	v_xor_b32_e32 v60, 0x60, v115
	v_xor_b32_e32 v61, 0x70, v115
	v_xor_b32_e32 v62, 0x90, v131
	v_xor_b32_e32 v63, 0x120, v131
	v_xor_b32_e32 v64, 0x1b0, v131
	v_xor_b32_e32 v73, 0x240, v131
	v_xor_b32_e32 v74, 0x2d0, v131
	v_xor_b32_e32 v75, 0x360, v131
	v_xor_b32_e32 v76, 0x3f0, v131
	v_xor_b32_e32 v77, 64, v131
	v_xor_b32_e32 v78, 0xd0, v131
	v_xor_b32_e32 v79, 0x160, v131
	v_xor_b32_e32 v80, 0x1f0, v131
	v_xor_b32_e32 v81, 0x290, v131
	v_xor_b32_e32 v82, 0x320, v131
	v_xor_b32_e32 v83, 0x3b0, v131
	v_xor_b32_e32 v84, 16, v130
	v_xor_b32_e32 v85, 32, v130
	v_xor_b32_e32 v86, 48, v130
	v_xor_b32_e32 v87, 64, v130
	v_xor_b32_e32 v88, 0x50, v130
	v_xor_b32_e32 v97, 0x1030, v130
	v_xor_b32_e32 v98, 0x90, v111
	v_xor_b32_e32 v99, 0x120, v111
	v_xor_b32_e32 v100, 0x1b0, v111
	v_xor_b32_e32 v101, 16, v110
	v_xor_b32_e32 v102, 32, v110
	v_xor_b32_e32 v103, 48, v110
	v_xor_b32_e32 v35, 32, v108
	v_xor_b32_e32 v43, 0x80, v108
	v_dual_mov_b32 v31, v1 :: v_dual_add_nc_u32 v118, 0, v38
	v_add_nc_u32_e32 v254, 0, v39
	v_add_nc_u32_e32 v38, 0, v40
	v_add_nc_u32_e32 v132, 0, v45
	v_add_nc_u32_e32 v40, 0, v46
	v_add_nc_u32_e32 v45, 0, v47
	v_add_nc_u32_e32 v46, 0, v48
	v_add_nc_u32_e32 v39, 0, v53
	v_add_nc_u32_e32 v47, 0, v54
	v_add_nc_u32_e32 v48, 0, v60
	v_add_nc_u32_e32 v60, 0, v61
	v_add_nc_u32_e32 v133, 0, v62
	v_add_nc_u32_e32 v134, 0, v63
	v_add_nc_u32_e32 v135, 0, v64
	v_add_nc_u32_e32 v136, 0, v73
	v_add_nc_u32_e32 v137, 0, v74
	v_add_nc_u32_e32 v138, 0, v75
	v_add_nc_u32_e32 v139, 0, v76
	v_add_nc_u32_e32 v140, 0, v77
	v_add_nc_u32_e32 v141, 0, v78
	v_add_nc_u32_e32 v142, 0, v79
	v_add_nc_u32_e32 v143, 0, v80
	v_add_nc_u32_e32 v144, 0, v81
	v_add_nc_u32_e32 v147, 0, v82
	v_add_nc_u32_e32 v145, 0, v83
	v_add_nc_u32_e32 v146, 0, v84
	v_add_nc_u32_e32 v148, 0, v85
	v_add_nc_u32_e32 v149, 0, v86
	v_add_nc_u32_e32 v150, 0, v87
	v_add_nc_u32_e32 v151, 0, v88
	v_add_nc_u32_e32 v188, 0, v97
	v_add_nc_u32_e32 v53, 0, v98
	v_add_nc_u32_e32 v54, 0, v99
	v_add_nc_u32_e32 v61, 0, v100
	v_add_nc_u32_e32 v62, 0, v101
	v_add_nc_u32_e32 v63, 0, v102
	v_add_nc_u32_e32 v64, 0, v103
	.loc	1 534 24                        ; attention_backward.py:534:24
	ds_load_b128 v[73:76], v49
	ds_load_b128 v[77:80], v157
	ds_load_b128 v[81:84], v51
	ds_load_b128 v[85:88], v52
	ds_load_b128 v[159:162], v56
	ds_load_b128 v[163:166], v57
	ds_load_b128 v[167:170], v58
	ds_load_b128 v[171:174], v59
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mad_u64_u32 v[155:156], null, s54, v44, v[41:42]
	v_add_nc_u32_e32 v121, 0, v43
	v_mad_u64_u32 v[43:44], null, s55, 17, v[34:35]
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v55, 4, v41
	v_lshl_add_u32 v44, s55, 4, v34
	v_xor_b32_e32 v89, 0x60, v130
	v_xor_b32_e32 v90, 0x70, v130
	v_xor_b32_e32 v91, 0x1040, v130
	v_xor_b32_e32 v92, 0x1050, v130
	v_xor_b32_e32 v93, 0x1060, v130
	v_xor_b32_e32 v94, 0x1070, v130
	v_xor_b32_e32 v95, 0x1010, v130
	v_xor_b32_e32 v96, 0x1020, v130
	v_add_nc_u32_e32 v34, v41, v34
	.loc	1 600 19                        ; attention_backward.py:600:19
	s_add_i32 s1, s1, 31
	v_add_nc_u32_e32 v187, v55, v44
	.loc	1 600 17 is_stmt 0              ; attention_backward.py:600:17
	s_and_b32 s1, s1, 0x1fe0
	v_mov_b32_e32 v3, v1
	.loc	1 598 24 is_stmt 1              ; attention_backward.py:598:24
	s_min_u32 s75, s1, 0x800
	v_dual_mov_b32 v25, v1 :: v_dual_add_nc_u32 v0, 0, v0
	v_dual_mov_b32 v20, v1 :: v_dual_add_nc_u32 v113, 0, v35
	v_add_nc_u32_e32 v152, 0, v89
	v_add_nc_u32_e32 v153, 0, v90
	v_add_nc_u32_e32 v154, 0, v91
	v_add_nc_u32_e32 v186, 0, v92
	v_dual_mov_b32 v92, v129 :: v_dual_add_nc_u32 v93, 0, v93
	v_add_nc_u32_e32 v94, 0, v94
	v_add_nc_u32_e32 v95, 0, v95
	v_add_nc_u32_e32 v96, 0, v96
	v_add_nc_u32_e32 v35, v41, v44
	v_add_nc_u32_e32 v50, v41, v43
	v_add_nc_u32_e32 v89, 4, v34
	s_cmp_lt_u32 s48, s75
	s_mov_b32 s5, 0
	s_cselect_b32 s76, -1, 0
	s_and_b32 s57, s57, 0xffff
	s_and_b32 s61, s47, 0xffff
	s_and_b32 s65, s49, 0xffff
	s_and_b32 s45, s45, 0xffff
	s_sub_i32 s49, s10, s8
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v41, 2, v92
	v_or_b32_e32 v44, 8, v92
	.loc	1 717 21                        ; attention_backward.py:717:21
	s_waitcnt vmcnt(1)
	ds_store_b128 v42, v[65:68]
	s_waitcnt vmcnt(0)
	ds_store_b128 v42, v[69:72] offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[65:68], v49
	ds_load_b128 v[69:72], v157
	ds_load_b128 v[97:100], v51
	ds_load_b128 v[101:104], v52
	ds_load_b128 v[175:178], v56
	ds_load_b128 v[179:182], v57
	ds_load_b128 v[190:193], v58
	ds_load_b128 v[194:197], v59
	v_add_nc_u32_e32 v59, v55, v43
	v_mad_u64_u32 v[55:56], null, s54, 3, v[155:156]
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v42, 4, v92
	v_or_b32_e32 v43, 6, v92
	v_or_b32_e32 v49, 10, v92
	v_or_b32_e32 v51, 12, v92
	v_or_b32_e32 v52, 14, v92
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v105, off offset:548
	scratch_store_b32 off, v106, off offset:556
	.loc	1 608 39                        ; attention_backward.py:608:39
	v_or_b32_e32 v56, v106, v105
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v115, off offset:284
	scratch_store_b32 off, v114, off offset:288
	scratch_store_b32 off, v132, off offset:292
	scratch_store_b32 off, v40, off offset:296
	scratch_store_b32 off, v45, off offset:300
	scratch_store_b32 off, v46, off offset:304
	scratch_store_b32 off, v60, off offset:308
	scratch_store_b32 off, v39, off offset:312
	scratch_store_b32 off, v38, off offset:316
	scratch_store_b32 off, v47, off offset:320
	scratch_store_b32 off, v130, off offset:324
	scratch_store_b32 off, v34, off offset:328
	scratch_store_b32 off, v139, off offset:332
	scratch_store_b32 off, v136, off offset:336
	scratch_store_b32 off, v134, off offset:340
	scratch_store_b32 off, v140, off offset:344
	scratch_store_b32 off, v143, off offset:348
	scratch_store_b32 off, v138, off offset:352
	scratch_store_b32 off, v144, off offset:356
	scratch_store_b32 off, v142, off offset:360
	scratch_store_b32 off, v147, off offset:364
	scratch_store_b32 off, v135, off offset:368
	scratch_store_b32 off, v149, off offset:372
	scratch_store_b32 off, v131, off offset:376
	scratch_store_b32 off, v151, off offset:380
	scratch_store_b32 off, v145, off offset:384
	scratch_store_b32 off, v153, off offset:388
	scratch_store_b32 off, v141, off offset:392
	scratch_store_b32 off, v48, off offset:396
	scratch_store_b32 off, v137, off offset:400
	scratch_store_b32 off, v148, off offset:404
	scratch_store_b32 off, v146, off offset:408
	s_clause 0x11                           ; 168-byte Folded Spill
	scratch_store_b128 off, v[73:76], off offset:412
	scratch_store_b128 off, v[77:80], off offset:428
	scratch_store_b128 off, v[81:84], off offset:444
	scratch_store_b128 off, v[85:88], off offset:460
	scratch_store_b128 off, v[159:162], off offset:476
	scratch_store_b128 off, v[163:166], off offset:492
	scratch_store_b128 off, v[167:170], off offset:508
	scratch_store_b128 off, v[171:174], off offset:524
	scratch_store_b32 off, v59, off offset:540
	scratch_store_b32 off, v89, off offset:544
	scratch_store_b32 off, v49, off offset:16
	scratch_store_b32 off, v56, off offset:20
	scratch_store_b32 off, v52, off offset:24
	scratch_store_b32 off, v158, off offset:28
	scratch_store_b32 off, v51, off offset:32
	scratch_store_b32 off, v44, off offset:36
	scratch_store_b32 off, v42, off offset:40
	scratch_store_b32 off, v43, off offset:44
	s_waitcnt lgkmcnt(1)
	scratch_store_b128 off, v[190:193], off offset:48 ; 16-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_clause 0x1f                           ; 212-byte Folded Spill
	scratch_store_b128 off, v[194:197], off offset:64
	scratch_store_b32 off, v41, off offset:80
	scratch_store_b128 off, v[97:100], off offset:84
	scratch_store_b128 off, v[101:104], off offset:100
	scratch_store_b128 off, v[175:178], off offset:116
	scratch_store_b128 off, v[179:182], off offset:132
	scratch_store_b128 off, v[65:68], off offset:148
	scratch_store_b128 off, v[69:72], off offset:164
	scratch_store_b32 off, v63, off offset:180
	scratch_store_b32 off, v64, off offset:184
	scratch_store_b32 off, v61, off offset:188
	scratch_store_b32 off, v62, off offset:192
	scratch_store_b32 off, v53, off offset:196
	scratch_store_b32 off, v54, off offset:200
	scratch_store_b32 off, v127, off offset:204
	scratch_store_b32 off, v128, off offset:208
	scratch_store_b32 off, v125, off offset:212
	scratch_store_b32 off, v126, off offset:216
	scratch_store_b32 off, v123, off offset:220
	scratch_store_b32 off, v124, off offset:224
	scratch_store_b32 off, v121, off offset:228
	scratch_store_b32 off, v122, off offset:232
	scratch_store_b32 off, v119, off offset:236
	scratch_store_b32 off, v120, off offset:240
	scratch_store_b32 off, v117, off offset:244
	scratch_store_b32 off, v118, off offset:248
	scratch_store_b32 off, v113, off offset:252
	scratch_store_b32 off, v116, off offset:256
	scratch_store_b32 off, v109, off offset:260
	scratch_store_b32 off, v111, off offset:264
	scratch_store_b32 off, v112, off offset:268
	scratch_store_b32 off, v107, off offset:272
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v108, off offset:276
	scratch_store_b32 off, v110, off offset:280
	s_branch .LBB0_2
.LBB0_1:                                ; %Flow260
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 39 is_stmt 0                ; attention_backward.py:0:39
	s_xor_b32 s1, s71, -1
	s_movk_i32 s5, 0x800
	.loc	1 605 9 is_stmt 1               ; attention_backward.py:605:9
	s_and_not1_b32 vcc_lo, exec_lo, s1
	s_mov_b32 s71, 0
	s_cbranch_vccz .LBB0_6
.LBB0_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_4 Depth 2
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_and_not1_b32 vcc_lo, exec_lo, s76
	s_cbranch_vccnz .LBB0_1
; %bb.3:                                ; %.lr.ph
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 662 34                        ; attention_backward.py:662:34
	s_or_b32 s77, s72, s5
	s_mov_b32 s78, s48
.LBB0_4:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 34 is_stmt 0                ; attention_backward.py:0:34
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 664 25 is_stmt 1              ; attention_backward.py:664:25
	s_add_i32 s1, s78, s77
	s_waitcnt vmcnt(5)
	v_lshl_add_u32 v43, s54, 1, v155
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	v_add_nc_u32_e32 v42, s54, v155
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_mul_i32 s3, s1, s54
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v104, s43 :: v_dual_mov_b32 v101, s40
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v41, s3, v155, 1
	v_add_lshl_u32 v43, s3, v43, 1
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v103, s42
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_add_lshl_u32 v42, s3, v42, 1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v44, s3, v55, 1
	v_cndmask_b32_e64 v41, 0x80000000, v41, s2
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	.loc	1 664 25                        ; attention_backward.py:664:25
	s_clause 0x1                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[55:56], off offset:8
	scratch_store_b64 off, v[155:156], off
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	s_clause 0x3
	buffer_load_b128 v[178:181], v41, s[56:59], 0 offen
	buffer_load_b128 v[182:185], v43, s[56:59], 0 offen
	buffer_load_b128 v[105:108], v42, s[56:59], 0 offen
	buffer_load_b128 v[110:113], v44, s[56:59], 0 offen
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v102, s41 :: v_dual_add_nc_u32 v41, 0, v114
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 699 25                        ; attention_backward.py:699:25
	s_mov_b32 s62, s58
	s_mov_b32 s63, s59
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_dual_mov_b32 v99, s38 :: v_dual_mov_b32 v98, s37
	v_mov_b32_e32 v97, s36
	.loc	1 708 21                        ; attention_backward.py:708:21
	s_mul_i32 s1, s1, s55
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s66, s58
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v44, s1, v89, 2
	.loc	1 700 27                        ; attention_backward.py:700:27
	s_mov_b32 s67, s59
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_mov_b32 s46, s58
	s_mov_b32 s47, s59
	.loc	1 671 30                        ; attention_backward.py:671:30
	v_mov_b32_e32 v100, s39
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v44, 0x80000000, v44, s4
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(3)
	ds_store_b128 v41, v[178:181]
	s_waitcnt vmcnt(1)
	ds_store_b128 v254, v[105:108]
	ds_store_b128 v38, v[182:185]
	s_waitcnt vmcnt(0)
	ds_store_b128 v132, v[110:113]
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v49, off, off offset:20 ; 4-byte Folded Reload
	v_add_nc_u32_e32 v41, 0, v115
	ds_load_b128 v[51:54], v41
	ds_load_b128 v[55:58], v40
	ds_load_b128 v[114:117], v45
	ds_load_b128 v[118:121], v46
	v_add_nc_u32_e32 v46, s55, v89
	v_dual_mov_b32 v40, v150 :: v_dual_add_nc_u32 v45, s55, v34
	v_mov_b32_e32 v38, v189
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v46, s1, v46, 2
	v_add_lshl_u32 v45, s1, v45, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v46, 0x80000000, v46, s4
	v_cndmask_b32_e64 v45, 0x80000000, v45, s4
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[122:129], v[73:80], v[51:58], v[97:104]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[51:54], v39
	ds_load_b128 v[55:58], v47
	v_mov_b32_e32 v47, v133
	v_mov_b32_e32 v39, v154
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[122:129], v[81:88], v[114:121], v[122:129]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[122:129], v[159:166], v[51:58], v[122:129]
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[51:54], v48
	ds_load_b128 v[55:58], v60
	v_mov_b32_e32 v48, v152
	.loc	1 671 30                        ; attention_backward.py:671:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[122:129], v[167:174], v[51:58], v[122:129]
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v57, s1, v35, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v62, 0x80000000, v57, s4
	v_add_lshl_u32 v57, s1, v187, 2
	v_cndmask_b32_e64 v71, 0x80000000, v57, s4
	v_add_lshl_u32 v57, s1, v50, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v80, 0x80000000, v57, s4
	v_add_lshl_u32 v57, s1, v59, 2
	v_cndmask_b32_e64 v85, 0x80000000, v57, s4
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v41, s77, v49
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 699 25                        ; attention_backward.py:699:25
	v_add_lshl_u32 v42, v41, s78, 2
	buffer_load_b32 v43, v42, s[60:63], 0 offen
	.loc	1 703 34                        ; attention_backward.py:703:34
	s_waitcnt vmcnt(0)
	v_fma_f32 v41, s74, v122, -v43
	v_fma_f32 v109, s74, v123, -v43
	v_fma_f32 v56, s74, v124, -v43
	v_fma_f32 v55, s74, v125, -v43
	v_fma_f32 v54, s74, v126, -v43
	v_fma_f32 v53, s74, v127, -v43
	v_fma_f32 v52, s74, v128, -v43
	v_fma_f32 v51, s74, v129, -v43
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_add_lshl_u32 v43, s1, v34, 2
	v_mov_b32_e32 v34, v188
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v41, v41
	v_exp_f32_e32 v53, v53
	v_exp_f32_e32 v52, v52
	.loc	1 707 36                        ; attention_backward.py:707:36
	v_cndmask_b32_e64 v43, 0x80000000, v43, s4
	.loc	1 700 27                        ; attention_backward.py:700:27
	buffer_load_b32 v57, v42, s[64:67], 0 offen
	.loc	1 707 36                        ; attention_backward.py:707:36
	s_clause 0x7
	buffer_load_b128 v[58:61], v43, s[44:47], 0 offen
	buffer_load_b128 v[63:66], v45, s[44:47], 0 offen
	buffer_load_b128 v[67:70], v44, s[44:47], 0 offen
	buffer_load_b128 v[72:75], v46, s[44:47], 0 offen
	buffer_load_b128 v[76:79], v62, s[44:47], 0 offen
	buffer_load_b128 v[43:46], v80, s[44:47], 0 offen
	buffer_load_b128 v[81:84], v71, s[44:47], 0 offen
	buffer_load_b128 v[87:90], v85, s[44:47], 0 offen
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add_nc_u32_e32 v91, 0, v131
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v51, v51
	.loc	1 732 34                        ; attention_backward.py:732:34
	s_waitcnt vmcnt(7)
	v_dual_mov_b32 v62, v58 :: v_dual_mov_b32 v85, v59
	s_waitcnt vmcnt(6)
	v_mov_b32_e32 v86, v64
	ds_store_b64 v91, v[62:63]
	ds_store_b64 v133, v[85:86]
	v_dual_mov_b32 v85, v60 :: v_dual_mov_b32 v62, v66
	s_waitcnt vmcnt(5)
	v_dual_mov_b32 v86, v65 :: v_dual_mov_b32 v71, v67
	s_waitcnt vmcnt(3)
	v_mov_b32_e32 v42, v76
	s_waitcnt vmcnt(2)
	v_mov_b32_e32 v80, v46
	ds_store_b64 v134, v[85:86]
	v_dual_mov_b32 v85, v68 :: v_dual_mov_b32 v86, v73
	ds_store_b64 v135, v[61:62]
	ds_store_b64 v136, v[71:72]
	ds_store_b64 v137, v[85:86]
	v_dual_mov_b32 v85, v69 :: v_dual_mov_b32 v86, v74
	v_dual_mov_b32 v71, v75 :: v_dual_add_nc_u32 v62, 0x800, v252
	ds_store_b64 v138, v[85:86]
	v_dual_mov_b32 v85, v77 :: v_dual_mov_b32 v86, v44
	ds_store_b64 v139, v[70:71]
	ds_store_b64 v140, v[42:43]
	ds_store_b64 v141, v[85:86]
	v_dual_mov_b32 v85, v78 :: v_dual_mov_b32 v86, v45
	v_add_nc_u32_e32 v42, 0, v130
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v71, 0xc00, v252
	.loc	1 732 34                        ; attention_backward.py:732:34
	ds_store_b64 v142, v[85:86]
	s_waitcnt vmcnt(1)
	v_dual_mov_b32 v86, v81 :: v_dual_mov_b32 v85, v82
	ds_store_b64 v143, v[79:80]
	s_waitcnt vmcnt(0)
	ds_store_b64 v91, v[86:87] offset:512
	v_dual_mov_b32 v86, v88 :: v_dual_add_nc_u32 v91, 0x1c00, v252
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v80, 0x1000, v252
	.loc	1 732 34                        ; attention_backward.py:732:34
	ds_store_b64 v144, v[85:86]
	v_dual_mov_b32 v85, v83 :: v_dual_mov_b32 v86, v89
	ds_store_b64 v147, v[85:86]
	v_dual_mov_b32 v85, v90 :: v_dual_add_nc_u32 v86, 0x1800, v252
	ds_store_b64 v145, v[84:85]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[162:165], v42
	ds_load_b128 v[114:117], v42 offset:4096
	ds_load_b128 v[174:177], v146
	ds_load_b128 v[170:173], v148
	ds_load_b128 v[166:169], v149
	ds_load_b128 v[142:145], v150
	ds_load_b128 v[138:141], v151
	ds_load_b128 v[134:137], v152
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add_nc_u32_e32 v42, 0, v189
	.loc	1 732 34                        ; attention_backward.py:732:34
	ds_load_b128 v[130:133], v153
	ds_load_b128 v[158:161], v154
	ds_load_b128 v[154:157], v186
	ds_load_b128 v[150:153], v93
	ds_load_b128 v[146:149], v94
	ds_load_b128 v[126:129], v95
	ds_load_b128 v[122:125], v96
	ds_load_b128 v[118:121], v188
	.loc	1 716 21                        ; attention_backward.py:716:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v42, v[58:61]
	ds_store_b128 v42, v[67:70] offset:16
	ds_store_b128 v42, v[63:66] offset:256
	ds_store_b128 v42, v[72:75] offset:272
	ds_store_b128 v42, v[76:79] offset:4096
	ds_store_b128 v42, v[81:84] offset:4112
	ds_store_b128 v42, v[43:46] offset:4352
	ds_store_b128 v42, v[87:90] offset:4368
	v_add_nc_u32_e32 v42, 0x400, v252
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v85, 0x1400, v252
	ds_load_2addr_b32 v[242:243], v42 offset1:32
	ds_load_2addr_b32 v[240:241], v42 offset0:64 offset1:96
	ds_load_2addr_b32 v[238:239], v42 offset0:128 offset1:160
	ds_load_2addr_b32 v[236:237], v42 offset0:192 offset1:224
	ds_load_2addr_b32 v[234:235], v62 offset1:32
	ds_load_2addr_b32 v[232:233], v62 offset0:64 offset1:96
	ds_load_2addr_b32 v[230:231], v62 offset0:128 offset1:160
	ds_load_2addr_b32 v[228:229], v62 offset0:192 offset1:224
	ds_load_2addr_b32 v[226:227], v71 offset1:32
	ds_load_2addr_b32 v[224:225], v71 offset0:64 offset1:96
	ds_load_2addr_b32 v[222:223], v71 offset0:128 offset1:160
	ds_load_2addr_b32 v[220:221], v71 offset0:192 offset1:224
	ds_load_2addr_b32 v[218:219], v80 offset1:32
	ds_load_2addr_b32 v[216:217], v80 offset0:64 offset1:96
	ds_load_2addr_b32 v[214:215], v80 offset0:128 offset1:160
	ds_load_2addr_b32 v[212:213], v80 offset0:192 offset1:224
	ds_load_2addr_b32 v[210:211], v85 offset1:32
	ds_load_2addr_b32 v[208:209], v85 offset0:64 offset1:96
	ds_load_2addr_b32 v[206:207], v85 offset0:128 offset1:160
	ds_load_2addr_b32 v[204:205], v85 offset0:192 offset1:224
	ds_load_2addr_b32 v[202:203], v86 offset1:32
	ds_load_2addr_b32 v[200:201], v86 offset0:64 offset1:96
	ds_load_2addr_b32 v[198:199], v86 offset0:128 offset1:160
	ds_load_2addr_b32 v[196:197], v86 offset0:192 offset1:224
	ds_load_2addr_b32 v[194:195], v91 offset1:32
	ds_load_2addr_b32 v[192:193], v91 offset0:64 offset1:96
	ds_load_2addr_b32 v[190:191], v91 offset0:128 offset1:160
	ds_load_2addr_b32 v[188:189], v91 offset0:192 offset1:224
	ds_load_2addr_b32 v[250:251], v252 offset1:32
	ds_load_2addr_b32 v[248:249], v252 offset0:64 offset1:96
	ds_load_2addr_b32 v[246:247], v252 offset0:128 offset1:160
	ds_load_2addr_b32 v[244:245], v252 offset0:192 offset1:224
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[58:61]
	ds_store_b128 v0, v[67:70] offset:16
	ds_store_b128 v0, v[63:66] offset:272
	ds_store_b128 v0, v[72:75] offset:256
	ds_store_b128 v0, v[76:79] offset:4096
	ds_store_b128 v0, v[81:84] offset:4112
	ds_store_b128 v0, v[43:46] offset:4368
	ds_store_b128 v0, v[87:90] offset:4352
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v42, off, off offset:276
	scratch_load_b32 v46, off, off offset:268
	v_cmp_o_f32_e64 s21, v213, v213
	v_cmp_o_f32_e64 s19, v217, v217
	v_cmp_o_f32_e64 s23, v209, v209
	v_cmp_o_f32_e64 s18, v219, v219
	v_cmp_o_f32_e64 s25, v205, v205
	v_cmp_o_f32_e64 s26, v203, v203
	v_cmp_o_f32_e64 s20, v215, v215
	v_cmp_o_f32_e64 s28, v199, v199
	v_cmp_o_f32_e64 s34, v189, v189
	v_cmp_o_f32_e64 s30, v195, v195
	v_cmp_o_f32_e64 s31, v193, v193
	v_cmp_o_f32_e64 s33, v191, v191
	v_cmp_o_f32_e64 s29, v197, v197
	v_cmp_o_f32_e64 s22, v211, v211
	v_cmp_o_f32_e64 s24, v207, v207
	v_cmp_o_f32_e64 s27, v201, v201
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v42, 0, v42
	s_waitcnt vmcnt(0)
	ds_load_b128 v[58:61], v46
	ds_load_b128 v[42:45], v42
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s6, v58, v58
	v_cmp_o_f32_e64 s7, v59, v59
	v_cmp_o_f32_e64 s8, v60, v60
	v_cmp_o_f32_e64 s9, v61, v61
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v46, v42, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_cmp_o_f32_e64 s1, v43, v43
	v_cmp_o_f32_e64 s3, v44, v44
	v_cmp_o_f32_e64 s5, v45, v45
	v_add3_u32 v46, v42, v46, 0x7fff
	v_bfe_u32 v42, v43, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v62, v43, v42, 0x7fff
	v_bfe_u32 v42, v44, 16, 1
	v_add3_u32 v63, v44, v42, 0x7fff
	v_bfe_u32 v42, v45, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v64, v45, v42, 0x7fff
	v_bfe_u32 v42, v58, 16, 1
	v_add3_u32 v65, v58, v42, 0x7fff
	v_bfe_u32 v42, v59, 16, 1
	scratch_load_b32 v58, off, off offset:256 ; 4-byte Folded Reload
	v_add3_u32 v66, v59, v42, 0x7fff
	v_bfe_u32 v42, v60, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v67, v60, v42, 0x7fff
	v_bfe_u32 v42, v61, 16, 1
	v_add3_u32 v68, v61, v42, 0x7fff
	scratch_load_b32 v42, off, off offset:252 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[58:61], v58
	s_waitcnt vmcnt(0)
	ds_load_b128 v[42:45], v42
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s14, v58, v58
	v_cmp_o_f32_e64 s15, v59, v59
	v_cmp_o_f32_e64 s16, v60, v60
	v_cmp_o_f32_e64 s17, v61, v61
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v69, v42, 16, 1
	v_cmp_o_f32_e64 s10, v42, v42
	v_cmp_o_f32_e64 s11, v43, v43
	v_cmp_o_f32_e64 s12, v44, v44
	v_cmp_o_f32_e64 s13, v45, v45
	v_add3_u32 v42, v42, v69, 0x7fff
	v_bfe_u32 v69, v43, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v62.l, 0x7fff, v42.h, s10
	v_add3_u32 v43, v43, v69, 0x7fff
	v_bfe_u32 v69, v44, 16, 1
	scratch_load_b32 v42, off, off offset:244 ; 4-byte Folded Reload
	v_add3_u32 v44, v44, v69, 0x7fff
	v_bfe_u32 v69, v45, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v63.l, 0x7fff, v44.h, s12
	v_add3_u32 v45, v45, v69, 0x7fff
	v_bfe_u32 v69, v58, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v69, v58, v69, 0x7fff
	v_bfe_u32 v58, v59, 16, 1
	v_cndmask_b16 v64.l, 0x7fff, v69.h, s14
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v70, v59, v58, 0x7fff
	v_bfe_u32 v58, v60, 16, 1
	v_cndmask_b16 v59.h, 0x7fff, v64.h, s5
	v_cndmask_b16 v59.l, 0x7fff, v63.h, s3
	v_cndmask_b16 v63.h, 0x7fff, v45.h, s13
	v_cndmask_b16 v64.h, 0x7fff, v70.h, s15
	v_add3_u32 v71, v60, v58, 0x7fff
	v_bfe_u32 v58, v61, 16, 1
	v_cndmask_b16 v60.l, 0x7fff, v65.h, s6
	v_cndmask_b16 v60.h, 0x7fff, v66.h, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v65.l, 0x7fff, v71.h, s16
	v_add3_u32 v72, v61, v58, 0x7fff
	v_cndmask_b16 v58.l, 0x7fff, v46.h, vcc_lo
	v_cndmask_b16 v61.l, 0x7fff, v67.h, s8
	v_cndmask_b16 v61.h, 0x7fff, v68.h, s9
	scratch_load_b32 v46, off, off offset:248 ; 4-byte Folded Reload
	v_cndmask_b16 v65.h, 0x7fff, v72.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[66:69], off, off offset:148
	scratch_load_b128 v[70:73], off, off offset:164
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v58.h, 0x7fff, v62.h, s1
	v_cndmask_b16 v62.h, 0x7fff, v43.h, s11
	s_waitcnt vmcnt(3)
	ds_load_b128 v[42:45], v42
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[66:73], v[58:65], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[58:61], v46
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v46, v42, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_cmp_o_f32_e64 s1, v43, v43
	v_cmp_o_f32_e64 s3, v44, v44
	v_cmp_o_f32_e64 s5, v45, v45
	v_add3_u32 v46, v42, v46, 0x7fff
	v_bfe_u32 v42, v43, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v62, v43, v42, 0x7fff
	v_bfe_u32 v42, v44, 16, 1
	v_add3_u32 v63, v44, v42, 0x7fff
	v_bfe_u32 v42, v45, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v58, v58
	v_cmp_o_f32_e64 s7, v59, v59
	v_cmp_o_f32_e64 s8, v60, v60
	v_cmp_o_f32_e64 s9, v61, v61
	v_add3_u32 v64, v45, v42, 0x7fff
	v_bfe_u32 v42, v58, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v65, v58, v42, 0x7fff
	v_bfe_u32 v42, v59, 16, 1
	scratch_load_b32 v58, off, off offset:240 ; 4-byte Folded Reload
	v_add3_u32 v66, v59, v42, 0x7fff
	v_bfe_u32 v42, v60, 16, 1
	v_add3_u32 v67, v60, v42, 0x7fff
	v_bfe_u32 v42, v61, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v68, v61, v42, 0x7fff
	scratch_load_b32 v42, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[58:61], v58
	s_waitcnt vmcnt(0)
	ds_load_b128 v[42:45], v42
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s14, v58, v58
	v_cmp_o_f32_e64 s15, v59, v59
	v_cmp_o_f32_e64 s16, v60, v60
	v_cmp_o_f32_e64 s17, v61, v61
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v69, v42, 16, 1
	v_cmp_o_f32_e64 s10, v42, v42
	v_cmp_o_f32_e64 s11, v43, v43
	v_cmp_o_f32_e64 s12, v44, v44
	v_cmp_o_f32_e64 s13, v45, v45
	v_add3_u32 v42, v42, v69, 0x7fff
	v_bfe_u32 v69, v43, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v62.l, 0x7fff, v42.h, s10
	v_add3_u32 v43, v43, v69, 0x7fff
	v_bfe_u32 v69, v44, 16, 1
	scratch_load_b32 v42, off, off offset:228 ; 4-byte Folded Reload
	v_add3_u32 v44, v44, v69, 0x7fff
	v_bfe_u32 v69, v45, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v63.l, 0x7fff, v44.h, s12
	v_add3_u32 v45, v45, v69, 0x7fff
	v_bfe_u32 v69, v58, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v69, v58, v69, 0x7fff
	v_bfe_u32 v58, v59, 16, 1
	v_cndmask_b16 v64.l, 0x7fff, v69.h, s14
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v70, v59, v58, 0x7fff
	v_bfe_u32 v58, v60, 16, 1
	v_cndmask_b16 v59.h, 0x7fff, v64.h, s5
	v_cndmask_b16 v59.l, 0x7fff, v63.h, s3
	v_cndmask_b16 v63.h, 0x7fff, v45.h, s13
	v_cndmask_b16 v64.h, 0x7fff, v70.h, s15
	v_add3_u32 v71, v60, v58, 0x7fff
	v_bfe_u32 v58, v61, 16, 1
	v_cndmask_b16 v60.l, 0x7fff, v65.h, s6
	v_cndmask_b16 v60.h, 0x7fff, v66.h, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v65.l, 0x7fff, v71.h, s16
	v_add3_u32 v72, v61, v58, 0x7fff
	v_cndmask_b16 v58.l, 0x7fff, v46.h, vcc_lo
	v_cndmask_b16 v61.l, 0x7fff, v67.h, s8
	v_cndmask_b16 v61.h, 0x7fff, v68.h, s9
	scratch_load_b32 v46, off, off offset:232 ; 4-byte Folded Reload
	v_cndmask_b16 v65.h, 0x7fff, v72.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[66:69], off, off offset:84
	scratch_load_b128 v[70:73], off, off offset:100
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v58.h, 0x7fff, v62.h, s1
	v_cndmask_b16 v62.h, 0x7fff, v43.h, s11
	s_waitcnt vmcnt(3)
	ds_load_b128 v[42:45], v42
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[66:73], v[58:65], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[58:61], v46
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v46, v42, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_cmp_o_f32_e64 s1, v43, v43
	v_cmp_o_f32_e64 s3, v44, v44
	v_cmp_o_f32_e64 s5, v45, v45
	v_add3_u32 v46, v42, v46, 0x7fff
	v_bfe_u32 v42, v43, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v62, v43, v42, 0x7fff
	v_bfe_u32 v42, v44, 16, 1
	v_add3_u32 v63, v44, v42, 0x7fff
	v_bfe_u32 v42, v45, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v58, v58
	v_cmp_o_f32_e64 s7, v59, v59
	v_cmp_o_f32_e64 s8, v60, v60
	v_cmp_o_f32_e64 s9, v61, v61
	v_add3_u32 v64, v45, v42, 0x7fff
	v_bfe_u32 v42, v58, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v65, v58, v42, 0x7fff
	v_bfe_u32 v42, v59, 16, 1
	scratch_load_b32 v58, off, off offset:224 ; 4-byte Folded Reload
	v_add3_u32 v66, v59, v42, 0x7fff
	v_bfe_u32 v42, v60, 16, 1
	v_add3_u32 v67, v60, v42, 0x7fff
	v_bfe_u32 v42, v61, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v68, v61, v42, 0x7fff
	scratch_load_b32 v42, off, off offset:220 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[58:61], v58
	s_waitcnt vmcnt(0)
	ds_load_b128 v[42:45], v42
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s14, v58, v58
	v_cmp_o_f32_e64 s15, v59, v59
	v_cmp_o_f32_e64 s16, v60, v60
	v_cmp_o_f32_e64 s17, v61, v61
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v69, v42, 16, 1
	v_cmp_o_f32_e64 s10, v42, v42
	v_cmp_o_f32_e64 s11, v43, v43
	v_cmp_o_f32_e64 s12, v44, v44
	v_cmp_o_f32_e64 s13, v45, v45
	v_add3_u32 v42, v42, v69, 0x7fff
	v_bfe_u32 v69, v43, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v62.l, 0x7fff, v42.h, s10
	v_add3_u32 v43, v43, v69, 0x7fff
	v_bfe_u32 v69, v44, 16, 1
	scratch_load_b32 v42, off, off offset:212 ; 4-byte Folded Reload
	v_add3_u32 v44, v44, v69, 0x7fff
	v_bfe_u32 v69, v45, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v63.l, 0x7fff, v44.h, s12
	v_add3_u32 v45, v45, v69, 0x7fff
	v_bfe_u32 v69, v58, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v69, v58, v69, 0x7fff
	v_bfe_u32 v58, v59, 16, 1
	v_cndmask_b16 v64.l, 0x7fff, v69.h, s14
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v70, v59, v58, 0x7fff
	v_bfe_u32 v58, v60, 16, 1
	v_cndmask_b16 v59.h, 0x7fff, v64.h, s5
	v_cndmask_b16 v59.l, 0x7fff, v63.h, s3
	v_cndmask_b16 v63.h, 0x7fff, v45.h, s13
	v_cndmask_b16 v64.h, 0x7fff, v70.h, s15
	v_add3_u32 v71, v60, v58, 0x7fff
	v_bfe_u32 v58, v61, 16, 1
	v_cndmask_b16 v60.l, 0x7fff, v65.h, s6
	v_cndmask_b16 v60.h, 0x7fff, v66.h, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v65.l, 0x7fff, v71.h, s16
	v_add3_u32 v72, v61, v58, 0x7fff
	v_cndmask_b16 v58.l, 0x7fff, v46.h, vcc_lo
	v_cndmask_b16 v61.l, 0x7fff, v67.h, s8
	v_cndmask_b16 v61.h, 0x7fff, v68.h, s9
	scratch_load_b32 v46, off, off offset:216 ; 4-byte Folded Reload
	v_cndmask_b16 v65.h, 0x7fff, v72.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[66:69], off, off offset:116
	scratch_load_b128 v[70:73], off, off offset:132
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v58.h, 0x7fff, v62.h, s1
	v_cndmask_b16 v62.h, 0x7fff, v43.h, s11
	s_waitcnt vmcnt(3)
	ds_load_b128 v[42:45], v42
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[66:73], v[58:65], v[97:104]
	.loc	1 716 21                        ; attention_backward.py:716:21
	ds_load_b128 v[58:61], v46
	s_waitcnt lgkmcnt(1)
	v_bfe_u32 v46, v42, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_cmp_o_f32_e64 s1, v43, v43
	v_cmp_o_f32_e64 s3, v44, v44
	v_cmp_o_f32_e64 s5, v45, v45
	v_add3_u32 v46, v42, v46, 0x7fff
	v_bfe_u32 v42, v43, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v62, v43, v42, 0x7fff
	v_bfe_u32 v42, v44, 16, 1
	v_add3_u32 v63, v44, v42, 0x7fff
	v_bfe_u32 v42, v45, 16, 1
	s_waitcnt lgkmcnt(0)
	v_cmp_o_f32_e64 s6, v58, v58
	v_cmp_o_f32_e64 s7, v59, v59
	v_cmp_o_f32_e64 s8, v60, v60
	v_cmp_o_f32_e64 s9, v61, v61
	v_add3_u32 v64, v45, v42, 0x7fff
	v_bfe_u32 v42, v58, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add3_u32 v65, v58, v42, 0x7fff
	v_bfe_u32 v42, v59, 16, 1
	scratch_load_b32 v58, off, off offset:208 ; 4-byte Folded Reload
	v_add3_u32 v66, v59, v42, 0x7fff
	v_bfe_u32 v42, v60, 16, 1
	v_add3_u32 v67, v60, v42, 0x7fff
	v_bfe_u32 v42, v61, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v68, v61, v42, 0x7fff
	scratch_load_b32 v42, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	ds_load_b128 v[58:61], v58
	s_waitcnt vmcnt(0)
	ds_load_b128 v[42:45], v42
	s_waitcnt lgkmcnt(1)
	v_cmp_o_f32_e64 s14, v58, v58
	v_cmp_o_f32_e64 s15, v59, v59
	v_cmp_o_f32_e64 s16, v60, v60
	v_cmp_o_f32_e64 s17, v61, v61
	s_waitcnt lgkmcnt(0)
	v_bfe_u32 v69, v42, 16, 1
	v_cmp_o_f32_e64 s10, v42, v42
	v_cmp_o_f32_e64 s11, v43, v43
	v_cmp_o_f32_e64 s12, v44, v44
	v_cmp_o_f32_e64 s13, v45, v45
	v_add3_u32 v42, v42, v69, 0x7fff
	v_bfe_u32 v69, v43, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v62.l, 0x7fff, v42.h, s10
	v_add3_u32 v43, v43, v69, 0x7fff
	v_bfe_u32 v69, v44, 16, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v44, v44, v69, 0x7fff
	v_bfe_u32 v69, v45, 16, 1
	v_cndmask_b16 v63.l, 0x7fff, v44.h, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v45, v45, v69, 0x7fff
	v_bfe_u32 v69, v58, 16, 1
	v_add3_u32 v69, v58, v69, 0x7fff
	v_bfe_u32 v58, v59, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v64.l, 0x7fff, v69.h, s14
	v_add3_u32 v70, v59, v58, 0x7fff
	v_bfe_u32 v58, v60, 16, 1
	v_cndmask_b16 v59.h, 0x7fff, v64.h, s5
	v_cndmask_b16 v59.l, 0x7fff, v63.h, s3
	v_cndmask_b16 v63.h, 0x7fff, v45.h, s13
	v_cndmask_b16 v64.h, 0x7fff, v70.h, s15
	v_add3_u32 v71, v60, v58, 0x7fff
	v_bfe_u32 v58, v61, 16, 1
	v_cndmask_b16 v60.l, 0x7fff, v65.h, s6
	v_cndmask_b16 v60.h, 0x7fff, v66.h, s7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v65.l, 0x7fff, v71.h, s16
	v_add3_u32 v72, v61, v58, 0x7fff
	v_cndmask_b16 v61.l, 0x7fff, v67.h, s8
	v_cndmask_b16 v61.h, 0x7fff, v68.h, s9
	v_cndmask_b16 v58.l, 0x7fff, v46.h, vcc_lo
	v_cndmask_b16 v58.h, 0x7fff, v62.h, s1
	v_cndmask_b16 v65.h, 0x7fff, v72.h, s17
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[66:69], off, off offset:48
	scratch_load_b128 v[70:73], off, off offset:64
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v62.h, 0x7fff, v43.h, s11
	.loc	1 715 36                        ; attention_backward.py:715:36
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[97:104], v[66:73], v[58:65], v[97:104]
	s_clause 0x5                            ; 24-byte Folded Reload
	scratch_load_b32 v67, off, off offset:80
	scratch_load_b32 v65, off, off offset:40
	scratch_load_b32 v66, off, off offset:44
	scratch_load_b32 v64, off, off offset:36
	scratch_load_b32 v62, off, off offset:16
	scratch_load_b32 v63, off, off offset:32
	.loc	1 608 29                        ; attention_backward.py:608:29
	v_or_b32_e32 v58, s78, v49
	scratch_load_b32 v49, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v42, v97, v57
	v_sub_f32_e32 v43, v98, v57
	v_dual_sub_f32 v44, v99, v57 :: v_dual_add_nc_u32 v61, s49, v58
	v_dual_sub_f32 v45, v100, v57 :: v_dual_add_nc_u32 v58, s73, v58
	v_sub_f32_e32 v59, v102, v57
	v_sub_f32_e32 v60, v103, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e32 vcc_lo, v92, v61
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s10, v92, v58
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v69, v194, 16, 1
	v_bfe_u32 v70, v190, 16, 1
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s10, vcc_lo, s10
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v68, v198, 16, 1
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 vcc_lo, s0, s10
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s10, v218, v218
	v_add3_u32 v69, v194, v69, 0x7fff
	v_add3_u32 v70, v190, v70, 0x7fff
	v_add3_u32 v68, v198, v68, 0x7fff
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_add_i32 s78, s78, 32
	.loc	1 678 30                        ; attention_backward.py:678:30
	s_waitcnt vmcnt(6)
	v_cmp_ge_i32_e64 s1, v67, v61
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s11, v67, v58
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e32 v67, 0, v41, vcc_lo
	.loc	1 720 47                        ; attention_backward.py:720:47
	v_sub_f32_e32 v46, v101, v57
	v_sub_f32_e32 v57, v104, v57
	.loc	1 678 30                        ; attention_backward.py:678:30
	s_waitcnt vmcnt(5)
	v_cmp_ge_i32_e64 s3, v65, v61
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s1, s1, s11
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v41, v67, v42
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s1, s0, s1
	.loc	1 678 30                        ; attention_backward.py:678:30
	s_waitcnt vmcnt(4)
	v_cmp_ge_i32_e64 s5, v66, v61
	s_waitcnt vmcnt(3)
	v_cmp_ge_i32_e64 s6, v64, v61
	s_waitcnt vmcnt(2)
	v_cmp_ge_i32_e64 s7, v62, v61
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v41, s69, v41
	.loc	1 679 30                        ; attention_backward.py:679:30
	v_cmp_le_i32_e64 s12, v65, v58
	v_cmp_le_i32_e64 s13, v66, v58
	v_cmp_le_i32_e64 s14, v64, v58
	v_cmp_le_i32_e64 s15, v62, v58
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v42, v41, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	.loc	1 679 30                        ; attention_backward.py:679:30
	s_waitcnt vmcnt(1)
	v_cmp_le_i32_e64 s16, v63, v58
	s_waitcnt vmcnt(0)
	v_cmp_le_i32_e64 s17, v49, v58
	.loc	1 679 21 is_stmt 0              ; attention_backward.py:679:21
	s_and_b32 s3, s3, s12
	.loc	1 721 37 is_stmt 1              ; attention_backward.py:721:37
	v_add3_u32 v41, v41, v42, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v42, v109
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s3, s0, s3
	s_and_b32 s5, s5, s13
	s_and_b32 s6, s6, s14
	s_and_b32 s5, s0, s5
	s_and_b32 s6, s0, s6
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v41.l, 0x7fff, v41.h, vcc_lo
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s7, s7, s15
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s8, v63, v61
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s7, s0, s7
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v58, 0, v42, s1
	v_cndmask_b32_e64 v53, 0, v53, s7
	.loc	1 678 30                        ; attention_backward.py:678:30
	v_cmp_ge_i32_e64 s9, v49, v61
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s8, s8, s16
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e32 vcc_lo, v67, v67
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v42, v58, v43
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s8, s0, s8
	s_and_b32 s9, s9, s17
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v52, 0, v52, s8
	.loc	1 679 21                        ; attention_backward.py:679:21
	s_and_b32 s9, s0, s9
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v42, s69, v42
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s12, v210, v210
	v_cmp_o_f32_e64 s16, v194, v194
	v_cmp_o_f32_e64 s13, v206, v206
	v_cmp_o_f32_e64 s17, v190, v190
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v43, v42, 16, 1
	v_cmp_o_f32_e64 s1, v42, v42
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s14, v202, v202
	v_cmp_o_f32_e64 s15, v198, v198
	v_cndmask_b16 v84.h, 0x7fff, v70.h, s17
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_add3_u32 v42, v42, v43, 0x7fff
	.loc	1 703 21                        ; attention_backward.py:703:21
	v_exp_f32_e32 v43, v56
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b16_e64 v42.l, v178.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s17, v221, v221
	v_cmp_o_f32_e64 s11, v214, v214
	v_cndmask_b16 v82.h, 0x7fff, v68.h, s15
	v_cndmask_b16 v83.h, 0x7fff, v69.h, s16
	v_cmp_o_f32_e64 s15, v225, v225
	v_cmp_o_f32_e64 s16, v223, v223
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cmp_lt_u32 s78, s75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v56, 0, v43, s3
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v43, v56, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v43, s69, v43
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v44, v43, 16, 1
	v_cmp_o_f32_e64 s3, v43, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_add3_u32 v43, v43, v44, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v44, v55
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b16_e64 v43.l, v182.l
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v55, 0, v44, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v44, v55, v45
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v44, s69, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v45, v44, 16, 1
	v_cmp_o_f32_e64 s5, v44, v44
	v_add3_u32 v44, v44, v45, 0x7fff
	.loc	1 703 21 is_stmt 1              ; attention_backward.py:703:21
	v_exp_f32_e32 v45, v54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 701 33                        ; attention_backward.py:701:33
	v_cndmask_b32_e64 v45, 0, v45, s6
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v46, v45, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v46, s69, v46
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v54, v46, 16, 1
	v_cmp_o_f32_e64 s6, v46, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v46, v46, v54, 0x7fff
	.loc	1 720 30 is_stmt 1              ; attention_backward.py:720:30
	v_mul_f32_e32 v54, v53, v59
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v41.h, 0x7fff, v46.h, s6
	.loc	1 722 33                        ; attention_backward.py:722:33
	scratch_load_b32 v46, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v54, s69, v54
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s6, v55, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_bfe_u32 v59, v54, 16, 1
	v_cmp_o_f32_e64 s7, v54, v54
	v_add3_u32 v59, v54, v59, 0x7fff
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v54, v52, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v54, s69, v54
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v60, v54, 16, 1
	v_cmp_o_f32_e64 s8, v54, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v60, v54, v60, 0x7fff
	.loc	1 701 33 is_stmt 1              ; attention_backward.py:701:33
	v_cndmask_b32_e64 v54, 0, v51, s9
	.loc	1 720 30                        ; attention_backward.py:720:30
	v_mul_f32_e32 v51, v54, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 721 38                        ; attention_backward.py:721:38
	v_mul_f32_e32 v51, s69, v51
	.loc	1 721 37 is_stmt 0              ; attention_backward.py:721:37
	v_bfe_u32 v57, v51, 16, 1
	v_cmp_o_f32_e64 s9, v51, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v51, v51, v57, 0x7fff
	.loc	1 663 37 is_stmt 1              ; attention_backward.py:663:37
	v_mov_b16_e32 v51.l, 0
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v194.l, v51.l
	v_mov_b16_e64 v190.l, v51.l
	v_mov_b16_e64 v198.l, v51.l
	v_mov_b16_e32 v74.l, v51.l
	v_mov_b16_e32 v75.l, v51.l
	v_mov_b16_e32 v76.l, v51.l
	v_mov_b16_e32 v78.l, v51.l
	v_mov_b16_e32 v82.l, v51.l
	v_mov_b16_e32 v80.l, v51.l
	v_mov_b16_e32 v81.l, v51.l
	v_mov_b16_e32 v83.l, v51.l
	v_mov_b16_e32 v77.l, v51.l
	v_mov_b16_e32 v79.l, v51.l
	v_mov_b16_e32 v84.l, v51.l
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v57, 0, v46
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v46, v52, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v57, v41
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v41.l, 0x7fff, v42.h, s1
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v57, v41 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v41.h, 0x7fff, v59.h, s7
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b16_e32 v42.h, v105.l
	v_mov_b16_e64 v105.l, v178.h
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v253, v41
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v41.l, 0x7fff, v43.h, s3
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v253, v41 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v41.h, 0x7fff, v60.h, s8
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b16_e32 v43.h, v110.l
	v_mov_b16_e64 v110.l, v182.h
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v255, v41
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v41.l, 0x7fff, v44.h, s5
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16_d16_hi v255, v41 offset:512
	.loc	1 721 37                        ; attention_backward.py:721:37
	v_cndmask_b16 v41.h, 0x7fff, v51.h, s9
	.loc	1 722 33                        ; attention_backward.py:722:33
	ds_store_b16 v33, v41
	ds_store_b16_d16_hi v33, v41 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v41, off, off offset:260
	scratch_load_b32 v49, off, off offset:28
	.loc	1 663 37                        ; attention_backward.py:663:37
	v_mov_b32_e32 v109, v105
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cmp_o_f32_e64 s1, v45, v45
	v_cmp_o_f32_e64 s3, v58, v58
	v_cmp_o_f32_e64 s5, v53, v53
	v_cmp_o_f32_e64 s7, v52, v52
	v_add3_u32 v46, v52, v46, 0x7fff
	v_cmp_o_f32_e64 s8, v54, v54
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v46.l, v51.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s9, v222, v222
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v46.h, 0x7fff, v46.h, s7
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s7, v230, v230
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v41, 0, v41
	ds_load_b128 v[59:62], v41
	ds_load_b128 v[63:66], v36
	ds_load_b128 v[97:100], v37
	s_waitcnt vmcnt(0)
	ds_load_b128 v[101:104], v49
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v44, off, off offset:264 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v44, 0, v44
	ds_store_2addr_b64 v44, v[42:43], v[109:110] offset1:8
	scratch_load_b32 v44, off, off offset:196 ; 4-byte Folded Reload
	v_mov_b16_e32 v42.h, v106.l
	v_mov_b16_e64 v106.l, v179.h
	v_mov_b16_e64 v43.l, v183.l
	v_mov_b16_e32 v43.h, v111.l
	v_mov_b16_e64 v42.l, v179.l
	v_mov_b16_e64 v111.l, v183.h
	v_mov_b32_e32 v110, v106
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v44, v[42:43], v[110:111] offset1:8
	scratch_load_b32 v44, off, off offset:200 ; 4-byte Folded Reload
	v_mov_b16_e32 v42.h, v107.l
	v_mov_b16_e64 v107.l, v180.h
	v_mov_b16_e64 v43.l, v184.l
	v_mov_b16_e32 v43.h, v112.l
	v_mov_b16_e64 v42.l, v180.l
	v_mov_b16_e64 v112.l, v184.h
	v_mov_b32_e32 v111, v107
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v44, v[42:43], v[111:112] offset1:8
	scratch_load_b32 v44, off, off offset:188 ; 4-byte Folded Reload
	v_mov_b16_e32 v43.h, v113.l
	v_mov_b16_e64 v113.l, v185.h
	v_mov_b16_e64 v43.l, v185.l
	v_mov_b16_e64 v42.l, v181.l
	v_mov_b16_e32 v42.h, v108.l
	v_mov_b16_e64 v108.l, v181.h
	v_mov_b32_e32 v109, v113
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v113, v229, 16, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v113, v229, v113, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v113.l, v51.l
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	ds_store_2addr_b64 v44, v[42:43], v[108:109] offset1:8
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v42, off, off offset:280
	scratch_load_b32 v43, off, off offset:192
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v42, 0, v42
	s_waitcnt vmcnt(0)
	ds_load_b128 v[109:112], v43
	ds_load_b128 v[105:108], v42
	ds_load_b128 v[178:181], v42 offset:2048
	ds_load_b128 v[182:185], v43 offset:2048
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v43, off, off offset:184
	scratch_load_b32 v42, off, off offset:180
	.loc	1 722 33                        ; attention_backward.py:722:33
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[105:112], v[59:66], v[25:32]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[178:185], v[59:66], v[17:24]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v181.l, v51.l
	v_mov_b16_e64 v184.l, v51.l
	v_mov_b16_e64 v182.l, v51.l
	v_mov_b16_e64 v183.l, v51.l
	v_mov_b16_e64 v179.l, v51.l
	v_mov_b16_e64 v178.l, v51.l
	v_mov_b16_e64 v180.l, v51.l
	v_mov_b16_e64 v185.l, v51.l
	.loc	1 663 37                        ; attention_backward.py:663:37
	s_waitcnt vmcnt(0)
	ds_load_b128 v[59:62], v42
	ds_load_b128 v[105:108], v42 offset:2048
	ds_load_b128 v[109:112], v43 offset:2048
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v42, v67, 16, 1
	.loc	1 663 37                        ; attention_backward.py:663:37
	ds_load_b128 v[63:66], v43
	.loc	1 735 35                        ; attention_backward.py:735:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v42, v67, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v51.h, 0x7fff, v42.h, vcc_lo
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v42, v67, v51
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e32 v67.l, v51.l
	.loc	1 722 33 is_stmt 1              ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[17:24], v[105:112], v[97:104], v[17:24]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v43, v42, 16, 1
	.loc	1 722 33                        ; attention_backward.py:722:33
	v_wmma_f32_16x16x16_bf16 v[25:32], v[59:66], v[97:104], v[25:32]
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	.loc	1 728 51 is_stmt 0              ; attention_backward.py:728:51
	v_mov_b16_e32 v61.l, v51.l
	v_mov_b16_e32 v66.l, v51.l
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v59, v42, v43, 0x7fff
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_bfe_u32 v42, v45, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v65.l, v51.l
	v_mov_b16_e32 v59.l, v51.l
	v_mov_b16_e32 v62.l, v51.l
	v_mov_b16_e32 v64.l, v51.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v42, v45, v42, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v63.l, v51.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v61.h, 0x7fff, v42.h, s1
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v42, v45, v61
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v45, v55, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v43, v42, 16, 1
	v_cmp_o_f32_e64 s1, v42, v42
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v45, v55, v45, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v45.l, v51.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 728 34 is_stmt 0              ; attention_backward.py:728:34
	v_add3_u32 v60, v42, v43, 0x7fff
	.loc	1 727 34 is_stmt 1              ; attention_backward.py:727:34
	v_bfe_u32 v42, v58, 16, 1
	v_cndmask_b16 v45.h, 0x7fff, v45.h, s6
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v60.l, v51.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v42, v58, v42, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v42.l, v51.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s3
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v57, v61 offset:512
	ds_store_b16_d16_hi v253, v42
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v43, v58, v42
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v42, v56, 16, 1
	v_bfe_u32 v58, v54, 16, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v44, v43, 16, 1
	v_cmp_o_f32_e64 s3, v43, v43
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v42, v56, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v58, v54, v58, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v42.l, 0x7fff, v59.h, vcc_lo
	v_add3_u32 v43, v43, v44, 0x7fff
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_bfe_u32 v44, v53, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e32 vcc_lo, v248, v248
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v67.h, 0x7fff, v58.h, s8
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s8, v226, v226
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v58.l, v51.l
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_add3_u32 v44, v53, v44, 0x7fff
	.loc	1 728 51                        ; attention_backward.py:728:51
	v_mov_b16_e32 v44.l, v51.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 727 34                        ; attention_backward.py:727:34
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s5
	v_cmp_o_f32_e64 s5, v56, v56
	v_cndmask_b16 v66.h, 0x7fff, v42.h, s5
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v42.h, 0x7fff, v60.h, s1
	.loc	1 735 35                        ; attention_backward.py:735:35
	ds_store_b16_d16_hi v57, v51
	ds_store_b16_d16_hi v253, v44 offset:512
	ds_store_b16_d16_hi v255, v66
	ds_store_b16_d16_hi v255, v46 offset:512
	ds_store_b16_d16_hi v33, v45
	ds_store_b16_d16_hi v33, v67 offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[105:108], v41
	ds_load_b128 v[109:112], v36
	ds_load_b128 v[97:100], v37
	ds_load_b128 v[101:104], v49
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v57, v42
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v42.l, 0x7fff, v43.h, s3
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v43, v248, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v57, v42 offset:512
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v57, v244, 16, 1
	v_cmp_o_f32_e64 s1, v244, v244
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v45, v55, v45
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v43, v248, v43, 0x7fff
	v_bfe_u32 v55, v218, 16, 1
	v_add3_u32 v57, v244, v57, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v58.h, 0x7fff, v43.h, vcc_lo
	v_bfe_u32 v43, v240, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v240, v240
	v_cndmask_b16 v59.h, 0x7fff, v57.h, s1
	v_bfe_u32 v57, v212, 16, 1
	v_cmp_o_f32_e64 s1, v212, v212
	v_add3_u32 v43, v240, v43, 0x7fff
	v_add3_u32 v55, v218, v55, 0x7fff
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v91, v165, v59
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v57, v212, v57, 0x7fff
	v_bfe_u32 v165, v209, 16, 1
	v_cndmask_b16 v60.h, 0x7fff, v43.h, vcc_lo
	v_bfe_u32 v43, v236, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v236, v236
	v_cndmask_b16 v179.h, 0x7fff, v57.h, s1
	v_bfe_u32 v57, v210, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s1, v45, v45
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v43, v236, v43, 0x7fff
	v_cndmask_b16 v77.h, 0x7fff, v55.h, s10
	v_add3_u32 v165, v209, v165, 0x7fff
	v_add3_u32 v57, v210, v57, 0x7fff
	v_cmp_o_f32_e64 s10, v235, v235
	v_cndmask_b16 v61.h, 0x7fff, v43.h, vcc_lo
	v_bfe_u32 v43, v232, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v232, v232
	v_cndmask_b16 v79.h, 0x7fff, v57.h, s12
	v_cndmask_b16 v198.h, 0x7fff, v165.h, s23
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v89, v177, v61
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v43, v232, v43, 0x7fff
	v_bfe_u32 v177, v197, 16, 1
	v_cmp_o_f32_e64 s12, v231, v231
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v165.l, v51.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v62.h, 0x7fff, v43.h, vcc_lo
	v_bfe_u32 v43, v228, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v228, v228
	v_add3_u32 v177, v197, v177, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v197.l, v51.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v43, v228, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v63.h, 0x7fff, v43.h, vcc_lo
	v_bfe_u32 v43, v224, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v224, v224
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v87, v173, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v43, v224, v43, 0x7fff
	v_bfe_u32 v173, v201, 16, 1
	v_cndmask_b16 v64.h, 0x7fff, v43.h, vcc_lo
	v_bfe_u32 v43, v220, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v220, v220
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v173, v201, v173, 0x7fff
	v_cndmask_b16 v201.h, 0x7fff, v177.h, s29
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v86, v167, v64
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v43, v220, v43, 0x7fff
	v_bfe_u32 v167, v207, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v201.l, v51.l
	v_mov_b16_e64 v173.l, v51.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v65.h, 0x7fff, v43.h, vcc_lo
	v_bfe_u32 v43, v216, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v216, v216
	v_add3_u32 v167, v207, v167, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v167.l, v51.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v85, v169, v65
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_add3_u32 v43, v216, v43, 0x7fff
	v_bfe_u32 v169, v205, 16, 1
	v_cndmask_b16 v167.h, 0x7fff, v167.h, s24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cndmask_b16 v178.h, 0x7fff, v43.h, vcc_lo
	v_bfe_u32 v43, v208, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v208, v208
	v_add3_u32 v169, v205, v169, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v169.l, v51.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v43, v208, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v180.h, 0x7fff, v43.h, vcc_lo
	v_bfe_u32 v43, v204, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v204, v204
	v_add3_u32 v43, v204, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v181.h, 0x7fff, v43.h, vcc_lo
	v_bfe_u32 v43, v200, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v200, v200
	v_add3_u32 v43, v200, v43, 0x7fff
	v_cndmask_b16 v200.h, 0x7fff, v173.h, s27
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v200.l, v51.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v182.h, 0x7fff, v43.h, vcc_lo
	v_bfe_u32 v43, v196, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v196, v196
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_dual_sub_f32 v44, v53, v44 :: v_dual_sub_f32 v57, v135, v182
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v43, v196, v43, 0x7fff
	v_bfe_u32 v135, v223, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s3, v44, v44
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v196.l, v51.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v183.h, 0x7fff, v43.h, vcc_lo
	v_bfe_u32 v43, v192, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v192, v192
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v46, v52, v46
	v_sub_f32_e32 v52, v54, v67
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v55, v137, v183
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v43, v192, v43, 0x7fff
	v_bfe_u32 v54, v222, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cmp_o_f32_e64 s5, v46, v46
	v_cmp_o_f32_e64 s6, v52, v52
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v67, v202, 16, 1
	v_cndmask_b16 v184.h, 0x7fff, v43.h, vcc_lo
	v_bfe_u32 v43, v188, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v188, v188
	v_bfe_u32 v137, v221, 16, 1
	v_add3_u32 v54, v222, v54, 0x7fff
	v_add3_u32 v67, v202, v67, 0x7fff
	v_add3_u32 v43, v188, v43, 0x7fff
	v_bfe_u32 v188, v195, 16, 1
	v_add3_u32 v137, v221, v137, 0x7fff
	v_cndmask_b16 v76.h, 0x7fff, v54.h, s9
	v_cndmask_b16 v81.h, 0x7fff, v67.h, s14
	v_cndmask_b16 v185.h, 0x7fff, v43.h, vcc_lo
	.loc	1 728 35                        ; attention_backward.py:728:35
	v_sub_f32_e32 v43, v56, v66
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v66, v206, 16, 1
	v_add3_u32 v204, v195, v188, 0x7fff
	v_bfe_u32 v188, v193, 16, 1
	v_bfe_u32 v56, v214, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_bfe_u32 v53, v43, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v43, v43
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v66, v206, v66, 0x7fff
	v_add3_u32 v202, v193, v188, 0x7fff
	v_bfe_u32 v188, v191, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v43, v43, v53, 0x7fff
	v_bfe_u32 v53, v45, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v80.h, 0x7fff, v66.h, s13
	v_cmp_o_f32_e64 s13, v229, v229
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v193.l, v51.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v56, v214, v56, 0x7fff
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v45, v45, v53, 0x7fff
	v_bfe_u32 v53, v44, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v193.h, 0x7fff, v113.h, s13
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v90, v175, v60
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v175, v199, 16, 1
	v_bfe_u32 v54, v249, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_add3_u32 v44, v44, v53, 0x7fff
	v_bfe_u32 v53, v46, 16, 1
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_add3_u32 v205, v191, v188, 0x7fff
	v_add3_u32 v175, v199, v175, 0x7fff
	v_bfe_u32 v188, v189, 16, 1
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v42.h, 0x7fff, v44.h, s3
	v_add3_u32 v46, v46, v53, 0x7fff
	v_bfe_u32 v53, v52, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v253, v42
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v42.l, 0x7fff, v43.h, vcc_lo
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v253, v42 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v42.h, 0x7fff, v46.h, s5
	v_add3_u32 v52, v52, v53, 0x7fff
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v43, v246, 16, 1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v255, v42
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v42.l, 0x7fff, v45.h, s1
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16_d16_hi v255, v42 offset:512
	.loc	1 728 34                        ; attention_backward.py:728:34
	v_cndmask_b16 v42.h, 0x7fff, v52.h, s6
	.loc	1 740 35                        ; attention_backward.py:740:35
	ds_store_b16 v33, v42
	ds_store_b16_d16_hi v33, v42 offset:512
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v42, v250, 16, 1
	v_bfe_u32 v44, v242, 16, 1
	v_bfe_u32 v45, v238, 16, 1
	v_bfe_u32 v46, v234, 16, 1
	v_bfe_u32 v52, v230, 16, 1
	v_bfe_u32 v53, v226, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v250, v250
	v_cmp_o_f32_e64 s1, v246, v246
	v_cmp_o_f32_e64 s3, v242, v242
	v_cmp_o_f32_e64 s5, v238, v238
	v_cmp_o_f32_e64 s6, v234, v234
	v_add3_u32 v42, v250, v42, 0x7fff
	v_add3_u32 v43, v246, v43, 0x7fff
	v_add3_u32 v44, v242, v44, 0x7fff
	v_add3_u32 v45, v238, v45, 0x7fff
	v_add3_u32 v46, v234, v46, 0x7fff
	v_add3_u32 v52, v230, v52, 0x7fff
	v_add3_u32 v53, v226, v53, 0x7fff
	v_cndmask_b16 v42.h, 0x7fff, v42.h, vcc_lo
	v_cndmask_b16 v43.h, 0x7fff, v43.h, s1
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s3
	v_cndmask_b16 v45.h, 0x7fff, v45.h, s5
	v_cndmask_b16 v46.h, 0x7fff, v46.h, s6
	v_cndmask_b16 v74.h, 0x7fff, v52.h, s7
	v_cndmask_b16 v75.h, 0x7fff, v53.h, s8
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[66:69], v41
	ds_load_b128 v[70:73], v36
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v195.h, 0x7fff, v137.h, s17
	v_cndmask_b16 v199.h, 0x7fff, v169.h, s25
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v195.l, v51.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v88, v171, v62
	.loc	1 716 21 is_stmt 1              ; attention_backward.py:716:21
	v_bfe_u32 v171, v203, 16, 1
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v199.l, v51.l
	v_dual_mov_b32 v212, v95 :: v_dual_sub_f32 v95, v145, v179
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v145, v213, 16, 1
	v_cndmask_b16 v78.h, 0x7fff, v56.h, s11
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e32 v65.l, v76.h
	v_mov_b16_e32 v64.l, v75.h
	v_mov_b16_e32 v63.l, v74.h
	v_mov_b16_e32 v62.l, v46.h
	v_mov_b16_e32 v61.l, v45.h
	v_mov_b16_e32 v60.l, v44.h
	v_mov_b16_e32 v59.l, v43.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cmp_o_f32_e64 s1, v249, v249
	v_add3_u32 v54, v249, v54, 0x7fff
	v_add3_u32 v145, v213, v145, 0x7fff
	v_add3_u32 v171, v203, v171, 0x7fff
	v_add3_u32 v203, v189, v188, 0x7fff
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v191.l, v51.l
	v_mov_b16_e64 v192.l, v51.l
	v_mov_b32_e32 v206, v92
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v92, v163, v58
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e32 v58.l, v42.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v52, v133, v185
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v185.l, v84.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v53, v131, v184
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v184.l, v83.h
	v_mov_b16_e64 v183.l, v82.h
	v_mov_b16_e64 v182.l, v81.h
	v_mov_b16_e64 v179.l, v78.h
	v_mov_b32_e32 v214, v96
	v_wmma_f32_16x16x16_bf16 v[1:8], v[58:65], v[105:112], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v188.h, 0x7fff, v54.h, s1
	v_cndmask_b16 v197.h, 0x7fff, v145.h, s21
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v96, v143, v178
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v178.l, v77.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v203.h, 0x7fff, v203.h, s34
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v188.l, v51.l
	v_mov_b32_e32 v208, v93
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v93, v141, v181
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v181.l, v80.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v189.l, v51.l
	v_mov_b32_e32 v210, v94
	v_mov_b16_e64 v203.l, v51.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v94, v139, v180
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v180.l, v79.h
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v41, v251, 16, 1
	v_bfe_u32 v56, v247, 16, 1
	v_bfe_u32 v131, v227, 16, 1
	v_bfe_u32 v133, v225, 16, 1
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[178:185], v[97:104], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v141, v217, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v251, v251
	v_add3_u32 v41, v251, v41, 0x7fff
	v_cmp_o_f32_e64 s3, v247, v247
	.loc	1 740 35                        ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[58:65], v[66:73], v[1:8]
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_bfe_u32 v58, v245, 16, 1
	v_bfe_u32 v59, v243, 16, 1
	v_bfe_u32 v60, v241, 16, 1
	v_bfe_u32 v61, v239, 16, 1
	v_bfe_u32 v62, v237, 16, 1
	v_bfe_u32 v63, v235, 16, 1
	v_bfe_u32 v64, v233, 16, 1
	v_bfe_u32 v65, v231, 16, 1
	v_add3_u32 v56, v247, v56, 0x7fff
	v_cmp_o_f32_e64 s5, v245, v245
	v_add3_u32 v58, v245, v58, 0x7fff
	v_cmp_o_f32_e64 s6, v243, v243
	v_add3_u32 v59, v243, v59, 0x7fff
	v_cmp_o_f32_e64 s7, v241, v241
	v_add3_u32 v60, v241, v60, 0x7fff
	v_cmp_o_f32_e64 s8, v239, v239
	v_add3_u32 v61, v239, v61, 0x7fff
	v_cmp_o_f32_e64 s9, v237, v237
	v_add3_u32 v62, v237, v62, 0x7fff
	v_add3_u32 v63, v235, v63, 0x7fff
	v_cmp_o_f32_e64 s11, v233, v233
	v_add3_u32 v64, v233, v64, 0x7fff
	v_add3_u32 v65, v231, v65, 0x7fff
	v_cmp_o_f32_e64 s14, v227, v227
	v_add3_u32 v131, v227, v131, 0x7fff
	v_add3_u32 v133, v225, v133, 0x7fff
	v_add3_u32 v135, v223, v135, 0x7fff
	v_bfe_u32 v139, v219, 16, 1
	v_add3_u32 v141, v217, v141, 0x7fff
	v_bfe_u32 v143, v215, 16, 1
	v_bfe_u32 v163, v211, 16, 1
	v_cndmask_b16 v189.h, 0x7fff, v58.h, s5
	v_add3_u32 v139, v219, v139, 0x7fff
	v_cndmask_b16 v190.h, 0x7fff, v60.h, s7
	v_add3_u32 v143, v215, v143, 0x7fff
	v_add3_u32 v163, v211, v163, 0x7fff
	v_cndmask_b16 v191.h, 0x7fff, v62.h, s9
	v_cndmask_b16 v192.h, 0x7fff, v64.h, s11
	v_cndmask_b16 v194.h, 0x7fff, v133.h, s15
	v_cndmask_b16 v196.h, 0x7fff, v141.h, s19
	v_cndmask_b16 v113.h, 0x7fff, v41.h, vcc_lo
	v_cndmask_b16 v133.h, 0x7fff, v56.h, s3
	v_cndmask_b16 v137.h, 0x7fff, v59.h, s6
	v_cndmask_b16 v141.h, 0x7fff, v61.h, s8
	v_cndmask_b16 v145.h, 0x7fff, v63.h, s10
	v_cndmask_b16 v165.h, 0x7fff, v65.h, s12
	v_cndmask_b16 v131.h, 0x7fff, v131.h, s14
	v_cndmask_b16 v135.h, 0x7fff, v135.h, s16
	v_cndmask_b16 v202.h, 0x7fff, v202.h, s31
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v202.l, v51.l
	.loc	1 716 21                        ; attention_backward.py:716:21
	v_cndmask_b16 v139.h, 0x7fff, v139.h, s18
	v_cndmask_b16 v143.h, 0x7fff, v143.h, s20
	v_cndmask_b16 v163.h, 0x7fff, v163.h, s22
	v_cndmask_b16 v169.h, 0x7fff, v171.h, s26
	v_cndmask_b16 v171.h, 0x7fff, v175.h, s28
	v_cndmask_b16 v173.h, 0x7fff, v204.h, s30
	v_cndmask_b16 v51.h, 0x7fff, v205.h, s33
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v149, v149, v195
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v195.l, v135.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v147, v147, v194
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v194.l, v131.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v153, v153, v193
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v193.l, v165.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v151, v151, v192
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v192.l, v145.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v157, v157, v191
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v191.l, v141.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v155, v155, v190
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v190.l, v137.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v161, v161, v189
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v189.l, v133.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v159, v159, v188
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v188.l, v113.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v41, v121, v203
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v203.l, v51.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v54, v119, v202
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v202.l, v173.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v56, v125, v201 :: v_dual_sub_f32 v115, v115, v196
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v201.l, v171.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v119, v129, v199
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v199.l, v167.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v121, v127, v198
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v198.l, v163.h
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v117, v117, v197
	.loc	1 735 35                        ; attention_backward.py:735:35
	v_mov_b16_e64 v197.l, v143.h
	v_mov_b16_e64 v196.l, v139.h
	v_wmma_f32_16x16x16_bf16 v[9:16], v[188:195], v[105:112], v[9:16]
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v43.l, v51.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v58, v123, v200
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_mov_b16_e64 v200.l, v169.h
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v44.l, v51.l
	v_mov_b16_e32 v42.l, v51.l
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_sub_f32_e32 v43, v164, v43
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e32 v45.l, v51.l
	.loc	1 735 35 is_stmt 1              ; attention_backward.py:735:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[196:203], v[97:104], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v44, v174, v44
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e32 v46.l, v51.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v42, v162, v42 :: v_dual_sub_f32 v45, v176, v45
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[188:195], v[66:73], v[9:16]
	ds_load_b128 v[59:62], v37
	ds_load_b128 v[63:66], v49
	v_mov_b32_e32 v188, v34
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v43, v43
	.loc	1 732 54 is_stmt 0              ; attention_backward.py:732:54
	v_mov_b16_e64 v133.l, v51.l
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v46, v170, v46
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s8, v45, v45
	v_cmp_o_f32_e64 s1, v92, v92
	v_cmp_o_f32_e64 s5, v91, v91
	v_cmp_o_f32_e64 s7, v90, v90
	v_cmp_o_f32_e64 s9, v89, v89
	v_cmp_o_f32_e64 s11, v88, v88
	v_cmp_o_f32_e64 s13, v87, v87
	v_cmp_o_f32_e64 s15, v86, v86
	v_cmp_o_f32_e64 s17, v85, v85
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v137.l, v51.l
	v_mov_b16_e64 v141.l, v51.l
	v_mov_b16_e64 v131.l, v51.l
	v_mov_b16_e64 v135.l, v51.l
	v_mov_b16_e64 v145.l, v51.l
	v_mov_b16_e64 v139.l, v51.l
	.loc	1 740 35 is_stmt 1              ; attention_backward.py:740:35
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[178:185], v[59:66], v[1:8]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[196:203], v[59:66], v[9:16]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v59, v172, v74 :: v_dual_sub_f32 v60, v166, v75
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v63, v43, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v61, v168, v76
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v62, v42, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_bfe_u32 v67, v59, 16, 1
	v_cmp_o_f32_e64 s12, v59, v59
	v_add3_u32 v43, v43, v63, 0x7fff
	v_bfe_u32 v64, v44, 16, 1
	v_bfe_u32 v65, v45, 16, 1
	v_add3_u32 v67, v59, v67, 0x7fff
	v_bfe_u32 v59, v87, 16, 1
	v_cmp_o_f32_e64 s14, v60, v60
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_add3_u32 v42, v42, v62, 0x7fff
	v_bfe_u32 v62, v92, 16, 1
	v_add3_u32 v68, v87, v59, 0x7fff
	v_bfe_u32 v59, v60, 16, 1
	v_bfe_u32 v63, v91, 16, 1
	v_cmp_o_f32_e64 s6, v44, v44
	v_add3_u32 v44, v44, v64, 0x7fff
	v_bfe_u32 v64, v90, 16, 1
	v_add3_u32 v69, v60, v59, 0x7fff
	v_bfe_u32 v59, v86, 16, 1
	v_cndmask_b16 v60.l, 0x7fff, v43.h, s3
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v43, v160, v133
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v66, v46, 16, 1
	v_add3_u32 v45, v45, v65, 0x7fff
	v_add3_u32 v70, v86, v59, 0x7fff
	v_bfe_u32 v59, v61, 16, 1
	v_bfe_u32 v65, v89, 16, 1
	v_cmp_o_f32_e64 s10, v46, v46
	v_add3_u32 v46, v46, v66, 0x7fff
	v_bfe_u32 v66, v88, 16, 1
	v_add3_u32 v71, v61, v59, 0x7fff
	v_bfe_u32 v59, v85, 16, 1
	v_add3_u32 v62, v92, v62, 0x7fff
	v_add3_u32 v63, v91, v63, 0x7fff
	v_add3_u32 v64, v90, v64, 0x7fff
	v_add3_u32 v65, v89, v65, 0x7fff
	v_add3_u32 v66, v88, v66, 0x7fff
	v_cmp_o_f32_e64 s16, v61, v61
	v_add3_u32 v72, v85, v59, 0x7fff
	v_cndmask_b16 v59.l, 0x7fff, v42.h, vcc_lo
	v_cndmask_b16 v59.h, 0x7fff, v62.h, s1
	v_cndmask_b16 v60.h, 0x7fff, v63.h, s5
	v_cndmask_b16 v61.l, 0x7fff, v44.h, s6
	v_cndmask_b16 v61.h, 0x7fff, v64.h, s7
	v_cndmask_b16 v62.l, 0x7fff, v45.h, s8
	v_cndmask_b16 v62.h, 0x7fff, v65.h, s9
	v_cndmask_b16 v63.l, 0x7fff, v46.h, s10
	v_cndmask_b16 v63.h, 0x7fff, v66.h, s11
	v_cndmask_b16 v64.l, 0x7fff, v67.h, s12
	v_cndmask_b16 v64.h, 0x7fff, v68.h, s13
	v_cndmask_b16 v65.l, 0x7fff, v69.h, s14
	v_cndmask_b16 v65.h, 0x7fff, v70.h, s15
	v_cndmask_b16 v66.l, 0x7fff, v71.h, s16
	v_cndmask_b16 v66.h, 0x7fff, v72.h, s17
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v44, v154, v137
	v_mov_b32_e32 v154, v39
	v_sub_f32_e32 v42, v158, v113
	v_dual_mov_b32 v92, v206 :: v_dual_sub_f32 v45, v156, v141
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[59:66], v[105:112], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v59, v152, v165 :: v_dual_sub_f32 v60, v146, v131
	v_sub_f32_e32 v61, v148, v135
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v62, v42, 16, 1
	v_bfe_u32 v63, v43, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_bfe_u32 v67, v59, 16, 1
	v_cmp_o_f32_e64 s12, v59, v59
	v_bfe_u32 v65, v45, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_add3_u32 v42, v42, v62, 0x7fff
	v_add3_u32 v67, v59, v67, 0x7fff
	v_bfe_u32 v59, v153, 16, 1
	v_bfe_u32 v62, v159, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v46, v150, v145
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s3, v43, v43
	v_add3_u32 v43, v43, v63, 0x7fff
	v_add3_u32 v68, v153, v59, 0x7fff
	v_bfe_u32 v59, v60, 16, 1
	v_cmp_o_f32_e64 s8, v45, v45
	v_add3_u32 v45, v45, v65, 0x7fff
	v_add3_u32 v62, v159, v62, 0x7fff
	v_cmp_o_f32_e64 s14, v60, v60
	v_add3_u32 v69, v60, v59, 0x7fff
	v_bfe_u32 v59, v147, 16, 1
	v_cndmask_b16 v60.l, 0x7fff, v43.h, s3
	v_cndmask_b16 v62.l, 0x7fff, v45.h, s8
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v43, v144, v78
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v64, v44, 16, 1
	v_add3_u32 v70, v147, v59, 0x7fff
	v_bfe_u32 v59, v61, 16, 1
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v45, v140, v80
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v66, v46, 16, 1
	v_bfe_u32 v63, v161, 16, 1
	v_cmp_o_f32_e64 s6, v44, v44
	v_add3_u32 v44, v44, v64, 0x7fff
	v_bfe_u32 v64, v155, 16, 1
	v_bfe_u32 v65, v157, 16, 1
	v_cmp_o_f32_e64 s10, v46, v46
	v_add3_u32 v46, v46, v66, 0x7fff
	v_bfe_u32 v66, v151, 16, 1
	v_add3_u32 v71, v61, v59, 0x7fff
	v_bfe_u32 v59, v149, 16, 1
	v_cmp_o_f32_e64 s1, v159, v159
	v_cmp_o_f32_e64 s5, v161, v161
	v_add3_u32 v63, v161, v63, 0x7fff
	v_cmp_o_f32_e64 s7, v155, v155
	v_add3_u32 v64, v155, v64, 0x7fff
	v_cmp_o_f32_e64 s9, v157, v157
	v_add3_u32 v65, v157, v65, 0x7fff
	v_cmp_o_f32_e64 s11, v151, v151
	v_add3_u32 v66, v151, v66, 0x7fff
	v_cmp_o_f32_e64 s13, v153, v153
	v_cmp_o_f32_e64 s15, v147, v147
	v_cmp_o_f32_e64 s16, v61, v61
	v_cmp_o_f32_e64 s17, v149, v149
	v_add3_u32 v72, v149, v59, 0x7fff
	v_cndmask_b16 v59.l, 0x7fff, v42.h, vcc_lo
	v_cndmask_b16 v59.h, 0x7fff, v62.h, s1
	v_cndmask_b16 v60.h, 0x7fff, v63.h, s5
	v_cndmask_b16 v61.l, 0x7fff, v44.h, s6
	v_cndmask_b16 v61.h, 0x7fff, v64.h, s7
	v_cndmask_b16 v62.h, 0x7fff, v65.h, s9
	v_cndmask_b16 v63.l, 0x7fff, v46.h, s10
	v_cndmask_b16 v63.h, 0x7fff, v66.h, s11
	v_cndmask_b16 v64.l, 0x7fff, v67.h, s12
	v_cndmask_b16 v64.h, 0x7fff, v68.h, s13
	v_cndmask_b16 v65.l, 0x7fff, v69.h, s14
	v_cndmask_b16 v65.h, 0x7fff, v70.h, s15
	v_cndmask_b16 v66.l, 0x7fff, v71.h, s16
	v_cndmask_b16 v66.h, 0x7fff, v72.h, s17
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v46, v134, v81
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s8, v45, v45
	v_cmp_o_f32_e64 s9, v93, v93
	v_cmp_o_f32_e64 s11, v57, v57
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[59:66], v[105:112], v[9:16]
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v65, v45, 16, 1
	.loc	1 732 35 is_stmt 0              ; attention_backward.py:732:35
	v_dual_sub_f32 v59, v136, v82 :: v_dual_sub_f32 v60, v130, v83
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_bfe_u32 v63, v43, 16, 1
	v_cmp_o_f32_e64 s13, v55, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v45, v45, v65, 0x7fff
	v_bfe_u32 v65, v93, 16, 1
	v_cmp_o_f32_e64 s12, v59, v59
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_dual_sub_f32 v42, v142, v77 :: v_dual_sub_f32 v61, v132, v84
	v_sub_f32_e32 v44, v138, v79
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v65, v93, v65, 0x7fff
	v_mov_b32_e32 v93, v208
	v_bfe_u32 v66, v46, 16, 1
	v_cmp_o_f32_e64 s10, v46, v46
	v_cmp_o_f32_e64 s3, v43, v43
	v_add3_u32 v43, v43, v63, 0x7fff
	v_bfe_u32 v63, v95, 16, 1
	v_add3_u32 v46, v46, v66, 0x7fff
	v_bfe_u32 v66, v57, 16, 1
	v_bfe_u32 v62, v42, 16, 1
	v_cmp_o_f32_e64 s5, v95, v95
	v_add3_u32 v63, v95, v63, 0x7fff
	v_mov_b32_e32 v95, v212
	v_add3_u32 v57, v57, v66, 0x7fff
	v_bfe_u32 v66, v59, 16, 1
	v_bfe_u32 v64, v44, 16, 1
	v_cmp_o_f32_e64 s15, v53, v53
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_add3_u32 v42, v42, v62, 0x7fff
	v_add3_u32 v66, v59, v66, 0x7fff
	v_bfe_u32 v59, v55, 16, 1
	v_bfe_u32 v62, v96, 16, 1
	v_cmp_o_f32_e64 s6, v44, v44
	v_add3_u32 v44, v44, v64, 0x7fff
	v_bfe_u32 v64, v94, 16, 1
	v_add3_u32 v55, v55, v59, 0x7fff
	v_bfe_u32 v59, v60, 16, 1
	v_cmp_o_f32_e64 s1, v96, v96
	v_add3_u32 v62, v96, v62, 0x7fff
	v_cmp_o_f32_e64 s7, v94, v94
	v_add3_u32 v64, v94, v64, 0x7fff
	v_add3_u32 v67, v60, v59, 0x7fff
	v_bfe_u32 v59, v53, 16, 1
	v_cmp_o_f32_e64 s14, v60, v60
	v_cmp_o_f32_e64 s16, v61, v61
	v_cmp_o_f32_e64 s17, v52, v52
	v_cndmask_b16 v60.l, 0x7fff, v43.h, s3
	v_add3_u32 v53, v53, v59, 0x7fff
	v_bfe_u32 v59, v61, 16, 1
	v_cndmask_b16 v60.h, 0x7fff, v63.h, s5
	v_cndmask_b16 v62.l, 0x7fff, v45.h, s8
	v_cndmask_b16 v63.l, 0x7fff, v46.h, s10
	v_cndmask_b16 v63.h, 0x7fff, v57.h, s11
	v_add3_u32 v68, v61, v59, 0x7fff
	v_bfe_u32 v59, v52, 16, 1
	v_cndmask_b16 v61.l, 0x7fff, v44.h, s6
	v_cndmask_b16 v61.h, 0x7fff, v64.h, s7
	v_cndmask_b16 v64.l, 0x7fff, v66.h, s12
	v_cndmask_b16 v64.h, 0x7fff, v55.h, s13
	v_add3_u32 v52, v52, v59, 0x7fff
	v_cndmask_b16 v59.l, 0x7fff, v42.h, vcc_lo
	v_cndmask_b16 v59.h, 0x7fff, v62.h, s1
	v_cndmask_b16 v62.h, 0x7fff, v65.h, s9
	v_cndmask_b16 v65.l, 0x7fff, v67.h, s14
	v_cndmask_b16 v65.h, 0x7fff, v53.h, s15
	v_cndmask_b16 v66.l, 0x7fff, v68.h, s16
	v_cndmask_b16 v66.h, 0x7fff, v52.h, s17
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v46, v122, v169
	.loc	1 732 54                        ; attention_backward.py:732:54
	v_mov_b16_e64 v143.l, v51.l
	v_mov_b16_e64 v163.l, v51.l
	v_mov_b16_e64 v171.l, v51.l
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[1:8], v[59:66], v[97:104], v[1:8]
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v51, v120, v51
	.loc	1 732 34 is_stmt 0              ; attention_backward.py:732:34
	v_bfe_u32 v61, v46, 16, 1
	v_cmp_o_f32_e64 s10, v46, v46
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v52, v124, v171
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_cmp_o_f32_e64 s11, v58, v58
	v_dual_mov_b32 v150, v40 :: v_dual_sub_f32 v53, v118, v173
	v_add3_u32 v46, v46, v61, 0x7fff
	v_bfe_u32 v61, v58, 16, 1
	v_cmp_o_f32_e64 s12, v52, v52
	v_cmp_o_f32_e64 s13, v56, v56
	v_mov_b32_e32 v189, v38
	v_dual_mov_b32 v96, v214 :: v_dual_sub_f32 v43, v116, v143
	v_add3_u32 v58, v58, v61, 0x7fff
	v_bfe_u32 v61, v52, 16, 1
	v_dual_mov_b32 v94, v210 :: v_dual_sub_f32 v45, v128, v167
	.loc	1 732 35                        ; attention_backward.py:732:35
	v_sub_f32_e32 v42, v114, v139
	v_sub_f32_e32 v44, v126, v163
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 732 34                        ; attention_backward.py:732:34
	v_add3_u32 v61, v52, v61, 0x7fff
	v_bfe_u32 v52, v56, 16, 1
	v_bfe_u32 v57, v43, 16, 1
	v_bfe_u32 v55, v42, 16, 1
	v_bfe_u32 v59, v44, 16, 1
	v_bfe_u32 v60, v45, 16, 1
	v_add3_u32 v56, v56, v52, 0x7fff
	v_bfe_u32 v52, v53, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_add3_u32 v42, v42, v55, 0x7fff
	v_bfe_u32 v55, v115, 16, 1
	v_cmp_o_f32_e64 s3, v43, v43
	v_add3_u32 v62, v53, v52, 0x7fff
	v_bfe_u32 v52, v54, 16, 1
	v_add3_u32 v43, v43, v57, 0x7fff
	v_bfe_u32 v57, v117, 16, 1
	v_cmp_o_f32_e64 s6, v44, v44
	v_add3_u32 v44, v44, v59, 0x7fff
	v_add3_u32 v63, v54, v52, 0x7fff
	v_bfe_u32 v52, v51, 16, 1
	v_bfe_u32 v59, v121, 16, 1
	v_cmp_o_f32_e64 s8, v45, v45
	v_add3_u32 v45, v45, v60, 0x7fff
	v_bfe_u32 v60, v119, 16, 1
	v_cmp_o_f32_e64 s16, v51, v51
	v_add3_u32 v64, v51, v52, 0x7fff
	v_bfe_u32 v51, v41, 16, 1
	v_cmp_o_f32_e64 s1, v115, v115
	v_add3_u32 v55, v115, v55, 0x7fff
	v_cmp_o_f32_e64 s5, v117, v117
	v_add3_u32 v57, v117, v57, 0x7fff
	v_cmp_o_f32_e64 s7, v121, v121
	v_add3_u32 v59, v121, v59, 0x7fff
	v_cmp_o_f32_e64 s9, v119, v119
	v_add3_u32 v60, v119, v60, 0x7fff
	v_cmp_o_f32_e64 s14, v53, v53
	v_cmp_o_f32_e64 s15, v54, v54
	v_cmp_o_f32_e64 s17, v41, v41
	v_add3_u32 v41, v41, v51, 0x7fff
	v_cndmask_b16 v51.l, 0x7fff, v42.h, vcc_lo
	v_cndmask_b16 v51.h, 0x7fff, v55.h, s1
	v_cndmask_b16 v52.l, 0x7fff, v43.h, s3
	v_cndmask_b16 v52.h, 0x7fff, v57.h, s5
	v_cndmask_b16 v53.l, 0x7fff, v44.h, s6
	v_cndmask_b16 v53.h, 0x7fff, v59.h, s7
	v_cndmask_b16 v54.l, 0x7fff, v45.h, s8
	v_cndmask_b16 v54.h, 0x7fff, v60.h, s9
	v_cndmask_b16 v55.l, 0x7fff, v46.h, s10
	v_cndmask_b16 v55.h, 0x7fff, v58.h, s11
	v_cndmask_b16 v56.l, 0x7fff, v61.h, s12
	v_cndmask_b16 v56.h, 0x7fff, v56.h, s13
	v_cndmask_b16 v57.l, 0x7fff, v62.h, s14
	v_cndmask_b16 v57.h, 0x7fff, v63.h, s15
	v_cndmask_b16 v58.l, 0x7fff, v64.h, s16
	v_cndmask_b16 v58.h, 0x7fff, v41.h, s17
	s_clause 0x3                            ; 40-byte Folded Reload
	scratch_load_b128 v[81:84], off, off offset:444
	scratch_load_b128 v[85:88], off, off offset:460
	scratch_load_b32 v34, off, off offset:328
	scratch_load_b32 v38, off, off offset:316
	v_dual_mov_b32 v133, v47 :: v_dual_mov_b32 v152, v48
	s_clause 0x1f                           ; 156-byte Folded Reload
	scratch_load_b32 v146, off, off offset:408
	scratch_load_b32 v131, off, off offset:376
	scratch_load_b32 v48, off, off offset:396
	scratch_load_b128 v[73:76], off, off offset:412
	scratch_load_b128 v[77:80], off, off offset:428
	scratch_load_b32 v140, off, off offset:344
	scratch_load_b32 v130, off, off offset:324
	scratch_load_b32 v47, off, off offset:320
	scratch_load_b32 v39, off, off offset:312
	scratch_load_b32 v45, off, off offset:300
	scratch_load_b32 v40, off, off offset:296
	scratch_load_b32 v132, off, off offset:292
	scratch_load_b32 v89, off, off offset:544
	scratch_load_b32 v137, off, off offset:400
	scratch_load_b32 v145, off, off offset:384
	scratch_load_b32 v153, off, off offset:388
	scratch_load_b32 v59, off, off offset:540
	scratch_load_b32 v141, off, off offset:392
	scratch_load_b32 v148, off, off offset:404
	scratch_load_b32 v135, off, off offset:368
	scratch_load_b64 v[155:156], off, off
	scratch_load_b32 v115, off, off offset:284
	scratch_load_b32 v46, off, off offset:304
	scratch_load_b32 v151, off, off offset:380
	scratch_load_b32 v149, off, off offset:372
	scratch_load_b32 v142, off, off offset:360
	scratch_load_b32 v138, off, off offset:352
	scratch_load_b32 v134, off, off offset:340
	scratch_load_b32 v143, off, off offset:348
	scratch_load_b32 v136, off, off offset:336
	scratch_load_b32 v60, off, off offset:308
	scratch_load_b32 v147, off, off offset:364
	s_clause 0x6                            ; 76-byte Folded Reload
	scratch_load_b32 v144, off, off offset:356
	scratch_load_b32 v139, off, off offset:332
	scratch_load_b32 v114, off, off offset:288
	scratch_load_b128 v[159:162], off, off offset:476
	scratch_load_b128 v[163:166], off, off offset:492
	scratch_load_b128 v[167:170], off, off offset:508
	scratch_load_b128 v[171:174], off, off offset:524
	.loc	1 745 35 is_stmt 1              ; attention_backward.py:745:35
	v_wmma_f32_16x16x16_bf16 v[9:16], v[51:58], v[97:104], v[9:16]
	scratch_load_b64 v[55:56], off, off offset:8 ; 8-byte Folded Reload
	.loc	1 607 13                        ; attention_backward.py:607:13
	s_cbranch_scc1 .LBB0_4
; %bb.5:                                ; %Flow
                                        ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention_backward.py:0:13
	s_clause 0x1f                           ; 188-byte Folded Reload
	scratch_load_b32 v107, off, off offset:272
	scratch_load_b32 v108, off, off offset:276
	scratch_load_b32 v109, off, off offset:260
	scratch_load_b32 v110, off, off offset:280
	scratch_load_b32 v111, off, off offset:264
	scratch_load_b32 v112, off, off offset:268
	scratch_load_b32 v113, off, off offset:252
	scratch_load_b32 v116, off, off offset:256
	scratch_load_b32 v117, off, off offset:244
	scratch_load_b32 v118, off, off offset:248
	scratch_load_b32 v119, off, off offset:236
	scratch_load_b32 v120, off, off offset:240
	scratch_load_b32 v121, off, off offset:228
	scratch_load_b32 v122, off, off offset:232
	scratch_load_b32 v123, off, off offset:220
	scratch_load_b32 v124, off, off offset:224
	scratch_load_b32 v125, off, off offset:212
	scratch_load_b32 v126, off, off offset:216
	scratch_load_b32 v127, off, off offset:204
	scratch_load_b32 v128, off, off offset:208
	scratch_load_b32 v53, off, off offset:196
	scratch_load_b32 v54, off, off offset:200
	scratch_load_b32 v61, off, off offset:188
	scratch_load_b32 v62, off, off offset:192
	scratch_load_b32 v63, off, off offset:180
	scratch_load_b32 v64, off, off offset:184
	scratch_load_b32 v158, off, off offset:28
	scratch_load_b128 v[65:68], off, off offset:148
	scratch_load_b128 v[69:72], off, off offset:164
	scratch_load_b128 v[97:100], off, off offset:84
	scratch_load_b128 v[101:104], off, off offset:100
	scratch_load_b128 v[175:178], off, off offset:116
	s_clause 0xa                            ; 80-byte Folded Reload
	scratch_load_b128 v[179:182], off, off offset:132
	scratch_load_b128 v[190:193], off, off offset:48
	scratch_load_b128 v[194:197], off, off offset:64
	scratch_load_b32 v41, off, off offset:80
	scratch_load_b32 v42, off, off offset:40
	scratch_load_b32 v43, off, off offset:44
	scratch_load_b32 v44, off, off offset:36
	scratch_load_b32 v49, off, off offset:16
	scratch_load_b32 v51, off, off offset:32
	scratch_load_b32 v52, off, off offset:24
	scratch_load_b32 v56, off, off offset:20
	s_branch .LBB0_1
.LBB0_6:
	.loc	1 580 44 is_stmt 1              ; attention_backward.py:580:44
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v64, off, off offset:548
	scratch_load_b32 v33, off, off offset:552
	scratch_load_b32 v34, off, off offset:556
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_and_b32 s5, s51, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s50
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_and_b32 s53, s53, 0xffff
	.loc	1 753 13                        ; attention_backward.py:753:13
	s_waitcnt vmcnt(2)
	v_mul_lo_u32 v43, s54, v64
	.loc	1 580 44                        ; attention_backward.py:580:44
	s_waitcnt vmcnt(0)
	v_or_b32_e32 v33, v33, v34
	.loc	1 514 23                        ; attention_backward.py:514:23
	v_or_b32_e32 v0, s70, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v47, 2, v33
	.loc	1 517 21                        ; attention_backward.py:517:21
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v0
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v49, v43, v33
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s2, s54, v33
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v46, 6, v33
	v_or_b32_e32 v48, 4, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v50, v43, v47
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v49, v49, s68, 2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v45, 8, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v51, v43, v48
	v_add_nc_u32_e32 v52, v43, v46
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v49, 0x80000000, v49, s2
	v_add_lshl_u32 v50, v50, s68, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v44, 10, v33
	v_or_b32_e32 v41, 14, v33
	v_or_b32_e32 v42, 12, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v53, v43, v45
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v51, v51, s68, 2
	buffer_store_b32 v25, v49, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v50, s2
	v_add_lshl_u32 v49, v52, s68, 2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v54, v43, v44
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v0, 32, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v55, v43, v42
	v_add_nc_u32_e32 v56, v43, v41
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v50, 0x80000000, v51, s2
	v_add_lshl_u32 v51, v53, s68, 2
	buffer_store_b32 v26, v25, s[4:7], 0 offen
	v_cndmask_b32_e64 v25, 0x80000000, v49, s2
	v_add_lshl_u32 v52, v54, s68, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v40, 34, v33
	v_cmp_gt_i32_e64 s0, s55, v33
	v_cmp_gt_i32_e64 s1, s55, v0
	v_or_b32_e32 v39, 36, v33
	.loc	1 755 40                        ; attention_backward.py:755:40
	v_cmp_gt_i32_e64 s3, s54, v0
	.loc	1 752 9                         ; attention_backward.py:752:9
	buffer_store_b32 v27, v50, s[4:7], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v51, s2
	v_add_lshl_u32 v49, v55, s68, 2
	buffer_store_b32 v28, v25, s[4:7], 0 offen
	v_add_lshl_u32 v25, v56, s68, 2
	v_cndmask_b32_e64 v27, 0x80000000, v52, s2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v57, v43, v0
	v_add_nc_u32_e32 v58, v43, v40
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v29, v26, s[4:7], 0 offen
	buffer_store_b32 v30, v27, s[4:7], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v49, s2
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 755 18                        ; attention_backward.py:755:18
	s_and_b32 s2, vcc_lo, s3
	.loc	1 580 22                        ; attention_backward.py:580:22
	s_and_b32 s0, vcc_lo, s0
	s_and_b32 vcc_lo, vcc_lo, s1
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v59, v43, v39
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v38, 38, v33
	v_or_b32_e32 v37, 40, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v27, v57, s68, 2
	v_add_lshl_u32 v28, v58, s68, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v36, 42, v33
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v29, v59, s68, 2
	.loc	1 580 44                        ; attention_backward.py:580:44
	v_or_b32_e32 v35, 44, v33
	v_or_b32_e32 v34, 46, v33
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v60, v43, v38
	v_add_nc_u32_e32 v61, v43, v37
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	buffer_store_b32 v31, v26, s[4:7], 0 offen
	v_cndmask_b32_e64 v26, 0x80000000, v28, s2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v62, v43, v36
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_cndmask_b32_e64 v28, 0x80000000, v29, s2
	.loc	1 753 13                        ; attention_backward.py:753:13
	v_add_nc_u32_e32 v63, v43, v35
	v_add_nc_u32_e32 v43, v43, v34
	.loc	1 752 9                         ; attention_backward.py:752:9
	s_clause 0x1
	buffer_store_b32 v32, v25, s[4:7], 0 offen
	buffer_store_b32 v17, v27, s[4:7], 0 offen
	v_add_lshl_u32 v17, v60, s68, 2
	s_clause 0x1
	buffer_store_b32 v18, v26, s[4:7], 0 offen
	buffer_store_b32 v19, v28, s[4:7], 0 offen
	v_add_lshl_u32 v18, v61, s68, 2
	v_add_lshl_u32 v19, v62, s68, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_mul_lo_u32 v27, s55, v64
	.loc	1 752 9                         ; attention_backward.py:752:9
	v_add_lshl_u32 v25, v63, s68, 2
	v_add_lshl_u32 v26, v43, s68, 2
	v_cndmask_b32_e64 v17, 0x80000000, v17, s2
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
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v17, v27, v33
	v_add_nc_u32_e32 v18, v27, v47
	v_add_nc_u32_e32 v19, v27, v48
	v_add_nc_u32_e32 v20, v27, v46
	v_add_nc_u32_e32 v21, v27, v45
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_add_lshl_u32 v17, v17, s35, 2
	v_add_lshl_u32 v18, v18, s35, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v22, v27, v44
	.loc	1 758 9                         ; attention_backward.py:758:9
	s_mov_b32 s54, s6
	s_mov_b32 s55, s7
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v23, v27, v42
	v_add_nc_u32_e32 v24, v27, v41
	v_add_nc_u32_e32 v0, v27, v0
	v_add_nc_u32_e32 v25, v27, v40
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v1, v17, s[52:55], 0 offen
	v_add_lshl_u32 v1, v19, s35, 2
	v_cndmask_b32_e64 v17, 0x80000000, v18, s0
	v_add_lshl_u32 v18, v20, s35, 2
	v_add_lshl_u32 v19, v21, s35, 2
	v_add_lshl_u32 v20, v22, s35, 2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	buffer_store_b32 v2, v17, s[52:55], 0 offen
	v_cndmask_b32_e64 v2, 0x80000000, v18, s0
	v_cndmask_b32_e64 v17, 0x80000000, v19, s0
	v_cndmask_b32_e64 v18, 0x80000000, v20, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v26, v27, v39
	.loc	1 758 9                         ; attention_backward.py:758:9
	buffer_store_b32 v3, v1, s[52:55], 0 offen
	v_add_lshl_u32 v1, v23, s35, 2
	s_clause 0x2
	buffer_store_b32 v4, v2, s[52:55], 0 offen
	buffer_store_b32 v5, v17, s[52:55], 0 offen
	buffer_store_b32 v6, v18, s[52:55], 0 offen
	v_add_lshl_u32 v2, v24, s35, 2
	v_add_lshl_u32 v0, v0, s35, 2
	v_add_lshl_u32 v3, v25, s35, 2
	v_add_lshl_u32 v4, v26, s35, 2
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v28, v27, v38
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v29, v27, v37
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	.loc	1 759 13                        ; attention_backward.py:759:13
	v_add_nc_u32_e32 v30, v27, v36
	.loc	1 758 9                         ; attention_backward.py:758:9
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_add_nc_u32 v31, v27, v35
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_dual_cndmask_b32 v4, 0x80000000, v4 :: v_dual_add_nc_u32 v27, v27, v34
	s_clause 0x4
	buffer_store_b32 v7, v1, s[52:55], 0 offen
	buffer_store_b32 v8, v2, s[52:55], 0 offen
	buffer_store_b32 v9, v0, s[52:55], 0 offen
	buffer_store_b32 v10, v3, s[52:55], 0 offen
	buffer_store_b32 v11, v4, s[52:55], 0 offen
	v_add_lshl_u32 v0, v28, s35, 2
	v_add_lshl_u32 v1, v29, s35, 2
	v_add_lshl_u32 v2, v30, s35, 2
	v_add_lshl_u32 v3, v31, s35, 2
	v_add_lshl_u32 v4, v27, s35, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b32 v12, v0, s[52:55], 0 offen
	buffer_store_b32 v13, v1, s[52:55], 0 offen
	buffer_store_b32 v14, v2, s[52:55], 0 offen
	buffer_store_b32 v15, v3, s[52:55], 0 offen
	buffer_store_b32 v16, v4, s[52:55], 0 offen
	.loc	1 451 5                         ; attention_backward.py:451:5
	s_endpgm
.Ltmp1:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 564
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
		.amdhsa_next_free_sgpr 79
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
	.size	amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.numbered_sgpr, 79
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.private_seg_size, 564
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18220
; TotalNumSgprs: 81
; NumVgprs: 256
; ScratchSize: 564
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 81
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
    .name:           amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1
    .private_segment_fixed_size: 564
    .sgpr_count:     81
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_bwd_dkv_bf16xbf16_none_local_outfloat32_doutfloat32_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_dqm32_dqn16_dqw2_dqs1_dkvm32_dkvn16_dkvw2_dkvs1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 140
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
