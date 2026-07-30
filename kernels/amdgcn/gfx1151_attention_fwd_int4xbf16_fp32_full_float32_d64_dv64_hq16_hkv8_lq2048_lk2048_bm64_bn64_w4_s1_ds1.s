	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b128 s[80:83], s[0:1], 0x60
	v_dual_mov_b32 v40, 0x7632 :: v_dual_and_b32 v1, 1, v0
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v2, 1, v0
	s_clause 0x1
	s_load_b256 s[64:71], s[0:1], 0x0
	s_load_b64 s[4:5], s[0:1], 0x70
	v_dual_mov_b32 v216, 0xff800000 :: v_dual_lshlrev_b32 v1, 4, v1
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s6, s2, 6
	.loc	1 583 26                        ; attention.py:583:26
	s_lshl_b32 s2, s3, 11
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, s6, v2
	.loc	1 584 26                        ; attention.py:584:26
	s_add_i32 s7, s6, s2
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v38, 0x60, v0
	s_mov_b32 s91, 0x31027000
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, 0x800, v4
	s_mov_b32 s90, 0x7ffffffe
	v_dual_mov_b32 v39, 0x5410 :: v_dual_and_b32 v80, 15, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_bfe_u32 v125, v0, 4, 1
	s_clause 0x1
	s_load_b64 s[92:93], s[0:1], 0x20
	s_load_b128 s[84:87], s[0:1], 0x30
	.loc	1 584 26                        ; attention.py:584:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[97:98], null, s80, v2, v[1:2]
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e32 vcc_lo, s80, v1
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s89, s65, 0xffff
	s_mov_b32 s88, s64
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v68, 62, v125
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 s2, s2, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 584 26                        ; attention.py:584:26
	v_mad_u64_u32 v[2:3], null, s80, s7, v[97:98]
	v_dual_mov_b32 v22, v17 :: v_dual_lshlrev_b32 v63, 2, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v67, 24, v125
	.loc	1 566 23                        ; attention.py:566:23
	s_lshr_b32 s0, s0, 28
	v_dual_mov_b32 v212, 0xff800000 :: v_dual_and_b32 v43, 7, v0
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v42, 3, v0
	v_dual_mov_b32 v19, v17 :: v_dual_and_b32 v44, 16, v0
	v_dual_mov_b32 v18, v17 :: v_dual_lshlrev_b32 v47, 1, v0
	.loc	1 585 26                        ; attention.py:585:26
	buffer_load_b128 v[33:36], v1, s[88:91], 0 offen
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v1, 1, v38
	.loc	1 590 31                        ; attention.py:590:31
	s_and_b32 s89, s71, 0xffff
	s_mov_b32 s88, s70
	v_bfe_i32 v54, v0, 2, 1
	v_bfe_i32 v57, v0, 5, 1
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v1, v1, v80
	v_dual_mov_b32 v30, v17 :: v_dual_and_b32 v41, 0x78, v0
	.loc	1 566 23                        ; attention.py:566:23
	s_add_i32 s0, s3, s0
	v_mov_b32_e32 v4, v17
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 591 17                        ; attention.py:591:17
	v_or_b32_e32 v2, s7, v1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s6, v1
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s1, s0, -16
	v_mov_b32_e32 v147, 0xff800000
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v79, 40, v125
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off
	scratch_store_b32 off, v68, off offset:4
	.loc	1 590 31                        ; attention.py:590:31
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, 0x800, v1
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v78, 42, v125
	v_or_b32_e32 v77, 44, v125
	v_or_b32_e32 v76, 46, v125
	v_or_b32_e32 v75, 48, v125
	.loc	1 590 31                        ; attention.py:590:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 570 31                        ; attention.py:570:31
	s_clause 0x7                            ; 32-byte Folded Spill
	scratch_store_b32 off, v67, off offset:52
	scratch_store_b32 off, v63, off offset:60
	scratch_store_b32 off, v80, off offset:56
	scratch_store_b32 off, v79, off offset:48
	scratch_store_b32 off, v78, off offset:44
	scratch_store_b32 off, v77, off offset:40
	scratch_store_b32 off, v76, off offset:36
	scratch_store_b32 off, v75, off offset:32
	.loc	1 590 31                        ; attention.py:590:31
	buffer_load_u16 v37, v1, s[88:91], 0 offen
	v_and_b32_e32 v63, 0x7c, v63
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s1, s3, s1
	.loc	1 584 86                        ; attention.py:584:86
	v_bfe_i32 v46, v0, 0, 1
	v_dual_mov_b32 v21, v17 :: v_dual_lshlrev_b32 v62, 4, v0
	v_dual_mov_b32 v23, v17 :: v_dual_and_b32 v48, 24, v0
	v_dual_mov_b32 v25, v17 :: v_dual_and_b32 v50, 3, v0
	v_dual_mov_b32 v28, v17 :: v_dual_and_b32 v55, 8, v0
	v_bfe_i32 v56, v0, 3, 1
	v_mov_b32_e32 v32, v17
	v_mov_b32_e32 v10, v17
	v_dual_mov_b32 v11, v17 :: v_dual_and_b32 v54, 0x2040, v54
	v_dual_mov_b32 v12, v17 :: v_dual_lshlrev_b32 v61, 2, v38
	v_dual_mov_b32 v13, v17 :: v_dual_lshlrev_b32 v66, 6, v44
	v_dual_mov_b32 v8, v17 :: v_dual_and_b32 v57, 0x2040, v57
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v58, s6, v42
	.loc	1 585 26                        ; attention.py:585:26
	v_and_or_b32 v59, v47, 30, v125
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v81, 38, v125
	.loc	1 567 22                        ; attention.py:567:22
	scratch_store_b32 off, v41, off offset:68 ; 4-byte Folded Spill
	.loc	1 570 31                        ; attention.py:570:31
	v_lshlrev_b32_e32 v41, 3, v43
	v_lshlrev_b32_e32 v43, 4, v43
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s7, s0, 4
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_u32 s0, s1, 0x10007
	v_lshrrev_b32_e32 v64, 3, v38
	v_lshl_or_b32 v38, v38, 4, v63
	s_add_i32 s8, s1, s0
	v_dual_mov_b32 v20, v17 :: v_dual_and_b32 v49, 12, v0
	v_dual_mov_b32 v26, v17 :: v_dual_and_b32 v53, 4, v0
	v_mov_b32_e32 v15, v17
	v_dual_mov_b32 v6, v17 :: v_dual_lshlrev_b32 v65, 5, v50
	v_xor_b32_e32 v153, v62, v48
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e64 s0, 0x800, v58
	.loc	1 585 26                        ; attention.py:585:26
	v_lshlrev_b32_e32 v58, 2, v59
	v_lshl_or_b32 v43, v48, 8, v43
	v_lshl_or_b32 v48, v48, 1, v61
	v_and_or_b32 v46, 0x1020, v46, v54
	v_lshl_or_b32 v54, v55, 4, v66
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_i32 s8, s8, 0x80000
	v_and_or_b32 v55, 0x1020, v56, v57
	s_sext_i32_i16 s8, s8
	v_xor_b32_e32 v158, v38, v64
	v_mul_lo_u32 v38, s5, v42
	.loc	1 632 32                        ; attention.py:632:32
	s_lshl_b32 s8, s8, 10
	.loc	1 570 31                        ; attention.py:570:31
	v_bfe_i32 v45, v0, 4, 1
	v_dual_mov_b32 v29, v17 :: v_dual_lshlrev_b32 v60, 1, v49
	v_dual_mov_b32 v14, v17 :: v_dual_lshlrev_b32 v49, 5, v49
	v_dual_mov_b32 v98, v17 :: v_dual_and_b32 v47, 0x80, v47
	v_lshl_add_u32 v53, v53, 9, 0
	v_or_b32_e32 v74, 50, v125
	v_or_b32_e32 v73, 52, v125
	v_or_b32_e32 v72, 54, v125
	v_or_b32_e32 v71, 56, v125
	v_or_b32_e32 v70, 58, v125
	v_or_b32_e32 v69, 60, v125
	.loc	1 585 26                        ; attention.py:585:26
	v_xor_b32_e32 v56, 4, v58
	v_xor_b32_e32 v156, v43, v48
	v_xor_b32_e32 v43, v55, v65
	.loc	1 632 32                        ; attention.py:632:32
	s_lshl_b32 s3, s7, 14
	s_and_b32 s8, s8, 0xfffff800
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s7, s83, s7
	.loc	1 632 32                        ; attention.py:632:32
	s_add_i32 s83, s8, s3
	v_mov_b32_e32 v31, v17
	v_dual_mov_b32 v16, v17 :: v_dual_mov_b32 v123, v62
	v_dual_mov_b32 v2, v17 :: v_dual_and_b32 v45, 0x2040, v45
	v_and_b32_e32 v62, 0x630, v62
	v_lshl_or_b32 v49, v50, 11, v49
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[102:103], null, s81, v42, v[41:42]
	v_add3_u32 v47, v53, v47, v43
	s_clause 0x5                            ; 24-byte Folded Spill
	scratch_store_b32 off, v74, off offset:28
	scratch_store_b32 off, v73, off offset:24
	scratch_store_b32 off, v72, off offset:20
	scratch_store_b32 off, v71, off offset:16
	scratch_store_b32 off, v70, off offset:12
	scratch_store_b32 off, v69, off offset:8
	v_or_b32_e32 v177, s83, v69
	v_or_b32_e32 v178, s83, v68
	v_lshl_add_u32 v68, s5, 4, v38
	v_lshl_add_u32 v69, s5, 5, v38
	v_mad_u64_u32 v[42:43], null, s5, 48, v[38:39]
	v_add_nc_u32_e32 v179, v41, v38
	v_or3_b32 v157, v62, v45, v49
	v_xor_b32_e32 v45, 0x2040, v156
	.loc	1 585 26                        ; attention.py:585:26
	v_cmp_eq_u32_e64 s3, 0, v44
	v_dual_mov_b32 v24, v17 :: v_dual_and_b32 v51, 28, v0
	v_dual_mov_b32 v27, v17 :: v_dual_lshlrev_b32 v52, 3, v0
	v_dual_mov_b32 v5, v17 :: v_dual_add_nc_u32 v180, v47, v44
	v_add_nc_u32_e32 v181, 0, v45
	v_cndmask_b32_e64 v39, 0x1054, v39, s3
	v_cndmask_b32_e64 v40, 0x3276, v40, s3
	v_dual_mov_b32 v9, v17 :: v_dual_and_b32 v52, 0x310, v52
	v_lshl_or_b32 v155, v80, 5, v60
	v_lshl_or_b32 v50, v51, 7, v65
	v_lshl_or_b32 v39, v39, 8, v39
	v_lshl_or_b32 v40, v40, 8, v40
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[103:104], null, s81, 48, v[102:103]
	v_xor_b32_e32 v59, 8, v153
	v_xor_b32_e32 v57, 8, v155
	v_xor_b32_e32 v60, 16, v155
	v_xor_b32_e32 v63, 24, v155
	v_or3_b32 v159, v50, v61, v51
	v_or3_b32 v160, v46, v54, v52
	v_dual_mov_b32 v1, v17 :: v_dual_add_nc_u32 v162, 0, v57
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v3, v17 :: v_dual_add_nc_u32 v164, 0, v63
	v_dual_mov_b32 v100, v17 :: v_dual_add_nc_u32 v161, 0, v59
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v124, 36, v125
	v_or_b32_e32 v67, 4, v41
	v_xor_b32_e32 v46, 16, v157
	v_xor_b32_e32 v48, 32, v157
	v_xor_b32_e32 v49, 48, v157
	v_xor_b32_e32 v50, 64, v157
	v_xor_b32_e32 v51, 0x50, v157
	v_xor_b32_e32 v52, 0x60, v157
	v_xor_b32_e32 v54, 0x70, v157
	v_xor_b32_e32 v55, 0x810, v158
	v_xor_b32_e32 v59, 4, v159
	v_xor_b32_e32 v61, 8, v159
	v_xor_b32_e32 v62, 12, v159
	v_xor_b32_e32 v64, 16, v159
	v_xor_b32_e32 v53, 20, v159
	v_xor_b32_e32 v65, 24, v159
	v_xor_b32_e32 v66, 28, v159
	v_add_nc_u32_e32 v163, 0, v60
	v_xor_b32_e32 v57, 32, v160
	v_xor_b32_e32 v60, 64, v160
	v_xor_b32_e32 v63, 0x60, v160
	.loc	1 676 27                        ; attention.py:676:27
	s_mul_i32 s4, s4, s1
	v_dual_mov_b32 v146, 0xff800000 :: v_dual_mov_b32 v149, 0xff800000
	v_dual_mov_b32 v148, 0xff800000 :: v_dual_mov_b32 v215, 0xff800000
	v_dual_mov_b32 v214, 0xff800000 :: v_dual_mov_b32 v213, 0xff800000
	v_dual_mov_b32 v7, v17 :: v_dual_add_nc_u32 v182, 0, v46
	v_dual_mov_b32 v99, v17 :: v_dual_add_nc_u32 v184, 0, v49
	v_dual_mov_b32 v101, v17 :: v_dual_add_nc_u32 v186, 0, v51
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v121, 2, v125
	v_or_b32_e32 v152, 4, v125
	v_or_b32_e32 v255, 6, v125
	v_or_b32_e32 v254, 8, v125
	v_or_b32_e32 v253, 10, v125
	v_or_b32_e32 v252, 12, v125
	v_or_b32_e32 v251, 14, v125
	v_or_b32_e32 v137, 16, v125
	v_or_b32_e32 v136, 18, v125
	v_or_b32_e32 v135, 20, v125
	v_or_b32_e32 v134, 22, v125
	v_or_b32_e32 v151, 26, v125
	v_or_b32_e32 v211, 28, v125
	v_or_b32_e32 v122, 30, v125
	v_or_b32_e32 v120, 32, v125
	v_or_b32_e32 v150, 34, v125
	v_lshl_add_u32 v154, v80, 1, 0
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s1, s81, v41
	v_or_b32_e32 v165, s83, v124
	v_or_b32_e32 v166, s83, v81
	v_or_b32_e32 v167, s83, v79
	v_or_b32_e32 v168, s83, v78
	v_or_b32_e32 v169, s83, v77
	v_or_b32_e32 v170, s83, v76
	v_or_b32_e32 v171, s83, v75
	v_or_b32_e32 v172, s83, v74
	v_or_b32_e32 v173, s83, v73
	v_or_b32_e32 v174, s83, v72
	v_or_b32_e32 v175, s83, v71
	v_or_b32_e32 v176, s83, v70
	v_add_nc_u32_e32 v183, 0, v48
	v_add_nc_u32_e32 v185, 0, v50
	v_add_nc_u32_e32 v187, 0, v52
	v_add_nc_u32_e32 v188, 0, v54
	v_add_nc_u32_e32 v189, 0, v55
	v_add_nc_u32_e32 v190, 0, v59
	v_add_nc_u32_e32 v191, 0, v61
	v_add_nc_u32_e32 v192, 0, v62
	v_add_nc_u32_e32 v193, 0, v64
	v_add_nc_u32_e32 v194, 0, v53
	v_add_nc_u32_e32 v195, 0, v65
	v_add_nc_u32_e32 v196, 0, v66
	v_add_nc_u32_e32 v197, 0, v57
	v_add_nc_u32_e32 v198, 0, v60
	v_add_nc_u32_e32 v199, 0, v63
	.loc	1 629 13                        ; attention.py:629:13
	v_lshl_add_u32 v200, s81, 4, v102
	v_lshl_add_u32 v201, s81, 5, v102
	v_add_nc_u32_e32 v202, v41, v68
	v_add_nc_u32_e32 v203, v41, v69
	v_add_nc_u32_e32 v204, v67, v68
	v_add_nc_u32_e32 v205, v67, v69
	v_add_nc_u32_e32 v206, v41, v42
	v_add_nc_u32_e32 v207, v67, v42
	s_mov_b32 s72, 0
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s82, s82, 0x3fb8aa3b
	.loc	1 674 25                        ; attention.py:674:25
	s_mul_i32 s6, s5, s6
	s_and_b32 s67, s67, 0xffff
	s_and_b32 s85, s85, 0xffff
	s_mov_b32 s96, s84
	s_add_i32 s84, s4, s7
	s_mov_b32 s100, 0x76543210
	s_mov_b32 s73, s72
	s_mov_b32 s74, s72
	s_mov_b32 s75, s72
	s_mov_b32 s76, s72
	s_mov_b32 s77, s72
	s_mov_b32 s78, s72
	s_mov_b32 s79, s72
	s_mov_b32 s94, s90
	s_mov_b32 s95, s91
	s_mov_b32 s98, s90
	s_mov_b32 s99, s91
	s_mov_b32 s101, s72
	s_and_b32 s93, s93, 0xffff
	s_and_b32 s69, s69, 0xffff
	s_mov_b32 s97, s85
	s_add_i32 s84, s84, s6
	s_mov_b32 s70, s90
	s_mov_b32 s71, s91
	s_mov_b32 s88, s66
	s_mov_b32 s89, s67
	scratch_store_b32 off, v81, off offset:64 ; 4-byte Folded Spill
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v38, v58, v33
	ds_bpermute_b32 v33, v56, v33
	ds_bpermute_b32 v43, v58, v34
	ds_bpermute_b32 v34, v56, v34
	ds_bpermute_b32 v45, v58, v35
	ds_bpermute_b32 v35, v56, v35
	ds_bpermute_b32 v44, v58, v36
	ds_bpermute_b32 v36, v56, v36
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v104, v33, v38, s3
	v_cndmask_b32_e64 v106, v38, v33, s3
	v_and_b32_e32 v33, 0x540054, v39
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v105, v34, v43, s3
	v_cndmask_b32_e64 v107, v43, v34, s3
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v108, v35, v45, s3
	v_cndmask_b32_e64 v110, v45, v35, s3
	v_lshl_or_b32 v33, v33, 4, v33
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v109, v36, v44, s3
	v_cndmask_b32_e64 v111, v44, v36, s3
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v208, 16, v37
	v_and_b32_e32 v37, 0x760076, v40
	v_and_b32_e32 v209, 0x5040504, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v34, v37, 4, v37
	v_and_b32_e32 v210, 0x7060706, v34
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 633 32                        ; attention.py:633:32
	s_or_b32 s85, s101, s83
	.loc	1 634 32                        ; attention.py:634:32
	v_add_nc_u32_e32 v37, 0, v153
	.loc	1 633 32                        ; attention.py:633:32
	v_mad_u64_u32 v[33:34], null, s85, s80, v[97:98]
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 s3, s84, s101
	.loc	1 693 30                        ; attention.py:693:30
	s_mul_i32 s85, s85, s81
	.loc	1 685 25                        ; attention.py:685:25
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 685 25                        ; attention.py:685:25
	.loc	1 634 32                        ; attention.py:634:32
	buffer_load_b128 v[33:36], v33, s[88:91], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 685 25                        ; attention.py:685:25
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v37, v[33:34]
	ds_store_b64 v161, v[35:36]
	v_add_nc_u32_e32 v33, 0, v155
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[65:68], v163 offset1:1
	ds_load_2addr_stride64_b64 v[69:72], v163 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[49:52], v33 offset1:1
	ds_load_2addr_stride64_b64 v[53:56], v33 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[57:60], v162 offset1:1
	ds_load_2addr_stride64_b64 v[61:64], v162 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	v_dual_mov_b32 v33, s72 :: v_dual_mov_b32 v38, s77
	v_dual_mov_b32 v34, s73 :: v_dual_mov_b32 v35, s74
	v_mov_b32_e32 v40, s79
	v_dual_mov_b32 v36, s75 :: v_dual_mov_b32 v37, s76
	v_mov_b32_e32 v39, s78
	.loc	1 634 32                        ; attention.py:634:32
	ds_load_2addr_stride64_b64 v[73:76], v164 offset1:1
	ds_load_2addr_stride64_b64 v[112:115], v164 offset0:2 offset1:3
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[49:50], v[104:105], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[57:58], v[108:109], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[65:66], v[106:107], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[73:74], v[110:111], v[41:48] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v74, s101, v178, 1
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v89, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v88, v42
	v_cvt_f32_i32_e32 v87, v43
	v_cvt_f32_i32_e32 v86, v44
	v_cvt_f32_i32_e32 v85, v45
	v_cvt_f32_i32_e32 v84, v46
	v_cvt_f32_i32_e32 v82, v47
	v_cvt_f32_i32_e32 v81, v48
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[51:52], v[104:105], v[33:40] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	buffer_load_u16 v74, v74, s[92:95], 0 offen
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v88, v208, v88
	v_mul_f32_e32 v84, v208, v84
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[59:60], v[108:109], v[41:48] neg_lo:[1,1,0]
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v86, v208, v86
	v_mul_f32_e32 v82, v208, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[106:107], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[75:76], v[110:111], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v83, v41
	v_cvt_f32_i32_e32 v221, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v220, v43
	v_cvt_f32_i32_e32 v219, v44
	v_cvt_f32_i32_e32 v218, v45
	v_cvt_f32_i32_e32 v79, v46
	v_cvt_f32_i32_e32 v77, v47
	v_cvt_f32_i32_e32 v75, v48
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[53:54], v[104:105], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[61:62], v[108:109], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[69:70], v[106:107], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[112:113], v[110:111], v[41:48] neg_lo:[1,1,0]
	.loc	1 684 35                        ; attention.py:684:35
	v_add_nc_u32_e32 v112, 0, v156
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v78, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v76, v42
	v_cvt_f32_i32_e32 v217, v43
	v_cvt_f32_i32_e32 v96, v44
	v_cvt_f32_i32_e32 v95, v45
	v_cvt_f32_i32_e32 v94, v46
	v_cvt_f32_i32_e32 v92, v47
	v_cvt_f32_i32_e32 v90, v48
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[55:56], v[104:105], v[33:40] neg_lo:[1,1,0]
	.loc	1 683 36                        ; attention.py:683:36
	v_add_nc_u32_e32 v34, 4, v179
	v_add_lshl_u32 v33, s3, v179, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[63:64], v[108:109], v[41:48] neg_lo:[1,1,0]
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v34, s3, v34, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v33, 0x80000000, v33, s0
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[71:72], v[106:107], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v34, 0x80000000, v34, s0
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[114:115], v[110:111], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v93, v41
	v_cvt_f32_i32_e32 v91, v42
	.loc	1 683 36                        ; attention.py:683:36
	s_clause 0x1
	buffer_load_b128 v[35:38], v33, s[96:99], 0 offen
	buffer_load_b128 v[39:42], v34, s[96:99], 0 offen
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v67, v46
	v_cvt_f32_i32_e32 v65, v48
	v_cvt_f32_i32_e32 v68, v45
	v_cvt_f32_i32_e32 v66, v47
	v_cvt_f32_i32_e32 v80, v43
	v_cvt_f32_i32_e32 v69, v44
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v80, v208, v80
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v46, 0xff800000, v37, s0
	v_add_lshl_u32 v37, s3, v202, 2
	v_cndmask_b32_e64 v34, 0xff800000, v38, s0
	v_add_lshl_u32 v38, s3, v204, 2
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v48, 0xff800000, v41, s0
	v_cndmask_b32_e64 v45, 0xff800000, v35, s0
	v_cndmask_b32_e64 v37, 0x80000000, v37, s0
	v_cndmask_b32_e64 v35, 0xff800000, v40, s0
	v_cndmask_b32_e64 v41, 0x80000000, v38, s0
	v_cndmask_b32_e64 v47, 0xff800000, v39, s0
	s_clause 0x1
	buffer_load_b128 v[37:40], v37, s[96:99], 0 offen
	buffer_load_b128 v[49:52], v41, s[96:99], 0 offen
	v_cndmask_b32_e64 v33, 0xff800000, v36, s0
	v_cndmask_b32_e64 v36, 0xff800000, v42, s0
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s31, 0xff800000, v35
	v_cmp_neq_f32_e64 s4, 0xff800000, v46
	v_cmp_neq_f32_e64 s6, 0xff800000, v48
	v_cmp_neq_f32_e64 s23, 0xff800000, v33
	v_cmp_neq_f32_e64 s34, 0xff800000, v36
	v_cmp_neq_f32_e64 s5, 0xff800000, v47
	v_cmp_neq_f32_e64 s24, 0xff800000, v34
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s15, s0, s6
	s_and_b32 s17, s0, s4
	s_and_b32 s16, s0, s5
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v57, 0xff800000, v37, s0
	v_add_lshl_u32 v37, s3, v203, 2
	v_cndmask_b32_e64 v41, 0xff800000, v38, s0
	v_add_lshl_u32 v38, s3, v205, 2
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v44, 0xff800000, v52, s0
	v_cndmask_b32_e64 v43, 0xff800000, v50, s0
	v_cndmask_b32_e64 v37, 0x80000000, v37, s0
	v_cndmask_b32_e64 v60, 0xff800000, v51, s0
	v_cndmask_b32_e64 v38, 0x80000000, v38, s0
	v_cndmask_b32_e64 v59, 0xff800000, v49, s0
	s_clause 0x1
	buffer_load_b128 v[49:52], v37, s[96:99], 0 offen
	buffer_load_b128 v[61:64], v38, s[96:99], 0 offen
	v_cndmask_b32_e64 v42, 0xff800000, v40, s0
	v_cndmask_b32_e64 v58, 0xff800000, v39, s0
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s25, 0xff800000, v41
	v_cmp_neq_f32_e64 s9, 0xff800000, v57
	v_cmp_neq_f32_e64 s10, 0xff800000, v60
	v_cmp_neq_f32_e64 s27, 0xff800000, v42
	v_cmp_neq_f32_e64 s26, 0xff800000, v43
	v_cmp_neq_f32_e64 s30, 0xff800000, v44
	v_cmp_neq_f32_e64 s7, 0xff800000, v59
	v_cmp_neq_f32_e64 s11, 0xff800000, v58
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s8, s0, s7
	s_and_b32 s7, s0, s10
	s_and_b32 s10, s0, s9
	s_and_b32 s9, s0, s11
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v53, 0xff800000, v49, s0
	v_add_lshl_u32 v49, s3, v206, 2
	v_cndmask_b32_e64 v37, 0xff800000, v50, s0
	v_add_lshl_u32 v50, s3, v207, 2
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v40, 0xff800000, v64, s0
	v_cndmask_b32_e64 v39, 0xff800000, v62, s0
	v_cndmask_b32_e64 v49, 0x80000000, v49, s0
	v_cndmask_b32_e64 v56, 0xff800000, v63, s0
	v_cndmask_b32_e64 v50, 0x80000000, v50, s0
	v_cndmask_b32_e64 v55, 0xff800000, v61, s0
	s_clause 0x1
	buffer_load_b128 v[61:64], v49, s[96:99], 0 offen
	buffer_load_b128 v[70:73], v50, s[96:99], 0 offen
	v_cndmask_b32_e64 v54, 0xff800000, v51, s0
	v_cndmask_b32_e64 v38, 0xff800000, v52, s0
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s19, 0xff800000, v37
	v_cmp_neq_f32_e64 s28, 0xff800000, v39
	v_cmp_neq_f32_e64 s29, 0xff800000, v40
	v_cmp_neq_f32_e64 s3, 0xff800000, v45
	v_cmp_neq_f32_e64 s20, 0xff800000, v38
	v_cmp_neq_f32_e64 s14, 0xff800000, v56
	v_cmp_neq_f32_e64 s12, 0xff800000, v55
	v_cmp_neq_f32_e64 s13, 0xff800000, v53
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s18, s0, s3
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s33, 0xff800000, v54
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s11, s0, s14
	s_and_b32 s12, s0, s12
	s_and_b32 s14, s0, s13
	s_and_b32 s28, s0, s28
	s_and_b32 s13, s0, s33
	s_and_b32 s33, s0, s31
	s_and_b32 s31, s0, s34
	s_and_b32 s34, s0, s24
	s_and_b32 s24, s0, s26
	s_and_b32 s26, s0, s25
	s_and_b32 s25, s0, s27
	s_and_b32 s27, s0, s29
	s_and_b32 s29, s0, s20
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v49, 0xff800000, v62, s0
	v_cndmask_b32_e64 v62, 0xff800000, v63, s0
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v63, 0xff800000, v70, s0
	v_or_b32_e32 v70, s83, v125
	v_cndmask_b32_e64 v51, 0xff800000, v71, s0
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v71, s101, v175, 1
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v50, 0xff800000, v64, s0
	v_cndmask_b32_e64 v64, 0xff800000, v72, s0
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v70, s101, v70, 1
	v_add_lshl_u32 v72, s101, v176, 1
	buffer_load_u16 v71, v71, s[92:95], 0 offen
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v52, 0xff800000, v73, s0
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v73, s101, v177, 1
	buffer_load_u16 v222, v70, s[92:95], 0 offen
	v_or_b32_e32 v70, s83, v121
	buffer_load_u16 v72, v72, s[92:95], 0 offen
	.loc	1 683 36                        ; attention.py:683:36
	v_cndmask_b32_e64 v61, 0xff800000, v61, s0
	.loc	1 649 37                        ; attention.py:649:37
	buffer_load_u16 v73, v73, s[92:95], 0 offen
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s38, 0xff800000, v62
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v70, s101, v70, 1
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s39, 0xff800000, v63
	v_cmp_neq_f32_e64 s35, 0xff800000, v61
	v_cmp_neq_f32_e64 s40, 0xff800000, v64
	v_cmp_neq_f32_e64 s21, 0xff800000, v49
	.loc	1 649 37                        ; attention.py:649:37
	buffer_load_u16 v223, v70, s[92:95], 0 offen
	v_or_b32_e32 v70, s83, v152
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s36, 0xff800000, v50
	v_cmp_neq_f32_e64 s22, 0xff800000, v51
	v_cmp_neq_f32_e64 s37, 0xff800000, v52
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s3, s0, s40
	.loc	1 649 37 is_stmt 1              ; attention.py:649:37
	v_add_lshl_u32 v70, s101, v70, 1
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s4, s0, s39
	s_and_b32 s5, s0, s38
	s_and_b32 s6, s0, s35
	s_and_b32 s35, s0, s23
	.loc	1 649 37                        ; attention.py:649:37
	buffer_load_u16 v224, v70, s[92:95], 0 offen
	v_or_b32_e32 v70, s83, v255
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s23, s0, s30
	s_and_b32 s30, s0, s19
	s_and_b32 s19, s0, s37
	s_and_b32 s20, s0, s22
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v70, s101, v70, 1
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s22, s0, s21
	s_and_b32 s21, s0, s36
	.loc	1 649 37                        ; attention.py:649:37
	buffer_load_u16 v225, v70, s[92:95], 0 offen
	v_or_b32_e32 v70, s83, v254
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v70, s101, v70, 1
	buffer_load_u16 v226, v70, s[92:95], 0 offen
	v_or_b32_e32 v70, s83, v253
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v89, v208, v89
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v70, s101, v70, 1
	buffer_load_u16 v227, v70, s[92:95], 0 offen
	v_or_b32_e32 v70, s83, v252
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v70, s101, v70, 1
	buffer_load_u16 v228, v70, s[92:95], 0 offen
	v_or_b32_e32 v70, s83, v251
	v_add_lshl_u32 v70, s101, v70, 1
	buffer_load_u16 v229, v70, s[92:95], 0 offen
	v_or_b32_e32 v70, s83, v137
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v87, v208, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v70, s101, v70, 1
	buffer_load_u16 v230, v70, s[92:95], 0 offen
	v_or_b32_e32 v70, s83, v136
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v85, v208, v85
	.loc	1 649 37                        ; attention.py:649:37
	v_add_lshl_u32 v70, s101, v70, 1
	buffer_load_u16 v240, v70, s[92:95], 0 offen
	v_or_b32_e32 v70, s83, v135
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v70, s101, v70, 1
	buffer_load_u16 v241, v70, s[92:95], 0 offen
	v_or_b32_e32 v70, s83, v134
	v_add_lshl_u32 v70, s101, v70, 1
	buffer_load_u16 v242, v70, s[92:95], 0 offen
	v_or_b32_e32 v70, 24, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v70, s83, v70
	v_add_lshl_u32 v70, s101, v70, 1
	buffer_load_u16 v243, v70, s[92:95], 0 offen
	v_or_b32_e32 v70, s83, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v70, s101, v70, 1
	buffer_load_u16 v244, v70, s[92:95], 0 offen
	v_or_b32_e32 v70, s83, v211
	v_add_lshl_u32 v70, s101, v70, 1
	buffer_load_u16 v245, v70, s[92:95], 0 offen
	v_or_b32_e32 v70, s83, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v70, s101, v70, 1
	buffer_load_u16 v246, v70, s[92:95], 0 offen
	v_or_b32_e32 v70, s83, v120
	v_add_lshl_u32 v70, s101, v70, 1
	buffer_load_u16 v247, v70, s[92:95], 0 offen
	v_or_b32_e32 v70, s83, v150
	s_delay_alu instid0(VALU_DEP_1)
	v_add_lshl_u32 v70, s101, v70, 1
	buffer_load_u16 v248, v70, s[92:95], 0 offen
	v_add_lshl_u32 v70, s101, v165, 1
	buffer_load_u16 v231, v70, s[92:95], 0 offen
	v_add_lshl_u32 v70, s101, v166, 1
	buffer_load_u16 v232, v70, s[92:95], 0 offen
	v_add_lshl_u32 v70, s101, v167, 1
	buffer_load_u16 v233, v70, s[92:95], 0 offen
	v_add_lshl_u32 v70, s101, v168, 1
	buffer_load_u16 v234, v70, s[92:95], 0 offen
	v_add_lshl_u32 v70, s101, v169, 1
	buffer_load_u16 v235, v70, s[92:95], 0 offen
	v_add_lshl_u32 v70, s101, v170, 1
	buffer_load_u16 v236, v70, s[92:95], 0 offen
	v_add_lshl_u32 v70, s101, v171, 1
	buffer_load_u16 v237, v70, s[92:95], 0 offen
	v_add_lshl_u32 v70, s101, v172, 1
	buffer_load_u16 v238, v70, s[92:95], 0 offen
	v_add_lshl_u32 v70, s101, v173, 1
	buffer_load_u16 v239, v70, s[92:95], 0 offen
	v_add_lshl_u32 v70, s101, v174, 1
	buffer_load_u16 v70, v70, s[92:95], 0 offen
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v181, v[33:36]
	ds_store_b128 v181, v[41:44] offset:512
	v_add_nc_u32_e32 v33, 0, v157
	ds_store_b128 v112, v[45:48]
	ds_store_b128 v112, v[57:60] offset:512
	ds_store_b128 v112, v[53:56] offset:1024
	ds_store_b128 v112, v[61:64] offset:1536
	ds_store_b128 v181, v[37:40] offset:1024
	ds_store_b128 v181, v[49:52] offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[35:38], v33
	ds_load_b128 v[39:42], v182
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v33, 0, 1, s15
	v_cndmask_b32_e64 v34, 0, 1, s16
	s_delay_alu instid0(VALU_DEP_2)
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v63, 0x3fb8aa3b, v35 :: v_dual_mul_f32 v64, 0x3fb8aa3b, v37
	v_mul_f32_e32 v62, 0x3fb8aa3b, v38
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v60, 0x3fb8aa3b, v39 :: v_dual_mul_f32 v57, 0x3fb8aa3b, v40
	v_mul_f32_e32 v61, 0x3fb8aa3b, v41
	v_mul_f32_e32 v45, 0x3fb8aa3b, v42
	ds_load_b128 v[37:40], v183
	ds_load_b128 v[41:44], v184
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v36, 0x3fb8aa3b, v36 :: v_dual_mul_f32 v59, 0x3fb8aa3b, v37
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v50, 0x3fb8aa3b, v42
	v_dual_mul_f32 v35, 0x3fb8aa3b, v38 :: v_dual_mul_f32 v52, 0x3fb8aa3b, v44
	v_mul_f32_e32 v46, 0x3fb8aa3b, v39
	v_dual_mul_f32 v48, 0x3fb8aa3b, v40 :: v_dual_mul_f32 v49, 0x3fb8aa3b, v41
	v_mul_f32_e32 v51, 0x3fb8aa3b, v43
	ds_load_b128 v[37:40], v185
	ds_load_b128 v[41:44], v186
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v112, 0x3fb8aa3b, v37 :: v_dual_mul_f32 v113, 0x3fb8aa3b, v38
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v116, 0x3fb8aa3b, v41
	v_dual_mul_f32 v114, 0x3fb8aa3b, v39 :: v_dual_mul_f32 v115, 0x3fb8aa3b, v40
	v_dual_mul_f32 v118, 0x3fb8aa3b, v43 :: v_dual_mul_f32 v117, 0x3fb8aa3b, v42
	v_mul_f32_e32 v119, 0x3fb8aa3b, v44
	ds_load_b128 v[37:40], v187
	ds_load_b128 v[41:44], v188
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v126, 0x3fb8aa3b, v37
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v37.h, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s17
	v_cndmask_b32_e64 v34, 0, 1, s18
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v127, 0x3fb8aa3b, v38 :: v_dual_mul_f32 v58, 0x3fb8aa3b, v40
	v_mul_f32_e32 v128, 0x3fb8aa3b, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v55, 0x3fb8aa3b, v41 :: v_dual_mul_f32 v56, 0x3fb8aa3b, v43
	v_dual_mul_f32 v53, 0x3fb8aa3b, v42 :: v_dual_mul_f32 v54, 0x3fb8aa3b, v44
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v37.l, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s7
	v_cndmask_b32_e64 v34, 0, 1, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v38.h, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s9
	v_cndmask_b32_e64 v34, 0, 1, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v38.l, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s11
	v_cndmask_b32_e64 v34, 0, 1, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v39.h, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s13
	v_cndmask_b32_e64 v34, 0, 1, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v39.l, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s3
	v_cndmask_b32_e64 v34, 0, 1, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v33.h, v34.l, v33.l
	v_cndmask_b32_e64 v34, 0, 1, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v33.l, v34.l
	v_cndmask_b32_e64 v34, 0, 1, s6
	v_lshlrev_b16 v33.l, 8, v33.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v33.l, v34.l, v33.l
	v_add_nc_u32_e32 v34, 0, v158
	ds_store_2addr_b32 v34, v37, v38 offset1:32
	ds_store_2addr_b32 v34, v39, v33 offset0:64 offset1:96
	v_cndmask_b32_e64 v33, 0, 1, s31
	v_cndmask_b32_e64 v34, 0, 1, s33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v37.h, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s34
	v_cndmask_b32_e64 v34, 0, 1, s35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(14)
	v_lshlrev_b32_e32 v40, 16, v244
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v37.l, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s23
	v_cndmask_b32_e64 v34, 0, 1, s24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(13)
	v_lshlrev_b32_e32 v41, 16, v245
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v38.h, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s25
	v_cndmask_b32_e64 v34, 0, 1, s26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v42, 16, v246
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v38.l, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s27
	v_cndmask_b32_e64 v34, 0, 1, s28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v39.h, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s29
	v_cndmask_b32_e64 v34, 0, 1, s30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v39.l, v34.l, v33.l
	v_cndmask_b32_e64 v33, 0, 1, s19
	v_cndmask_b32_e64 v34, 0, 1, s20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v33.l, 8, v33.l
	v_or_b16 v33.h, v34.l, v33.l
	v_cndmask_b32_e64 v34, 0, 1, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v33.l, v34.l
	v_cndmask_b32_e64 v34, 0, 1, s22
	v_lshlrev_b16 v33.l, 8, v33.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v33.l, v34.l, v33.l
	ds_store_2addr_b32 v189, v37, v38 offset1:32
	ds_store_2addr_b32 v189, v39, v33 offset0:64 offset1:96
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v33, v208, v221 :: v_dual_lshlrev_b32 v34, 16, v240
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v37, 16, v241
	v_lshlrev_b32_e32 v38, 16, v242
	v_lshlrev_b32_e32 v39, 16, v243
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v33, v33, v34 :: v_dual_mul_f32 v34, v208, v220
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(10)
	v_lshlrev_b32_e32 v44, 16, v248
	.loc	1 685 25                        ; attention.py:685:25
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v35, s82, v33
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v34, v34, v37 :: v_dual_mul_f32 v37, v208, v219
	v_mul_f32_e32 v37, v37, v38
	v_dual_mul_f32 v38, v208, v218 :: v_dual_lshlrev_b32 v43, 16, v247
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v46, s82, v34
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v218.h, 0
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v38, v38, v39
	v_mul_f32_e32 v39, v208, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v39, v39, v40 :: v_dual_mul_f32 v40, v208, v77
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v48, s82, v37 :: v_dual_fmac_f32 v49, s82, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v40, v40, v41
	v_mul_f32_e32 v41, v208, v75
	v_mul_f32_e32 v41, v41, v42
	v_mul_f32_e32 v42, v208, v78
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v50, s82, v39 :: v_dual_fmac_f32 v51, s82, v40
	.loc	1 685 25                        ; attention.py:685:25
	ds_load_b32 v78, v191
	ds_load_b32 v77, v190
	.loc	1 654 30                        ; attention.py:654:30
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v42, v42, v43 :: v_dual_lshlrev_b32 v39, 16, v233
	v_mul_f32_e32 v43, v208, v76
	v_mul_f32_e32 v83, v208, v83
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v43, v43, v44 :: v_dual_fmac_f32 v112, s82, v42
	.loc	1 685 25                        ; attention.py:685:25
	ds_load_b32 v34, v192
	ds_load_b32 v40, v193
	ds_load_b32 v42, v194
	ds_load_b32 v76, v195
	ds_load_b32 v75, v196
	.loc	1 684 25                        ; attention.py:684:25
	s_waitcnt vmcnt(6)
	v_dual_fmac_f32 v52, s82, v41 :: v_dual_lshlrev_b32 v41, 16, v234
	s_waitcnt vmcnt(4)
	v_dual_fmac_f32 v113, s82, v43 :: v_dual_lshlrev_b32 v44, 16, v236
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v43, 16, v235
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(4)
	v_and_b32_e32 v33, 0x10000, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_ne_u32_e64 s47, 0, v33
	v_and_b32_e32 v33, 0x1000000, v78
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v51, 0xff800000, v51, s47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s50, 0, v33
	s_waitcnt lgkmcnt(3)
	v_and_b32_e32 v33, 1, v40
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v48, 0xff800000, v48, s50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s39, 1, v33
	v_and_b32_e32 v33, 0x10000, v78
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v37, 0xff800000, v112, s39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s52, 0, v33
	v_and_b32_e32 v33, 1, v34
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v47, 0xff800000, v46, s52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s49, 1, v33
	v_and_b32_e32 v33, 0x1000000, v34
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v49, 0xff800000, v49, s49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s48, 0, v33
	v_lshrrev_b16 v33.l, 8, v40.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v52, 0xff800000, v52, s48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v33.l, 1, v33.l
	v_cmp_eq_u16_e64 s40, 1, v33.l
	v_lshrrev_b16 v33.l, 8, v78.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v38, 0xff800000, v113, s40
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s53, 1, v33.l
	v_lshrrev_b16 v33.l, 8, v34.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v46, 0xff800000, v35, s53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v33.l, 1, v33.l
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v35, v52, v37, v38
.Ltmp2:
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s51, 1, v33.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v33, v46, v47, v48
.Ltmp4:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v50, 0xff800000, v50, s51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v34, v49, v50, v51
	v_max3_f32 v79, v33, v34, v35
