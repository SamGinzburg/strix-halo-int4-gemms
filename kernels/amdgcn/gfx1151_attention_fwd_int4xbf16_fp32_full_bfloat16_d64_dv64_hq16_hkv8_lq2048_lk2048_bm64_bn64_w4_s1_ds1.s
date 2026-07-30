	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b128 s[84:87], s[0:1], 0x60
	v_dual_mov_b32 v42, 0x5410 :: v_dual_and_b32 v1, 1, v0
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v2, 1, v0
	s_clause 0x1
	s_load_b256 s[68:75], s[0:1], 0x0
	s_load_b64 s[4:5], s[0:1], 0x70
	v_dual_mov_b32 v186, 0xff800000 :: v_dual_lshlrev_b32 v1, 4, v1
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s6, s2, 6
	.loc	1 583 26                        ; attention.py:583:26
	s_lshl_b32 s2, s3, 11
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, s6, v2
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s7, s6, s2
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v38, 0x60, v0
	s_mov_b32 s95, 0x31027000
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, 0x800, v4
	s_mov_b32 s94, 0x7ffffffe
	v_dual_mov_b32 v43, 0x7632 :: v_dual_and_b32 v124, 15, v0
	s_clause 0x1
	s_load_b64 s[96:97], s[0:1], 0x20
	s_load_b128 s[88:91], s[0:1], 0x30
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	.loc	1 584 26                        ; attention.py:584:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[109:110], null, s84, v2, v[1:2]
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e32 vcc_lo, s84, v1
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s93, s69, 0xffff
	s_mov_b32 s92, s68
	v_dual_mov_b32 v26, v17 :: v_dual_lshlrev_b32 v129, 2, v0
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 s2, s2, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[2:3], null, s84, s7, v[109:110]
	.loc	1 566 23                        ; attention.py:566:23
	s_lshr_b32 s0, s0, 28
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v40, 3, v0
	v_dual_mov_b32 v18, v17 :: v_dual_and_b32 v41, 7, v0
	v_dual_mov_b32 v20, v17 :: v_dual_and_b32 v123, 16, v0
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 570 31                        ; attention.py:570:31
	v_bfe_u32 v45, v0, 4, 1
	v_dual_mov_b32 v22, v17 :: v_dual_lshlrev_b32 v47, 1, v0
	v_dual_mov_b32 v24, v17 :: v_dual_and_b32 v49, 12, v0
	.loc	1 585 26                        ; attention.py:585:26
	buffer_load_b128 v[33:36], v1, s[92:95], 0 offen
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v1, 1, v38
	.loc	1 590 31                        ; attention.py:590:31
	s_and_b32 s93, s75, 0xffff
	s_mov_b32 s92, s74
	v_bfe_i32 v54, v0, 2, 1
	v_bfe_i32 v57, v0, 5, 1
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v1, v1, v124
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v4, v17 :: v_dual_and_b32 v63, 0x7c, v129
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s1, s0, -16
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 591 17                        ; attention.py:591:17
	v_or_b32_e32 v120, s7, v1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s6, v1
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s3, s3, s1
	v_mov_b32_e32 v189, 0xff800000
	v_dual_mov_b32 v125, 0xff800000 :: v_dual_lshlrev_b32 v130, 4, v0
	.loc	1 590 31                        ; attention.py:590:31
	v_lshlrev_b32_e32 v2, 1, v120
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, 0x800, v1
	.loc	1 584 86                        ; attention.py:584:86
	v_bfe_i32 v46, v0, 0, 1
	v_dual_mov_b32 v19, v17 :: v_dual_and_b32 v48, 24, v0
	v_dual_mov_b32 v21, v17 :: v_dual_and_b32 v50, 3, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 590 31                        ; attention.py:590:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_dual_mov_b32 v32, v17 :: v_dual_and_b32 v55, 8, v0
	v_bfe_i32 v56, v0, 3, 1
	v_dual_mov_b32 v25, v17 :: v_dual_lshlrev_b32 v60, 1, v49
	buffer_load_u16 v37, v1, s[92:95], 0 offen
	v_dual_mov_b32 v9, v17 :: v_dual_and_b32 v54, 0x2040, v54
	v_dual_mov_b32 v11, v17 :: v_dual_lshlrev_b32 v66, 6, v123
	v_dual_mov_b32 v12, v17 :: v_dual_lshlrev_b32 v39, 3, v41
	v_dual_mov_b32 v14, v17 :: v_dual_lshlrev_b32 v41, 4, v41
	v_dual_mov_b32 v16, v17 :: v_dual_lshlrev_b32 v61, 2, v38
	v_dual_mov_b32 v8, v17 :: v_dual_and_b32 v57, 0x2040, v57
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v58, s6, v40
	.loc	1 585 26                        ; attention.py:585:26
	v_and_or_b32 v59, v47, 30, v45
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_u32 s1, s3, 0x10007
	v_lshrrev_b32_e32 v64, 3, v38
	v_lshl_or_b32 v38, v38, 4, v63
	s_add_i32 s8, s3, s1
	v_dual_mov_b32 v30, v17 :: v_dual_and_b32 v53, 4, v0
	v_mov_b32_e32 v13, v17
	v_dual_mov_b32 v6, v17 :: v_dual_lshlrev_b32 v65, 5, v50
	v_xor_b32_e32 v132, v130, v48
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s1, 0x800, v58
	.loc	1 585 26                        ; attention.py:585:26
	v_lshlrev_b32_e32 v58, 2, v59
	v_lshl_or_b32 v134, v124, 5, v60
	v_lshl_or_b32 v41, v48, 8, v41
	v_lshl_or_b32 v48, v48, 1, v61
	v_and_or_b32 v46, 0x1020, v46, v54
	v_lshl_or_b32 v54, v55, 4, v66
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_i32 s8, s8, 0x80000
	v_and_or_b32 v55, 0x1020, v56, v57
	s_sext_i32_i16 s8, s8
	v_xor_b32_e32 v137, v38, v64
	v_mul_lo_u32 v38, s5, v40
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s0, 4
	.loc	1 632 32                        ; attention.py:632:32
	s_lshl_b32 s8, s8, 10
	.loc	1 570 31                        ; attention.py:570:31
	v_bfe_i32 v44, v0, 4, 1
	v_dual_mov_b32 v2, v17 :: v_dual_lshlrev_b32 v49, 5, v49
	v_dual_mov_b32 v74, v17 :: v_dual_and_b32 v47, 0x80, v47
	v_lshl_add_u32 v53, v53, 9, 0
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v56, 4, v58
	v_xor_b32_e32 v63, 24, v134
	v_xor_b32_e32 v135, v41, v48
	v_xor_b32_e32 v41, v55, v65
	.loc	1 632 32                        ; attention.py:632:32
	s_lshl_b32 s7, s0, 14
	s_and_b32 s8, s8, 0xfffff800
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s0, s87, s0
	.loc	1 632 32                        ; attention.py:632:32
	s_add_i32 s87, s8, s7
	v_dual_mov_b32 v27, v17 :: v_dual_and_b32 v62, 0x630, v130
	v_dual_mov_b32 v29, v17 :: v_dual_and_b32 v44, 0x2040, v44
	v_lshl_or_b32 v49, v50, 11, v49
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[110:111], null, s85, v40, v[39:40]
	v_add3_u32 v47, v53, v47, v41
	v_add_nc_u32_e32 v143, 0, v63
	v_or_b32_e32 v144, s87, v45
	v_lshl_add_u32 v45, s5, 4, v38
	v_lshl_add_u32 v63, s5, 5, v38
	v_mad_u64_u32 v[40:41], null, s5, 48, v[38:39]
	v_add_nc_u32_e32 v145, v39, v38
	.loc	1 676 27                        ; attention.py:676:27
	s_mul_i32 s4, s4, s3
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v67, 4, v39
	v_or3_b32 v136, v62, v44, v49
	s_mov_b32 s100, s88
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 s88, s4, s0
	v_xor_b32_e32 v44, 0x2040, v135
	.loc	1 585 26                        ; attention.py:585:26
	v_cmp_eq_u32_e64 s0, 0, v123
	v_dual_mov_b32 v28, v17 :: v_dual_and_b32 v51, 28, v0
	v_dual_mov_b32 v23, v17 :: v_dual_lshlrev_b32 v52, 3, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v3, v17 :: v_dual_add_nc_u32 v146, 0, v44
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v177, v39, v45
	v_add_nc_u32_e32 v179, v67, v45
	v_cndmask_b32_e64 v42, 0x1054, v42, s0
	v_cndmask_b32_e64 v43, 0x3276, v43, s0
	v_dual_mov_b32 v31, v17 :: v_dual_and_b32 v52, 0x310, v52
	v_lshl_or_b32 v50, v51, 7, v65
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s3, s85, v39
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v178, v39, v63
	v_add_nc_u32_e32 v181, v39, v40
	v_add_nc_u32_e32 v182, v67, v40
	v_lshl_or_b32 v39, v42, 8, v42
	v_lshl_or_b32 v40, v43, 8, v43
	v_mad_u64_u32 v[111:112], null, s85, 48, v[110:111]
	v_xor_b32_e32 v59, 8, v132
	v_xor_b32_e32 v57, 8, v134
	v_xor_b32_e32 v60, 16, v134
	v_or3_b32 v138, v50, v61, v51
	v_or3_b32 v139, v46, v54, v52
	v_dual_mov_b32 v15, v17 :: v_dual_add_nc_u32 v140, 0, v59
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v1, v17 :: v_dual_add_nc_u32 v142, 0, v60
	v_dual_mov_b32 v76, v17 :: v_dual_add_nc_u32 v141, 0, v57
	v_xor_b32_e32 v46, 16, v136
	v_xor_b32_e32 v48, 32, v136
	v_xor_b32_e32 v49, 48, v136
	v_xor_b32_e32 v50, 64, v136
	v_xor_b32_e32 v51, 0x50, v136
	v_xor_b32_e32 v52, 0x60, v136
	v_xor_b32_e32 v54, 0x70, v136
	v_xor_b32_e32 v55, 0x810, v137
	v_xor_b32_e32 v59, 4, v138
	v_xor_b32_e32 v61, 8, v138
	v_xor_b32_e32 v62, 12, v138
	v_xor_b32_e32 v64, 16, v138
	v_xor_b32_e32 v65, 20, v138
	v_xor_b32_e32 v53, 24, v138
	v_xor_b32_e32 v66, 28, v138
	v_xor_b32_e32 v68, 32, v139
	v_xor_b32_e32 v57, 64, v139
	v_xor_b32_e32 v60, 0x60, v139
	v_dual_mov_b32 v185, 0xff800000 :: v_dual_mov_b32 v188, 0xff800000
	v_dual_mov_b32 v187, 0xff800000 :: v_dual_mov_b32 v128, 0xff800000
	v_dual_mov_b32 v127, 0xff800000 :: v_dual_mov_b32 v126, 0xff800000
	v_dual_mov_b32 v10, v17 :: v_dual_and_b32 v131, 0x78, v0
	v_dual_mov_b32 v5, v17 :: v_dual_add_nc_u32 v148, 0, v48
	v_dual_mov_b32 v7, v17 :: v_dual_add_nc_u32 v150, 0, v50
	v_dual_mov_b32 v73, v17 :: v_dual_add_nc_u32 v152, 0, v52
	v_dual_mov_b32 v75, v17 :: v_dual_add_nc_u32 v154, 0, v55
	v_lshl_add_u32 v133, v124, 1, 0
	v_add_nc_u32_e32 v147, 0, v46
	v_add_nc_u32_e32 v149, 0, v49
	v_add_nc_u32_e32 v151, 0, v51
	v_add_nc_u32_e32 v153, 0, v54
	v_add_nc_u32_e32 v155, 0, v59
	v_add_nc_u32_e32 v156, 0, v61
	v_add_nc_u32_e32 v157, 0, v62
	v_add_nc_u32_e32 v158, 0, v64
	v_add_nc_u32_e32 v159, 0, v65
	v_add_nc_u32_e32 v160, 0, v53
	v_add_nc_u32_e32 v161, 0, v66
	v_add_nc_u32_e32 v162, 0, v68
	v_add_nc_u32_e32 v163, 0, v57
	v_add_nc_u32_e32 v164, 0, v60
	v_add_nc_u32_e32 v165, v47, v123
	v_or_b32_e32 v166, 42, v144
	v_or_b32_e32 v167, 44, v144
	v_or_b32_e32 v168, 46, v144
	v_or_b32_e32 v169, 48, v144
	v_or_b32_e32 v170, 50, v144
	v_or_b32_e32 v171, 52, v144
	v_or_b32_e32 v172, 54, v144
	v_or_b32_e32 v173, 56, v144
	v_or_b32_e32 v174, 58, v144
	v_or_b32_e32 v175, 60, v144
	v_or_b32_e32 v176, 62, v144
	v_add_nc_u32_e32 v180, v67, v63
	v_add_nc_u32_e32 v184, 4, v145
	s_mov_b32 s76, 0
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s86, s86, 0x3fb8aa3b
	.loc	1 674 25                        ; attention.py:674:25
	s_mul_i32 s6, s5, s6
	s_and_b32 s71, s71, 0xffff
	s_and_b32 s89, s89, 0xffff
	s_mov_b32 s69, 0x76543210
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
	s_mov_b32 s104, s76
	s_and_b32 s97, s97, 0xffff
	s_and_b32 s73, s73, 0xffff
	s_mov_b32 s101, s89
	s_add_i32 s88, s88, s6
	s_mov_b32 s74, s94
	s_mov_b32 s75, s95
	s_mov_b32 s92, s70
	s_mov_b32 s93, s71
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v38, v58, v33
	ds_bpermute_b32 v33, v56, v33
	ds_bpermute_b32 v41, v58, v34
	ds_bpermute_b32 v34, v56, v34
	ds_bpermute_b32 v44, v58, v35
	ds_bpermute_b32 v35, v56, v35
	ds_bpermute_b32 v45, v58, v36
	ds_bpermute_b32 v36, v56, v36
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v112, v33, v38, s0
	v_cndmask_b32_e64 v114, v38, v33, s0
	v_and_b32_e32 v33, 0x540054, v39
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v113, v34, v41, s0
	v_cndmask_b32_e64 v115, v41, v34, s0
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v116, v35, v44, s0
	v_cndmask_b32_e64 v118, v44, v35, s0
	v_lshl_or_b32 v33, v33, 4, v33
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v117, v36, v45, s0
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v183, 16, v37
	v_and_b32_e32 v37, 0x760076, v40
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v119, v45, v36, s0
	v_and_b32_e32 v121, 0x5040504, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v34, v37, 4, v37
	v_and_b32_e32 v122, 0x7060706, v34
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 633 32                        ; attention.py:633:32
	s_or_b32 s4, s104, s87
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 s5, s88, s104
	.loc	1 633 32                        ; attention.py:633:32
	v_mad_u64_u32 v[43:44], null, s4, s84, v[109:110]
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v44, s5, v145, 2
	v_add_lshl_u32 v45, s5, v184, 2
	v_add_lshl_u32 v46, s5, v177, 2
	v_add_lshl_u32 v47, s5, v179, 2
	v_add_lshl_u32 v48, s5, v178, 2
	v_cndmask_b32_e64 v52, 0x80000000, v44, s1
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v43, 0x80000000, v43, vcc_lo
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v53, 0x80000000, v45, s1
	v_cndmask_b32_e64 v54, 0x80000000, v46, s1
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v33, s76 :: v_dual_add_nc_u32 v42, 0, v132
	.loc	1 634 32                        ; attention.py:634:32
	buffer_load_b128 v[43:46], v43, s[92:95], 0 offen
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v49, s5, v180, 2
	v_add_lshl_u32 v50, s5, v181, 2
	v_add_lshl_u32 v51, s5, v182, 2
	v_cndmask_b32_e64 v47, 0x80000000, v47, s1
	v_cndmask_b32_e64 v48, 0x80000000, v48, s1
	v_cndmask_b32_e64 v49, 0x80000000, v49, s1
	v_cndmask_b32_e64 v50, 0x80000000, v50, s1
	v_cndmask_b32_e64 v51, 0x80000000, v51, s1
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v34, s77 :: v_dual_add_nc_u32 v41, 0, v134
	v_dual_mov_b32 v35, s78 :: v_dual_mov_b32 v36, s79
	v_dual_mov_b32 v37, s80 :: v_dual_mov_b32 v38, s81
	v_dual_mov_b32 v39, s82 :: v_dual_mov_b32 v40, s83
	v_or_b32_e32 v103, 10, v144
	v_or_b32_e32 v107, 18, v144
	v_or_b32_e32 v104, 12, v144
	v_or_b32_e32 v108, 20, v144
	v_or_b32_e32 v105, 14, v144
	v_or_b32_e32 v190, 22, v144
	v_or_b32_e32 v106, 16, v144
	v_or_b32_e32 v191, 24, v144
	v_or_b32_e32 v192, 26, v144
	v_or_b32_e32 v193, 28, v144
	v_or_b32_e32 v194, 30, v144
	v_or_b32_e32 v195, 32, v144
	v_or_b32_e32 v196, 34, v144
	v_or_b32_e32 v197, 36, v144
	v_or_b32_e32 v198, 38, v144
	v_or_b32_e32 v199, 40, v144
	v_or_b32_e32 v66, 2, v144
	v_or_b32_e32 v67, 4, v144
	v_or_b32_e32 v68, 6, v144
	v_or_b32_e32 v101, 8, v144
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v205, s104, v166, 1
	v_add_lshl_u32 v206, s104, v167, 1
	v_add_lshl_u32 v207, s104, v168, 1
	v_add_lshl_u32 v208, s104, v169, 1
	v_add_lshl_u32 v204, s104, v199, 1
	v_add_lshl_u32 v65, s104, v144, 1
	v_add_lshl_u32 v66, s104, v66, 1
	v_add_lshl_u32 v67, s104, v67, 1
	v_add_lshl_u32 v68, s104, v68, 1
	v_add_lshl_u32 v101, s104, v101, 1
	.loc	1 693 30                        ; attention.py:693:30
	s_mul_i32 s4, s4, s85
	.loc	1 685 25                        ; attention.py:685:25
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v42, v[43:44]
	ds_store_b64 v140, v[45:46]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 683 36                        ; attention.py:683:36
	s_clause 0x7
	buffer_load_b128 v[57:60], v52, s[100:103], 0 offen
	buffer_load_b128 v[200:203], v53, s[100:103], 0 offen
	buffer_load_b128 v[217:220], v54, s[100:103], 0 offen
	buffer_load_b128 v[221:224], v47, s[100:103], 0 offen
	buffer_load_b128 v[225:228], v48, s[100:103], 0 offen
	buffer_load_b128 v[229:232], v49, s[100:103], 0 offen
	buffer_load_b128 v[233:236], v50, s[100:103], 0 offen
	buffer_load_b128 v[237:240], v51, s[100:103], 0 offen
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[61:64], v41 offset1:1
	ds_load_2addr_stride64_b64 v[69:72], v41 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[77:80], v141 offset1:1
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v185, v185, v185 :: v_dual_max_f32 v188, v188, v188
	v_dual_max_f32 v186, v186, v186 :: v_dual_max_f32 v187, v187, v187
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[61:62], v[112:113], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[63:64], v[112:113], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[69:70], v[112:113], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[209:216], v[71:72], v[112:113], v[33:40] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[33:36], v141 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[37:40], v142 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[77:78], v[116:117], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[79:80], v[116:117], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[33:34], v[116:117], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[209:216], v[35:36], v[116:117], v[209:216] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[33:36], v142 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[37:38], v[114:115], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[39:40], v[114:115], v[49:56] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[37:40], v143 offset1:1
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[90:97], v[33:34], v[114:115], v[90:97] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[209:216], v[35:36], v[114:115], v[209:216] neg_lo:[1,1,0]
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[33:36], v143 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[37:38], v[118:119], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[39:40], v[118:119], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v61, v41
	v_cvt_f32_i32_e32 v69, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v72, v48
	v_cvt_f32_i32_e32 v71, v47
	v_cvt_f32_i32_e32 v70, v46
	v_cvt_f32_i32_e32 v85, v52
	.loc	1 684 35                        ; attention.py:684:35
	v_add_nc_u32_e32 v102, 0, v135
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v62, v42
	v_cvt_f32_i32_e32 v63, v43
	v_cvt_f32_i32_e32 v64, v44
	v_cvt_f32_i32_e32 v77, v49
	v_cvt_f32_i32_e32 v83, v50
	v_cvt_f32_i32_e32 v84, v51
	v_cvt_f32_i32_e32 v86, v53
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[209:216], v[35:36], v[118:119], v[209:216] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[90:97], v[33:34], v[118:119], v[90:97] neg_lo:[1,1,0]
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v87, v54
	v_cvt_f32_i32_e32 v88, v55
	v_cvt_f32_i32_e32 v89, v56
	v_cvt_f32_i32_e32 v82, v216
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v216, s104, v103, 1
	v_add_lshl_u32 v103, s104, v107, 1
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v98, v209
	v_cvt_f32_i32_e32 v99, v210
	v_cvt_f32_i32_e32 v100, v211
	v_cvt_f32_i32_e32 v78, v212
	v_cvt_f32_i32_e32 v79, v213
	v_cvt_f32_i32_e32 v80, v214
	v_cvt_f32_i32_e32 v81, v215
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v209, s104, v170, 1
	v_add_lshl_u32 v210, s104, v171, 1
	v_add_lshl_u32 v211, s104, v172, 1
	v_add_lshl_u32 v212, s104, v173, 1
	v_add_lshl_u32 v213, s104, v174, 1
	v_add_lshl_u32 v214, s104, v175, 1
	v_add_lshl_u32 v215, s104, v176, 1
	v_add_lshl_u32 v107, s104, v192, 1
	v_add_lshl_u32 v192, s104, v196, 1
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v90, v90
	v_cvt_f32_i32_e32 v91, v91
	v_cvt_f32_i32_e32 v92, v92
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(7)
	v_cndmask_b32_e64 v241, 0xff800000, v57, s1
	v_cndmask_b32_e64 v45, 0xff800000, v58, s1
	s_waitcnt vmcnt(5)
	v_cndmask_b32_e64 v57, 0xff800000, v217, s1
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v217, s104, v104, 1
	v_add_lshl_u32 v104, s104, v108, 1
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v41, 0xff800000, v218, s1
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v218, s104, v105, 1
	v_add_lshl_u32 v105, s104, v190, 1
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v58, 0xff800000, v219, s1
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v219, s104, v106, 1
	v_add_lshl_u32 v106, s104, v191, 1
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v48, 0xff800000, v203, s1
	v_cndmask_b32_e64 v244, 0xff800000, v202, s1
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v108, s104, v193, 1
	v_add_lshl_u32 v190, s104, v194, 1
	v_add_lshl_u32 v191, s104, v195, 1
	v_add_lshl_u32 v202, s104, v197, 1
	v_add_lshl_u32 v203, s104, v198, 1
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v47, 0xff800000, v201, s1
	v_cndmask_b32_e64 v243, 0xff800000, v200, s1
	.loc	1 649 37                        ; attention.py:649:37
	s_clause 0x1f
	buffer_load_u16 v193, v103, s[96:99], 0 offen
	buffer_load_u16 v194, v104, s[96:99], 0 offen
	buffer_load_u16 v195, v105, s[96:99], 0 offen
	buffer_load_u16 v196, v106, s[96:99], 0 offen
	buffer_load_u16 v197, v107, s[96:99], 0 offen
	buffer_load_u16 v198, v108, s[96:99], 0 offen
	buffer_load_u16 v199, v190, s[96:99], 0 offen
	buffer_load_u16 v200, v191, s[96:99], 0 offen
	buffer_load_u16 v201, v192, s[96:99], 0 offen
	buffer_load_u16 v202, v202, s[96:99], 0 offen
	buffer_load_u16 v203, v203, s[96:99], 0 offen
	buffer_load_u16 v204, v204, s[96:99], 0 offen
	buffer_load_u16 v205, v205, s[96:99], 0 offen
	buffer_load_u16 v206, v206, s[96:99], 0 offen
	buffer_load_u16 v207, v207, s[96:99], 0 offen
	buffer_load_u16 v208, v208, s[96:99], 0 offen
	buffer_load_u16 v209, v209, s[96:99], 0 offen
	buffer_load_u16 v210, v210, s[96:99], 0 offen
	buffer_load_u16 v103, v65, s[96:99], 0 offen
	buffer_load_u16 v104, v66, s[96:99], 0 offen
	buffer_load_u16 v105, v67, s[96:99], 0 offen
	buffer_load_u16 v106, v68, s[96:99], 0 offen
	buffer_load_u16 v107, v101, s[96:99], 0 offen
	buffer_load_u16 v108, v216, s[96:99], 0 offen
	buffer_load_u16 v190, v217, s[96:99], 0 offen
	buffer_load_u16 v191, v218, s[96:99], 0 offen
	buffer_load_u16 v192, v219, s[96:99], 0 offen
	buffer_load_u16 v211, v211, s[96:99], 0 offen
	buffer_load_u16 v212, v212, s[96:99], 0 offen
	buffer_load_u16 v213, v213, s[96:99], 0 offen
	buffer_load_u16 v214, v214, s[96:99], 0 offen
	buffer_load_u16 v215, v215, s[96:99], 0 offen
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v46, 0xff800000, v60, s1
	v_cndmask_b32_e64 v242, 0xff800000, v59, s1
	s_waitcnt vmcnt(36)
	v_cndmask_b32_e64 v60, 0xff800000, v223, s1
	v_cndmask_b32_e64 v59, 0xff800000, v221, s1
	v_cndmask_b32_e64 v42, 0xff800000, v220, s1
	v_cndmask_b32_e64 v44, 0xff800000, v224, s1
	v_cndmask_b32_e64 v43, 0xff800000, v222, s1
	s_waitcnt vmcnt(35)
	v_cndmask_b32_e64 v34, 0xff800000, v228, s1
	v_cndmask_b32_e64 v33, 0xff800000, v226, s1
	v_cndmask_b32_e64 v50, 0xff800000, v227, s1
	v_cndmask_b32_e64 v49, 0xff800000, v225, s1
	s_waitcnt vmcnt(34)
	v_cndmask_b32_e64 v36, 0xff800000, v232, s1
	v_cndmask_b32_e64 v35, 0xff800000, v230, s1
	v_cndmask_b32_e64 v52, 0xff800000, v231, s1
	v_cndmask_b32_e64 v51, 0xff800000, v229, s1
	s_waitcnt vmcnt(33)
	v_cndmask_b32_e64 v38, 0xff800000, v236, s1
	v_cndmask_b32_e64 v37, 0xff800000, v234, s1
	s_waitcnt vmcnt(32)
	v_cndmask_b32_e64 v40, 0xff800000, v240, s1
	v_cndmask_b32_e64 v39, 0xff800000, v238, s1
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v102, v[241:244]
	ds_store_b128 v102, v[57:60] offset:512
	v_add_nc_u32_e32 v216, 0, v136
	.loc	1 629 13                        ; attention.py:629:13
	v_lshl_add_u32 v66, s85, 4, v110
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s15, 0xff800000, v57
	.loc	1 629 13                        ; attention.py:629:13
	v_lshl_add_u32 v57, s85, 5, v110
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v54, 0xff800000, v235, s1
	v_cndmask_b32_e64 v53, 0xff800000, v233, s1
	v_cndmask_b32_e64 v56, 0xff800000, v239, s1
	v_cndmask_b32_e64 v55, 0xff800000, v237, s1
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s13, 0xff800000, v59
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v65, s4, v110, 1
	v_add_lshl_u32 v68, s4, v111, 1
	v_add_lshl_u32 v66, s4, v66, 1
	v_add_lshl_u32 v67, s4, v57, 1
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v59, v183, v85
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s28, 0xff800000, v45
	v_cmp_neq_f32_e64 s27, 0xff800000, v46
	v_cmp_neq_f32_e64 s26, 0xff800000, v47
	v_cmp_neq_f32_e64 s25, 0xff800000, v48
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_b128 v146, v[45:48]
	ds_store_b128 v146, v[41:44] offset:512
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s33, 0xff800000, v41
	v_cmp_neq_f32_e64 s31, 0xff800000, v42
	v_cmp_neq_f32_e64 s30, 0xff800000, v43
	v_cmp_neq_f32_e64 s29, 0xff800000, v44
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_b128 v102, v[49:52] offset:1024
	ds_store_b128 v102, v[53:56] offset:1536
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v33
	v_cmp_neq_f32_e64 s35, 0xff800000, v34
	v_cmp_neq_f32_e64 s34, 0xff800000, v35
	v_cmp_neq_f32_e64 s4, 0xff800000, v36
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_b128 v146, v[33:36] offset:1024
	ds_store_b128 v146, v[37:40] offset:1536
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v37
	v_cmp_neq_f32_e64 s8, 0xff800000, v38
	v_cmp_neq_f32_e64 s36, 0xff800000, v39
	v_cmp_neq_f32_e64 s6, 0xff800000, v40
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v216
	ds_load_b128 v[37:40], v147
	ds_load_b128 v[41:44], v148
	ds_load_b128 v[45:48], v149
	.loc	1 685 25                        ; attention.py:685:25
	v_add_nc_u32_e32 v101, 0, v137
	v_add_nc_u32_e32 v217, 0, v138
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s16, 0xff800000, v58
	v_cmp_neq_f32_e64 s17, 0xff800000, v60
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_mul_f32_e32 v57, v183, v83
	v_mul_f32_e32 v58, v183, v84
	v_mul_f32_e32 v60, v183, v86
	v_mul_f32_e32 v83, v183, v87
	v_mul_f32_e32 v84, v183, v88
	v_mul_f32_e32 v85, v183, v89
	v_mul_f32_e32 v86, v183, v90
	v_mul_f32_e32 v87, v183, v91
	v_mul_f32_e32 v88, v183, v92
	v_mul_f32_e32 v89, v183, v93
	v_mul_f32_e32 v90, v183, v94
	v_mul_f32_e32 v91, v183, v95
	v_mul_f32_e32 v92, v183, v96
	v_mul_f32_e32 v93, v183, v97
	v_mul_f32_e32 v94, v183, v98
	v_mul_f32_e32 v95, v183, v99
	v_mul_f32_e32 v96, v183, v100
	v_mul_f32_e32 v97, v183, v61
	v_mul_f32_e32 v98, v183, v62
	v_mul_f32_e32 v99, v183, v63
	v_mul_f32_e32 v100, v183, v64
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s9, 0xff800000, v244
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v70, v183, v70
	v_mul_f32_e32 v81, v183, v81
	v_mul_f32_e32 v82, v183, v82
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v243
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s9, s1, s9
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_mul_f32_e32 v78, v183, v78
	v_mul_f32_e32 v79, v183, v79
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s12, 0xff800000, v242
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s11, s1, s11
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_mul_f32_e32 v72, v183, v72
	v_mul_f32_e32 v80, v183, v80
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s10, 0xff800000, v241
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s14, s1, s12
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_mul_f32_e32 v69, v183, v69
	v_mul_f32_e32 v71, v183, v71
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s13, s1, s13
	s_and_b32 s18, s1, s10
	s_and_b32 s10, s1, s17
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v77, v183, v77
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s19, 0xff800000, v49
	v_cmp_neq_f32_e64 s20, 0xff800000, v50
	v_cmp_neq_f32_e64 s22, 0xff800000, v51
	v_cmp_neq_f32_e64 s23, 0xff800000, v52
	v_cmp_neq_f32_e64 s24, 0xff800000, v53
	v_cmp_neq_f32_e64 s37, 0xff800000, v54
	v_cmp_neq_f32_e64 s38, 0xff800000, v55
	v_cmp_neq_f32_e64 s39, 0xff800000, v56
	.loc	1 684 35                        ; attention.py:684:35
	ds_load_b128 v[49:52], v150
	ds_load_b128 v[53:56], v151
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s17, s1, s16
	s_and_b32 s21, s1, s15
	s_and_b32 s12, s1, s23
	s_and_b32 s16, s1, s22
	s_and_b32 s20, s1, s20
	s_and_b32 s15, s1, s39
	s_and_b32 s22, s1, s37
	s_and_b32 s25, s1, s25
	s_and_b32 s27, s1, s27
	s_and_b32 s29, s1, s29
	s_and_b32 s31, s1, s31
	s_and_b32 s23, s1, s19
	s_and_b32 s19, s1, s38
	s_and_b32 s24, s1, s24
	s_and_b32 s26, s1, s26
	s_and_b32 s28, s1, s28
	s_and_b32 s30, s1, s30
	s_and_b32 s33, s1, s33
	s_and_b32 s4, s1, s4
	s_and_b32 s6, s1, s6
	s_and_b32 s8, s1, s8
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v218, 0x3fb8aa3b, v39 :: v_dual_mul_f32 v221, 0x3fb8aa3b, v42
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s35, s1, s35
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v220, 0x3fb8aa3b, v41 :: v_dual_mul_f32 v223, 0x3fb8aa3b, v44
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v222, 0x3fb8aa3b, v43 :: v_dual_mul_f32 v225, 0x3fb8aa3b, v46
	v_dual_mul_f32 v224, 0x3fb8aa3b, v45 :: v_dual_mul_f32 v227, 0x3fb8aa3b, v48
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v226, 0x3fb8aa3b, v47 :: v_dual_mul_f32 v229, 0x3fb8aa3b, v50
	v_dual_mul_f32 v228, 0x3fb8aa3b, v49 :: v_dual_mul_f32 v231, 0x3fb8aa3b, v52
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v230, 0x3fb8aa3b, v51 :: v_dual_mul_f32 v233, 0x3fb8aa3b, v54
	v_dual_mul_f32 v232, 0x3fb8aa3b, v53 :: v_dual_mul_f32 v235, 0x3fb8aa3b, v56
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v49, 0, 1, s4
	v_cndmask_b32_e64 v51, 0, 1, s35
	v_cndmask_b32_e64 v53, 0, 1, s6
	s_and_b32 s5, s1, s5
	s_and_b32 s7, s1, s7
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v216, 0x3fb8aa3b, v38 :: v_dual_mul_f32 v219, 0x3fb8aa3b, v40
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s34, s1, s34
	s_and_b32 s36, s1, s36
	v_cndmask_b32_e64 v50, 0, 1, s34
	v_cndmask_b32_e64 v52, 0, 1, s5
	v_cndmask_b32_e64 v54, 0, 1, s36
	v_cndmask_b32_e64 v56, 0, 1, s7
	v_lshlrev_b16 v38.h, 8, v49.l
	v_lshlrev_b16 v39.h, 8, v53.l
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v65, 0x80000000, v65, s3
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v61, 16, v193
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v62, 16, v194
	s_waitcnt vmcnt(29)
	v_lshlrev_b32_e32 v63, 16, v195
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v64, 16, v196
	s_waitcnt vmcnt(27)
	v_lshlrev_b32_e32 v193, 16, v197
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v194, 16, v198
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v195, 16, v199
	s_waitcnt vmcnt(24)
	v_lshlrev_b32_e32 v196, 16, v200
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v197, 16, v201
	s_waitcnt vmcnt(22)
	v_lshlrev_b32_e32 v198, 16, v202
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v199, 16, v203
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v200, 16, v204
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v201, 16, v205
	s_waitcnt vmcnt(18)
	v_lshlrev_b32_e32 v202, 16, v206
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v203, 16, v207
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v204, 16, v208
	s_waitcnt vmcnt(15)
	v_lshlrev_b32_e32 v205, 16, v209
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v206, 16, v210
	.loc	1 654 30                        ; attention.py:654:30
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v102, v57, v61 :: v_dual_lshlrev_b32 v103, 16, v103
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v104, 16, v104
	.loc	1 654 30                        ; attention.py:654:30
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v96, v96, v206 :: v_dual_lshlrev_b32 v105, 16, v105
	v_mul_f32_e32 v97, v97, v103
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v103, 0, 1, s9
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v107, 16, v107
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v192, 16, v192
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v207, 16, v211
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v208, 16, v212
	.loc	1 654 30                        ; attention.py:654:30
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v212, v58, v62 :: v_dual_lshlrev_b32 v209, 16, v213
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v213, v59, v63 :: v_dual_lshlrev_b32 v210, 16, v214
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v214, v60, v64 :: v_dual_lshlrev_b32 v211, 16, v215
	v_mul_f32_e32 v83, v83, v193
	.loc	1 684 35                        ; attention.py:684:35
	ds_load_b128 v[57:60], v152
	ds_load_b128 v[61:64], v153
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v98, v98, v104 :: v_dual_mul_f32 v99, v99, v105
	v_dual_mul_f32 v78, v78, v207 :: v_dual_mul_f32 v79, v79, v208
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v104, 0, 1, s11
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v208, 0x3fb8aa3b, v33
	.loc	1 685 25                        ; attention.py:685:25
	v_mov_b16_e32 v33.l, v103.l
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v106, 16, v106
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v80, v80, v209 :: v_dual_lshlrev_b32 v191, 16, v191
	v_dual_mul_f32 v81, v81, v210 :: v_dual_mul_f32 v82, v82, v211
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v209, 0x3fb8aa3b, v34
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v105, 0, 1, s14
	v_mov_b16_e32 v34.l, v104.l
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v100, v100, v106 :: v_dual_mul_f32 v69, v69, v107
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v106, 0, 1, s18
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v236, 0x3fb8aa3b, v60 :: v_dual_mul_f32 v237, 0x3fb8aa3b, v61
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v60.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v105.l
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v108, 16, v108
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v107, 0, 1, s10
	v_mov_b16_e32 v34.l, v106.l
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v190, 16, v190
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v70, v70, v108
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v108, 0, 1, s13
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v72, v72, v191 :: v_dual_mul_f32 v77, v77, v192
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v60.l, v34.l, v33.l
	v_mov_b16_e32 v33.l, v107.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v71, v71, v190
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v190, 0, 1, s17
	v_mov_b16_e32 v34.l, v108.l
	v_cndmask_b32_e64 v191, 0, 1, s21
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v84, v84, v194 :: v_dual_mul_f32 v85, v85, v195
	v_dual_mul_f32 v86, v86, v196 :: v_dual_mul_f32 v87, v87, v197
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v61.h, v34.l, v33.l
	v_mov_b16_e64 v33.l, v190.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v88, v88, v198 :: v_dual_mul_f32 v89, v89, v199
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v192, 0, 1, s12
	v_cndmask_b32_e64 v194, 0, 1, s20
	v_cndmask_b32_e64 v196, 0, 1, s15
	v_cndmask_b32_e64 v198, 0, 1, s22
	v_mov_b16_e64 v34.l, v191.l
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v90, v90, v200 :: v_dual_mul_f32 v91, v91, v201
	v_dual_mul_f32 v92, v92, v202 :: v_dual_mul_f32 v93, v93, v203
	v_dual_mul_f32 v94, v94, v204 :: v_dual_mul_f32 v95, v95, v205
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v200, 0, 1, s25
	v_cndmask_b32_e64 v202, 0, 1, s27
	v_cndmask_b32_e64 v204, 0, 1, s29
	v_cndmask_b32_e64 v206, 0, 1, s31
	v_cndmask_b32_e64 v193, 0, 1, s16
	v_cndmask_b32_e64 v195, 0, 1, s23
	v_cndmask_b32_e64 v197, 0, 1, s19
	v_cndmask_b32_e64 v199, 0, 1, s24
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v210, 0x3fb8aa3b, v35 :: v_dual_mul_f32 v215, 0x3fb8aa3b, v37
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v61.l, v34.l, v33.l
	v_mov_b16_e64 v33.l, v192.l
	v_mov_b16_e64 v35.l, v194.l
	v_mov_b16_e64 v37.l, v196.l
	v_mov_b16_e64 v39.l, v198.l
	v_cndmask_b32_e64 v201, 0, 1, s26
	v_cndmask_b32_e64 v203, 0, 1, s28
	v_cndmask_b32_e64 v205, 0, 1, s30
	v_cndmask_b32_e64 v207, 0, 1, s33
	v_mov_b16_e64 v41.l, v200.l
	v_mov_b16_e64 v43.l, v202.l
	v_mov_b16_e64 v45.l, v204.l
	v_mov_b16_e64 v47.l, v206.l
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v234, 0x3fb8aa3b, v55 :: v_dual_mul_f32 v57, 0x3fb8aa3b, v57
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v55, 0, 1, s8
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v211, 0x3fb8aa3b, v36
	.loc	1 685 25                        ; attention.py:685:25
	v_mov_b16_e64 v34.l, v193.l
	v_mov_b16_e64 v36.l, v195.l
	v_mov_b16_e64 v38.l, v197.l
	v_mov_b16_e64 v40.l, v199.l
	v_lshlrev_b16 v33.l, 8, v33.l
	v_lshlrev_b16 v33.h, 8, v35.l
	v_lshlrev_b16 v34.h, 8, v37.l
	v_lshlrev_b16 v35.l, 8, v39.l
	v_mov_b16_e64 v42.l, v201.l
	v_mov_b16_e64 v44.l, v203.l
	v_mov_b16_e64 v46.l, v205.l
	v_mov_b16_e64 v48.l, v207.l
	v_lshlrev_b16 v35.h, 8, v41.l
	v_lshlrev_b16 v36.h, 8, v43.l
	v_lshlrev_b16 v37.l, 8, v45.l
	v_lshlrev_b16 v37.h, 8, v47.l
	v_lshlrev_b16 v39.l, 8, v51.l
	v_lshlrev_b16 v40.h, 8, v55.l
	v_or_b16 v41.h, v34.l, v33.l
	v_or_b16 v41.l, v36.l, v33.h
	v_or_b16 v33.h, v38.l, v34.h
	v_or_b16 v33.l, v40.l, v35.l
	v_or_b16 v34.h, v42.l, v35.h
	v_or_b16 v34.l, v44.l, v36.h
	v_or_b16 v35.h, v46.l, v37.l
	v_or_b16 v35.l, v48.l, v37.h
	v_or_b16 v36.h, v50.l, v38.h
	v_or_b16 v36.l, v52.l, v39.l
	v_or_b16 v37.h, v54.l, v39.h
	v_or_b16 v37.l, v56.l, v40.h
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b32 v101, v60, v61 offset1:32
	ds_store_2addr_b32 v101, v41, v33 offset0:64 offset1:96
	ds_store_2addr_b32 v154, v34, v35 offset1:32
	ds_store_2addr_b32 v154, v36, v37 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v39, v161
	ds_load_b32 v40, v217
	ds_load_b32 v41, v155
	ds_load_b32 v36, v156
	ds_load_b32 v34, v157
	ds_load_b32 v35, v158
	ds_load_b32 v37, v159
	ds_load_b32 v38, v160
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v238, 0x3fb8aa3b, v62 :: v_dual_mul_f32 v239, 0x3fb8aa3b, v64
	v_dual_mul_f32 v62, 0x3fb8aa3b, v63 :: v_dual_fmac_f32 v221, s86, v102
	v_dual_mul_f32 v58, 0x3fb8aa3b, v58 :: v_dual_mul_f32 v59, 0x3fb8aa3b, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_dual_fmac_f32 v238, s86, v80 :: v_dual_fmac_f32 v239, s86, v82
	v_fmac_f32_e32 v62, s86, v81
	v_dual_fmac_f32 v236, s86, v78 :: v_dual_fmac_f32 v237, s86, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v59, s86, v96 :: v_dual_fmac_f32 v208, s86, v97
	v_dual_fmac_f32 v209, s86, v98 :: v_dual_fmac_f32 v210, s86, v99
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	s_waitcnt lgkmcnt(7)
	v_and_b32_e32 v81, 0x10000, v39
	v_and_b32_e32 v82, 0x1000000, v39
	s_waitcnt lgkmcnt(4)
	v_and_b32_e32 v43, 0x1000000, v36
	s_waitcnt lgkmcnt(2)
	v_and_b32_e32 v55, 0x1000000, v35
	s_waitcnt lgkmcnt(1)
	v_and_b32_e32 v56, 1, v37
	v_cmp_ne_u32_e64 s45, 0, v81
	v_cmp_ne_u32_e64 s42, 0, v82
	v_and_b32_e32 v53, 0x10000, v35
	v_cmp_ne_u32_e64 s40, 0, v55
	v_cmp_eq_u32_e64 s54, 1, v56
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v55, 0xff800000, v62, s45
	v_cndmask_b32_e64 v56, 0xff800000, v239, s42
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v45, 1, v35
	v_lshrrev_b16 v35.h, 8, v40.l
	v_dual_mov_b32 v193, v75 :: v_dual_and_b32 v64, 1, v40
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v79, 0x1000000, v38
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v199, v125, v125 :: v_dual_and_b32 v80, 1, v39
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v54.l, 1, v35.h
	v_and_b32_e32 v52, 0x10000, v38
	v_dual_mov_b32 v192, v73 :: v_dual_and_b32 v61, 1, v38
	v_cmp_eq_u32_e64 s65, 1, v64
	v_cmp_ne_u32_e64 s41, 0, v79
	v_cmp_eq_u32_e64 s58, 1, v80
	v_cmp_eq_u16_e64 s68, 1, v54.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v215, s86, v69 :: v_dual_fmac_f32 v218, s86, v71
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v48, 1, v34
	v_and_b32_e32 v49, 0x1000000, v34
	v_lshrrev_b16 v33.l, 8, v35.l
	v_lshrrev_b16 v33.h, 8, v36.l
	v_lshrrev_b16 v35.l, 8, v38.l
	v_dual_mov_b32 v194, v74 :: v_dual_and_b32 v63, 0x10000, v40
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v198, v126, v126 :: v_dual_and_b32 v71, 0x1000000, v40
	v_dual_max_f32 v197, v127, v127 :: v_dual_and_b32 v78, 1, v36
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s53, 0, v53
	v_cmp_eq_u32_e64 s56, 1, v61
	v_cmp_ne_u32_e64 s57, 0, v52
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v61, 0xff800000, v208, s65
	v_cndmask_b32_e64 v52, 0xff800000, v236, s41
	v_cndmask_b32_e64 v53, 0xff800000, v237, s58
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v44, 0x10000, v34
	v_lshrrev_b16 v34.l, 8, v34.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v62, 0xff800000, v209, s68
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v47, 0x10000, v36
	v_lshrrev_b16 v36.l, 8, v41.l
	v_lshrrev_b16 v36.h, 8, v39.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v211, s86, v100 :: v_dual_fmac_f32 v216, s86, v70
	v_dual_fmac_f32 v219, s86, v72 :: v_dual_fmac_f32 v220, s86, v77
	.loc	1 685 25                        ; attention.py:685:25
	v_lshrrev_b16 v34.h, 8, v37.l
	v_dual_mov_b32 v191, v76 :: v_dual_and_b32 v72, 1, v41
	v_and_b16 v42.l, 1, v33.l
	v_and_b16 v38.l, 1, v33.h
	v_and_b16 v38.h, 1, v34.l
	v_and_b16 v50.l, 1, v35.l
	v_and_b16 v54.h, 1, v36.l
	v_and_b16 v69.l, 1, v36.h
	v_cmp_ne_u32_e64 s66, 0, v63
	v_cmp_ne_u32_e64 s67, 0, v71
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v222, s86, v212 :: v_dual_fmac_f32 v223, s86, v213
	v_dual_fmac_f32 v224, s86, v214 :: v_dual_fmac_f32 v225, s86, v83
	v_dual_fmac_f32 v226, s86, v84 :: v_dual_fmac_f32 v227, s86, v85
	v_dual_fmac_f32 v228, s86, v86 :: v_dual_fmac_f32 v229, s86, v87
	v_dual_fmac_f32 v57, s86, v94 :: v_dual_fmac_f32 v58, s86, v95
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v60, 0x1000000, v37
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v200, v128, v128 :: v_dual_and_b32 v77, 0x1000000, v41
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v46.l, 1, v34.h
	v_cmp_ne_u32_e64 s37, 0, v43
	v_cmp_eq_u32_e64 s50, 1, v48
	v_cmp_ne_u32_e64 s39, 0, v49
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v63, 0xff800000, v210, s66
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v70, 0x10000, v41
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v64, 0xff800000, v211, s67
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v51, 0x10000, v37
	v_cmp_eq_u32_e64 s63, 1, v72
	v_cmp_eq_u16_e64 s60, 1, v38.l
	v_cmp_eq_u16_e64 s47, 1, v38.h
	v_cmp_eq_u16_e64 s48, 1, v42.l
	v_cmp_eq_u16_e64 s43, 1, v50.l
	v_cmp_eq_u16_e64 s64, 1, v54.h
	v_cmp_eq_u16_e64 s44, 1, v69.l
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v52, v53
.Ltmp2:
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s51, 0, v44
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v72, v55, v56
.Ltmp4:
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s52, 1, v45
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v80, v61, v62
.Ltmp6:
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s49, 0, v47
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v230, s86, v88 :: v_dual_fmac_f32 v231, s86, v89
	v_dual_fmac_f32 v232, s86, v90 :: v_dual_fmac_f32 v233, s86, v91
	v_dual_fmac_f32 v234, s86, v92 :: v_dual_fmac_f32 v235, s86, v93
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v35, 0xff800000, v222, s49
	v_cndmask_b32_e64 v36, 0xff800000, v223, s37
	v_cndmask_b32_e64 v37, 0xff800000, v224, s50
	v_cndmask_b32_e64 v39, 0xff800000, v226, s51
	v_cndmask_b32_e64 v40, 0xff800000, v227, s39
	v_cndmask_b32_e64 v41, 0xff800000, v228, s52
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s55, 0, v51
	v_cmp_ne_u32_e64 s38, 0, v60
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v49, 0xff800000, v57, s56
	v_cndmask_b32_e64 v57, 0xff800000, v215, s63
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s61, 0, v70
	v_cmp_ne_u32_e64 s59, 0, v77
	v_cmp_eq_u32_e64 s62, 1, v78
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v34, 0xff800000, v221, s60
	v_cndmask_b32_e64 v38, 0xff800000, v225, s47
	v_cndmask_b32_e64 v42, 0xff800000, v229, s48
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s46, 1, v46.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v50, 0xff800000, v58, s43
	v_cndmask_b32_e64 v58, 0xff800000, v216, s64
	v_cndmask_b32_e64 v43, 0xff800000, v230, s53
	v_cndmask_b32_e64 v44, 0xff800000, v231, s40
	v_cndmask_b32_e64 v45, 0xff800000, v232, s54
	v_cndmask_b32_e64 v47, 0xff800000, v234, s55
	v_cndmask_b32_e64 v48, 0xff800000, v235, s38
	v_cndmask_b32_e64 v51, 0xff800000, v59, s57
	v_cndmask_b32_e64 v59, 0xff800000, v218, s61
	v_cndmask_b32_e64 v60, 0xff800000, v219, s59
	v_cndmask_b32_e64 v33, 0xff800000, v220, s62
	v_cndmask_b32_e64 v46, 0xff800000, v233, s46
	v_cndmask_b32_e64 v54, 0xff800000, v238, s44
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v77, v34, v35, v36
	v_max3_f32 v78, v37, v38, v39
	v_max3_f32 v79, v40, v41, v42
	v_max3_f32 v81, v64, v57, v58
	v_max3_f32 v70, v43, v44, v45
	v_max3_f32 v71, v59, v60, v33
	v_max3_f32 v82, v46, v47, v48
	v_max3_f32 v83, v49, v50, v51
	v_max3_f32 v69, v69, v54, v72
	v_max3_f32 v72, v77, v78, v79
	v_max3_f32 v77, v80, v63, v81
