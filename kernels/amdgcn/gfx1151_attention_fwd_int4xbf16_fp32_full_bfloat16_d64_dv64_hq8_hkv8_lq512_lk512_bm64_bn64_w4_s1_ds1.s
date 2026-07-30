	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[84:87], s[0:1], 0x60
	s_load_b64 s[4:5], s[0:1], 0x70
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v39, 1, v0
	s_load_b256 s[68:75], s[0:1], 0x0
	v_dual_mov_b32 v42, 0x7632 :: v_dual_and_b32 v1, 1, v0
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s6, s2, 6
	.loc	1 583 26                        ; attention.py:583:26
	s_lshl_b32 s7, s3, 9
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v2, s6, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v178, 0xff800000 :: v_dual_lshlrev_b32 v37, 4, v1
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s8, s6, s7
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v40, 0x60, v0
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, 0x200, v2
	s_mov_b32 s95, 0x31027000
	s_mov_b32 s94, 0x7ffffffe
	v_dual_mov_b32 v41, 0x5410 :: v_dual_and_b32 v122, 15, v0
	v_dual_mov_b32 v19, v17 :: v_dual_and_b32 v44, 7, v0
	.loc	1 584 26                        ; attention.py:584:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v3, s84, v39
	s_mul_i32 s9, s84, s8
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e32 vcc_lo, s84, v37
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s93, s69, 0xffff
	s_mov_b32 s92, s68
	v_dual_mov_b32 v23, v17 :: v_dual_and_b32 v50, 12, v0
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 s2, s2, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 584 26                        ; attention.py:584:26
	v_add3_u32 v1, v3, v37, s9
	.loc	1 570 31                        ; attention.py:570:31
	v_bfe_u32 v46, v0, 4, 1
	v_dual_mov_b32 v21, v17 :: v_dual_lshlrev_b32 v48, 1, v0
	v_dual_mov_b32 v20, v17 :: v_dual_lshlrev_b32 v127, 4, v0
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v22, v17 :: v_dual_and_b32 v49, 24, v0
	v_dual_mov_b32 v30, v17 :: v_dual_lshlrev_b32 v63, 2, v40
	buffer_load_b128 v[33:36], v1, s[92:95], 0 offen
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v1, 1, v40
	.loc	1 590 31                        ; attention.py:590:31
	s_and_b32 s93, s75, 0xffff
	s_mov_b32 s92, s74
	v_dual_mov_b32 v11, v17 :: v_dual_lshlrev_b32 v62, 1, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v1, v1, v122
	v_dual_mov_b32 v13, v17 :: v_dual_lshlrev_b32 v130, 4, v44
	v_lshrrev_b32_e32 v43, 3, v0
	v_dual_mov_b32 v18, v17 :: v_dual_and_b32 v121, 16, v0
	.loc	1 591 17                        ; attention.py:591:17
	v_or_b32_e32 v118, s8, v1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s6, v1
	v_dual_mov_b32 v177, 0xff800000 :: v_dual_lshlrev_b32 v126, 2, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v25, v17 :: v_dual_lshlrev_b32 v2, 1, v118
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, 0x200, v1
	v_bfe_i32 v55, v0, 2, 1
	v_bfe_i32 v58, v0, 5, 1
	.loc	1 570 31                        ; attention.py:570:31
	v_bfe_i32 v45, v0, 4, 1
	v_dual_mov_b32 v24, v17 :: v_dual_and_b32 v51, 3, v0
	.loc	1 590 31                        ; attention.py:590:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_dual_mov_b32 v15, v17 :: v_dual_lshlrev_b32 v50, 5, v50
	.loc	1 585 26                        ; attention.py:585:26
	v_and_or_b32 v61, v48, 30, v46
	v_xor_b32_e32 v129, v127, v49
	.loc	1 590 31                        ; attention.py:590:31
	buffer_load_u16 v38, v1, s[92:95], 0 offen
	v_lshl_or_b32 v133, v122, 5, v62
	v_lshl_or_b32 v62, v49, 8, v130
	v_lshl_or_b32 v49, v49, 1, v63
	.loc	1 584 86                        ; attention.py:584:86
	v_bfe_i32 v47, v0, 0, 1
	v_dual_mov_b32 v26, v17 :: v_dual_lshlrev_b32 v53, 3, v0
	v_dual_mov_b32 v31, v17 :: v_dual_and_b32 v56, 8, v0
	v_bfe_i32 v57, v0, 3, 1
	v_dual_mov_b32 v10, v17 :: v_dual_and_b32 v65, 0x7c, v126
	v_dual_mov_b32 v16, v17 :: v_dual_and_b32 v55, 0x2040, v55
	v_dual_mov_b32 v3, v17 :: v_dual_lshlrev_b32 v68, 6, v121
	v_dual_mov_b32 v5, v17 :: v_dual_and_b32 v58, 0x2040, v58
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v60, s6, v43
	s_clause 0x1
	s_load_b64 s[96:97], s[0:1], 0x20
	s_load_b128 s[88:91], s[0:1], 0x30
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v28, v17 :: v_dual_lshlrev_b32 v59, 3, v44
	v_dual_mov_b32 v32, v17 :: v_dual_and_b32 v45, 0x2040, v45
	v_dual_mov_b32 v1, v17 :: v_dual_and_b32 v64, 0x630, v127
	v_dual_mov_b32 v2, v17 :: v_dual_lshlrev_b32 v131, 5, v44
	v_dual_mov_b32 v115, v17 :: v_dual_lshlrev_b32 v44, 1, v46
	v_dual_mov_b32 v117, v17 :: v_dual_lshlrev_b32 v46, 2, v61
	.loc	1 629 13                        ; attention.py:629:13
	v_or_b32_e32 v39, s7, v39
	v_lshl_or_b32 v50, v51, 11, v50
	v_xor_b32_e32 v135, v62, v49
	.loc	1 566 23                        ; attention.py:566:23
	s_lshr_b32 s0, s0, 29
	v_dual_mov_b32 v14, v17 :: v_dual_and_b32 v53, 0x310, v53
	v_lshrrev_b32_e32 v66, 3, v40
	.loc	1 629 13                        ; attention.py:629:13
	v_or_b32_e32 v43, s7, v43
	v_lshl_or_b32 v40, v40, 4, v65
	v_and_or_b32 v47, 0x1020, v47, v55
	v_lshl_or_b32 v55, v56, 4, v68
	v_and_or_b32 v56, 0x1020, v57, v58
	v_or_b32_e32 v57, 48, v60
	v_or_b32_e32 v58, 32, v60
	v_or_b32_e32 v65, 16, v60
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s0, s3, s0
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v70, 4, v46
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s1, s0, 0x3ffffff8
	v_or3_b32 v136, v64, v45, v50
	s_sub_i32 s8, s3, s1
	.loc	1 629 13                        ; attention.py:629:13
	v_lshl_or_b32 v134, s3, 10, v44
	v_or_b32_e32 v44, 48, v43
	v_or3_b32 v139, v47, v55, v53
	v_mul_lo_u32 v45, s5, v57
	v_mul_lo_u32 v47, s5, v58
	v_mul_lo_u32 v49, s5, v65
	v_mul_lo_u32 v50, s5, v60
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s0, 3
	.loc	1 629 13                        ; attention.py:629:13
	s_mul_i32 s4, s4, s8
	v_dual_mov_b32 v29, v17 :: v_dual_and_b32 v54, 4, v0
	v_dual_mov_b32 v12, v17 :: v_dual_lshlrev_b32 v67, 5, v51
	s_mul_i32 s0, s0, s87
	s_lshl_b32 s4, s4, 2
	v_or_b32_e32 v68, 32, v43
	v_or_b32_e32 v69, 16, v43
	v_mul_lo_u32 v44, s85, v44
	v_mul_lo_u32 v43, s85, v43
	s_lshl2_add_u32 s0, s0, s4
	v_dual_mov_b32 v7, v17 :: v_dual_and_b32 v48, 0x80, v48
	v_lshl_add_u32 v54, v54, 9, 0
	v_xor_b32_e32 v137, v40, v66
	v_xor_b32_e32 v40, v56, v67
	v_lshl_add_u32 v144, v45, 2, s0
	v_lshl_add_u32 v145, v47, 2, s0
	v_lshl_add_u32 v146, v49, 2, s0
	v_lshl_add_u32 v147, v50, 2, s0
	.loc	1 585 26                        ; attention.py:585:26
	v_cmp_eq_u32_e64 s0, 0, v121
	v_dual_mov_b32 v27, v17 :: v_dual_and_b32 v52, 28, v0
	v_dual_mov_b32 v114, v17 :: v_dual_lshlrev_b32 v151, 1, v43
	v_add3_u32 v40, v54, v48, v40
	.loc	1 629 13                        ; attention.py:629:13
	v_lshlrev_b32_e32 v148, 1, v44
	v_cndmask_b32_e64 v41, 0x1054, v41, s0
	v_cndmask_b32_e64 v42, 0x3276, v42, s0
	v_lshl_or_b32 v51, v52, 7, v67
	v_add_nc_u32_e32 v171, v40, v121
	v_xor_b32_e32 v61, 8, v129
	v_lshl_or_b32 v40, v41, 8, v41
	v_lshl_or_b32 v41, v42, 8, v42
	v_or3_b32 v138, v51, v63, v52
	v_mul_lo_u32 v51, s85, v68
	v_mul_lo_u32 v52, s85, v69
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s1, 0x200, v60
	v_xor_b32_e32 v71, 8, v133
	v_xor_b32_e32 v72, 16, v133
	v_xor_b32_e32 v73, 24, v133
	v_dual_mov_b32 v173, 0xff800000 :: v_dual_add_nc_u32 v140, 0, v61
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s3, s85, v59
	v_xor_b32_e32 v53, 32, v136
	v_xor_b32_e32 v55, 48, v136
	v_xor_b32_e32 v56, 64, v136
	v_xor_b32_e32 v57, 0x50, v136
	v_xor_b32_e32 v58, 0x60, v136
	v_xor_b32_e32 v59, 0x70, v136
	v_xor_b32_e32 v60, 0x810, v137
	v_xor_b32_e32 v61, 4, v138
	v_xor_b32_e32 v62, 8, v138
	v_xor_b32_e32 v63, 12, v138
	v_xor_b32_e32 v64, 16, v138
	v_xor_b32_e32 v65, 20, v138
	v_xor_b32_e32 v48, 24, v138
	v_xor_b32_e32 v54, 28, v138
	v_xor_b32_e32 v66, 32, v139
	v_xor_b32_e32 v67, 64, v139
	v_xor_b32_e32 v68, 0x60, v139
	v_dual_mov_b32 v176, 0xff800000 :: v_dual_mov_b32 v175, 0xff800000
	v_dual_mov_b32 v174, 0xff800000 :: v_dual_mov_b32 v123, 0xff800000
	v_dual_mov_b32 v124, 0xff800000 :: v_dual_mov_b32 v125, 0xff800000
	v_dual_mov_b32 v9, v17 :: v_dual_and_b32 v128, 0x78, v0
	v_dual_mov_b32 v4, v17 :: v_dual_add_nc_u32 v141, 0, v71
	v_dual_mov_b32 v6, v17 :: v_dual_add_nc_u32 v143, 0, v73
	v_dual_mov_b32 v8, v17 :: v_dual_lshlrev_b32 v149, 1, v51
	v_lshl_add_u32 v132, v122, 1, 0
	v_add_nc_u32_e32 v142, 0, v72
	.loc	1 629 13                        ; attention.py:629:13
	v_lshlrev_b32_e32 v150, 1, v52
	v_add_nc_u32_e32 v154, 0, v53
	v_add_nc_u32_e32 v155, 0, v55
	v_add_nc_u32_e32 v156, 0, v56
	v_add_nc_u32_e32 v157, 0, v57
	v_add_nc_u32_e32 v158, 0, v58
	v_add_nc_u32_e32 v159, 0, v59
	v_add_nc_u32_e32 v160, 0, v60
	v_add_nc_u32_e32 v161, 0, v61
	v_add_nc_u32_e32 v162, 0, v62
	v_add_nc_u32_e32 v163, 0, v63
	v_add_nc_u32_e32 v164, 0, v64
	v_add_nc_u32_e32 v165, 0, v65
	v_add_nc_u32_e32 v166, 0, v48
	v_add_nc_u32_e32 v167, 0, v54
	v_add_nc_u32_e32 v168, 0, v66
	v_add_nc_u32_e32 v169, 0, v67
	v_add_nc_u32_e32 v170, 0, v68
	s_mov_b32 s76, 0
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s86, s86, 0x3fb8aa3b
	s_and_b32 s71, s71, 0xffff
	s_waitcnt lgkmcnt(0)
	s_and_b32 s89, s89, 0xffff
	s_movk_i32 s69, 0xffc0
	s_mov_b32 s104, 0x76543210
	s_mov_b32 s77, s76
	s_mov_b32 s78, s76
	s_mov_b32 s79, s76
	s_mov_b32 s80, s76
	s_mov_b32 s81, s76
	s_mov_b32 s82, s76
	s_mov_b32 s83, s76
	s_mov_b32 s98, s94
	s_mov_b32 s99, s95
	s_mov_b32 s102, s94
	s_mov_b32 s103, s95
	s_and_b32 s97, s97, 0xffff
	s_and_b32 s73, s73, 0xffff
	.loc	1 629 13                        ; attention.py:629:13
	s_lshl_b32 s87, s85, 7
	s_mov_b32 s100, s88
	s_mov_b32 s101, s89
	s_mov_b32 s74, s94
	s_mov_b32 s75, s95
	s_mov_b32 s92, s70
	s_mov_b32 s93, s71
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v43, v46, v35
	ds_bpermute_b32 v35, v70, v35
	ds_bpermute_b32 v44, v46, v36
	ds_bpermute_b32 v36, v70, v36
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v110, v35, v43, s0
	v_cndmask_b32_e64 v112, v43, v35, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v111, v36, v44, s0
	v_cndmask_b32_e64 v113, v44, v36, s0
	.loc	1 629 13                        ; attention.py:629:13
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[105:106], null, s84, v39, v[37:38]
	v_xor_b32_e32 v37, 0x2040, v135
	v_xor_b32_e32 v39, 16, v136
	v_mov_b32_e32 v116, v17
	.loc	1 590 31                        ; attention.py:590:31
	v_lshlrev_b32_e32 v172, 16, v38
	.loc	1 629 13                        ; attention.py:629:13
	s_lshl_b32 s84, s84, 6
	v_add_nc_u32_e32 v152, 0, v37
	.loc	1 585 26                        ; attention.py:585:26
	ds_bpermute_b32 v37, v46, v33
	ds_bpermute_b32 v33, v70, v33
	v_add_nc_u32_e32 v153, 0, v39
	ds_bpermute_b32 v39, v46, v34
	ds_bpermute_b32 v34, v70, v34
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v106, v33, v37, s0
	v_cndmask_b32_e64 v108, v37, v33, s0
	v_and_b32_e32 v33, 0x540054, v40
	v_and_b32_e32 v37, 0x760076, v41
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v107, v34, v39, s0
	v_cndmask_b32_e64 v109, v39, v34, s0
	v_lshl_or_b32 v33, v33, 4, v33
	v_lshl_or_b32 v34, v37, 4, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v119, 0x5040504, v33
	v_and_b32_e32 v120, 0x7060706, v34
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 634 32                        ; attention.py:634:32
	v_dual_cndmask_b32 v41, 0x80000000, v105 :: v_dual_add_nc_u32 v46, v131, v147
	.loc	1 683 36                        ; attention.py:683:36
	v_add_nc_u32_e32 v47, v131, v146
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v33, s76 :: v_dual_mov_b32 v38, s81
	.loc	1 634 32                        ; attention.py:634:32
	buffer_load_b128 v[41:44], v41, s[92:95], 0 offen
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v37, s80 :: v_dual_add_nc_u32 v48, v131, v145
	v_dual_mov_b32 v39, s82 :: v_dual_add_nc_u32 v50, v131, v144
	.loc	1 683 36                        ; attention.py:683:36
	v_add_nc_u32_e32 v51, 16, v46
	v_add_nc_u32_e32 v52, 16, v47
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v34, s77 :: v_dual_add_nc_u32 v45, 0, v129
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v46, 0x80000000, v46, s1
	v_add_nc_u32_e32 v53, 16, v48
	v_add_nc_u32_e32 v54, 16, v50
	v_cndmask_b32_e64 v51, 0x80000000, v51, s1
	v_cndmask_b32_e64 v47, 0x80000000, v47, s1
	v_cndmask_b32_e64 v52, 0x80000000, v52, s1
	v_cndmask_b32_e64 v48, 0x80000000, v48, s1
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v50, 0x80000000, v50, s1
	v_cndmask_b32_e64 v53, 0x80000000, v53, s1
	v_cndmask_b32_e64 v54, 0x80000000, v54, s1
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v36, s79 :: v_dual_add_nc_u32 v49, 0, v133
	v_dual_mov_b32 v35, s78 :: v_dual_mov_b32 v40, s83
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s69, s69, 64
	.loc	1 685 25                        ; attention.py:685:25
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v45, v[41:42]
	ds_store_b64 v140, v[43:44]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 683 36                        ; attention.py:683:36
	s_clause 0x7
	buffer_load_b128 v[41:44], v46, s[100:103], 0 offen
	buffer_load_b128 v[84:87], v51, s[100:103], 0 offen
	buffer_load_b128 v[88:91], v47, s[100:103], 0 offen
	buffer_load_b128 v[92:95], v52, s[100:103], 0 offen
	buffer_load_b128 v[96:99], v48, s[100:103], 0 offen
	buffer_load_b128 v[100:103], v53, s[100:103], 0 offen
	buffer_load_b128 v[179:182], v50, s[100:103], 0 offen
	buffer_load_b128 v[183:186], v54, s[100:103], 0 offen
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[45:48], v49 offset1:1
	ds_load_2addr_stride64_b64 v[187:190], v49 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[191:194], v141 offset1:1
	ds_load_2addr_stride64_b64 v[195:198], v141 offset0:2 offset1:3
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v144, 0x100, v144
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[52:59], v[45:46], v[106:107], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[60:67], v[47:48], v[106:107], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[68:75], v[187:188], v[106:107], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[76:83], v[189:190], v[106:107], v[33:40] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[33:36], v142 offset1:1
	ds_load_2addr_stride64_b64 v[37:40], v142 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[52:59], v[191:192], v[110:111], v[52:59] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[60:67], v[193:194], v[110:111], v[60:67] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[187:190], v143 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[68:75], v[195:196], v[110:111], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[76:83], v[197:198], v[110:111], v[76:83] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	s_clause 0x6
	buffer_load_u16 v45, v134, s[96:99], 0 offen
	buffer_load_u16 v46, v134, s[96:99], 0 offen offset:4
	buffer_load_u16 v47, v134, s[96:99], 0 offen offset:8
	buffer_load_u16 v48, v134, s[96:99], 0 offen offset:12
	buffer_load_u16 v49, v134, s[96:99], 0 offen offset:16
	buffer_load_u16 v50, v134, s[96:99], 0 offen offset:20
	buffer_load_u16 v51, v134, s[96:99], 0 offen offset:24
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[52:59], v[33:34], v[108:109], v[52:59] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[60:67], v[35:36], v[108:109], v[60:67] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[33:36], v143 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[68:75], v[37:38], v[108:109], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[76:83], v[39:40], v[108:109], v[76:83] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[52:59], v[187:188], v[112:113], v[52:59] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[60:67], v[189:190], v[112:113], v[60:67] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v58, v58
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v59, v59
	v_mul_f32_e32 v57, v172, v57
	v_mul_f32_e32 v58, v172, v58
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_mul_f32_e32 v65, v172, v65
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[68:75], v[33:34], v[112:113], v[68:75] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[76:83], v[35:36], v[112:113], v[76:83] neg_lo:[1,1,0]
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v54, v54
	v_mul_f32_e32 v53, v172, v53
	v_mul_f32_e32 v59, v172, v59
	v_cvt_f32_i32_e32 v73, v73
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v75
	v_cvt_f32_i32_e32 v76, v76
	v_cvt_f32_i32_e32 v79, v79
	v_cvt_f32_i32_e32 v80, v80
	v_cvt_f32_i32_e32 v83, v83
	v_cvt_f32_i32_e32 v71, v71
	v_mul_f32_e32 v61, v172, v61
	v_mul_f32_e32 v64, v172, v64
	v_mul_f32_e32 v66, v172, v66
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v78, v78
	v_cvt_f32_i32_e32 v81, v81
	v_cvt_f32_i32_e32 v82, v82
	v_mul_f32_e32 v54, v172, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v77, v77
	v_mul_f32_e32 v52, v172, v52
	v_mul_f32_e32 v56, v172, v56
	v_mul_f32_e32 v62, v172, v62
	v_mul_f32_e32 v68, v172, v68
	v_mul_f32_e32 v55, v172, v55
	v_mul_f32_e32 v63, v172, v63
	v_cvt_f32_i32_e32 v60, v60
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v60, v172, v60
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(14)
	v_cndmask_b32_e64 v187, 0xff800000, v42, s1
	s_waitcnt vmcnt(13)
	v_cndmask_b32_e64 v190, 0xff800000, v87, s1
	v_cndmask_b32_e64 v189, 0xff800000, v85, s1
	v_cndmask_b32_e64 v194, 0xff800000, v86, s1
	v_cndmask_b32_e64 v193, 0xff800000, v84, s1
	.loc	1 649 37                        ; attention.py:649:37
	s_clause 0x3
	buffer_load_u16 v84, v134, s[96:99], 0 offen offset:28
	buffer_load_u16 v85, v134, s[96:99], 0 offen offset:32
	buffer_load_u16 v86, v134, s[96:99], 0 offen offset:36
	buffer_load_u16 v87, v134, s[96:99], 0 offen offset:40
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v191, 0xff800000, v41, s1
	s_waitcnt vmcnt(16)
	v_cndmask_b32_e64 v196, 0xff800000, v91, s1
	v_cndmask_b32_e64 v195, 0xff800000, v89, s1
	v_cndmask_b32_e64 v200, 0xff800000, v90, s1
	v_cndmask_b32_e64 v199, 0xff800000, v88, s1
	s_waitcnt vmcnt(15)
	v_cndmask_b32_e64 v198, 0xff800000, v95, s1
	v_cndmask_b32_e64 v197, 0xff800000, v93, s1
	v_cndmask_b32_e64 v202, 0xff800000, v94, s1
	v_cndmask_b32_e64 v201, 0xff800000, v92, s1
	s_waitcnt vmcnt(14)
	v_cndmask_b32_e64 v34, 0xff800000, v99, s1
	v_cndmask_b32_e64 v33, 0xff800000, v97, s1
	v_cndmask_b32_e64 v204, 0xff800000, v98, s1
	v_cndmask_b32_e64 v203, 0xff800000, v96, s1
	s_waitcnt vmcnt(13)
	v_cndmask_b32_e64 v36, 0xff800000, v103, s1
	v_cndmask_b32_e64 v35, 0xff800000, v101, s1
	v_cndmask_b32_e64 v206, 0xff800000, v102, s1
	v_cndmask_b32_e64 v205, 0xff800000, v100, s1
	s_waitcnt vmcnt(12)
	v_cndmask_b32_e64 v38, 0xff800000, v182, s1
	v_cndmask_b32_e64 v37, 0xff800000, v180, s1
	v_cndmask_b32_e64 v42, 0xff800000, v181, s1
	v_cndmask_b32_e64 v41, 0xff800000, v179, s1
	.loc	1 649 37                        ; attention.py:649:37
	s_clause 0x14
	buffer_load_u16 v88, v134, s[96:99], 0 offen offset:44
	buffer_load_u16 v89, v134, s[96:99], 0 offen offset:48
	buffer_load_u16 v90, v134, s[96:99], 0 offen offset:52
	buffer_load_u16 v91, v134, s[96:99], 0 offen offset:56
	buffer_load_u16 v92, v134, s[96:99], 0 offen offset:60
	buffer_load_u16 v93, v134, s[96:99], 0 offen offset:64
	buffer_load_u16 v94, v134, s[96:99], 0 offen offset:68
	buffer_load_u16 v95, v134, s[96:99], 0 offen offset:72
	buffer_load_u16 v96, v134, s[96:99], 0 offen offset:76
	buffer_load_u16 v97, v134, s[96:99], 0 offen offset:80
	buffer_load_u16 v98, v134, s[96:99], 0 offen offset:84
	buffer_load_u16 v99, v134, s[96:99], 0 offen offset:88
	buffer_load_u16 v100, v134, s[96:99], 0 offen offset:92
	buffer_load_u16 v101, v134, s[96:99], 0 offen offset:96
	buffer_load_u16 v102, v134, s[96:99], 0 offen offset:100
	buffer_load_u16 v103, v134, s[96:99], 0 offen offset:104
	buffer_load_u16 v104, v134, s[96:99], 0 offen offset:108
	buffer_load_u16 v179, v134, s[96:99], 0 offen offset:112
	buffer_load_u16 v180, v134, s[96:99], 0 offen offset:116
	buffer_load_u16 v181, v134, s[96:99], 0 offen offset:120
	buffer_load_u16 v182, v134, s[96:99], 0 offen offset:124
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v188, 0xff800000, v44, s1
	v_cndmask_b32_e64 v192, 0xff800000, v43, s1
	s_waitcnt vmcnt(32)
	v_cndmask_b32_e64 v40, 0xff800000, v186, s1
	v_cndmask_b32_e64 v39, 0xff800000, v184, s1
	v_cndmask_b32_e64 v44, 0xff800000, v185, s1
	v_cndmask_b32_e64 v43, 0xff800000, v183, s1
	.loc	1 684 35                        ; attention.py:684:35
	v_add_nc_u32_e32 v184, 0, v135
	v_add_nc_u32_e32 v185, 0, v136
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v184, v[191:194]
	ds_store_b128 v184, v[199:202] offset:512
	ds_store_b128 v152, v[187:190]
	ds_store_b128 v152, v[195:198] offset:512
	ds_store_b128 v184, v[203:206] offset:1024
	ds_store_b128 v184, v[41:44] offset:1536
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s28, 0xff800000, v41
	v_cmp_neq_f32_e64 s29, 0xff800000, v42
	v_cmp_neq_f32_e64 s34, 0xff800000, v43
	v_cmp_neq_f32_e64 s35, 0xff800000, v44
	v_cmp_neq_f32_e64 s37, 0xff800000, v33
	v_cmp_neq_f32_e64 s38, 0xff800000, v34
	v_cmp_neq_f32_e64 s39, 0xff800000, v35
	v_cmp_neq_f32_e64 s40, 0xff800000, v36
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_b128 v152, v[33:36] offset:1024
	ds_store_b128 v152, v[37:40] offset:1536
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s41, 0xff800000, v37
	v_cmp_neq_f32_e64 s42, 0xff800000, v38
	v_cmp_neq_f32_e64 s43, 0xff800000, v39
	v_cmp_neq_f32_e64 s44, 0xff800000, v40
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v185
	ds_load_b128 v[37:40], v153
	ds_load_b128 v[41:44], v154
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v194
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v73, v172, v73
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s6, 0xff800000, v193
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v67, v172, v67 :: v_dual_add_nc_u32 v184, 0, v138
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s24, s1, s7
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v70, v172, v70
	v_mul_f32_e32 v74, v172, v74
	v_mul_f32_e32 v75, v172, v75
	v_mul_f32_e32 v76, v172, v76
	v_mul_f32_e32 v79, v172, v79
	v_mul_f32_e32 v80, v172, v80
	s_waitcnt vmcnt(30)
	v_dual_mul_f32 v83, v172, v83 :: v_dual_lshlrev_b32 v46, 16, v46
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v50, 16, v50
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v192
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s30, s1, s6
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v187
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_mul_f32_e32 v71, v172, v71
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v47, 16, v47
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v187, v53, v46
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v191
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s31, s1, s5
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s12, 0xff800000, v188
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_mul_f32_e32 v72, v172, v72
	v_mul_f32_e32 v78, v172, v78
	v_mul_f32_e32 v81, v172, v81
	v_dual_mul_f32 v82, v172, v82 :: v_dual_lshlrev_b32 v45, 16, v45
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v51, 16, v51
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v188, v54, v47
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s18, 0xff800000, v202
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s33, s1, s4
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s15, 0xff800000, v189
	v_cmp_neq_f32_e64 s16, 0xff800000, v190
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_mul_f32_e32 v69, v172, v69
	v_dual_mul_f32 v77, v172, v77 :: v_dual_lshlrev_b32 v186, 16, v48
	v_mul_f32_e32 v185, v52, v45
	.loc	1 684 35                        ; attention.py:684:35
	ds_load_b128 v[45:48], v155
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v189, v56, v49 :: v_dual_mul_f32 v190, v57, v50
	v_mul_f32_e32 v191, v58, v51
	.loc	1 684 35                        ; attention.py:684:35
	ds_load_b128 v[49:52], v156
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s10, 0xff800000, v201
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s18, s1, s18
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_mul_f32_e32 v186, v55, v186
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s9, 0xff800000, v200
	v_cmp_neq_f32_e64 s8, 0xff800000, v199
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s19, s1, s10
	v_add_nc_u32_e32 v183, 0, v137
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s27, 0xff800000, v206
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s25, s1, s9
	s_and_b32 s26, s1, s8
	.loc	1 684 35 is_stmt 1              ; attention.py:684:35
	ds_load_b128 v[53:56], v157
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s23, 0xff800000, v205
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s6, s1, s27
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s22, 0xff800000, v204
	v_cmp_neq_f32_e64 s20, 0xff800000, v203
	.loc	1 684 35 is_stmt 1              ; attention.py:684:35
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v47, 0x3fb8aa3b, v47
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s7, s1, s23
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s13, 0xff800000, v195
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s10, s1, s22
	.loc	1 684 35 is_stmt 1              ; attention.py:684:35
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v192, 0x3fb8aa3b, v52
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s20, s1, s20
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s14, 0xff800000, v196
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s4, s1, s35
	s_and_b32 s5, s1, s34
	s_and_b32 s8, s1, s29
	s_and_b32 s9, s1, s28
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s21, 0xff800000, v198
	.loc	1 684 35 is_stmt 1              ; attention.py:684:35
	v_mul_f32_e32 v43, 0x3fb8aa3b, v43
	v_mul_f32_e32 v45, 0x3fb8aa3b, v45
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s27, s1, s16
	s_and_b32 s34, s1, s15
	s_and_b32 s35, s1, s12
	s_and_b32 s36, s1, s11
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s17, 0xff800000, v197
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s21, s1, s21
	s_and_b32 s28, s1, s14
	s_and_b32 s29, s1, s13
	s_and_b32 s13, s1, s40
	s_and_b32 s22, s1, s17
	s_and_b32 s14, s1, s39
	s_and_b32 s17, s1, s38
	s_and_b32 s23, s1, s37
	s_and_b32 s11, s1, s44
	s_and_b32 s15, s1, s42
	s_and_b32 s12, s1, s43
	s_and_b32 s16, s1, s41
	.loc	1 684 35 is_stmt 1              ; attention.py:684:35
	v_dual_mul_f32 v39, 0x3fb8aa3b, v39 :: v_dual_mul_f32 v46, 0x3fb8aa3b, v46
	v_dual_mul_f32 v40, 0x3fb8aa3b, v40 :: v_dual_mul_f32 v41, 0x3fb8aa3b, v41
	v_mul_f32_e32 v48, 0x3fb8aa3b, v48
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v44, 0x3fb8aa3b, v44 :: v_dual_fmac_f32 v39, s86, v191
	.loc	1 629 13                        ; attention.py:629:13
	s_cmpk_lt_u32 s69, 0x1c0
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v84, 16, v84
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v85, 16, v85
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v86, 16, v86
	.loc	1 654 30                        ; attention.py:654:30
	s_waitcnt vmcnt(21)
	v_dual_mul_f32 v84, v59, v84 :: v_dual_lshlrev_b32 v87, 16, v87
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v89, 16, v89
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v90, 16, v90
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v91, 16, v91
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v92, 16, v92
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v89, v64, v89 :: v_dual_lshlrev_b32 v88, 16, v88
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v95, 16, v95
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v65, v65, v90
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v90, 0, 1, s24
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v96, 16, v96
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v66, v66, v91
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v100, 16, v100
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v101, 16, v101
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v91, 0, 1, s30
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v93, 16, v93
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v104, 16, v104
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v179, 16, v179
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v75, v75, v100 :: v_dual_mul_f32 v100, 0x3fb8aa3b, v33
	.loc	1 685 25                        ; attention.py:685:25
	v_mov_b16_e32 v33.l, v90.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v79, v79, v104
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v97, 16, v97
	v_lshlrev_b32_e32 v98, 16, v98
	v_lshlrev_b32_e32 v103, 16, v103
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v180, 16, v180
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v67, v67, v92 :: v_dual_mul_f32 v72, v72, v97
	v_dual_mul_f32 v71, v71, v96 :: v_dual_mul_f32 v76, v76, v101
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v92, 0, 1, s31
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v101, 0x3fb8aa3b, v34
	.loc	1 685 25                        ; attention.py:685:25
	v_mov_b16_e32 v34.l, v91.l
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v94, 16, v94
	v_lshlrev_b32_e32 v102, 16, v102
	.loc	1 654 30                        ; attention.py:654:30
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v87, v62, v87 :: v_dual_lshlrev_b32 v182, 16, v182
	v_dual_mul_f32 v68, v68, v93 :: v_dual_mul_f32 v73, v73, v98
	v_dual_mul_f32 v78, v78, v103 :: v_dual_mul_f32 v81, v81, v180
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v93, 0, 1, s33
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v103, 0x3fb8aa3b, v36 :: v_dual_mul_f32 v180, 0x3fb8aa3b, v42
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v42.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v92.l
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v99, 16, v99
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v69, v69, v94
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v94, 0, 1, s18
	v_mov_b16_e32 v34.l, v93.l
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v70, v70, v95
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v95, 0, 1, s19
	v_cndmask_b32_e64 v96, 0, 1, s25
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v85, v60, v85 :: v_dual_mul_f32 v88, v63, v88
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v42.l, v34.l, v33.l
	v_mov_b16_e32 v33.l, v94.l
	v_mov_b16_e32 v34.l, v95.l
	.loc	1 684 35                        ; attention.py:684:35
	ds_load_b128 v[57:60], v158
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v97, 0, 1, s26
	v_cndmask_b32_e64 v98, 0, 1, s6
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v74, v74, v99
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v99, 0, 1, s7
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v86, v61, v86 :: v_dual_lshlrev_b32 v181, 16, v181
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v52.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v96.l
	v_mov_b16_e32 v34.l, v97.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v77, v77, v102 :: v_dual_mul_f32 v82, v82, v181
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v102, 0x3fb8aa3b, v35
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v33.l, 8, v33.l
	v_cndmask_b32_e64 v35, 0, 1, s10
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v195, 0x3fb8aa3b, v56
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v36, 0, 1, s20
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v83, v83, v182 :: v_dual_mul_f32 v104, 0x3fb8aa3b, v37
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v52.l, v34.l, v33.l
	v_mov_b16_e32 v33.l, v98.l
	v_mov_b16_e32 v34.l, v99.l
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v196, 0x3fb8aa3b, v57
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v37, 0, 1, s4
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v80, v80, v179
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v179, 0x3fb8aa3b, v38
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v38, 0, 1, s5
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v181, 0x3fb8aa3b, v49 :: v_dual_mul_f32 v194, 0x3fb8aa3b, v54
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v57.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v35.l
	v_mov_b16_e32 v34.l, v36.l
	v_cndmask_b32_e64 v49, 0, 1, s8
	.loc	1 684 35                        ; attention.py:684:35
	ds_load_b128 v[61:64], v159
	v_mul_f32_e32 v182, 0x3fb8aa3b, v50
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v50, 0x3fb8aa3b, v51
	v_mul_f32_e32 v198, 0x3fb8aa3b, v60
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v51, 0, 1, s9
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v193, 0x3fb8aa3b, v53 :: v_dual_mul_f32 v54, 0x3fb8aa3b, v55
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v57.l, v34.l, v33.l
	v_mov_b16_e32 v33.l, v37.l
	v_mov_b16_e32 v34.l, v38.l
	v_cndmask_b32_e64 v53, 0, 1, s27
	v_cndmask_b32_e64 v55, 0, 1, s34
	v_cndmask_b32_e64 v56, 0, 1, s35
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v197, 0x3fb8aa3b, v58 :: v_dual_mul_f32 v58, 0x3fb8aa3b, v59
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v59, 0, 1, s36
	v_cndmask_b32_e64 v35, 0, 1, s21
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b16 v60.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v49.l
	v_mov_b16_e32 v34.l, v51.l
	v_cndmask_b32_e64 v36, 0, 1, s22
	v_cndmask_b32_e64 v37, 0, 1, s28
	v_cndmask_b32_e64 v38, 0, 1, s29
	v_lshlrev_b16 v33.l, 8, v33.l
	v_cndmask_b32_e64 v49, 0, 1, s13
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v200, 0x3fb8aa3b, v62 :: v_dual_mul_f32 v201, 0x3fb8aa3b, v64
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v60.l, v34.l, v33.l
	v_mov_b16_e32 v33.l, v53.l
	v_mov_b16_e32 v34.l, v55.l
	v_cndmask_b32_e64 v53, 0, 1, s14
	v_cndmask_b32_e64 v55, 0, 1, s17
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v62, 0x3fb8aa3b, v63 :: v_dual_fmac_f32 v103, s86, v186
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v199, 0x3fb8aa3b, v61
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_dual_fmac_f32 v100, s86, v185 :: v_dual_fmac_f32 v101, s86, v187
	v_dual_fmac_f32 v46, s86, v65 :: v_dual_fmac_f32 v47, s86, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	v_or_b16 v51.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v56.l
	v_mov_b16_e32 v34.l, v59.l
	v_cndmask_b32_e64 v56, 0, 1, s23
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v180, s86, v86 :: v_dual_fmac_f32 v43, s86, v87
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v54, s86, v74 :: v_dual_fmac_f32 v201, s86, v83
	v_dual_fmac_f32 v50, s86, v70 :: v_dual_fmac_f32 v195, s86, v75
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v51.l, v34.l, v33.l
	v_mov_b16_e32 v33.l, v35.l
	v_mov_b16_e32 v34.l, v36.l
	v_cndmask_b32_e64 v35, 0, 1, s11
	v_cndmask_b32_e64 v36, 0, 1, s15
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v48, s86, v67 :: v_dual_fmac_f32 v181, s86, v68
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v33.l, 8, v33.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshlrev_b16 v33.h, 8, v35.l
	v_lshlrev_b16 v34.h, 8, v36.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v182, s86, v69 :: v_dual_fmac_f32 v193, s86, v72
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v59.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v37.l
	v_mov_b16_e32 v34.l, v38.l
	v_cndmask_b32_e64 v37, 0, 1, s12
	v_cndmask_b32_e64 v38, 0, 1, s16
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v192, s86, v71 :: v_dual_fmac_f32 v197, s86, v77
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v33.l, 8, v33.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_or_b16 v33.h, v37.l, v33.h
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v194, s86, v73 :: v_dual_fmac_f32 v199, s86, v80
	v_dual_fmac_f32 v40, s86, v84 :: v_dual_fmac_f32 v41, s86, v85
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v59.l, v34.l, v33.l
	v_mov_b16_e32 v33.l, v49.l
	v_mov_b16_e32 v34.l, v53.l
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v80, v177, v177
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v104, s86, v189
	v_dual_fmac_f32 v44, s86, v88 :: v_dual_fmac_f32 v45, s86, v89
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v88, v174, v174
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v102, s86, v188 :: v_dual_fmac_f32 v179, s86, v190
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v83, v176, v176
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v49.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v55.l
	v_mov_b16_e32 v34.l, v56.l
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v84, v175, v175
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v33.l, 8, v33.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v49.l, v34.l, v33.l
	v_or_b16 v33.l, v38.l, v34.h
	ds_store_2addr_b32 v183, v42, v52 offset1:32
	ds_store_2addr_b32 v183, v57, v60 offset0:64 offset1:96
	ds_store_2addr_b32 v160, v51, v59 offset1:32
	ds_store_2addr_b32 v160, v49, v33 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v33, v184
	ds_load_b32 v34, v161
	ds_load_b32 v35, v162
	ds_load_b32 v36, v163
	ds_load_b32 v37, v164
	ds_load_b32 v38, v165
	ds_load_b32 v42, v166
	ds_load_b32 v49, v167
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v62, s86, v82
	v_fmac_f32_e32 v196, s86, v76
	v_fmac_f32_e32 v58, s86, v78
	v_fmac_f32_e32 v200, s86, v81
	v_fmac_f32_e32 v198, s86, v79
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v82.h, 0
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v91.h, v82.h
	v_mov_b16_e32 v96.h, v82.h
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v61, 1, v33
	v_and_b32_e32 v51, 0x10000, v33
	v_and_b32_e32 v52, 0x10000, v34
	v_and_b32_e32 v64, 1, v34
	v_and_b32_e32 v65, 0x1000000, v34
	v_cmp_eq_u32_e64 s64, 1, v61
	v_and_b32_e32 v53, 0x10000, v35
	v_and_b32_e32 v57, 0x10000, v38
	v_and_b32_e32 v55, 0x10000, v36
	v_and_b32_e32 v76, 1, v49
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v61, 0xff800000, v100, s64
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v63, 0x1000000, v33
	v_lshrrev_b16 v33.h, 8, v34.l
	v_lshrrev_b16 v34.l, 8, v35.l
	v_cmp_ne_u32_e64 s52, 0, v53
	v_cmp_ne_u32_e64 s46, 0, v57
	v_lshrrev_b16 v33.l, 8, v33.l
	v_cmp_ne_u32_e64 s51, 0, v55
	v_and_b16 v34.l, 1, v34.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v55, 0xff800000, v43, s52
	v_cndmask_b32_e64 v43, 0xff800000, v54, s46
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v56, 0x10000, v37
	v_and_b32_e32 v66, 1, v35
	v_cmp_eq_u16_e64 s61, 1, v34.l
	v_and_b32_e32 v67, 0x1000000, v35
	v_and_b32_e32 v68, 1, v36
	v_and_b32_e32 v69, 0x1000000, v36
	v_and_b32_e32 v70, 1, v37
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v54, 0xff800000, v180, s61
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v75, 0x1000000, v42
	v_and_b32_e32 v71, 0x1000000, v37
	v_and_b32_e32 v77, 0x1000000, v49
	v_lshrrev_b16 v34.h, 8, v36.l
	v_lshrrev_b16 v35.l, 8, v37.l
	v_lshrrev_b16 v36.l, 8, v42.l
	v_lshrrev_b16 v36.h, 8, v49.l
	v_cmp_ne_u32_e64 s37, 0, v75
	v_cmp_eq_u32_e64 s45, 1, v76
	v_and_b16 v37.l, 1, v33.l
	v_and_b32_e32 v60, 0x10000, v49
	v_cmp_ne_u32_e64 s58, 0, v65
	v_cmp_ne_u32_e64 s38, 0, v77
	v_and_b16 v65.l, 1, v36.l
	v_and_b16 v65.h, 1, v36.h
	v_cmp_eq_u16_e64 s67, 1, v37.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v36, 0xff800000, v198, s37
	v_cndmask_b32_e64 v37, 0xff800000, v199, s45
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s43, 0, v60
	v_cmp_ne_u32_e64 s55, 0, v67
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v60, 0xff800000, v40, s58
	v_cndmask_b32_e64 v40, 0xff800000, v201, s38
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v59, 0x10000, v42
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v67, v36, v37
.Ltmp2:
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s63, 0, v52
	v_and_b32_e32 v72, 1, v38
	v_and_b32_e32 v73, 0x1000000, v38
	v_lshrrev_b16 v35.h, 8, v38.l
	v_cmp_ne_u32_e64 s44, 0, v59
	v_cmp_eq_u32_e64 s66, 1, v64
	v_and_b16 v38.l, 1, v33.h
	v_and_b16 v34.h, 1, v34.h
	v_and_b16 v38.h, 1, v35.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v59, 0xff800000, v39, s63
	v_cndmask_b32_e64 v39, 0xff800000, v62, s43
	v_cndmask_b32_e64 v62, 0xff800000, v101, s67
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s49, 0, v56
	v_cmp_eq_u32_e64 s56, 1, v68
	v_cmp_ne_u32_e64 s53, 0, v69
	v_cmp_eq_u32_e64 s54, 1, v70
	v_cmp_eq_u32_e64 s48, 1, v72
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v57, 0xff800000, v104, s66
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v74, 1, v42
	v_and_b16 v42.l, 1, v35.h
	v_cmp_eq_u16_e64 s68, 1, v38.l
	v_cmp_eq_u16_e64 s60, 1, v34.h
	v_cmp_eq_u16_e64 s59, 1, v38.h
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v72, v61, v62
.Ltmp4:
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s65, 0, v63
	v_cmp_ne_u32_e64 s62, 0, v51
	v_cmp_eq_u32_e64 s57, 1, v66
	v_cmp_ne_u32_e64 s50, 0, v71
	v_cmp_ne_u32_e64 s40, 0, v73
	v_cmp_eq_u32_e64 s47, 1, v74
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v64, 0xff800000, v103, s65
	v_cndmask_b32_e64 v56, 0xff800000, v44, s55
	v_cndmask_b32_e64 v49, 0xff800000, v45, s56
	v_cndmask_b32_e64 v51, 0xff800000, v47, s51
	v_cndmask_b32_e64 v52, 0xff800000, v48, s53
	v_cndmask_b32_e64 v45, 0xff800000, v181, s54
	v_cndmask_b32_e64 v47, 0xff800000, v50, s49
	v_cndmask_b32_e64 v35, 0xff800000, v58, s44
	v_cndmask_b32_e64 v58, 0xff800000, v179, s68
	v_cndmask_b32_e64 v50, 0xff800000, v46, s60
	v_cndmask_b32_e64 v46, 0xff800000, v182, s59
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s41, 1, v42.l
	v_cmp_eq_u16_e64 s42, 1, v65.l
	v_cmp_eq_u16_e64 s39, 1, v65.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v63, 0xff800000, v102, s62
	v_cndmask_b32_e64 v53, 0xff800000, v41, s57
	v_cndmask_b32_e64 v48, 0xff800000, v192, s50
	v_cndmask_b32_e64 v41, 0xff800000, v193, s48
	v_cndmask_b32_e64 v44, 0xff800000, v195, s40
	v_cndmask_b32_e64 v33, 0xff800000, v196, s47
	v_cndmask_b32_e64 v42, 0xff800000, v194, s41
	v_cndmask_b32_e64 v34, 0xff800000, v197, s42
	v_cndmask_b32_e64 v38, 0xff800000, v200, s39
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v68, v39, v40
	v_max3_f32 v69, v54, v55, v56
	v_max3_f32 v70, v49, v50, v51
	v_max3_f32 v71, v52, v45, v46
	v_max3_f32 v73, v64, v57, v58
	v_max3_f32 v65, v47, v48, v41
	v_max3_f32 v66, v59, v60, v53
	v_max3_f32 v74, v42, v43, v44
	v_max3_f32 v75, v33, v34, v35
	v_max3_f32 v67, v67, v38, v68
	v_max3_f32 v68, v69, v70, v71
	v_max3_f32 v69, v72, v63, v73