.Ltmp6:
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v33, v208, v217 :: v_dual_lshlrev_b32 v34, 16, v231
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v35, 16, v232
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v33, v33, v34 :: v_dual_mul_f32 v34, v208, v96
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v114, s82, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v34, v34, v35
	v_mul_f32_e32 v35, v208, v95
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(2)
	v_and_b32_e32 v33, 0x10000, v42
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v115, s82, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v35, v35, v39
	v_mul_f32_e32 v39, v208, v94
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s41, 0, v33
	s_waitcnt lgkmcnt(1)
	v_and_b32_e32 v33, 0x10000, v76
	v_lshrrev_b16 v34.l, 8, v42.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v116, s82, v35 :: v_dual_mul_f32 v39, v39, v41
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v41, v208, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s36, 0, v33
	v_and_b32_e32 v33, 0x10000, v40
	v_and_b16 v34.l, 1, v34.l
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v41, v41, v43
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v43, v208, v90 :: v_dual_lshlrev_b32 v90, 16, v237
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s46, 0, v33
	v_and_b32_e32 v33, 0x1000000, v40
	v_cmp_eq_u16_e64 s44, 1, v34.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v43, v43, v44 :: v_dual_mul_f32 v44, v208, v93
	.loc	1 685 25                        ; attention.py:685:25
	v_lshrrev_b16 v34.l, 8, v76.l
	v_cmp_ne_u32_e64 s45, 0, v33
	v_and_b32_e32 v33, 1, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v119, s82, v43 :: v_dual_mul_f32 v44, v44, v90
	.loc	1 654 30                        ; attention.py:654:30
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v90, v208, v91 :: v_dual_lshlrev_b32 v91, 16, v238
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s43, 1, v33
	v_and_b32_e32 v33, 0x1000000, v42
	v_and_b16 v34.l, 1, v34.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v126, s82, v44
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v90, v90, v91
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v91, 16, v239
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s42, 0, v33
	v_and_b32_e32 v33, 1, v76
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v117, s82, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v127, s82, v90 :: v_dual_mul_f32 v80, v80, v91
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s38, 1, v34.l
	v_cmp_eq_u32_e64 s37, 1, v33
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v39, 0xff800000, v114, s46
	v_cndmask_b32_e64 v40, 0xff800000, v115, s45
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v128, s82, v80
	v_fmac_f32_e32 v118, s82, v41
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v41, 0xff800000, v116, s43
	v_cndmask_b32_e64 v44, 0xff800000, v119, s42
	v_cndmask_b32_e64 v33, 0xff800000, v126, s37
	v_cndmask_b32_e64 v35, 0xff800000, v128, s36
	v_cndmask_b32_e64 v43, 0xff800000, v118, s41
	v_cndmask_b32_e64 v42, 0xff800000, v117, s44
	v_cndmask_b32_e64 v34, 0xff800000, v127, s38
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v80, v39, v40, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v90, v42, v43, v44
	v_max3_f32 v91, v33, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v80, v80, v90, v91