.Ltmp8:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v195.h, 0
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v70, v70, v82, v83
.Ltmp10:
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v71, v77, v71, v72
.Ltmp12:
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v76, 0x80000000, v66, s3
	v_cndmask_b32_e64 v211, 0x80000000, v67, s3
	v_cndmask_b32_e64 v106, 0x80000000, v68, s3
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v206.h, v195.h
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v69, v71, v70, v69
.Ltmp14:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v210.h, v195.h
	v_mov_b16_e64 v73.h, v195.h
	v_mov_b16_e64 v74.h, v195.h
	v_mov_b16_e64 v75.h, v195.h
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v70, v69, s69, 0xfedcba98 op_sel:[1,0]
.Ltmp16:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v108.h, v195.h
	v_mov_b16_e64 v202.h, v195.h
	v_mov_b16_e64 v203.h, v195.h
	v_mov_b16_e64 v205.h, v195.h
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v190, v189, v69, v70
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v204.h, v195.h
	v_mov_b16_e64 v207.h, v195.h
	v_mov_b16_e64 v208.h, v195.h
	v_mov_b16_e64 v209.h, v195.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v69, v62, v190
	v_sub_f32_e32 v72, v64, v190
	v_sub_f32_e32 v214, v58, v190
	v_sub_f32_e32 v216, v60, v190
	v_sub_f32_e32 v213, v57, v190
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v72, v72
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v201.h, v195.h
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v71, 0, v69, s68
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v69, v61, v190
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v105, 0, v72, s67
	.loc	1 689 74 is_stmt 1              ; attention.py:689:74
	v_sub_f32_e32 v72, v189, v190
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v195.l, v71.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v72, v72
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v77, 1, v195
	v_mov_b16_e64 v195.l, v105.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_add3_u32 v77, v71, v77, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v70, 0, v69, s65
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s65, 0xff800000, v189
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v69, v63, v190
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v72, 0, v72, s65
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s65, v71, v71
	v_mov_b16_e64 v71.h, v195.h
	v_mov_b16_e32 v71.l, v70.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v189, v46, v190 :: v_dual_mul_f32 v28, v28, v72
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v107.h, 0x7fff, v77.h, s65
	v_cmp_o_f32_e64 s65, v70, v70
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v71, 1, v71
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v29, v29, v72
	v_mul_f32_e32 v22, v22, v72
	v_mul_f32_e32 v32, v32, v72
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v71, v70, v71, 0x7fff
	.loc	1 686 26                        ; attention.py:686:26
	v_add_nc_u32_e32 v70, 0, v139
	ds_store_b128 v70, v[61:64]
	ds_store_b128 v70, v[41:44] offset:2048
	ds_store_b128 v162, v[57:60]
	ds_store_b128 v162, v[45:48] offset:2048
	ds_store_b128 v163, v[33:36]
	ds_store_b128 v163, v[49:52] offset:2048
	ds_store_b128 v164, v[37:40]
	ds_store_b128 v164, v[53:56] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[93:96], v165 offset:1024
	ds_load_b128 v[101:104], v165
	ds_load_b128 v[89:92], v165 offset:1280
	ds_load_b128 v[97:100], v165 offset:256
	ds_load_b128 v[85:88], v165 offset:512
	ds_load_b128 v[77:80], v165 offset:768
	ds_load_b128 v[81:84], v165 offset:1536
	ds_load_b128 v[61:64], v165 offset:1792
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v215, v59, v190
	.loc	1 694 30                        ; attention.py:694:30
	v_add_nc_u32_e32 v196, 0, v130
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v33, v33, v190
	v_sub_f32_e32 v34, v34, v190
	v_dual_sub_f32 v57, v36, v190 :: v_dual_mul_f32 v18, v18, v72
	v_sub_f32_e32 v219, v39, v190
	v_dual_sub_f32 v59, v42, v190 :: v_dual_mul_f32 v24, v24, v72
	v_sub_f32_e32 v42, v43, v190
	v_dual_sub_f32 v60, v44, v190 :: v_dual_mul_f32 v19, v19, v72
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	s_waitcnt lgkmcnt(7)
	v_max_f32_e32 v66, v96, v96
	s_waitcnt lgkmcnt(6)
	v_max_f32_e32 v67, v104, v104
	s_waitcnt lgkmcnt(5)
	v_dual_max_f32 v212, v92, v92 :: v_dual_sub_f32 v217, v35, v190