.Ltmp6:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v92.h, v82.h
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v65, v65, v74, v75
.Ltmp8:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v94.h, v82.h
	v_mov_b16_e32 v90.h, v82.h
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v66, v69, v66, v68
.Ltmp10:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v95.h, v82.h
	v_mov_b16_e32 v93.h, v82.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v65, v66, v65, v67
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v66, v65, s104, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp13:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v81, v178, v65, v66
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v62, v81
	v_sub_f32_e32 v98, v35, v81
	v_sub_f32_e32 v86, v38, v81
	v_sub_f32_e32 v100, v43, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v71, 0, v65, s67
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v61, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v82.l, v71.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v72, 1, v82
	v_add3_u32 v72, v71, v72, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v70, 0, v65, s64
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v65, v63, v81
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v72.l, v70.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v67, 0, v65, s62
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v64, v81
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s62, v71, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v90.l, v67.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v71.h, 0x7fff, v72.h, s62
	v_mov_b16_e32 v72.h, v82.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v69, v59, v81
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s62, v70, v70
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v103, v48, v81 :: v_dual_and_b32 v72, 1, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v65, s65
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v65, v57, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v72, v70, v72, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	v_add_nc_u32_e32 v70, v151, v130
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v82.l, v66.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v71.l, 0x7fff, v72.h, s62
	.loc	1 686 26                        ; attention.py:686:26
	v_add_nc_u32_e32 v72, 0, v139
	ds_store_b128 v72, v[61:64]
	ds_store_b128 v72, v[45:48] offset:2048
	ds_store_b128 v168, v[57:60]
	ds_store_b128 v168, v[41:44] offset:2048
	ds_store_b128 v169, v[53:56]
	ds_store_b128 v169, v[33:36] offset:2048
	ds_store_b128 v170, v[49:52]
	ds_store_b128 v170, v[37:40] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v68, 0, v65, s66
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v65, v58, v81
	.loc	1 686 26 is_stmt 1              ; attention.py:686:26
	ds_load_b128 v[61:64], v171 offset:1024
	ds_load_b128 v[72:75], v171
	ds_load_b128 v[76:79], v171 offset:256
	ds_load_b128 v[185:188], v171 offset:1280
	ds_load_b128 v[189:192], v171 offset:512
	ds_load_b128 v[193:196], v171 offset:768
	ds_load_b128 v[197:200], v171 offset:1536
	ds_load_b128 v[201:204], v171 offset:1792
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v55, v55, v81
	v_sub_f32_e32 v101, v41, v81
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v91.l, v68.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v183, v34, v81
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v69, s63
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v51, v51, v81
	v_sub_f32_e32 v53, v53, v81
	v_sub_f32_e32 v60, v60, v81
	v_sub_f32_e32 v49, v49, v81
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v92.l, v69.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v85, v36, v81
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v65, v65
.Ltmp14:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	s_waitcnt lgkmcnt(6)
	v_dual_max_f32 v57, v64, v64 :: v_dual_max_f32 v58, v75, v75
	s_waitcnt lgkmcnt(4)
	v_dual_max_f32 v35, v79, v79 :: v_dual_max_f32 v34, v188, v188