.Ltmp8:
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v90, 16, v222
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v89, v89, v90 :: v_dual_lshlrev_b32 v90, 16, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v88, v88, v90
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v90, 16, v224
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v36, s82, v88 :: v_dual_mul_f32 v87, v87, v90
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v90, 16, v225
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v86, v86, v90
	v_dual_mul_f32 v81, v208, v81 :: v_dual_lshlrev_b32 v90, 16, v226
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v62, s82, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v85, v85, v90 :: v_dual_lshlrev_b32 v90, 16, v227
	v_mul_f32_e32 v84, v84, v90
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v63, s82, v89 :: v_dual_lshlrev_b32 v90, 16, v228
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v57, s82, v84 :: v_dual_mul_f32 v82, v82, v90
	v_dual_fmac_f32 v61, s82, v82 :: v_dual_lshlrev_b32 v90, 16, v229
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v81, v81, v90
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v45, s82, v81 :: v_dual_lshlrev_b32 v90, 16, v230
	.loc	1 685 25                        ; attention.py:685:25
	v_add_nc_u32_e32 v81, 0, v159
	ds_load_b32 v81, v81
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v82, 0x10000, v81
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v64, s82, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s65, 0, v82
	v_and_b32_e32 v82, 1, v81
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v60, s82, v85
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v95, 0xff800000, v64, s65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s66, 1, v82
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v93, 0xff800000, v63, s66
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v63, 0x1000000, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_ne_u32_e64 s64, 0, v63
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v63, 16, v74
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v96, 0xff800000, v62, s64
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v62, 0x10000, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_ne_u32_e64 s61, 0, v62
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v83, v83, v90 :: v_dual_and_b32 v62, 1, v77
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v91, 0xff800000, v61, s61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s62, 1, v62
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v61, 16, v72
	v_lshlrev_b32_e32 v62, 16, v73
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v89, 0xff800000, v60, s62
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v59, s82, v83 :: v_dual_and_b32 v60, 0x1000000, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s60, 0, v60
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v60, 16, v71
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v92, 0xff800000, v45, s60
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v45, 1, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u32_e64 s59, 1, v45
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v45, 0xff800000, v59, s59
	.loc	1 685 25                        ; attention.py:685:25
	v_lshrrev_b16 v59.l, 8, v81.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b16 v59.l, 1, v59.l
	v_cmp_eq_u16_e64 s67, 1, v59.l
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v59, 16, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v94, 0xff800000, v36, s67
	.loc	1 685 25                        ; attention.py:685:25
	v_lshrrev_b16 v36.l, 8, v77.l
	v_and_b16 v36.l, 1, v36.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_eq_u16_e64 s63, 1, v36.l
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v36, v93, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v90, 0xff800000, v57, s63
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v57, v96, v89, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v36, v36, v95, v57
	v_max3_f32 v57, v91, v92, v45
	v_max3_f32 v57, v36, v57, v79
