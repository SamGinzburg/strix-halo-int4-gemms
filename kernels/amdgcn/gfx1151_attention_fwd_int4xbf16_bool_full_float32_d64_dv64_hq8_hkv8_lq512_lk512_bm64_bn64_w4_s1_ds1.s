	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
	v_lshrrev_b32_e32 v46, 1, v0
	s_load_b256 s[68:75], s[0:1], 0x0
	v_dual_mov_b32 v52, 0x7632 :: v_dual_lshlrev_b32 v47, 4, v0
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s6, s2, 6
	.loc	1 583 26                        ; attention.py:583:26
	s_lshl_b32 s7, s3, 9
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s6, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v82, 0xff800000 :: v_dual_and_b32 v45, 16, v47
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s8, s6, s7
	s_mov_b32 s95, 0x31027000
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, 0x200, v1
	s_mov_b32 s94, 0x7ffffffe
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v48, 0x60, v0
	v_dual_mov_b32 v138, 0xff800000 :: v_dual_and_b32 v49, 15, v0
	s_mov_b32 s76, 0
	.loc	1 584 26                        ; attention.py:584:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v2, s84, v46
	s_mul_i32 s9, s84, s8
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e32 vcc_lo, s84, v45
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s93, s69, 0xffff
	s_mov_b32 s92, s68
	s_mov_b32 s82, s76
	s_mov_b32 s77, s76
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 584 26                        ; attention.py:584:26
	v_add3_u32 v1, v2, v45, s9
	s_mov_b32 s78, s76
	s_mov_b32 s79, s76
	s_mov_b32 s80, s76
	s_mov_b32 s81, s76
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_mov_b32 s83, s76
	v_dual_mov_b32 v33, s76 :: v_dual_mov_b32 v38, s81
	v_dual_mov_b32 v39, s82 :: v_dual_lshlrev_b32 v56, 1, v0
	buffer_load_b128 v[41:44], v1, s[92:95], 0 offen
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v1, 1, v48
	.loc	1 590 31                        ; attention.py:590:31
	s_and_b32 s93, s75, 0xffff
	s_mov_b32 s92, s74
	.loc	1 570 31                        ; attention.py:570:31
	v_bfe_u32 v136, v0, 4, 1
	v_dual_mov_b32 v30, v25 :: v_dual_and_b32 v57, 24, v0
	v_or_b32_e32 v1, v1, v49
	v_dual_mov_b32 v27, v25 :: v_dual_and_b32 v58, 12, v0
	v_dual_mov_b32 v37, s80 :: v_dual_and_b32 v54, 3, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 591 17                        ; attention.py:591:17
	v_or_b32_e32 v135, s8, v1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s6, v1
	v_mov_b32_e32 v51, 0x5410
	.loc	1 570 31 is_stmt 0              ; attention.py:570:31
	v_lshrrev_b32_e32 v53, 2, v0
	v_dual_mov_b32 v28, v25 :: v_dual_and_b32 v55, 16, v0
	.loc	1 590 31 is_stmt 1              ; attention.py:590:31
	v_lshlrev_b32_e32 v2, 1, v135
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, 0x200, v1
	v_dual_mov_b32 v18, v25 :: v_dual_lshlrev_b32 v141, 5, v0
	v_dual_mov_b32 v29, v25 :: v_dual_lshlrev_b32 v140, 2, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 590 31                        ; attention.py:590:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_dual_mov_b32 v20, v25 :: v_dual_lshlrev_b32 v63, 1, v58
	v_dual_mov_b32 v24, v25 :: v_dual_lshlrev_b32 v67, 2, v48
	buffer_load_u16 v50, v1, s[92:95], 0 offen
	v_mov_b32_e32 v12, v25
	.loc	1 585 26                        ; attention.py:585:26
	v_and_or_b32 v62, v56, 30, v136
	v_xor_b32_e32 v57, v47, v57
	v_and_b32_e32 v47, 0x80, v47
	v_dual_mov_b32 v32, v25 :: v_dual_and_b32 v59, 48, v0
	v_dual_mov_b32 v17, v25 :: v_dual_lshlrev_b32 v142, 3, v49
	v_dual_mov_b32 v10, v25 :: v_dual_lshlrev_b32 v143, 5, v54
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v61, s6, v53
	v_dual_mov_b32 v31, v25 :: v_dual_lshlrev_b32 v60, 4, v54
	v_dual_mov_b32 v21, v25 :: v_dual_and_b32 v66, 0x260, v141
	v_dual_mov_b32 v22, v25 :: v_dual_lshlrev_b32 v65, 8, v58
	v_dual_mov_b32 v23, v25 :: v_dual_lshlrev_b32 v68, 11, v54
	v_dual_mov_b32 v11, v25 :: v_dual_lshlrev_b32 v54, 6, v55
	v_dual_mov_b32 v15, v25 :: v_dual_lshlrev_b32 v62, 2, v62
	v_lshl_add_u32 v144, v49, 1, 0
	v_lshl_or_b32 v49, v49, 5, v63
	v_or_b32_e32 v63, v67, v63
	v_and_or_b32 v47, v140, 16, v47
	s_clause 0x1
	s_load_b64 s[96:97], s[0:1], 0x20
	s_load_b128 s[88:91], s[0:1], 0x30
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	v_lshrrev_b32_e32 v64, 1, v59
	v_lshl_or_b32 v59, v59, 6, v142
	v_lshl_or_b32 v72, v58, 9, v143
	v_lshl_or_b32 v58, v58, 3, v67
	.loc	1 629 13                        ; attention.py:629:13
	v_or_b32_e32 v67, 32, v61
	.loc	1 566 23                        ; attention.py:566:23
	s_lshr_b32 s0, s0, 29
	v_dual_mov_b32 v9, v25 :: v_dual_lshlrev_b32 v48, 3, v48
	v_dual_mov_b32 v16, v25 :: v_dual_add_nc_u32 v147, 0, v57
	s_add_i32 s0, s3, s0
	.loc	1 629 13                        ; attention.py:629:13
	v_or_b32_e32 v46, s7, v46
	v_xor_b32_e32 v71, 8, v57
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v57, 4, v62
	v_or3_b32 v148, v65, v66, v63
	v_or3_b32 v47, v47, v68, v54
	v_dual_mov_b32 v13, v25 :: v_dual_lshlrev_b32 v70, 1, v136
	v_dual_mov_b32 v5, v25 :: v_dual_add_nc_u32 v152, 0, v49
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s1, s0, -8
	v_xor_b32_e32 v73, 8, v49
	v_xor_b32_e32 v74, 16, v49
	v_xor_b32_e32 v59, v59, v64
	v_xor_b32_e32 v64, 24, v49
	v_xor_b32_e32 v54, v72, v58
	.loc	1 629 13                        ; attention.py:629:13
	v_mul_lo_u32 v49, s5, v61
	v_mul_lo_u32 v58, s5, v67
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s8, s0, 3
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s1, s3, s1
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[126:127], null, s84, v46, v[45:46]
	v_xor_b32_e32 v45, 8, v148
	v_or3_b32 v153, v47, v48, v143
	v_lshl_or_b32 v146, s3, 10, v70
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s3, s87, s8
	.loc	1 676 27                        ; attention.py:676:27
	s_mul_i32 s4, s4, s1
	v_dual_mov_b32 v8, v25 :: v_dual_add_nc_u32 v163, 0, v45
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s3, s3, s4
	v_xor_b32_e32 v46, 16, v148
	v_xor_b32_e32 v48, 32, v153
	v_add3_u32 v159, s3, v49, v60
	v_add3_u32 v160, s3, v58, v60
	.loc	1 585 26                        ; attention.py:585:26
	v_cmp_eq_u32_e64 s3, 0, v55
	v_add_nc_u32_e32 v164, 0, v46
	v_add_nc_u32_e32 v166, 0, v48
	.loc	1 629 13                        ; attention.py:629:13
	v_or_b32_e32 v53, s7, v53
	v_dual_mov_b32 v19, v25 :: v_dual_and_b32 v56, 0x80, v56
	v_cndmask_b32_e64 v49, 0x1054, v51, s3
	v_cndmask_b32_e64 v51, 0x3276, v52, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_or_b32_e32 v70, 32, v53
	v_dual_mov_b32 v14, v25 :: v_dual_add_nc_u32 v69, 0, v55
	v_lshl_or_b32 v49, v49, 8, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v51, v51, 8, v51
	v_dual_mov_b32 v1, v25 :: v_dual_add_nc_u32 v56, 0, v56
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s0, 0x200, v61
	.loc	1 629 13                        ; attention.py:629:13
	v_mul_lo_u32 v61, s85, v70
	v_mul_lo_u32 v53, s85, v53
	v_dual_mov_b32 v4, v25 :: v_dual_add_nc_u32 v157, v56, v59
	v_xor_b32_e32 v63, 24, v148
	v_add_nc_u32_e32 v158, v69, v54
	v_xor_b32_e32 v54, 64, v153
	v_xor_b32_e32 v56, 0x60, v153
	v_dual_mov_b32 v137, 0xff800000 :: v_dual_mov_b32 v34, s77
	v_dual_mov_b32 v145, 0xff800000 :: v_dual_mov_b32 v36, s79
	v_dual_mov_b32 v35, s78 :: v_dual_mov_b32 v40, s83
	v_dual_mov_b32 v26, v25 :: v_dual_and_b32 v139, 0x7c, v0
	v_dual_mov_b32 v2, v25 :: v_dual_add_nc_u32 v155, 0, v74
	v_dual_mov_b32 v3, v25 :: v_dual_add_nc_u32 v150, 0, v71
	v_dual_mov_b32 v6, v25 :: v_dual_lshlrev_b32 v161, 1, v61
	v_dual_mov_b32 v7, v25 :: v_dual_add_nc_u32 v154, 0, v73
	v_dual_mov_b32 v149, v25 :: v_dual_add_nc_u32 v156, 0, v64
	v_dual_mov_b32 v151, v25 :: v_dual_lshlrev_b32 v162, 1, v53
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s1, s85, v60
	v_dual_mov_b32 v172, 0xff800000 :: v_dual_add_nc_u32 v165, 0, v63
	v_add_nc_u32_e32 v167, 0, v54
	v_add_nc_u32_e32 v168, 0, v56
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s69, s86, 0x3fb8aa3b
	s_and_b32 s71, s71, 0xffff
	s_mov_b32 s98, s94
	s_mov_b32 s99, s95
	s_waitcnt lgkmcnt(0)
	s_and_b32 s97, s97, 0xffff
	s_and_b32 s73, s73, 0xffff
	.loc	1 629 13                        ; attention.py:629:13
	s_lshl_b32 s77, s85, 7
	s_lshl_b32 s78, s84, 6
	s_mov_b32 s92, s70
	s_mov_b32 s93, s71
	s_mov_b32 s70, 0x76543210
	s_mov_b32 s74, s94
	s_mov_b32 s75, s95
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v47, v62, v41
	ds_bpermute_b32 v41, v57, v41
	ds_bpermute_b32 v45, v62, v42
	ds_bpermute_b32 v42, v57, v42
	ds_bpermute_b32 v46, v62, v43
	ds_bpermute_b32 v43, v57, v43
	ds_bpermute_b32 v48, v62, v44
	ds_bpermute_b32 v44, v57, v44
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v127, v41, v47, s3
	v_cndmask_b32_e64 v129, v47, v41, s3
	v_and_b32_e32 v41, 0x540054, v49
	v_and_b32_e32 v47, 0x760076, v51
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v128, v42, v45, s3
	v_cndmask_b32_e64 v130, v45, v42, s3
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v131, v43, v46, s3
	v_lshl_or_b32 v41, v41, 4, v41
	v_lshl_or_b32 v42, v47, 4, v47
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v169, 16, v50
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v133, v46, v43, s3
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v132, v44, v48, s3
	v_cndmask_b32_e64 v134, v48, v44, s3
	v_and_b32_e32 v170, 0x5040504, v41
	v_and_b32_e32 v171, 0x7060706, v42
	s_branch .LBB0_2