.Ltmp18:
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v35, v48, v190 :: v_dual_mul_f32 v26, v26, v72
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	s_waitcnt lgkmcnt(4)
	v_max_f32_e32 v48, v100, v100
	v_max3_f32 v68, v101, v93, v102
	v_max3_f32 v70, v94, v103, v95
.Ltmp20:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v43, v45, v190
	v_dual_sub_f32 v44, v47, v190 :: v_dual_mul_f32 v21, v21, v72
	v_dual_sub_f32 v45, v49, v190 :: v_dual_mul_f32 v30, v30, v72
	v_dual_sub_f32 v36, v50, v190 :: v_dual_mul_f32 v23, v23, v72
	v_dual_sub_f32 v46, v51, v190 :: v_dual_mul_f32 v25, v25, v72
	v_sub_f32_e32 v47, v53, v190
	v_dual_sub_f32 v49, v55, v190 :: v_dual_mul_f32 v12, v12, v72
	v_dual_sub_f32 v39, v56, v190 :: v_dual_mul_f32 v14, v14, v72
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v50, v97, v89, v98
	v_max3_f32 v51, v90, v99, v91
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v53, v84, v84
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v55, v64, v64
	v_max_f32_e32 v48, v48, v212
	v_max_f32_e32 v56, v80, v80