.Ltmp12:
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v36, v208, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v36, v36, v59
	v_mul_f32_e32 v59, v208, v68
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v58, s82, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v59, v59, v60 :: v_dual_mul_f32 v60, v208, v67
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v36, 0x1000000, v76
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v60, v60, v61
	v_mul_f32_e32 v61, v208, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s58, 0, v36
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v53, s82, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v61, v61, v62
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v36, 0xff800000, v58, s58
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v58, 1, v75
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v62, v208, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v56, s82, v61 :: v_dual_fmac_f32 v55, s82, v59
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s56, 1, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v62, v62, v63
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v59, 0x10000, v75
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v85, 0xff800000, v55, s56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v54, s82, v62 :: v_dual_and_b32 v55, 0x1000000, v75
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s55, 0, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_ne_u32_e64 s54, 0, v55
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v87, 0xff800000, v56, s55
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v56, s85, v103, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v88, 0xff800000, v54, s54
	.loc	1 685 25                        ; attention.py:685:25
	v_lshrrev_b16 v54.l, 8, v75.l
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v56, 0x80000000, v56, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v54.l, 1, v54.l
	v_cmp_eq_u16_e64 s57, 1, v54.l
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v54, v87, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v86, 0xff800000, v53, s57
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v53, v36, v85
	v_max3_f32 v53, v53, v86, v54
	s_delay_alu instid0(VALU_DEP_1)
	v_max3_f32 v53, v57, v80, v53
