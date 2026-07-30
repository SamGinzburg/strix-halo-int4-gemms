	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[76:79], s[0:1], 0x5c
	s_load_b128 s[80:83], s[0:1], 0x30
	v_dual_mov_b32 v52, 0x5410 :: v_dual_and_b32 v51, 7, v0
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v50, 3, v0
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v140, 15, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_lshlrev_b32_e32 v49, 3, v51
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[88:89], s[0:1], 0x10
	v_mov_b32_e32 v18, v17
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s96, s2, 6
	.loc	1 597 26                        ; attention.py:597:26
	s_lshl_b32 s2, s3, 11
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s96, v50
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s67, s96, s2
	s_mov_b32 s87, 0x31027000
	s_mov_b32 s86, 0x7ffffffe
	v_dual_mov_b32 v20, v17 :: v_dual_and_b32 v141, 16, v0
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v1
	.loc	1 598 26                        ; attention.py:598:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[129:130], null, s76, v50, v[49:50]
	s_mul_i32 s8, s76, s67
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e64 s2, s76, v49
	v_dual_mov_b32 v19, v17 :: v_dual_and_b32 v142, 0x60, v0
	v_dual_mov_b32 v23, v17 :: v_dual_lshlrev_b32 v58, 5, v0
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[130:131], null, s76, 48, v[129:130]
	v_lshl_add_u32 v138, s76, 4, v129
	v_lshl_add_u32 v139, s76, 5, v129
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v1, v129, s8, 1
	s_mov_b32 s84, s4
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s4, vcc_lo, s2
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v2, v138, s8, 1
	v_add_lshl_u32 v3, v139, s8, 1
	v_add_lshl_u32 v4, v130, s8, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	s_and_b32 s85, s5, 0xffff
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	s_clause 0x3
	buffer_load_b128 v[33:36], v1, s[84:87], 0 offen
	buffer_load_b128 v[37:40], v2, s[84:87], 0 offen
	buffer_load_b128 v[41:44], v3, s[84:87], 0 offen
	buffer_load_b128 v[45:48], v4, s[84:87], 0 offen
	s_load_b64 s[4:5], s[0:1], 0x6c
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	v_bfe_i32 v63, v0, 2, 1
	s_lshr_b32 s0, s0, 28
	v_bfe_i32 v66, v0, 5, 1
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v21, v17 :: v_dual_and_b32 v56, 24, v0
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s1, s0, -16
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s8, s0, 4
	v_cmp_eq_u32_e64 s0, 0, v141
	v_dual_mov_b32 v31, v17 :: v_dual_lshlrev_b32 v68, 7, v140
	v_dual_mov_b32 v32, v17 :: v_dual_lshlrev_b32 v69, 6, v142
	v_dual_mov_b32 v9, v17 :: v_dual_lshlrev_b32 v70, 2, v142
	v_dual_mov_b32 v10, v17 :: v_dual_lshlrev_b32 v51, 4, v51
	v_dual_mov_b32 v53, 0x7632 :: v_dual_lshlrev_b32 v144, 4, v0
	.loc	1 598 79                        ; attention.py:598:79
	v_bfe_i32 v54, v0, 4, 1
	v_dual_mov_b32 v24, v17 :: v_dual_and_b32 v57, 3, v0
	v_dual_mov_b32 v26, v17 :: v_dual_lshlrev_b32 v143, 2, v0
	v_bfe_i32 v61, v0, 0, 1
	v_dual_mov_b32 v29, v17 :: v_dual_and_b32 v64, 8, v0
	v_bfe_i32 v65, v0, 3, 1
	v_dual_mov_b32 v11, v17 :: v_dual_and_b32 v58, 0x180, v58
	v_dual_mov_b32 v14, v17 :: v_dual_and_b32 v63, 0x2040, v63
	v_dual_mov_b32 v16, v17 :: v_dual_lshlrev_b32 v75, 6, v141
	v_dual_mov_b32 v5, v17 :: v_dual_and_b32 v66, 0x2040, v66
	v_cndmask_b32_e64 v52, 0x1054, v52, s0
	.loc	1 599 26                        ; attention.py:599:26
	v_or3_b32 v69, v68, v69, v51
	v_or_b32_e32 v145, v51, v68
	v_lshl_or_b32 v51, v56, 8, v51
	v_lshl_or_b32 v56, v56, 1, v70
	v_dual_mov_b32 v22, v17 :: v_dual_lshlrev_b32 v55, 1, v0
	v_dual_mov_b32 v28, v17 :: v_dual_and_b32 v59, 28, v0
	v_dual_mov_b32 v25, v17 :: v_dual_lshlrev_b32 v60, 3, v0
	v_dual_mov_b32 v27, v17 :: v_dual_and_b32 v62, 4, v0
	v_dual_mov_b32 v12, v17 :: v_dual_and_b32 v71, 0x630, v144
	v_dual_mov_b32 v13, v17 :: v_dual_and_b32 v54, 0x2040, v54
	v_dual_mov_b32 v15, v17 :: v_dual_and_b32 v72, 0x7c, v143
	v_dual_mov_b32 v1, v17 :: v_dual_lshlrev_b32 v74, 5, v57
	v_lshl_or_b32 v57, v57, 11, v58
	v_and_or_b32 v61, 0x1020, v61, v63
	v_lshl_or_b32 v63, v64, 4, v75
	v_and_or_b32 v64, 0x1020, v65, v66
	v_cndmask_b32_e64 v53, 0x3276, v53, s0
	v_lshl_or_b32 v52, v52, 8, v52
	v_xor_b32_e32 v147, v51, v56
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v51, s5, v50
	v_dual_mov_b32 v30, v17 :: v_dual_and_b32 v67, 0x70, v55
	v_dual_mov_b32 v2, v17 :: v_dual_and_b32 v55, 0x80, v55
	v_dual_mov_b32 v3, v17 :: v_dual_and_b32 v60, 0x310, v60
	v_lshrrev_b32_e32 v73, 3, v142
	v_lshl_add_u32 v62, v62, 9, 0
	v_lshl_or_b32 v58, v142, 4, v72
	v_lshl_or_b32 v68, v59, 7, v74
	v_or3_b32 v148, v71, v54, v57
	v_xor_b32_e32 v54, v64, v74
	v_lshl_or_b32 v53, v53, 8, v53
	v_dual_mov_b32 v131, v17 :: v_dual_and_b32 v52, 0x540054, v52
	v_mov_b32_e32 v6, v17
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s1, s3, s1
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v67, v144, v67
	v_xor_b32_e32 v149, v58, v73
	v_or3_b32 v150, v68, v70, v59
	v_or3_b32 v151, v61, v63, v60
	v_xor_b32_e32 v56, 16, v145
	v_xor_b32_e32 v57, 32, v145
	v_xor_b32_e32 v58, 48, v145
	v_xor_b32_e32 v59, 64, v145
	v_xor_b32_e32 v60, 0x50, v145
	v_xor_b32_e32 v61, 0x60, v145
	v_xor_b32_e32 v63, 0x70, v145
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[135:136], null, s77, v50, v[49:50]
	v_add3_u32 v50, v62, v55, v54
	v_and_b32_e32 v55, 0x760076, v53
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_u32 s3, s1, 0x10007
	v_lshl_or_b32 v54, v52, 4, v52
	v_mad_u64_u32 v[52:53], null, s5, 48, v[51:52]
	s_add_i32 s3, s1, s3
	v_dual_mov_b32 v4, v17 :: v_dual_add_nc_u32 v65, 0, v69
	v_dual_mov_b32 v7, v17 :: v_dual_add_nc_u32 v146, 0, v67
	v_dual_mov_b32 v8, v17 :: v_dual_add_nc_u32 v153, 0, v57
	v_dual_mov_b32 v132, v17 :: v_dual_add_nc_u32 v155, 0, v59
	v_dual_mov_b32 v133, v17 :: v_dual_add_nc_u32 v152, 0, v56
	v_dual_mov_b32 v134, v17 :: v_dual_add_nc_u32 v157, 0, v61
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v76, 4, v49
	v_dual_mov_b32 v201, 0xff800000 :: v_dual_add_nc_u32 v154, 0, v58
	v_dual_mov_b32 v193, 0xff800000 :: v_dual_add_nc_u32 v156, 0, v60
	v_dual_mov_b32 v195, 0xff800000 :: v_dual_add_nc_u32 v158, 0, v63
	v_xor_b32_e32 v56, 0x2040, v147
	v_xor_b32_e32 v57, 16, v148
	v_xor_b32_e32 v58, 32, v148
	v_xor_b32_e32 v59, 48, v148
	v_xor_b32_e32 v60, 64, v148
	v_xor_b32_e32 v61, 0x50, v148
	v_xor_b32_e32 v62, 0x60, v148
	v_xor_b32_e32 v63, 0x70, v148
	v_xor_b32_e32 v64, 0x810, v149
	v_lshl_add_u32 v84, s5, 4, v51
	v_lshl_add_u32 v53, s5, 5, v51
	v_dual_mov_b32 v194, 0xff800000 :: v_dual_add_nc_u32 v159, v49, v51
	v_lshl_or_b32 v51, v55, 4, v55
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_i32 s3, s3, 0x80000
	.loc	1 599 26                        ; attention.py:599:26
	v_xad_u32 v66, v69, 16, 0
	v_xad_u32 v67, v69, 32, 0
	.loc	1 569 19                        ; attention.py:569:19
	s_sext_i32_i16 s0, s3
	.loc	1 599 26                        ; attention.py:599:26
	v_xad_u32 v72, v69, 48, 0
	v_xad_u32 v75, v69, 64, 0
	v_xad_u32 v77, 0x50, v69, 0
	v_xad_u32 v78, 0x60, v69, 0
	v_xad_u32 v69, 0x70, v69, 0
	.loc	1 656 32                        ; attention.py:656:32
	s_lshl_b32 s3, s0, 10
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s0, s77, v49
	v_and_b32_e32 v160, 0x5040504, v54
	v_dual_mov_b32 v196, 0xff800000 :: v_dual_add_nc_u32 v161, 0, v56
	v_dual_mov_b32 v197, 0xff800000 :: v_dual_add_nc_u32 v162, 0, v57
	v_dual_mov_b32 v198, 0xff800000 :: v_dual_add_nc_u32 v163, 0, v58
	v_add_nc_u32_e32 v164, 0, v59
	v_add_nc_u32_e32 v165, 0, v60
	v_dual_mov_b32 v199, 0xff800000 :: v_dual_add_nc_u32 v166, 0, v61
	v_add_nc_u32_e32 v167, 0, v62
	v_add_nc_u32_e32 v168, 0, v63
	v_add_nc_u32_e32 v169, 0, v64
	v_add_nc_u32_e32 v180, v50, v141
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v181, v49, v84
	v_add_nc_u32_e32 v184, v49, v53
	v_add_nc_u32_e32 v185, v76, v53
	v_and_b32_e32 v186, 0x7060706, v51
	v_add_nc_u32_e32 v187, v49, v52
	v_add_nc_u32_e32 v188, v76, v52
	v_xor_b32_e32 v68, 4, v150
	v_xor_b32_e32 v70, 8, v150
	v_xor_b32_e32 v71, 12, v150
	v_xor_b32_e32 v73, 16, v150
	v_xor_b32_e32 v74, 20, v150
	v_xor_b32_e32 v79, 24, v150
	v_xor_b32_e32 v80, 28, v150
	v_xor_b32_e32 v81, 32, v151
	v_xor_b32_e32 v82, 64, v151
	v_xor_b32_e32 v83, 0x60, v151
	v_mad_u64_u32 v[136:137], null, s77, 48, v[135:136]
	.loc	1 656 32                        ; attention.py:656:32
	s_lshl_b32 s9, s8, 14
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s8, s79, s8
	.loc	1 676 27                        ; attention.py:676:27
	s_mul_i32 s1, s4, s1
	v_add_nc_u32_e32 v170, 0, v68
	v_add_nc_u32_e32 v171, 0, v70
	v_add_nc_u32_e32 v172, 0, v71
	v_add_nc_u32_e32 v173, 0, v73
	v_add_nc_u32_e32 v174, 0, v74
	v_add_nc_u32_e32 v175, 0, v79
	v_add_nc_u32_e32 v176, 0, v80
	v_add_nc_u32_e32 v177, 0, v81
	v_add_nc_u32_e32 v178, 0, v82
	v_add_nc_u32_e32 v179, 0, v83
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v182, v76, v84
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v183, 0x78, v0
	.loc	1 629 13                        ; attention.py:629:13
	v_lshl_add_u32 v189, s77, 4, v135
	v_add_nc_u32_e32 v190, 4, v159
	v_lshl_add_u32 v191, s77, 5, v135
	v_lshl_add_u32 v192, v140, 1, 0
	v_mov_b32_e32 v137, 0xff800000
	s_mov_b32 s68, 0
	.loc	1 656 32                        ; attention.py:656:32
	s_and_b32 s3, s3, 0xfffff800
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s78, s78, 0x3fb8aa3b
	.loc	1 674 25                        ; attention.py:674:25
	s_mul_i32 s4, s5, s96
	s_and_b32 s81, s81, 0xffff
	s_mov_b32 s92, s80
	s_add_i32 s80, s1, s8
	s_mov_b32 s97, 0x76543210
	s_mov_b32 s69, s68
	s_mov_b32 s70, s68
	s_mov_b32 s71, s68
	s_mov_b32 s72, s68
	s_mov_b32 s73, s68
	s_mov_b32 s74, s68
	s_mov_b32 s75, s68
	s_mov_b32 s94, s86
	s_mov_b32 s95, s87
	s_mov_b32 s90, s86
	s_mov_b32 s91, s87
	s_mov_b32 s98, s68
	s_and_b32 s85, s7, 0xffff
	s_and_b32 s89, s89, 0xffff
	.loc	1 656 32                        ; attention.py:656:32
	s_add_i32 s79, s3, s9
	s_mov_b32 s93, s81
	s_add_i32 s80, s80, s4
	s_mov_b32 s84, s6
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v146, v[33:36]
	s_waitcnt vmcnt(2)
	ds_store_b128 v146, v[37:40] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v146, v[41:44] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v146, v[45:48] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v65
	ds_load_b128 v[37:40], v66
	ds_load_b128 v[41:44], v67
	ds_load_b128 v[45:48], v72
	ds_load_b128 v[49:52], v75
	ds_load_b128 v[53:56], v77
	ds_load_b128 v[57:60], v78
	ds_load_b128 v[61:64], v69
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 657 32                        ; attention.py:657:32
	s_add_i32 s81, s98, s79
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 s1, s80, s98
	.loc	1 657 32                        ; attention.py:657:32
	s_mul_i32 s3, s81, s76
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v65, s1, v159, 2
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v72, s3, v129, 1
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v68, s1, v182, 2
	v_add_lshl_u32 v69, s1, v184, 2
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v73, s3, v138, 1
	v_add_lshl_u32 v74, s3, v139, 1
	v_add_lshl_u32 v75, s3, v130, 1
	.loc	1 683 36                        ; attention.py:683:36
	v_dual_cndmask_b32 v82, 0x80000000, v65 :: v_dual_add_nc_u32 v203, 0, v148
	v_add_lshl_u32 v66, s1, v190, 2
	v_add_lshl_u32 v67, s1, v181, 2
	v_add_lshl_u32 v70, s1, v185, 2
	v_add_lshl_u32 v71, s1, v187, 2
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e64 v65, 0x80000000, v72, s2
	.loc	1 683 36                        ; attention.py:683:36
	v_dual_cndmask_b32 v85, 0x80000000, v68 :: v_dual_cndmask_b32 v86, 0x80000000, v69
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e64 v69, 0x80000000, v73, s2
	v_cndmask_b32_e64 v73, 0x80000000, v74, s2
	v_cndmask_b32_e64 v77, 0x80000000, v75, s2
	.loc	1 683 36                        ; attention.py:683:36
	v_dual_cndmask_b32 v83, 0x80000000, v66 :: v_dual_cndmask_b32 v84, 0x80000000, v67
	v_dual_cndmask_b32 v87, 0x80000000, v70 :: v_dual_cndmask_b32 v88, 0x80000000, v71
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0x3
	buffer_load_b128 v[65:68], v65, s[84:87], 0 offen
	buffer_load_b128 v[69:72], v69, s[84:87], 0 offen
	buffer_load_b128 v[73:76], v73, s[84:87], 0 offen
	buffer_load_b128 v[77:80], v77, s[84:87], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v104, s75 :: v_dual_add_nc_u32 v81, 0, v145
	v_dual_mov_b32 v103, s74 :: v_dual_mov_b32 v102, s73
	v_dual_mov_b32 v101, s72 :: v_dual_mov_b32 v100, s71
	v_dual_mov_b32 v99, s70 :: v_dual_mov_b32 v98, s69
	v_dual_mov_b32 v97, s68 :: v_dual_add_nc_u32 v204, 0, v147
	.loc	1 693 30                        ; attention.py:693:30
	s_mul_i32 s81, s81, s77
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt vmcnt(3)
	ds_store_b128 v146, v[65:68]
	s_waitcnt vmcnt(2)
	ds_store_b128 v146, v[69:72] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v146, v[73:76] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v146, v[77:80] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 683 36                        ; attention.py:683:36
	s_clause 0x6
	buffer_load_b128 v[121:124], v82, s[92:95], 0 offen
	buffer_load_b128 v[205:208], v83, s[92:95], 0 offen
	buffer_load_b128 v[209:212], v84, s[92:95], 0 offen
	buffer_load_b128 v[213:216], v85, s[92:95], 0 offen
	buffer_load_b128 v[217:220], v86, s[92:95], 0 offen
	buffer_load_b128 v[221:224], v87, s[92:95], 0 offen
	buffer_load_b128 v[225:228], v88, s[92:95], 0 offen
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[69:72], v152
	ds_load_b128 v[65:68], v81
	ds_load_b128 v[73:76], v81 offset:2048
	ds_load_b128 v[77:80], v152 offset:2048
	ds_load_b128 v[109:112], v152 offset:4096
	ds_load_b128 v[105:108], v81 offset:4096
	ds_load_b128 v[113:116], v81 offset:6144
	ds_load_b128 v[117:120], v152 offset:6144
	.loc	1 685 25                        ; attention.py:685:25
	v_add_nc_u32_e32 v202, 0, v149
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[65:72], v[33:40], v[97:104]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[73:80], v[33:40], v[97:104]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[105:112], v[33:40], v[97:104]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[113:120], v[33:40], v[97:104]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[101:104], v154
	ds_load_b128 v[97:100], v153
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v107, s1, v188, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v107, 0x80000000, v107, vcc_lo
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[97:104], v[41:48], v[89:96]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[97:100], v153 offset:2048
	ds_load_b128 v[101:104], v154 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[97:104], v[41:48], v[81:88]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[101:104], v154 offset:4096
	ds_load_b128 v[97:100], v153 offset:4096
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[97:104], v[41:48], v[73:80]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[97:100], v153 offset:6144
	ds_load_b128 v[101:104], v154 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[97:104], v[41:48], v[65:72]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[101:104], v156
	ds_load_b128 v[97:100], v155
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[97:104], v[49:56], v[89:96]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[97:100], v155 offset:2048
	ds_load_b128 v[101:104], v156 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[97:104], v[49:56], v[81:88]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[101:104], v156 offset:4096
	ds_load_b128 v[97:100], v155 offset:4096
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[97:104], v[49:56], v[73:80]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[97:100], v155 offset:6144
	ds_load_b128 v[101:104], v156 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[97:104], v[49:56], v[65:72]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[101:104], v158
	ds_load_b128 v[97:100], v157
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[97:104], v[57:64], v[89:96]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[97:100], v157 offset:2048
	ds_load_b128 v[101:104], v158 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[97:104], v[57:64], v[81:88]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[101:104], v158 offset:4096
	ds_load_b128 v[97:100], v157 offset:4096
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[97:104], v[57:64], v[73:80]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[97:100], v157 offset:6144
	ds_load_b128 v[101:104], v158 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[97:104], v[57:64], v[65:72]
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(6)
	v_dual_cndmask_b32 v126, 0xff800000, v123 :: v_dual_cndmask_b32 v125, 0xff800000, v121
	s_waitcnt vmcnt(5)
	v_dual_cndmask_b32 v104, 0xff800000, v208 :: v_dual_cndmask_b32 v103, 0xff800000, v206
	v_dual_cndmask_b32 v128, 0xff800000, v207 :: v_dual_cndmask_b32 v127, 0xff800000, v205
	buffer_load_b128 v[205:208], v107, s[92:95], 0 offen
	s_waitcnt vmcnt(5)
	v_dual_cndmask_b32 v114, 0xff800000, v211 :: v_dual_cndmask_b32 v113, 0xff800000, v209
	s_waitcnt vmcnt(4)
	v_dual_cndmask_b32 v116, 0xff800000, v215 :: v_dual_cndmask_b32 v115, 0xff800000, v213
	v_dual_cndmask_b32 v102, 0xff800000, v124 :: v_dual_cndmask_b32 v101, 0xff800000, v122
	s_waitcnt vmcnt(3)
	v_dual_cndmask_b32 v122, 0xff800000, v219 :: v_dual_cndmask_b32 v121, 0xff800000, v217
	s_waitcnt vmcnt(2)
	v_dual_cndmask_b32 v124, 0xff800000, v223 :: v_dual_cndmask_b32 v123, 0xff800000, v221
	s_waitcnt vmcnt(1)
	v_dual_cndmask_b32 v118, 0xff800000, v227 :: v_dual_cndmask_b32 v117, 0xff800000, v225
	v_dual_cndmask_b32 v98, 0xff800000, v212 :: v_dual_cndmask_b32 v97, 0xff800000, v210
	v_dual_cndmask_b32 v100, 0xff800000, v216 :: v_dual_cndmask_b32 v99, 0xff800000, v214
	v_dual_cndmask_b32 v110, 0xff800000, v220 :: v_dual_cndmask_b32 v109, 0xff800000, v218
	v_dual_cndmask_b32 v112, 0xff800000, v224 :: v_dual_cndmask_b32 v111, 0xff800000, v222
	v_dual_cndmask_b32 v106, 0xff800000, v228 :: v_dual_cndmask_b32 v105, 0xff800000, v226
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s1, 0xff800000, v125
	v_cmp_neq_f32_e64 s3, 0xff800000, v126
	v_cmp_neq_f32_e64 s4, 0xff800000, v127
	v_cmp_neq_f32_e64 s5, 0xff800000, v128
	v_cmp_neq_f32_e64 s26, 0xff800000, v117
	v_cmp_neq_f32_e64 s29, 0xff800000, v118
	v_cmp_neq_f32_e64 s37, 0xff800000, v105
	v_cmp_neq_f32_e64 s38, 0xff800000, v106
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s39, vcc_lo, s5
	s_and_b32 s40, vcc_lo, s4
	s_and_b32 s13, vcc_lo, s3
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s8, 0xff800000, v101
	v_cmp_neq_f32_e64 s9, 0xff800000, v102
	v_cmp_neq_f32_e64 s15, 0xff800000, v103
	v_cmp_neq_f32_e64 s16, 0xff800000, v104
	v_cmp_neq_f32_e64 s11, 0xff800000, v116
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s14, vcc_lo, s1
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s10, 0xff800000, v115
	v_cmp_neq_f32_e64 s7, 0xff800000, v114
	v_cmp_neq_f32_e64 s6, 0xff800000, v113
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s22, vcc_lo, s11
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s17, 0xff800000, v97
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s23, vcc_lo, s10
	s_and_b32 s28, vcc_lo, s7
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s18, 0xff800000, v98
	v_cmp_neq_f32_e64 s19, 0xff800000, v99
	v_cmp_neq_f32_e64 s20, 0xff800000, v100
	v_cmp_neq_f32_e64 s25, 0xff800000, v124
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s30, vcc_lo, s6
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s24, 0xff800000, v123
	v_cmp_neq_f32_e64 s12, 0xff800000, v121
	v_cmp_neq_f32_e64 s21, 0xff800000, v122
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s10, vcc_lo, s25
	s_and_b32 s6, vcc_lo, s29
	s_and_b32 s11, vcc_lo, s24
	s_and_b32 s24, vcc_lo, s12
	s_and_b32 s12, vcc_lo, s21
	s_and_b32 s7, vcc_lo, s26
	s_and_b32 s41, vcc_lo, s16
	s_and_b32 s42, vcc_lo, s15
	s_and_b32 s15, vcc_lo, s9
	s_and_b32 s25, vcc_lo, s20
	s_and_b32 s26, vcc_lo, s19
	s_and_b32 s29, vcc_lo, s18
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s35, 0xff800000, v112
	v_cmp_neq_f32_e64 s34, 0xff800000, v111
	v_cmp_neq_f32_e64 s33, 0xff800000, v110
	v_cmp_neq_f32_e64 s27, 0xff800000, v109
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s9, vcc_lo, s37
	s_and_b32 s16, vcc_lo, s35
	s_and_b32 s18, vcc_lo, s33
	s_and_b32 s27, vcc_lo, s27
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v120, 0xff800000, v207 :: v_dual_cndmask_b32 v119, 0xff800000, v205
	v_dual_cndmask_b32 v108, 0xff800000, v208 :: v_dual_cndmask_b32 v107, 0xff800000, v206
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_b128 v204, v[125:128]
	ds_store_b128 v204, v[113:116] offset:512
	ds_store_b128 v204, v[121:124] offset:1024
	ds_store_b128 v204, v[117:120] offset:1536
	ds_store_b128 v161, v[101:104]
	ds_store_b128 v161, v[97:100] offset:512
	ds_store_b128 v161, v[109:112] offset:1024
	ds_store_b128 v161, v[105:108] offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[203:206], v203
	ds_load_b128 v[125:128], v162
	ds_load_b128 v[101:104], v163
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s31, 0xff800000, v119
	v_cmp_neq_f32_e64 s36, 0xff800000, v120
	.loc	1 684 35                        ; attention.py:684:35
	ds_load_b128 v[117:120], v168
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v105, 0, 1, s39
	v_add_nc_u32_e32 v200, 0, v150
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s43, 0xff800000, v107
	v_cmp_neq_f32_e64 s44, 0xff800000, v108
	.loc	1 684 35 is_stmt 1              ; attention.py:684:35
	ds_load_b128 v[113:116], v164
	ds_load_b128 v[97:100], v165
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v208, 0, 1, s24
	s_and_b32 s1, vcc_lo, s36
	s_and_b32 s3, vcc_lo, s31
	s_and_b32 s36, vcc_lo, s8
	s_and_b32 s31, vcc_lo, s17
	s_and_b32 s17, vcc_lo, s34
	.loc	1 684 35                        ; attention.py:684:35
	ds_load_b128 v[121:124], v166
	ds_load_b128 v[109:112], v167
	s_waitcnt lgkmcnt(7)
	v_dual_mul_f32 v106, 0x3fb8aa3b, v203 :: v_dual_mul_f32 v203, 0x3fb8aa3b, v206
	v_mul_f32_e32 v107, 0x3fb8aa3b, v204
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v204, 0, 1, s40
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(6)
	v_dual_mul_f32 v108, 0x3fb8aa3b, v205 :: v_dual_mul_f32 v127, 0x3fb8aa3b, v127
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_dual_fmac_f32 v106, s78, v89 :: v_dual_fmac_f32 v203, s78, v92
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	v_mov_b16_e32 v89.l, v105.l
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v128, 0x3fb8aa3b, v128 :: v_dual_fmac_f32 v107, s78, v90
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v205, 0, 1, s13
	v_mov_b16_e64 v90.l, v204.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshlrev_b16 v89.l, 8, v89.l
	v_cndmask_b32_e64 v206, 0, 1, s14
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v125, 0x3fb8aa3b, v125 :: v_dual_mul_f32 v126, 0x3fb8aa3b, v126
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_fmac_f32_e32 v108, s78, v91
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	v_or_b16 v105.h, v90.l, v89.l
	v_mov_b16_e64 v89.l, v205.l
	v_cndmask_b32_e64 v91, 0, 1, s22
	v_mov_b16_e64 v90.l, v206.l
	v_cndmask_b32_e64 v92, 0, 1, s23
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v125, s78, v93
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v89.l, 8, v89.l
	v_cndmask_b32_e64 v93, 0, 1, s28
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v126, s78, v94 :: v_dual_fmac_f32 v127, s78, v95
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v94, 0, 1, s30
	s_delay_alu instid0(VALU_DEP_4)
	v_or_b16 v105.l, v90.l, v89.l
	v_mov_b16_e32 v89.l, v91.l
	v_mov_b16_e32 v90.l, v92.l
	v_cndmask_b32_e64 v95, 0, 1, s10
	.loc	1 684 25                        ; attention.py:684:25
	s_waitcnt lgkmcnt(5)
	v_dual_fmac_f32 v128, s78, v96 :: v_dual_mul_f32 v101, 0x3fb8aa3b, v101
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v89.l, 8, v89.l
	v_cndmask_b32_e64 v96, 0, 1, s11
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v116, 0x3fb8aa3b, v116 :: v_dual_mul_f32 v207, 0x3fb8aa3b, v97
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v97, 0, 1, s12
	v_or_b16 v209.h, v90.l, v89.l
	v_mov_b16_e32 v89.l, v93.l
	v_mov_b16_e32 v90.l, v94.l
	v_cndmask_b32_e64 v204, 0, 1, s1
	v_cndmask_b32_e64 v205, 0, 1, s3
	v_cndmask_b32_e64 v206, 0, 1, s6
	v_lshlrev_b16 v89.l, 8, v89.l
	v_cndmask_b32_e64 v91, 0, 1, s7
	v_cndmask_b32_e64 v92, 0, 1, s41
	v_cndmask_b32_e64 v93, 0, 1, s42
	s_and_b32 s4, vcc_lo, s44
	v_or_b16 v209.l, v90.l, v89.l
	v_mov_b16_e32 v89.l, v95.l
	v_mov_b16_e32 v90.l, v96.l
	v_cndmask_b32_e64 v95, 0, 1, s15
	v_cndmask_b32_e64 v96, 0, 1, s36
	s_and_b32 s8, vcc_lo, s38
	v_lshlrev_b16 v89.l, 8, v89.l
	s_and_b32 s5, vcc_lo, s43
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v124, 0x3fb8aa3b, v124 :: v_dual_mul_f32 v109, 0x3fb8aa3b, v109
	v_dual_mul_f32 v110, 0x3fb8aa3b, v110 :: v_dual_mul_f32 v111, 0x3fb8aa3b, v111
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v94.h, v90.l, v89.l
	v_mov_b16_e32 v89.l, v97.l
	v_mov_b16_e64 v90.l, v208.l
	v_cndmask_b32_e64 v97, 0, 1, s25
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v112, 0x3fb8aa3b, v112 :: v_dual_mul_f32 v117, 0x3fb8aa3b, v117
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v89.l, 8, v89.l
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v118, 0x3fb8aa3b, v118 :: v_dual_mul_f32 v119, 0x3fb8aa3b, v119
	v_dual_mul_f32 v120, 0x3fb8aa3b, v120 :: v_dual_fmac_f32 v101, s78, v81
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v94.l, v90.l, v89.l
	v_mov_b16_e64 v89.l, v204.l
	v_mov_b16_e64 v90.l, v205.l
	v_cndmask_b32_e64 v205, 0, 1, s26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshlrev_b16 v89.l, 8, v89.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v124, s78, v80 :: v_dual_fmac_f32 v109, s78, v65
	v_dual_fmac_f32 v110, s78, v66 :: v_dual_fmac_f32 v111, s78, v67
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v204.h, v90.l, v89.l
	v_mov_b16_e64 v89.l, v206.l
	v_mov_b16_e32 v90.l, v91.l
	v_cndmask_b32_e64 v91, 0, 1, s29
	v_cndmask_b32_e64 v206, 0, 1, s31
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v112, s78, v68 :: v_dual_fmac_f32 v117, s78, v69
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v89.l, 8, v89.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v118, s78, v70 :: v_dual_fmac_f32 v119, s78, v71
	v_fmac_f32_e32 v120, s78, v72
	v_dual_fmac_f32 v116, s78, v88 :: v_dual_fmac_f32 v207, s78, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v204.l, v90.l, v89.l
	v_mov_b16_e32 v89.l, v92.l
	v_mov_b16_e32 v90.l, v93.l
	v_cndmask_b32_e64 v92, 0, 1, s16
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v102, 0x3fb8aa3b, v102 :: v_dual_mul_f32 v103, 0x3fb8aa3b, v103
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v89.l, 8, v89.l
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v122, 0x3fb8aa3b, v122 :: v_dual_mul_f32 v123, 0x3fb8aa3b, v123
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_dual_fmac_f32 v102, s78, v82 :: v_dual_fmac_f32 v103, s78, v83
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	v_or_b16 v93.h, v90.l, v89.l
	v_mov_b16_e32 v89.l, v95.l
	v_mov_b16_e32 v90.l, v96.l
	v_cndmask_b32_e64 v95, 0, 1, s17
	v_cndmask_b32_e64 v96, 0, 1, s18
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v104, 0x3fb8aa3b, v104 :: v_dual_mul_f32 v113, 0x3fb8aa3b, v113
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v89.l, 8, v89.l
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v114, 0x3fb8aa3b, v114 :: v_dual_mul_f32 v115, 0x3fb8aa3b, v115
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_dual_fmac_f32 v122, s78, v78 :: v_dual_fmac_f32 v123, s78, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	v_or_b16 v93.l, v90.l, v89.l
	v_mov_b16_e32 v89.l, v97.l
	v_mov_b16_e64 v90.l, v205.l
	v_cndmask_b32_e64 v205, 0, 1, s27
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v98, 0x3fb8aa3b, v98 :: v_dual_mul_f32 v99, 0x3fb8aa3b, v99
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v89.l, 8, v89.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v104, s78, v84 :: v_dual_fmac_f32 v113, s78, v85
	v_dual_fmac_f32 v114, s78, v86 :: v_dual_fmac_f32 v115, s78, v87
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v97.h, v90.l, v89.l
	v_mov_b16_e32 v89.l, v91.l
	v_mov_b16_e64 v90.l, v206.l
	v_cndmask_b32_e64 v91, 0, 1, s4
	v_cndmask_b32_e64 v206, 0, 1, s5
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v98, s78, v74 :: v_dual_fmac_f32 v99, s78, v75
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v89.l, 8, v89.l
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v100, 0x3fb8aa3b, v100 :: v_dual_mul_f32 v121, 0x3fb8aa3b, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v97.l, v90.l, v89.l
	v_mov_b16_e32 v89.l, v92.l
	v_mov_b16_e32 v90.l, v95.l
	v_cndmask_b32_e64 v92, 0, 1, s8
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v100, s78, v76 :: v_dual_fmac_f32 v121, s78, v77
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v89.l, 8, v89.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_or_b16 v95.h, v90.l, v89.l
	v_mov_b16_e32 v89.l, v96.l
	v_mov_b16_e64 v90.l, v205.l
	v_cndmask_b32_e64 v96, 0, 1, s9
	v_lshlrev_b16 v89.l, 8, v89.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or_b16 v95.l, v90.l, v89.l
	v_mov_b16_e32 v89.l, v91.l
	v_mov_b16_e32 v90.l, v92.l
	v_mov_b16_e64 v91.l, v206.l
	v_mov_b16_e32 v92.l, v96.l
	v_lshlrev_b16 v89.l, 8, v89.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v89.h, 8, v90.l
	v_or_b16 v90.h, v91.l, v89.l
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b16 v90.l, v92.l, v89.h
	ds_store_2addr_b32 v202, v105, v209 offset1:32
	ds_store_2addr_b32 v202, v94, v204 offset0:64 offset1:96
	ds_store_2addr_b32 v169, v93, v97 offset1:32
	ds_store_2addr_b32 v169, v95, v90 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v65, v200
	ds_load_b32 v66, v170
	ds_load_b32 v67, v171
	ds_load_b32 v68, v172
	ds_load_b32 v69, v173
	ds_load_b32 v70, v174
	ds_load_b32 v71, v175
	ds_load_b32 v72, v176
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v73, 0x10000, v65
	v_and_b32_e32 v81, 1, v65
	v_and_b32_e32 v83, 1, v66
	v_and_b32_e32 v84, 0x1000000, v66
	v_and_b32_e32 v89, 1, v69
	v_cmp_ne_u32_e64 s64, 0, v73
	v_and_b32_e32 v78, 0x10000, v70
	v_and_b32_e32 v95, 1, v72
	v_and_b32_e32 v91, 1, v70
	v_and_b32_e32 v92, 0x1000000, v70
	v_cmp_eq_u32_e64 s60, 1, v83
	v_and_b32_e32 v90, 0x1000000, v69
	v_cmp_eq_u32_e64 s34, 1, v95
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v95, 0xff800000, v108, s64
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v82, 0x1000000, v65
	v_lshrrev_b16 v65.h, 8, v66.l
	v_and_b32_e32 v96, 0x1000000, v72
	v_lshrrev_b16 v65.l, 8, v65.l
	v_cmp_eq_u32_e64 s49, 1, v89
	v_cmp_ne_u32_e64 s62, 0, v82
	v_and_b16 v70.h, 1, v65.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v89, 0xff800000, v125, s60
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v87, 1, v68
	v_and_b32_e32 v75, 0x10000, v67
	v_cmp_ne_u32_e64 s59, 0, v84
	v_cmp_eq_u16_e64 s63, 1, v70.h
	v_cmp_ne_u32_e64 s48, 0, v90
	v_cmp_eq_u32_e64 s52, 1, v87
	v_cmp_ne_u32_e64 s19, 0, v96
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v96, 0xff800000, v203, s62
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v85, 1, v67
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v90, 0xff800000, v126, s63
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v86, 0x1000000, v67
	v_lshrrev_b16 v67.h, 8, v70.l
	v_and_b16 v70.l, 1, v65.l
	v_cmp_eq_u32_e64 s65, 1, v81
	v_cmp_eq_u32_e64 s56, 1, v85
	v_cmp_ne_u32_e64 s38, 0, v92
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v92, 0xff800000, v128, s59
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v93, 1, v71
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v81, 0xff800000, v113, s52
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v94, 0x1000000, v71
	v_cmp_eq_u16_e64 s66, 1, v70.l
	v_cmp_ne_u32_e64 s55, 0, v86
	v_cmp_eq_u32_e64 s44, 1, v93
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v93, 0xff800000, v106, s65
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v80, 0x10000, v72
	v_cmp_ne_u32_e64 s21, 0, v94
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v85, 0xff800000, v101, s56
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v88, 0x1000000, v68
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v94, 0xff800000, v107, s66
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v77, 0x10000, v69
	v_and_b32_e32 v76, 0x10000, v68
	v_and_b32_e32 v79, 0x10000, v71
	v_lshrrev_b16 v68.h, 8, v72.l
	v_cmp_ne_u32_e64 s35, 0, v80
	v_cmp_ne_u32_e64 s51, 0, v88
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v88, 0xff800000, v104, s55
	v_cndmask_b32_e64 v72, 0xff800000, v112, s21
	v_cndmask_b32_e64 v65, 0xff800000, v117, s34
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v74, 0x10000, v66
	v_lshrrev_b16 v66.l, 8, v67.l
	v_lshrrev_b16 v66.h, 8, v68.l
	v_lshrrev_b16 v67.l, 8, v69.l
	v_lshrrev_b16 v68.l, 8, v71.l
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v104, v93, v94
.Ltmp2:
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s47, 0, v77
	v_cmp_ne_u32_e64 s33, 0, v79
	v_and_b16 v66.l, 1, v66.l
	v_and_b16 v66.h, 1, v66.h
	v_and_b16 v97.l, 1, v68.l
	v_and_b16 v97.h, 1, v68.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v79, 0xff800000, v99, s47
	v_cndmask_b32_e64 v68, 0xff800000, v120, s19
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v99, v72, v65
.Ltmp4:
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s58, 0, v74
	v_and_b16 v74.l, 1, v67.l
	v_and_b16 v74.h, 1, v67.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v67, 0xff800000, v119, s35
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s50, 0, v76
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v80, 0xff800000, v100, s48
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s61, 1, v66.l
	v_cmp_eq_u16_e64 s57, 1, v66.h
	v_cmp_eq_u16_e64 s54, 1, v74.l
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v100, v67, v68
.Ltmp6:
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s53, 0, v75
	v_cmp_ne_u32_e64 s37, 0, v78
	v_cmp_eq_u32_e64 s46, 1, v91
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v83, 0xff800000, v115, s50
	v_cndmask_b32_e64 v84, 0xff800000, v116, s51
	v_cndmask_b32_e64 v87, 0xff800000, v103, s53
	v_cndmask_b32_e64 v77, 0xff800000, v207, s49
	v_cndmask_b32_e64 v86, 0xff800000, v102, s61
	v_cndmask_b32_e64 v82, 0xff800000, v114, s57
	v_cndmask_b32_e64 v78, 0xff800000, v98, s54
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s45, 1, v74.h
	v_cmp_eq_u16_e64 s43, 1, v97.l
	v_cmp_eq_u16_e64 s20, 1, v97.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v91, 0xff800000, v127, s58
	v_cndmask_b32_e64 v73, 0xff800000, v121, s46
	v_cndmask_b32_e64 v75, 0xff800000, v123, s37
	v_cndmask_b32_e64 v76, 0xff800000, v124, s38
	v_cndmask_b32_e64 v69, 0xff800000, v109, s44
	v_cndmask_b32_e64 v71, 0xff800000, v111, s33
	v_cndmask_b32_e64 v74, 0xff800000, v122, s45
	v_cndmask_b32_e64 v70, 0xff800000, v110, s43
	v_cndmask_b32_e64 v66, 0xff800000, v118, s20
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v101, v86, v87, v88
	v_max3_f32 v102, v81, v82, v83
	v_max3_f32 v103, v84, v77, v78
	v_max3_f32 v105, v96, v89, v90
	v_max3_f32 v97, v79, v80, v73
	v_max3_f32 v98, v91, v92, v85
	v_max3_f32 v106, v74, v75, v76
	v_max3_f32 v107, v69, v70, v71
	v_max3_f32 v99, v99, v66, v100
	v_max3_f32 v100, v101, v102, v103
	v_max3_f32 v101, v104, v95, v105
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max3_f32 v97, v97, v106, v107
	v_max3_f32 v98, v101, v98, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v97, v98, v97, v99
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v98, v97, s97, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v98, v201, v97, v98
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v97, v94, v98
	v_sub_f32_e32 v231, v77, v98
	v_sub_f32_e32 v226, v88, v98
	v_sub_f32_e32 v238, v69, v98
	v_sub_f32_e32 v241, v65, v98
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v97, v97
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v242, v67, v98
	v_sub_f32_e32 v202, v89, v98
	v_sub_f32_e32 v200, v96, v98
	v_sub_f32_e32 v229, v83, v98
	v_sub_f32_e32 v203, v90, v98
	v_sub_f32_e32 v204, v91, v98
	v_sub_f32_e32 v223, v85, v98
	v_sub_f32_e32 v224, v86, v98
	v_sub_f32_e32 v222, v92, v98
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v100, 0, v97, s66
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v97, v93, v98
	v_sub_f32_e32 v225, v87, v98
	v_sub_f32_e32 v227, v81, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v97, v97
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v101, 0, v97, s65
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v97, v95, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v97, v97
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v99, 0, v97, s64
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v97.h, 0
	v_mov_b16_e32 v97.l, v100.h
	v_cmp_o_f32_e64 s64, v100, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v102, 1, v97
	v_add3_u32 v102, v100, v102, 0x7fff
	v_mov_b16_e32 v102.l, v101.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v100.h, 0x7fff, v102.h, s64
	v_mov_b16_e32 v102.h, v97.h
	v_cmp_o_f32_e64 s64, v101, v101
	v_and_b32_e32 v102, 1, v102
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v102, v101, v102, 0x7fff
	.loc	1 686 26                        ; attention.py:686:26
	v_add_nc_u32_e32 v101, 0, v151
	ds_store_b128 v101, v[93:96]
	ds_store_b128 v101, v[77:80] offset:2048
	ds_store_b128 v177, v[89:92]
	ds_store_b128 v177, v[73:76] offset:2048
	ds_store_b128 v178, v[85:88]
	ds_store_b128 v178, v[69:72] offset:2048
	ds_store_b128 v179, v[81:84]
	ds_store_b128 v179, v[65:68] offset:2048
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v100.l, 0x7fff, v102.h, s64
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[101:104], v180 offset:1024
	ds_load_b128 v[105:108], v180
	ds_load_b128 v[109:112], v180 offset:1280
	ds_load_b128 v[113:116], v180 offset:256
	ds_load_b128 v[206:209], v180 offset:512
	ds_load_b128 v[210:213], v180 offset:768
	ds_load_b128 v[214:217], v180 offset:1536
	ds_load_b128 v[218:221], v180 offset:1792
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v232, v78, v98
	v_sub_f32_e32 v235, v73, v98
	v_sub_f32_e32 v236, v74, v98
	v_sub_f32_e32 v239, v70, v98
	v_sub_f32_e32 v89, v72, v98
	v_sub_f32_e32 v72, v68, v98
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	s_waitcnt lgkmcnt(7)
	v_max_f32_e32 v93, v104, v104
	s_waitcnt lgkmcnt(6)
	v_max_f32_e32 v94, v108, v108
	v_max3_f32 v95, v105, v101, v106
	v_max3_f32 v117, v102, v107, v103
	s_waitcnt lgkmcnt(5)
	v_max_f32_e32 v118, v112, v112
	s_waitcnt lgkmcnt(4)
	v_dual_max_f32 v119, v116, v116 :: v_dual_max_f32 v78, v94, v93
	s_waitcnt lgkmcnt(1)
	v_dual_max_f32 v67, v217, v217 :: v_dual_sub_f32 v240, v71, v98