.LBB0_1:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 26 is_stmt 0                ; attention.py:0:26
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	v_mov_b16_e32 v81.l, 0
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v115, 8, v78
	v_lshrrev_b32_e32 v116, 8, v77
	v_lshrrev_b32_e32 v117, 8, v80
	v_lshrrev_b32_e32 v120, 8, v79
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v84.h, 0xff, v116.l
	v_and_b16 v85.h, 0xff, v77.h
	v_lshrrev_b32_e32 v116, 24, v77
	v_and_b16 v77.h, 0xff, v115.l
	v_and_b16 v86.h, 0xff, v78.h
	v_lshrrev_b32_e32 v115, 24, v78
	v_and_b16 v78.h, 0xff, v120.l
	v_and_b16 v87.h, 0xff, v79.h
	v_lshrrev_b32_e32 v120, 24, v79
	v_and_b16 v79.h, 0xff, v117.l
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v92.h, v90.l
	v_mov_b16_e32 v90.l, v81.l
	v_mov_b16_e32 v90.h, v88.l
	v_mov_b16_e32 v117.l, v81.l
	v_mov_b16_e32 v117.h, v87.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v55, v55
	v_mul_f32_e32 v44, v169, v44
	v_mul_f32_e32 v43, v169, v43
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v104.h, v101.l
	v_mov_b16_e32 v101.l, v81.l
	v_mov_b16_e32 v101.h, v99.l
	v_mov_b16_e32 v94.h, v93.l
	v_mov_b16_e32 v93.l, v81.l
	v_mov_b16_e32 v93.h, v91.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v72, v72
	v_cvt_f32_i32_e32 v63, v63
	v_dual_mul_f32 v55, v169, v55 :: v_dual_mul_f32 v90, v43, v90
	v_mul_f32_e32 v62, v169, v62
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v107.h, v105.l
	v_mov_b16_e32 v105.l, v81.l
	v_mov_b16_e32 v105.h, v103.l
	v_mov_b16_e32 v99.l, v81.l
	v_mov_b16_e32 v99.h, v97.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v70, v70
	v_cvt_f32_i32_e32 v59, v59
	v_mul_f32_e32 v93, v55, v93
	v_dual_mul_f32 v63, v169, v63 :: v_dual_mul_f32 v62, v62, v101
	v_mul_f32_e32 v72, v169, v72
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v111.h, v109.l
	v_mov_b16_e32 v109.l, v81.l
	v_mov_b16_e32 v109.h, v107.l
	v_mov_b16_e32 v110.h, v108.l
	v_mov_b16_e32 v108.l, v81.l
	v_mov_b16_e32 v108.h, v106.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v68, v68
	v_cvt_f32_i32_e32 v71, v71
	v_mul_f32_e32 v63, v63, v99
	v_dual_mul_f32 v59, v169, v59 :: v_dual_mul_f32 v72, v72, v105
	v_mul_f32_e32 v70, v169, v70
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v113.h, v112.l
	v_mov_b16_e32 v112.l, v81.l
	v_mov_b16_e32 v112.h, v111.l
	v_mov_b16_e32 v107.l, v81.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v66, v66
	v_cvt_f32_i32_e32 v67, v67
	v_cvt_f32_i32_e32 v56, v56
	v_mul_f32_e32 v59, v59, v108
	v_dual_mul_f32 v71, v169, v71 :: v_dual_mul_f32 v70, v70, v109
	v_mul_f32_e32 v68, v169, v68
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v81.h, v114.l
	v_mov_b16_e32 v114.l, v81.l
	v_mov_b16_e32 v114.h, v113.l
	v_mov_b16_e32 v113.l, v81.l
	v_mov_b16_e32 v91.l, v81.l
	v_mov_b16_e32 v91.h, v89.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v65, v65
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v51, v51
	v_dual_mul_f32 v56, v169, v56 :: v_dual_mul_f32 v71, v71, v107
	v_dual_mul_f32 v67, v169, v67 :: v_dual_mul_f32 v68, v68, v112
	v_mul_f32_e32 v66, v169, v66
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v97.l, v81.l
	v_mov_b16_e32 v97.h, v95.l
	v_mov_b16_e32 v102.h, v100.l
	v_mov_b16_e32 v100.l, v81.l
	v_mov_b16_e32 v100.h, v98.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v69, v69
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v47, v47
	v_dual_mul_f32 v64, v169, v64 :: v_dual_mul_f32 v91, v56, v91
	v_mul_f32_e32 v51, v169, v51
	v_mul_f32_e32 v67, v67, v113
	v_dual_mul_f32 v65, v169, v65 :: v_dual_mul_f32 v66, v66, v114
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v111.l, v81.l
	v_mov_b16_e32 v103.h, v110.l
	v_mov_b16_e32 v110.l, v81.l
	v_mov_b16_e32 v106.l, v81.l
	v_mov_b16_e32 v106.h, v104.l
	v_mov_b16_e32 v95.h, v102.l
	v_mov_b16_e32 v102.l, v81.l
	v_mov_b16_e32 v123.l, v81.l
	v_mov_b16_e32 v123.h, v84.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v52, v52
	v_dual_mul_f32 v47, v169, v47 :: v_dual_mul_f32 v66, s69, v66
	v_mul_f32_e32 v50, v169, v50
	v_mul_f32_e32 v60, v169, v60
	v_mul_f32_e32 v65, v65, v81
	v_mul_f32_e32 v64, v64, v97
	v_dual_mul_f32 v58, v169, v58 :: v_dual_mul_f32 v99, v51, v100
	v_mul_f32_e32 v69, v169, v69
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v88.h, 0xff, v80.h
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v103.l, v81.l
	v_mov_b16_e32 v104.l, v81.l
	v_mov_b16_e32 v98.l, v81.l
	v_mov_b16_e32 v98.h, v96.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v48, v48
	v_dual_mul_f32 v58, v58, v110 :: v_dual_mul_f32 v69, v69, v111
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v68, s69, v68 :: v_dual_mul_f32 v97, v50, v102
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v57, v169, v57 :: v_dual_mul_f32 v60, v60, v106
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v106, s69, v67
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v52, v169, v52 :: v_dual_mul_f32 v105, s69, v65
	v_mul_f32_e32 v61, v169, v61
	.loc	1 681 34                        ; attention.py:681:34
	v_lshrrev_b32_e32 v51, 8, v73
	v_and_b16 v83.h, 0xff, v77.l
	v_and_b16 v77.l, 0xff, v78.l
	v_and_b16 v78.l, 0xff, v79.l
	v_and_b16 v79.l, 0xff, v80.l
	v_cmp_ne_u16_e64 s25, 0, v88.h
	v_lshrrev_b32_e32 v118, 8, v74
	.loc	1 649 37                        ; attention.py:649:37
	v_mov_b16_e32 v95.l, v81.l
	v_mov_b16_e32 v96.h, v94.l
	v_mov_b16_e32 v94.l, v81.l
	v_mov_b16_e32 v121.l, v81.l
	v_mov_b16_e32 v121.h, v86.l
	v_mov_b16_e32 v124.l, v81.l
	v_mov_b16_e32 v124.h, v83.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v42, v42
	v_dual_mul_f32 v54, v169, v54 :: v_dual_mul_f32 v69, s69, v69
	v_mul_f32_e32 v49, v169, v49
	v_mul_f32_e32 v48, v169, v48
	v_dual_mul_f32 v98, v52, v98 :: v_dual_mul_f32 v61, v61, v104
	v_mul_f32_e32 v57, v57, v103
	v_mul_f32_e32 v103, v47, v123
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v47, s69, v62
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v45, v169, v45 :: v_dual_mul_f32 v104, v48, v124
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v50.l, 0xff, v73.l
	v_and_b16 v50.h, 0xff, v51.l
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v46, v46
	.loc	1 681 34                        ; attention.py:681:34
	v_lshrrev_b32_e32 v80, 24, v80
	v_cmp_ne_u16_e64 s5, 0, v85.h
	v_cmp_ne_u16_e64 s12, 0, v78.l
	v_cmp_ne_u16_e64 s17, 0, v87.h
	v_cmp_ne_u16_e64 s22, 0, v79.l
	.loc	1 681 25 is_stmt 0              ; attention.py:681:25
	s_and_b32 s34, s0, s25
	.loc	1 649 37 is_stmt 1              ; attention.py:649:37
	v_mov_b16_e32 v96.l, v81.l
	v_mov_b16_e32 v89.h, v92.l
	v_mov_b16_e32 v92.l, v81.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v42, v169, v42
	v_dual_mul_f32 v94, v54, v94 :: v_dual_mul_f32 v95, v49, v95
	v_mul_f32_e32 v101, v45, v121
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v49, s69, v70 :: v_dual_mul_f32 v48, s69, v71
	v_mul_f32_e32 v45, s69, v72
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v53, v169, v53 :: v_dual_mul_f32 v92, v42, v92
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v43, s69, v58 :: v_dual_mul_f32 v100, v44, v117
	v_mul_f32_e32 v70, s69, v61
	v_mul_f32_e32 v44, s69, v57
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v51.l, 0xff, v73.h
	v_lshrrev_b32_e32 v56, 24, v73
	v_and_b16 v51.h, 0xff, v74.l
	v_lshrrev_b32_e32 v54, 8, v75
	v_and_b16 v52.l, 0xff, v118.l
	v_and_b16 v52.h, 0xff, v74.h
	v_lshrrev_b32_e32 v57, 24, v74
	v_cmp_ne_u16_e64 s35, 0, v50.l
	v_cmp_ne_u16_e64 s38, 0, v50.h
	.loc	1 681 25 is_stmt 0              ; attention.py:681:25
	v_cndmask_b32_e64 v50, 0, 1, s34
	.loc	1 649 37 is_stmt 1              ; attention.py:649:37
	v_mov_b16_e32 v89.l, v81.l
	v_mov_b16_e32 v122.l, v81.l
	v_mov_b16_e32 v122.h, v85.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v46, v169, v46
	v_mul_f32_e32 v41, v169, v41
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s3, 0, v83.h
	v_cmp_ne_u16_e64 s10, 0, v86.h
	v_cmp_ne_u16_e64 s28, 0, v80.l
	.loc	1 681 25 is_stmt 0              ; attention.py:681:25
	s_and_b32 s15, s0, s5
	s_and_b32 s26, s0, s12
	s_and_b32 s29, s0, s17
	s_and_b32 s31, s0, s22
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s7, 0, v77.l
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_mul_f32_e32 v96, v53, v96
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v53.l, 0xff, v75.l
	v_and_b16 v53.h, 0xff, v54.l
	v_and_b16 v54.l, 0xff, v75.h
	v_and_b16 v54.h, 0xff, v76.l
	v_cmp_ne_u16_e64 s40, 0, v51.l
	v_cmp_ne_u16_e64 s41, 0, v56.l
	v_cmp_ne_u16_e64 s42, 0, v51.h
	v_cmp_ne_u16_e64 s43, 0, v52.l
	v_cmp_ne_u16_e64 s44, 0, v52.h
	v_cmp_ne_u16_e64 s46, 0, v57.l
	.loc	1 681 25 is_stmt 0              ; attention.py:681:25
	v_cndmask_b32_e64 v56, 0, 1, s15
	v_cndmask_b32_e64 v57, 0, 1, s26
	v_cndmask_b32_e64 v51, 0, 1, s29
	v_cndmask_b32_e64 v52, 0, 1, s31
	v_lshlrev_b16 v50.l, 8, v50.l
	.loc	1 654 30 is_stmt 1              ; attention.py:654:30
	v_dual_mul_f32 v102, v46, v122 :: v_dual_mul_f32 v89, v41, v89
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v42, s69, v59
	.loc	1 681 34                        ; attention.py:681:34
	v_lshrrev_b32_e32 v59, 24, v76
	v_cmp_ne_u16_e64 s11, 0, v115.l
	v_cmp_ne_u16_e64 s24, 0, v79.h
	.loc	1 681 25 is_stmt 0              ; attention.py:681:25
	s_and_b32 s9, s0, s3
	s_and_b32 s21, s0, s10
	s_and_b32 s36, s0, s28
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s20, 0, v120.l
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s18, s0, s7
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s47, 0, v53.l
	v_cmp_ne_u16_e64 s49, 0, v53.h
	v_cmp_ne_u16_e64 s50, 0, v54.l
	v_cmp_ne_u16_e64 s52, 0, v54.h
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v54, 0, 1, s9
	v_cndmask_b32_e64 v53, 0, 1, s21
	v_cndmask_b32_e64 v67, 0, 1, s36
	v_lshlrev_b16 v50.h, 8, v51.l
	v_mov_b16_e32 v51.l, v57.l
	v_or_b16 v57.h, v52.l, v50.l
	v_mov_b16_e32 v50.l, v56.l
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s55, 0, v59.l
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v59, 0, 1, s18
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s6, 0, v116.l
	v_cmp_ne_u16_e64 s8, 0, v77.h
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s23, s0, s11
	s_and_b32 s33, s0, s24
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v55.h, 0xff, v76.h
	v_cmp_ne_u16_e64 s13, 0, v78.h
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s30, s0, s20
	.loc	1 681 34                        ; attention.py:681:34
	v_lshrrev_b32_e32 v119, 8, v76
	v_lshrrev_b32_e32 v58, 24, v75
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v61, 0, 1, s23
	v_cndmask_b32_e64 v65, 0, 1, s33
	v_or_b16 v57.l, v51.l, v50.h
	v_mov_b16_e32 v51.l, v67.l
	v_lshlrev_b16 v50.h, 8, v53.l
	v_lshlrev_b16 v50.l, 8, v50.l
	v_mov_b16_e32 v53.l, v54.l
	.loc	1 664 17 is_stmt 1              ; attention.py:664:17
	v_mul_f32_e32 v46, s69, v63
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v63, 0, 1, s30
	v_mov_b16_e32 v52.l, v59.l
	.loc	1 681 34 is_stmt 0              ; attention.py:681:34
	v_cmp_ne_u16_e64 s4, 0, v84.h
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s16, s0, s6
	s_and_b32 s19, s0, s8
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s54, 0, v55.h
	.loc	1 681 25                        ; attention.py:681:25
	s_and_b32 s27, s0, s13
	.loc	1 664 17 is_stmt 1              ; attention.py:664:17
	v_mul_f32_e32 v41, s69, v60
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v55.l, 0xff, v119.l
	v_cmp_ne_u16_e64 s51, 0, v58.l
	.loc	1 681 25 is_stmt 0              ; attention.py:681:25
	v_cndmask_b32_e64 v58, 0, 1, s16
	v_cndmask_b32_e64 v60, 0, 1, s19
	v_lshlrev_b16 v51.l, 8, v51.l
	v_mov_b16_e32 v54.l, v65.l
	v_or_b16 v56.l, v53.l, v50.l
	v_mov_b16_e32 v50.l, v61.l
	v_cndmask_b32_e64 v62, 0, 1, s27
	v_or_b16 v56.h, v52.l, v50.h
	v_mov_b16_e32 v52.l, v63.l
	s_and_b32 s14, s0, s4
	s_and_b32 s50, s0, s50
	s_and_b32 s25, s0, s54
	.loc	1 681 34                        ; attention.py:681:34
	v_cmp_ne_u16_e64 s53, 0, v55.l
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v55, 0, 1, s14
	v_cndmask_b32_e64 v83, 0, 1, s50
	v_or_b16 v59.h, v54.l, v51.l
	v_mov_b16_e32 v51.l, v58.l
	v_lshlrev_b16 v50.l, 8, v50.l
	v_mov_b16_e32 v53.l, v60.l
	v_cndmask_b32_e64 v87, 0, 1, s25
	v_lshlrev_b16 v50.h, 8, v52.l
	v_mov_b16_e32 v52.l, v62.l
	s_and_b32 s45, s0, s44
	s_and_b32 s48, s0, s47
	s_and_b32 s40, s0, s40
	s_and_b32 s20, s0, s52
	v_cndmask_b32_e64 v77, 0, 1, s45
	v_cndmask_b32_e64 v79, 0, 1, s48
	v_lshlrev_b16 v51.l, 8, v51.l
	v_mov_b16_e32 v54.l, v55.l
	v_or_b16 v58.h, v53.l, v50.l
	v_mov_b16_e32 v50.l, v83.l
	v_cndmask_b32_e64 v73, 0, 1, s40
	v_cndmask_b32_e64 v85, 0, 1, s20
	v_or_b16 v59.l, v52.l, v50.h
	v_mov_b16_e32 v52.l, v87.l
	s_and_b32 s42, s0, s42
	s_and_b32 s28, s0, s55
	s_and_b32 s41, s0, s41
	s_and_b32 s46, s0, s46
	s_and_b32 s51, s0, s51
	v_cndmask_b32_e64 v75, 0, 1, s42
	v_cndmask_b32_e64 v88, 0, 1, s28
	v_or_b16 v58.l, v54.l, v51.l
	v_mov_b16_e32 v51.l, v77.l
	v_lshlrev_b16 v50.l, 8, v50.l
	v_mov_b16_e32 v53.l, v79.l
	v_cndmask_b32_e64 v74, 0, 1, s41
	v_cndmask_b32_e64 v78, 0, 1, s46
	v_cndmask_b32_e64 v84, 0, 1, s51
	v_lshlrev_b16 v50.h, 8, v52.l
	v_mov_b16_e32 v52.l, v85.l
	v_mov_b16_e32 v55.l, v73.l
	s_and_b32 s37, s0, s35
	s_and_b32 s24, s0, s53
	s_and_b32 s39, s0, s38
	s_and_b32 s43, s0, s43
	s_and_b32 s49, s0, s49
	v_cndmask_b32_e64 v71, 0, 1, s37
	v_cndmask_b32_e64 v86, 0, 1, s24
	v_lshlrev_b16 v51.l, 8, v51.l
	v_mov_b16_e32 v54.l, v75.l
	v_or_b16 v61.l, v53.l, v50.l
	v_mov_b16_e32 v50.l, v88.l
	v_cndmask_b32_e64 v72, 0, 1, s39
	v_cndmask_b32_e64 v76, 0, 1, s43
	v_cndmask_b32_e64 v80, 0, 1, s49
	v_or_b16 v61.h, v52.l, v50.h
	v_lshlrev_b16 v50.h, 8, v55.l
	v_mov_b16_e32 v52.l, v84.l
	v_mov_b16_e32 v53.l, v78.l
	v_mov_b16_e32 v55.l, v74.l
	v_or_b16 v60.h, v54.l, v51.l
	v_mov_b16_e32 v51.l, v71.l
	v_lshlrev_b16 v50.l, 8, v50.l
	v_mov_b16_e32 v54.l, v86.l
	v_lshlrev_b16 v51.h, 8, v52.l
	v_mov_b16_e32 v52.l, v80.l
	v_lshlrev_b16 v52.h, 8, v53.l
	v_mov_b16_e32 v53.l, v76.l
	v_lshlrev_b16 v53.h, 8, v55.l
	v_mov_b16_e32 v55.l, v72.l
	v_or_b16 v60.l, v51.l, v50.h
	v_or_b16 v63.h, v54.l, v50.l
	.loc	1 664 17 is_stmt 1              ; attention.py:664:17
	v_dual_mul_f32 v75, s69, v99 :: v_dual_add_nc_u32 v50, 0, v148
	.loc	1 681 25                        ; attention.py:681:25
	v_or_b16 v63.l, v52.l, v51.h
	v_or_b16 v62.h, v53.l, v52.h
	v_or_b16 v62.l, v55.l, v53.h
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b64 v157, v[56:57], v[60:61] offset1:32
	ds_store_2addr_b64 v157, v[58:59], v[62:63] offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[52:53], v50
	ds_load_b64 v[56:57], v163
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v72, s69, v64 :: v_dual_mul_f32 v79, s69, v93
	.loc	1 681 25                        ; attention.py:681:25
	ds_load_b64 v[60:61], v164
	ds_load_b64 v[64:65], v165
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v80, s69, v91 :: v_dual_mul_f32 v85, s69, v90
	v_mul_f32_e32 v84, s69, v92
	v_mul_f32_e32 v86, s69, v100
	v_mul_f32_e32 v88, s69, v102
	v_dual_mul_f32 v90, s69, v104 :: v_dual_mul_f32 v73, s69, v95
	v_dual_mul_f32 v74, s69, v97 :: v_dual_mul_f32 v77, s69, v96
	v_dual_mul_f32 v78, s69, v94 :: v_dual_mul_f32 v87, s69, v101
	v_dual_mul_f32 v76, s69, v98 :: v_dual_mul_f32 v83, s69, v89
	v_mul_f32_e32 v89, s69, v103
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
	.loc	1 681 25                        ; attention.py:681:25
	v_lshrrev_b16 v50.l, 8, v53.l
	v_lshrrev_b16 v50.h, 8, v52.l
	v_and_b32_e32 v58, 0x1000000, v53
	v_and_b32_e32 v91, 0x10000, v53
	v_and_b32_e32 v54, 1, v53
	v_and_b16 v55.l, 1, v50.l
	v_and_b16 v51.l, 1, v50.h
	v_lshrrev_b16 v50.l, 8, v57.l
	v_lshrrev_b16 v50.h, 8, v56.l
	v_and_b32_e32 v53, 0x1000000, v52
	v_and_b32_e32 v92, 0x10000, v52
	v_and_b32_e32 v52, 1, v52
	v_and_b16 v62.l, 1, v50.l
	v_and_b16 v59.l, 1, v50.h
	v_lshrrev_b16 v50.l, 8, v61.l
	v_lshrrev_b16 v50.h, 8, v60.l
	v_cmp_eq_u32_e64 s66, 1, v52
	v_cmp_eq_u16_e64 s67, 1, v51.l
	v_and_b32_e32 v104, 1, v60
	v_and_b16 v63.l, 1, v50.l
	v_and_b16 v62.h, 1, v50.h
	v_lshrrev_b16 v50.l, 8, v65.l
	v_lshrrev_b16 v50.h, 8, v64.l
	v_and_b32_e32 v107, 0x1000000, v65
	v_and_b32_e32 v95, 1, v57
	v_and_b32_e32 v109, 1, v65
	v_and_b16 v71.l, 1, v50.l
	v_and_b32_e32 v110, 0x1000000, v64
	v_and_b16 v67.l, 1, v50.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v50, 0xff800000, v105, s66
	v_cndmask_b32_e64 v51, 0xff800000, v66, s67
	.loc	1 681 25                        ; attention.py:681:25
	v_and_b32_e32 v96, 0x1000000, v56
	v_cmp_ne_u32_e64 s60, 0, v58
	v_cmp_eq_u32_e64 s44, 1, v104
	v_cmp_ne_u32_e64 s4, 0, v107
	v_cmp_eq_u32_e64 s62, 1, v54
	v_cmp_ne_u32_e64 s57, 0, v96
	v_cmp_eq_u32_e64 s54, 1, v95
	v_cmp_ne_u32_e64 s8, 0, v110
	v_cmp_eq_u32_e64 s5, 1, v109
	v_and_b32_e32 v93, 0x1000000, v57
	v_and_b32_e32 v94, 0x10000, v57
	v_and_b32_e32 v97, 0x10000, v56
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v57, 0xff800000, v45, s60
	v_cndmask_b32_e64 v45, 0xff800000, v73, s44
	v_cndmask_b32_e64 v73, 0xff800000, v90, s4
	.loc	1 681 25                        ; attention.py:681:25
	v_and_b32_e32 v98, 1, v56
	v_and_b32_e32 v99, 0x1000000, v61
	v_and_b32_e32 v100, 0x10000, v61
	v_and_b32_e32 v101, 1, v61
	v_and_b32_e32 v102, 0x1000000, v60
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v54, 0xff800000, v69, s62
	v_cndmask_b32_e64 v61, 0xff800000, v41, s57
	v_cndmask_b32_e64 v41, 0xff800000, v70, s54
	v_cndmask_b32_e64 v69, 0xff800000, v86, s8
	v_cndmask_b32_e64 v70, 0xff800000, v87, s5
	.loc	1 681 25                        ; attention.py:681:25
	v_and_b32_e32 v103, 0x10000, v60
	v_and_b32_e32 v111, 0x10000, v64
	v_and_b32_e32 v112, 1, v64
	v_and_b32_e32 v108, 0x10000, v65
	v_cmp_ne_u32_e64 s64, 0, v92
	v_cmp_ne_u32_e64 s65, 0, v53
	v_cmp_eq_u16_e64 s63, 1, v55.l
	v_cmp_eq_u32_e64 s58, 1, v98
	v_cmp_eq_u16_e64 s59, 1, v59.l
	v_cmp_ne_u32_e64 s56, 0, v97
	v_cmp_ne_u32_e64 s61, 0, v91
	v_cmp_eq_u16_e64 s55, 1, v62.l
	v_cmp_ne_u32_e64 s52, 0, v94
	v_cmp_eq_u16_e64 s47, 1, v62.h
	v_cmp_ne_u32_e64 s38, 0, v102
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v120, v69, v70
.Ltmp2:
	.loc	1 681 25                        ; attention.py:681:25
	v_cmp_ne_u32_e64 s35, 0, v103
	v_cmp_eq_u32_e64 s10, 1, v112
	v_cmp_eq_u16_e64 s11, 1, v67.l
	v_cmp_ne_u32_e64 s7, 0, v111
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v52, 0xff800000, v106, s64
	v_cndmask_b32_e64 v53, 0xff800000, v68, s65
	v_cndmask_b32_e64 v55, 0xff800000, v49, s63
	.loc	1 681 25                        ; attention.py:681:25
	v_cmp_ne_u32_e64 s53, 0, v93
	v_cmp_eq_u32_e64 s17, 1, v101
	v_cmp_eq_u16_e64 s6, 1, v71.l
	.loc	1 686 26                        ; attention.py:686:26
	v_add_nc_u32_e32 v49, 0, v153
	.loc	1 681 25                        ; attention.py:681:25
	v_cmp_ne_u32_e64 s3, 0, v108
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v58, 0xff800000, v44, s58
	v_cndmask_b32_e64 v59, 0xff800000, v43, s59
	v_cndmask_b32_e64 v60, 0xff800000, v42, s56
	v_cndmask_b32_e64 v56, 0xff800000, v48, s61
	v_cndmask_b32_e64 v42, 0xff800000, v47, s55
	v_cndmask_b32_e64 v43, 0xff800000, v46, s52
	v_cndmask_b32_e64 v46, 0xff800000, v74, s47
	v_cndmask_b32_e64 v47, 0xff800000, v75, s35
	v_cndmask_b32_e64 v48, 0xff800000, v76, s38
	v_cndmask_b32_e64 v66, 0xff800000, v83, s10
	v_cndmask_b32_e64 v67, 0xff800000, v84, s11
	v_cndmask_b32_e64 v68, 0xff800000, v85, s7
	v_cndmask_b32_e64 v44, 0xff800000, v72, s53
	v_cndmask_b32_e64 v62, 0xff800000, v77, s17
	v_cndmask_b32_e64 v71, 0xff800000, v88, s6
	v_cndmask_b32_e64 v72, 0xff800000, v89, s3
	s_barrier
	ds_store_b128 v49, v[50:53]
	ds_store_b128 v166, v[58:61]
	ds_store_b128 v167, v[45:48]
	ds_store_b128 v168, v[66:69]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[74:77], v158
	ds_load_b128 v[83:86], v158 offset:512
	ds_load_b128 v[87:90], v158 offset:1024
	ds_load_b128 v[91:94], v158 offset:1536
	.loc	1 681 25                        ; attention.py:681:25
	v_cmp_eq_u16_e64 s22, 1, v63.l
	v_cmp_ne_u32_e64 s12, 0, v100
	v_cmp_ne_u32_e64 s13, 0, v99
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_cndmask_b32_e64 v63, 0xff800000, v78, s22
	v_cndmask_b32_e64 v64, 0xff800000, v79, s12
	v_cndmask_b32_e64 v65, 0xff800000, v80, s13
	ds_store_b128 v49, v[54:57]
	ds_store_b128 v166, v[41:44]
	ds_store_b128 v167, v[62:65]
	ds_store_b128 v168, v[70:73]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[95:98], v158 offset:1024
	ds_load_b128 v[99:102], v158
	ds_load_b128 v[103:106], v158 offset:512
	ds_load_b128 v[107:110], v158 offset:1536
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v116, v44, v45, v46
	v_max3_f32 v117, v47, v48, v62
	v_dual_max_f32 v78, v74, v74 :: v_dual_max_f32 v79, v83, v83
	v_max_f32_e32 v49, v87, v87
	v_max3_f32 v80, v88, v76, v89
	v_max3_f32 v118, v63, v64, v65
	v_max3_f32 v119, v66, v67, v68
	v_max_f32_e32 v121, v72, v73
	v_dual_max_f32 v49, v78, v49 :: v_dual_max_f32 v78, v91, v91