.Ltmp15:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v45, v45, v81
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v59, v72, v61, v73
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v38, v200, v200
.Ltmp17:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v41, v55
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v34, v35, v34 :: v_dual_max_f32 v35, v192, v192
.Ltmp19:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v56, v56, v81
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v36, v58, v57
.Ltmp21:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v43, v49
	v_exp_f32_e32 v45, v45
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_dual_max_f32 v35, v35, v38 :: v_dual_max_f32 v38, v204, v204
.Ltmp23:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v99, v33, v81
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v33, v62, v74, v63
.Ltmp25:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v41, 0, v41, s52
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v54, v54, v81
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v65, 0, v65, s68
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v58, 1, v82
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v33, v59, v33, v36
	v_max3_f32 v36, v186, v78, v187
.Ltmp27:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v94.l, v41.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v97, v37, v81
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v37, v76, v185, v77
.Ltmp29:
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v50, v50, v81 :: v_dual_mov_b32 v49, v33
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v43, 0, v43, s56
	v_cndmask_b32_e64 v45, 0, v45, s54
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp30:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v34, v37, v36, v34
	v_max3_f32 v36, v189, v197, v190
	v_max3_f32 v37, v198, v191, v199
.Ltmp31:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v52, v52, v81
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v49, v49 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s56, v41, v41
	v_mov_b16_e32 v95.l, v43.h
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v35, v36, v37, v35
	v_max_f32_e32 v36, v196, v196
	v_max3_f32 v37, v193, v201, v194