.Ltmp11:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v71, v66, v98
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v77, v113, v109, v114
	v_max3_f32 v73, v95, v117, v78
	v_max3_f32 v68, v206, v214, v207
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v74, v73
	v_mov_b32_dpp v74, v74 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v74, v74, v74
	v_max_f32_e32 v69, v73, v74
.Ltmp15:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v233, v79, v98
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v79, v110, v115, v111
	s_waitcnt lgkmcnt(0)
	v_max3_f32 v73, v210, v218, v211
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v70, v70 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v65, v69, v70
.Ltmp19:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v117, v75, v98
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v69, v215, v208, v216
	v_max_f32_e32 v70, v221, v221
.Ltmp21:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v89, v89
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v66, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mov_b32_dpp v66, v66 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v89, 0, v89, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v66, v66
	v_max_f32_e32 v243, v65, v66
.Ltmp25:
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v65, v193, v193 :: v_dual_sub_f32 v228, v82, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v66, v119, v118 :: v_dual_max_f32 v193, v65, v243
	v_max_f32_e32 v65, v209, v209
	v_max3_f32 v66, v77, v79, v66
.Ltmp27:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v230, v84, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_sub_f32 v237, v76, v98 :: v_dual_sub_f32 v244, v105, v193
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v65, v65, v67
	v_max_f32_e32 v67, v213, v213