.Ltmp4:
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s68, 0xff800000, v82
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v146, 0x80, v146
	v_add_nc_u32_e32 v126, s78, v126
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v49, v49, v75, v80
	v_max_f32_e32 v78, v79, v78
	v_max3_f32 v79, v92, v85, v93
	s_waitcnt lgkmcnt(2)
	v_max3_f32 v111, v95, v100, v96
	v_max3_f32 v112, v101, v97, v102
	s_waitcnt lgkmcnt(0)
	v_max3_f32 v114, v107, v104, v108
	v_max3_f32 v115, v105, v109, v106
	v_max3_f32 v113, v77, v90, v99
	v_max3_f32 v78, v78, v84, v79
	v_max3_f32 v80, v111, v112, v98
	v_max3_f32 v111, v86, v94, v103
	v_max3_f32 v79, v114, v115, v110
	v_max3_f32 v112, v53, v54, v55
	v_max3_f32 v114, v59, v60, v61
	v_max3_f32 v49, v49, v113, v80
	v_max3_f32 v115, v41, v42, v43
	v_max3_f32 v78, v78, v111, v79
	v_max_f32_e32 v111, v50, v51
	v_max3_f32 v113, v56, v57, v58
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v79, v49
.Ltmp7:
	.loc	1 681 25                        ; attention.py:681:25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v80, v78
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v111, v111, v52, v112
	v_max3_f32 v112, v114, v115, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp11:
	.loc	1 681 25                        ; attention.py:681:25
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v80, v80 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp13:
	.loc	1 681 25                        ; attention.py:681:25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v111, v111, v113, v112
	v_max_f32_e32 v79, v79, v79