.Ltmp16:
	.loc	1 686 26                        ; attention.py:686:26
	v_add_nc_u32_e32 v57, 0, v160
	ds_store_b128 v57, v[93:96]
	ds_store_b128 v57, v[37:40] offset:2048
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v54, v53, s100, 0xfedcba98 op_sel:[1,0]
.Ltmp18:
	.loc	1 686 26                        ; attention.py:686:26
	ds_store_b128 v197, v[89:92]
	ds_store_b128 v197, v[41:44] offset:2048
	ds_store_b128 v198, v[45:48]
	ds_store_b128 v198, v[33:36] offset:2048
	ds_store_b128 v199, v[49:52]
	ds_store_b128 v199, v[85:88] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v217, v216, v53, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v53, v94, v217
	v_dual_sub_f32 v54, v93, v217 :: v_dual_add_nc_u32 v93, 0, v123
	v_sub_f32_e32 v94, v89, v217
	v_sub_f32_e32 v48, v48, v217
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v53, v53
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v54, v54
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v50, v50, v217
	v_sub_f32_e32 v52, v52, v217
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v48, v48
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v37, v37, v217
	v_sub_f32_e32 v39, v39, v217
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v50, v50
	v_exp_f32_e32 v52, v52
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v41, v41, v217
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v53, 0, v53, s67
	v_cndmask_b32_e64 v54, 0, v54, s66
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v39, v39
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v48, 0, v48, s50
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v218.l, v53.h
	v_cmp_o_f32_e64 s66, v53, v53
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v50, 0, v50, s51
	v_cndmask_b32_e64 v52, 0, v52, s48
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s50, v48, v48
	v_and_b32_e32 v55, 1, v218
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v41, v41
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v37, 0, v37, s39
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s48, v52, v52
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v39, 0, v39, s46
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v55, v53, v55, 0x7fff
	v_mov_b16_e64 v53.h, v218.h
	v_mov_b16_e32 v53.l, v54.h
	v_cmp_o_f32_e64 s39, v37, v37
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v43, v43, v217
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v219.h, 0x7fff, v55.h, s66
	v_cmp_o_f32_e64 s66, v54, v54
	v_and_b32_e32 v53, 1, v53
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v55, s85, v201, 1
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v41, 0, v41, s43
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v43, v43
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v35, v35, v217
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v53, v54, v53, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v54, s85, v200, 1
	v_cndmask_b32_e64 v55, 0x80000000, v55, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v35, v35
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v219.l, 0x7fff, v53.h, s66
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v53, v95, v217
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v54, 0x80000000, v54, s1
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v95, v90, v217
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v43, 0, v43, s41
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_permlanex16_b32 v90, v219, s100, 0xfedcba98 op_sel:[1,0]
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v53, v53
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v35, 0, v35, s36
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_perm_b32 v89, v90, v219, v209
	v_perm_b32 v90, v90, v219, v210
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cmp_o_f32_e64 s36, v35, v35
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v220, 0, v53, s65
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v53, s85, v102, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v53, 0x80000000, v53, s1
	s_clause 0x3
	buffer_load_b128 v[112:115], v53, s[68:71], 0 offen
	buffer_load_b128 v[116:119], v54, s[68:71], 0 offen
	buffer_load_b128 v[126:129], v55, s[68:71], 0 offen
	buffer_load_b128 v[130:133], v56, s[68:71], 0 offen
	.loc	1 686 26                        ; attention.py:686:26
	ds_load_b128 v[81:84], v180
	ds_load_b128 v[73:76], v180 offset:256
	ds_load_b128 v[77:80], v180 offset:1024
	ds_load_b128 v[69:72], v180 offset:1280
	ds_load_b128 v[65:68], v180 offset:512
	ds_load_b128 v[57:60], v180 offset:768
	ds_load_b128 v[61:64], v180 offset:1536
	ds_load_b128 v[53:56], v180 offset:1792
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v46, v46, v217
	v_sub_f32_e32 v45, v45, v217
	v_sub_f32_e32 v47, v47, v217
	v_sub_f32_e32 v49, v49, v217
	v_sub_f32_e32 v51, v51, v217
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v46, v46
	v_exp_f32_e32 v45, v45
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v49, v49
	v_exp_f32_e32 v51, v51
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v38, v38, v217
	v_sub_f32_e32 v40, v40, v217
	v_sub_f32_e32 v42, v42, v217
	v_sub_f32_e32 v44, v44, v217
	v_sub_f32_e32 v33, v33, v217
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v46, 0, v46, s53
	v_cndmask_b32_e64 v45, 0, v45, s59
	v_cndmask_b32_e64 v47, 0, v47, s52
	v_cndmask_b32_e64 v49, 0, v49, s49
	v_cndmask_b32_e64 v51, 0, v51, s47
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s53, v46, v46
	v_cmp_o_f32_e64 s59, v45, v45
	v_cmp_o_f32_e64 s52, v47, v47
	v_cmp_o_f32_e64 s49, v49, v49
	v_cmp_o_f32_e64 s47, v51, v51
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v44, v44
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v34, v34, v217
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v33, v33
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	s_waitcnt vmcnt(3)
	ds_store_b128 v93, v[112:115]
	s_waitcnt vmcnt(2)
	ds_store_b128 v93, v[116:119] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v93, v[126:129] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v93, v[130:133] offset:6144
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v93, v96, v217
	v_sub_f32_e32 v96, v91, v217
	v_sub_f32_e32 v112, v92, v217
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v92.h, v218.h
	v_mov_b16_e64 v92.l, v220.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v91, v93
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v38, 0, v38, s40
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v92, 1, v92
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v40, 0, v40, s45
	v_cndmask_b32_e64 v42, 0, v42, s44
	v_cndmask_b32_e64 v44, 0, v44, s42
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s40, v38, v38
	v_add3_u32 v92, v220, v92, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v91, 0, v91, s64
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s64, v220, v220
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v221, v154 offset:608
	ds_load_u16_d16 v220, v154 offset:352
	ds_load_u16_d16 v230, v154 offset:768
	ds_load_u16_d16 v227, v154
	ds_load_u16_d16 v237, v154 offset:576
	ds_load_u16_d16 v238, v154 offset:832
	ds_load_u16_d16 v231, v154 offset:1024
	ds_load_u16_d16 v239, v154 offset:1088
	ds_load_u16_d16 v232, v154 offset:1280
	ds_load_u16_d16 v240, v154 offset:1344
	ds_load_u16_d16 v233, v154 offset:1536
	ds_load_u16_d16 v241, v154 offset:1600
	ds_load_u16_d16 v234, v154 offset:1792
	ds_load_u16_d16 v229, v154 offset:512
	ds_load_u16_d16 v228, v154 offset:256
	ds_load_u16_d16 v242, v154 offset:1856
	ds_load_u16_d16 v244, v154 offset:288
	ds_load_u16_d16 v243, v154 offset:32
	ds_load_u16_d16 v235, v154 offset:64
	ds_load_u16_d16 v236, v154 offset:320
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v33, 0, v33, s37
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v218.l, v91.h
	v_cndmask_b16 v92.l, 0x7fff, v92.h, s64
	v_cmp_o_f32_e64 s64, v91, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s37, v33, v33
	v_and_b32_e32 v93, 1, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v93, v91, v93, 0x7fff
	v_cndmask_b16 v92.h, 0x7fff, v93.h, s64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v93, v92, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v91, v93, v92, v209
	v_perm_b32 v92, v93, v92, v210
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v93, v94
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v94.h, v218.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v93, 0, v93, s62
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v94.l, v93.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s62, v93, v93
	v_and_b32_e32 v94, 1, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v93, v93, v94, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v94, v95
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v94, 0, v94, s63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v218.l, v94.h
	v_cmp_o_f32_e64 s63, v94, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v95, 1, v218
	v_add3_u32 v94, v94, v95, 0x7fff
	v_cndmask_b16 v94.l, 0x7fff, v93.h, s62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v94.h, 0x7fff, v94.h, s63
	v_permlanex16_b32 v95, v94, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_perm_b32 v93, v95, v94, v209
	v_perm_b32 v94, v95, v94, v210
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v95, v96
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v96.h, v218.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v95, 0, v95, s61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v96.l, v95.h
	v_cmp_o_f32_e64 s61, v95, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v96, 1, v96
	v_add3_u32 v95, v95, v96, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v96, v112
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v96, 0, v96, s60
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e64 v218.l, v96.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s60, v96, v96
	v_and_b32_e32 v112, 1, v218
	v_mov_b16_e64 v218.l, v46.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v96, v96, v112, 0x7fff
	v_cndmask_b16 v96.l, 0x7fff, v95.h, s61
	v_cndmask_b16 v96.h, 0x7fff, v96.h, s60
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s60, 0xff800000, v216
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v112, v96, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v95, v112, v96, v209
	v_perm_b32 v96, v112, v96, v210
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v112, v216, v217
	v_mov_b32_e32 v216, v217
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v112, v112
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v113, 0, v112, s60
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v220, v154 offset:480
	ds_load_u16_d16 v219, v154 offset:96
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v227, v154 offset:128
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v237, v154 offset:704
	ds_load_u16_d16_hi v230, v154 offset:896
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v238, v154 offset:960
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v231, v154 offset:1152
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v239, v154 offset:1216
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v232, v154 offset:1408
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v240, v154 offset:1472
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v233, v154 offset:1664
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v241, v154 offset:1728
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v234, v154 offset:1920
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v229, v154 offset:640
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v228, v154 offset:384
	ds_load_u16_d16 v245, v154 offset:544
	ds_load_u16_d16 v222, v154 offset:864
	ds_load_u16_d16 v223, v154 offset:1120
	ds_load_u16_d16 v224, v154 offset:1376
	ds_load_u16_d16 v225, v154 offset:1632
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v242, v154 offset:1984
	ds_load_u16_d16 v112, v154 offset:2048
	ds_load_u16_d16 v138, v154 offset:2112
	ds_load_u16_d16 v226, v154 offset:1888
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v243, v154 offset:160
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v235, v154 offset:192
	ds_load_u16_d16 v246, v154 offset:800
	ds_load_u16_d16 v247, v154 offset:1056
	ds_load_u16_d16 v248, v154 offset:1312
	ds_load_u16_d16 v249, v154 offset:1568
	ds_load_u16_d16 v250, v154 offset:1824
	ds_load_u16_d16 v139, v154 offset:2368
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v245, v154 offset:672
	ds_load_u16_d16_hi v221, v154 offset:736
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v17, v17, v113
	v_mul_f32_e32 v18, v18, v113
	v_mul_f32_e32 v19, v19, v113
	v_mul_f32_e32 v20, v20, v113
	v_mul_f32_e32 v21, v21, v113
	v_mul_f32_e32 v22, v22, v113
	v_mul_f32_e32 v23, v23, v113
	v_mul_f32_e32 v24, v24, v113
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v219, v154 offset:224
	ds_load_u16_d16_hi v244, v154 offset:416
	ds_load_u16_d16_hi v236, v154 offset:448
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v25, v25, v113
	v_mul_f32_e32 v26, v26, v113
	v_mul_f32_e32 v27, v27, v113
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[227:234], v[89:96], v[17:24]
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v246, v154 offset:928
	ds_load_u16_d16_hi v222, v154 offset:992
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v247, v154 offset:1184
	ds_load_u16_d16_hi v223, v154 offset:1248
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v248, v154 offset:1440
	ds_load_u16_d16_hi v224, v154 offset:1504
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v249, v154 offset:1696
	ds_load_u16_d16_hi v225, v154 offset:1760
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v250, v154 offset:1952
	ds_load_u16_d16_hi v226, v154 offset:2016
	ds_load_u16_d16_hi v138, v154 offset:2240
	ds_load_u16_d16 v227, v154 offset:2080
	ds_load_u16_d16 v126, v154 offset:2144
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v28, v28, v113
	v_mul_f32_e32 v29, v29, v113
	v_mul_f32_e32 v30, v30, v113
	v_mul_f32_e32 v31, v31, v113
	v_mul_f32_e32 v32, v32, v113
	v_mul_f32_e32 v9, v9, v113
	v_mul_f32_e32 v10, v10, v113
	v_mul_f32_e32 v11, v11, v113
	v_mul_f32_e32 v12, v12, v113
	v_mul_f32_e32 v13, v13, v113
	v_mul_f32_e32 v14, v14, v113
	v_mul_f32_e32 v15, v15, v113
	v_mul_f32_e32 v16, v16, v113
	v_mul_f32_e32 v1, v1, v113
	v_mul_f32_e32 v2, v2, v113
	v_mul_f32_e32 v3, v3, v113
	v_mul_f32_e32 v4, v4, v113
	v_mul_f32_e32 v5, v5, v113
	v_mul_f32_e32 v6, v6, v113
	v_mul_f32_e32 v7, v7, v113
	v_mul_f32_e32 v8, v8, v113
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[243:250], v[89:96], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[235:242], v[89:96], v[9:16]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v113, v154 offset:2304
	ds_load_u16_d16 v114, v154 offset:2560
	ds_load_u16_d16 v140, v154 offset:2624
	ds_load_u16_d16 v115, v154 offset:2816
	ds_load_u16_d16 v141, v154 offset:2880
	ds_load_u16_d16 v116, v154 offset:3072
	ds_load_u16_d16 v142, v154 offset:3136
	ds_load_u16_d16 v117, v154 offset:3328
	ds_load_u16_d16 v143, v154 offset:3392
	ds_load_u16_d16 v118, v154 offset:3584
	ds_load_u16_d16 v144, v154 offset:3648
	ds_load_u16_d16 v119, v154 offset:3840
	ds_load_u16_d16 v145, v154 offset:3904
	ds_load_u16_d16_hi v112, v154 offset:2176
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(17)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[219:226], v[89:96], v[1:8]
	.loc	1 700 30 is_stmt 0              ; attention.py:700:30
	v_mov_b16_e64 v89.h, v218.h
	v_mov_b16_e32 v89.l, v45.h
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	ds_load_u16_d16 v228, v154 offset:2336
	ds_load_u16_d16 v229, v154 offset:2592
	ds_load_u16_d16 v230, v154 offset:2848
	ds_load_u16_d16 v231, v154 offset:3104
	ds_load_u16_d16 v232, v154 offset:3360
	ds_load_u16_d16 v233, v154 offset:3616
	ds_load_u16_d16 v234, v154 offset:3872
	ds_load_u16_d16 v220, v154 offset:4416
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v227, v154 offset:2208
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v126, v154 offset:2272
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v89, 1, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v45, v45, v89, 0x7fff
	v_and_b32_e32 v89, 1, v218
	v_mov_b16_e64 v218.l, v48.h
	v_add3_u32 v46, v46, v89, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v46.l, 0x7fff, v45.h, s59
	v_cndmask_b16 v46.h, 0x7fff, v46.h, s53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v89, v46, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v45, v89, v46, v209
	v_perm_b32 v46, v89, v46, v210
	v_mov_b16_e64 v89.h, v218.h
	v_mov_b16_e32 v89.l, v47.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v89, 1, v89
	v_add3_u32 v47, v47, v89, 0x7fff
	v_and_b32_e32 v89, 1, v218
	v_mov_b16_e64 v218.l, v50.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v48, v48, v89, 0x7fff
	v_cndmask_b16 v48.l, 0x7fff, v47.h, s52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v48.h, 0x7fff, v48.h, s50
	v_cmp_o_f32_e64 s50, v50, v50
	v_permlanex16_b32 v89, v48, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v47, v89, v48, v209
	v_perm_b32 v48, v89, v48, v210
	v_mov_b16_e64 v89.h, v218.h
	v_mov_b16_e32 v89.l, v49.h
	v_and_b32_e32 v89, 1, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v49, v49, v89, 0x7fff
	v_and_b32_e32 v89, 1, v218
	v_mov_b16_e64 v218.l, v52.h
	v_add3_u32 v50, v50, v89, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v50.l, 0x7fff, v49.h, s49
	v_cndmask_b16 v50.h, 0x7fff, v50.h, s50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v89, v50, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v49, v89, v50, v209
	v_perm_b32 v50, v89, v50, v210
	v_mov_b16_e64 v89.h, v218.h
	v_mov_b16_e32 v89.l, v51.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v89, 1, v89
	v_add3_u32 v51, v51, v89, 0x7fff
	v_and_b32_e32 v89, 1, v218
	v_mov_b16_e64 v218.l, v38.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v52, v52, v89, 0x7fff
	v_cndmask_b16 v52.l, 0x7fff, v51.h, s47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s48
	v_permlanex16_b32 v89, v52, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v51, v89, v52, v209
	v_perm_b32 v52, v89, v52, v210
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v113, v154 offset:2432
	ds_load_u16_d16_hi v139, v154 offset:2496
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v114, v154 offset:2688
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v140, v154 offset:2752
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v115, v154 offset:2944
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v141, v154 offset:3008
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v116, v154 offset:3200
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v142, v154 offset:3264
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v117, v154 offset:3456
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v143, v154 offset:3520
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v118, v154 offset:3712
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v144, v154 offset:3776
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v119, v154 offset:3968
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v145, v154 offset:4032
	ds_load_u16_d16 v127, v154 offset:2400
	ds_load_u16_d16 v128, v154 offset:2656
	ds_load_u16_d16 v129, v154 offset:2912
	ds_load_u16_d16 v130, v154 offset:3168
	ds_load_u16_d16 v131, v154 offset:3424
	ds_load_u16_d16 v132, v154 offset:3680
	ds_load_u16_d16 v89, v154 offset:4096
	ds_load_u16_d16 v219, v154 offset:4160
	ds_load_u16_d16 v133, v154 offset:3936
	ds_load_u16_d16 v90, v154 offset:4352
	ds_load_u16_d16 v91, v154 offset:4608
	ds_load_u16_d16 v221, v154 offset:4672
	ds_load_u16_d16 v92, v154 offset:4864
	ds_load_u16_d16 v222, v154 offset:4928
	ds_load_u16_d16 v93, v154 offset:5120
	ds_load_u16_d16 v223, v154 offset:5184
	ds_load_u16_d16 v94, v154 offset:5376
	ds_load_u16_d16 v224, v154 offset:5440
	ds_load_u16_d16 v95, v154 offset:5632
	ds_load_u16_d16 v225, v154 offset:5696
	ds_load_u16_d16 v96, v154 offset:5888
	ds_load_u16_d16 v226, v154 offset:5952
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v89, v154 offset:4224
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[112:119], v[45:52], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[138:145], v[45:52], v[9:16]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v228, v154 offset:2464
	ds_load_u16_d16_hi v127, v154 offset:2528
	ds_load_u16_d16_hi v229, v154 offset:2720
	ds_load_u16_d16_hi v128, v154 offset:2784
	ds_load_u16_d16_hi v230, v154 offset:2976
	ds_load_u16_d16_hi v129, v154 offset:3040
	ds_load_u16_d16_hi v231, v154 offset:3232
	ds_load_u16_d16_hi v130, v154 offset:3296
	ds_load_u16_d16_hi v232, v154 offset:3488
	ds_load_u16_d16_hi v131, v154 offset:3552
	ds_load_u16_d16_hi v233, v154 offset:3744
	ds_load_u16_d16_hi v132, v154 offset:3808
	ds_load_u16_d16_hi v234, v154 offset:4000
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v133, v154 offset:4064
	ds_load_u16_d16_hi v219, v154 offset:4288
	ds_load_u16_d16 v112, v154 offset:4128
	ds_load_u16_d16 v138, v154 offset:4192
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[227:234], v[45:52], v[25:32]
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[126:133], v[45:52], v[1:8]
	.loc	1 700 30 is_stmt 0              ; attention.py:700:30
	v_mov_b16_e64 v45.h, v218.h
	v_mov_b16_e32 v45.l, v37.h
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	ds_load_u16_d16 v113, v154 offset:4384
	ds_load_u16_d16 v114, v154 offset:4640
	ds_load_u16_d16 v115, v154 offset:4896
	ds_load_u16_d16 v116, v154 offset:5152
	ds_load_u16_d16 v117, v154 offset:5408
	ds_load_u16_d16 v118, v154 offset:5664
	ds_load_u16_d16 v119, v154 offset:5920
	ds_load_u16_d16 v127, v154 offset:6464
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v112, v154 offset:4256
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v138, v154 offset:4320
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v37, v37, v45, 0x7fff
	v_and_b32_e32 v45, 1, v218
	v_mov_b16_e64 v218.l, v40.h
	v_add3_u32 v38, v38, v45, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s39
	v_cmp_o_f32_e64 s39, v39, v39
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s40
	v_cmp_o_f32_e64 s40, v40, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v45, v38, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v45, v38, v209
	v_perm_b32 v38, v45, v38, v210
	v_mov_b16_e64 v45.h, v218.h
	v_mov_b16_e32 v45.l, v39.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v45, 1, v45
	v_add3_u32 v39, v39, v45, 0x7fff
	v_and_b32_e32 v45, 1, v218
	v_mov_b16_e64 v218.l, v42.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v40, v40, v45, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s39
	v_cmp_o_f32_e64 s39, v41, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s40
	v_cmp_o_f32_e64 s40, v42, v42
	v_permlanex16_b32 v45, v40, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v39, v45, v40, v209
	v_perm_b32 v40, v45, v40, v210
	v_mov_b16_e64 v45.h, v218.h
	v_mov_b16_e32 v45.l, v41.h
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v41, v41, v45, 0x7fff
	v_and_b32_e32 v45, 1, v218
	v_mov_b16_e64 v218.l, v44.h
	v_add3_u32 v42, v42, v45, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v42.l, 0x7fff, v41.h, s39
	v_cmp_o_f32_e64 s39, v43, v43
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s40
	v_cmp_o_f32_e64 s40, v44, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v45, v42, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v41, v45, v42, v209
	v_perm_b32 v42, v45, v42, v210
	v_mov_b16_e64 v45.h, v218.h
	v_mov_b16_e32 v45.l, v43.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v45, 1, v45
	v_add3_u32 v43, v43, v45, 0x7fff
	v_and_b32_e32 v45, 1, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v44, v44, v45, 0x7fff
	v_cndmask_b16 v44.l, 0x7fff, v43.h, s39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s40
	v_permlanex16_b32 v45, v44, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v43, v45, v44, v209
	v_perm_b32 v44, v45, v44, v210
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v90, v154 offset:4480
	ds_load_u16_d16_hi v220, v154 offset:4544
	ds_load_u16_d16_hi v91, v154 offset:4736
	ds_load_u16_d16_hi v221, v154 offset:4800
	ds_load_u16_d16_hi v92, v154 offset:4992
	ds_load_u16_d16_hi v222, v154 offset:5056
	ds_load_u16_d16_hi v93, v154 offset:5248
	ds_load_u16_d16_hi v223, v154 offset:5312
	ds_load_u16_d16_hi v94, v154 offset:5504
	ds_load_u16_d16_hi v224, v154 offset:5568
	ds_load_u16_d16_hi v95, v154 offset:5760
	ds_load_u16_d16_hi v225, v154 offset:5824
	ds_load_u16_d16_hi v96, v154 offset:6016
	ds_load_u16_d16_hi v226, v154 offset:6080
	ds_load_u16_d16 v139, v154 offset:4448
	ds_load_u16_d16 v140, v154 offset:4704
	ds_load_u16_d16 v141, v154 offset:4960
	ds_load_u16_d16 v142, v154 offset:5216
	ds_load_u16_d16 v143, v154 offset:5472
	ds_load_u16_d16 v144, v154 offset:5728
	ds_load_u16_d16 v45, v154 offset:6144
	ds_load_u16_d16 v126, v154 offset:6208
	ds_load_u16_d16 v145, v154 offset:5984
	ds_load_u16_d16 v46, v154 offset:6400
	ds_load_u16_d16 v47, v154 offset:6656
	ds_load_u16_d16 v128, v154 offset:6720
	ds_load_u16_d16 v48, v154 offset:6912
	ds_load_u16_d16 v129, v154 offset:6976
	ds_load_u16_d16 v49, v154 offset:7168
	ds_load_u16_d16 v130, v154 offset:7232
	ds_load_u16_d16 v50, v154 offset:7424
	ds_load_u16_d16 v131, v154 offset:7488
	ds_load_u16_d16 v51, v154 offset:7680
	ds_load_u16_d16 v132, v154 offset:7744
	ds_load_u16_d16 v52, v154 offset:7936
	ds_load_u16_d16 v133, v154 offset:8000
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v45, v154 offset:6272
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[89:96], v[37:44], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[219:226], v[37:44], v[9:16]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v113, v154 offset:4512
	ds_load_u16_d16_hi v139, v154 offset:4576
	ds_load_u16_d16_hi v114, v154 offset:4768
	ds_load_u16_d16_hi v140, v154 offset:4832
	ds_load_u16_d16_hi v115, v154 offset:5024
	ds_load_u16_d16_hi v141, v154 offset:5088
	ds_load_u16_d16_hi v116, v154 offset:5280
	ds_load_u16_d16_hi v142, v154 offset:5344
	ds_load_u16_d16_hi v117, v154 offset:5536
	ds_load_u16_d16_hi v143, v154 offset:5600
	ds_load_u16_d16_hi v118, v154 offset:5792
	ds_load_u16_d16_hi v144, v154 offset:5856
	ds_load_u16_d16_hi v119, v154 offset:6048
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v145, v154 offset:6112
	ds_load_u16_d16_hi v126, v154 offset:6336
	ds_load_u16_d16 v89, v154 offset:6176
	ds_load_u16_d16 v219, v154 offset:6240
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v46, v154 offset:6528
	ds_load_u16_d16_hi v127, v154 offset:6592
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v47, v154 offset:6784
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v128, v154 offset:6848
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v48, v154 offset:7040
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v129, v154 offset:7104
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v49, v154 offset:7296
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v130, v154 offset:7360
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v50, v154 offset:7552
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v131, v154 offset:7616
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v51, v154 offset:7808
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v132, v154 offset:7872
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v52, v154 offset:8064
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v133, v154 offset:8128
	ds_load_u16_d16 v220, v154 offset:6496
	ds_load_u16_d16 v221, v154 offset:6752
	ds_load_u16_d16 v222, v154 offset:7008
	ds_load_u16_d16 v223, v154 offset:7264
	ds_load_u16_d16 v224, v154 offset:7520
	ds_load_u16_d16 v225, v154 offset:7776
	ds_load_u16_d16 v226, v154 offset:8032
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(25)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[112:119], v[37:44], v[25:32]
	s_waitcnt lgkmcnt(24)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[138:145], v[37:44], v[1:8]
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v43, v76, v76
.Ltmp20:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v34, v34
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v41.h, v218.h
	v_mov_b16_e32 v41.l, v33.h
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v42, v72, v72
	v_max3_f32 v44, v70, v75, v71