.Ltmp29:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v248, v101, v193
	v_sub_f32_e32 v251, v104, v193
	v_sub_f32_e32 v245, v106, v193
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v65, v68, v69, v65
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v69, v66
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v68, v219, v212, v220
.Ltmp33:
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v234, v80, v98 :: v_dual_sub_f32 v249, v102, v193
	v_sub_f32_e32 v247, v108, v193
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v69 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v67, v67, v70 :: v_dual_mov_b32 v70, v65
.Ltmp36:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v250, v103, v193
	v_sub_f32_e32 v246, v107, v193
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v106.h, v97.h
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v67, v73, v68, v67
	v_max_f32_e32 v68, v69, v69
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v70, v70 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v108.h, v97.h
	v_mov_b16_e32 v107.h, v97.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v69, v67 :: v_dual_max_f32 v66, v66, v68
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v68, v70, v70
.Ltmp42:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v71, v71
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v69 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v70, v66 :: v_dual_max_f32 v65, v65, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v70, v70 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v68, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v66, v66, v68
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v70, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v68, v69, v69 :: v_dual_mov_b32 v69, v66
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v70, v70 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v67, v67, v68
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v68, v69, v69 :: v_dual_mov_b32 v69, v67
	v_max_f32_e32 v118, v66, v68
.Ltmp51:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v66, v194, v194
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v69 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v194, v66, v118
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v66, v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp55:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v127, v110, v194
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v65, v65, v66
	v_max_f32_e32 v66, v69, v69