.Ltmp15:
	.loc	1 681 25                        ; attention.py:681:25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v80, v80, v80 :: v_dual_max_f32 v49, v49, v79
	v_max3_f32 v79, v117, v118, v119
	v_max_f32_e32 v78, v78, v80
	v_max3_f32 v80, v120, v71, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v112, v49 :: v_dual_mov_b32 v113, v78
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v79, v111, v79, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v112, v112 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v113, v113 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v80, v79, s70, 0xfedcba98 op_sel:[1,0]
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v111, v112, v112 :: v_dual_max_f32 v112, v113, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp21:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v175, v82, v79, v80
	v_max_f32_e32 v79, v145, v145
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v49, v49, v111 :: v_dual_max_f32 v80, v172, v172
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp23:
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v111, v82, v175
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v51, v51, v175
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v173, v79, v49
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v53, v53, v175
	v_sub_f32_e32 v57, v57, v175
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v79, v111
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v111, v138, v138
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v78, v78, v112
.Ltmp25:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v50, v50, v175
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v51, v51
	v_exp_f32_e32 v53, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 688 24 is_stmt 1              ; attention.py:688:24
	v_max_f32_e32 v174, v80, v78
	v_max_f32_e32 v80, v137, v137
	v_max_f32_e32 v138, v111, v78
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v112, v145, v173
	.loc	1 689 25 is_stmt 0              ; attention.py:689:25
	v_cndmask_b32_e64 v180, 0, v79, s68
	.loc	1 690 62 is_stmt 1              ; attention.py:690:62
	v_dual_sub_f32 v114, v73, v175 :: v_dual_max_f32 v137, v80, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_sub_f32_e32 v83, v83, v138
	v_sub_f32_e32 v91, v91, v138
	v_sub_f32_e32 v84, v84, v138
	v_dual_sub_f32 v92, v92, v138 :: v_dual_sub_f32 v79, v89, v137
	v_sub_f32_e32 v49, v74, v137
	.loc	1 689 74                        ; attention.py:689:74
	v_dual_sub_f32 v113, v172, v174 :: v_dual_sub_f32 v74, v87, v137
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v85, v85, v138
	v_sub_f32_e32 v75, v75, v137
	v_sub_f32_e32 v78, v88, v137
	v_dual_sub_f32 v76, v76, v137 :: v_dual_sub_f32 v93, v93, v138
	v_dual_sub_f32 v77, v77, v137 :: v_dual_sub_f32 v86, v86, v138
	v_sub_f32_e32 v80, v90, v137
	v_sub_f32_e32 v82, v99, v137
	v_dual_sub_f32 v87, v95, v137 :: v_dual_sub_f32 v94, v94, v138
	v_sub_f32_e32 v88, v100, v137
	v_sub_f32_e32 v89, v96, v137
	v_sub_f32_e32 v90, v101, v137
	v_dual_sub_f32 v95, v97, v137 :: v_dual_sub_f32 v100, v104, v138
	v_dual_sub_f32 v97, v98, v137 :: v_dual_sub_f32 v98, v103, v138
	v_sub_f32_e32 v99, v107, v138
	v_sub_f32_e32 v101, v108, v138
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v177, v112
	v_exp_f32_e32 v176, v113
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v96, v102, v137
	v_sub_f32_e32 v102, v105, v138
	v_sub_f32_e32 v103, v109, v138
	v_sub_f32_e32 v104, v106, v138
	v_dual_sub_f32 v105, v110, v138 :: v_dual_sub_f32 v106, v65, v175
	v_sub_f32_e32 v107, v66, v175
	v_sub_f32_e32 v109, v68, v175
	v_sub_f32_e32 v112, v71, v175
	v_dual_sub_f32 v113, v72, v175 :: v_dual_mul_f32 v26, v26, v180
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v65, v74
	v_exp_f32_e32 v66, v75
	v_exp_f32_e32 v68, v76
	v_exp_f32_e32 v71, v80
	v_exp_f32_e32 v72, v82
	v_exp_f32_e32 v73, v87
	v_exp_f32_e32 v74, v88
	v_exp_f32_e32 v75, v89
	v_exp_f32_e32 v76, v90
	v_exp_f32_e32 v80, v83
	v_exp_f32_e32 v82, v91
	v_exp_f32_e32 v83, v84
	v_exp_f32_e32 v84, v92
	v_exp_f32_e32 v85, v85
	v_exp_f32_e32 v87, v93
	v_exp_f32_e32 v86, v86
	v_exp_f32_e32 v88, v94
	v_exp_f32_e32 v89, v98
	v_exp_f32_e32 v90, v99
	v_exp_f32_e32 v91, v100
	v_exp_f32_e32 v92, v101
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v118, 0, v80, s37
	v_cndmask_b32_e64 v82, 0, v82, s39
	v_cndmask_b32_e64 v83, 0, v83, s40
	v_cndmask_b32_e64 v84, 0, v84, s41
	v_cndmask_b32_e64 v85, 0, v85, s42
	v_cndmask_b32_e64 v87, 0, v87, s43
	v_cndmask_b32_e64 v86, 0, v86, s45
	v_cndmask_b32_e64 v88, 0, v88, s46
	v_cndmask_b32_e64 v89, 0, v89, s48
	v_cndmask_b32_e64 v90, 0, v90, s49
	v_cndmask_b32_e64 v91, 0, v91, s50
	v_cndmask_b32_e64 v92, 0, v92, s51
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v42, v42, v175 :: v_dual_add_f32 v83, v83, v84
	v_dual_sub_f32 v43, v43, v175 :: v_dual_add_f32 v82, v118, v82
	v_sub_f32_e32 v44, v44, v175
	v_sub_f32_e32 v46, v46, v175
	v_sub_f32_e32 v47, v47, v175
.Ltmp26:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v84, v85, v87 :: v_dual_mul_f32 v31, v31, v180
	v_dual_add_f32 v85, v86, v88 :: v_dual_add_f32 v86, v89, v90
	v_dual_add_f32 v87, v91, v92 :: v_dual_sub_f32 v62, v62, v175
.Ltmp27:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v111, v70, v175
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v70, v77
	v_exp_f32_e32 v77, v95
	v_exp_f32_e32 v93, v102
	v_exp_f32_e32 v94, v103
	v_exp_f32_e32 v95, v104
.Ltmp28:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v82, v82, v83 :: v_dual_add_f32 v83, v84, v85
	v_dual_add_f32 v84, v86, v87 :: v_dual_mul_f32 v25, v25, v180
.Ltmp29:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v108, v67, v175
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v67, v78
	v_exp_f32_e32 v78, v96
	v_exp_f32_e32 v96, v105
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v93, 0, v93, s20
	v_cndmask_b32_e64 v94, 0, v94, s24
	v_cndmask_b32_e64 v95, 0, v95, s25
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v63, v63, v175
.Ltmp30:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v82, v82, v83 :: v_dual_mul_f32 v29, v29, v180
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_add_f32_e32 v88, v93, v94
.Ltmp31:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v49, v49
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v65, 0, v65, s14
	v_cndmask_b32_e64 v96, 0, v96, s28
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v48, v48, v175
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v99, 0, v70, s21
	v_cndmask_b32_e64 v100, 0, v71, s23
	v_cndmask_b32_e64 v66, 0, v66, s15
.Ltmp32:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v89, v95, v96
.Ltmp33:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v67, 0, v67, s16
	v_cndmask_b32_e64 v102, 0, v73, s27
	v_cndmask_b32_e64 v49, 0, v49, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_dual_sub_f32 v54, v54, v175 :: v_dual_add_f32 v85, v88, v89
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v115, 0, v77, s33
	v_cndmask_b32_e64 v101, 0, v72, s26
.Ltmp34:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v49, v49, v65
.Ltmp35:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v103, 0, v74, s29
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v83, v84, v85
.Ltmp37:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v104, 0, v75, s30
	v_cndmask_b32_e64 v105, 0, v76, s31
	v_cndmask_b32_e64 v116, 0, v78, s34
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v119, v66, v67 :: v_dual_mul_f32 v28, v28, v180
	v_add_f32_e32 v82, v82, v83
.Ltmp39:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v110, v69, v175
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v69, v79
	v_exp_f32_e32 v79, v97
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v97, 0, v68, s18
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_add_nc_u32_e32 v68, v143, v162
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v55, v55, v175
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v87, v82
.Ltmp41:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v58, v58, v175
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_dual_sub_f32 v61, v61, v175 :: v_dual_add_nc_u32 v70, 16, v68
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v65, 0x80000000, v68, s1
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v98, 0, v69, s19
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_dual_sub_f32 v52, v52, v175 :: v_dual_add_nc_u32 v69, v143, v161
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v70, 0x80000000, v70, s1
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v117, 0, v79, s36
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v50, v50
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_add_nc_u32_e32 v71, 16, v69
	v_cndmask_b32_e64 v73, 0x80000000, v69, s1
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v56, v56, v175 :: v_dual_add_f32 v97, v97, v98
	v_sub_f32_e32 v59, v59, v175
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v77, 0x80000000, v71, s1
	s_clause 0x3
	buffer_load_b128 v[65:68], v65, s[72:75], 0 offen
	buffer_load_b128 v[69:72], v70, s[72:75], 0 offen
	buffer_load_b128 v[73:76], v73, s[72:75], 0 offen
	buffer_load_b128 v[77:80], v77, s[72:75], 0 offen
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v41, v41, v175 :: v_dual_add_f32 v98, v99, v100
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v99, v101, v102 :: v_dual_add_f32 v100, v103, v104
	v_dual_add_f32 v101, v105, v115 :: v_dual_mul_f32 v30, v30, v180
	v_add_f32_e32 v102, v116, v117
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v87, v87 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v50, 0, v50, s66
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_dual_sub_f32 v60, v60, v175 :: v_dual_add_f32 v97, v97, v98
	v_dual_sub_f32 v45, v45, v175 :: v_dual_add_f32 v98, v99, v100
.Ltmp45:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v90, v101, v102
	v_add_f32_e32 v178, v82, v87
.Ltmp46:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v82.l, v50.h
	v_mov_b16_e32 v82.h, v81.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v49, v49, v119 :: v_dual_add_f32 v86, v98, v90
.Ltmp48:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v55, v55
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v82, 1, v82
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v64, v64, v175 :: v_dual_add_f32 v49, v49, v97
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v53, 0, v53, s65
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v54, v54
	v_exp_f32_e32 v56, v56
	v_exp_f32_e32 v57, v57