.Ltmp35:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v46, v46, v81
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v82.l, v65.h
	v_cmp_o_f32_e64 s52, v65, v65
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v36, v36, v38
	v_max3_f32 v38, v202, v195, v203
.Ltmp37:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v101, v101
	v_exp_f32_e32 v99, v99
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v36, v37, v38, v36
.Ltmp39:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v102, v47, v81
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v47, v51
.Ltmp40:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v51, v34
.Ltmp41:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v38, v60
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v55, v36
.Ltmp43:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v48, v52
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v52, 1, v91
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v51, v51 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v104, v42, v81
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v55, v55 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v182, v44, v81
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v44, v50
.Ltmp48:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v51, v51, v51
.Ltmp49:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v89, v39, v81
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v39, v53
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v50, 1, v90
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v38, 0, v38, s58
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s58, v67, v67
	v_add3_u32 v52, v68, v52, 0x7fff
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v34, v34, v51
.Ltmp51:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v50, v67, v50, 0x7fff
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v53, v35
.Ltmp53:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v47, 0, v47, s51
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v55, v55, v55
.Ltmp55:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v39, 0, v39, s57
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v52.l, 0x7fff, v50.h, s58
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v49, v49, v49
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v51, v34
.Ltmp58:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v37.h, v82.h
	v_mov_b16_e32 v93.l, v39.h
	v_cmp_o_f32_e64 s54, v39, v39
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v53, v53 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v96.l, v47.h
	v_mov_b16_e32 v37.l, v45.h
	v_and_b32_e32 v50, 1, v93
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v36, v36, v55 :: v_dual_max_f32 v33, v33, v49
.Ltmp62:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v87, v40, v81
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v40, v54
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v39, v39, v50, 0x7fff
	v_and_b32_e32 v50, 1, v94
	v_and_b32_e32 v54, 1, v92
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v42, v56
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s57, v68, v68
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v53, v53, v53
.Ltmp64:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v41, v41, v50, 0x7fff
	v_and_b32_e32 v49, 1, v96
	v_and_b32_e32 v37, 1, v37
	v_add3_u32 v54, v69, v54, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v40, 0, v40, s61
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v57.l, 0x7fff, v41.h, s56
	v_and_b32_e32 v41, 1, v95
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v44, 0, v44, s60
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s51, v66, v66
	v_cmp_o_f32_e64 s60, v43, v43
	v_cndmask_b16 v54.l, 0x7fff, v52.h, s57
	v_cmp_o_f32_e64 s57, v47, v47
	v_cndmask_b16 v39.l, 0x7fff, v39.h, s54
	v_cmp_o_f32_e64 s54, v45, v45
	v_add3_u32 v41, v43, v41, 0x7fff
	v_add3_u32 v43, v47, v49, 0x7fff
	v_add3_u32 v37, v45, v37, 0x7fff
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v51, v51 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp66:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v45, v66, v58, 0x7fff
	v_and_b32_e32 v47, 1, v82
	v_mov_b16_e32 v82.l, v38.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v42, 0, v42, s55
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v68.l, 0x7fff, v41.h, s60
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v41, v51, v51
.Ltmp68:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v52.h, 0x7fff, v45.h, s51
	v_add3_u32 v45, v65, v47, 0x7fff
	v_and_b32_e32 v47, 1, v82
	v_mov_b16_e32 v82.l, v40.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v46, v46
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v55, v36 :: v_dual_max_f32 v34, v34, v41
.Ltmp70:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v48, 0, v48, s53
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v41, 1, v82
	v_mov_b16_e32 v82.l, v42.h
	v_cmp_o_f32_e64 s55, v40, v40
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v50, v33
.Ltmp72:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s58, v44, v44
	v_add3_u32 v40, v40, v41, 0x7fff
	v_and_b32_e32 v41, 1, v82
	v_mov_b16_e32 v82.l, v44.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v46, 0, v46, s59
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s59, v42, v42
	v_cndmask_b16 v39.h, 0x7fff, v40.h, s55
	v_add3_u32 v40, v42, v41, 0x7fff
	v_and_b32_e32 v41, 1, v82
	v_mov_b16_e32 v82.l, v48.h
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v53
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v50, v50 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v55, v55 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v57.h, 0x7fff, v40.h, s59
	v_add3_u32 v40, v44, v41, 0x7fff
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v53, v35 :: v_dual_and_b32 v44, 1, v82
.Ltmp77:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v180.l, 0x7fff, v37.h, s54
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v49, v55, v55
	v_max_f32_e32 v37, v50, v50
.Ltmp79:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s61, v69, v69
.Ltmp80:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v53, v53 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp81:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v179.l, 0x7fff, v43.h, s57
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v36, v36, v49
	v_max_f32_e32 v33, v33, v37
.Ltmp83:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v56.l, 0x7fff, v54.h, s61
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v43, v53, v53
.Ltmp85:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v54.h, 0x7fff, v45.h, s52
.Ltmp86:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v45, v34
.Ltmp87:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v37, v52, s104, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s53, v38, v38
.Ltmp88:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v43
.Ltmp89:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v43, v33
	v_mov_b32_dpp v45, v45 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp90:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v51, v37, v52, v119
	v_perm_b32 v52, v37, v52, v120
	v_mov_b16_e32 v82.l, v46.h
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp92:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s61, v48, v48
	v_cmp_o_f32_e64 s56, v46, v46
	v_cndmask_b16 v68.h, 0x7fff, v40.h, s58
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s51, 0xff800000, v178
.Ltmp93:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v42, v43, v43 :: v_dual_max_f32 v43, v45, v45
.Ltmp94:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v50, v71, s104, 0xfedcba98 op_sel:[1,0]
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v101, 0, v101, s48
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v100, v100
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v99, 0, v99, s47
.Ltmp95:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v67, v34, v43
.Ltmp96:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v34, v48, v44, 0x7fff
	v_perm_b32 v49, v50, v71, v119
	v_perm_b32 v50, v50, v71, v120
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v98, v98
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v176, v83, v67
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v179.h, 0x7fff, v34.h, s61
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v97, v97
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v100, 0, v100, s46
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s46, v99, v99
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v76, v76, v176
.Ltmp97:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v184, v33, v42
.Ltmp98:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v92, v186, v176
	v_sub_f32_e32 v90, v187, v176
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v33, v57, s104, 0xfedcba98 op_sel:[1,0]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v78, v78, v176
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v177, v80, v184
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v76, v76
	v_exp_f32_e32 v90, v90
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v43, v33, v57, v119
	v_perm_b32 v44, v33, v57, v120
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v96, v61, v177 :: v_dual_mov_b32 v37, v35
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v33, v68, s104, 0xfedcba98 op_sel:[1,0]
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v78, v78
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s52, v100, v100
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v96, v96
.Ltmp99:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v37, v37 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v76, 0, v76, s26
	v_cndmask_b32_e64 v90, 0, v90, s22
	v_cndmask_b32_e64 v98, 0, v98, s44
	v_cndmask_b32_e64 v97, 0, v97, s45