.Ltmp57:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v68, v100, s97, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v127, v127
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v69, v65 :: v_dual_max_f32 v66, v67, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp59:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v81, v68, v100, v160
	v_perm_b32 v82, v68, v100, v186
	v_mov_b16_e32 v68.h, v97.h
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v100, v131
.Ltmp61:
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v131, s81, v135, 1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v127, 0, v127, s29
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v67, v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_dual_mov_b32 v69, v66 :: v_dual_max_f32 v110, v65, v67
.Ltmp64:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v65, v195, v195
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp66:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v195, v65, v110
.Ltmp67:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v65, v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp68:
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v101, v208, v195 :: v_dual_sub_f32 v128, v113, v194
	v_sub_f32_e32 v126, v114, v194
	v_sub_f32_e32 v122, v112, v194
.Ltmp69:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v112, v66, v65 :: v_dual_max_f32 v65, v196, v196
.Ltmp70:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v66.h, v97.h
	v_mov_b16_e32 v66.l, v99.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v205, v109, v194
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v128, v128
	.loc	1 688 24 is_stmt 1              ; attention.py:688:24
	v_max_f32_e32 v196, v65, v112
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v200
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v66, 1, v66
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v126, v126
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_dual_sub_f32 v120, v116, v194 :: v_dual_sub_f32 v125, v214, v195
	v_sub_f32_e32 v102, v207, v195
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v66, v99, v66, 0x7fff
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v105, v215, v195
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v128, 0, v128, s30
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v116, v250
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v65, 0, v65, s62
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s62, v99, v99
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v126, 0, v126, s28
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v120, v120
	v_exp_f32_e32 v122, v122
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v97.l, v65.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v96, v209, v195
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v66.l, 0x7fff, v66.h, s62
	v_cmp_o_f32_e64 s62, v65, v65
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v126, v126, v127 :: v_dual_and_b32 v67, 1, v97
.Ltmp72:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v102, v102
	v_exp_f32_e32 v105, v105
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v109.h, v97.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v116, 0, v116, s42
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v67, v65, v67, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v122, 0, v122, s25
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v121, v115, v194
	v_dual_sub_f32 v123, v111, v194 :: v_dual_sub_f32 v124, v206, v195
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cndmask_b16 v66.h, 0x7fff, v67.h, s62
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v102, 0, v102, s12
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v105, 0, v105, s18
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v121, v121
	v_exp_f32_e32 v123, v123
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_permlanex16_b32 v65, v66, s97, 0xfedcba98 op_sel:[1,0]
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v124, v124
	v_exp_f32_e32 v125, v125
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v103, v216, v195
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v101, v101
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_perm_b32 v83, v65, v66, v160
	v_perm_b32 v84, v65, v66, v186
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v202
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v66.h, v97.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v121, 0, v121, s23
	v_cndmask_b32_e64 v123, 0, v123, s26
	v_cndmask_b32_e64 v124, 0, v124, s24
	v_cndmask_b32_e64 v125, 0, v125, s27
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v103, v103
	v_exp_f32_e32 v96, v96
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_add_lshl_u32 v127, s81, v136, 1
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v101, 0, v101, s11
	v_cndmask_b32_e64 v65, 0, v65, s60
	v_mov_b32_e32 v202, v132
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v132, v251
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_cndmask_b32_e64 v127, 0x80000000, v127, s0
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v105, v102, v105
.Ltmp74:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v66.l, v65.h
	v_cmp_o_f32_e64 s60, v65, v65
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v103, 0, v103, s17
	v_cndmask_b32_e64 v96, 0, v96, s10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v66, 1, v66
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v132, 0, v132, s41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v65, v65, v66, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v66, v203
	v_mov_b32_e32 v203, v133
	v_exp_f32_e32 v133, v205
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v65.l, 0x7fff, v65.h, s60
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v66, s63
	v_cndmask_b32_e64 v133, 0, v133, s31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v97.l, v66.h
	v_cmp_o_f32_e64 s62, v66, v66
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v128, v128, v133
.Ltmp76:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v114, v199, v199
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v133, 0x80000000, v131, s0
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v67, 1, v97
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v95, v219, v196
	v_sub_f32_e32 v69, v210, v196
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[207:210], v133, s[88:91], 0 offen
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v66, v66, v67, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v95, v95
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v65.h, 0x7fff, v66.h, s62
	v_permlanex16_b32 v66, v65, s97, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v95, 0, v95, s8
	v_cndmask_b32_e64 v69, 0, v69, s7
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v85, v66, v65, v160
	v_perm_b32 v86, v66, v65, v186
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v204
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v66.h, v97.h
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v204, v114, v112
	v_max_f32_e32 v112, v198, v198
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_max_f32_e32 v112, v112, v110
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v110, v236
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v65, 0, v65, s58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v66.l, v65.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v91, v213, v196
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s58, v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v110, 0, v110, s45
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v91, v91
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v65, v65, v66, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v66, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v65.l, 0x7fff, v65.h, s58
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v91, 0, v91, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v66, 0, v66, s59
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v97.l, v66.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v104, v217, v195
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s59, v66, v66
	v_and_b32_e32 v67, 1, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v104, v104
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v66, v66, v67, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v65.h, 0x7fff, v66.h, s59
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v104, 0, v104, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v66, v65, s97, 0xfedcba98 op_sel:[1,0]
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v96, v96, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
.Ltmp78:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v87, v66, v65, v160
	v_perm_b32 v88, v66, v65, v186
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v223
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v66.h, v97.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v65, 0, v65, s56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v66.l, v65.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v93, v221, v196
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s56, v65, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v66, 1, v66
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v93, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v65, v65, v66, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v66, v224
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v65.l, 0x7fff, v65.h, s56
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v93, 0, v93, s4
	v_cndmask_b32_e64 v66, 0, v66, s61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v91, v91, v93