.Ltmp22:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v58, v38, v190
	v_dual_sub_f32 v38, v54, v190 :: v_dual_mul_f32 v27, v27, v72
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v54, v88, v88
.Ltmp24:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v218, v37, v190
	v_dual_sub_f32 v37, v52, v190 :: v_dual_mul_f32 v10, v10, v72
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v52, v67, v66
	v_max3_f32 v48, v50, v51, v48
	v_max3_f32 v50, v85, v81, v86
	v_max3_f32 v51, v82, v87, v83
	v_max_f32_e32 v53, v54, v53
	v_max3_f32 v52, v68, v70, v52
	v_max3_f32 v54, v77, v61, v78
	v_max_f32_e32 v55, v56, v55
	v_max3_f32 v56, v62, v79, v63
	v_max3_f32 v50, v50, v51, v53
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v51, v52 :: v_dual_mul_f32 v2, v2, v72
.Ltmp27:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v53, v54, v56, v55
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v55, v48
	v_mov_b32_dpp v51, v51 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp30:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v16, v16, v72
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v54, v213
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v55, v55 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v51, v51, v51
.Ltmp33:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v9, v9, v72
	v_mul_f32_e32 v6, v6, v72
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v43, 0, v43, s54
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v31, v31, v72 :: v_dual_mov_b32 v56, v50
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v51, v52, v51
	v_max_f32_e32 v52, v55, v55