.Ltmp101:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v37, v37, v37
.Ltmp102:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v89, v89
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v78, 0, v78, s19
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	v_add_nc_u32_e32 v145, 0x100, v145
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v96, 0, v96, s36
.Ltmp103:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v35, v37
.Ltmp104:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v38, v38, v47, 0x7fff
.Ltmp105:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v47, v36
.Ltmp106:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v35, 1, v82
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v90, v78, v90
.Ltmp108:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v175, v84, v66
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v56.h, 0x7fff, v38.h, s53
.Ltmp109:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v47, v47 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp110:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v34, v46, v35, 0x7fff
	v_perm_b32 v46, v33, v68, v120
	v_permlanex16_b32 v38, v54, s104, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s47, v98, v98
.Ltmp111:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v45, v47, v47
.Ltmp112:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v180.h, 0x7fff, v34.h, s56
	v_permlanex16_b32 v34, v179, s104, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v53, v38, v54, v119
	v_perm_b32 v54, v38, v54, v120
.Ltmp113:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v65, v36, v45
.Ltmp114:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v36, v102
	v_exp_f32_e32 v102, v103
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v35, v180, s104, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v45, v33, v68, v119
	v_perm_b32 v47, v34, v179, v119
	v_perm_b32 v48, v34, v179, v120
	.loc	1 694 30                        ; attention.py:694:30
	v_add_nc_u32_e32 v68, v150, v130
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v33, v35, v180, v119
	v_perm_b32 v34, v35, v180, v120
	v_mov_b16_e32 v35.h, v82.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v36, 0, v36, s49
	v_cndmask_b32_e64 v102, 0, v102, s50
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v38, v56, s104, 0xfedcba98 op_sel:[1,0]
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v174, v88, v65
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v95, v62, v177
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v35.l, v36.h
	v_mov_b16_e32 v82.l, v102.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v69, v74, v177
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s49, v36, v36
	v_cmp_o_f32_e64 s50, v102, v102
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v74, v77, v176 :: v_dual_and_b32 v35, 1, v35
	v_sub_f32_e32 v77, v79, v176
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v55, v38, v56, v119
	v_perm_b32 v56, v38, v56, v120
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add3_u32 v35, v36, v35, 0x7fff
	v_and_b32_e32 v36, 1, v82
	v_permlanex16_b32 v38, v39, s104, 0xfedcba98 op_sel:[1,0]
	v_mov_b32_e32 v88, v114
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v62, v199, v175 :: v_dual_sub_f32 v71, v73, v177
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v36, v102, v36, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s49
	v_perm_b32 v41, v38, v39, v119
	v_perm_b32 v42, v38, v39, v120
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v38, v196, v174
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s50
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v61, v204, v174
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v62, v62
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v72, v72, v177
	v_dual_sub_f32 v73, v75, v177 :: v_dual_add_nc_u32 v114, v149, v130
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_permlanex16_b32 v102, v36, s104, 0xfedcba98 op_sel:[1,0]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v60, v193, v174
	v_sub_f32_e32 v58, v194, v174
	v_sub_f32_e32 v40, v195, v174
	v_sub_f32_e32 v84, v201, v174
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v35, v102, v36, v119
	v_perm_b32 v36, v102, v36, v120
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v102, v178, v81
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v61, v61
	v_exp_f32_e32 v72, v72
	v_exp_f32_e32 v69, v69
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v102, v102
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v73, v73
	v_exp_f32_e32 v60, v60
	v_exp_f32_e32 v84, v84
	v_exp_f32_e32 v58, v58
	v_exp_f32_e32 v40, v40
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v62, 0, v62, s14
	v_cndmask_b32_e64 v38, 0, v38, s4
	v_cndmask_b32_e64 v61, 0, v61, s11
	v_mov_b32_e32 v180, v115
	.loc	1 689 25 is_stmt 1              ; attention.py:689:25
	v_cndmask_b32_e64 v102, 0, v102, s51
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v39, v191, v175
	v_sub_f32_e32 v37, v192, v175
	v_sub_f32_e32 v59, v200, v175
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_sub_f32 v93, v185, v176 :: v_dual_mul_f32 v20, v20, v102
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v26, v26, v102
	v_mul_f32_e32 v30, v30, v102
	v_mul_f32_e32 v10, v10, v102
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v59, v59
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_dual_sub_f32 v75, v64, v177 :: v_dual_mul_f32 v18, v18, v102
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v93, v93
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v79, v188, v176 :: v_dual_mul_f32 v22, v22, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v75, v75
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v57, v190, v175 :: v_dual_mul_f32 v24, v24, v102
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v39, 0, v39, s7
	v_cndmask_b32_e64 v37, 0, v37, s6
	v_cndmask_b32_e64 v59, 0, v59, s13
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v91, v197, v175 :: v_dual_mul_f32 v28, v28, v102
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v93, 0, v93, s29
.Ltmp115:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v39, v39, v62
	v_add_f32_e32 v59, v37, v59
	v_dual_mov_b32 v179, v117 :: v_dual_mul_f32 v32, v32, v102
	v_dual_mov_b32 v181, v116 :: v_dual_mul_f32 v14, v14, v102
.Ltmp116:
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v115, v123, v123 :: v_dual_mul_f32 v16, v16, v102
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v17, v17, v102
	v_mul_f32_e32 v21, v21, v102
	v_mul_f32_e32 v31, v31, v102
	v_mul_f32_e32 v11, v11, v102
	v_mul_f32_e32 v12, v12, v102
	v_mul_f32_e32 v13, v13, v102
	v_mul_f32_e32 v2, v2, v102
	v_mul_f32_e32 v3, v3, v102
	v_mul_f32_e32 v4, v4, v102
	v_mul_f32_e32 v5, v5, v102
	v_mul_f32_e32 v6, v6, v102
	v_mul_f32_e32 v8, v8, v102
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v93, v76, v93 :: v_dual_add_nc_u32 v134, 0x80, v134
.Ltmp118:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v15, v15, v102
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v72, 0, v72, s33
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v19, v19, v102
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v69, s30
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v23, v23, v102
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v73, 0, v73, s24
	v_cndmask_b32_e64 v75, 0, v75, s27
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v27, v27, v102
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v60, 0, v60, s9
	v_cndmask_b32_e64 v84, 0, v84, s16
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v25, v25, v102
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v58, 0, v58, s8
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v29, v29, v102
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v40, 0, v40, s5
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v9, v9, v102
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v61, v38, v61
.Ltmp120:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v1, v1, v102
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v59, v39, v59
.Ltmp122:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v7, v7, v102
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v102.h, v82.h
	v_mov_b16_e32 v102.l, v101.h
	v_cmp_o_f32_e64 s51, v101, v101
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v89, 0, v89, s43
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s48, v97, v97
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v116, v124, v124
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v102, 1, v102
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v94, v63, v177
	v_dual_sub_f32 v63, v203, v174 :: v_dual_sub_f32 v80, v189, v175
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v77, v77
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v117, v101, v102, 0x7fff
	v_mov_b16_e32 v101.h, v82.h
	v_mov_b16_e32 v101.l, v100.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v94, v94
	v_exp_f32_e32 v79, v79
	v_exp_f32_e32 v71, v71
	v_exp_f32_e32 v95, v95
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v101, 1, v101
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v74, v74
	v_exp_f32_e32 v92, v92
	v_exp_f32_e32 v80, v80
	v_exp_f32_e32 v91, v91
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v185, v100, v101, 0x7fff
	v_mov_b16_e32 v100.h, v82.h
	v_mov_b16_e32 v100.l, v99.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v83, v202, v174
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v77, 0, v77, s18
	v_cndmask_b32_e64 v79, 0, v79, s21
	v_cndmask_b32_e64 v71, 0, v71, s31
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v100, 1, v100
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v95, 0, v95, s35
	v_cndmask_b32_e64 v74, 0, v74, s25
	v_cndmask_b32_e64 v80, 0, v80, s20
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v146, 0x100, v146
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v100, v99, v100, 0x7fff
	v_mov_b16_e32 v99.h, v82.h
	v_mov_b16_e32 v99.l, v98.h
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v95, v71, v95
.Ltmp124:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v64, v198, v175
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v57, v57
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s50, v89, v89
	v_and_b32_e32 v99, 1, v99
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v83, v83
	v_exp_f32_e32 v64, v64
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s43, 0xff800000, v124
	v_cmp_neq_f32_e64 s49, 0xff800000, v123
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v101, v98, v99, 0x7fff
	v_mov_b16_e32 v98.h, v82.h
	v_mov_b16_e32 v98.l, v97.h
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v99, v125, v125
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v57, 0, v57, s10
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v60, v60, v84
.Ltmp126:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v83, 0, v83, s15
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v98, 1, v98
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v99, v99, v66
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v66, 0x80000000, v70, s3
	v_cndmask_b32_e64 v70, 0x80000000, v68, s3
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v68, v104
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v102, v97, v98, 0x7fff
	v_mov_b16_e32 v97.h, v82.h
	v_mov_b16_e32 v97.l, v89.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v104, v182
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v98, v116, v67 :: v_dual_max_f32 v67, v173, v173
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v63, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v97, 1, v97
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v64, 0, v64, s17
	v_cndmask_b32_e64 v68, 0, v68, s41
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v116, v67, v65
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v58, v58, v83
.Ltmp128:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v103, v89, v97, 0x7fff
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v97, v115, v184
	.loc	1 694 30                        ; attention.py:694:30
	v_add_nc_u32_e32 v115, v148, v130
	v_cndmask_b32_e64 v184, 0x80000000, v114, s3
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v114, v183
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v82.l, v68.h
	v_cmp_o_f32_e64 s41, v68, v68
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v178, 0x80000000, v115, s3
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v115, 0, v104, s40
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v104.l, 0x7fff, v185.h, s52
	v_and_b32_e32 v65, 1, v82
	.loc	1 694 30                        ; attention.py:694:30
	v_add_nc_u32_e32 v89, 0, v127
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v102.l, 0x7fff, v103.h, s50
	v_mov_b16_e32 v82.l, v115.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v182, 0, v114, s42
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v114.l, 0x7fff, v117.h, s51
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v117, 0, v94, s34
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v65, v68, v65, 0x7fff
	v_and_b32_e32 v67, 1, v82
	v_mov_b16_e64 v82.l, v182.h
	v_cmp_o_f32_e64 s42, v115, v115
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v94, v72, v96
	v_add_f32_e32 v96, v69, v117
.Ltmp130:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v67, v115, v67, 0x7fff
	v_and_b32_e32 v68, 1, v82
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v117, 0, v92, s28
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s40, v182, v182
	v_cndmask_b16 v114.h, 0x7fff, v65.h, s41
	v_cndmask_b16 v104.h, 0x7fff, v67.h, s42
	v_add3_u32 v115, v182, v68, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v182, 0, v91, s23
	.loc	1 694 30                        ; attention.py:694:30
	s_clause 0x1
	buffer_load_b128 v[65:68], v66, s[72:75], 0 offen
	buffer_load_b128 v[69:72], v70, s[72:75], 0 offen
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v117, v74, v117 :: v_dual_add_nc_u32 v130, s87, v130
	v_add_f32_e32 v92, v73, v75
.Ltmp132:
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[73:76], v184, s[72:75], 0 offen
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v91, v77, v79
	v_add_f32_e32 v185, v80, v182
.Ltmp134:
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[77:80], v178, s[72:75], 0 offen
	v_mov_b32_e32 v178, v81
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v81, v85
	v_exp_f32_e32 v85, v86
	v_exp_f32_e32 v86, v87
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v182, v124, v98
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v63, 0, v63, s12
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v57, v57, v64
.Ltmp136:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v64, v114, s104, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v87.l, 0x7fff, v100.h, s46
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v182, v182
.Ltmp137:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v40, v40, v63
.Ltmp138:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v81, 0, v81, s37
	v_cndmask_b32_e64 v85, 0, v85, s39
	v_cndmask_b32_e64 v86, 0, v86, s38
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v37, v64, v114, v119
	v_perm_b32 v38, v64, v114, v120
	v_mov_b16_e32 v82.l, v81.h
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v103, v123, v97
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s20, v81, v81
	v_permlanex16_b32 v63, v104, s104, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v87.h, 0x7fff, v115.h, s40
	v_and_b32_e32 v62, 1, v82
	v_mov_b16_e32 v82.l, v85.h
	v_mov_b32_e32 v123, v97
.Ltmp139:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v83, v96, v92
.Ltmp140:
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v182, 0, v182, s43
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v62, v81, v62, 0x7fff
	v_and_b32_e32 v64, 1, v82
	v_mov_b16_e32 v82.l, v86.h
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v81, v94, v95
	v_dual_add_f32 v58, v60, v58 :: v_dual_add_nc_u32 v147, 0x100, v147
	v_add_f32_e32 v84, v93, v117
	v_dual_add_f32 v90, v90, v91 :: v_dual_add_f32 v57, v185, v57
	v_add_f32_e32 v60, v40, v61
.Ltmp142:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v39, v63, v104, v119
	v_perm_b32 v40, v63, v104, v120
	v_permlanex16_b32 v61, v87, s104, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v100.h, 0x7fff, v62.h, s20
	v_add3_u32 v62, v85, v64, 0x7fff
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v64, v81, v83 :: v_dual_and_b32 v63, 1, v82
	v_dual_add_f32 v81, v84, v90 :: v_dual_add_f32 v82, v57, v59
	v_add_f32_e32 v83, v58, v60
.Ltmp144:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v57, v61, v87, v119
	v_perm_b32 v58, v61, v87, v120
	v_add3_u32 v61, v86, v63, 0x7fff
.Ltmp145:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v63, v64
.Ltmp146:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s19, v85, v85
	v_cmp_o_f32_e64 s18, v86, v86