.Ltmp22:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v37, v85, v217
	v_sub_f32_e32 v39, v87, v217
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v42, v43, v42 :: v_dual_and_b32 v41, 1, v41
	v_max3_f32 v43, v73, v69, v74
.Ltmp24:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v34, 0, v34, s38
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v33, v33, v41, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v39, v39
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v42, v43, v44, v42
.Ltmp26:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v218.l, v34.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v36, v36, v217
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s38, v34, v34
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v90, v154 offset:6432
	ds_load_u16_d16 v91, v154 offset:6688
	ds_load_u16_d16 v92, v154 offset:6944
	ds_load_u16_d16 v93, v154 offset:7200
	ds_load_u16_d16 v94, v154 offset:7456
	ds_load_u16_d16 v95, v154 offset:7712
	ds_load_u16_d16 v96, v154 offset:7968
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v89, v154 offset:6304
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v219, v154 offset:6368
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v43, v42
.Ltmp28:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v41, 1, v218
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v36, v36
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v37, 0, v37, s56
	v_cndmask_b32_e64 v39, 0, v39, s55
.Ltmp29:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp30:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v34, v34, v41, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s37
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v38, v86, v217
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v90, v154 offset:6560
	ds_load_u16_d16_hi v220, v154 offset:6624
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v91, v154 offset:6816
	ds_load_u16_d16_hi v221, v154 offset:6880
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v92, v154 offset:7072
	ds_load_u16_d16_hi v222, v154 offset:7136
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v93, v154 offset:7328
	ds_load_u16_d16_hi v223, v154 offset:7392
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v94, v154 offset:7584
	ds_load_u16_d16_hi v224, v154 offset:7648
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v95, v154 offset:7840
	ds_load_u16_d16_hi v225, v154 offset:7904
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v96, v154 offset:8096
	ds_load_u16_d16_hi v226, v154 offset:8160
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s38
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v36, 0, v36, s58
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v43, v43, v43
.Ltmp32:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v41, v34, s100, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v218.l, v36.h
	v_cmp_o_f32_e64 s37, v36, v36
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v42, v42, v43
.Ltmp34:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v40, v88, v217
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v33, v41, v34, v209
	v_perm_b32 v34, v41, v34, v210
	v_mov_b16_e64 v41.h, v218.h
	v_mov_b16_e32 v41.l, v35.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v38, 0, v38, s57
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v43, v42
.Ltmp36:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v41, 1, v41
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
.Ltmp38:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v35, v35, v41, 0x7fff
	v_and_b32_e32 v41, 1, v218
	v_mov_b16_e64 v218.l, v38.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v40, 0, v40, s54
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp40:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v36, v36, v41, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s36
	v_cmp_o_f32_e64 s36, v37, v37
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v42, v42, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp42:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s37
	v_cmp_o_f32_e64 s37, v38, v38
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v43, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp44:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v41, v36, s100, 0xfedcba98 op_sel:[1,0]
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v35, v41, v36, v209
	v_perm_b32 v36, v41, v36, v210
	v_mov_b16_e64 v41.h, v218.h
	v_mov_b16_e32 v41.l, v37.h
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v43, v43, v43
	v_dual_max_f32 v42, v42, v43 :: v_dual_and_b32 v41, 1, v41