.Ltmp80:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v93, 0, v72, s19
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v97.l, v66.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v70, v211, v196
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s58, v66, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v67, 1, v97
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v66, v66, v67, 0x7fff
	v_cndmask_b16 v65.h, 0x7fff, v66.h, s58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v70, 0, v70, s6
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s6, v89, v89
	v_permlanex16_b32 v66, v65, s97, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_perm_b32 v73, v66, v65, v160
	v_perm_b32 v74, v66, v65, v186
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v225
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v66.h, v97.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v65, 0, v65, s53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v66.l, v65.h
	v_cmp_o_f32_e64 s53, v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v66, 1, v66
	v_add3_u32 v65, v65, v66, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v66, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v65.l, 0x7fff, v65.h, s53
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v66, s55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v97.l, v66.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v90, v212, v196
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s55, v66, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v67, 1, v97
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v90, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v66, v66, v67, 0x7fff
	v_cndmask_b16 v65.h, 0x7fff, v66.h, s55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v90, 0, v90, s3
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s3, v93, v93
	v_permlanex16_b32 v66, v65, s97, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_perm_b32 v75, v66, v65, v160
	v_perm_b32 v76, v66, v65, v186
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v227
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v66.h, v97.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v65, 0, v65, s52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v66.l, v65.h
	v_cmp_o_f32_e64 s52, v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v66, 1, v66
	v_add3_u32 v65, v65, v66, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v66, v228
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v65.l, 0x7fff, v65.h, s52
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v66, s57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v97.l, v66.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v94, v218, v196
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s53, v66, v66
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[215:218], v127, s[88:91], 0 offen
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v67, 1, v97
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v94, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v66, v66, v67, 0x7fff
	v_cndmask_b16 v65.h, 0x7fff, v66.h, s53
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v94, 0, v94, s9
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v66, v65, s97, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v94, v69, v94
.Ltmp82:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v77, v66, v65, v160
	v_perm_b32 v78, v66, v65, v186
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v229
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v66.h, v97.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v65, 0, v65, s50
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v66.l, v65.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s50, v65, v65
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v65, v65, v66, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v66, v230
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v65.l, 0x7fff, v65.h, s50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v66, s51
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v97.l, v66.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v92, v220, v196
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s51, v66, v66
	v_and_b32_e32 v67, 1, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v92, v92
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v66, v66, v67, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v65.h, 0x7fff, v66.h, s51
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v92, 0, v92, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v66, v65, s97, 0xfedcba98 op_sel:[1,0]
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v90, v90, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
.Ltmp84:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v79, v66, v65, v160
	v_perm_b32 v80, v66, v65, v186
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v231
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v66.h, v97.h
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v90, v90, v91
.Ltmp86:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v65, 0, v65, s49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v66.l, v65.h
	v_cmp_o_f32_e64 s49, v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v66, 1, v66
	v_add3_u32 v65, v65, v66, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v66, v232
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v66, s54
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v97.l, v66.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s50, v66, v66
	v_and_b32_e32 v67, 1, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v66, v66, v67, 0x7fff
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s49
	v_cndmask_b16 v66.h, 0x7fff, v66.h, s50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v67, v66, s97, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v65, v67, v66, v160
	v_perm_b32 v66, v67, v66, v186
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v67, v233
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v67, 0, v67, s47
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v68.l, v67.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s47, v67, v67
	v_and_b32_e32 v68, 1, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v67, v67, v68, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v68, v234
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v68, 0, v68, s48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v97.l, v68.h
	v_cmp_o_f32_e64 s48, v68, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v99, 1, v97
	v_mov_b16_e32 v97.l, v110.h
	v_add3_u32 v68, v68, v99, 0x7fff
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s47
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s47, 0xff800000, v201
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v114, 1, v97
	v_cndmask_b16 v68.h, 0x7fff, v68.h, s48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v99, v68, s97, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v67, v99, v68, v160
	v_perm_b32 v68, v99, v68, v186
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v99, v201, v98
	v_mov_b32_e32 v201, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v99, v99
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v99, 0, v99, s47
	v_mov_b32_e32 v200, v134
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	v_add_lshl_u32 v134, s81, v191, 1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v7, v7, v99
	v_mul_f32_e32 v9, v9, v99
	v_mul_f32_e32 v13, v13, v99
	v_mul_f32_e32 v15, v15, v99
	v_mul_f32_e32 v17, v17, v99
	v_mul_f32_e32 v18, v18, v99
	v_mul_f32_e32 v19, v19, v99
	v_mul_f32_e32 v20, v20, v99
	v_mul_f32_e32 v21, v21, v99
	v_mul_f32_e32 v22, v22, v99
	v_mul_f32_e32 v23, v23, v99
	v_mul_f32_e32 v24, v24, v99
	v_mul_f32_e32 v25, v25, v99
	v_mul_f32_e32 v26, v26, v99
	v_mul_f32_e32 v27, v27, v99
	v_mul_f32_e32 v28, v28, v99
	v_mul_f32_e32 v29, v29, v99
	v_mul_f32_e32 v30, v30, v99
	v_mul_f32_e32 v31, v31, v99
	v_mul_f32_e32 v32, v32, v99
	v_mul_f32_e32 v10, v10, v99
	v_mul_f32_e32 v11, v11, v99
	v_mul_f32_e32 v14, v14, v99
	v_mul_f32_e32 v16, v16, v99
	v_mul_f32_e32 v1, v1, v99
	v_mul_f32_e32 v2, v2, v99
	v_mul_f32_e32 v3, v3, v99
	v_mul_f32_e32 v4, v4, v99
	v_mul_f32_e32 v5, v5, v99
	v_mul_f32_e32 v6, v6, v99
	v_mul_f32_e32 v8, v8, v99
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v131, 0x80000000, v134, s0
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v134, 0, v120, s22
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v12, v12, v99
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v99, v235
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v120, v121, v123
	v_add_f32_e32 v123, v101, v103
	v_dual_add_f32 v121, v134, v122 :: v_dual_add_f32 v122, v124, v125
.Ltmp88:
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[211:214], v131, s[88:91], 0 offen
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v105, v122, v105
.Ltmp90:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v99, 0, v99, s46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v106.l, v99.h
	v_cmp_o_f32_e64 s46, v99, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v106, 1, v106
	v_add3_u32 v99, v99, v106, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v106, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v119.l, 0x7fff, v99.h, s46
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v99, v239
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v106, 0, v106, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v107.l, v106.h
	v_cmp_o_f32_e64 s47, v106, v106
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v99, 0, v99, s43
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v107, 1, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_add3_u32 v113, v106, v107, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v106, v238
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v107.h, v97.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v106, 0, v106, s44
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s44, v110, v110
	v_add3_u32 v110, v110, v114, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v114, v237
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v110.l, 0x7fff, v113.h, s47
	v_mov_b16_e32 v107.l, v106.h
	v_cmp_o_f32_e64 s37, v106, v106
	v_cndmask_b16 v119.h, 0x7fff, v110.h, s44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v107, 1, v107
	v_permlanex16_b32 v124, v119, s97, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v114, 0, v114, s38
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v117, v106, v107, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v106, v240
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v107.h, v97.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v97.l, v114.h
	v_cmp_o_f32_e64 s38, v114, v114
	v_cndmask_b16 v117.l, 0x7fff, v117.h, s37
	v_perm_b32 v69, v124, v119, v160
	v_and_b32_e32 v115, 1, v97
	v_mov_b16_e32 v97.l, v99.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v106, 0, v106, s33
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v114, v114, v115, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v115, v246
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v113, 1, v97
	v_mov_b16_e32 v107.l, v106.h
	v_cmp_o_f32_e64 s33, v106, v106
	v_cndmask_b16 v110.h, 0x7fff, v114.h, s38
	v_cmp_o_f32_e64 s38, v99, v99
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v114, v249
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v107, 1, v107
	v_mov_b16_e32 v97.l, v89.h
.Ltmp91:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v95, v70, v95
.Ltmp92:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v115, 0, v115, s40
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v70, v124, v119, v186
	v_add3_u32 v106, v106, v107, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v107, v241
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v115, v115, v116 :: v_dual_and_b32 v92, 1, v97
.Ltmp94:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v116, v247
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v114, 0, v114, s15
	.loc	1 689 25 is_stmt 1              ; attention.py:689:25
	v_cmp_neq_f32_e64 s15, 0xff800000, v198
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v89, v89, v92, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v92, 0, v71, s20
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v94, v94, v95
.Ltmp96:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v98.l, 0x7fff, v106.h, s33
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v107, 0, v107, s34
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v98.h, 0x7fff, v89.h, s6
	v_mov_b16_e32 v97.l, v92.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v116, 0, v116, s39
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s1, v92, v92
	v_mov_b16_e32 v108.l, v107.h
	v_cmp_o_f32_e64 s34, v107, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v116, v116, v132
.Ltmp98:
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v132, s81, v189, 1
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v108, 1, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v132, 0x80000000, v132, s0
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v107, v107, v108, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v108, v242
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[101:104], v132, s[88:91], 0 offen
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v106.l, 0x7fff, v107.h, s34
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v108, 0, v108, s35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v109.l, v108.h
	v_cmp_o_f32_e64 s35, v108, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v109, 1, v109
	v_add3_u32 v111, v108, v109, 0x7fff
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v109, v137, v137
	v_max_f32_e32 v108, v197, v197
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v107.l, 0x7fff, v111.h, s35
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v109, v109, v118
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v118, v99, v113, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v99, v244
	v_exp_f32_e32 v113, v248
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v108, v108, v243 :: v_dual_sub_f32 v111, v198, v112
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v72, v137, v109
	v_mov_b32_e32 v198, v112
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v117.h, 0x7fff, v118.h, s38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v206, v111
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v111, v115, v116
.Ltmp100:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v99, 0, v99, s14
	s_delay_alu instid0(TRANS32_DEP_2)
	v_cndmask_b32_e64 v113, 0, v113, s36
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s14, 0xff800000, v137
	v_mov_b32_e32 v137, v109
	.loc	1 689 74 is_stmt 0              ; attention.py:689:74
	v_sub_f32_e32 v71, v197, v108
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s36, 0xff800000, v197
.Ltmp101:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v113, v99, v113
.Ltmp102:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v99, v245
	v_mov_b32_e32 v197, v108
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v71, v71
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v91, v117, s97, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_perm_b32 v89, v91, v117, v160
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v99, 0, v99, s13
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s13, 0xff800000, v199
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v108, 0, v71, s36
	.loc	1 689 74 is_stmt 0              ; attention.py:689:74
	v_sub_f32_e32 v199, v199, v204
.Ltmp103:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v114, v99, v114 :: v_dual_add_nc_u32 v99, 0, v144
.Ltmp104:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(3)
	ds_store_b128 v99, v[207:210]
	s_waitcnt vmcnt(0)
	ds_store_b128 v99, v[101:104] offset:2048
	ds_store_b128 v99, v[211:214] offset:4096
	ds_store_b128 v99, v[215:218] offset:6144
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v109, v113, v114 :: v_dual_and_b32 v112, 1, v97
.Ltmp106:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v97.l, v93.h
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v96, v123, v96 :: v_dual_add_f32 v113, v128, v126
.Ltmp108:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v95, 1, v97
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v97, v109, v111 :: v_dual_add_f32 v114, v120, v121
	v_add_f32_e32 v96, v105, v96
.Ltmp110:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v92, v92, v112, 0x7fff
	v_add3_u32 v93, v93, v95, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v95, v97
.Ltmp112:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v109, v113, v114
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v111, v96
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v105, v94, v90
.Ltmp115:
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v205, v72
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v72, v110, s97, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v94, v98, s97, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v106.h, 0x7fff, v92.h, s1
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v111, v111 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp117:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v90, v91, v117, v186
	v_perm_b32 v71, v72, v110, v160
	v_perm_b32 v72, v72, v110, v186
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v110, v109
.Ltmp119:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v91, v94, v98, v160
	v_perm_b32 v92, v94, v98, v186
	v_permlanex16_b32 v94, v106, s97, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v107.h, 0x7fff, v93.h, s3
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v110, v110 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v95, v95 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp121:
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s1, s98, 64
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v93, v94, v106, v160
	v_perm_b32 v94, v94, v106, v186
	v_permlanex16_b32 v98, v107, s97, 0xfedcba98 op_sel:[1,0]
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v106, v109, v110
	v_add_f32_e32 v97, v97, v95
	v_add_f32_e32 v109, v96, v111
.Ltmp123:
	.loc	1 629 13                        ; attention.py:629:13
	s_cmpk_lt_u32 s98, 0x7c0
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v95, v98, v107, v160
	v_perm_b32 v96, v98, v107, v186
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v98, v106
	v_mov_b32_e32 v110, v97
	s_mov_b32 s98, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v98, v98 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v107, v109
	v_mov_b32_dpp v110, v110 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v98, v106, v98
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v107, v107 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v97, v97, v110
	v_dual_add_f32 v106, v109, v107 :: v_dual_mov_b32 v109, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_dual_mov_b32 v107, v97 :: v_dual_mov_b32 v110, v106
	v_mov_b32_dpp v109, v109 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v112, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v107, v107 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v110, v110 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v133, v98, v109
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v112, v112 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v131, v97, v107 :: v_dual_add_f32 v132, v106, v110
	v_add_f32_e32 v105, v105, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp132:
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v131, v100, v108
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v111, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v111, v111 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v105, v105, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v111, v105
	v_mov_b32_dpp v111, v111 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v134, v105, v111