.Ltmp49:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v49, v49, v86
.Ltmp50:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v52, 0, v52, s64
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v32, v32, v180
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v82, v50, v82, 0x7fff
	v_cmp_o_f32_e64 s14, v50, v50
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v86, v49
.Ltmp52:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v55, 0, v55, s63
	v_cndmask_b32_e64 v54, 0, v54, s62
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v17, v17, v180
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v58, v58
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v86, v86 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v59, v59
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v82.l, v54.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v57, 0, v57, s60
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v61, v61
.Ltmp55:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v179, v49, v86
.Ltmp56:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v49, 0, v51, s67
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v51.h, v81.l
	v_mov_b16_e32 v86.l, v53.h
	v_mov_b16_e32 v86.h, v81.l
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v58, 0, v58, s58
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v51.l, v49.h
	v_cmp_o_f32_e64 s9, v49, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v19, v19, v180 :: v_dual_and_b32 v50, 1, v86
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v60, v60
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v18, v18, v180 :: v_dual_and_b32 v51, 1, v51
	v_mul_f32_e32 v21, v21, v180
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v50, v53, v50, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v41, v41
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v51, v49, v51, 0x7fff
	v_mov_b16_e32 v49.l, v52.h
	v_mov_b16_e32 v49.h, v81.l
	v_cndmask_b16 v51.l, 0x7fff, v82.h, s14
	v_mov_b16_e32 v82.h, v81.l
	v_cndmask_b16 v51.h, 0x7fff, v51.h, s9
	v_cmp_o_f32_e64 s9, v53, v53
	v_and_b32_e32 v49, 1, v49
	v_mov_b16_e32 v53.l, v55.h
	v_mov_b16_e32 v53.h, v81.l
	v_cmp_o_f32_e64 s14, v55, v55
	v_cndmask_b16 v50.h, 0x7fff, v50.h, s9
	v_add3_u32 v49, v52, v49, 0x7fff
	v_cmp_o_f32_e64 s9, v52, v52
	v_and_b32_e32 v53, 1, v53
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v52, 0, v56, s61
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v56, 1, v82
	v_mov_b16_e32 v82.l, v57.h
	v_cndmask_b16 v50.l, 0x7fff, v49.h, s9
	v_add3_u32 v53, v55, v53, 0x7fff
	v_mov_b16_e32 v55.l, v52.h
	v_mov_b16_e32 v55.h, v81.l
	v_add3_u32 v49, v54, v56, 0x7fff
	v_and_b32_e32 v56, 1, v82
	v_cmp_o_f32_e64 s9, v54, v54
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v54, 0, v59, s59
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v55, 1, v55
	v_cndmask_b16 v53.h, 0x7fff, v53.h, s14
	v_add3_u32 v56, v57, v56, 0x7fff
	v_cmp_o_f32_e64 s14, v57, v57
	v_mov_b16_e32 v57.l, v54.h
	v_add3_u32 v55, v52, v55, 0x7fff
	v_mov_b16_e32 v57.h, v81.l
	v_mov_b16_e32 v59.l, v58.h
	v_mov_b16_e32 v59.h, v81.l
	v_cmp_o_f32_e64 s15, v52, v52
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v42, v42
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v53.l, 0x7fff, v49.h, s9
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v20, v20, v180 :: v_dual_and_b32 v49, 1, v57
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v52.h, 0x7fff, v56.h, s14
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v23, v23, v180 :: v_dual_and_b32 v56, 1, v59
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v52.l, 0x7fff, v55.h, s15
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v55, 0, v61, s57
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v49, v54, v49, 0x7fff
	v_cmp_o_f32_e64 s9, v54, v54
	v_add3_u32 v54, v58, v56, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v56, 0, v60, s56
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v57.l, v55.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v44, v44
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v86.h, 0x7fff, v49.h, s9
	v_cmp_o_f32_e64 s9, v58, v58
	v_mov_b16_e32 v49.l, v56.h
	v_mov_b16_e32 v49.h, v81.l
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v22, v22, v180 :: v_dual_and_b32 v57, 1, v57
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v42, 0, v42, s55
	v_cndmask_b32_e64 v41, 0, v41, s54
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v43, v43
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cndmask_b16 v86.l, 0x7fff, v54.h, s9
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v24, v24, v180 :: v_dual_and_b32 v49, 1, v49
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v54, v55, v57, 0x7fff
	v_mov_b16_e32 v57.l, v42.h
	v_mov_b16_e32 v58.l, v41.h
	v_mov_b16_e32 v58.h, v81.l
	v_mov_b16_e32 v57.h, v81.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v46, v46
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s9, v55, v55
	v_add3_u32 v49, v56, v49, 0x7fff
	v_cmp_o_f32_e64 s14, v56, v56
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v10, v10, v180 :: v_dual_and_b32 v55, 1, v58
	v_dual_mul_f32 v9, v9, v180 :: v_dual_and_b32 v56, 1, v57
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v44, 0, v44, s53
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v45, v45
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cndmask_b16 v54.l, 0x7fff, v49.h, s14
	v_add3_u32 v49, v41, v55, 0x7fff
	v_add3_u32 v55, v42, v56, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v43, 0, v43, s52
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v56.l, v44.h
	v_mov_b16_e32 v56.h, v81.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v48, v48
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v54.h, 0x7fff, v54.h, s9
	v_cmp_o_f32_e64 s9, v42, v42
	v_cmp_o_f32_e64 s14, v41, v41
	v_mov_b16_e32 v41.l, v43.h
	v_mov_b16_e32 v41.h, v81.l
	v_and_b32_e32 v42, 1, v56
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v46, 0, v46, s47
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v55.h, 0x7fff, v55.h, s9
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v45, 0, v45, s44
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v12, v12, v180 :: v_dual_and_b32 v41, 1, v41
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v42, v44, v42, 0x7fff
	v_cmp_o_f32_e64 s9, v44, v44
	v_mov_b16_e32 v44.l, v46.h
	v_mov_b16_e32 v44.h, v81.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v63, v63
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v55.l, 0x7fff, v49.h, s14
	v_add3_u32 v41, v43, v41, 0x7fff
	v_mov_b16_e32 v49.l, v45.h
	v_mov_b16_e32 v49.h, v81.l
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s9
	v_and_b32_e32 v44, 1, v44
	v_cmp_o_f32_e64 s9, v43, v43
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v43, 0, v47, s35
	v_cndmask_b32_e64 v48, 0, v48, s38
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v62, v62
	.loc	1 699 23 is_stmt 1              ; attention.py:699:23
	v_dual_mul_f32 v14, v14, v180 :: v_dual_and_b32 v47, 1, v49
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v44, v46, v44, 0x7fff
	v_cmp_o_f32_e64 s14, v46, v46
	v_mov_b16_e32 v46.l, v43.h
	v_mov_b16_e32 v46.h, v81.l
	v_mov_b16_e32 v49.l, v48.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v83, v106
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v42.l, 0x7fff, v41.h, s9
	v_add3_u32 v41, v45, v47, 0x7fff
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v11, v11, v180 :: v_dual_and_b32 v46, 1, v46
	v_dual_mul_f32 v16, v16, v180 :: v_dual_and_b32 v47, 1, v49
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s9, v45, v45
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v45, 0, v63, s22
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v64, v64
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s14
	v_add3_u32 v46, v43, v46, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v49, 0, v62, s17
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v47, v48, v47, 0x7fff
	v_cmp_o_f32_e64 s14, v48, v48
	v_mov_b16_e32 v48.l, v45.h
	v_mov_b16_e32 v48.h, v81.l
	v_cmp_o_f32_e64 s15, v43, v43
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v84, v107
	v_exp_f32_e32 v85, v108
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v56.l, v49.h
	v_cndmask_b16 v44.l, 0x7fff, v41.h, s9
	v_and_b32_e32 v41, 1, v48
	v_cndmask_b16 v47.l, 0x7fff, v46.h, s15
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v46, 0, v83, s13
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v43, 1, v56
	v_cmp_o_f32_e64 s9, v45, v45
	v_add3_u32 v41, v45, v41, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v45, 0, v64, s12
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v48.l, v46.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v89, v110
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v43, v49, v43, 0x7fff
	v_cndmask_b16 v83.h, 0x7fff, v41.h, s9
	v_cmp_o_f32_e64 s9, v49, v49
	v_mov_b16_e32 v41.l, v45.h
	v_mov_b16_e32 v41.h, v81.l
	v_and_b32_e32 v48, 1, v48
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v49, 0, v85, s11
	v_cndmask_b32_e64 v56, 0, v84, s10
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v88, v109
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cndmask_b16 v83.l, 0x7fff, v43.h, s9
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v2, v2, v180 :: v_dual_and_b32 v41, 1, v41
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v43, v46, v48, 0x7fff
	v_mov_b16_e32 v48.l, v49.h
	v_mov_b16_e32 v57.l, v56.h
	v_mov_b16_e32 v48.h, v81.l
	v_cmp_o_f32_e64 s9, v46, v46
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v90, v111
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v41, v45, v41, 0x7fff
	v_cmp_o_f32_e64 s10, v45, v45
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v4, v4, v180 :: v_dual_and_b32 v45, 1, v57
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v46, 1, v48
	v_cndmask_b16 v48.h, 0x7fff, v43.h, s9
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v43, 0, v89, s8
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v91, v112
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cndmask_b16 v48.l, 0x7fff, v41.h, s10
	v_add3_u32 v41, v56, v45, 0x7fff
	v_add3_u32 v45, v49, v46, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v46, 0, v88, s7
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v57.l, v43.h
	v_cmp_o_f32_e64 s8, v56, v56
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v92, v113
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v27, v27, v180
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v93, v114
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s7, v49, v49
	v_mov_b16_e32 v49.l, v46.h
	v_mov_b16_e32 v49.h, v81.l
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v13, v13, v180 :: v_dual_and_b32 v56, 1, v57
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v82.l, 0x7fff, v41.h, s8
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v41, 0, v90, s5
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v82.h, 0x7fff, v45.h, s7
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v6, v6, v180 :: v_dual_and_b32 v45, 1, v49
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v49, v43, v56, 0x7fff
	v_cmp_o_f32_e64 s5, v43, v43
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v43, 0, v91, s6
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v56.l, v41.h
	v_mov_b16_e32 v56.h, v81.l
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v57, 0, v93, s4
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v184.h, 0x7fff, v49.h, s5
	v_mov_b16_e32 v49.l, v43.h
	v_mov_b16_e32 v49.h, v81.l
	v_and_b32_e32 v56, 1, v56
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v58, 0, v92, s3
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v45, v46, v45, 0x7fff
	v_cmp_o_f32_e64 s3, v46, v46
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v15, v15, v180 :: v_dual_and_b32 v46, 1, v49
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v49, v41, v56, 0x7fff
	v_mov_b16_e32 v56.l, v57.h
	v_mov_b16_e32 v59.l, v58.h
	v_mov_b16_e32 v56.h, v81.l
	v_cndmask_b16 v47.h, 0x7fff, v47.h, s14
	v_add3_u32 v46, v43, v46, 0x7fff
	v_cmp_o_f32_e64 s4, v43, v43
	v_cmp_o_f32_e64 s5, v41, v41
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v8, v8, v180 :: v_dual_and_b32 v41, 1, v59
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v43, 1, v56
	v_cndmask_b16 v184.l, 0x7fff, v45.h, s3
	v_cndmask_b16 v181.h, 0x7fff, v46.h, s4
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v182, v58, v41, 0x7fff
	v_permlanex16_b32 v41, v51, s70, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v183, v57, v43, 0x7fff
	v_permlanex16_b32 v43, v50, s70, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v45, v53, s70, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v52, s70, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v56, v86, s70, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v81, v54, s70, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v84, v55, s70, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v85, v42, s70, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v87, v44, s70, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v88, v47, s70, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v181.l, 0x7fff, v49.h, s5
	v_cmp_o_f32_e64 s3, v57, v57
	v_cmp_o_f32_e64 s4, v58, v58
	v_perm_b32 v57, v41, v51, v170
	v_perm_b32 v58, v41, v51, v171
	v_perm_b32 v59, v43, v50, v170
	v_perm_b32 v60, v43, v50, v171
	v_perm_b32 v61, v45, v53, v170
	v_perm_b32 v62, v45, v53, v171
	v_perm_b32 v63, v46, v52, v170
	v_perm_b32 v64, v46, v52, v171
	v_perm_b32 v49, v56, v86, v170
	v_perm_b32 v50, v56, v86, v171
	v_perm_b32 v51, v81, v54, v170
	v_perm_b32 v52, v81, v54, v171
	v_perm_b32 v53, v84, v55, v170
	v_perm_b32 v54, v84, v55, v171
	v_perm_b32 v55, v85, v42, v170
	v_perm_b32 v56, v85, v42, v171
	v_perm_b32 v41, v87, v44, v170
	v_perm_b32 v42, v87, v44, v171
	v_perm_b32 v43, v88, v47, v170
	v_perm_b32 v44, v88, v47, v171
	.loc	1 694 30                        ; attention.py:694:30
	v_add_nc_u32_e32 v47, 0, v141
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	ds_store_b128 v47, v[65:68]
	s_waitcnt vmcnt(2)
	ds_store_b128 v47, v[69:72] offset:16
	s_waitcnt vmcnt(1)
	ds_store_b128 v47, v[73:76] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v47, v[77:80] offset:4112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v95, v144 offset:512
	ds_load_u16_d16 v78, v144 offset:288
	ds_load_u16_d16 v71, v144 offset:608
	ds_load_u16_d16 v70, v144 offset:352
	ds_load_u16_d16 v103, v144 offset:576
	ds_load_u16_d16 v96, v144 offset:768
	ds_load_u16_d16 v104, v144 offset:832
	ds_load_u16_d16 v97, v144 offset:1024
	ds_load_u16_d16 v105, v144 offset:1088
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v90, v48, s70, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v91, v82, s70, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v89, v83, s70, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v185, v184, s70, 0xfedcba98 op_sel:[1,0]
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v1, v1, v180
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v47, v90, v48, v170
	v_perm_b32 v48, v90, v48, v171
	v_perm_b32 v65, v91, v82, v170
	v_perm_b32 v66, v91, v82, v171
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v98, v144 offset:1280
	ds_load_u16_d16 v106, v144 offset:1344
	ds_load_u16_d16 v100, v144 offset:1792
	ds_load_u16_d16 v99, v144 offset:1536
	ds_load_u16_d16 v107, v144 offset:1600
	ds_load_u16_d16 v93, v144
	ds_load_u16_d16 v77, v144 offset:32
	ds_load_u16_d16 v94, v144 offset:256
	ds_load_u16_d16 v101, v144 offset:64
	ds_load_u16_d16 v102, v144 offset:320
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v70, v144 offset:480
	ds_load_u16_d16 v69, v144 offset:96
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v103, v144 offset:704
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v96, v144 offset:896
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v104, v144 offset:960
	ds_load_u16_d16 v123, v144 offset:3328
	ds_load_u16_d16 v90, v144 offset:3392
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v97, v144 offset:1152
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v105, v144 offset:1216
	ds_load_u16_d16 v124, v144 offset:3584
	ds_load_u16_d16 v91, v144 offset:3648
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v45, v89, v83, v170
	v_perm_b32 v46, v89, v83, v171
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v98, v144 offset:1408
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v106, v144 offset:1472
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v99, v144 offset:1664
	ds_load_u16_d16 v108, v144 offset:1856
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v107, v144 offset:1728
	ds_load_u16_d16_hi v100, v144 offset:1920
	ds_load_u16_d16 v193, v144 offset:3872
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v93, v144 offset:128
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v77, v144 offset:160
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v101, v144 offset:192
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v69, v144 offset:224
	ds_load_u16_d16_hi v95, v144 offset:640
	ds_load_u16_d16_hi v94, v144 offset:384
	ds_load_u16_d16_hi v78, v144 offset:416
	ds_load_u16_d16 v79, v144 offset:544
	ds_load_u16_d16_hi v102, v144 offset:448
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v90, v144 offset:3520
	ds_load_u16_d16 v125, v144 offset:3840
	ds_load_u16_d16 v92, v144 offset:3904
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v91, v144 offset:3776
	ds_load_u16_d16 v115, v144 offset:3680
	ds_load_u16_d16 v80, v144 offset:800
	ds_load_u16_d16 v72, v144 offset:864
	ds_load_u16_d16 v73, v144 offset:1120
	ds_load_u16_d16 v82, v144 offset:1312
	ds_load_u16_d16 v74, v144 offset:1376
	ds_load_u16_d16 v83, v144 offset:1568
	ds_load_u16_d16 v75, v144 offset:1632
	ds_load_u16_d16 v118, v144 offset:2048
	ds_load_u16_d16 v85, v144 offset:2112
	ds_load_u16_d16 v84, v144 offset:1824
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v108, v144 offset:1984
	ds_load_u16_d16 v76, v144 offset:1888
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(20)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[93:100], v[57:64], v[25:32]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v124, v144 offset:3712
	ds_load_u16_d16 v192, v144 offset:3616
	ds_load_u16_d16 v119, v144 offset:2304
	ds_load_u16_d16 v86, v144 offset:2368
	ds_load_u16_d16 v120, v144 offset:2560
	ds_load_u16_d16 v87, v144 offset:2624
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v125, v144 offset:3968
	ds_load_u16_d16 v93, v144 offset:4160
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v92, v144 offset:4032
	ds_load_u16_d16 v117, v144 offset:4096
	ds_load_u16_d16 v116, v144 offset:3936
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v115, v144 offset:3808
	ds_load_u16_d16 v121, v144 offset:2816
	ds_load_u16_d16 v88, v144 offset:2880
	ds_load_u16_d16_hi v193, v144 offset:4000
	ds_load_u16_d16 v122, v144 offset:3072
	ds_load_u16_d16 v89, v144 offset:3136
	ds_load_u16_d16_hi v79, v144 offset:672
	ds_load_u16_d16_hi v71, v144 offset:736
	ds_load_u16_d16 v81, v144 offset:1056
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v80, v144 offset:928
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v72, v144 offset:992
	ds_load_u16_d16 v186, v144 offset:2080
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v85, v144 offset:2240
	ds_load_u16_d16 v109, v144 offset:2144
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v119, v144 offset:2432
	ds_load_u16_d16 v187, v144 offset:2336
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v86, v144 offset:2496
	ds_load_u16_d16 v110, v144 offset:2400
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v120, v144 offset:2688
	ds_load_u16_d16 v188, v144 offset:2592
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v87, v144 offset:2752
	ds_load_u16_d16 v111, v144 offset:2656
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v121, v144 offset:2944
	ds_load_u16_d16 v189, v144 offset:2848
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v88, v144 offset:3008
	ds_load_u16_d16 v112, v144 offset:2912
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v122, v144 offset:3200
	ds_load_u16_d16 v190, v144 offset:3104
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v89, v144 offset:3264
	ds_load_u16_d16 v113, v144 offset:3168
	ds_load_u16_d16_hi v123, v144 offset:3456
	ds_load_u16_d16 v191, v144 offset:3360
	ds_load_u16_d16 v114, v144 offset:3424
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v81, v144 offset:1184
	ds_load_u16_d16_hi v73, v144 offset:1248
	ds_load_u16_d16_hi v82, v144 offset:1440
	ds_load_u16_d16_hi v74, v144 offset:1504
	ds_load_u16_d16_hi v83, v144 offset:1696
	ds_load_u16_d16_hi v75, v144 offset:1760
	ds_load_u16_d16_hi v118, v144 offset:2176
	ds_load_u16_d16_hi v84, v144 offset:1952
	ds_load_u16_d16_hi v76, v144 offset:2016
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v186, v144 offset:2208
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v109, v144 offset:2272
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v187, v144 offset:2464
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v110, v144 offset:2528
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v188, v144 offset:2720
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v111, v144 offset:2784
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v189, v144 offset:2976
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v112, v144 offset:3040
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v190, v144 offset:3232
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v113, v144 offset:3296
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v191, v144 offset:3488
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v114, v144 offset:3552
	ds_load_u16_d16_hi v192, v144 offset:3744
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v67, v185, v184, v170
	v_perm_b32 v68, v185, v184, v171
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v96, v144 offset:4928
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[101:108], v[57:64], v[9:16]
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v3, v3, v180 :: v_dual_add_nc_u32 v162, s77, v162
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[118:125], v[49:56], v[25:32]
	s_waitcnt lgkmcnt(15)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[77:84], v[57:64], v[17:24]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v94, v144 offset:4416
	ds_load_u16_d16_hi v93, v144 offset:4288
	ds_load_u16_d16 v77, v144 offset:4192
	ds_load_u16_d16_hi v116, v144 offset:4064
	ds_load_u16_d16 v118, v144 offset:4352
	ds_load_u16_d16_hi v117, v144 offset:4224
	ds_load_u16_d16 v182, v144 offset:4128
	ds_load_u16_d16 v95, v144 offset:4672
	ds_load_u16_d16 v119, v144 offset:4608
	ds_load_u16_d16 v183, v144 offset:4384
	ds_load_u16_d16 v78, v144 offset:4448
	ds_load_u16_d16 v120, v144 offset:4864
	ds_load_u16_d16 v184, v144 offset:4640
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v5, v5, v180
	v_mul_f32_e32 v7, v7, v180
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v79, v144 offset:4704
	.loc	1 700 30                        ; attention.py:700:30
	s_waitcnt lgkmcnt(4)
	v_cndmask_b16 v180.h, 0x7fff, v183.h, s3
	v_cndmask_b16 v180.l, 0x7fff, v182.h, s4
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[85:92], v[49:56], v[9:16]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[69:76], v[57:64], v[1:8]
.Ltmp57:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v125, v179
.Ltmp58:
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[186:193], v[49:56], v[17:24]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v94, v144 offset:4544
	ds_load_u16_d16_hi v118, v144 offset:4480
	ds_load_u16_d16_hi v182, v144 offset:4256
	ds_load_u16_d16_hi v77, v144 offset:4320
	ds_load_u16_d16_hi v95, v144 offset:4800
	ds_load_u16_d16_hi v119, v144 offset:4736
	ds_load_u16_d16_hi v183, v144 offset:4512
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v78, v144 offset:4576
	ds_load_u16_d16 v97, v144 offset:5184
	ds_load_u16_d16 v121, v144 offset:5120
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v120, v144 offset:4992
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v184, v144 offset:4768
	ds_load_u16_d16 v185, v144 offset:4896
	ds_load_u16_d16_hi v96, v144 offset:5056
	ds_load_u16_d16 v80, v144 offset:4960
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v79, v144 offset:4832
	ds_load_u16_d16 v98, v144 offset:5440
	ds_load_u16_d16 v122, v144 offset:5376
	ds_load_u16_d16 v186, v144 offset:5152
	ds_load_u16_d16 v81, v144 offset:5216
	ds_load_u16_d16 v99, v144 offset:5696
	ds_load_u16_d16 v123, v144 offset:5632
	ds_load_u16_d16 v187, v144 offset:5408
	ds_load_u16_d16 v82, v144 offset:5472
	ds_load_u16_d16 v100, v144 offset:5952
	ds_load_u16_d16 v124, v144 offset:5888
	ds_load_u16_d16 v188, v144 offset:5664
	ds_load_u16_d16 v83, v144 offset:5728
	ds_load_u16_d16 v57, v144 offset:6208
	ds_load_u16_d16 v85, v144 offset:6144
	ds_load_u16_d16 v189, v144 offset:5920
	ds_load_u16_d16 v84, v144 offset:5984
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[109:116], v[49:56], v[1:8]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v86, v144 offset:6400
	ds_load_u16_d16 v101, v144 offset:6176
	ds_load_u16_d16 v58, v144 offset:6464
	ds_load_u16_d16 v109, v144 offset:6240
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v97, v144 offset:5312
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v121, v144 offset:5248
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v185, v144 offset:5024
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v80, v144 offset:5088
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v98, v144 offset:5568
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v122, v144 offset:5504
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v186, v144 offset:5280
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v81, v144 offset:5344
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v99, v144 offset:5824
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v123, v144 offset:5760
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v187, v144 offset:5536
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v82, v144 offset:5600
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v100, v144 offset:6080
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v124, v144 offset:6016
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v188, v144 offset:5792
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v83, v144 offset:5856
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v57, v144 offset:6336
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v85, v144 offset:6272
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v189, v144 offset:6048
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v84, v144 offset:6112
	ds_load_u16_d16 v59, v144 offset:6720
	ds_load_u16_d16 v87, v144 offset:6656
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v86, v144 offset:6528
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v101, v144 offset:6304
	ds_load_u16_d16 v102, v144 offset:6432
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v58, v144 offset:6592
	ds_load_u16_d16 v110, v144 offset:6496
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v109, v144 offset:6368
	ds_load_u16_d16 v60, v144 offset:6976
	ds_load_u16_d16 v88, v144 offset:6912
	ds_load_u16_d16 v103, v144 offset:6688
	ds_load_u16_d16 v111, v144 offset:6752
	ds_load_u16_d16 v61, v144 offset:7232
	ds_load_u16_d16 v89, v144 offset:7168
	ds_load_u16_d16 v104, v144 offset:6944
	ds_load_u16_d16 v112, v144 offset:7008
	ds_load_u16_d16 v62, v144 offset:7488
	ds_load_u16_d16 v90, v144 offset:7424
	ds_load_u16_d16 v105, v144 offset:7200
	ds_load_u16_d16 v113, v144 offset:7264
	ds_load_u16_d16 v63, v144 offset:7744
	ds_load_u16_d16 v91, v144 offset:7680
	ds_load_u16_d16 v106, v144 offset:7456
	ds_load_u16_d16 v114, v144 offset:7520
	ds_load_u16_d16 v64, v144 offset:8000
	ds_load_u16_d16 v92, v144 offset:7936
	ds_load_u16_d16 v107, v144 offset:7712
	ds_load_u16_d16 v115, v144 offset:7776
	ds_load_u16_d16 v108, v144 offset:7968
	ds_load_u16_d16 v116, v144 offset:8032
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v59, v144 offset:6848
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v87, v144 offset:6784
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v102, v144 offset:6560
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v110, v144 offset:6624
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v60, v144 offset:7104
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v88, v144 offset:7040
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v103, v144 offset:6816
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v111, v144 offset:6880
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v61, v144 offset:7360
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v89, v144 offset:7296
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v104, v144 offset:7072
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v112, v144 offset:7136
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v62, v144 offset:7616
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v90, v144 offset:7552
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v105, v144 offset:7328
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v113, v144 offset:7392
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v63, v144 offset:7872
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v91, v144 offset:7808
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v106, v144 offset:7584
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v114, v144 offset:7648
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v64, v144 offset:8128
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v92, v144 offset:8064
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v107, v144 offset:7840
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v115, v144 offset:7904
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v108, v144 offset:8096
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v116, v144 offset:8160
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v50, v178
.Ltmp60:
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v145
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v125, v125 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp62:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v190, v181, s70, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v51, v180, s70, 0xfedcba98 op_sel:[1,0]
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v50, v50 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp64:
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v52, 0, v177, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v172
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v49, v179, v125
.Ltmp66:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v69, v190, v181, v170
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v50, v178, v50
.Ltmp68:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v70, v190, v181, v171
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v53, 0, v176, s3
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v71, v51, v180, v170
	v_perm_b32 v72, v51, v180, v171
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[117:124], v[41:48], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[182:189], v[41:48], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[93:100], v[41:48], v[9:16]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[77:84], v[41:48], v[1:8]
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_dual_fmac_f32 v49, v149, v52 :: v_dual_fmac_f32 v50, v151, v53
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[85:92], v[65:72], v[25:32]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[101:108], v[65:72], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[57:64], v[65:72], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[109:116], v[65:72], v[1:8]
	v_dual_mov_b32 v82, v175 :: v_dual_add_nc_u32 v161, s77, v161
	v_mov_b32_e32 v149, v49
	v_mov_b32_e32 v151, v50
	v_dual_mov_b32 v145, v173 :: v_dual_mov_b32 v172, v174
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s3, s76, 64
	s_cmpk_lt_u32 s76, 0x1c0
	s_mov_b32 s76, s3
	s_cbranch_scc0 .LBB0_6
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 634 32                        ; attention.py:634:32
	v_dual_cndmask_b32 v41, 0x80000000, v126 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v80, 0
	v_mov_b32_e32 v79, 0
	buffer_load_b128 v[41:44], v41, s[92:95], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v147, v[41:42]
	ds_store_b64 v150, v[43:44]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 649 37                        ; attention.py:649:37
	s_clause 0x1f
	buffer_load_u16 v114, v146, s[96:99], 0 offen
	buffer_load_u16 v113, v146, s[96:99], 0 offen offset:4
	buffer_load_u16 v112, v146, s[96:99], 0 offen offset:8
	buffer_load_u16 v111, v146, s[96:99], 0 offen offset:12
	buffer_load_u16 v109, v146, s[96:99], 0 offen offset:16
	buffer_load_u16 v107, v146, s[96:99], 0 offen offset:20
	buffer_load_u16 v105, v146, s[96:99], 0 offen offset:24
	buffer_load_u16 v103, v146, s[96:99], 0 offen offset:28
	buffer_load_u16 v110, v146, s[96:99], 0 offen offset:32
	buffer_load_u16 v108, v146, s[96:99], 0 offen offset:36
	buffer_load_u16 v106, v146, s[96:99], 0 offen offset:40
	buffer_load_u16 v104, v146, s[96:99], 0 offen offset:44
	buffer_load_u16 v101, v146, s[96:99], 0 offen offset:48
	buffer_load_u16 v99, v146, s[96:99], 0 offen offset:52
	buffer_load_u16 v97, v146, s[96:99], 0 offen offset:56
	buffer_load_u16 v95, v146, s[96:99], 0 offen offset:60
	buffer_load_u16 v102, v146, s[96:99], 0 offen offset:64
	buffer_load_u16 v100, v146, s[96:99], 0 offen offset:68
	buffer_load_u16 v98, v146, s[96:99], 0 offen offset:72
	buffer_load_u16 v96, v146, s[96:99], 0 offen offset:76
	buffer_load_u16 v94, v146, s[96:99], 0 offen offset:80
	buffer_load_u16 v93, v146, s[96:99], 0 offen offset:84
	buffer_load_u16 v91, v146, s[96:99], 0 offen offset:88
	buffer_load_u16 v89, v146, s[96:99], 0 offen offset:92
	buffer_load_u16 v92, v146, s[96:99], 0 offen offset:96
	buffer_load_u16 v90, v146, s[96:99], 0 offen offset:100
	buffer_load_u16 v88, v146, s[96:99], 0 offen offset:104
	buffer_load_u16 v87, v146, s[96:99], 0 offen offset:108
	buffer_load_u16 v86, v146, s[96:99], 0 offen offset:112
	buffer_load_u16 v85, v146, s[96:99], 0 offen offset:116
	buffer_load_u16 v84, v146, s[96:99], 0 offen offset:120
	buffer_load_u16 v83, v146, s[96:99], 0 offen offset:124
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[41:44], v152 offset1:1
	ds_load_2addr_stride64_b64 v[73:76], v152 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[115:118], v154 offset1:1
	ds_load_2addr_stride64_b64 v[119:122], v154 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[173:176], v155 offset1:1
	ds_load_2addr_stride64_b64 v[177:180], v155 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[181:184], v156 offset1:1
	ds_load_2addr_stride64_b64 v[185:188], v156 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[41:42], v[127:128], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[43:44], v[127:128], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[73:74], v[127:128], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[75:76], v[127:128], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[115:116], v[131:132], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[117:118], v[131:132], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[119:120], v[131:132], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[121:122], v[131:132], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[173:174], v[129:130], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[175:176], v[129:130], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[177:178], v[129:130], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[179:180], v[129:130], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[65:72], v[181:182], v[133:134], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[183:184], v[133:134], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[185:186], v[133:134], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[187:188], v[133:134], v[41:48] neg_lo:[1,1,0]
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s4, s0
	s_cbranch_execz .LBB0_4
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	v_add_nc_u32_e32 v73, s76, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ashrrev_i32_e32 v74, 31, v73
	v_add_co_u32 v73, s3, s88, v73
	v_add_co_ci_u32_e64 v74, null, s89, v74, s3
	global_load_b128 v[77:80], v[73:74], off