.Ltmp48:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v43, v147, v147
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v37, v37, v41, 0x7fff
	v_and_b32_e32 v41, 1, v218
	v_mov_b16_e64 v218.l, v40.h
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v147, v43, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v38, v38, v41, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s36
	v_cmp_o_f32_e64 s36, v39, v39
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s37
	v_cmp_o_f32_e64 s37, v40, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v41, v38, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v41, v38, v209
	v_perm_b32 v38, v41, v38, v210
	v_mov_b16_e64 v41.h, v218.h
	v_mov_b16_e32 v41.l, v39.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v39, v39, v41, 0x7fff
	v_and_b32_e32 v41, 1, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v40, v41, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s37
	v_permlanex16_b32 v41, v40, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_perm_b32 v39, v41, v40, v209
	v_perm_b32 v40, v41, v40, v210
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[45:52], v[33:40], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[126:133], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[89:96], v[33:40], v[25:32]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[219:226], v[33:40], v[1:8]
.Ltmp49:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v33, v80, v80
	v_max_f32_e32 v34, v84, v84
	v_max3_f32 v35, v78, v83, v79
	v_dual_max_f32 v52, v68, v68 :: v_dual_sub_f32 v47, v69, v147
	v_max3_f32 v69, v62, v67, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_max_f32_e32 v33, v34, v33
	v_max3_f32 v34, v81, v77, v82
.Ltmp50:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v48, v70, v147
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v70, v54, v59, v55
	v_max3_f32 v33, v34, v35, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v34, v33
	v_mov_b32_dpp v34, v34 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v34, v33
	v_mov_b32_dpp v34, v34 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v34, v33
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v33, v33, v34
.Ltmp58:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v34, v146, v146
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v146, v34, v33
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v34, v81, v146
	v_sub_f32_e32 v38, v77, v146
	v_sub_f32_e32 v35, v82, v146
	v_sub_f32_e32 v39, v78, v146
	v_sub_f32_e32 v36, v83, v146
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v35, v35
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v40, v79, v146
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v36, v36
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v37, v84, v146
	v_sub_f32_e32 v41, v80, v146
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v34, 0, v34, s18
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v38, 0, v38, s35
	v_cndmask_b32_e64 v35, 0, v35, s17
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v36, 0, v36, s16
.Ltmp59:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v34, v34, v38
.Ltmp60:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v38, v39
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v37, 0, v37, s15
	v_cndmask_b32_e64 v38, 0, v38, s34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp61:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v35, v35, v38
.Ltmp62:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v38, v40
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp64:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v38, 0, v38, s33
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v36, v36, v38
.Ltmp66:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v38, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v38, 0, v38, s31
.Ltmp67:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v35, v36, v37 :: v_dual_mov_b32 v36, v98
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp68:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v35, v34
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp69:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp70:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v35, v34
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp73:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v51, v64, v64 :: v_dual_add_f32 v98, v34, v35
	v_max_f32_e32 v51, v52, v51
	v_max3_f32 v52, v65, v61, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v51, v52, v69, v51
	v_dual_max_f32 v69, v60, v60 :: v_dual_mov_b32 v52, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp74:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v52, v52 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp75:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v52, v52, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v51, v51, v52
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v52, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v52, v52 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v52, v52, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v51, v51, v52
.Ltmp78:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v52, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v52, v52 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v52, v52, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v51, v51, v52
.Ltmp80:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v52, v148, v148
	v_max_f32_e32 v148, v52, v51
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v52, v65, v148
	v_sub_f32_e32 v65, v66, v148
	v_sub_f32_e32 v66, v67, v148
	v_sub_f32_e32 v67, v68, v148
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v68, v56, v56
.Ltmp82:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v61, v61, v148
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v34, v52
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v62, v62, v148
	v_sub_f32_e32 v63, v63, v148
.Ltmp83:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v68, v69, v68
	v_max3_f32 v69, v57, v53, v58
.Ltmp84:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v35, v61
	v_exp_f32_e32 v37, v62
	v_exp_f32_e32 v38, v63
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v64, v64, v148
.Ltmp85:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v68, v69, v70, v68
.Ltmp86:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v34, 0, v34, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v39, v64
.Ltmp87:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v69, v68
.Ltmp88:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v35, 0, v35, s30
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v37, 0, v37, s29
	v_cndmask_b32_e64 v38, 0, v38, s28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp89:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v69 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp91:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v35, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v39, 0, v39, s27
.Ltmp92:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v69, v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_max_f32_e32 v68, v68, v69
.Ltmp93:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v35, 0, v35, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp94:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v69, v68
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v35, v35, v37
.Ltmp96:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v37, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp97:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v69 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v34, v34, v35 :: v_dual_max_f32 v69, v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp99:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v37, 0, v37, s12
.Ltmp100:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v68, v68, v69 :: v_dual_add_f32 v37, v37, v38
.Ltmp101:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v38, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp102:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v69, v68
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp103:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v38, 0, v38, s11
.Ltmp104:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v69, v69, v69 :: v_dual_add_f32 v38, v38, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v68, v68, v69
.Ltmp105:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v69, v149, v149
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v35, v37, v38
	v_mov_b32_e32 v37, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp107:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v149, v69, v68
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v38, v48
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp109:
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v58, v58, v149 :: v_dual_sub_f32 v49, v71, v147
	v_dual_sub_f32 v43, v73, v147 :: v_dual_sub_f32 v60, v60, v149
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_dual_mov_b32 v35, v34 :: v_dual_sub_f32 v56, v56, v149
.Ltmp111:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v44, v74, v147
	v_dual_sub_f32 v45, v75, v147 :: v_dual_sub_f32 v54, v54, v149
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp113:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v38, 0, v38, s25
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v39, v49
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v46, v76, v147
	v_sub_f32_e32 v50, v72, v147
.Ltmp114:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v34, v34, v35 :: v_dual_sub_f32 v57, v57, v149
.Ltmp115:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v53, v53, v149
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v41, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v40, v50
.Ltmp116:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp117:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v39, 0, v39, s24
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp119:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v41, 0, v41, s19
	v_cndmask_b32_e64 v40, 0, v40, s23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp120:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp121:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v99, v34, v35
.Ltmp123:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v34, v43
	v_exp_f32_e32 v35, v47
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v34, 0, v34, s10
	v_cndmask_b32_e64 v35, 0, v35, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp124:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp125:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v35, v44
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v35, 0, v35, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp126:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v35, v35, v38
.Ltmp127:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v38, v45
.Ltmp128:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp129:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v38, 0, v38, s8
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v38, v38, v39
.Ltmp131:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v39, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v39, 0, v39, s7
.Ltmp132:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v39, v39, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_add_f32 v35, v38, v39 :: v_dual_mov_b32 v38, v100
.Ltmp133:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v39, v54
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v35, v34
.Ltmp136:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v39, 0, v39, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp138:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v35, v34
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp141:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v100, v34, v35
.Ltmp143:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v34, v57
	v_exp_f32_e32 v35, v53
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v34, 0, v34, s6
	v_cndmask_b32_e64 v35, 0, v35, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp144:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp145:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v35, v58
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v35, 0, v35, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp146:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v35, v35, v39
	v_dual_add_f32 v34, v34, v35 :: v_dual_sub_f32 v59, v59, v149
.Ltmp147:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v55, v55, v149
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v39, v59
	v_exp_f32_e32 v40, v55
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v39, 0, v39, s4
	v_cndmask_b32_e64 v40, 0, v40, s20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp148:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v39, v39, v40
.Ltmp149:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v40, v60
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v40, 0, v40, s3
	.loc	1 689 25 is_stmt 1              ; attention.py:689:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v215
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp150:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v40, v40, v41
	v_add_f32_e32 v35, v39, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v39, v101 :: v_dual_add_f32 v34, v34, v35