.Ltmp35:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v11, v11, v72
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v206.l, v43.h
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v56, v56 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v47, 0, v47, s58
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v52, v48, v52
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v48, v53
.Ltmp40:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v55, 0, v54, s63
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v33, v33
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v210.l, v47.h
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v54, v56, v56
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v48, v48 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v13, v13, v72
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v69, s66
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_dual_sub_f32 v41, v41, v190 :: v_dual_mul_f32 v20, v20, v72
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp44:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v48, v48, v48
	v_max_f32_e32 v54, v50, v54
.Ltmp45:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v56, v214
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v33, 0, v33, s62
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v212, v217
.Ltmp46:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v50, v53, v48
.Ltmp47:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v53, v215
	v_exp_f32_e32 v213, v218
	v_exp_f32_e32 v214, v219
	v_exp_f32_e32 v42, v42
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v107.l, 0x7fff, v71.h, s65
	v_mov_b16_e64 v71.h, v195.h
	v_mov_b16_e32 v71.l, v69.h
	v_mov_b16_e32 v73.l, v55.h
	v_mov_b16_e32 v75.l, v33.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v41, v41
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v53, 0, v53, s61
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v44, v44
	v_exp_f32_e32 v45, v45
	v_exp_f32_e32 v46, v46
	.loc	1 699 23 is_stmt 1              ; attention.py:699:23
	v_dual_mul_f32 v15, v15, v72 :: v_dual_and_b32 v48, 1, v71
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v74.l, v53.h
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v1, v1, v72
	v_dual_mul_f32 v4, v4, v72 :: v_dual_and_b32 v73, 1, v73
	v_dual_mul_f32 v8, v8, v72 :: v_dual_and_b32 v75, 1, v75
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v74, 1, v74
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v212, 0, v212, s49
	v_cndmask_b32_e64 v213, 0, v213, s50
	v_cndmask_b32_e64 v214, 0, v214, s51
	v_cndmask_b32_e64 v42, 0, v42, s53
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_dual_sub_f32 v40, v40, v190 :: v_dual_mul_f32 v17, v17, v72
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	buffer_load_b128 v[65:68], v65, s[72:75], 0 offen
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s63, v69, v69
	v_add3_u32 v48, v69, v48, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v56, 0, v56, s64
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s64, v55, v55
	v_cmp_o_f32_e64 s61, v53, v53
	v_cmp_o_f32_e64 s62, v33, v33
	v_add3_u32 v55, v55, v73, 0x7fff
	v_add3_u32 v53, v53, v74, 0x7fff
	v_add3_u32 v33, v33, v75, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v41, 0, v41, s52
	v_cndmask_b32_e64 v44, 0, v44, s55
	v_cndmask_b32_e64 v45, 0, v45, s56
	v_cndmask_b32_e64 v46, 0, v46, s57
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v108.l, v212.h
	v_mov_b16_e64 v202.l, v213.h
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v3, v3, v72
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v203.l, v214.h
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v5, v5, v72
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v205.l, v42.h
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v7, v7, v72
	.loc	1 694 30                        ; attention.py:694:30
	s_clause 0x1
	buffer_load_b128 v[69:72], v76, s[72:75], 0 offen
	buffer_load_b128 v[73:76], v211, s[72:75], 0 offen
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v211, v216
	v_exp_f32_e32 v34, v34
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v204.l, v41.h
	v_mov_b16_e64 v207.l, v44.h
	v_mov_b16_e64 v208.l, v45.h
	v_mov_b16_e64 v209.l, v46.h
	v_cndmask_b16 v48.l, 0x7fff, v55.h, s64
	v_and_b32_e32 v55, 1, v108
	v_and_b32_e32 v108, 1, v202
	v_and_b32_e32 v202, 1, v203
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v211, 0, v211, s59
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v203, 1, v204
	v_and_b32_e32 v204, 1, v205
	v_and_b32_e32 v205, 1, v206
	v_and_b32_e32 v206, 1, v207
	v_and_b32_e32 v207, 1, v208
	v_and_b32_e32 v208, 1, v209
	v_and_b32_e32 v209, 1, v210
	v_add3_u32 v210, v212, v55, 0x7fff
	v_and_b32_e32 v55, 1, v195
	v_mov_b16_e64 v195.l, v56.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v34, 0, v34, s60
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s58, v41, v41
	v_add3_u32 v203, v41, v203, 0x7fff
	v_cmp_o_f32_e64 s50, v43, v43
	v_and_b32_e32 v41, 1, v195
	v_mov_b16_e64 v195.l, v211.h
	v_add3_u32 v205, v43, v205, 0x7fff
	v_cmp_o_f32_e64 s59, v105, v105
	v_cmp_o_f32_e64 s49, v42, v42
	v_cmp_o_f32_e64 s52, v45, v45
	v_and_b32_e32 v43, 1, v195
	v_mov_b16_e64 v195.l, v34.h
	v_add3_u32 v204, v42, v204, 0x7fff
	v_add3_u32 v207, v45, v207, 0x7fff
	v_add3_u32 v42, v105, v55, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v55, v58
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v45, 1, v195
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v37, v37
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s55, v212, v212
	v_cmp_o_f32_e64 s60, v56, v56
	v_cmp_o_f32_e64 s65, v211, v211
	v_cmp_o_f32_e64 s66, v34, v34
	v_cndmask_b16 v33.l, 0x7fff, v48.h, s63
	v_add3_u32 v212, v213, v108, 0x7fff
	v_cndmask_b16 v108.l, 0x7fff, v33.h, s62
	v_add3_u32 v41, v56, v41, 0x7fff
	v_cndmask_b16 v33.h, 0x7fff, v42.h, s59
	v_add3_u32 v43, v211, v43, 0x7fff
	v_add3_u32 v34, v34, v45, 0x7fff
	v_cmp_o_f32_e64 s56, v213, v213
	v_cmp_o_f32_e64 s51, v44, v44
	v_cmp_o_f32_e64 s53, v46, v46
	v_cndmask_b16 v53.l, 0x7fff, v53.h, s61
	v_cndmask_b16 v48.h, 0x7fff, v41.h, s60
	v_cndmask_b16 v53.h, 0x7fff, v43.h, s65
	v_cndmask_b16 v108.h, 0x7fff, v34.h, s66
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v58, v189
	v_mov_b32_e32 v189, v190
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v206, v44, v206, 0x7fff
	v_permlanex16_b32 v44, v107, s69, 0xfedcba98 op_sel:[1,0]
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v213, 0, v55, s47
	v_cndmask_b32_e64 v55, 0, v37, s41
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v37, v52
.Ltmp49:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v208, v46, v208, 0x7fff
	v_permlanex16_b32 v46, v33, s69, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s54, v47, v47
	v_add3_u32 v209, v47, v209, 0x7fff
	v_perm_b32 v41, v44, v107, v121
	v_perm_b32 v42, v44, v107, v122
	v_permlanex16_b32 v47, v48, s69, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v43, v46, v33, v121
	v_perm_b32 v44, v46, v33, v122
	v_permlanex16_b32 v33, v53, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v108, s69, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v45, v47, v48, v121
	v_perm_b32 v46, v47, v48, v122
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v49, v49
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v47, v33, v53, v121
	v_perm_b32 v48, v33, v53, v122
	v_perm_b32 v33, v34, v108, v121
	v_perm_b32 v34, v34, v108, v122
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[105:108], v106, s[72:75], 0 offen
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v53, v57
	v_exp_f32_e32 v57, v60
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v56, v59
	v_exp_f32_e32 v35, v35
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v49, 0, v49, s45
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s57, v214, v214
	v_add3_u32 v202, v214, v202, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v211, 0, v53, s37
	v_cndmask_b32_e64 v215, 0, v57, s40
	v_cndmask_b32_e64 v53, 0, v36, s43
	v_cndmask_b32_e64 v57, 0, v38, s44
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v36, v51
	v_mov_b32_e32 v38, v54