.LBB0_4:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s4, s0
	s_cbranch_execz .LBB0_1
; %bb.5:                                ;   in Loop: Header=BB0_2 Depth=1
	v_add_nc_u32_e32 v73, s76, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ashrrev_i32_e32 v74, 31, v73
	v_add_co_u32 v73, s3, s88, v73
	v_add_co_ci_u32_e64 v74, null, s89, v74, s3
	global_load_b128 v[73:76], v[73:74], off
	s_branch .LBB0_1
.LBB0_6:
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	v_lshrrev_b32_e32 v0, 4, v0
	v_and_b32_e32 v33, 0x80, v140
	v_add_nc_u32_e32 v34, 0, v142
	v_lshl_add_u32 v35, v139, 1, 0
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v0, 4, v0
	s_barrier
	s_mov_b32 s7, 0x31027000
	ds_store_b64 v35, v[49:50]
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v34, v33, v0
	s_barrier
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v34, 16, v136
	v_or_b32_e32 v33, 32, v136
	.loc	1 629 13                        ; attention.py:629:13
	ds_load_b32 v35, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v0, 48, v136
	.loc	1 841 48                        ; attention.py:841:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v36, null, v35, v35, v25
	v_div_scale_f32 v38, null, v35, v35, v26
	v_div_scale_f32 v44, null, v35, v35, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v47, v36
	v_div_scale_f32 v40, null, v35, v35, v27
	v_rcp_f32_e32 v48, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v51, v44
	v_div_scale_f32 v42, null, v35, v35, v28
	v_rcp_f32_e32 v49, v40
	v_div_scale_f32 v46, null, v35, v35, v30
	v_fma_f32 v55, -v36, v47, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v50, v42
	v_div_scale_f32 v37, vcc_lo, v25, v35, v25
	v_fma_f32 v56, -v38, v48, 1.0
	v_rcp_f32_e32 v54, v46
	v_fma_f32 v59, -v44, v51, 1.0
	v_fmac_f32_e32 v47, v55, v47
	v_div_scale_f32 v39, s0, v26, v35, v26
	v_fma_f32 v57, -v40, v49, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v48, v56, v48 :: v_dual_fmac_f32 v51, v59, v51
	v_mul_f32_e32 v56, v37, v47
	v_fma_f32 v58, -v42, v50, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v49, v57, v49
	v_mul_f32_e32 v57, v39, v48
	v_div_scale_f32 v45, s4, v29, v35, v29
	v_fma_f32 v55, -v46, v54, 1.0
	v_fma_f32 v59, -v36, v56, v37
	v_div_scale_f32 v43, s3, v28, v35, v28
	v_fmac_f32_e32 v50, v58, v50
	v_fma_f32 v61, -v38, v57, v39
	v_dual_fmac_f32 v54, v55, v54 :: v_dual_mul_f32 v55, v45, v51
	v_fmac_f32_e32 v56, v59, v47
	v_div_scale_f32 v41, s1, v27, v35, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v60, v43, v50 :: v_dual_fmac_f32 v57, v61, v48
	v_fma_f32 v36, -v36, v56, v37
	v_div_scale_f32 v52, s5, v30, v35, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v58, v41, v49
	v_fma_f32 v37, -v38, v57, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v36, v36, v47, v56
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v53, null, v35, v35, v31
	v_fma_f32 v62, -v40, v58, v41
	v_div_fmas_f32 v37, v37, v48, v57
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v63, -v42, v60, v43
	v_div_fixup_f32 v25, v36, v35, v25
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s0, 0, v35
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v26, v37, v35, v26
	v_fma_f32 v37, -v44, v55, v45
	v_fmac_f32_e32 v58, v62, v49
	v_fmac_f32_e32 v60, v63, v50
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v55, v37, v51
	v_fma_f32 v38, -v40, v58, v41
	v_rcp_f32_e32 v40, v53
	v_div_scale_f32 v41, null, v35, v35, v32
	v_fma_f32 v39, -v42, v60, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v38, v38, v49, v58
	v_fma_f32 v44, -v44, v55, v45
	v_rcp_f32_e32 v43, v41
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v37, s1, v31, v35, v31
	v_div_fixup_f32 v27, v38, v35, v27
	v_div_scale_f32 v38, null, v35, v35, v17
	v_fma_f32 v42, -v53, v40, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v45, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v38, v45, 1.0
	v_fmac_f32_e32 v40, v42, v40
	v_fma_f32 v42, -v41, v43, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v45, v49, v45
	v_fmac_f32_e32 v43, v42, v43
	v_div_fmas_f32 v36, v39, v50, v60
	v_mul_f32_e32 v39, v52, v54
	v_div_scale_f32 v50, null, v35, v35, v18
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v28, v36, v35, v28
	v_fma_f32 v36, -v46, v39, v52
	v_div_fmas_f32 v44, v44, v51, v55
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v42, s3, v32, v35, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v36, v54
	v_div_scale_f32 v49, s4, v17, v35, v17
	v_mul_f32_e32 v48, v42, v43
	v_div_fixup_f32 v29, v44, v35, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v46, v39, v52
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	v_cndmask_b32_e64 v29, 0, v29, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v39, v46, v54, v39
	v_rcp_f32_e32 v46, v50
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v30, v39, v35, v30
	v_mul_f32_e32 v39, v49, v45
	v_mul_f32_e32 v36, v37, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v44, -v50, v46, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v47, -v53, v36, v37
	v_fmac_f32_e32 v46, v44, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v47, v40
	v_fma_f32 v47, -v41, v48, v42
	v_div_scale_f32 v44, null, v35, v35, v20
	v_fma_f32 v37, -v53, v36, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v47, v43
	v_div_scale_f32 v47, null, v35, v35, v19
	v_div_fmas_f32 v36, v37, v40, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v41, v48, v42
	v_fma_f32 v40, -v38, v39, v49
	v_rcp_f32_e32 v41, v47
	v_div_scale_f32 v42, s1, v18, v35, v18
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v39, v40, v45
	v_rcp_f32_e32 v40, v44
	v_div_fmas_f32 v37, v37, v43, v48
	v_mul_f32_e32 v43, v42, v46
	v_div_fixup_f32 v31, v36, v35, v31
	v_fma_f32 v36, -v38, v39, v49
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v48, -v47, v41, 1.0
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v32, v37, v35, v32
	v_fma_f32 v37, -v50, v43, v42
	v_div_fmas_f32 v36, v36, v45, v39
	v_div_scale_f32 v45, s4, v20, v35, v20
	v_fmac_f32_e32 v41, v48, v41
	v_fma_f32 v48, -v44, v40, 1.0
	v_div_scale_f32 v38, s3, v19, v35, v19
	v_div_scale_f32 v49, null, v35, v35, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v43, v37, v46 :: v_dual_fmac_f32 v40, v48, v40
	v_div_fixup_f32 v17, v36, v35, v17
	v_rcp_f32_e32 v39, v49
	v_div_scale_f32 v48, null, v35, v35, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v50, v43, v42
	v_dual_mul_f32 v50, v45, v40 :: v_dual_mul_f32 v37, v38, v41
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v51, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v36, v36, v46, v43
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v42, -v47, v37, v38
	v_fma_f32 v52, -v49, v39, 1.0
	v_div_scale_f32 v43, s1, v21, v35, v21
	v_div_fixup_f32 v18, v36, v35, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v37, v42, v41
	v_fma_f32 v42, -v44, v50, v45
	v_fmac_f32_e32 v39, v52, v39
	v_fma_f32 v46, -v48, v51, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v36, -v47, v37, v38
	v_fmac_f32_e32 v50, v42, v40
	v_div_scale_f32 v47, null, v35, v35, v24
	v_div_scale_f32 v42, s5, v22, v35, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v36, v36, v41, v37
	v_fma_f32 v37, -v44, v50, v45
	s_mov_b32 vcc_lo, s4
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v32, 0, v32, s0
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v19, v36, v35, v19
	v_div_fmas_f32 v37, v37, v40, v50
	v_rcp_f32_e32 v40, v47
	v_fmac_f32_e32 v51, v46, v51
	v_div_scale_f32 v46, null, v35, v35, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v20, v37, v35, v20
	v_div_scale_f32 v37, s3, v23, v35, v23
	v_rcp_f32_e32 v44, v46
	v_mul_f32_e32 v45, v42, v51
	s_mov_b32 vcc_lo, s1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	v_cndmask_b32_e64 v19, 0, v19, s0
	v_cndmask_b32_e64 v20, 0, v20, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v50, -v46, v44, 1.0
	v_fmac_f32_e32 v44, v50, v44
	v_mul_f32_e32 v38, v43, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v49, v38, v43
	v_fmac_f32_e32 v38, v41, v39
	v_fma_f32 v41, -v48, v45, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v49, v38, v43
	v_fmac_f32_e32 v45, v41, v51
	v_fma_f32 v41, -v47, v40, 1.0
	v_div_scale_f32 v49, null, v35, v35, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v36, v36, v39, v38
	v_fma_f32 v38, -v48, v45, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v42, s1, v24, v35, v24
	v_mul_f32_e32 v39, v37, v44
	v_div_scale_f32 v41, null, v35, v35, v9
	v_mul_f32_e32 v48, v42, v40
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v21, v36, v35, v21
	v_div_fmas_f32 v38, v38, v51, v45
	v_rcp_f32_e32 v43, v41
	v_fma_f32 v45, -v46, v39, v37
	v_fma_f32 v36, -v47, v48, v42
	v_div_scale_f32 v51, null, v35, v35, v12
	v_div_fixup_f32 v22, v38, v35, v22
	v_rcp_f32_e32 v38, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v48, v36, v40
	v_div_scale_f32 v36, s4, v9, v35, v9
	v_fmac_f32_e32 v39, v45, v44
	v_fma_f32 v45, -v41, v43, 1.0
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v53, v51
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v37, -v46, v39, v37
	v_div_scale_f32 v46, null, v35, v35, v11
	v_fmac_f32_e32 v43, v45, v43
	v_fma_f32 v50, -v49, v38, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v37, v37, v44, v39
	v_rcp_f32_e32 v45, v46
	v_fma_f32 v39, -v47, v48, v42
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v44, s3, v10, v35, v10
	v_mul_f32_e32 v42, v36, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v39, v39, v40, v48
	v_div_fixup_f32 v23, v37, v35, v23
	s_mov_b32 vcc_lo, s4
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v47, -v46, v45, 1.0
	v_div_fixup_f32 v24, v39, v35, v24
	v_fma_f32 v39, -v51, v53, 1.0
	v_fmac_f32_e32 v38, v50, v38
	v_fma_f32 v50, -v41, v42, v36
	v_fmac_f32_e32 v45, v47, v45
	v_div_scale_f32 v47, s5, v11, v35, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v53, v39, v53 :: v_dual_mul_f32 v52, v44, v38
	v_div_scale_f32 v39, s1, v12, v35, v12
	v_mul_f32_e32 v48, v47, v45
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v40, -v49, v52, v44
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v37, -v46, v48, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v52, v40, v38
	v_div_scale_f32 v40, null, v35, v35, v13
	v_fmac_f32_e32 v48, v37, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v37, v40
	v_fmac_f32_e32 v42, v50, v43
	v_fma_f32 v36, -v41, v42, v36
	v_fma_f32 v41, -v49, v52, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v40, v37, 1.0
	v_fmac_f32_e32 v37, v44, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v36, v36, v43, v42
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v42, v39, v53
	v_div_fmas_f32 v38, v41, v38, v52
	v_fma_f32 v41, -v46, v48, v47
	v_div_scale_f32 v43, null, v35, v35, v14
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v46, -v51, v42, v39
	v_div_fmas_f32 v41, v41, v45, v48
	v_rcp_f32_e32 v45, v43
	v_div_scale_f32 v44, s3, v13, v35, v13
	v_div_fixup_f32 v9, v36, v35, v9
	v_fmac_f32_e32 v42, v46, v53
	v_div_fixup_f32 v10, v38, v35, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v36, v44, v37
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v11, v41, v35, v11
	v_fma_f32 v39, -v51, v42, v39
	v_fma_f32 v38, -v43, v45, 1.0
	v_fma_f32 v46, -v40, v36, v44
	v_div_scale_f32 v41, null, v35, v35, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v39, v39, v53, v42
	v_fmac_f32_e32 v45, v38, v45
	v_div_scale_f32 v38, s4, v14, v35, v14
	v_fmac_f32_e32 v36, v46, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v12, v39, v35, v12
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v42, v38, v45
	v_rcp_f32_e32 v47, v41
	v_fma_f32 v39, -v40, v36, v44
	v_div_scale_f32 v46, null, v35, v35, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v43, v42, v38
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v36, v39, v37, v36
	v_div_scale_f32 v37, null, v35, v35, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v42, v40, v45
	v_rcp_f32_e32 v48, v46
	v_fma_f32 v44, -v41, v47, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v37
	v_div_scale_f32 v39, s1, v15, v35, v15
	v_div_fixup_f32 v13, v36, v35, v13
	v_fmac_f32_e32 v47, v44, v47
	v_fma_f32 v38, -v43, v42, v38
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v44, null, v35, v35, v2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v36, -v46, v48, 1.0
	v_fma_f32 v49, -v37, v40, 1.0
	v_mul_f32_e32 v43, v39, v47
	v_div_fmas_f32 v38, v38, v45, v42
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v50, v44
	v_fmac_f32_e32 v40, v49, v40
	v_div_scale_f32 v49, null, v35, v35, v3
	v_fma_f32 v42, -v41, v43, v39
	v_div_fixup_f32 v14, v38, v35, v14
	v_div_scale_f32 v51, s4, v1, v35, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v53, v49
	v_fmac_f32_e32 v48, v36, v48
	v_div_scale_f32 v36, s3, v16, v35, v16
	v_fmac_f32_e32 v43, v42, v47
	v_fma_f32 v52, -v44, v50, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v45, v36, v48
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v38, -v41, v43, v39
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v42, -v46, v45, v36
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v38, v38, v47, v43
	v_div_scale_f32 v43, null, v35, v35, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v45, v42, v48
	v_fma_f32 v42, -v49, v53, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v15, v38, v35, v15
	v_div_scale_f32 v47, null, v35, v35, v8
	v_fma_f32 v36, -v46, v45, v36
	v_dual_fmac_f32 v53, v42, v53 :: v_dual_mul_f32 v54, v51, v40
	v_div_scale_f32 v42, s1, v3, v35, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v36, v48, v45
	v_rcp_f32_e32 v45, v43
	v_fma_f32 v39, -v37, v54, v51
	s_mov_b32 vcc_lo, s4
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v16, v36, v35, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v54, v39, v40
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v38, -v43, v45, 1.0
	v_fmac_f32_e32 v50, v52, v50
	v_div_scale_f32 v52, s5, v2, v35, v2
	v_fma_f32 v37, -v37, v54, v51
	v_fmac_f32_e32 v45, v38, v45
	v_div_scale_f32 v38, null, v35, v35, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v41, v52, v50
	v_fma_f32 v39, -v44, v41, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v39, v50
	v_mul_f32_e32 v39, v42, v53
	v_div_fmas_f32 v37, v37, v40, v54
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v40, -v44, v41, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v44, -v49, v39, v42
	v_div_fixup_f32 v1, v37, v35, v1
	v_div_scale_f32 v37, null, v35, v35, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v40, v40, v50, v41
	v_fmac_f32_e32 v39, v44, v53
	s_mov_b32 vcc_lo, s1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v1, 0, v1, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v2, v40, v35, v2
	v_div_scale_f32 v40, null, v35, v35, v7
	v_fma_f32 v36, -v49, v39, v42
	v_rcp_f32_e32 v42, v38
	v_rcp_f32_e32 v49, v47
	v_rcp_f32_e32 v44, v40
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v36, v36, v53, v39
	v_rcp_f32_e32 v39, v37
	v_div_scale_f32 v41, vcc_lo, v4, v35, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_div_fixup_f32 v3, v36, v35, v3
	v_fma_f32 v48, -v38, v42, 1.0
	v_fma_f32 v53, -v47, v49, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v51, -v40, v44, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v36, -v37, v39, 1.0
	v_fmac_f32_e32 v42, v48, v42
	v_fmac_f32_e32 v44, v51, v44
	v_div_scale_f32 v51, s4, v7, v35, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v36, v39
	v_div_scale_f32 v36, s1, v5, v35, v5
	v_dual_mul_f32 v55, v51, v44 :: v_dual_mul_f32 v46, v41, v45
	v_div_scale_f32 v48, s3, v6, v35, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v52, v36, v39 :: v_dual_fmac_f32 v49, v53, v49
	v_fma_f32 v50, -v43, v46, v41
	v_div_scale_f32 v53, s5, v8, v35, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v54, v48, v42
	v_fmac_f32_e32 v46, v50, v45
	v_fma_f32 v50, -v37, v52, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v56, v53, v49
	v_fma_f32 v41, -v43, v46, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v52, v50, v39
	v_fma_f32 v43, -v38, v54, v48
	v_fma_f32 v50, -v40, v55, v51
	v_div_fmas_f32 v41, v41, v45, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v37, v52, v36
	v_fma_f32 v37, -v47, v56, v53
	v_dual_fmac_f32 v54, v43, v42 :: v_dual_fmac_f32 v55, v50, v44
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v4, v41, v35, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v56, v37, v49
	v_fma_f32 v38, -v38, v54, v48
	v_fma_f32 v37, -v40, v55, v51
	v_div_fmas_f32 v36, v36, v39, v52
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v39, -v47, v56, v53
	v_div_fmas_f32 v38, v38, v42, v54
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v36, v35, v5
	v_div_fmas_f32 v37, v37, v44, v55
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v38, v35, v6
	v_div_fmas_f32 v39, v39, v49, v56
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s85, v136
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v7, v37, v35, v7
	.loc	1 848 17                        ; attention.py:848:17
	s_and_b32 s5, s91, 0xffff
	s_mov_b32 s4, s90
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v8, v39, v35, v8
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v35, s85, v135
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s0, s85, v34
	.loc	1 843 24                        ; attention.py:843:24
	v_add_lshl_u32 v36, v35, v136, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s85, v33
	v_cmp_gt_i32_e64 s3, s85, v0
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v0, v35, v0, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v37, 8, v36
	v_add_nc_u32_e32 v38, 16, v36
	v_cndmask_b32_e32 v39, 0x80000000, v36, vcc_lo
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	s_clause 0x2
	buffer_store_b32 v25, v39, s[4:7], 0 offen
	buffer_store_b32 v26, v37, s[4:7], 0 offen
	buffer_store_b32 v27, v38, s[4:7], 0 offen
	v_add_nc_u32_e32 v25, 24, v36
	v_add_nc_u32_e32 v26, 32, v36
	v_add_nc_u32_e32 v27, 40, v36
	v_add_nc_u32_e32 v37, 48, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_add_nc_u32 v38, 56, v36
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_cndmask_b32 v27, 0x80000000, v27
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	s_clause 0x4
	buffer_store_b32 v28, v25, s[4:7], 0 offen
	buffer_store_b32 v29, v26, s[4:7], 0 offen
	buffer_store_b32 v30, v27, s[4:7], 0 offen
	buffer_store_b32 v31, v37, s[4:7], 0 offen
	buffer_store_b32 v32, v38, s[4:7], 0 offen
	v_add_lshl_u32 v25, v35, v34, 2
	v_add_nc_u32_e32 v26, 0x48, v36
	v_add_nc_u32_e32 v27, 0x50, v36
	v_add_nc_u32_e32 v28, 0x58, v36
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_add_nc_u32_e32 v29, 0x60, v36
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_cndmask_b32 v28, 0x80000000, v28
	s_clause 0x2
	buffer_store_b32 v17, v25, s[4:7], 0 offen
	buffer_store_b32 v18, v26, s[4:7], 0 offen
	buffer_store_b32 v19, v27, s[4:7], 0 offen
	v_cndmask_b32_e32 v17, 0x80000000, v29, vcc_lo
	v_add_nc_u32_e32 v18, 0x68, v36
	buffer_store_b32 v20, v28, s[4:7], 0 offen
	v_add_nc_u32_e32 v19, 0x70, v36
	v_add_nc_u32_e32 v20, 0x78, v36
	buffer_store_b32 v21, v17, s[4:7], 0 offen
	v_add_lshl_u32 v17, v35, v33, 2
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	buffer_store_b32 v22, v18, s[4:7], 0 offen
	v_add_nc_u32_e32 v18, 0x88, v36
	s_clause 0x2
	buffer_store_b32 v23, v19, s[4:7], 0 offen
	buffer_store_b32 v24, v20, s[4:7], 0 offen
	buffer_store_b32 v9, v17, s[4:7], 0 offen
	v_add_nc_u32_e32 v9, 0x90, v36
	v_add_nc_u32_e32 v19, 0xa0, v36
	v_add_nc_u32_e32 v20, 0xa8, v36
	v_cndmask_b32_e32 v17, 0x80000000, v18, vcc_lo
	v_add_nc_u32_e32 v18, 0x98, v36
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_store_b32 v10, v17, s[4:7], 0 offen
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	buffer_store_b32 v11, v9, s[4:7], 0 offen
	v_add_nc_u32_e32 v11, 0xc8, v36
	v_cndmask_b32_e32 v10, 0x80000000, v18, vcc_lo
	v_cndmask_b32_e32 v18, 0x80000000, v20, vcc_lo
	v_add_nc_u32_e32 v9, 0xb0, v36
	s_clause 0x2
	buffer_store_b32 v12, v10, s[4:7], 0 offen
	buffer_store_b32 v13, v17, s[4:7], 0 offen
	buffer_store_b32 v14, v18, s[4:7], 0 offen
	v_add_nc_u32_e32 v10, 0xb8, v36
	v_add_nc_u32_e32 v12, 0xd0, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 848 17                        ; attention.py:848:17
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v9, s[4:7], 0 offen
	buffer_store_b32 v16, v10, s[4:7], 0 offen
	buffer_store_b32 v1, v0, s[4:7], 0 offen
	buffer_store_b32 v2, v11, s[4:7], 0 offen
	buffer_store_b32 v3, v12, s[4:7], 0 offen
	v_add_nc_u32_e32 v0, 0xd8, v36
	v_add_nc_u32_e32 v1, 0xe0, v36
	v_add_nc_u32_e32 v2, 0xe8, v36
	v_add_nc_u32_e32 v3, 0xf0, v36
	v_add_nc_u32_e32 v9, 0xf8, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v0, s[4:7], 0 offen
	buffer_store_b32 v5, v1, s[4:7], 0 offen
	buffer_store_b32 v6, v2, s[4:7], 0 offen
	buffer_store_b32 v7, v3, s[4:7], 0 offen
	buffer_store_b32 v8, v9, s[4:7], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp69:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 194
		.amdhsa_next_free_sgpr 100
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_vgpr, 194
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.numbered_sgpr, 100
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15752
; TotalNumSgprs: 102
; NumVgprs: 194
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 102
; NumVGPRsForWavesPerEU: 194
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
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp57-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     102
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     194
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