.Ltmp137:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v121, v192 offset:608
	ds_load_u16_d16 v120, v192 offset:352
	ds_load_u16_d16 v100, v192 offset:768
	ds_load_u16_d16 v97, v192
	ds_load_u16_d16 v209, v192 offset:576
	ds_load_u16_d16 v210, v192 offset:832
	ds_load_u16_d16 v101, v192 offset:1024
	ds_load_u16_d16 v211, v192 offset:1088
	ds_load_u16_d16 v102, v192 offset:1280
	ds_load_u16_d16 v212, v192 offset:1344
	ds_load_u16_d16 v103, v192 offset:1536
	ds_load_u16_d16 v213, v192 offset:1600
	ds_load_u16_d16 v104, v192 offset:1792
	ds_load_u16_d16 v99, v192 offset:512
	ds_load_u16_d16 v98, v192 offset:256
	ds_load_u16_d16 v214, v192 offset:1856
	ds_load_u16_d16 v107, v192 offset:288
	ds_load_u16_d16 v106, v192 offset:32
	ds_load_u16_d16 v207, v192 offset:64
	ds_load_u16_d16 v208, v192 offset:320
	ds_load_u16_d16 v119, v192 offset:96
	ds_load_u16_d16 v108, v192 offset:544
	ds_load_u16_d16 v122, v192 offset:864
	ds_load_u16_d16 v123, v192 offset:1120
	ds_load_u16_d16 v124, v192 offset:1376
	ds_load_u16_d16 v125, v192 offset:1632
	ds_load_u16_d16 v109, v192 offset:800
	ds_load_u16_d16 v110, v192 offset:1056
	ds_load_u16_d16 v111, v192 offset:1312
	ds_load_u16_d16 v112, v192 offset:1568
	ds_load_u16_d16 v113, v192 offset:1824
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v97, v192 offset:128
	ds_load_u16_d16_hi v100, v192 offset:896
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v101, v192 offset:1152
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v102, v192 offset:1408
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v103, v192 offset:1664
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v104, v192 offset:1920
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v99, v192 offset:640
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v98, v192 offset:384
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[97:104], v[81:88], v[17:24]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v104, v192 offset:2112
	ds_load_u16_d16 v126, v192 offset:1888
	ds_load_u16_d16 v105, v192 offset:2368
	ds_load_u16_d16_hi v106, v192 offset:160
	ds_load_u16_d16_hi v107, v192 offset:416
	ds_load_u16_d16_hi v108, v192 offset:672
	ds_load_u16_d16_hi v109, v192 offset:928
	ds_load_u16_d16_hi v110, v192 offset:1184
	ds_load_u16_d16_hi v111, v192 offset:1440
	ds_load_u16_d16_hi v112, v192 offset:1696
	ds_load_u16_d16_hi v113, v192 offset:1952
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[106:113], v[81:88], v[25:32]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v112, v192 offset:2144
	ds_load_u16_d16_hi v209, v192 offset:704
	ds_load_u16_d16_hi v210, v192 offset:960
	ds_load_u16_d16_hi v211, v192 offset:1216
	ds_load_u16_d16_hi v212, v192 offset:1472
	ds_load_u16_d16_hi v213, v192 offset:1728
	ds_load_u16_d16_hi v214, v192 offset:1984
	ds_load_u16_d16_hi v207, v192 offset:192
	ds_load_u16_d16_hi v208, v192 offset:448
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[207:214], v[81:88], v[9:16]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v207, v192 offset:2048
	ds_load_u16_d16 v209, v192 offset:2560
	ds_load_u16_d16 v106, v192 offset:2624
	ds_load_u16_d16 v210, v192 offset:2816
	ds_load_u16_d16 v107, v192 offset:2880
	ds_load_u16_d16 v211, v192 offset:3072
	ds_load_u16_d16 v108, v192 offset:3136
	ds_load_u16_d16 v212, v192 offset:3328
	ds_load_u16_d16 v109, v192 offset:3392
	ds_load_u16_d16 v213, v192 offset:3584
	ds_load_u16_d16 v110, v192 offset:3648
	ds_load_u16_d16 v214, v192 offset:3840
	ds_load_u16_d16 v208, v192 offset:2304
	ds_load_u16_d16 v111, v192 offset:3904
	ds_load_u16_d16 v113, v192 offset:2400
	ds_load_u16_d16 v114, v192 offset:2656
	ds_load_u16_d16 v115, v192 offset:2912
	ds_load_u16_d16 v116, v192 offset:3168
	ds_load_u16_d16 v117, v192 offset:3424
	ds_load_u16_d16 v118, v192 offset:3680
	ds_load_u16_d16_hi v120, v192 offset:480
	ds_load_u16_d16_hi v119, v192 offset:224
	ds_load_u16_d16_hi v121, v192 offset:736
	ds_load_u16_d16_hi v122, v192 offset:992
	ds_load_u16_d16_hi v123, v192 offset:1248
	ds_load_u16_d16_hi v124, v192 offset:1504
	ds_load_u16_d16_hi v125, v192 offset:1760
	ds_load_u16_d16_hi v126, v192 offset:2016
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[119:126], v[81:88], v[1:8]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v81, v192 offset:4160
	ds_load_u16_d16 v119, v192 offset:3936
	ds_load_u16_d16 v120, v192 offset:2080
	ds_load_u16_d16 v121, v192 offset:2336
	ds_load_u16_d16 v122, v192 offset:2592
	ds_load_u16_d16 v123, v192 offset:2848
	ds_load_u16_d16 v124, v192 offset:3104
	ds_load_u16_d16 v125, v192 offset:3360
	ds_load_u16_d16 v126, v192 offset:3616
	ds_load_u16_d16 v127, v192 offset:3872
	ds_load_u16_d16 v82, v192 offset:4416
	ds_load_u16_d16_hi v207, v192 offset:2176
	ds_load_u16_d16_hi v209, v192 offset:2688
	ds_load_u16_d16_hi v210, v192 offset:2944
	ds_load_u16_d16_hi v211, v192 offset:3200
	ds_load_u16_d16_hi v212, v192 offset:3456
	ds_load_u16_d16_hi v213, v192 offset:3712
	ds_load_u16_d16_hi v214, v192 offset:3968
	ds_load_u16_d16_hi v208, v192 offset:2432
	ds_load_u16_d16 v97, v192 offset:4192
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v120, v192 offset:2208
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v121, v192 offset:2464
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v122, v192 offset:2720
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v123, v192 offset:2976
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v124, v192 offset:3232
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v125, v192 offset:3488
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v126, v192 offset:3744
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v127, v192 offset:4000
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(9)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[207:214], v[73:80], v[17:24]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[120:127], v[73:80], v[25:32]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v120, v192 offset:4096
	ds_load_u16_d16 v122, v192 offset:4608
	ds_load_u16_d16 v83, v192 offset:4672
	ds_load_u16_d16 v123, v192 offset:4864
	ds_load_u16_d16 v84, v192 offset:4928
	ds_load_u16_d16 v124, v192 offset:5120
	ds_load_u16_d16 v85, v192 offset:5184
	ds_load_u16_d16 v125, v192 offset:5376
	ds_load_u16_d16 v86, v192 offset:5440
	ds_load_u16_d16 v126, v192 offset:5632
	ds_load_u16_d16 v87, v192 offset:5696
	ds_load_u16_d16 v127, v192 offset:5888
	ds_load_u16_d16 v121, v192 offset:4352
	ds_load_u16_d16 v88, v192 offset:5952
	ds_load_u16_d16 v98, v192 offset:4448
	ds_load_u16_d16 v99, v192 offset:4704
	ds_load_u16_d16 v100, v192 offset:4960
	ds_load_u16_d16 v101, v192 offset:5216
	ds_load_u16_d16 v102, v192 offset:5472
	ds_load_u16_d16 v103, v192 offset:5728
	ds_load_u16_d16_hi v104, v192 offset:2240
	ds_load_u16_d16_hi v105, v192 offset:2496
	ds_load_u16_d16_hi v106, v192 offset:2752
	ds_load_u16_d16_hi v107, v192 offset:3008
	ds_load_u16_d16_hi v108, v192 offset:3264
	ds_load_u16_d16_hi v109, v192 offset:3520
	ds_load_u16_d16_hi v110, v192 offset:3776
	ds_load_u16_d16_hi v111, v192 offset:4032
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[104:111], v[73:80], v[9:16]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v105, v192 offset:6208
	ds_load_u16_d16 v104, v192 offset:5984
	ds_load_u16_d16_hi v112, v192 offset:2272
	ds_load_u16_d16_hi v113, v192 offset:2528
	ds_load_u16_d16_hi v114, v192 offset:2784
	ds_load_u16_d16_hi v115, v192 offset:3040
	ds_load_u16_d16_hi v116, v192 offset:3296
	ds_load_u16_d16_hi v117, v192 offset:3552
	ds_load_u16_d16_hi v118, v192 offset:3808
	ds_load_u16_d16_hi v119, v192 offset:4064
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[112:119], v[73:80], v[1:8]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v207, v192 offset:4128
	ds_load_u16_d16 v208, v192 offset:4384
	ds_load_u16_d16 v209, v192 offset:4640
	ds_load_u16_d16 v210, v192 offset:4896
	ds_load_u16_d16 v211, v192 offset:5152
	ds_load_u16_d16 v212, v192 offset:5408
	ds_load_u16_d16 v213, v192 offset:5664
	ds_load_u16_d16 v214, v192 offset:5920
	ds_load_u16_d16 v106, v192 offset:6464
	ds_load_u16_d16 v73, v192 offset:6240
	ds_load_u16_d16_hi v120, v192 offset:4224
	ds_load_u16_d16_hi v122, v192 offset:4736
	ds_load_u16_d16_hi v123, v192 offset:4992
	ds_load_u16_d16_hi v124, v192 offset:5248
	ds_load_u16_d16_hi v125, v192 offset:5504
	ds_load_u16_d16_hi v126, v192 offset:5760
	ds_load_u16_d16_hi v127, v192 offset:6016
	ds_load_u16_d16_hi v121, v192 offset:4480
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[120:127], v[65:72], v[17:24]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v113, v192 offset:6144
	ds_load_u16_d16 v115, v192 offset:6656
	ds_load_u16_d16 v107, v192 offset:6720
	ds_load_u16_d16 v116, v192 offset:6912
	ds_load_u16_d16 v108, v192 offset:6976
	ds_load_u16_d16 v117, v192 offset:7168
	ds_load_u16_d16 v109, v192 offset:7232
	ds_load_u16_d16 v118, v192 offset:7424
	ds_load_u16_d16 v110, v192 offset:7488
	ds_load_u16_d16 v119, v192 offset:7680
	ds_load_u16_d16 v111, v192 offset:7744
	ds_load_u16_d16 v120, v192 offset:7936
	ds_load_u16_d16 v114, v192 offset:6400
	ds_load_u16_d16 v112, v192 offset:8000
	ds_load_u16_d16 v74, v192 offset:6496
	ds_load_u16_d16 v75, v192 offset:6752
	ds_load_u16_d16 v76, v192 offset:7008
	ds_load_u16_d16 v77, v192 offset:7264
	ds_load_u16_d16 v78, v192 offset:7520
	ds_load_u16_d16 v79, v192 offset:7776
	ds_load_u16_d16 v80, v192 offset:8032
	ds_load_u16_d16_hi v207, v192 offset:4256
	ds_load_u16_d16_hi v208, v192 offset:4512
	ds_load_u16_d16_hi v209, v192 offset:4768
	ds_load_u16_d16_hi v210, v192 offset:5024
	ds_load_u16_d16_hi v211, v192 offset:5280
	ds_load_u16_d16_hi v212, v192 offset:5536
	ds_load_u16_d16_hi v213, v192 offset:5792
	ds_load_u16_d16_hi v214, v192 offset:6048
	ds_load_u16_d16 v121, v192 offset:6176
	ds_load_u16_d16 v122, v192 offset:6432
	ds_load_u16_d16 v123, v192 offset:6688
	ds_load_u16_d16 v124, v192 offset:6944
	ds_load_u16_d16 v125, v192 offset:7200
	ds_load_u16_d16 v126, v192 offset:7456
	ds_load_u16_d16 v127, v192 offset:7712
	ds_load_u16_d16 v128, v192 offset:7968
	ds_load_u16_d16_hi v81, v192 offset:4288
	ds_load_u16_d16_hi v82, v192 offset:4544
	ds_load_u16_d16_hi v83, v192 offset:4800
	ds_load_u16_d16_hi v84, v192 offset:5056
	ds_load_u16_d16_hi v85, v192 offset:5312
	ds_load_u16_d16_hi v86, v192 offset:5568
	ds_load_u16_d16_hi v87, v192 offset:5824
	ds_load_u16_d16_hi v88, v192 offset:6080
	ds_load_u16_d16_hi v105, v192 offset:6336
	ds_load_u16_d16_hi v97, v192 offset:4320
	ds_load_u16_d16_hi v98, v192 offset:4576
	ds_load_u16_d16_hi v99, v192 offset:4832
	ds_load_u16_d16_hi v100, v192 offset:5088
	ds_load_u16_d16_hi v101, v192 offset:5344
	ds_load_u16_d16_hi v102, v192 offset:5600
	ds_load_u16_d16_hi v103, v192 offset:5856
	ds_load_u16_d16_hi v104, v192 offset:6112
	s_waitcnt lgkmcnt(53)
	ds_load_u16_d16_hi v113, v192 offset:6272
	ds_load_u16_d16_hi v106, v192 offset:6592
	s_waitcnt lgkmcnt(54)
	ds_load_u16_d16_hi v115, v192 offset:6784
	s_waitcnt lgkmcnt(54)
	ds_load_u16_d16_hi v107, v192 offset:6848
	s_waitcnt lgkmcnt(54)
	ds_load_u16_d16_hi v116, v192 offset:7040
	s_waitcnt lgkmcnt(54)
	ds_load_u16_d16_hi v108, v192 offset:7104
	s_waitcnt lgkmcnt(54)
	ds_load_u16_d16_hi v117, v192 offset:7296
	s_waitcnt lgkmcnt(54)
	ds_load_u16_d16_hi v109, v192 offset:7360
	s_waitcnt lgkmcnt(54)
	ds_load_u16_d16_hi v118, v192 offset:7552
	s_waitcnt lgkmcnt(54)
	ds_load_u16_d16_hi v110, v192 offset:7616
	s_waitcnt lgkmcnt(54)
	ds_load_u16_d16_hi v119, v192 offset:7808
	s_waitcnt lgkmcnt(54)
	ds_load_u16_d16_hi v111, v192 offset:7872
	s_waitcnt lgkmcnt(54)
	ds_load_u16_d16_hi v120, v192 offset:8064
	s_waitcnt lgkmcnt(54)
	ds_load_u16_d16_hi v114, v192 offset:6528
	s_waitcnt lgkmcnt(54)
	ds_load_u16_d16_hi v112, v192 offset:8128
	s_waitcnt lgkmcnt(39)
	ds_load_u16_d16_hi v121, v192 offset:6304
	ds_load_u16_d16_hi v73, v192 offset:6368
	s_waitcnt lgkmcnt(40)
	ds_load_u16_d16_hi v122, v192 offset:6560
	ds_load_u16_d16_hi v74, v192 offset:6624
	s_waitcnt lgkmcnt(41)
	ds_load_u16_d16_hi v123, v192 offset:6816
	ds_load_u16_d16_hi v75, v192 offset:6880
	s_waitcnt lgkmcnt(42)
	ds_load_u16_d16_hi v124, v192 offset:7072
	ds_load_u16_d16_hi v76, v192 offset:7136
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v125, v192 offset:7328
	ds_load_u16_d16_hi v77, v192 offset:7392
	s_waitcnt lgkmcnt(44)
	ds_load_u16_d16_hi v126, v192 offset:7584
	ds_load_u16_d16_hi v78, v192 offset:7648
	s_waitcnt lgkmcnt(45)
	ds_load_u16_d16_hi v127, v192 offset:7840
	s_waitcnt lgkmcnt(45)
	ds_load_u16_d16_hi v128, v192 offset:8096
	ds_load_u16_d16_hi v79, v192 offset:7904
	ds_load_u16_d16_hi v80, v192 offset:8160
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(40)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[81:88], v[65:72], v[9:16]
	s_waitcnt lgkmcnt(31)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[97:104], v[65:72], v[1:8]
	v_wmma_f32_16x16x16_bf16 v[25:32], v[207:214], v[65:72], v[25:32]
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v207, v199
	v_mov_b32_e32 v199, v204
	.loc	1 689 25 is_stmt 0              ; attention.py:689:25
	v_cndmask_b32_e64 v204, 0, v205, s14
	v_cndmask_b32_e64 v205, 0, v206, s15
	.loc	1 700 23 is_stmt 1              ; attention.py:700:23
	s_waitcnt lgkmcnt(17)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[113:120], v[89:96], v[17:24]
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[105:112], v[89:96], v[9:16]
	.loc	1 701 23                        ; attention.py:701:23
	v_dual_fmac_f32 v133, v203, v204 :: v_dual_fmac_f32 v132, v202, v205
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[121:128], v[89:96], v[25:32]
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v206, 0, v207, s13
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[73:80], v[89:96], v[1:8]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v134, v200, v206
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	v_lshrrev_b32_e32 v0, 4, v0
	v_and_b32_e32 v33, 0x80, v143
	v_lshl_add_u32 v34, v140, 3, 0
	v_add_nc_u32_e32 v35, 0, v183
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v0, 4, v0
	s_barrier
	s_mov_b32 s7, 0x31027000
	ds_store_2addr_b64 v35, v[131:132], v[133:134] offset1:16
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v34, v33, v0
	s_barrier
	.loc	1 598 79                        ; attention.py:598:79
	v_lshrrev_b32_e32 v35, 4, v141
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 629 13                        ; attention.py:629:13
	ds_load_b32 v37, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v0, 1, v142
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v33, 32, v35
	v_or_b32_e32 v34, 16, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v36, v0, v140
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v0, 48, v35
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v38, s96, v36
	.loc	1 843 24                        ; attention.py:843:24
	v_or_b32_e32 v36, s67, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s0, 0x800, v38
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v36, s77, v36
	.loc	1 841 48                        ; attention.py:841:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v38, null, v37, v37, v17
	v_div_scale_f32 v40, null, v37, v37, v18
	v_div_scale_f32 v42, null, v37, v37, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v46, v38
	v_rcp_f32_e32 v47, v40
	v_div_scale_f32 v44, null, v37, v37, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v48, v42
	v_div_scale_f32 v52, null, v37, v37, v22
	v_rcp_f32_e32 v49, v44
	v_div_scale_f32 v39, vcc_lo, v17, v37, v17
	v_fma_f32 v54, -v38, v46, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v55, -v40, v47, 1.0
	v_div_scale_f32 v41, s1, v18, v37, v18
	v_fma_f32 v56, -v42, v48, 1.0
	v_rcp_f32_e32 v58, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v46, v54, v46 :: v_dual_fmac_f32 v47, v55, v47
	v_div_scale_f32 v43, s2, v19, v37, v19
	v_fma_f32 v57, -v44, v49, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v48, v56, v48 :: v_dual_mul_f32 v55, v39, v46
	v_mul_f32_e32 v56, v41, v47
	v_div_scale_f32 v51, s4, v21, v37, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v60, -v52, v58, 1.0
	v_fma_f32 v61, -v38, v55, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v62, -v40, v56, v41
	v_fmac_f32_e32 v49, v57, v49
	v_dual_mul_f32 v57, v43, v48 :: v_dual_fmac_f32 v58, v60, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v55, v61, v46 :: v_dual_fmac_f32 v56, v62, v47
	v_div_scale_f32 v45, s3, v20, v37, v20
	v_fma_f32 v63, -v42, v57, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v38, v55, v39
	v_fma_f32 v39, -v40, v56, v41
	v_div_scale_f32 v50, null, v37, v37, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v57, v63, v48
	v_div_fmas_f32 v38, v38, v46, v55
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v53, v50
	v_div_fmas_f32 v39, v39, v47, v56
	v_fma_f32 v40, -v42, v57, v43
	v_div_scale_f32 v42, null, v37, v37, v23
	v_div_fixup_f32 v17, v38, v37, v17
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v18, v39, v37, v18
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v38, v42
	v_div_scale_f32 v39, s2, v22, v37, v22
	v_div_fmas_f32 v40, v40, v48, v57
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v54, -v50, v53, 1.0
	v_div_scale_f32 v43, null, v37, v37, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v19, v40, v37, v19
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s1, 0, v37
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v46, -v42, v38, 1.0
	v_mul_f32_e32 v59, v45, v49
	v_rcp_f32_e32 v47, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v38, v46, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v64, -v44, v59, v45
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	v_cndmask_b32_e64 v19, 0, v19, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v59, v64, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v46, -v43, v47, 1.0
	v_fma_f32 v41, -v44, v59, v45
	v_mul_f32_e32 v45, v39, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v46, v47
	v_div_scale_f32 v46, s5, v24, v37, v24
	v_div_fmas_f32 v41, v41, v49, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v40, -v52, v45, v39
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v20, v41, v37, v20
	v_div_scale_f32 v41, s3, v23, v37, v23
	v_fmac_f32_e32 v53, v54, v53
	v_fmac_f32_e32 v45, v40, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v20, 0, v20, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v40, v41, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v54, v51, v53
	v_fma_f32 v39, -v52, v45, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v50, v54, v51
	v_fmac_f32_e32 v54, v44, v53
	v_div_scale_f32 v44, null, v37, v37, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v50, v54, v51
	v_fma_f32 v50, -v42, v40, v41
	v_rcp_f32_e32 v49, v44
	v_mul_f32_e32 v51, v46, v47
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v48, v48, v53, v54
	v_div_scale_f32 v53, null, v37, v37, v26
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v40, v50, v38
	v_div_fmas_f32 v39, v39, v58, v45
	v_rcp_f32_e32 v45, v53
	v_div_fixup_f32 v21, v48, v37, v21
	v_div_scale_f32 v48, null, v37, v37, v27
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v22, v39, v37, v22
	v_fma_f32 v39, -v42, v40, v41
	v_fma_f32 v52, -v44, v49, 1.0
	v_fma_f32 v50, -v43, v51, v46
	s_mov_b32 vcc_lo, s3
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v21, s1
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v42, -v53, v45, 1.0
	v_div_fmas_f32 v38, v39, v38, v40
	v_fmac_f32_e32 v51, v50, v47
	s_mov_b32 vcc_lo, s5
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v22, 0, v22, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v45, v42, v45
	v_rcp_f32_e32 v42, v48
	v_fma_f32 v39, -v43, v51, v46
	v_div_scale_f32 v46, null, v37, v37, v28
	v_div_scale_f32 v43, s3, v26, v37, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v39, v39, v47, v51
	v_div_fixup_f32 v23, v38, v37, v23
	v_div_scale_f32 v51, null, v37, v37, v29
	v_fma_f32 v50, -v48, v42, 1.0
	v_fmac_f32_e32 v49, v52, v49
	v_div_scale_f32 v52, s2, v25, v37, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v47, v43, v45 :: v_dual_fmac_f32 v42, v50, v42
	v_div_fixup_f32 v24, v39, v37, v24
	v_mul_f32_e32 v41, v52, v49
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v53, v47, v43
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	v_cndmask_b32_e64 v24, 0, v24, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v40, -v44, v41, v52
	v_fmac_f32_e32 v47, v39, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v40, v49
	v_rcp_f32_e32 v40, v46
	v_fma_f32 v38, -v44, v41, v52
	v_div_scale_f32 v44, s4, v27, v37, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v38, v38, v49, v41
	v_fma_f32 v50, -v46, v40, 1.0
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v41, v51
	v_div_scale_f32 v49, s2, v28, v37, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v50, v40
	v_div_scale_f32 v50, null, v37, v37, v30
	v_div_fixup_f32 v25, v38, v37, v25
	v_fma_f32 v38, -v53, v47, v43
	v_mul_f32_e32 v52, v49, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v53, v50
	v_fma_f32 v54, -v51, v41, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v38, v38, v45, v47
	v_div_scale_f32 v45, s3, v29, v37, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v54, v41
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v26, v38, v37, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v47, -v50, v53, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v26, 0, v26, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v53, v47, v53
	v_mul_f32_e32 v39, v44, v42
	v_div_scale_f32 v47, null, v37, v37, v31
	v_fma_f32 v43, -v48, v39, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v39, v43, v42
	v_fma_f32 v43, -v46, v52, v49
	v_fma_f32 v38, -v48, v39, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v52, v43, v40 :: v_dual_mul_f32 v43, v45, v41
	v_div_scale_f32 v44, s5, v30, v37, v30
	v_div_fmas_f32 v38, v38, v42, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v46, v52, v49
	v_fma_f32 v42, -v51, v43, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v48, v44, v53
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v27, v38, v37, v27
	v_div_fmas_f32 v39, v39, v40, v52
	v_fmac_f32_e32 v43, v42, v41
	v_fma_f32 v42, -v50, v48, v44
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v46, v47
	v_div_scale_f32 v49, null, v37, v37, v32
	v_fma_f32 v38, -v51, v43, v45
	v_fmac_f32_e32 v48, v42, v53
	v_div_scale_f32 v51, null, v37, v37, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v49
	v_div_fmas_f32 v38, v38, v41, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v41, -v50, v48, v44
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v52, -v47, v46, 1.0
	v_div_fixup_f32 v28, v39, v37, v28
	v_div_scale_f32 v39, s2, v31, v37, v31
	v_div_fmas_f32 v41, v41, v53, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v46, v52, v46
	v_fma_f32 v42, -v49, v40, 1.0
	v_div_scale_f32 v44, s3, v32, v37, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v30, v41, v37, v30
	v_rcp_f32_e32 v41, v51
	v_fmac_f32_e32 v40, v42, v40
	v_div_scale_f32 v42, null, v37, v37, v9
	v_div_fixup_f32 v29, v38, v37, v29
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v50, v44, v40
	v_rcp_f32_e32 v45, v42
	v_div_scale_f32 v53, null, v37, v37, v12
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v51, v41, 1.0
	v_fma_f32 v38, -v49, v50, v44
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v27, 0, v27, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v55, v53
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v28, 0, v28, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v41, v52, v41
	v_dual_mul_f32 v43, v39, v46 :: v_dual_fmac_f32 v50, v38, v40
	v_div_scale_f32 v38, s4, v9, v37, v9
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v29, 0, v29, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v48, -v47, v43, v39
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v30, 0, v30, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v43, v48, v46
	v_fma_f32 v48, -v42, v45, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v47, v43, v39
	v_div_scale_f32 v47, null, v37, v37, v11
	v_fmac_f32_e32 v45, v48, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v46, v43
	v_rcp_f32_e32 v48, v47
	v_fma_f32 v43, -v49, v50, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v44, v38, v45
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v46, s2, v10, v37, v10
	v_div_fmas_f32 v40, v43, v40, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v42, v44, v38
	v_div_fixup_f32 v31, v39, v37, v31
	v_mul_f32_e32 v54, v46, v41
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v49, -v47, v48, 1.0
	v_div_fixup_f32 v32, v40, v37, v32
	v_fmac_f32_e32 v44, v52, v45
	v_fma_f32 v40, -v53, v55, 1.0
	v_fma_f32 v43, -v51, v54, v46
	v_fmac_f32_e32 v48, v49, v48
	v_div_scale_f32 v49, s5, v11, v37, v11
	v_fma_f32 v38, -v42, v44, v38
	v_div_scale_f32 v42, null, v37, v37, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v50, v49, v48
	v_dual_fmac_f32 v54, v43, v41 :: v_dual_fmac_f32 v55, v40, v55
	v_div_scale_f32 v40, s3, v12, v37, v12
	v_fma_f32 v39, -v47, v50, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v43, -v51, v54, v46
	s_mov_b32 vcc_lo, s4
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v31, 0, v31, s1
	v_cndmask_b32_e64 v32, 0, v32, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v50, v39, v48
	v_rcp_f32_e32 v39, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v39, 1.0
	v_fmac_f32_e32 v39, v46, v39
	v_div_fmas_f32 v38, v38, v45, v44
	s_mov_b32 vcc_lo, s2
	v_mul_f32_e32 v44, v40, v55
	v_div_fmas_f32 v41, v43, v41, v54
	v_fma_f32 v43, -v47, v50, v49
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v46, s2, v13, v37, v13
	v_div_fixup_f32 v9, v38, v37, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v43, v43, v48, v50
	v_fma_f32 v48, -v53, v44, v40
	v_mul_f32_e32 v38, v46, v39
	v_div_scale_f32 v45, null, v37, v37, v14
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v44, v48, v55
	v_fma_f32 v48, -v42, v38, v46
	v_rcp_f32_e32 v47, v45
	v_div_fixup_f32 v10, v41, v37, v10
	v_div_fixup_f32 v11, v43, v37, v11
	v_fma_f32 v40, -v53, v44, v40
	v_fmac_f32_e32 v38, v48, v39
	v_div_scale_f32 v48, null, v37, v37, v16
	v_div_scale_f32 v43, null, v37, v37, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v40, v40, v55, v44
	v_rcp_f32_e32 v50, v48
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v41, -v45, v47, 1.0
	v_rcp_f32_e32 v49, v43
	v_div_fixup_f32 v12, v40, v37, v12
	v_fma_f32 v40, -v42, v38, v46
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	v_cndmask_b32_e64 v10, 0, v10, s1
	v_cndmask_b32_e64 v11, 0, v11, s1
	v_cndmask_b32_e64 v12, 0, v12, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v38, v40, v39, v38
	v_div_scale_f32 v39, null, v37, v37, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v43, v49, 1.0
	v_div_scale_f32 v40, s2, v15, v37, v15
	v_div_fixup_f32 v13, v38, v37, v13
	v_fma_f32 v38, -v48, v50, 1.0
	v_fmac_f32_e32 v47, v41, v47
	v_div_scale_f32 v41, s4, v14, v37, v14
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v50, v38, v50
	v_div_scale_f32 v38, s3, v16, v37, v16
	v_mul_f32_e32 v44, v41, v47
	v_div_scale_f32 v53, s4, v1, v37, v1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v42, -v45, v44, v41
	v_fmac_f32_e32 v44, v42, v47
	v_rcp_f32_e32 v42, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v45, v44, v41
	v_div_fmas_f32 v41, v41, v47, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v39, v42, 1.0
	v_fmac_f32_e32 v49, v46, v49
	v_div_scale_f32 v46, null, v37, v37, v2
	v_mul_f32_e32 v47, v38, v50
	v_dual_fmac_f32 v42, v51, v42 :: v_dual_mul_f32 v45, v40, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v52, v46
	v_div_scale_f32 v51, null, v37, v37, v3
	v_mul_f32_e32 v56, v53, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v44, -v43, v45, v40
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v55, v51
	v_div_fixup_f32 v14, v41, v37, v14
	v_fma_f32 v41, -v39, v56, v53
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v54, -v46, v52, 1.0
	v_fmac_f32_e32 v45, v44, v49
	v_fma_f32 v44, -v48, v47, v38
	v_fmac_f32_e32 v56, v41, v42
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v52, v54, v52
	v_fma_f32 v40, -v43, v45, v40
	v_fmac_f32_e32 v47, v44, v50
	v_div_scale_f32 v54, s5, v2, v37, v2
	v_fma_f32 v44, -v51, v55, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v40, v40, v49, v45
	v_fma_f32 v38, -v48, v47, v38
	v_div_scale_f32 v45, null, v37, v37, v4
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v43, v54, v52
	v_div_fmas_f32 v38, v38, v50, v47
	v_rcp_f32_e32 v47, v45
	v_fmac_f32_e32 v55, v44, v55
	v_div_scale_f32 v44, s2, v3, v37, v3
	v_fma_f32 v41, -v46, v43, v54
	v_div_fixup_f32 v15, v40, v37, v15
	v_fma_f32 v39, -v39, v56, v53
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v16, v38, v37, v16
	v_div_scale_f32 v49, null, v37, v37, v8
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v45, v47, 1.0
	v_div_fmas_f32 v39, v39, v42, v56
	s_mov_b32 vcc_lo, s5
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	v_cndmask_b32_e64 v16, 0, v16, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v47, v40, v47
	v_fmac_f32_e32 v43, v41, v52
	v_mul_f32_e32 v41, v44, v55
	v_div_scale_f32 v40, null, v37, v37, v6
	v_div_fixup_f32 v1, v39, v37, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v46, v43, v54
	v_fma_f32 v46, -v51, v41, v44
	v_div_scale_f32 v39, null, v37, v37, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v42, v42, v52, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v41, v46, v55
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v2, v42, v37, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v51, v41, v44
	v_rcp_f32_e32 v44, v40
	v_div_scale_f32 v42, null, v37, v37, v7
	v_rcp_f32_e32 v51, v49
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v46, v42
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v40, v44, 1.0
	v_fmac_f32_e32 v44, v50, v44
	v_div_fmas_f32 v38, v38, v55, v41
	v_rcp_f32_e32 v41, v39
	v_div_scale_f32 v43, vcc_lo, v4, v37, v4
	v_div_scale_f32 v50, s3, v6, v37, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v3, v38, v37, v3
	v_fma_f32 v53, -v42, v46, 1.0
	v_fma_f32 v55, -v49, v51, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v56, v50, v44
	v_fma_f32 v38, -v39, v41, 1.0
	v_mul_f32_e32 v48, v43, v47
	v_fmac_f32_e32 v46, v53, v46
	v_div_scale_f32 v53, s4, v7, v37, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v38, v41
	v_div_scale_f32 v38, s2, v5, v37, v5
	v_fma_f32 v52, -v45, v48, v43
	v_fmac_f32_e32 v51, v55, v51
	v_div_scale_f32 v55, s5, v8, v37, v8
	v_mul_f32_e32 v54, v38, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v48, v52, v47 :: v_dual_mul_f32 v57, v53, v46
	v_mul_f32_e32 v58, v55, v51
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v52, -v39, v54, v38
	v_fma_f32 v43, -v45, v48, v43
	v_fma_f32 v45, -v40, v56, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v54, v52, v41
	v_fma_f32 v52, -v42, v57, v53
	v_fmac_f32_e32 v56, v45, v44
	v_div_fmas_f32 v43, v43, v47, v48
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v38, -v39, v54, v38
	v_fma_f32 v39, -v49, v58, v55
	v_fmac_f32_e32 v57, v52, v46
	v_fma_f32 v40, -v40, v56, v50
	v_div_fixup_f32 v4, v43, v37, v4
	v_div_fmas_f32 v38, v38, v41, v54
	v_fmac_f32_e32 v58, v39, v51
	v_fma_f32 v39, -v42, v57, v53
	s_mov_b32 vcc_lo, s3
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v40, v40, v44, v56
	v_fma_f32 v41, -v49, v58, v55
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v38, v37, v5
	v_div_fmas_f32 v39, v39, v46, v57
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v40, v37, v6
	v_div_fmas_f32 v41, v41, v51, v58
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s77, v35
	.loc	1 843 24                        ; attention.py:843:24
	v_add_lshl_u32 v35, v36, v35, 2
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v7, v39, v37, v7
	.loc	1 848 17                        ; attention.py:848:17
	s_and_b32 s5, s83, 0xffff
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v8, v41, v37, v8
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 848 17                        ; attention.py:848:17
	v_add_nc_u32_e32 v37, 8, v35
	v_add_nc_u32_e32 v38, 16, v35
	v_cndmask_b32_e32 v39, 0x80000000, v35, vcc_lo
	s_mov_b32 s4, s82
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 848 17                        ; attention.py:848:17
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	s_clause 0x2
	buffer_store_b32 v17, v39, s[4:7], 0 offen
	buffer_store_b32 v18, v37, s[4:7], 0 offen
	buffer_store_b32 v19, v38, s[4:7], 0 offen
	v_add_nc_u32_e32 v17, 24, v35
	v_add_nc_u32_e32 v18, 32, v35
	v_add_nc_u32_e32 v19, 40, v35
	v_add_nc_u32_e32 v37, 48, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_add_nc_u32 v38, 56, v35
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v6, 0, v6, s1
	v_cndmask_b32_e64 v7, 0, v7, s1
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s77, v34
	.loc	1 848 17                        ; attention.py:848:17
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	s_clause 0x4
	buffer_store_b32 v20, v17, s[4:7], 0 offen
	buffer_store_b32 v21, v18, s[4:7], 0 offen
	buffer_store_b32 v22, v19, s[4:7], 0 offen
	buffer_store_b32 v23, v37, s[4:7], 0 offen
	buffer_store_b32 v24, v38, s[4:7], 0 offen
	v_add_lshl_u32 v17, v36, v34, 2
	v_add_nc_u32_e32 v18, 0x48, v35
	v_add_nc_u32_e32 v19, 0x50, v35
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 848 17                        ; attention.py:848:17
	v_add_nc_u32_e32 v20, 0x58, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_cndmask_b32 v18, 0x80000000, v18
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	v_add_nc_u32_e32 v21, 0x60, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	s_clause 0x2
	buffer_store_b32 v25, v17, s[4:7], 0 offen
	buffer_store_b32 v26, v18, s[4:7], 0 offen
	buffer_store_b32 v27, v19, s[4:7], 0 offen
	v_add_nc_u32_e32 v18, 0x68, v35
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s2, s77, v33
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e32 v17, 0x80000000, v21, vcc_lo
	buffer_store_b32 v28, v20, s[4:7], 0 offen
	v_add_nc_u32_e32 v19, 0x70, v35
	v_add_nc_u32_e32 v20, 0x78, v35
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	buffer_store_b32 v29, v17, s[4:7], 0 offen
	v_add_lshl_u32 v17, v36, v33, 2
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s3, s77, v0
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	buffer_store_b32 v30, v18, s[4:7], 0 offen
	v_add_nc_u32_e32 v18, 0x88, v35
	v_add_lshl_u32 v0, v36, v0, 2
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s2
	.loc	1 848 17                        ; attention.py:848:17
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x2
	buffer_store_b32 v31, v19, s[4:7], 0 offen
	buffer_store_b32 v32, v20, s[4:7], 0 offen
	buffer_store_b32 v9, v17, s[4:7], 0 offen
	v_add_nc_u32_e32 v9, 0x90, v35
	v_cndmask_b32_e32 v17, 0x80000000, v18, vcc_lo
	v_add_nc_u32_e32 v18, 0x98, v35
	v_add_nc_u32_e32 v19, 0xa0, v35
	v_add_nc_u32_e32 v20, 0xa8, v35
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_store_b32 v10, v17, s[4:7], 0 offen
	v_dual_cndmask_b32 v10, 0x80000000, v18 :: v_dual_cndmask_b32 v17, 0x80000000, v19
	v_cndmask_b32_e32 v18, 0x80000000, v20, vcc_lo
	buffer_store_b32 v11, v9, s[4:7], 0 offen
	v_add_nc_u32_e32 v9, 0xb0, v35
	s_clause 0x2
	buffer_store_b32 v12, v10, s[4:7], 0 offen
	buffer_store_b32 v13, v17, s[4:7], 0 offen
	buffer_store_b32 v14, v18, s[4:7], 0 offen
	v_add_nc_u32_e32 v10, 0xb8, v35
	v_add_nc_u32_e32 v11, 0xc8, v35
	v_add_nc_u32_e32 v12, 0xd0, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s3
	.loc	1 848 17                        ; attention.py:848:17
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v9, s[4:7], 0 offen
	buffer_store_b32 v16, v10, s[4:7], 0 offen
	buffer_store_b32 v1, v0, s[4:7], 0 offen
	buffer_store_b32 v2, v11, s[4:7], 0 offen
	buffer_store_b32 v3, v12, s[4:7], 0 offen
	v_add_nc_u32_e32 v0, 0xd8, v35
	v_add_nc_u32_e32 v1, 0xe0, v35
	v_add_nc_u32_e32 v2, 0xe8, v35
	v_add_nc_u32_e32 v3, 0xf0, v35
	v_add_nc_u32_e32 v9, 0xf8, v35
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
.Ltmp138:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 252
		.amdhsa_next_free_sgpr 99
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 252
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 99
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 16916
; TotalNumSgprs: 101
; NumVgprs: 252
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 101
; NumVGPRsForWavesPerEU: 252
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
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
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
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
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
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
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
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
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
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp71-.Lfunc_begin0
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
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp71-.Lfunc_begin0
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
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
        .size:           1
        .value_kind:     by_value
      - .offset:         117
        .size:           1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     101
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     252
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