.Ltmp151:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp152:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp153:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v35, v34
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp154:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp155:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp156:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v101, v34, v35
.Ltmp157:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v34, v215, v215
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v34, v33
	.loc	1 689 74                        ; attention.py:689:74
	v_dual_sub_f32 v34, v215, v33 :: v_dual_mov_b32 v215, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v34, v34
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v34, 0, v34, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v214
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fmac_f32_e32 v98, v36, v34
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v34, v214, v214
	v_max_f32_e32 v34, v34, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v35, v214, v34
	v_mov_b32_e32 v214, v34
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v35, 0, v35, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v213
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_dual_fmac_f32 v100, v38, v35 :: v_dual_max_f32 v35, v213, v213
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v35, v35, v51
	.loc	1 689 74                        ; attention.py:689:74
	v_dual_sub_f32 v36, v213, v35 :: v_dual_mov_b32 v213, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v36, v36
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v36, 0, v36, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v212
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fmac_f32_e32 v99, v37, v36
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v36, v212, v212
	v_max_f32_e32 v36, v36, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v37, v212, v36
	v_mov_b32_e32 v212, v36
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v37, 0, v37, s3
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	s_add_i32 s3, s101, 64
	s_cmpk_lt_u32 s101, 0x7c0
	s_mov_b32 s101, s3
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v101, v39, v37
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v33, off, off offset:60
	scratch_load_b32 v35, off, off offset:68
	scratch_load_b32 v34, off, off offset:56
	v_lshrrev_b32_e32 v0, 4, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	v_and_b32_e32 v0, 4, v0
	s_waitcnt vmcnt(2)
	v_and_b32_e32 v33, 0x80, v33
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v35, 0, v35
	s_waitcnt vmcnt(0)
	v_lshl_add_u32 v34, v34, 3, 0
	ds_store_2addr_b64 v35, v[98:99], v[100:101] offset1:16
	v_add3_u32 v0, v34, v33, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
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
	v_div_scale_f32 v36, s0, v18, v0, v18
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v57, -v39, v48, 1.0
	v_fmac_f32_e32 v46, v55, v46
	v_div_scale_f32 v38, s1, v19, v0, v19
	v_dual_fmac_f32 v47, v56, v47 :: v_dual_mul_f32 v54, v34, v45
	v_fma_f32 v58, -v41, v49, 1.0
	v_div_scale_f32 v40, s3, v20, v0, v20
	v_fma_f32 v59, -v43, v50, 1.0
	v_dual_fmac_f32 v48, v57, v48 :: v_dual_mul_f32 v55, v36, v46
	v_mul_f32_e32 v56, v38, v47
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v49, v58, v49 :: v_dual_fmac_f32 v50, v59, v50
	v_fma_f32 v58, -v33, v54, v34
	v_div_scale_f32 v42, s4, v21, v0, v21
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
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v36, -v39, v57, v40
	v_div_fmas_f32 v34, v34, v46, v55
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v51, s5, v22, v0, v22
	v_div_fmas_f32 v35, v35, v47, v56
	s_mov_b32 vcc_lo, s3
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
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v19, v35, v0, v19
	v_div_scale_f32 v35, s1, v23, v0, v23
	v_fmac_f32_e32 v34, v33, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v38, -v52, v37, 1.0
	v_div_scale_f32 v46, null, v0, v0, v26
	v_fma_f32 v45, -v36, v40, 1.0
	v_mul_f32_e32 v33, v35, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, s3, v24, v0, v24
	v_fmac_f32_e32 v40, v45, v40
	v_div_scale_f32 v45, s4, v25, v0, v25
	v_fmac_f32_e32 v62, v58, v49
	v_div_scale_f32 v47, null, v0, v0, v28
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s0, 0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v39, -v41, v62, v42
	v_fma_f32 v41, -v43, v34, v51
	v_fma_f32 v42, -v44, v33, v35
	v_mul_f32_e32 v43, v38, v37
	v_div_fmas_f32 v39, v39, v49, v62
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v33, v42, v53
	v_div_fmas_f32 v34, v41, v50, v34
	v_rcp_f32_e32 v41, v46
	v_fma_f32 v42, -v52, v43, v38
	v_div_fixup_f32 v21, v39, v0, v21
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v22, v34, v0, v22
	v_fma_f32 v34, -v44, v33, v35
	v_fmac_f32_e32 v43, v42, v37
	v_div_scale_f32 v42, null, v0, v0, v27
	v_mul_f32_e32 v35, v45, v40
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v46, v41, 1.0
	v_div_fmas_f32 v33, v34, v53, v33
	v_fma_f32 v34, -v52, v43, v38
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v38, -v36, v35, v45
	v_fmac_f32_e32 v41, v39, v41
	v_rcp_f32_e32 v39, v42
	v_div_scale_f32 v44, s1, v26, v0, v26
	v_div_fmas_f32 v34, v34, v37, v43
	v_rcp_f32_e32 v37, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v35, v38, v40 :: v_dual_mul_f32 v38, v44, v41
	v_div_fixup_f32 v23, v33, v0, v23
	v_div_fixup_f32 v24, v34, v0, v24
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v42, v39, 1.0
	v_fma_f32 v34, -v46, v38, v44
	v_fma_f32 v33, -v36, v35, v45
	v_div_scale_f32 v36, s3, v27, v0, v27
	v_dual_fmac_f32 v39, v43, v39 :: v_dual_fmac_f32 v38, v34, v41
	v_fma_f32 v43, -v47, v37, 1.0
	v_div_scale_f32 v45, null, v0, v0, v29
	v_div_fmas_f32 v33, v33, v40, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v34, v36, v39 :: v_dual_fmac_f32 v37, v43, v37
	v_div_scale_f32 v43, null, v0, v0, v30
	v_rcp_f32_e32 v35, v45
	v_div_scale_f32 v40, s4, v28, v0, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v48, v43
	v_div_fixup_f32 v25, v33, v0, v25
	v_fma_f32 v33, -v46, v38, v44
	v_fma_f32 v44, -v42, v34, v36
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v49, -v45, v35, 1.0
	v_mul_f32_e32 v46, v40, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v34, v44, v39
	v_fma_f32 v44, -v43, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v35, v49, v35 :: v_dual_fmac_f32 v48, v44, v48
	v_div_fmas_f32 v33, v33, v41, v38
	v_fma_f32 v38, -v47, v46, v40
	v_div_scale_f32 v41, s1, v29, v0, v29
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v26, v33, v0, v26
	v_fma_f32 v33, -v42, v34, v36
	v_fmac_f32_e32 v46, v38, v37
	v_mul_f32_e32 v36, v41, v35
	v_div_scale_f32 v38, s5, v30, v0, v30
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
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v45, v36, v41
	v_fmac_f32_e32 v44, v39, v48
	v_div_fmas_f32 v34, v34, v37, v46
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v37, v47
	v_div_fmas_f32 v33, v33, v35, v36
	v_fma_f32 v35, -v43, v44, v38
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v46, -v42, v40, 1.0
	v_div_scale_f32 v45, null, v0, v0, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v35, v35, v48, v44
	v_div_fixup_f32 v28, v34, v0, v28
	v_div_scale_f32 v34, s3, v31, v0, v31
	v_fma_f32 v39, -v47, v37, 1.0
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v38, null, v0, v0, v9
	v_div_fixup_f32 v30, v35, v0, v30
	v_rcp_f32_e32 v35, v45
	v_fmac_f32_e32 v37, v39, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v41, v38
	v_mul_f32_e32 v36, v34, v40
	v_div_scale_f32 v39, s1, v32, v0, v32
	v_div_fixup_f32 v29, v33, v0, v29
	v_div_scale_f32 v48, null, v0, v0, v12
	v_fma_f32 v43, -v42, v36, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v45, v35, 1.0
	s_mov_b32 vcc_lo, s3
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
	v_div_scale_f32 v40, s3, v10, v0, v10
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v31, v34, v0, v31
	v_mul_f32_e32 v49, v40, v35
	v_fma_f32 v46, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v44, v39, v37 :: v_dual_fmac_f32 v43, v46, v43
	v_fma_f32 v33, -v47, v44, v39
	v_div_scale_f32 v46, s5, v11, v0, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v44, v33, v37
	v_div_scale_f32 v33, s4, v9, v0, v9
	v_fma_f32 v36, -v47, v44, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v39, v33, v41
	v_div_fmas_f32 v36, v36, v37, v44
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v47, -v38, v39, v33
	v_fma_f32 v37, -v45, v49, v40
	v_mul_f32_e32 v44, v46, v43
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v32, v36, v0, v32
	v_fmac_f32_e32 v39, v47, v41
	v_fma_f32 v36, -v48, v50, 1.0
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v42, v44, v46
	v_div_scale_f32 v37, null, v0, v0, v13
	v_fma_f32 v33, -v38, v39, v33
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s1, v12, v0, v12
	v_fma_f32 v38, -v45, v49, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v41, v39
	s_mov_b32 vcc_lo, s3
	v_dual_mul_f32 v39, v36, v50 :: v_dual_fmac_f32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	v_div_fmas_f32 v35, v38, v35, v49
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v9, v33, v0, v9
	v_fma_f32 v38, -v42, v44, v46
	v_div_scale_f32 v40, null, v0, v0, v14
	v_div_fixup_f32 v10, v35, v0, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v38, v38, v43, v44
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v37, v34, 1.0
	v_fma_f32 v43, -v48, v39, v36
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v11, v38, v0, v11
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s3, v13, v0, v13
	v_fmac_f32_e32 v39, v43, v50
	v_div_scale_f32 v38, null, v0, v0, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v33, v41, v34
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v36, -v48, v39, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v44, v38
	v_fma_f32 v35, -v40, v42, 1.0
	v_fma_f32 v43, -v37, v33, v41
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v36, v36, v50, v39
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v42, v35, v42
	v_fmac_f32_e32 v33, v43, v34
	v_div_scale_f32 v43, null, v0, v0, v16
	v_div_fixup_f32 v12, v36, v0, v12
	v_div_scale_f32 v35, s4, v14, v0, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v37, v33, v41
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v12, 0, v12, s0
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
	v_div_scale_f32 v36, s1, v15, v0, v15
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v33, v45
	v_div_scale_f32 v33, s3, v16, v0, v16
	v_mul_f32_e32 v39, v35, v42
	v_div_scale_f32 v48, s4, v1, v0, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v41, v47, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v37, -v40, v39, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v2, v0, v2
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
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v14, v35, v0, v14
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v14, 0, v14, s0
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
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v3, v0, v3
	v_div_fmas_f32 v33, v33, v45, v42
	v_rcp_f32_e32 v42, v40
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_mul_f32_e32 v36, v39, v50
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v35, v0, v15
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	s_mov_b32 vcc_lo, s5
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
	s_mov_b32 vcc_lo, s1
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
	v_cndmask_b32_e64 v15, 0, v15, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v6, v0, v6
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s1, v5, v0, v5
	v_fma_f32 v48, -v37, v41, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v51, v45, v39
	v_mul_f32_e32 v43, v38, v42
	v_mul_f32_e32 v49, v33, v36
	v_fma_f32 v50, -v44, v46, 1.0
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v7, v0, v7
	v_fma_f32 v47, -v40, v43, v38
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v52, v48, v41
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v33
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s5, v8, v0, v8
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
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v4, v38, v0, v4
	v_div_fmas_f32 v33, v33, v36, v49
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v35, -v35, v51, v45
	v_fma_f32 v34, -v37, v52, v48
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v5, v33, v0, v5
	v_fma_f32 v36, -v44, v53, v50
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	s_mov_b32 s4, s86
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v35, v0, v6
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s81, v125
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v7, v34, v0, v7
	.loc	1 848 17                        ; attention.py:848:17
	s_and_b32 s5, s87, 0xffff
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 841 48 is_stmt 0              ; attention.py:841:48
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v8, 0, v17, s0
	v_cndmask_b32_e64 v17, 0, v18, s0
	v_cndmask_b32_e64 v18, 0, v19, s0
	v_cndmask_b32_e64 v19, 0, v20, s0
	v_cndmask_b32_e64 v20, 0, v21, s0
	v_cndmask_b32_e64 v21, 0, v22, s0
	v_cndmask_b32_e64 v22, 0, v23, s0
	v_cndmask_b32_e64 v23, 0, v24, s0
	v_cndmask_b32_e64 v24, 0, v25, s0
	v_cndmask_b32_e64 v25, 0, v26, s0
	v_cndmask_b32_e64 v26, 0, v27, s0
	v_cndmask_b32_e64 v27, 0, v28, s0
	v_cndmask_b32_e64 v28, 0, v29, s0
	v_cndmask_b32_e64 v29, 0, v30, s0
	v_cndmask_b32_e64 v30, 0, v31, s0
	v_cndmask_b32_e64 v31, 0, v32, s0
	.loc	1 843 24 is_stmt 1              ; attention.py:843:24
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v32, off, off
	scratch_load_b32 v36, off, off offset:32
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s0, s81, v137
	v_cmp_gt_i32_e64 s1, s81, v120
	.loc	1 843 24                        ; attention.py:843:24
	s_waitcnt vmcnt(1)
	v_mul_lo_u32 v32, s81, v32
	.loc	1 844 63                        ; attention.py:844:63
	s_waitcnt vmcnt(0)
	v_cmp_gt_i32_e64 s3, s81, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v33, v32, v125, 2
	v_add_lshl_u32 v34, v32, v121, 2
	v_add_lshl_u32 v35, v32, v152, 2
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	s_clause 0x2
	buffer_store_b32 v8, v33, s[4:7], 0 offen
	buffer_store_b32 v17, v34, s[4:7], 0 offen
	buffer_store_b32 v18, v35, s[4:7], 0 offen
	v_add_lshl_u32 v8, v32, v255, 2
	v_add_lshl_u32 v17, v32, v254, 2
	v_add_lshl_u32 v18, v32, v253, 2
	v_add_lshl_u32 v33, v32, v252, 2
	v_add_lshl_u32 v34, v32, v251, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v17, 0x80000000, v17
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v33, 0x80000000, v33
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	s_clause 0x4
	buffer_store_b32 v19, v8, s[4:7], 0 offen
	buffer_store_b32 v20, v17, s[4:7], 0 offen
	buffer_store_b32 v21, v18, s[4:7], 0 offen
	buffer_store_b32 v22, v33, s[4:7], 0 offen
	buffer_store_b32 v23, v34, s[4:7], 0 offen
	scratch_load_b32 v20, off, off offset:52 ; 4-byte Folded Reload
	v_add_lshl_u32 v8, v32, v137, 2
	v_add_lshl_u32 v17, v32, v136, 2
	v_add_lshl_u32 v18, v32, v135, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 848 17                        ; attention.py:848:17
	v_add_lshl_u32 v19, v32, v134, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v17, 0x80000000, v17
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	s_clause 0x2
	buffer_store_b32 v24, v8, s[4:7], 0 offen
	buffer_store_b32 v25, v17, s[4:7], 0 offen
	buffer_store_b32 v26, v18, s[4:7], 0 offen
	v_add_lshl_u32 v17, v32, v151, 2
	v_add_lshl_u32 v18, v32, v211, 2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_cndmask_b32 v18, 0x80000000, v18
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v20, v32, v20, 2
	v_dual_cndmask_b32 v19, 0x80000000, v19 :: v_dual_cndmask_b32 v8, 0x80000000, v20
	buffer_store_b32 v27, v19, s[4:7], 0 offen
	v_add_lshl_u32 v19, v32, v122, 2
	buffer_store_b32 v28, v8, s[4:7], 0 offen
	v_add_lshl_u32 v8, v32, v120, 2
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 848 17                        ; attention.py:848:17
	buffer_store_b32 v29, v17, s[4:7], 0 offen
	v_add_lshl_u32 v17, v32, v150, 2
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x2
	buffer_store_b32 v30, v18, s[4:7], 0 offen
	buffer_store_b32 v31, v19, s[4:7], 0 offen
	buffer_store_b32 v9, v8, s[4:7], 0 offen
	v_add_lshl_u32 v8, v32, v124, 2
	v_cndmask_b32_e32 v9, 0x80000000, v17, vcc_lo
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v17, off, off offset:64
	scratch_load_b32 v18, off, off offset:48
	scratch_load_b32 v19, off, off offset:44
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x1
	buffer_store_b32 v10, v9, s[4:7], 0 offen
	buffer_store_b32 v11, v8, s[4:7], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v8, off, off offset:40
	scratch_load_b32 v11, off, off offset:28
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v17, v32, v17, 2
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v18, v32, v18, 2
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v19, v32, v19, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v10, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	s_clause 0x2
	buffer_store_b32 v12, v9, s[4:7], 0 offen
	buffer_store_b32 v13, v10, s[4:7], 0 offen
	buffer_store_b32 v14, v17, s[4:7], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:36
	scratch_load_b32 v12, off, off offset:24
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v8, v32, v8, 2
	v_add_lshl_u32 v10, v32, v36, 2
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v11, v32, v11, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v9, v32, v9, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v12, v32, v12, 2
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 848 17                        ; attention.py:848:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v8, s[4:7], 0 offen
	buffer_store_b32 v16, v9, s[4:7], 0 offen
	buffer_store_b32 v1, v10, s[4:7], 0 offen
	buffer_store_b32 v2, v11, s[4:7], 0 offen
	buffer_store_b32 v3, v12, s[4:7], 0 offen
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v1, off, off offset:20
	scratch_load_b32 v2, off, off offset:16
	scratch_load_b32 v3, off, off offset:12
	scratch_load_b32 v8, off, off offset:8
	scratch_load_b32 v9, off, off offset:4
	s_waitcnt vmcnt(4)
	v_add_lshl_u32 v1, v32, v1, 2
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v2, v32, v2, 2
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v3, v32, v3, 2
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v8, v32, v8, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v9, v32, v9, 2
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[4:7], 0 offen
	buffer_store_b32 v5, v2, s[4:7], 0 offen
	buffer_store_b32 v6, v3, s[4:7], 0 offen
	buffer_store_b32 v7, v8, s[4:7], 0 offen
	buffer_store_b32 v0, v9, s[4:7], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_endpgm
.Ltmp158:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 76
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_sgpr 102
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 102
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 76
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18768
; TotalNumSgprs: 104
; NumVgprs: 256
; ScratchSize: 76
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 104
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
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
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
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
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
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
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
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
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
	.quad	.Ltmp120-.Lfunc_begin0
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
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
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
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 76
    .sgpr_count:     104
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 18
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