.Ltmp51:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v59, 0, v39, s42
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v201.l, v49.h
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v39, v50
	v_mov_b32_dpp v36, v36 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v38, v38 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v214, 0, v56, s48
	v_cndmask_b32_e64 v56, 0, v35, s38
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v39, v39 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_dual_max_f32 v38, v38, v38 :: v_dual_and_b32 v35, 1, v201
.Ltmp56:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s47, v49, v49
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v37, v37 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v36, v51, v36
	v_max_f32_e32 v38, v54, v38
.Ltmp59:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v35, v49, v35, 0x7fff
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v39, v39, v39
	v_max_f32_e32 v37, v37, v37
.Ltmp61:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v40, v40
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v195.l, v211.h
	v_cndmask_b16 v190.l, 0x7fff, v35.h, s47
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v35, v50, v39 :: v_dual_mov_b32 v50, v36
.Ltmp63:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s45, v211, v211
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v39, 1, v195
	v_cndmask_b16 v204.l, 0x7fff, v206.h, s51
	v_mov_b16_e64 v195.l, v213.h
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v50, v50 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v37, v52, v37
.Ltmp66:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v40, 0, v40, s39
	v_cndmask_b32_e64 v58, 0, v58, s46
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s46, v213, v213
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v50, v50, v50
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v206, v37
.Ltmp69:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v49.l, 0x7fff, v210.h, s55
	v_cmp_o_f32_e64 s48, v40, v40
	v_cndmask_b16 v51.l, 0x7fff, v212.h, s56
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v36, v36, v50
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v50, v38
.Ltmp72:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v39, v211, v39, 0x7fff
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v206, v206 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp74:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v52.l, 0x7fff, v202.h, s57
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v185, v185, v36
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v50, v50 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp76:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v49.h, 0x7fff, v39.h, s45
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v206, v206, v206 :: v_dual_and_b32 v39, 1, v195
.Ltmp78:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v195.l, v40.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v50, v50, v50
.Ltmp80:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s44, v214, v214
	v_add3_u32 v39, v213, v39, 0x7fff
	v_cndmask_b16 v205.l, 0x7fff, v207.h, s52
	v_cndmask_b16 v201.l, 0x7fff, v209.h, s54
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v38, v38, v50
.Ltmp82:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v50, 1, v195
	v_cndmask_b16 v51.h, 0x7fff, v39.h, s46
	v_mov_b16_e64 v195.l, v214.h
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s46, 0xff800000, v127
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v60.l, 0x7fff, v208.h, s53
	v_add3_u32 v39, v40, v50, 0x7fff
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v50, v200, v36 :: v_dual_max_f32 v37, v37, v206
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v206, v35
.Ltmp84:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v40, v49, s69, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v52.h, 0x7fff, v39.h, s48
	v_cmp_o_f32_e64 s43, v215, v215
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v197, v197, v37
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v206, v206 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp86:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v36, v40, v49, v122
	v_cmp_o_f32_e64 s41, v56, v56
	v_cmp_o_f32_e64 s42, v58, v58
	v_cndmask_b16 v202.l, 0x7fff, v204.h, s49
.Ltmp87:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v206, v206, v206
.Ltmp88:
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s45, 0xff800000, v128
	v_cmp_neq_f32_e64 s47, 0xff800000, v126
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s40, v53, v53
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s48, 0xff800000, v125
.Ltmp89:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v35, v35, v206
.Ltmp90:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v54.l, 0x7fff, v203.h, s58
	v_cmp_o_f32_e64 s39, v55, v55
	v_cndmask_b16 v203.l, 0x7fff, v205.h, s50
	v_cmp_o_f32_e64 s38, v57, v57
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v199, v199, v35
	v_dual_max_f32 v187, v187, v38 :: v_dual_and_b32 v200, 1, v195
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v195.l, v215.h
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v186, v186, v37
	v_max_f32_e32 v188, v188, v35
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v35, v40, v49, v121
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v49, v101, v185 :: v_dual_and_b32 v40, 1, v195
	v_sub_f32_e32 v101, v102, v185
	v_dual_sub_f32 v85, v85, v187 :: v_dual_sub_f32 v102, v103, v185
	v_sub_f32_e32 v97, v97, v186
	v_dual_sub_f32 v95, v95, v185 :: v_dual_sub_f32 v100, v100, v186
	v_dual_sub_f32 v93, v93, v185 :: v_dual_sub_f32 v98, v98, v186
	v_dual_sub_f32 v90, v90, v186 :: v_dual_sub_f32 v87, v87, v187
	v_dual_sub_f32 v91, v91, v186 :: v_dual_sub_f32 v86, v86, v187
	v_dual_sub_f32 v92, v92, v186 :: v_dual_sub_f32 v81, v81, v187
	v_dual_sub_f32 v88, v88, v187 :: v_dual_sub_f32 v77, v77, v188
	v_dual_sub_f32 v82, v82, v187 :: v_dual_sub_f32 v79, v79, v188
	v_dual_sub_f32 v83, v83, v187 :: v_dual_sub_f32 v78, v78, v188
	v_dual_sub_f32 v84, v84, v187 :: v_dual_sub_f32 v61, v61, v188
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v102, v102
	v_exp_f32_e32 v95, v95
	.loc	1 688 24 is_stmt 1              ; attention.py:688:24
	v_dual_max_f32 v198, v198, v38 :: v_dual_sub_f32 v103, v104, v185
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v38, v51, s69, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v195.l, v58.h
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v94, v94, v185 :: v_dual_sub_f32 v99, v99, v186
	v_dual_sub_f32 v96, v96, v185 :: v_dual_sub_f32 v89, v89, v186
	v_dual_sub_f32 v62, v62, v188 :: v_dual_sub_f32 v37, v128, v50
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v98, v98
	v_exp_f32_e32 v90, v90
	v_exp_f32_e32 v85, v85
	v_exp_f32_e32 v81, v81
	v_exp_f32_e32 v86, v86
	v_exp_f32_e32 v82, v82
	v_exp_f32_e32 v87, v87
	v_exp_f32_e32 v83, v83
	v_exp_f32_e32 v88, v88
	v_exp_f32_e32 v84, v84
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v39, v214, v200, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v80, v80, v188 :: v_dual_and_b32 v209, 1, v195
	v_dual_sub_f32 v63, v63, v188 :: v_dual_sub_f32 v200, v126, v198
	v_sub_f32_e32 v64, v64, v188
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v207, v37
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v37, v38, v51, v121
	v_perm_b32 v38, v38, v51, v122
	v_permlanex16_b32 v51, v52, s69, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v195.l, v56.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v93, v93
	v_exp_f32_e32 v101, v101
	v_exp_f32_e32 v94, v94
	v_exp_f32_e32 v103, v103
	v_exp_f32_e32 v96, v96
	v_exp_f32_e32 v97, v97
	v_exp_f32_e32 v89, v89
	v_exp_f32_e32 v99, v99
	v_exp_f32_e32 v91, v91
	v_exp_f32_e32 v100, v100
	v_exp_f32_e32 v92, v92
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v102, 0, v102, s11
	v_cndmask_b32_e64 v95, 0, v95, s26
	.loc	1 689 74 is_stmt 1              ; attention.py:689:74
	v_dual_sub_f32 v104, v127, v197 :: v_dual_mov_b32 v127, v197
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v197, v49
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v54.h, 0x7fff, v39.h, s44
	v_add3_u32 v208, v215, v40, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v77, v77
	v_exp_f32_e32 v61, v61
	v_exp_f32_e32 v79, v79
	v_exp_f32_e32 v63, v63
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v39, v51, v52, v121
	v_perm_b32 v40, v51, v52, v122
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v98, 0, v98, s17
	v_cndmask_b32_e64 v90, 0, v90, s31
	v_cndmask_b32_e64 v85, 0, v85, s23
	v_cndmask_b32_e64 v81, 0, v81, s5
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v52, 1, v195
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v86, 0, v86, s20
	v_cndmask_b32_e64 v82, 0, v82, s35
	v_cndmask_b32_e64 v87, 0, v87, s16
	v_cndmask_b32_e64 v83, 0, v83, s34
	v_cndmask_b32_e64 v88, 0, v88, s12
	v_cndmask_b32_e64 v84, 0, v84, s4
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v78, v78
	v_exp_f32_e32 v62, v62
	v_exp_f32_e32 v80, v80
	v_exp_f32_e32 v64, v64
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v195.l, v53.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v197, 0, v197, s18
	v_cndmask_b32_e64 v93, 0, v93, s28
	v_cndmask_b32_e64 v101, 0, v101, s14
	v_cndmask_b32_e64 v94, 0, v94, s27
	v_cndmask_b32_e64 v103, 0, v103, s9
	v_cndmask_b32_e64 v96, 0, v96, s25
	v_cndmask_b32_e64 v97, 0, v97, s21
	v_cndmask_b32_e64 v89, 0, v89, s33
	v_cndmask_b32_e64 v99, 0, v99, s13
	v_cndmask_b32_e64 v91, 0, v91, s30
	v_cndmask_b32_e64 v100, 0, v100, s10
	v_cndmask_b32_e64 v92, 0, v92, s29
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v90, v98, v90 :: v_dual_add_f32 v83, v87, v83
	v_add_f32_e32 v81, v85, v81