.Ltmp147:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_dual_mov_b32 v84, v81 :: v_dual_mov_b32 v85, v82
	v_mov_b32_e32 v86, v83
	v_mov_b32_dpp v63, v63 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp148:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v101.l, 0x7fff, v102.h, s48
	v_cndmask_b16 v102.h, 0x7fff, v61.h, s18
.Ltmp149:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v84, v84 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v85, v85 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v86, v86 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp150:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v90, v64, v63 :: v_dual_add_nc_u32 v105, s84, v105
.Ltmp151:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v87, v102, s104, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp152:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v81, v81, v84 :: v_dual_add_f32 v82, v82, v85
	v_dual_add_f32 v83, v83, v86 :: v_dual_mov_b32 v84, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp153:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v63, v87, v102, v119
	v_perm_b32 v64, v87, v102, v120
.Ltmp154:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_dual_mov_b32 v85, v81 :: v_dual_mov_b32 v86, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v87, v83
	v_mov_b32_dpp v84, v84 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp155:
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v97, v103
.Ltmp156:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v85, v85 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v86, v86 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v87, v87 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp157:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v84, v90, v84 :: v_dual_sub_f32 v183, v125, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v81, v81, v85 :: v_dual_add_f32 v82, v82, v86
	v_add_f32_e32 v83, v83, v87
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp158:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v85, v84
.Ltmp159:
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s44, 0xff800000, v125
	v_cmp_neq_f32_e64 s45, 0xff800000, v173
	.loc	1 689 74 is_stmt 0              ; attention.py:689:74
	v_dual_sub_f32 v184, v173, v116 :: v_dual_mov_b32 v125, v99
.Ltmp160:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:691:24 ]
	v_dual_mov_b32 v86, v81 :: v_dual_mov_b32 v173, v116
	v_dual_mov_b32 v90, v83 :: v_dual_mov_b32 v87, v82
	v_mov_b32_dpp v85, v85 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp161:
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v97, 0, v97, s49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp162:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v86, v86 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v90, v90 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v87, v87 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp163:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v114, v84, v85
.Ltmp164:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp165:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v116, v81, v86 :: v_dual_add_f32 v115, v82, v87
	v_dual_add_f32 v117, v83, v90 :: v_dual_fmac_f32 v114, v88, v97
	v_mov_b32_e32 v124, v98