.Ltmp92:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v56, v56, v52, 0x7fff
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v82, v86, v82
	v_add_f32_e32 v84, v88, v84
	v_dual_mov_b32 v128, v50 :: v_dual_add_f32 v93, v197, v93
	v_dual_mov_b32 v126, v198 :: v_dual_add_f32 v89, v97, v89
.Ltmp94:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v51, v58, v209, 0x7fff
	v_cndmask_b16 v202.h, 0x7fff, v208.h, s43
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v198, 0, v77, s24
	v_cndmask_b32_e64 v61, 0, v61, s7
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v58, 1, v195
	v_mov_b16_e64 v195.l, v55.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v208, 0, v79, s19
	v_cndmask_b32_e64 v63, 0, v63, s36
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v204.h, 0x7fff, v56.h, s41
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v94, v101, v94 :: v_dual_add_f32 v91, v99, v91
	v_dual_add_f32 v95, v102, v95 :: v_dual_add_f32 v96, v103, v96
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v63, v208, v63
	v_dual_add_f32 v92, v100, v92 :: v_dual_add_f32 v89, v89, v90
	v_dual_add_f32 v81, v81, v82 :: v_dual_add_f32 v82, v83, v84
.Ltmp96:
	.loc	1 689 74                        ; attention.py:689:74
	v_dual_sub_f32 v206, v125, v199 :: v_dual_mov_b32 v125, v199
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v199, 0, v78, s22
	v_cndmask_b32_e64 v62, 0, v62, s8
	v_cndmask_b32_e64 v209, 0, v80, s15
	v_cndmask_b32_e64 v64, 0, v64, s6
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v61, v198, v61
.Ltmp98:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v56, v53, v58, 0x7fff
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v87, v93, v94 :: v_dual_and_b32 v58, 1, v195
.Ltmp100:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v195.l, v57.h
	v_permlanex16_b32 v85, v204, s69, 0xfedcba98 op_sel:[1,0]
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v90, v91, v92 :: v_dual_add_f32 v81, v81, v82
	v_add_f32_e32 v88, v95, v96
	v_add_f32_e32 v64, v209, v64
.Ltmp102:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v205.h, 0x7fff, v56.h, s40
	v_add3_u32 v58, v55, v58, 0x7fff
	v_perm_b32 v55, v85, v204, v121
	v_perm_b32 v56, v85, v204, v122
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v85, v89, v90 :: v_dual_add_f32 v84, v87, v88
	v_add_f32_e32 v62, v199, v62
.Ltmp104:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v86, 1, v195
	v_permlanex16_b32 v50, v54, s69, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v195.l, v59.h
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v104, v104
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v61, v61, v62 :: v_dual_add_f32 v62, v63, v64
.Ltmp106:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v64, v57, v86, 0x7fff
	v_perm_b32 v49, v50, v54, v121
	v_perm_b32 v50, v50, v54, v122
	v_cndmask_b16 v203.h, 0x7fff, v51.h, s42
	v_permlanex16_b32 v54, v202, s69, 0xfedcba98 op_sel:[1,0]
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v200, v200
	v_exp_f32_e32 v206, v206
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v60.h, 0x7fff, v58.h, s39
	v_and_b32_e32 v83, 1, v195
	v_cndmask_b16 v201.h, 0x7fff, v64.h, s38
	v_perm_b32 v51, v54, v202, v121
	v_perm_b32 v52, v54, v202, v122
	v_permlanex16_b32 v54, v203, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v63, v205, s69, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s37, v59, v59
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v82, v61, v62
.Ltmp108:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v61, v60, s69, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v62, v59, v83, 0x7fff
	v_permlanex16_b32 v87, v201, s69, 0xfedcba98 op_sel:[1,0]
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v79, 0, v104, s46
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v53, v54, v203, v121
	v_perm_b32 v54, v54, v203, v122
	v_perm_b32 v57, v63, v205, v121
	v_perm_b32 v58, v63, v205, v122
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(3)
	ds_store_b128 v196, v[65:68]
	s_waitcnt vmcnt(2)
	ds_store_b128 v196, v[69:72] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v196, v[73:76] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v196, v[105:108] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v69, v133 offset:1024
	ds_load_u16_d16 v93, v133 offset:1088
	ds_load_u16_d16 v65, v133
	ds_load_u16_d16 v91, v133 offset:576
	ds_load_u16_d16 v66, v133 offset:256
	ds_load_u16_d16 v99, v133 offset:608
	ds_load_u16_d16 v98, v133 offset:352
	ds_load_u16_d16 v67, v133 offset:512
	ds_load_u16_d16 v196, v133 offset:288
	ds_load_u16_d16 v68, v133 offset:768
	ds_load_u16_d16 v92, v133 offset:832
	ds_load_u16_d16 v197, v133 offset:544
	ds_load_u16_d16 v70, v133 offset:1280
	ds_load_u16_d16 v94, v133 offset:1344
	ds_load_u16_d16 v101, v133 offset:1120
	ds_load_u16_d16 v71, v133 offset:1536
	ds_load_u16_d16 v95, v133 offset:1600
	ds_load_u16_d16 v102, v133 offset:1376
	ds_load_u16_d16 v72, v133 offset:1792
	ds_load_u16_d16 v96, v133 offset:1856
	ds_load_u16_d16 v103, v133 offset:1632
	ds_load_u16_d16 v203, v133 offset:2112
	ds_load_u16_d16 v104, v133 offset:1888
	ds_load_u16_d16 v211, v133 offset:2048
	ds_load_u16_d16 v213, v133 offset:2560
	ds_load_u16_d16 v205, v133 offset:2624
	ds_load_u16_d16 v204, v133 offset:2368
	ds_load_u16_d16 v212, v133 offset:2304
	ds_load_u16_d16 v195, v133 offset:32
	ds_load_u16_d16 v89, v133 offset:64
	ds_load_u16_d16 v90, v133 offset:320
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v78, 0, v207, s45
	v_cndmask_b32_e64 v80, 0, v200, s47
	v_cndmask_b32_e64 v77, 0, v206, s48
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v59, v61, v60, v121
	v_perm_b32 v60, v61, v60, v122
	v_cndmask_b16 v190.h, 0x7fff, v62.h, s37
	v_perm_b32 v61, v87, v201, v121
	v_perm_b32 v62, v87, v201, v122
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v220, v133 offset:2400
	ds_load_u16_d16 v214, v133 offset:2816
	ds_load_u16_d16 v206, v133 offset:2880
	ds_load_u16_d16 v221, v133 offset:2656
	ds_load_u16_d16 v215, v133 offset:3072
	ds_load_u16_d16 v207, v133 offset:3136
	ds_load_u16_d16 v222, v133 offset:2912
	ds_load_u16_d16 v216, v133 offset:3328
	ds_load_u16_d16 v208, v133 offset:3392
	ds_load_u16_d16 v223, v133 offset:3168
	ds_load_u16_d16 v217, v133 offset:3584
	ds_load_u16_d16 v209, v133 offset:3648
	ds_load_u16_d16 v224, v133 offset:3424
	ds_load_u16_d16 v218, v133 offset:3840
	ds_load_u16_d16 v210, v133 offset:3904
	ds_load_u16_d16 v225, v133 offset:3680
	ds_load_u16_d16 v100, v133 offset:864
	ds_load_u16_d16 v198, v133 offset:800
	ds_load_u16_d16 v199, v133 offset:1056
	ds_load_u16_d16 v200, v133 offset:1312
	ds_load_u16_d16 v201, v133 offset:1568
	ds_load_u16_d16 v202, v133 offset:1824
	s_waitcnt lgkmcnt(41)
	ds_load_u16_d16_hi v197, v133 offset:672
	ds_load_u16_d16_hi v99, v133 offset:736
	ds_load_u16_d16_hi v98, v133 offset:480
	ds_load_u16_d16 v97, v133 offset:96
	ds_load_u16_d16_hi v65, v133 offset:128
	ds_load_u16_d16_hi v67, v133 offset:640
	ds_load_u16_d16_hi v66, v133 offset:384
	ds_load_u16_d16_hi v91, v133 offset:704
	ds_load_u16_d16_hi v68, v133 offset:896
	ds_load_u16_d16_hi v92, v133 offset:960
	ds_load_u16_d16_hi v69, v133 offset:1152
	ds_load_u16_d16_hi v93, v133 offset:1216
	s_waitcnt lgkmcnt(52)
	ds_load_u16_d16_hi v70, v133 offset:1408
	s_waitcnt lgkmcnt(52)
	ds_load_u16_d16_hi v94, v133 offset:1472
	s_waitcnt lgkmcnt(51)
	ds_load_u16_d16_hi v71, v133 offset:1664
	s_waitcnt lgkmcnt(51)
	ds_load_u16_d16_hi v95, v133 offset:1728
	s_waitcnt lgkmcnt(50)
	ds_load_u16_d16_hi v72, v133 offset:1920
	s_waitcnt lgkmcnt(50)
	ds_load_u16_d16_hi v96, v133 offset:1984
	s_waitcnt lgkmcnt(42)
	ds_load_u16_d16_hi v195, v133 offset:160
	s_waitcnt lgkmcnt(42)
	ds_load_u16_d16_hi v89, v133 offset:192
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v198, v133 offset:928
	ds_load_u16_d16_hi v100, v133 offset:992
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v199, v133 offset:1184
	ds_load_u16_d16_hi v101, v133 offset:1248
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v200, v133 offset:1440
	ds_load_u16_d16_hi v102, v133 offset:1504
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v201, v133 offset:1696
	ds_load_u16_d16_hi v103, v133 offset:1760
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v202, v133 offset:1952
	ds_load_u16_d16_hi v104, v133 offset:2016
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v97, v133 offset:224
	ds_load_u16_d16_hi v196, v133 offset:416
	ds_load_u16_d16_hi v90, v133 offset:448
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v63, v84
	v_mov_b32_e32 v83, v81
.Ltmp110:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v87, v190, s69, 0xfedcba98 op_sel:[1,0]
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s4, s104, 64
	s_cmpk_lt_u32 s104, 0x7c0
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v63, v63 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v83, v83 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp112:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[65:72], v[41:48], v[17:24]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v65, v133 offset:4160
	ds_load_u16_d16 v226, v133 offset:3936
	s_mov_b32 s104, s4
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v84, v84, v63
	v_add_f32_e32 v83, v81, v83
.Ltmp114:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v63, v87, v190, v121
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v81, v84
.Ltmp116:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[97:104], v[41:48], v[1:8]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v99, v133 offset:2080
	ds_load_u16_d16 v100, v133 offset:2336
	ds_load_u16_d16 v101, v133 offset:2592
	ds_load_u16_d16 v102, v133 offset:2848
	ds_load_u16_d16 v103, v133 offset:3104
	ds_load_u16_d16 v104, v133 offset:3360
	ds_load_u16_d16 v105, v133 offset:3616
	ds_load_u16_d16 v106, v133 offset:3872
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v81, v81 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v64, v85
.Ltmp118:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(11)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[195:202], v[41:48], v[25:32]
	s_waitcnt lgkmcnt(10)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[89:96], v[41:48], v[9:16]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v42, v133 offset:4448
	ds_load_u16_d16 v92, v133 offset:4864
	ds_load_u16_d16 v68, v133 offset:4928
	ds_load_u16_d16 v43, v133 offset:4704
	ds_load_u16_d16 v93, v133 offset:5120
	ds_load_u16_d16 v69, v133 offset:5184
	ds_load_u16_d16 v44, v133 offset:4960
	ds_load_u16_d16 v94, v133 offset:5376
	ds_load_u16_d16 v70, v133 offset:5440
	ds_load_u16_d16 v45, v133 offset:5216
	ds_load_u16_d16 v95, v133 offset:5632
	ds_load_u16_d16 v71, v133 offset:5696
	ds_load_u16_d16 v46, v133 offset:5472
	ds_load_u16_d16 v96, v133 offset:5888
	ds_load_u16_d16 v72, v133 offset:5952
	ds_load_u16_d16 v47, v133 offset:5728
	ds_load_u16_d16 v97, v133 offset:6208
	ds_load_u16_d16 v48, v133 offset:5984
	ds_load_u16_d16 v98, v133 offset:6464
	ds_load_u16_d16 v219, v133 offset:2144
	ds_load_u16_d16_hi v211, v133 offset:2176
	ds_load_u16_d16_hi v203, v133 offset:2240
	ds_load_u16_d16_hi v212, v133 offset:2432
	ds_load_u16_d16_hi v204, v133 offset:2496
	ds_load_u16_d16_hi v213, v133 offset:2688
	ds_load_u16_d16_hi v205, v133 offset:2752
	ds_load_u16_d16_hi v214, v133 offset:2944
	ds_load_u16_d16_hi v206, v133 offset:3008
	ds_load_u16_d16_hi v215, v133 offset:3200
	ds_load_u16_d16_hi v207, v133 offset:3264
	ds_load_u16_d16_hi v216, v133 offset:3456
	ds_load_u16_d16_hi v208, v133 offset:3520
	ds_load_u16_d16_hi v217, v133 offset:3712
	ds_load_u16_d16_hi v209, v133 offset:3776
	ds_load_u16_d16_hi v218, v133 offset:3968
	ds_load_u16_d16_hi v210, v133 offset:4032
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v81, v84, v81
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v64, v64 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp121:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v99, v133 offset:2208
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v219, v133 offset:2272
	ds_load_u16_d16_hi v100, v133 offset:2464
	ds_load_u16_d16_hi v220, v133 offset:2528
	ds_load_u16_d16_hi v101, v133 offset:2720
	ds_load_u16_d16_hi v221, v133 offset:2784
	ds_load_u16_d16_hi v102, v133 offset:2976
	ds_load_u16_d16_hi v222, v133 offset:3040
	ds_load_u16_d16_hi v103, v133 offset:3232
	ds_load_u16_d16_hi v223, v133 offset:3296
	ds_load_u16_d16_hi v104, v133 offset:3488
	ds_load_u16_d16_hi v224, v133 offset:3552
	ds_load_u16_d16_hi v105, v133 offset:3744
	ds_load_u16_d16_hi v225, v133 offset:3808
	ds_load_u16_d16_hi v106, v133 offset:4000
	ds_load_u16_d16_hi v226, v133 offset:4064
	ds_load_u16_d16 v89, v133 offset:4096
	ds_load_u16_d16 v91, v133 offset:4608
	ds_load_u16_d16 v67, v133 offset:4672
	ds_load_u16_d16 v66, v133 offset:4416
	ds_load_u16_d16 v90, v133 offset:4352
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v85, v85, v64
.Ltmp123:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v64, v87, v190, v122
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v87, v83
.Ltmp125:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(21)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[203:210], v[33:40], v[9:16]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v195, v133 offset:6144
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[211:218], v[33:40], v[17:24]
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v87, v87 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v86, v82 :: v_dual_add_f32 v83, v83, v87
	v_mov_b32_dpp v86, v86 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp127:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(7)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[99:106], v[33:40], v[25:32]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v203, v133 offset:6240
	ds_load_u16_d16 v196, v133 offset:6400
	ds_load_u16_d16 v197, v133 offset:6656
	ds_load_u16_d16 v99, v133 offset:6720
	ds_load_u16_d16 v204, v133 offset:6496
	ds_load_u16_d16 v198, v133 offset:6912
	ds_load_u16_d16 v100, v133 offset:6976
	ds_load_u16_d16 v205, v133 offset:6752
	ds_load_u16_d16 v199, v133 offset:7168
	ds_load_u16_d16 v101, v133 offset:7232
	ds_load_u16_d16 v206, v133 offset:7008
	ds_load_u16_d16 v200, v133 offset:7424
	ds_load_u16_d16 v102, v133 offset:7488
	ds_load_u16_d16 v207, v133 offset:7264
	ds_load_u16_d16 v201, v133 offset:7680
	ds_load_u16_d16 v103, v133 offset:7744
	ds_load_u16_d16 v208, v133 offset:7520
	ds_load_u16_d16 v202, v133 offset:7936
	ds_load_u16_d16 v104, v133 offset:8000
	ds_load_u16_d16 v209, v133 offset:7776
	ds_load_u16_d16 v210, v133 offset:8032
	ds_load_u16_d16 v41, v133 offset:4192
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v89, v133 offset:4224
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v86, v82, v86 :: v_dual_mov_b32 v87, v83
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v82, v85
.Ltmp130:
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[219:226], v[33:40], v[1:8]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v33, v133 offset:4128
	ds_load_u16_d16_hi v65, v133 offset:4288
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v66, v133 offset:4544
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v90, v133 offset:4480
	ds_load_u16_d16 v34, v133 offset:4384
	ds_load_u16_d16_hi v91, v133 offset:4736
	ds_load_u16_d16_hi v67, v133 offset:4800
	ds_load_u16_d16 v35, v133 offset:4640
	ds_load_u16_d16_hi v92, v133 offset:4992
	ds_load_u16_d16_hi v68, v133 offset:5056
	ds_load_u16_d16 v36, v133 offset:4896
	ds_load_u16_d16_hi v93, v133 offset:5248
	ds_load_u16_d16_hi v69, v133 offset:5312
	ds_load_u16_d16 v37, v133 offset:5152
	ds_load_u16_d16_hi v94, v133 offset:5504
	ds_load_u16_d16_hi v70, v133 offset:5568
	ds_load_u16_d16 v38, v133 offset:5408
	ds_load_u16_d16_hi v95, v133 offset:5760
	ds_load_u16_d16_hi v71, v133 offset:5824
	ds_load_u16_d16 v39, v133 offset:5664
	ds_load_u16_d16_hi v96, v133 offset:6016
	ds_load_u16_d16_hi v72, v133 offset:6080
	ds_load_u16_d16 v40, v133 offset:5920
	ds_load_u16_d16_hi v97, v133 offset:6336
	s_waitcnt lgkmcnt(47)
	ds_load_u16_d16_hi v195, v133 offset:6272
	ds_load_u16_d16 v211, v133 offset:6176
	ds_load_u16_d16_hi v98, v133 offset:6592
	s_waitcnt lgkmcnt(48)
	ds_load_u16_d16_hi v196, v133 offset:6528
	ds_load_u16_d16 v212, v133 offset:6432
	s_waitcnt lgkmcnt(49)
	ds_load_u16_d16_hi v197, v133 offset:6784
	s_waitcnt lgkmcnt(49)
	ds_load_u16_d16_hi v99, v133 offset:6848
	ds_load_u16_d16 v213, v133 offset:6688
	s_waitcnt lgkmcnt(49)
	ds_load_u16_d16_hi v198, v133 offset:7040
	s_waitcnt lgkmcnt(49)
	ds_load_u16_d16_hi v100, v133 offset:7104
	ds_load_u16_d16 v214, v133 offset:6944
	s_waitcnt lgkmcnt(49)
	ds_load_u16_d16_hi v199, v133 offset:7296
	s_waitcnt lgkmcnt(49)
	ds_load_u16_d16_hi v101, v133 offset:7360
	ds_load_u16_d16 v215, v133 offset:7200
	s_waitcnt lgkmcnt(49)
	ds_load_u16_d16_hi v200, v133 offset:7552
	s_waitcnt lgkmcnt(49)
	ds_load_u16_d16_hi v102, v133 offset:7616
	ds_load_u16_d16 v216, v133 offset:7456
	s_waitcnt lgkmcnt(49)
	ds_load_u16_d16_hi v201, v133 offset:7808
	s_waitcnt lgkmcnt(49)
	ds_load_u16_d16_hi v103, v133 offset:7872
	ds_load_u16_d16 v217, v133 offset:7712
	s_waitcnt lgkmcnt(49)
	ds_load_u16_d16_hi v202, v133 offset:8064
	s_waitcnt lgkmcnt(49)
	ds_load_u16_d16_hi v104, v133 offset:8128
	ds_load_u16_d16 v218, v133 offset:7968
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v82, v82 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp132:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(46)
	ds_load_u16_d16_hi v33, v133 offset:4256
	ds_load_u16_d16_hi v41, v133 offset:4320
	s_waitcnt lgkmcnt(44)
	ds_load_u16_d16_hi v34, v133 offset:4512
	ds_load_u16_d16_hi v42, v133 offset:4576
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v35, v133 offset:4768
	ds_load_u16_d16_hi v43, v133 offset:4832
	s_waitcnt lgkmcnt(42)
	ds_load_u16_d16_hi v36, v133 offset:5024
	ds_load_u16_d16_hi v44, v133 offset:5088
	s_waitcnt lgkmcnt(41)
	ds_load_u16_d16_hi v37, v133 offset:5280
	ds_load_u16_d16_hi v45, v133 offset:5344
	s_waitcnt lgkmcnt(40)
	ds_load_u16_d16_hi v38, v133 offset:5536
	ds_load_u16_d16_hi v46, v133 offset:5600
	s_waitcnt lgkmcnt(39)
	ds_load_u16_d16_hi v39, v133 offset:5792
	ds_load_u16_d16_hi v47, v133 offset:5856
	s_waitcnt lgkmcnt(38)
	ds_load_u16_d16_hi v40, v133 offset:6048
	ds_load_u16_d16_hi v48, v133 offset:6112
	s_waitcnt lgkmcnt(37)
	ds_load_u16_d16_hi v211, v133 offset:6304
	ds_load_u16_d16_hi v203, v133 offset:6368
	s_waitcnt lgkmcnt(36)
	ds_load_u16_d16_hi v212, v133 offset:6560
	ds_load_u16_d16_hi v204, v133 offset:6624
	s_waitcnt lgkmcnt(35)
	ds_load_u16_d16_hi v213, v133 offset:6816
	ds_load_u16_d16_hi v205, v133 offset:6880
	s_waitcnt lgkmcnt(34)
	ds_load_u16_d16_hi v214, v133 offset:7072
	ds_load_u16_d16_hi v206, v133 offset:7136
	s_waitcnt lgkmcnt(33)
	ds_load_u16_d16_hi v215, v133 offset:7328
	ds_load_u16_d16_hi v207, v133 offset:7392
	s_waitcnt lgkmcnt(32)
	ds_load_u16_d16_hi v216, v133 offset:7584
	ds_load_u16_d16_hi v208, v133 offset:7648
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v217, v133 offset:7840
	ds_load_u16_d16_hi v209, v133 offset:7904
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v218, v133 offset:8096
	ds_load_u16_d16_hi v210, v133 offset:8160
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v82, v85, v82
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v85, v81
	v_mov_b32_dpp v87, v87 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp135:
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[89:96], v[49:56], v[17:24]
	s_waitcnt lgkmcnt(17)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[33:40], v[49:56], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[65:72], v[49:56], v[9:16]
.Ltmp136:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v85, v85 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v88, v86
.Ltmp137:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v74, v83, v87
.Ltmp138:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[49:56], v[1:8]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[195:202], v[57:64], v[17:24]
.Ltmp139:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v73, v81, v85
.Ltmp140:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v88, v88 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp141:
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v74, v194, v80
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[97:104], v[57:64], v[9:16]
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 701 23                        ; attention.py:701:23
	v_dual_fmac_f32 v73, v192, v78 :: v_dual_add_f32 v84, v86, v88
.Ltmp142:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v86, v82
.Ltmp143:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[211:218], v[57:64], v[25:32]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[203:210], v[57:64], v[1:8]
.Ltmp144:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v86, v86 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp145:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v75, v82, v86
.Ltmp146:
	.loc	1 701 23                        ; attention.py:701:23
	v_dual_fmac_f32 v75, v193, v79 :: v_dual_mov_b32 v88, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp147:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v88, v88 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp148:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v76, v84, v88
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp149:
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v76, v191, v77
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	v_lshrrev_b32_e32 v0, 4, v0
	v_and_b32_e32 v33, 0x80, v129
	v_lshl_add_u32 v34, v124, 3, 0
	v_add_nc_u32_e32 v35, 0, v131
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v0, 4, v0
	s_barrier
	s_mov_b32 s11, 0x31027000
	ds_store_2addr_b64 v35, v[73:74], v[75:76] offset1:16
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
	v_lshrrev_b32_e32 v32, 1, v123
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
	v_mul_lo_u32 v36, s85, v120
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
	v_perm_b32 v10, v11, v12, v121
	v_perm_b32 v11, v11, v12, v122
	v_perm_b32 v12, v13, v17, v121
	v_perm_b32 v13, v13, v17, v122
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v17, v36, v33, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v0, v2, v4, v121
	v_perm_b32 v1, v2, v4, v122
	v_perm_b32 v4, v5, v8, v121
	v_perm_b32 v5, v5, v8, v122
	v_perm_b32 v8, v9, v16, v121
	v_perm_b32 v9, v9, v16, v122
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v16, v36, v32, 1
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s3, s85, v35
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v2, v3, v6, v121
	v_perm_b32 v3, v3, v6, v122
	v_perm_b32 v6, v7, v14, v121
	v_perm_b32 v7, v7, v14, v122
	v_perm_b32 v14, v15, v18, v121
	v_perm_b32 v15, v15, v18, v122
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
.Ltmp150:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 245
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 245
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18592
; TotalNumSgprs: 107
; NumVgprs: 245
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 245
; Occupancy: 5
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
	.quad	.Ltmp12-.Lfunc_begin0
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
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
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
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
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
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
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
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
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
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     107
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     245
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