.Ltmp166:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v100.l, 0x7fff, v101.h, s47
	v_cndmask_b16 v101.h, 0x7fff, v62.h, s19
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v183, v183
	v_exp_f32_e32 v184, v184
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v116, v181, v182
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v60, v100, s104, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v62, v101, s104, 0xfedcba98 op_sel:[1,0]
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(3)
	ds_store_b128 v89, v[65:68]
	s_waitcnt vmcnt(2)
	ds_store_b128 v89, v[69:72] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v89, v[73:76] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v89, v[77:80] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v68, v132 offset:608
	ds_load_u16_d16 v67, v132 offset:352
	ds_load_u16_d16 v77, v132 offset:768
	ds_load_u16_d16 v74, v132
	ds_load_u16_d16 v84, v132 offset:576
	ds_load_u16_d16 v85, v132 offset:832
	ds_load_u16_d16 v78, v132 offset:1024
	ds_load_u16_d16 v86, v132 offset:1088
	ds_load_u16_d16 v79, v132 offset:1280
	ds_load_u16_d16 v87, v132 offset:1344
	ds_load_u16_d16 v80, v132 offset:1536
	ds_load_u16_d16 v88, v132 offset:1600
	ds_load_u16_d16 v81, v132 offset:1792
	ds_load_u16_d16 v76, v132 offset:512
	ds_load_u16_d16 v75, v132 offset:256
	ds_load_u16_d16 v89, v132 offset:1856
	ds_load_u16_d16 v91, v132 offset:288
	ds_load_u16_d16 v90, v132 offset:32
	ds_load_u16_d16 v82, v132 offset:64
	ds_load_u16_d16 v83, v132 offset:320
	ds_load_u16_d16 v66, v132 offset:96
	ds_load_u16_d16 v92, v132 offset:544
	ds_load_u16_d16 v69, v132 offset:864
	ds_load_u16_d16 v70, v132 offset:1120
	ds_load_u16_d16 v71, v132 offset:1376
	ds_load_u16_d16 v72, v132 offset:1632
	ds_load_u16_d16 v185, v132 offset:2112
	ds_load_u16_d16 v73, v132 offset:1888
	ds_load_u16_d16 v93, v132 offset:800
	ds_load_u16_d16 v94, v132 offset:1056
	ds_load_u16_d16 v95, v132 offset:1312
	ds_load_u16_d16 v96, v132 offset:1568
	ds_load_u16_d16 v97, v132 offset:1824
	ds_load_u16_d16 v186, v132 offset:2368
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v74, v132 offset:128
	ds_load_u16_d16_hi v77, v132 offset:896
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v78, v132 offset:1152
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v79, v132 offset:1408
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v80, v132 offset:1664
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v81, v132 offset:1920
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v76, v132 offset:640
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v75, v132 offset:384
	ds_load_u16_d16 v193, v132 offset:2144
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v90, v132 offset:160
	ds_load_u16_d16_hi v91, v132 offset:416
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v92, v132 offset:672
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v93, v132 offset:928
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v94, v132 offset:1184
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v95, v132 offset:1440
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v96, v132 offset:1696
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v97, v132 offset:1952
	ds_load_u16_d16 v65, v132 offset:4160
	ds_load_u16_d16 v200, v132 offset:3936
	ds_load_u16_d16_hi v67, v132 offset:480
	ds_load_u16_d16_hi v66, v132 offset:224
	ds_load_u16_d16_hi v68, v132 offset:736
	ds_load_u16_d16_hi v69, v132 offset:992
	ds_load_u16_d16_hi v70, v132 offset:1248
	ds_load_u16_d16_hi v71, v132 offset:1504
	ds_load_u16_d16_hi v72, v132 offset:1760
	ds_load_u16_d16_hi v73, v132 offset:2016
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(19)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[74:81], v[49:56], v[17:24]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v74, v132 offset:2048
	ds_load_u16_d16 v76, v132 offset:2560
	ds_load_u16_d16 v187, v132 offset:2624
	ds_load_u16_d16 v77, v132 offset:2816
	ds_load_u16_d16 v188, v132 offset:2880
	ds_load_u16_d16 v78, v132 offset:3072
	ds_load_u16_d16 v189, v132 offset:3136
	ds_load_u16_d16 v79, v132 offset:3328
	ds_load_u16_d16 v190, v132 offset:3392
	ds_load_u16_d16 v80, v132 offset:3584
	ds_load_u16_d16 v191, v132 offset:3648
	ds_load_u16_d16 v81, v132 offset:3840
	ds_load_u16_d16 v75, v132 offset:2304
	ds_load_u16_d16 v192, v132 offset:3904
	ds_load_u16_d16 v194, v132 offset:2400
	ds_load_u16_d16 v195, v132 offset:2656
	ds_load_u16_d16 v196, v132 offset:2912
	ds_load_u16_d16 v197, v132 offset:3168
	ds_load_u16_d16 v198, v132 offset:3424
	ds_load_u16_d16 v199, v132 offset:3680
	ds_load_u16_d16_hi v84, v132 offset:704
	ds_load_u16_d16_hi v85, v132 offset:960
	ds_load_u16_d16_hi v86, v132 offset:1216
	ds_load_u16_d16_hi v87, v132 offset:1472
	ds_load_u16_d16_hi v88, v132 offset:1728
	ds_load_u16_d16_hi v89, v132 offset:1984
	ds_load_u16_d16_hi v82, v132 offset:192
	ds_load_u16_d16_hi v83, v132 offset:448
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v59, v60, v100, v119
	v_perm_b32 v60, v60, v100, v120
	v_perm_b32 v61, v62, v101, v119
	v_perm_b32 v62, v62, v101, v120
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v183, 0, v183, s44
	v_cndmask_b32_e64 v184, 0, v184, s45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v115, v180, v183
	v_fmac_f32_e32 v117, v179, v184
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(38)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[90:97], v[49:56], v[25:32]
	s_waitcnt lgkmcnt(28)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[66:73], v[49:56], v[1:8]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[82:89], v[49:56], v[9:16]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v82, v132 offset:2080
	ds_load_u16_d16 v83, v132 offset:2336
	ds_load_u16_d16 v84, v132 offset:2592
	ds_load_u16_d16 v85, v132 offset:2848
	ds_load_u16_d16 v86, v132 offset:3104
	ds_load_u16_d16 v87, v132 offset:3360
	ds_load_u16_d16 v88, v132 offset:3616
	ds_load_u16_d16 v89, v132 offset:3872
	ds_load_u16_d16 v66, v132 offset:4416
	ds_load_u16_d16 v49, v132 offset:4192
	ds_load_u16_d16_hi v74, v132 offset:2176
	ds_load_u16_d16_hi v76, v132 offset:2688
	ds_load_u16_d16_hi v77, v132 offset:2944
	ds_load_u16_d16_hi v78, v132 offset:3200
	ds_load_u16_d16_hi v79, v132 offset:3456
	ds_load_u16_d16_hi v80, v132 offset:3712
	ds_load_u16_d16_hi v81, v132 offset:3968
	ds_load_u16_d16_hi v75, v132 offset:2432
	ds_load_u16_d16 v97, v132 offset:4096
	ds_load_u16_d16 v99, v132 offset:4608
	ds_load_u16_d16 v67, v132 offset:4672
	ds_load_u16_d16 v100, v132 offset:4864
	ds_load_u16_d16 v68, v132 offset:4928
	ds_load_u16_d16 v101, v132 offset:5120
	ds_load_u16_d16 v69, v132 offset:5184
	ds_load_u16_d16 v102, v132 offset:5376
	ds_load_u16_d16 v70, v132 offset:5440
	ds_load_u16_d16 v103, v132 offset:5632
	ds_load_u16_d16 v71, v132 offset:5696
	ds_load_u16_d16 v104, v132 offset:5888
	ds_load_u16_d16 v98, v132 offset:4352
	ds_load_u16_d16 v72, v132 offset:5952
	ds_load_u16_d16 v50, v132 offset:4448
	ds_load_u16_d16 v51, v132 offset:4704
	ds_load_u16_d16 v52, v132 offset:4960
	ds_load_u16_d16 v53, v132 offset:5216
	ds_load_u16_d16 v54, v132 offset:5472
	ds_load_u16_d16 v55, v132 offset:5728
	s_waitcnt lgkmcnt(37)
	ds_load_u16_d16_hi v82, v132 offset:2208
	s_waitcnt lgkmcnt(37)
	ds_load_u16_d16_hi v83, v132 offset:2464
	s_waitcnt lgkmcnt(37)
	ds_load_u16_d16_hi v84, v132 offset:2720
	s_waitcnt lgkmcnt(37)
	ds_load_u16_d16_hi v85, v132 offset:2976
	s_waitcnt lgkmcnt(37)
	ds_load_u16_d16_hi v86, v132 offset:3232
	s_waitcnt lgkmcnt(37)
	ds_load_u16_d16_hi v87, v132 offset:3488
	s_waitcnt lgkmcnt(37)
	ds_load_u16_d16_hi v88, v132 offset:3744
	s_waitcnt lgkmcnt(37)
	ds_load_u16_d16_hi v89, v132 offset:4000
	ds_load_u16_d16 v73, v132 offset:6208
	ds_load_u16_d16 v56, v132 offset:5984
	ds_load_u16_d16_hi v185, v132 offset:2240
	ds_load_u16_d16_hi v186, v132 offset:2496
	ds_load_u16_d16_hi v187, v132 offset:2752
	ds_load_u16_d16_hi v188, v132 offset:3008
	ds_load_u16_d16_hi v189, v132 offset:3264
	ds_load_u16_d16_hi v190, v132 offset:3520
	ds_load_u16_d16_hi v191, v132 offset:3776
	ds_load_u16_d16_hi v192, v132 offset:4032
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(38)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[74:81], v[41:48], v[17:24]
	s_waitcnt lgkmcnt(10)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[82:89], v[41:48], v[25:32]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v81, v132 offset:4128
	ds_load_u16_d16 v82, v132 offset:4384
	ds_load_u16_d16 v83, v132 offset:4640
	ds_load_u16_d16 v84, v132 offset:4896
	ds_load_u16_d16 v85, v132 offset:5152
	ds_load_u16_d16 v86, v132 offset:5408
	ds_load_u16_d16 v87, v132 offset:5664
	ds_load_u16_d16 v88, v132 offset:5920
	ds_load_u16_d16 v74, v132 offset:6464
	ds_load_u16_d16_hi v193, v132 offset:2272
	ds_load_u16_d16_hi v194, v132 offset:2528
	ds_load_u16_d16_hi v195, v132 offset:2784
	ds_load_u16_d16_hi v196, v132 offset:3040
	ds_load_u16_d16_hi v197, v132 offset:3296
	ds_load_u16_d16_hi v198, v132 offset:3552
	ds_load_u16_d16_hi v199, v132 offset:3808
	ds_load_u16_d16_hi v200, v132 offset:4064
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(17)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[185:192], v[41:48], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[193:200], v[41:48], v[1:8]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v41, v132 offset:6240
	ds_load_u16_d16 v89, v132 offset:6144
	ds_load_u16_d16 v91, v132 offset:6656
	ds_load_u16_d16 v75, v132 offset:6720
	ds_load_u16_d16 v92, v132 offset:6912
	ds_load_u16_d16 v76, v132 offset:6976
	ds_load_u16_d16 v93, v132 offset:7168
	ds_load_u16_d16 v77, v132 offset:7232
	ds_load_u16_d16 v94, v132 offset:7424
	ds_load_u16_d16 v78, v132 offset:7488
	ds_load_u16_d16 v95, v132 offset:7680
	ds_load_u16_d16 v79, v132 offset:7744
	ds_load_u16_d16 v96, v132 offset:7936
	ds_load_u16_d16 v90, v132 offset:6400
	ds_load_u16_d16 v80, v132 offset:8000
	ds_load_u16_d16 v42, v132 offset:6496
	ds_load_u16_d16 v43, v132 offset:6752
	ds_load_u16_d16 v44, v132 offset:7008
	ds_load_u16_d16 v45, v132 offset:7264
	ds_load_u16_d16 v46, v132 offset:7520
	ds_load_u16_d16 v47, v132 offset:7776
	ds_load_u16_d16 v48, v132 offset:8032
	ds_load_u16_d16_hi v97, v132 offset:4224
	ds_load_u16_d16_hi v99, v132 offset:4736
	ds_load_u16_d16_hi v100, v132 offset:4992
	ds_load_u16_d16_hi v101, v132 offset:5248
	ds_load_u16_d16_hi v102, v132 offset:5504
	ds_load_u16_d16_hi v103, v132 offset:5760
	ds_load_u16_d16_hi v104, v132 offset:6016
	ds_load_u16_d16_hi v98, v132 offset:4480
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[97:104], v[33:40], v[17:24]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v97, v132 offset:6176
	ds_load_u16_d16 v98, v132 offset:6432
	ds_load_u16_d16 v99, v132 offset:6688
	ds_load_u16_d16 v100, v132 offset:6944
	ds_load_u16_d16 v101, v132 offset:7200
	ds_load_u16_d16 v102, v132 offset:7456
	ds_load_u16_d16 v103, v132 offset:7712
	ds_load_u16_d16 v104, v132 offset:7968
	ds_load_u16_d16_hi v65, v132 offset:4288
	ds_load_u16_d16_hi v66, v132 offset:4544
	ds_load_u16_d16_hi v67, v132 offset:4800
	ds_load_u16_d16_hi v68, v132 offset:5056
	ds_load_u16_d16_hi v69, v132 offset:5312
	ds_load_u16_d16_hi v70, v132 offset:5568
	ds_load_u16_d16_hi v71, v132 offset:5824
	ds_load_u16_d16_hi v72, v132 offset:6080
	ds_load_u16_d16_hi v73, v132 offset:6336
	ds_load_u16_d16_hi v81, v132 offset:4256
	ds_load_u16_d16_hi v49, v132 offset:4320
	ds_load_u16_d16_hi v82, v132 offset:4512
	ds_load_u16_d16_hi v50, v132 offset:4576
	ds_load_u16_d16_hi v83, v132 offset:4768
	ds_load_u16_d16_hi v51, v132 offset:4832
	ds_load_u16_d16_hi v84, v132 offset:5024
	ds_load_u16_d16_hi v52, v132 offset:5088
	ds_load_u16_d16_hi v85, v132 offset:5280
	ds_load_u16_d16_hi v53, v132 offset:5344
	ds_load_u16_d16_hi v86, v132 offset:5536
	ds_load_u16_d16_hi v54, v132 offset:5600
	ds_load_u16_d16_hi v87, v132 offset:5792
	ds_load_u16_d16_hi v55, v132 offset:5856
	ds_load_u16_d16_hi v88, v132 offset:6048
	ds_load_u16_d16_hi v56, v132 offset:6112
	ds_load_u16_d16_hi v89, v132 offset:6272
	ds_load_u16_d16_hi v74, v132 offset:6592
	ds_load_u16_d16_hi v91, v132 offset:6784
	ds_load_u16_d16_hi v75, v132 offset:6848
	ds_load_u16_d16_hi v92, v132 offset:7040
	ds_load_u16_d16_hi v76, v132 offset:7104
	ds_load_u16_d16_hi v93, v132 offset:7296
	ds_load_u16_d16_hi v77, v132 offset:7360
	ds_load_u16_d16_hi v94, v132 offset:7552
	ds_load_u16_d16_hi v78, v132 offset:7616
	ds_load_u16_d16_hi v95, v132 offset:7808
	ds_load_u16_d16_hi v79, v132 offset:7872
	ds_load_u16_d16_hi v96, v132 offset:8064
	ds_load_u16_d16_hi v90, v132 offset:6528
	ds_load_u16_d16_hi v80, v132 offset:8128
	s_waitcnt lgkmcnt(47)
	ds_load_u16_d16_hi v97, v132 offset:6304
	ds_load_u16_d16_hi v41, v132 offset:6368
	s_waitcnt lgkmcnt(48)
	ds_load_u16_d16_hi v98, v132 offset:6560
	ds_load_u16_d16_hi v42, v132 offset:6624
	s_waitcnt lgkmcnt(49)
	ds_load_u16_d16_hi v99, v132 offset:6816
	ds_load_u16_d16_hi v43, v132 offset:6880
	s_waitcnt lgkmcnt(50)
	ds_load_u16_d16_hi v100, v132 offset:7072
	ds_load_u16_d16_hi v44, v132 offset:7136
	s_waitcnt lgkmcnt(51)
	ds_load_u16_d16_hi v101, v132 offset:7328
	ds_load_u16_d16_hi v45, v132 offset:7392
	s_waitcnt lgkmcnt(52)
	ds_load_u16_d16_hi v102, v132 offset:7584
	ds_load_u16_d16_hi v46, v132 offset:7648
	s_waitcnt lgkmcnt(53)
	ds_load_u16_d16_hi v103, v132 offset:7840
	ds_load_u16_d16_hi v47, v132 offset:7904
	s_waitcnt lgkmcnt(54)
	ds_load_u16_d16_hi v104, v132 offset:8096
	ds_load_u16_d16_hi v48, v132 offset:8160
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(48)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[65:72], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(32)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[81:88], v[33:40], v[25:32]
	s_waitcnt lgkmcnt(31)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[49:56], v[33:40], v[1:8]
	s_waitcnt lgkmcnt(17)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[89:96], v[57:64], v[17:24]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[97:104], v[57:64], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[73:80], v[57:64], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[57:64], v[1:8]
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	v_lshrrev_b32_e32 v0, 4, v0
	v_and_b32_e32 v33, 0x80, v126
	v_lshl_add_u32 v34, v122, 3, 0
	v_add_nc_u32_e32 v35, 0, v128
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v0, 4, v0
	s_barrier
	s_mov_b32 s11, 0x31027000
	ds_store_2addr_b64 v35, v[114:115], v[116:117] offset1:16
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v34, v33, v0
	s_barrier
	s_mov_b32 s10, 0x7ffffffe
	ds_load_b32 v0, v0
	.loc	1 841 48                        ; attention.py:841:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v0, v0, v17
	v_div_scale_f32 v35, null, v0, v0, v18
	v_div_scale_f32 v37, null, v0, v0, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v33
	v_div_scale_f32 v39, null, v0, v0, v20
	v_rcp_f32_e32 v46, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v37
	v_div_scale_f32 v41, null, v0, v0, v21
	v_div_scale_f32 v43, null, v0, v0, v22
	v_rcp_f32_e32 v48, v39
	v_rcp_f32_e32 v49, v41
	v_fma_f32 v54, -v33, v45, 1.0
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v50, v43
	v_fma_f32 v55, -v35, v46, 1.0
	v_fma_f32 v56, -v37, v47, 1.0
	v_div_scale_f32 v34, vcc_lo, v17, v0, v17
	v_fmac_f32_e32 v45, v54, v45
	v_div_scale_f32 v36, s1, v18, v0, v18
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v57, -v39, v48, 1.0
	v_fmac_f32_e32 v46, v55, v46
	v_div_scale_f32 v38, s3, v19, v0, v19
	v_dual_fmac_f32 v47, v56, v47 :: v_dual_mul_f32 v54, v34, v45
	v_fma_f32 v58, -v41, v49, 1.0
	v_div_scale_f32 v40, s4, v20, v0, v20
	v_fma_f32 v59, -v43, v50, 1.0
	v_dual_fmac_f32 v48, v57, v48 :: v_dual_mul_f32 v55, v36, v46
	v_mul_f32_e32 v56, v38, v47
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v49, v58, v49 :: v_dual_fmac_f32 v50, v59, v50
	v_fma_f32 v58, -v33, v54, v34
	v_div_scale_f32 v42, s5, v21, v0, v21
	v_mul_f32_e32 v57, v40, v48
	v_fma_f32 v59, -v35, v55, v36
	v_fma_f32 v60, -v37, v56, v38
	v_fmac_f32_e32 v54, v58, v45
	v_div_scale_f32 v44, null, v0, v0, v23
	v_mul_f32_e32 v62, v42, v49
	v_fma_f32 v61, -v39, v57, v40
	v_dual_fmac_f32 v55, v59, v46 :: v_dual_fmac_f32 v56, v60, v47
	v_fma_f32 v33, -v33, v54, v34
	v_rcp_f32_e32 v53, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v57, v61, v48
	v_fma_f32 v34, -v35, v55, v36
	v_fma_f32 v35, -v37, v56, v38
	v_div_fmas_f32 v33, v33, v45, v54
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v36, -v39, v57, v40
	v_div_fmas_f32 v34, v34, v46, v55
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v51, s6, v22, v0, v22
	v_div_fmas_f32 v35, v35, v47, v56
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v17, v33, v0, v17
	v_div_fmas_f32 v33, v36, v48, v57
	v_fma_f32 v36, -v44, v53, 1.0
	v_div_scale_f32 v52, null, v0, v0, v24
	v_div_fixup_f32 v18, v34, v0, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v34, v51, v50 :: v_dual_fmac_f32 v53, v36, v53
	v_div_scale_f32 v36, null, v0, v0, v25
	v_rcp_f32_e32 v37, v52
	v_fma_f32 v58, -v41, v62, v42
	v_div_fixup_f32 v20, v33, v0, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v36
	v_fma_f32 v33, -v43, v34, v51
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v19, v35, v0, v19
	v_div_scale_f32 v35, s3, v23, v0, v23
	v_fmac_f32_e32 v34, v33, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v38, -v52, v37, 1.0
	v_div_scale_f32 v46, null, v0, v0, v26
	v_fma_f32 v45, -v36, v40, 1.0
	v_mul_f32_e32 v33, v35, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, s4, v24, v0, v24
	v_fmac_f32_e32 v40, v45, v40
	v_div_scale_f32 v45, s5, v25, v0, v25
	v_fmac_f32_e32 v62, v58, v49
	v_div_scale_f32 v47, null, v0, v0, v28
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s1, 0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v39, -v41, v62, v42
	v_fma_f32 v41, -v43, v34, v51
	v_fma_f32 v42, -v44, v33, v35
	v_mul_f32_e32 v43, v38, v37
	v_div_fmas_f32 v39, v39, v49, v62
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v33, v42, v53
	v_div_fmas_f32 v34, v41, v50, v34
	v_rcp_f32_e32 v41, v46
	v_fma_f32 v42, -v52, v43, v38
	v_div_fixup_f32 v21, v39, v0, v21
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v22, v34, v0, v22
	v_fma_f32 v34, -v44, v33, v35
	v_fmac_f32_e32 v43, v42, v37
	v_div_scale_f32 v42, null, v0, v0, v27
	v_mul_f32_e32 v35, v45, v40
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v46, v41, 1.0
	v_div_fmas_f32 v33, v34, v53, v33
	v_fma_f32 v34, -v52, v43, v38
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v38, -v36, v35, v45
	v_fmac_f32_e32 v41, v39, v41
	v_rcp_f32_e32 v39, v42
	v_div_scale_f32 v44, s3, v26, v0, v26
	v_div_fmas_f32 v34, v34, v37, v43
	v_rcp_f32_e32 v37, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v35, v38, v40 :: v_dual_mul_f32 v38, v44, v41
	v_div_fixup_f32 v23, v33, v0, v23
	v_div_fixup_f32 v24, v34, v0, v24
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v42, v39, 1.0
	v_fma_f32 v34, -v46, v38, v44
	v_fma_f32 v33, -v36, v35, v45
	v_div_scale_f32 v36, s4, v27, v0, v27
	v_dual_fmac_f32 v39, v43, v39 :: v_dual_fmac_f32 v38, v34, v41
	v_fma_f32 v43, -v47, v37, 1.0
	v_div_scale_f32 v45, null, v0, v0, v29
	v_div_fmas_f32 v33, v33, v40, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v34, v36, v39 :: v_dual_fmac_f32 v37, v43, v37
	v_div_scale_f32 v43, null, v0, v0, v30
	v_rcp_f32_e32 v35, v45
	v_div_scale_f32 v40, s5, v28, v0, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v48, v43
	v_div_fixup_f32 v25, v33, v0, v25
	v_fma_f32 v33, -v46, v38, v44
	v_fma_f32 v44, -v42, v34, v36
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v49, -v45, v35, 1.0
	v_mul_f32_e32 v46, v40, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v34, v44, v39
	v_fma_f32 v44, -v43, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v35, v49, v35 :: v_dual_fmac_f32 v48, v44, v48
	v_div_fmas_f32 v33, v33, v41, v38
	v_fma_f32 v38, -v47, v46, v40
	v_div_scale_f32 v41, s3, v29, v0, v29
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v26, v33, v0, v26
	v_fma_f32 v33, -v42, v34, v36
	v_fmac_f32_e32 v46, v38, v37
	v_mul_f32_e32 v36, v41, v35
	v_div_scale_f32 v38, s6, v30, v0, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v33, v33, v39, v34
	v_div_scale_f32 v42, null, v0, v0, v31
	v_fma_f32 v39, -v45, v36, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v44, v38, v48
	v_fma_f32 v34, -v47, v46, v40
	v_rcp_f32_e32 v40, v42
	v_div_scale_f32 v47, null, v0, v0, v32
	v_fmac_f32_e32 v36, v39, v35
	v_fma_f32 v39, -v43, v44, v38
	v_div_fixup_f32 v27, v33, v0, v27
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v45, v36, v41
	v_fmac_f32_e32 v44, v39, v48
	v_div_fmas_f32 v34, v34, v37, v46
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v37, v47
	v_div_fmas_f32 v33, v33, v35, v36
	v_fma_f32 v35, -v43, v44, v38
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v46, -v42, v40, 1.0
	v_div_scale_f32 v45, null, v0, v0, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v35, v35, v48, v44
	v_div_fixup_f32 v28, v34, v0, v28
	v_div_scale_f32 v34, s4, v31, v0, v31
	v_fma_f32 v39, -v47, v37, 1.0
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v38, null, v0, v0, v9
	v_div_fixup_f32 v30, v35, v0, v30
	v_rcp_f32_e32 v35, v45
	v_fmac_f32_e32 v37, v39, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v41, v38
	v_mul_f32_e32 v36, v34, v40
	v_div_scale_f32 v39, s3, v32, v0, v32
	v_div_fixup_f32 v29, v33, v0, v29
	v_div_scale_f32 v48, null, v0, v0, v12
	v_fma_f32 v43, -v42, v36, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v45, v35, 1.0
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v50, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v35, v46, v35 :: v_dual_fmac_f32 v36, v43, v40
	v_fma_f32 v43, -v38, v41, 1.0
	v_fma_f32 v34, -v42, v36, v34
	v_div_scale_f32 v42, null, v0, v0, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v43, v41
	v_div_fmas_f32 v34, v34, v40, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_div_scale_f32 v40, s4, v10, v0, v10
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v31, v34, v0, v31
	v_mul_f32_e32 v49, v40, v35
	v_fma_f32 v46, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v44, v39, v37 :: v_dual_fmac_f32 v43, v46, v43
	v_fma_f32 v33, -v47, v44, v39
	v_div_scale_f32 v46, s6, v11, v0, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v44, v33, v37
	v_div_scale_f32 v33, s5, v9, v0, v9
	v_fma_f32 v36, -v47, v44, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v39, v33, v41
	v_div_fmas_f32 v36, v36, v37, v44
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v47, -v38, v39, v33
	v_fma_f32 v37, -v45, v49, v40
	v_mul_f32_e32 v44, v46, v43
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v32, v36, v0, v32
	v_fmac_f32_e32 v39, v47, v41
	v_fma_f32 v36, -v48, v50, 1.0
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v42, v44, v46
	v_div_scale_f32 v37, null, v0, v0, v13
	v_fma_f32 v33, -v38, v39, v33
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s3, v12, v0, v12
	v_fma_f32 v38, -v45, v49, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v41, v39
	s_mov_b32 vcc_lo, s4
	v_dual_mul_f32 v39, v36, v50 :: v_dual_fmac_f32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	v_div_fmas_f32 v35, v38, v35, v49
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v9, v33, v0, v9
	v_fma_f32 v38, -v42, v44, v46
	v_div_scale_f32 v40, null, v0, v0, v14
	v_div_fixup_f32 v10, v35, v0, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v38, v38, v43, v44
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v37, v34, 1.0
	v_fma_f32 v43, -v48, v39, v36
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v11, v38, v0, v11
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s4, v13, v0, v13
	v_fmac_f32_e32 v39, v43, v50
	v_div_scale_f32 v38, null, v0, v0, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v33, v41, v34
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v36, -v48, v39, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v44, v38
	v_fma_f32 v35, -v40, v42, 1.0
	v_fma_f32 v43, -v37, v33, v41
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v36, v36, v50, v39
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v42, v35, v42
	v_fmac_f32_e32 v33, v43, v34
	v_div_scale_f32 v43, null, v0, v0, v16
	v_div_fixup_f32 v12, v36, v0, v12
	v_div_scale_f32 v35, s5, v14, v0, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v37, v33, v41
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v44, v41, v44
	v_div_fmas_f32 v33, v36, v34, v33
	v_div_scale_f32 v41, null, v0, v0, v2
	v_div_scale_f32 v34, null, v0, v0, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v13, v33, v0, v13
	v_fma_f32 v33, -v43, v45, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v47, v41
	v_div_scale_f32 v36, s3, v15, v0, v15
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v45, v33, v45
	v_div_scale_f32 v33, s4, v16, v0, v16
	v_mul_f32_e32 v39, v35, v42
	v_div_scale_f32 v48, s5, v1, v0, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v41, v47, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v37, -v40, v39, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s6, v2, v0, v2
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v39, v35
	v_mul_f32_e32 v40, v36, v44
	v_fma_f32 v46, -v34, v37, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v0, v0, v3
	v_mul_f32_e32 v51, v48, v37
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v33, v45
	v_rcp_f32_e32 v50, v46
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v14, v35, v0, v14
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v35, -v38, v40, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	v_fma_f32 v33, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v51, v36, v37
	v_div_fmas_f32 v35, v35, v44, v40
	v_div_scale_f32 v40, null, v0, v0, v4
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s3, v3, v0, v3
	v_div_fmas_f32 v33, v33, v45, v42
	v_rcp_f32_e32 v42, v40
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_mul_f32_e32 v36, v39, v50
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v15, v35, v0, v15
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v35, -v40, v42, 1.0
	v_div_fixup_f32 v16, v33, v0, v16
	v_div_fmas_f32 v37, v37, v47, v38
	v_fmac_f32_e32 v36, v41, v50
	v_div_fixup_f32 v1, v34, v0, v1
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v0, v0, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v46, v36, v39
	v_div_scale_f32 v34, null, v0, v0, v5
	v_rcp_f32_e32 v39, v35
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v2, v37, v0, v2
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v37, null, v0, v0, v7
	v_div_scale_f32 v44, null, v0, v0, v8
	v_div_scale_f32 v38, vcc_lo, v4, v0, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v41, v37
	v_fma_f32 v45, -v35, v39, 1.0
	v_div_fixup_f32 v3, v33, v0, v3
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v33, -v34, v36, 1.0
	v_rcp_f32_e32 v46, v44
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s4, v6, v0, v6
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s3, v5, v0, v5
	v_fma_f32 v48, -v37, v41, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v51, v45, v39
	v_mul_f32_e32 v43, v38, v42
	v_mul_f32_e32 v49, v33, v36
	v_fma_f32 v50, -v44, v46, 1.0
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s5, v7, v0, v7
	v_fma_f32 v47, -v40, v43, v38
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v16, 0, v16, s1
	v_cndmask_b32_e64 v1, 0, v1, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v52, v48, v41
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v33
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s6, v8, v0, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v40, v43, v38
	v_fmac_f32_e32 v49, v47, v36
	v_fma_f32 v47, -v37, v52, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v53, v50, v46
	v_fma_f32 v40, -v35, v51, v45
	v_div_fmas_f32 v38, v38, v42, v43
	v_fma_f32 v33, -v34, v49, v33
	v_fmac_f32_e32 v52, v47, v41
	v_fma_f32 v34, -v44, v53, v50
	v_fmac_f32_e32 v51, v40, v39
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v4, v38, v0, v4
	v_div_fmas_f32 v33, v33, v36, v49
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v35, -v35, v51, v45
	v_fma_f32 v34, -v37, v52, v48
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v33, v0, v5
	v_fma_f32 v36, -v44, v53, v50
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s5
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v6, v35, v0, v6
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v7, v34, v0, v7
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v8, 0, v17, s1
	v_cndmask_b32_e64 v17, 0, v18, s1
	v_cndmask_b32_e64 v18, 0, v19, s1
	v_cndmask_b32_e64 v19, 0, v20, s1
	v_cndmask_b32_e64 v20, 0, v21, s1
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_bfe_u32 v37, v8, 16, 1
	v_bfe_u32 v38, v17, 16, 1
	v_bfe_u32 v39, v18, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v22, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s5, v8, v8
	v_add3_u32 v37, v8, v37, 0x7fff
	v_add3_u32 v8, v17, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v17, v17
	v_add3_u32 v17, v18, v39, 0x7fff
	v_cmp_o_f32_e64 s7, v18, v18
	v_bfe_u32 v18, v19, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v22, 0, v23, s1
	v_cndmask_b32_e64 v23, 0, v24, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v8.l, 0x7fff, v37.h, s5
	v_bfe_u32 v37, v20, 16, 1
	v_bfe_u32 v38, v21, 16, 1
	v_add3_u32 v18, v19, v18, 0x7fff
	v_cmp_o_f32_e64 s5, v19, v19
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v24, 0, v25, s1
	v_cndmask_b32_e64 v25, 0, v26, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s6
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s7
	v_add3_u32 v19, v20, v37, 0x7fff
	v_cmp_o_f32_e64 s6, v20, v20
	v_add3_u32 v20, v21, v38, 0x7fff
	v_cmp_o_f32_e64 s7, v21, v21
	v_cndmask_b16 v17.h, 0x7fff, v18.h, s5
	v_bfe_u32 v18, v22, 16, 1
	v_bfe_u32 v21, v23, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v26, 0, v27, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s6
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s7
	v_bfe_u32 v20, v24, 16, 1
	v_add3_u32 v18, v22, v18, 0x7fff
	v_cmp_o_f32_e64 s5, v22, v22
	v_add3_u32 v21, v23, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v23, v23
	v_bfe_u32 v22, v25, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v27, 0, v28, s1
	v_cndmask_b32_e64 v28, 0, v29, s1
	v_cndmask_b32_e64 v29, 0, v30, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v20, v24, v20, 0x7fff
	v_cmp_o_f32_e64 s7, v24, v24
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s5
	v_cndmask_b16 v18.h, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v26, 16, 1
	v_add3_u32 v22, v25, v22, 0x7fff
	v_cmp_o_f32_e64 s5, v25, v25
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s7
	v_bfe_u32 v23, v27, 16, 1
	v_add3_u32 v21, v26, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v26, v26
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s5
	v_bfe_u32 v22, v28, 16, 1
	v_bfe_u32 v24, v29, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v30, 0, v31, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v23, v27, v23, 0x7fff
	v_cmp_o_f32_e64 s7, v27, v27
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s6
	v_add3_u32 v22, v28, v22, 0x7fff
	v_cmp_o_f32_e64 s5, v28, v28
	v_add3_u32 v24, v29, v24, 0x7fff
	v_cmp_o_f32_e64 s6, v29, v29
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v31, 0, v32, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s7
	v_bfe_u32 v23, v30, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s5
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s6
	v_bfe_u32 v24, v9, 16, 1
	v_bfe_u32 v25, v31, 16, 1
	v_bfe_u32 v26, v10, 16, 1
	v_add3_u32 v23, v30, v23, 0x7fff
	v_cmp_o_f32_e64 s7, v30, v30
	v_add3_u32 v24, v9, v24, 0x7fff
	v_cmp_o_f32_e64 s6, v9, v9
	v_add3_u32 v25, v31, v25, 0x7fff
	v_cmp_o_f32_e64 s5, v31, v31
	v_add3_u32 v9, v10, v26, 0x7fff
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s7
	v_cmp_o_f32_e64 s7, v10, v10
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v24.h, s6
	v_bfe_u32 v24, v12, 16, 1
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s5
	v_bfe_u32 v25, v13, 16, 1
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v11, v11
	v_add3_u32 v11, v12, v24, 0x7fff
	v_cmp_o_f32_e64 s6, v12, v12
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s7
	v_add3_u32 v12, v13, v25, 0x7fff
	v_cmp_o_f32_e64 s7, v13, v13
	v_bfe_u32 v13, v14, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s5
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s6
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v24, v16, 16, 1
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v14, v14
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s7
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s6, v15, v15
	v_add3_u32 v14, v16, v24, 0x7fff
	v_cmp_o_f32_e64 s7, v16, v16
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v1, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s6
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s7
	v_bfe_u32 v14, v3, 16, 1
	v_add3_u32 v13, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v1, v1
	v_add3_u32 v1, v2, v15, 0x7fff
	v_cmp_o_f32_e64 s6, v2, v2
	v_add3_u32 v2, v3, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v3, v3
	v_bfe_u32 v3, v4, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v7, 0, v7, s1
	v_cndmask_b32_e64 v0, 0, v0, s1
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v1.l, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v5, 16, 1
	v_add3_u32 v3, v4, v3, 0x7fff
	v_cmp_o_f32_e64 s5, v4, v4
	v_bfe_u32 v4, v6, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s6
	v_add3_u32 v13, v5, v13, 0x7fff
	v_bfe_u32 v14, v7, 16, 1
	v_cmp_o_f32_e64 s6, v5, v5
	v_bfe_u32 v5, v0, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s7
	v_add3_u32 v4, v6, v4, 0x7fff
	v_cmp_o_f32_e64 s7, v6, v6
	v_add3_u32 v6, v7, v14, 0x7fff
	v_cmp_o_f32_e64 s8, v7, v7
	v_add3_u32 v5, v0, v5, 0x7fff
	v_cmp_o_f32_e64 s9, v0, v0
	v_cndmask_b16 v0.l, 0x7fff, v13.h, s6
	v_cndmask_b16 v0.h, 0x7fff, v4.h, s7
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s5
	v_cndmask_b16 v3.l, 0x7fff, v6.h, s8
	v_cndmask_b16 v3.h, 0x7fff, v5.h, s9
	.loc	1 843 74                        ; attention.py:843:74
	v_lshrrev_b32_e32 v32, 1, v121
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v5, v8, v19, s0
	v_cndmask_b32_e64 v6, v18, v17, s0
	v_cndmask_b32_e64 v7, v17, v18, s0
	v_cndmask_b32_e64 v13, v20, v22, s0
	v_cndmask_b32_e64 v16, v12, v9, s0
	v_cndmask_b32_e64 v9, v9, v12, s0
	v_cndmask_b32_e64 v12, v11, v10, s0
	v_cndmask_b32_e64 v10, v10, v11, s0
	v_cndmask_b32_e64 v17, v0, v1, s0
	v_cndmask_b32_e64 v0, v1, v0, s0
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v36, s85, v118
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v15, v21, v23, s0
	v_cndmask_b32_e64 v1, v2, v3, s0
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v33, 16, v32
	s_mov_b32 s5, 0x76543210
	v_or_b32_e32 v34, 32, v32
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v18, v3, v2, s0
	v_permlanex16_b32 v2, v5, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v13, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v10, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v0, s5, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v4, v19, v8, s0
	v_cndmask_b32_e64 v8, v22, v20, s0
	v_permlanex16_b32 v9, v9, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v35, 48, v32
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v14, v23, v21, s0
	v_permlanex16_b32 v3, v7, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v15, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v1, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s85, v33
	v_cmp_gt_i32_e64 s4, s85, v32
	v_cmp_gt_i32_e64 s1, s85, v34
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v10, v11, v12, v119
	v_perm_b32 v11, v11, v12, v120
	v_perm_b32 v12, v13, v17, v119
	v_perm_b32 v13, v13, v17, v120
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v17, v36, v33, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v0, v2, v4, v119
	v_perm_b32 v1, v2, v4, v120
	v_perm_b32 v4, v5, v8, v119
	v_perm_b32 v5, v5, v8, v120
	v_perm_b32 v8, v9, v16, v119
	v_perm_b32 v9, v9, v16, v120
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v16, v36, v32, 1
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s3, s85, v35
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v2, v3, v6, v119
	v_perm_b32 v3, v3, v6, v120
	v_perm_b32 v6, v7, v14, v119
	v_perm_b32 v7, v7, v14, v120
	v_perm_b32 v14, v15, v18, v119
	v_perm_b32 v15, v15, v18, v120
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v18, v36, v34, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s2, vcc_lo
	s_and_b32 s0, s2, s4
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v19, v36, v35, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 846 17                        ; attention.py:846:17
	s_and_b32 s9, s91, 0xffff
	s_mov_b32 s8, s90
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[8:11], 0 offen
	buffer_store_b128 v[4:7], v17, s[8:11], 0 offen
	buffer_store_b128 v[8:11], v18, s[8:11], 0 offen
	buffer_store_b128 v[12:15], v19, s[8:11], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp167:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_vgpr 207
		.amdhsa_next_free_sgpr 105
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_vgpr, 207
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17972
; TotalNumSgprs: 107
; NumVgprs: 207
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 25
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 207
; Occupancy: 7
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
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
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
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	687                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	691                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
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
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
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
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     107
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     207
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
