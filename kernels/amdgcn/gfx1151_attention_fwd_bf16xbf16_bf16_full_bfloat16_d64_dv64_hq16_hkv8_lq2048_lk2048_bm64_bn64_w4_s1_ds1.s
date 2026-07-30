	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[80:83], s[0:1], 0x5c
	s_load_b128 s[76:79], s[0:1], 0x30
	v_dual_mov_b32 v52, 0x5410 :: v_dual_and_b32 v51, 7, v0
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v50, 3, v0
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v146, 16, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_lshlrev_b32_e32 v49, 3, v51
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[88:89], s[0:1], 0x10
	v_mov_b32_e32 v18, v17
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s97, s2, 6
	.loc	1 597 26                        ; attention.py:597:26
	s_lshl_b32 s2, s3, 11
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s97, v50
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s96, s97, s2
	s_mov_b32 s87, 0x31027000
	s_mov_b32 s86, 0x7ffffffe
	v_dual_mov_b32 v53, 0x7632 :: v_dual_lshlrev_b32 v54, 1, v0
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v1
	.loc	1 598 26                        ; attention.py:598:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[129:130], null, s80, v50, v[49:50]
	s_mul_i32 s8, s80, s96
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e64 s2, s80, v49
	v_dual_mov_b32 v20, v17 :: v_dual_and_b32 v145, 15, v0
	v_dual_mov_b32 v22, v17 :: v_dual_and_b32 v147, 0x60, v0
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[130:131], null, s80, 48, v[129:130]
	v_lshl_add_u32 v143, s80, 4, v129
	v_lshl_add_u32 v144, s80, 5, v129
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v1, v129, s8, 1
	s_mov_b32 s84, s4
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s4, vcc_lo, s2
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v2, v143, s8, 1
	v_add_lshl_u32 v3, v144, s8, 1
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
	v_dual_mov_b32 v21, v17 :: v_dual_lshlrev_b32 v148, 2, v0
	s_lshr_b32 s0, s0, 28
	v_dual_mov_b32 v28, v17 :: v_dual_and_b32 v57, 1, v0
	s_add_i32 s0, s3, s0
	v_bfe_i32 v63, v0, 2, 1
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s1, s0, -16
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s8, s0, 4
	v_cmp_eq_u32_e64 s0, 0, v146
	v_bfe_i32 v66, v0, 5, 1
	v_dual_mov_b32 v26, v17 :: v_dual_and_b32 v55, 0x70, v0
	v_dual_mov_b32 v19, v17 :: v_dual_lshlrev_b32 v56, 9, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v52, 0x1054, v52, s0
	v_bfe_i32 v58, v0, 0, 1
	v_dual_mov_b32 v30, v17 :: v_dual_and_b32 v59, 28, v0
	v_dual_mov_b32 v23, v17 :: v_dual_lshlrev_b32 v60, 5, v0
	v_dual_mov_b32 v32, v17 :: v_dual_lshlrev_b32 v61, 3, v0
	v_dual_mov_b32 v27, v17 :: v_dual_and_b32 v64, 8, v0
	v_bfe_i32 v65, v0, 3, 1
	v_dual_mov_b32 v31, v17 :: v_dual_lshlrev_b32 v68, 7, v145
	v_dual_mov_b32 v12, v17 :: v_dual_lshlrev_b32 v69, 6, v147
	v_dual_mov_b32 v13, v17 :: v_dual_lshlrev_b32 v76, 6, v146
	v_dual_mov_b32 v14, v17 :: v_dual_lshlrev_b32 v51, 4, v51
	v_dual_mov_b32 v15, v17 :: v_dual_and_b32 v66, 0x2040, v66
	v_dual_mov_b32 v16, v17 :: v_dual_lshlrev_b32 v151, 3, v145
	v_dual_mov_b32 v4, v17 :: v_dual_lshlrev_b32 v57, 6, v57
	v_dual_mov_b32 v6, v17 :: v_dual_and_b32 v73, 0x7c, v148
	v_dual_mov_b32 v8, v17 :: v_dual_lshlrev_b32 v75, 2, v147
	v_dual_mov_b32 v134, v17 :: v_dual_and_b32 v63, 0x2040, v63
	v_lshl_or_b32 v52, v52, 8, v52
	v_cndmask_b32_e64 v53, 0x3276, v53, s0
	v_dual_mov_b32 v24, v17 :: v_dual_lshlrev_b32 v149, 4, v0
	v_dual_mov_b32 v25, v17 :: v_dual_and_b32 v62, 4, v0
	v_dual_mov_b32 v9, v17 :: v_dual_lshlrev_b32 v72, 5, v146
	v_dual_mov_b32 v10, v17 :: v_dual_and_b32 v67, 0x70, v54
	v_dual_mov_b32 v11, v17 :: v_dual_and_b32 v60, 0x60, v60
	v_dual_mov_b32 v2, v17 :: v_dual_and_b32 v71, 0x1b8, v148
	v_dual_mov_b32 v5, v17 :: v_dual_and_b32 v52, 0x540054, v52
	v_dual_mov_b32 v132, v17 :: v_dual_and_b32 v61, 0x310, v61
	v_lshrrev_b32_e32 v70, 1, v55
	v_lshrrev_b32_e32 v74, 3, v147
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s3, s3, s1
	.loc	1 599 26                        ; attention.py:599:26
	v_or3_b32 v69, v68, v69, v51
	v_or_b32_e32 v153, v51, v68
	v_lshl_or_b32 v51, v55, 6, v151
	v_and_or_b32 v55, 0x1c00, v56, v57
	v_lshl_or_b32 v56, v147, 4, v73
	v_lshl_or_b32 v57, v59, 7, v75
	v_and_or_b32 v58, 0x1020, v58, v63
	v_lshl_or_b32 v63, v64, 4, v76
	v_and_or_b32 v64, 0x1020, v65, v66
	v_lshl_or_b32 v53, v53, 8, v53
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_u32 s1, s3, 0x10007
	.loc	1 629 13                        ; attention.py:629:13
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[135:136], null, s5, v50, v[49:50]
	.loc	1 569 19                        ; attention.py:569:19
	s_add_i32 s1, s3, s1
	v_dual_mov_b32 v1, v17 :: v_dual_and_b32 v54, 0x80, v54
	v_mov_b32_e32 v7, v17
	v_lshl_add_u32 v62, v62, 9, 0
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v67, v149, v67
	v_xor_b32_e32 v51, v51, v70
	v_or3_b32 v155, v55, v72, v71
	v_xor_b32_e32 v156, v56, v74
	v_or3_b32 v157, v57, v60, v59
	v_or3_b32 v158, v58, v63, v61
	v_xor_b32_e32 v55, v64, v60
	v_xor_b32_e32 v56, 16, v153
	v_xor_b32_e32 v57, 32, v153
	v_xor_b32_e32 v58, 48, v153
	v_xor_b32_e32 v59, 64, v153
	v_xor_b32_e32 v60, 0x50, v153
	v_xor_b32_e32 v61, 0x60, v153
	v_xor_b32_e32 v63, 0x70, v153
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[136:137], null, s81, v50, v[49:50]
	v_lshl_or_b32 v50, v52, 4, v52
	v_and_b32_e32 v52, 0x760076, v53
	.loc	1 569 19                        ; attention.py:569:19
	s_bfe_i32 s1, s1, 0x80000
	v_dual_mov_b32 v3, v17 :: v_dual_add_nc_u32 v154, 0, v67
	s_sext_i32_i16 s1, s1
	v_dual_mov_b32 v131, v17 :: v_dual_add_nc_u32 v160, 0, v57
	v_dual_mov_b32 v133, v17 :: v_dual_add_nc_u32 v162, 0, v59
	v_dual_mov_b32 v196, 0xff800000 :: v_dual_add_nc_u32 v65, 0, v69
	.loc	1 656 32                        ; attention.py:656:32
	s_lshl_b32 s10, s1, 10
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s1, s81, v49
	v_add3_u32 v49, v62, v54, v55
	v_dual_mov_b32 v192, 0xff800000 :: v_dual_add_nc_u32 v159, 0, v56
	v_dual_mov_b32 v194, 0xff800000 :: v_dual_add_nc_u32 v161, 0, v58
	v_dual_mov_b32 v190, 0xff800000 :: v_dual_add_nc_u32 v163, 0, v60
	v_dual_mov_b32 v193, 0xff800000 :: v_dual_add_nc_u32 v164, 0, v61
	v_add_nc_u32_e32 v165, 0, v63
	v_dual_mov_b32 v195, 0xff800000 :: v_dual_add_nc_u32 v166, 0, v51
	v_xor_b32_e32 v51, 8, v155
	v_xor_b32_e32 v53, 16, v155
	v_xor_b32_e32 v54, 24, v155
	v_xor_b32_e32 v55, 32, v155
	v_xor_b32_e32 v56, 40, v155
	v_xor_b32_e32 v57, 48, v155
	v_xor_b32_e32 v58, 56, v155
	v_xor_b32_e32 v59, 0x810, v156
	v_xor_b32_e32 v60, 4, v157
	v_xor_b32_e32 v61, 8, v157
	v_xor_b32_e32 v62, 12, v157
	v_xor_b32_e32 v63, 16, v157
	v_xor_b32_e32 v64, 20, v157
	v_and_b32_e32 v141, 0x5040504, v50
	v_lshl_or_b32 v50, v52, 4, v52
	.loc	1 599 26                        ; attention.py:599:26
	v_xad_u32 v66, v69, 16, 0
	v_xad_u32 v67, v69, 32, 0
	v_xad_u32 v68, v69, 48, 0
	v_xad_u32 v73, v69, 64, 0
	v_xad_u32 v75, 0x50, v69, 0
	v_xad_u32 v76, 0x60, v69, 0
	v_xad_u32 v69, 0x70, v69, 0
	v_add_nc_u32_e32 v167, 0, v51
	v_add_nc_u32_e32 v168, 0, v53
	v_add_nc_u32_e32 v169, 0, v54
	v_dual_mov_b32 v191, 0xff800000 :: v_dual_add_nc_u32 v170, 0, v55
	v_add_nc_u32_e32 v171, 0, v56
	v_add_nc_u32_e32 v172, 0, v57
	v_add_nc_u32_e32 v173, 0, v58
	v_add_nc_u32_e32 v174, 0, v59
	v_add_nc_u32_e32 v175, 0, v60
	v_add_nc_u32_e32 v176, 0, v61
	v_add_nc_u32_e32 v177, 0, v62
	v_add_nc_u32_e32 v178, 0, v63
	v_add_nc_u32_e32 v179, 0, v64
	v_add_nc_u32_e32 v185, v49, v146
	v_and_b32_e32 v142, 0x7060706, v50
	v_xor_b32_e32 v70, 24, v157
	v_xor_b32_e32 v71, 28, v157
	v_xor_b32_e32 v72, 32, v158
	v_xor_b32_e32 v74, 64, v158
	v_xor_b32_e32 v77, 0x60, v158
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[138:139], null, s5, 48, v[135:136]
	v_mad_u64_u32 v[139:140], null, s81, 48, v[136:137]
	.loc	1 656 32                        ; attention.py:656:32
	s_lshl_b32 s9, s8, 14
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s8, s83, s8
	.loc	1 676 27                        ; attention.py:676:27
	s_mul_i32 s3, s4, s3
	v_dual_mov_b32 v29, v17 :: v_dual_and_b32 v150, 0x78, v0
	v_lshl_add_u32 v152, v145, 1, 0
	v_add_nc_u32_e32 v180, 0, v70
	v_add_nc_u32_e32 v181, 0, v71
	v_add_nc_u32_e32 v182, 0, v72
	v_add_nc_u32_e32 v183, 0, v74
	v_add_nc_u32_e32 v184, 0, v77
	.loc	1 629 13                        ; attention.py:629:13
	v_lshl_add_u32 v186, s5, 4, v135
	v_lshl_add_u32 v187, s5, 5, v135
	v_lshl_add_u32 v188, s81, 4, v136
	v_lshl_add_u32 v189, s81, 5, v136
	v_dual_mov_b32 v137, 0xff800000 :: v_dual_mov_b32 v140, 0xff800000
	s_mov_b32 s68, 0
	.loc	1 656 32                        ; attention.py:656:32
	s_and_b32 s10, s10, 0xfffff800
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s82, s82, 0x3fb8aa3b
	.loc	1 674 25                        ; attention.py:674:25
	s_mul_i32 s4, s5, s97
	s_and_b32 s77, s77, 0xffff
	s_add_i32 s3, s3, s8
	s_mov_b32 s98, 0x76543210
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
	s_mov_b32 s99, s68
	s_and_b32 s85, s7, 0xffff
	s_and_b32 s89, s89, 0xffff
	s_mov_b32 s92, s76
	.loc	1 656 32                        ; attention.py:656:32
	s_add_i32 s76, s10, s9
	s_mov_b32 s93, s77
	s_add_i32 s77, s3, s4
	s_mov_b32 s84, s6
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v154, v[33:36]
	s_waitcnt vmcnt(2)
	ds_store_b128 v154, v[37:40] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v154, v[41:44] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v154, v[45:48] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v65
	ds_load_b128 v[37:40], v66
	ds_load_b128 v[41:44], v67
	ds_load_b128 v[45:48], v68
	ds_load_b128 v[49:52], v73
	ds_load_b128 v[53:56], v75
	ds_load_b128 v[57:60], v76
	ds_load_b128 v[61:64], v69
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 657 32                        ; attention.py:657:32
	s_add_i32 s83, s99, s76
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 s3, s77, s99
	.loc	1 657 32                        ; attention.py:657:32
	s_mul_i32 s4, s83, s80
	.loc	1 683 36                        ; attention.py:683:36
	v_add_lshl_u32 v66, s3, v135, 1
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v70, s4, v129, 1
	v_add_lshl_u32 v71, s4, v143, 1
	v_add_lshl_u32 v72, s4, v144, 1
	v_add_lshl_u32 v73, s4, v130, 1
	.loc	1 683 36                        ; attention.py:683:36
	v_dual_cndmask_b32 v128, 0x80000000, v66 :: v_dual_add_nc_u32 v105, 0, v156
	v_add_lshl_u32 v67, s3, v186, 1
	v_add_lshl_u32 v68, s3, v187, 1
	v_add_lshl_u32 v69, s3, v138, 1
	.loc	1 658 32                        ; attention.py:658:32
	v_cndmask_b32_e64 v66, 0x80000000, v70, s2
	v_cndmask_b32_e64 v70, 0x80000000, v71, s2
	v_cndmask_b32_e64 v74, 0x80000000, v72, s2
	v_cndmask_b32_e64 v78, 0x80000000, v73, s2
	.loc	1 683 36                        ; attention.py:683:36
	v_dual_cndmask_b32 v224, 0x80000000, v67 :: v_dual_cndmask_b32 v225, 0x80000000, v68
	v_cndmask_b32_e32 v226, 0x80000000, v69, vcc_lo
	.loc	1 658 32                        ; attention.py:658:32
	s_clause 0x3
	buffer_load_b128 v[66:69], v66, s[84:87], 0 offen
	buffer_load_b128 v[70:73], v70, s[84:87], 0 offen
	buffer_load_b128 v[74:77], v74, s[84:87], 0 offen
	buffer_load_b128 v[78:81], v78, s[84:87], 0 offen
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v104, s75 :: v_dual_add_nc_u32 v65, 0, v153
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v103, s74 :: v_dual_mov_b32 v102, s73
	v_dual_mov_b32 v101, s72 :: v_dual_mov_b32 v100, s71
	v_dual_mov_b32 v99, s70 :: v_dual_mov_b32 v98, s69
	v_dual_mov_b32 v97, s68 :: v_dual_add_nc_u32 v106, 0, v155
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v123.l, 0
	.loc	1 693 30                        ; attention.py:693:30
	s_mul_i32 s83, s83, s81
	.loc	1 685 25                        ; attention.py:685:25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v125.l, v123.l
	v_mov_b16_e32 v124.l, v123.l
	v_mov_b16_e32 v126.l, v123.l
	v_mov_b16_e64 v213.l, v123.l
	v_mov_b16_e64 v214.l, v123.l
	v_mov_b16_e64 v215.l, v123.l
	v_mov_b16_e32 v127.l, v123.l
	v_mov_b16_e64 v217.l, v123.l
	v_mov_b16_e64 v218.l, v123.l
	v_mov_b16_e64 v219.l, v123.l
	v_mov_b16_e64 v216.l, v123.l
	v_mov_b16_e64 v222.l, v123.l
	v_mov_b16_e64 v223.l, v123.l
	v_mov_b16_e64 v221.l, v123.l
	v_mov_b16_e64 v220.l, v123.l
	.loc	1 685 25                        ; attention.py:685:25
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt vmcnt(3)
	ds_store_b128 v154, v[66:69]
	s_waitcnt vmcnt(2)
	ds_store_b128 v154, v[70:73] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v154, v[74:77] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v154, v[78:81] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[70:73], v159
	ds_load_b128 v[66:69], v65
	ds_load_b128 v[107:110], v65 offset:2048
	ds_load_b128 v[111:114], v159 offset:2048
	ds_load_b128 v[119:122], v159 offset:4096
	ds_load_b128 v[115:118], v65 offset:4096
	ds_load_b128 v[197:200], v65 offset:6144
	ds_load_b128 v[201:204], v159 offset:6144
	ds_load_b128 v[209:212], v161
	ds_load_b128 v[205:208], v160
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[66:73], v[33:40], v[97:104]
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[107:114], v[33:40], v[97:104]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[115:122], v[33:40], v[97:104]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[197:204], v[33:40], v[97:104]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[97:100], v160 offset:2048
	ds_load_b128 v[101:104], v161 offset:2048
	ds_load_b128 v[111:114], v161 offset:4096
	ds_load_b128 v[107:110], v160 offset:4096
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[205:212], v[41:48], v[89:96]
	.loc	1 683 36                        ; attention.py:683:36
	buffer_load_b128 v[115:118], v128, s[92:95], 0 offen
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[97:104], v[41:48], v[81:88]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[97:100], v160 offset:6144
	ds_load_b128 v[101:104], v161 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[107:114], v[41:48], v[73:80]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[111:114], v163
	ds_load_b128 v[107:110], v162
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[97:104], v[41:48], v[65:72]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[97:100], v162 offset:2048
	ds_load_b128 v[101:104], v163 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[107:114], v[49:56], v[89:96]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[111:114], v163 offset:4096
	ds_load_b128 v[107:110], v162 offset:4096
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[97:104], v[49:56], v[81:88]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[97:100], v162 offset:6144
	ds_load_b128 v[101:104], v163 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[107:114], v[49:56], v[73:80]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[111:114], v165
	ds_load_b128 v[107:110], v164
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[97:104], v[49:56], v[65:72]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[97:100], v164 offset:2048
	ds_load_b128 v[101:104], v165 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[107:114], v[57:64], v[89:96]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[111:114], v165 offset:4096
	ds_load_b128 v[107:110], v164 offset:4096
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[97:104], v[57:64], v[81:88]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[97:100], v164 offset:6144
	ds_load_b128 v[101:104], v165 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[107:114], v[57:64], v[73:80]
	.loc	1 683 36                        ; attention.py:683:36
	s_clause 0x1
	buffer_load_b128 v[107:110], v224, s[92:95], 0 offen
	buffer_load_b128 v[111:114], v225, s[92:95], 0 offen
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[97:104], v[57:64], v[65:72]
	.loc	1 683 36                        ; attention.py:683:36
	buffer_load_b128 v[97:100], v226, s[92:95], 0 offen
	.loc	1 684 35                        ; attention.py:684:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt vmcnt(3)
	v_dual_cndmask_b32 v103, 0xff80ff80, v116 :: v_dual_cndmask_b32 v104, 0xff80ff80, v115
	v_dual_cndmask_b32 v115, 0xff80ff80, v118 :: v_dual_cndmask_b32 v116, 0xff80ff80, v117
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 684 35                        ; attention.py:684:35
	v_mov_b16_e32 v101.h, v103.h
	v_mov_b16_e32 v101.l, v104.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v102.h, v115.h
	v_mov_b16_e32 v102.l, v116.h
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e32 v125.h, v115.l
	v_mov_b16_e32 v124.h, v116.l
	v_mov_b16_e32 v126.h, v103.l
	v_mov_b16_e32 v123.h, v104.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v125
	v_cmp_neq_f32_e64 s3, 0xff800000, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_neq_f32_e64 s5, 0xff800000, v126
	v_cmp_neq_f32_e64 s11, 0xff800000, v123
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s23, vcc_lo, s4
	s_and_b32 s34, vcc_lo, s3
	s_and_b32 s35, vcc_lo, s5
	s_and_b32 s36, vcc_lo, s11
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	s_waitcnt vmcnt(2)
	v_dual_cndmask_b32 v108, 0xff80ff80, v108 :: v_dual_cndmask_b32 v107, 0xff80ff80, v107
	v_dual_cndmask_b32 v110, 0xff80ff80, v110 :: v_dual_cndmask_b32 v109, 0xff80ff80, v109
	s_waitcnt vmcnt(1)
	v_dual_cndmask_b32 v112, 0xff80ff80, v112 :: v_dual_cndmask_b32 v111, 0xff80ff80, v111
	v_dual_cndmask_b32 v114, 0xff80ff80, v114 :: v_dual_cndmask_b32 v113, 0xff80ff80, v113
	v_mov_b16_e32 v127.h, v107.l
	v_mov_b16_e64 v215.h, v108.l
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e64 v219.h, v112.l
	v_and_b32_e32 v197, 0xffff0000, v107
	v_mov_b16_e64 v217.h, v113.l
	v_and_b32_e32 v198, 0xffff0000, v113
	v_and_b32_e32 v199, 0xffff0000, v112
	v_mov_b16_e64 v213.h, v109.l
	v_mov_b16_e64 v214.h, v110.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s9, 0xff800000, v215
	v_cmp_neq_f32_e64 s6, 0xff800000, v127
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v218.h, v114.l
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v117, 0xff80ff80, v98 :: v_dual_cndmask_b32 v118, 0xff80ff80, v97
	v_dual_cndmask_b32 v119, 0xff80ff80, v100 :: v_dual_cndmask_b32 v120, 0xff80ff80, v99
	.loc	1 684 35                        ; attention.py:684:35
	v_mov_b16_e32 v98.l, v116.l
	v_mov_b16_e32 v98.h, v115.l
	v_mov_b16_e32 v97.l, v104.l
	v_mov_b16_e32 v97.h, v103.l
	v_mov_b16_e32 v100.l, v109.l
	v_mov_b16_e32 v100.h, v110.l
	v_mov_b16_e32 v99.l, v107.l
	v_mov_b16_e32 v99.h, v108.l
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v223.h, v117.l
	v_and_b32_e32 v202, 0xffff0000, v117
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v213
	v_cmp_neq_f32_e64 s8, 0xff800000, v214
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_2addr_b64 v166, v[97:98], v[99:100] offset1:16
	v_mov_b16_e32 v98.l, v109.h
	v_mov_b16_e32 v98.h, v110.h
	v_mov_b16_e32 v97.l, v107.h
	v_mov_b16_e32 v97.h, v108.h
	v_mov_b16_e32 v100.l, v113.l
	v_mov_b16_e32 v100.h, v114.l
	v_mov_b16_e32 v99.l, v111.l
	v_mov_b16_e32 v99.h, v112.l
	ds_store_2addr_b64 v166, v[101:102], v[97:98] offset0:64 offset1:80
	v_mov_b16_e32 v98.l, v120.l
	v_mov_b16_e32 v98.h, v119.l
	v_mov_b16_e32 v97.l, v118.l
	v_mov_b16_e32 v97.h, v117.l
	v_mov_b16_e32 v102.l, v113.h
	v_mov_b16_e32 v102.h, v114.h
	v_mov_b16_e32 v101.l, v111.h
	v_mov_b16_e32 v101.h, v112.h
	ds_store_2addr_b64 v166, v[99:100], v[97:98] offset0:32 offset1:48
	v_mov_b16_e32 v98.l, v120.h
	v_mov_b16_e32 v98.h, v119.h
	v_mov_b16_e32 v97.l, v118.h
	v_mov_b16_e32 v97.h, v117.h
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v99, 0xffff0000, v116
	v_and_b32_e32 v100, 0xffff0000, v103
	v_and_b32_e32 v103, 0xffff0000, v104
	v_and_b32_e32 v104, 0xffff0000, v115
	v_and_b32_e32 v115, 0xffff0000, v108
	.loc	1 684 35                        ; attention.py:684:35
	ds_store_2addr_b64 v166, v[101:102], v[97:98] offset0:96 offset1:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 683 36                        ; attention.py:683:36
	ds_load_b64 v[101:102], v106
	ds_load_b64 v[107:108], v167
	ds_load_b64 v[112:113], v168
	ds_load_b64 v[116:117], v169
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v97, 0, 1, s23
	s_and_b32 s18, vcc_lo, s7
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s22, 0xff800000, v99
	v_cmp_neq_f32_e64 s28, 0xff800000, v104
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v98, 0, 1, s34
	v_cndmask_b32_e64 v99, 0, 1, s35
	v_cndmask_b32_e64 v104, 0, 1, s18
	v_lshlrev_b16 v97.l, 8, v97.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s26, 0xff800000, v100
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v100, 0, 1, s36
	s_and_b32 s17, vcc_lo, s8
	s_and_b32 s24, vcc_lo, s9
	v_or_b16 v206.h, v98.l, v97.l
	v_mov_b16_e32 v97.l, v99.l
	v_mov_b16_e32 v99.l, v104.l
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v109, 0xffff0000, v109
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v106, 0, 1, s24
	.loc	1 683 36                        ; attention.py:683:36
	s_waitcnt lgkmcnt(2)
	v_lshlrev_b32_e32 v104, 16, v107
	.loc	1 685 25                        ; attention.py:685:25
	v_mov_b16_e32 v98.l, v100.l
	v_lshlrev_b16 v97.l, 8, v97.l
	s_and_b32 s25, vcc_lo, s6
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s29, 0xff800000, v109
	.loc	1 684 35 is_stmt 1              ; attention.py:684:35
	v_mul_f32_e32 v104, 0x3fb8aa3b, v104
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v109, 0, 1, s25
	v_or_b16 v206.l, v98.l, v97.l
	v_mov_b16_e32 v98.l, v106.l
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v216.h, v111.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v104, s82, v93
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s27, 0xff800000, v103
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_cndmask_b32_e64 v103, 0, 1, s17
	v_mov_b16_e32 v100.l, v109.l
	v_lshlrev_b16 v97.h, 8, v98.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s12, 0xff800000, v217
	v_cmp_neq_f32_e64 s13, 0xff800000, v218
	.loc	1 685 25                        ; attention.py:685:25
	v_mov_b16_e32 v97.l, v103.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s14, 0xff800000, v219
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v210.l, v100.l, v97.h
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_and_b32_e32 v100, 0xffff0000, v101
	v_and_b32_e32 v111, 0xffff0000, v111
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v97.l, 8, v97.l
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v114, 0xffff0000, v114
	v_mov_b16_e64 v222.h, v119.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s10, 0xff800000, v216
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	s_and_b32 s12, vcc_lo, s12
	v_or_b16 v210.h, v99.l, v97.l
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_lshlrev_b32_e32 v99, 16, v101
	v_lshlrev_b32_e32 v101, 16, v102
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s11, vcc_lo, s13
	s_and_b32 s13, vcc_lo, s14
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s42, 0xff800000, v111
	v_cmp_neq_f32_e64 s43, 0xff800000, v114
	.loc	1 684 35 is_stmt 1              ; attention.py:684:35
	v_mul_f32_e32 v101, 0x3fb8aa3b, v101
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v110, 0xffff0000, v110
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v111, 0, 1, s12
	v_cndmask_b32_e64 v114, 0, 1, s13
	.loc	1 685 34 is_stmt 0              ; attention.py:685:34
	v_cmp_neq_f32_e64 s20, 0xff800000, v222
	.loc	1 684 25 is_stmt 1              ; attention.py:684:25
	v_fmac_f32_e32 v101, s82, v91
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s33, 0xff800000, v110
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_cndmask_b32_e64 v110, 0, 1, s11
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s21, 0xff800000, v223
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s19, vcc_lo, s10
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_mov_b16_e64 v220.h, v118.l
	v_and_b32_e32 v118, 0xffff0000, v118
	ds_load_b64 v[121:122], v170
	ds_load_b64 v[127:128], v171
	ds_load_b64 v[200:201], v172
	ds_load_b64 v[203:204], v173
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s30, 0xff800000, v115
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_cndmask_b32_e64 v115, 0, 1, s19
	v_mov_b16_e32 v97.l, v110.l
	v_mov_b16_e32 v98.l, v114.l
	v_mov_b16_e32 v103.l, v111.l
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	s_waitcnt lgkmcnt(5)
	v_and_b32_e32 v111, 0xffff0000, v112
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s3, vcc_lo, s20
	s_and_b32 s5, vcc_lo, s21
	s_and_b32 s21, vcc_lo, s33
	.loc	1 683 36                        ; attention.py:683:36
	v_mov_b16_e64 v221.h, v120.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s46, 0xff800000, v118
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_cndmask_b32_e64 v118, 0, 1, s3
	v_cndmask_b32_e64 v205, 0, 1, s21
	v_mov_b16_e32 v106.l, v115.l
	v_lshlrev_b16 v97.l, 8, v97.l
	v_lshlrev_b16 v98.l, 8, v98.l
	.loc	1 684 35 is_stmt 1              ; attention.py:684:35
	v_mul_f32_e32 v111, 0x3fb8aa3b, v111
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v120, 0xffff0000, v120
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s37, vcc_lo, s22
	s_and_b32 s22, vcc_lo, s29
	v_or_b16 v97.h, v103.l, v97.l
	v_cndmask_b32_e64 v207, 0, 1, s22
	v_or_b16 v97.l, v106.l, v98.l
	v_mov_b16_e32 v98.l, v118.l
	v_mov_b16_e64 v118.l, v205.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v111, s82, v82
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s44, 0xff800000, v120
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_cndmask_b32_e64 v120, 0, 1, s5
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s16, 0xff800000, v221
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v110.h, 8, v118.l
	v_lshlrev_b16 v98.l, 8, v98.l
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s15, 0xff800000, v220
	.loc	1 685 25                        ; attention.py:685:25
	v_mov_b16_e32 v103.l, v120.l
	v_mov_b16_e64 v120.l, v207.l
	s_and_b32 s4, vcc_lo, s16
	s_and_b32 s38, vcc_lo, s26
	s_and_b32 s6, vcc_lo, s15
	s_and_b32 s20, vcc_lo, s42
	v_or_b16 v110.h, v120.l, v110.h
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	s_waitcnt lgkmcnt(3)
	v_and_b32_e32 v120, 0xffff0000, v121
	.loc	1 685 25                        ; attention.py:685:25
	v_cndmask_b32_e64 v124, 0, 1, s6
	v_cndmask_b32_e64 v125, 0, 1, s38
	v_cndmask_b32_e64 v209, 0, 1, s20
	v_lshlrev_b16 v103.l, 8, v103.l
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v120, 0x3fb8aa3b, v120
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v119, 0xffff0000, v119
	.loc	1 685 25                        ; attention.py:685:25
	v_mov_b16_e32 v110.l, v124.l
	s_and_b32 s39, vcc_lo, s27
	s_and_b32 s14, vcc_lo, s43
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v120, s82, v74
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s47, 0xff800000, v119
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_cndmask_b32_e64 v119, 0, 1, s4
	v_cndmask_b32_e64 v126, 0, 1, s39
	v_cndmask_b32_e64 v211, 0, 1, s14
	s_and_b32 s28, vcc_lo, s28
	s_and_b32 s7, vcc_lo, s47
	v_mov_b16_e32 v109.l, v119.l
	v_mov_b16_e32 v114.l, v126.l
	v_mov_b16_e64 v124.l, v211.l
	s_and_b32 s26, vcc_lo, s30
	s_and_b32 s10, vcc_lo, s46
	v_or_b16 v98.h, v109.l, v98.l
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_lshlrev_b32_e32 v109, 16, v112
	v_lshlrev_b32_e32 v112, 16, v113
	.loc	1 685 25                        ; attention.py:685:25
	v_add_nc_u32_e32 v205, 0, v157
	v_or_b16 v98.l, v110.l, v103.l
	v_mov_b16_e32 v103.l, v125.l
	v_mov_b16_e64 v125.l, v209.l
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v112, 0x3fb8aa3b, v112
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v118.h, 8, v124.l
	s_and_b32 s8, vcc_lo, s44
	v_lshlrev_b16 v103.l, 8, v103.l
	s_waitcnt lgkmcnt(0)
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v112, s82, v83
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s41, 0xff800000, v199
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_cndmask_b32_e64 v199, 0, 1, s26
	v_or_b16 v103.l, v114.l, v103.l
	s_barrier
	ds_store_2addr_b32 v105, v206, v210 offset1:32
	s_and_b32 s16, vcc_lo, s41
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v208, 0, 1, s16
	v_mov_b16_e64 v118.l, v208.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v118.l, 8, v118.l
	v_or_b16 v118.l, v125.l, v118.l
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_lshlrev_b32_e32 v125, 16, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v125, 0x3fb8aa3b, v125
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v106, 0xffff0000, v107
	v_lshlrev_b32_e32 v107, 16, v108
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v107, 0x3fb8aa3b, v107 :: v_dual_lshlrev_b32 v114, 16, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v114, 0x3fb8aa3b, v114 :: v_dual_fmac_f32 v107, s82, v95
	.loc	1 685 34                        ; attention.py:685:34
	v_cmp_neq_f32_e64 s40, 0xff800000, v198
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_cndmask_b32_e64 v198, 0, 1, s37
	.loc	1 684 25 is_stmt 1              ; attention.py:684:25
	v_fmac_f32_e32 v114, s82, v85
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s15, vcc_lo, s40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mov_b16_e64 v115.l, v198.l
	v_cndmask_b32_e64 v212, 0, 1, s15
	v_cndmask_b32_e64 v198, 0, 1, s10
	v_mov_b16_e64 v126.l, v212.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v118.h, v126.l, v118.h
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v126, 0xffff0000, v127
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v126, 0x3fb8aa3b, v126 :: v_dual_lshlrev_b32 v127, 16, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v127, 0x3fb8aa3b, v127
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v108, 0xffff0000, v108
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v126, s82, v78 :: v_dual_fmac_f32 v127, s82, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v108, 0x3fb8aa3b, v108
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v108, s82, v96
	.loc	1 685 34 is_stmt 1              ; attention.py:685:34
	v_cmp_neq_f32_e64 s31, 0xff800000, v197
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_cndmask_b32_e64 v197, 0, 1, s28
	s_and_b32 s27, vcc_lo, s31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e64 v110.l, v197.l
	v_cndmask_b32_e64 v197, 0, 1, s7
	v_lshlrev_b16 v103.h, 8, v110.l
	s_delay_alu instid0(VALU_DEP_2)
	v_lshlrev_b16 v124.h, 8, v197.l
	.loc	1 683 36 is_stmt 1              ; attention.py:683:36
	v_lshlrev_b32_e32 v197, 16, v200
	.loc	1 685 25                        ; attention.py:685:25
	v_mov_b16_e64 v110.l, v199.l
	v_cndmask_b32_e64 v199, 0, 1, s8
	v_or_b16 v103.h, v115.l, v103.h
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v115, 0xffff0000, v116
	v_lshlrev_b32_e32 v116, 16, v117
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v110.l, 8, v110.l
	v_or_b16 v124.h, v199.l, v124.h
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v199, 16, v201
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v115, 0x3fb8aa3b, v115
	v_dual_mul_f32 v197, 0x3fb8aa3b, v197 :: v_dual_mul_f32 v116, 0x3fb8aa3b, v116
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_fmac_f32_e32 v115, s82, v86
	.loc	1 685 34 is_stmt 1              ; attention.py:685:34
	v_cmp_neq_f32_e64 s45, 0xff800000, v202
	.loc	1 685 25 is_stmt 0              ; attention.py:685:25
	v_cndmask_b32_e64 v202, 0, 1, s27
	.loc	1 684 25 is_stmt 1              ; attention.py:684:25
	v_dual_fmac_f32 v197, s82, v65 :: v_dual_fmac_f32 v116, s82, v87
	.loc	1 685 25                        ; attention.py:685:25
	s_and_b32 s9, vcc_lo, s45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v119.l, v202.l
	v_cndmask_b32_e64 v213, 0, 1, s9
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v202, 0xffff0000, v203
	.loc	1 685 25                        ; attention.py:685:25
	v_or_b16 v110.l, v119.l, v110.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v124.l, v213.l
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v202, 0x3fb8aa3b, v202 :: v_dual_lshlrev_b32 v119, 16, v121
	.loc	1 683 36                        ; attention.py:683:36
	v_lshlrev_b32_e32 v121, 16, v122
	v_and_b32_e32 v122, 0xffff0000, v122
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 685 25                        ; attention.py:685:25
	v_lshlrev_b16 v123.h, 8, v124.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v202, s82, v70 :: v_dual_fmac_f32 v125, s82, v77
	.loc	1 684 35 is_stmt 0              ; attention.py:684:35
	v_mul_f32_e32 v106, 0x3fb8aa3b, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v122, 0x3fb8aa3b, v122
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	v_or_b16 v124.l, v198.l, v123.h
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v198, 0xffff0000, v200
	v_and_b32_e32 v200, 0xffff0000, v201
	v_lshlrev_b32_e32 v201, 16, v203
	v_lshlrev_b32_e32 v203, 16, v204
	.loc	1 685 25                        ; attention.py:685:25
	ds_store_2addr_b32 v105, v97, v98 offset0:64 offset1:96
	ds_store_2addr_b32 v174, v103, v110 offset1:32
	ds_store_2addr_b32 v174, v118, v124 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v97, v205
	ds_load_b32 v98, v175
	ds_load_b32 v103, v176
	ds_load_b32 v105, v177
	ds_load_b32 v110, v178
	ds_load_b32 v118, v179
	ds_load_b32 v124, v180
	ds_load_b32 v205, v181
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v203, 0x3fb8aa3b, v203
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v128, 0xffff0000, v128
	v_and_b32_e32 v204, 0xffff0000, v204
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v122, s82, v76 :: v_dual_and_b32 v113, 0xffff0000, v113
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v203, s82, v71 :: v_dual_mul_f32 v128, 0x3fb8aa3b, v128
	.loc	1 683 36                        ; attention.py:683:36
	v_and_b32_e32 v117, 0xffff0000, v117
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v204, 0x3fb8aa3b, v204 :: v_dual_mul_f32 v113, 0x3fb8aa3b, v113
	v_mul_f32_e32 v200, 0x3fb8aa3b, v200
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_dual_fmac_f32 v128, s82, v80 :: v_dual_mul_f32 v117, 0x3fb8aa3b, v117
	.loc	1 684 35                        ; attention.py:684:35
	v_dual_mul_f32 v121, 0x3fb8aa3b, v121 :: v_dual_fmac_f32 v204, s82, v72
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	s_waitcnt lgkmcnt(4)
	v_and_b32_e32 v72, 0x10000, v105
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v200, s82, v68 :: v_dual_and_b32 v79, 1, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v121, s82, v75 :: v_dual_mul_f32 v100, 0x3fb8aa3b, v100
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v83, 1, v105
	v_cmp_ne_u32_e64 s50, 0, v72
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u32_e64 s61, 1, v79
	v_lshrrev_b16 v65.l, 8, v97.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v100, s82, v90
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s53, 1, v83
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v83, 0xff800000, v116, s50
	.loc	1 685 25                        ; attention.py:685:25
	s_waitcnt lgkmcnt(1)
	v_and_b32_e32 v90, 0x1000000, v124
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v99, 0x3fb8aa3b, v99
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_dual_fmac_f32 v106, s82, v94 :: v_dual_and_b32 v77, 1, v97
	.loc	1 685 25 is_stmt 1              ; attention.py:685:25
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v91, 1, v205
	v_cmp_ne_u32_e64 s40, 0, v90
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v90, 0xff800000, v104, s61
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v99, s82, v89 :: v_dual_and_b32 v70, 0x10000, v98
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u32_e64 s65, 1, v77
	v_lshrrev_b16 v65.h, 8, v98.l
	v_cmp_eq_u32_e64 s31, 1, v91
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_ne_u32_e64 s59, 0, v70
	v_and_b16 v70.l, 1, v65.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v94, 0xff800000, v99, s65
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b16 v70.h, 1, v65.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v72, 0xff800000, v200, s40
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v199, 0x3fb8aa3b, v199
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s67, 1, v70.l
	v_and_b32_e32 v82, 0x1000000, v103
	v_cmp_eq_u16_e64 s64, 1, v70.h
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v109, 0x3fb8aa3b, v109
	.loc	1 684 25 is_stmt 0              ; attention.py:684:25
	v_fmac_f32_e32 v199, s82, v67
	.loc	1 686 26 is_stmt 1              ; attention.py:686:26
	v_cndmask_b32_e64 v95, 0xff800000, v100, s67
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v201, 0x3fb8aa3b, v201
	.loc	1 685 25                        ; attention.py:685:25
	v_lshrrev_b16 v67.l, 8, v110.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v91, 0xff800000, v106, s64
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v74, 0x10000, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v104, v94, v95 :: v_dual_fmac_f32 v201, s82, v69
.Ltmp2:
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v113, s82, v84
	v_dual_fmac_f32 v117, s82, v88 :: v_dual_and_b32 v84, 0x1000000, v105
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s42, 0, v74
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v65, 0xff800000, v201, s31
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s55, 0, v82
	v_and_b16 v74.l, 1, v67.l
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v109, s82, v81
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v69, 0x10000, v97
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v99, v72, v65 :: v_dual_mul_f32 v198, 0x3fb8aa3b, v198
.Ltmp4:
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v119, 0x3fb8aa3b, v119
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v71, 0x10000, v103
	v_and_b32_e32 v78, 0x1000000, v97
	v_cmp_ne_u32_e64 s52, 0, v84
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v198, s82, v66
	.loc	1 685 25                        ; attention.py:685:25
	v_lshrrev_b16 v66.h, 8, v105.l
	.loc	1 684 25                        ; attention.py:684:25
	v_dual_fmac_f32 v119, s82, v73 :: v_dual_and_b32 v102, 0xffff0000, v102
	.loc	1 685 25                        ; attention.py:685:25
	v_lshrrev_b16 v66.l, 8, v103.l
	v_cmp_eq_u16_e64 s56, 1, v74.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b16 v66.h, 1, v66.h
	.loc	1 684 35                        ; attention.py:684:35
	v_mul_f32_e32 v102, 0x3fb8aa3b, v102
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v76, 0x10000, v205
	v_lshrrev_b16 v67.h, 8, v118.l
	v_lshrrev_b16 v68.l, 8, v124.l
	v_cmp_eq_u16_e64 s58, 1, v66.h
	.loc	1 684 25                        ; attention.py:684:25
	v_fmac_f32_e32 v102, s82, v92
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v92, 0x1000000, v205
	v_lshrrev_b16 v68.h, 8, v205.l
	v_cmp_ne_u32_e64 s62, 0, v69
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v82, 0xff800000, v115, s58
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v88, 0x1000000, v118
	v_cmp_ne_u32_e64 s54, 0, v71
	v_cmp_ne_u32_e64 s66, 0, v78
	v_and_b16 v66.l, 1, v66.l
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v84, 0xff800000, v117, s52
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_ne_u32_e64 s44, 0, v88
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v88, 0xff800000, v113, s55
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v81, 1, v103
	v_and_b32_e32 v87, 1, v118
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v78, 0xff800000, v120, s56
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v89, 1, v124
	v_and_b32_e32 v80, 0x1000000, v98
	v_cmp_eq_u32_e64 s57, 1, v81
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v81, 0xff800000, v114, s53
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v85, 1, v110
	v_cmp_ne_u32_e64 s29, 0, v76
	v_cmp_eq_u32_e64 s45, 1, v87
	v_cmp_eq_u32_e64 s43, 1, v89
	v_cmp_ne_u32_e64 s30, 0, v92
	v_cmp_eq_u32_e64 s49, 1, v85
	v_and_b16 v74.h, 1, v67.h
	v_and_b16 v89.l, 1, v68.l
	v_and_b16 v89.h, 1, v68.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v96, 0xff800000, v101, s62
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v73, 0x10000, v110
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v92, 0xff800000, v107, s59
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v75, 0x10000, v124
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v87, 0xff800000, v112, s54
	.loc	1 685 25                        ; attention.py:685:25
	v_and_b32_e32 v86, 0x1000000, v110
	v_cmp_eq_u16_e64 s63, 1, v66.l
	v_cmp_ne_u32_e64 s47, 0, v73
	v_cmp_ne_u32_e64 s33, 0, v75
	v_cmp_ne_u32_e64 s60, 0, v80
	v_cmp_ne_u32_e64 s48, 0, v86
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v97, 0xff800000, v102, s66
	v_cndmask_b32_e64 v77, 0xff800000, v119, s49
	v_cndmask_b32_e64 v67, 0xff800000, v203, s29
	v_cndmask_b32_e64 v68, 0xff800000, v204, s30
	v_cndmask_b32_e64 v86, 0xff800000, v111, s63
	.loc	1 685 25                        ; attention.py:685:25
	v_cmp_eq_u16_e64 s51, 1, v74.h
	v_cmp_eq_u16_e64 s46, 1, v89.l
	v_cmp_eq_u16_e64 s41, 1, v89.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v93, 0xff800000, v108, s60
	v_cndmask_b32_e64 v85, 0xff800000, v109, s57
	v_cndmask_b32_e64 v79, 0xff800000, v121, s47
	v_cndmask_b32_e64 v80, 0xff800000, v122, s48
	v_cndmask_b32_e64 v73, 0xff800000, v125, s45
	v_cndmask_b32_e64 v75, 0xff800000, v127, s42
	v_cndmask_b32_e64 v76, 0xff800000, v128, s44
	v_cndmask_b32_e64 v69, 0xff800000, v197, s43
	v_cndmask_b32_e64 v71, 0xff800000, v199, s33
	v_cndmask_b32_e64 v74, 0xff800000, v126, s51
	v_cndmask_b32_e64 v70, 0xff800000, v198, s46
	v_cndmask_b32_e64 v66, 0xff800000, v202, s41
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v100, v67, v68
	v_max3_f32 v101, v86, v87, v88
	v_max3_f32 v102, v81, v82, v83
	v_max3_f32 v103, v84, v77, v78
	v_max3_f32 v105, v97, v90, v91
	v_max3_f32 v89, v79, v80, v73
	v_max3_f32 v98, v92, v93, v85
	v_max3_f32 v106, v74, v75, v76
	v_max3_f32 v107, v69, v70, v71
	v_max3_f32 v99, v99, v66, v100
	v_max3_f32 v100, v101, v102, v103
	v_max3_f32 v101, v104, v96, v105
.Ltmp6:
	.loc	1 686 26                        ; attention.py:686:26
	s_waitcnt lgkmcnt(0)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v89, v89, v106, v107
.Ltmp8:
	.loc	1 686 26                        ; attention.py:686:26
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v98, v101, v98, v100
	v_max3_f32 v89, v98, v89, v99
.Ltmp10:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v99.h, v123.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v98, v89, s98, 0xfedcba98 op_sel:[1,0]
.Ltmp12:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v101, v196, v89, v98
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v89, v95, v101
	v_sub_f32_e32 v98, v94, v101
	v_sub_f32_e32 v118, v73, v101
	v_sub_f32_e32 v124, v74, v101
	v_sub_f32_e32 v125, v75, v101
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v89, v89
	v_exp_f32_e32 v98, v98
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v126, v76, v101
	v_sub_f32_e32 v217, v65, v101
	v_sub_f32_e32 v218, v66, v101
	v_sub_f32_e32 v219, v67, v101
	v_sub_f32_e32 v128, v70, v101
	v_sub_f32_e32 v215, v71, v101
	v_sub_f32_e32 v220, v68, v101
	v_sub_f32_e32 v216, v72, v101
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v89, 0, v89, s67
	v_cndmask_b32_e64 v100, 0, v98, s65
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v98, v97, v101
	v_sub_f32_e32 v117, v82, v101
	v_sub_f32_e32 v115, v90, v101
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v99.l, v89.h
	v_cmp_o_f32_e64 s65, v89, v89
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v98, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_dual_sub_f32 v116, v81, v101 :: v_dual_and_b32 v99, 1, v99
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v99, v89, v99, 0x7fff
	v_mov_b16_e32 v89.h, v123.l
	v_mov_b16_e32 v89.l, v100.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v98, 0, v98, s66
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v99.h, 0x7fff, v99.h, s65
	v_cmp_o_f32_e64 s65, v100, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v89, 1, v89
	v_add3_u32 v89, v100, v89, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v99.l, 0x7fff, v89.h, s65
	.loc	1 686 26                        ; attention.py:686:26
	v_add_nc_u32_e32 v89, 0, v158
	ds_store_b128 v89, v[94:97]
	ds_store_b128 v89, v[77:80] offset:2048
	ds_store_b128 v182, v[90:93]
	ds_store_b128 v182, v[73:76] offset:2048
	ds_store_b128 v183, v[85:88]
	ds_store_b128 v183, v[69:72] offset:2048
	ds_store_b128 v184, v[81:84]
	ds_store_b128 v184, v[65:68] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[102:105], v185 offset:1024
	ds_load_b128 v[106:109], v185
	ds_load_b128 v[110:113], v185 offset:256
	ds_load_b128 v[119:122], v185 offset:1280
	ds_load_b128 v[197:200], v185 offset:512
	ds_load_b128 v[207:210], v185 offset:1536
	ds_load_b128 v[211:214], v185 offset:1792
	ds_load_b128 v[73:76], v185 offset:768
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v86, v86, v101
	v_sub_f32_e32 v96, v96, v101
	v_sub_f32_e32 v91, v91, v101
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v82.h, v123.l
	v_mov_b16_e32 v82.l, v98.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v70, v86
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v86.h, v123.l
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v127, v69, v101
	v_sub_f32_e32 v85, v85, v101
	v_dual_sub_f32 v77, v77, v101 :: v_dual_and_b32 v82, 1, v82
	v_sub_f32_e32 v93, v93, v101
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	s_waitcnt lgkmcnt(7)
	v_max_f32_e32 v94, v105, v105
	s_waitcnt lgkmcnt(6)
	v_max_f32_e32 v97, v109, v109
	v_max3_f32 v100, v106, v102, v107
	v_max3_f32 v114, v103, v108, v104
	s_waitcnt lgkmcnt(4)
	v_max_f32_e32 v65, v122, v122
	v_max_f32_e32 v67, v113, v113
	v_max_f32_e32 v66, v97, v94
	v_max3_f32 v68, v110, v119, v111
	s_waitcnt lgkmcnt(3)
	v_max_f32_e32 v69, v200, v200
.Ltmp14:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v81, v85
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v65, v67, v65
	v_max3_f32 v71, v100, v114, v66
	v_max3_f32 v66, v120, v112, v121
	s_waitcnt lgkmcnt(2)
	v_max_f32_e32 v67, v210, v210
.Ltmp16:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v82, v98, v82, 0x7fff
	v_mov_b16_e32 v85.h, v123.l
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v92, v92, v101
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v72, v68, v66, v65
	v_max3_f32 v65, v197, v207, v198
	v_max_f32_e32 v66, v69, v67
	v_max3_f32 v67, v208, v199, v209
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v68, v214, v214
.Ltmp18:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v69, v92
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v88, v88, v101
	v_sub_f32_e32 v87, v87, v101
.Ltmp19:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v97, v65, v67, v66
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v65, v76, v76
	v_max3_f32 v66, v73, v211, v74
	v_max3_f32 v67, v212, v75, v213
.Ltmp20:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v95, v99, s98, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v84, v84, v101 :: v_dual_max_f32 v65, v65, v68
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v68, v93
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v83, v83, v101
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_perm_b32 v89, v95, v99, v141
	v_perm_b32 v90, v95, v99, v142
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v100, v66, v67, v65
.Ltmp22:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v96
	v_exp_f32_e32 v66, v91
	v_exp_f32_e32 v67, v115
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v78, v78, v101
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v77, v77
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v80, v80, v101
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v99.h, v123.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v78, v78
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v65, 0, v65, s62
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s62, v98, v98
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v98, v71
.Ltmp24:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v66, s64
	v_cndmask_b32_e64 v77, 0, v77, s49
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v85.l, v65.h
	v_cmp_o_f32_e64 s64, v65, v65
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v98, v98 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp26:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v78, 0, v78, s56
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s49, v77, v77
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v98, v98, v98 :: v_dual_and_b32 v85, 1, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp28:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s56, v78, v78
	v_add3_u32 v85, v65, v85, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v65, 0, v67, s61
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v67.h, v123.l
	v_mov_b16_e32 v67.l, v66.h
	v_cmp_o_f32_e64 s61, v66, v66
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v71, v71, v98 :: v_dual_mov_b32 v98, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp30:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v67, 1, v67
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v98, v98 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp32:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v67, v66, v67, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v68, s60
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v68.h, v123.l
	v_mov_b16_e32 v68.l, v65.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v79, v79, v101
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s60, v65, v65
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v98, v98, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp34:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v68, 1, v68
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v72, v72, v98
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v98, v97
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp37:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v68, v65, v68, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v65, 0, v69, s59
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v69.h, v123.l
	v_mov_b16_e32 v69.l, v66.h
	v_cmp_o_f32_e64 s59, v66, v66
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v98, v98 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v98, v98, v98 :: v_dual_and_b32 v69, 1, v69
.Ltmp40:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v69, v66, v69, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v70, s63
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v70.h, v123.l
	v_mov_b16_e32 v70.l, v65.h
	v_cmp_o_f32_e64 s63, v65, v65
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v97, v97, v98 :: v_dual_mov_b32 v98, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp42:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v70, 1, v70
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v114, v125
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v98, v98 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp44:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v70, v65, v70, 0x7fff
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v65, 0, v81, s57
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v81.h, v123.l
	v_mov_b16_e32 v81.l, v66.h
	v_cmp_o_f32_e64 s57, v66, v66
	v_cndmask_b16 v67.l, 0x7fff, v70.h, s63
	v_mov_b16_e32 v86.l, v65.h
	v_mov_b16_e32 v70.h, v123.l
	v_and_b32_e32 v81, 1, v81
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v114, 0, v114, s42
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v98, v98, v98
.Ltmp46:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v86, 1, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v81, v66, v81, 0x7fff
	v_cndmask_b16 v66.h, 0x7fff, v82.h, s62
	v_cndmask_b16 v66.l, 0x7fff, v85.h, s64
	v_add3_u32 v86, v65, v86, 0x7fff
	v_cmp_o_f32_e64 s62, v65, v65
	v_cndmask_b16 v65.h, 0x7fff, v67.h, s61
	v_cndmask_b16 v65.l, 0x7fff, v68.h, s60
	v_cndmask_b16 v67.h, 0x7fff, v69.h, s59
	v_permlanex16_b32 v69, v66, s98, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v68.h, 0x7fff, v81.h, s57
	v_cndmask_b16 v68.l, 0x7fff, v86.h, s62
	v_cmp_o_f32_e64 s42, v114, v114
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v98, v100, v98
.Ltmp48:
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v91, v69, v66, v141
	v_perm_b32 v92, v69, v66, v142
	v_permlanex16_b32 v66, v65, s98, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v69, v67, s98, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_perm_b32 v93, v66, v65, v141
	v_perm_b32 v94, v66, v65, v142
	v_permlanex16_b32 v65, v68, s98, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v66.h, v123.l
	v_perm_b32 v95, v69, v67, v141
	v_perm_b32 v96, v69, v67, v142
	v_mov_b16_e32 v67.h, v123.l
	v_perm_b32 v81, v65, v68, v141
	v_perm_b32 v82, v65, v68, v142
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v65, v88
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v68.h, v123.l
	v_mov_b16_e32 v69.h, v123.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v65, 0, v65, s55
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v66.l, v65.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s55, v65, v65
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v65, v65, v66, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v66, v87
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v65.h, 0x7fff, v65.h, s55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v66, s54
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v67.l, v66.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s54, v66, v66
	v_and_b32_e32 v67, 1, v67
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v100, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v66, v66, v67, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v67, v117
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v65.l, 0x7fff, v66.h, s54
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v100, 0, v100, s44
	v_cndmask_b32_e64 v67, 0, v67, s58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v99.l, v100.h
	v_cmp_o_f32_e64 s44, v100, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v68.l, v67.h
	v_cmp_o_f32_e64 s57, v67, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v99, 1, v99
	v_and_b32_e32 v68, 1, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add3_u32 v99, v100, v99, 0x7fff
	v_mov_b16_e32 v100.h, v123.l
	v_mov_b16_e32 v100.l, v114.h
	v_add3_u32 v67, v67, v68, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v68, v116
	v_exp_f32_e32 v116, v127
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v99.h, 0x7fff, v99.h, s44
	v_and_b32_e32 v100, 1, v100
	v_cndmask_b16 v66.h, 0x7fff, v67.h, s57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_add3_u32 v100, v114, v100, 0x7fff
	v_mov_b16_e32 v114.h, v123.l
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v68, 0, v68, s53
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v116, 0, v116, s43
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v99.l, 0x7fff, v100.h, s42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v69.l, v68.h
	v_cmp_o_f32_e64 s53, v68, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s43, v116, v116
	v_and_b32_e32 v69, 1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v68, v68, v69, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v69, v84
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v66.l, 0x7fff, v68.h, s53
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v69, s52
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v70.l, v69.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s52, v69, v69
	v_and_b32_e32 v70, 1, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v69, v69, v70, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v70, v83
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v83.h, v123.l
	v_cndmask_b16 v67.h, 0x7fff, v69.h, s52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_permlanex16_b32 v69, v65, s98, 0xfedcba98 op_sel:[1,0]
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v70, 0, v70, s50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v84, v69, v65, v142
	v_mov_b16_e32 v83.l, v70.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s50, v70, v70
	v_and_b32_e32 v83, 1, v83
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v115, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v70, v70, v83, 0x7fff
	v_mov_b16_e32 v83.h, v123.l
	v_mov_b16_e32 v83.l, v78.h
	v_cndmask_b16 v67.l, 0x7fff, v70.h, s50
	v_mov_b16_e32 v70.h, v123.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v83, 1, v83
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v115, 0, v115, s46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v78, v78, v83, 0x7fff
	v_mov_b16_e32 v83.h, v123.l
	v_mov_b16_e32 v83.l, v77.h
	v_mov_b16_e32 v114.l, v115.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v68.h, 0x7fff, v78.h, s56
	.loc	1 688 24                        ; attention.py:688:24
	v_dual_max_f32 v78, v193, v193 :: v_dual_and_b32 v83, 1, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v114, 1, v114
	v_add3_u32 v77, v77, v83, 0x7fff
	v_perm_b32 v83, v69, v65, v141
	v_permlanex16_b32 v69, v67, s98, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v65, v66, s98, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v114, v115, v114, 0x7fff
	v_cndmask_b16 v68.l, 0x7fff, v77.h, s49
	v_mov_b16_e32 v77.h, v123.l
	v_perm_b32 v87, v69, v67, v141
	v_perm_b32 v88, v69, v67, v142
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v67, v80
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v85, v65, v66, v141
	v_perm_b32 v86, v65, v66, v142
	v_permlanex16_b32 v66, v68, s98, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v69.h, v123.l
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v80, v195, v195
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v65, v66, v68, v141
	v_perm_b32 v66, v66, v68, v142
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v67, 0, v67, s48
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v68.h, v123.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v68.l, v67.h
	v_cmp_o_f32_e64 s48, v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v68, 1, v68
	v_add3_u32 v67, v67, v68, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v68, v79
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v79, v194, v194
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v68, 0, v68, s47
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v69.l, v68.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s47, v68, v68
	v_and_b32_e32 v69, 1, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v68, v68, v69, 0x7fff
	v_cndmask_b16 v69.h, 0x7fff, v67.h, s48
	v_cndmask_b16 v69.l, 0x7fff, v68.h, s47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v68, v69, s98, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v67, v68, v69, v141
	v_perm_b32 v68, v68, v69, v142
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v69, v124
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v69, s51
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v70.l, v69.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s47, v69, v69
	v_and_b32_e32 v70, 1, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add3_u32 v69, v69, v70, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v70, v118
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v70, 0, v70, s45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v77.l, v70.h
	v_cmp_o_f32_e64 s45, v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v77, 1, v77
	v_add3_u32 v70, v70, v77, 0x7fff
	v_cndmask_b16 v77.h, 0x7fff, v69.h, s47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_cndmask_b16 v77.l, 0x7fff, v70.h, s45
	v_cmp_o_f32_e64 s45, v115, v115
	v_mov_b16_e32 v115.h, v123.l
	v_mov_b16_e32 v115.l, v116.h
	v_permlanex16_b32 v70, v77, s98, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v124.h, 0x7fff, v114.h, s45
	v_and_b32_e32 v115, 1, v115
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_perm_b32 v69, v70, v77, v141
	v_perm_b32 v70, v70, v77, v142
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v77, v192, v192
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v115, v116, v115, 0x7fff
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v116, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp50:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v124.l, 0x7fff, v115.h, s43
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v116, v116 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp52:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v221, v124, s98, 0xfedcba98 op_sel:[1,0]
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v115, v116, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v115, v71, v115
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v71, v98
	v_mov_b32_dpp v71, v71 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v100, v72 :: v_dual_max_f32 v71, v71, v71
	v_mov_b32_dpp v100, v100 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v98, v98, v71
	v_max_f32_e32 v100, v100, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max_f32_e32 v100, v72, v100
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v114, v97
.Ltmp57:
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v72, v99, s98, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v71, v72, v99, v141
	v_perm_b32 v72, v72, v99, v142
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v99, v100
	v_mov_b32_dpp v114, v114 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v99, v99 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v114, v114, v114 :: v_dual_max_f32 v99, v99, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v97, v97, v114 :: v_dual_mov_b32 v114, v115
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v116, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v114, v114 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v116, v116 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v114, v114, v114
	v_dual_max_f32 v222, v115, v114 :: v_dual_max_f32 v115, v116, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp62:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v192, v77, v222
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v114, v98
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v206, v97, v115
.Ltmp65:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v77.h, v123.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v127, v108, v192
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v114, v114 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp67:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v97, v109, v192
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v127, v127
.Ltmp68:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v114, v114, v114
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp69:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v97, v97
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v205, v98, v114
	v_max_f32_e32 v223, v100, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp71:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v195, v80, v205
	v_max_f32_e32 v193, v78, v223
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v78.h, v123.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v80, v220
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v97, 0, v97, s23
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v108, v213, v195 :: v_dual_sub_f32 v125, v120, v193
	v_sub_f32_e32 v202, v104, v192
	v_sub_f32_e32 v104, v75, v195
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v75, v216
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v203, v103, v192
	.loc	1 688 24 is_stmt 1              ; attention.py:688:24
	v_dual_max_f32 v194, v79, v206 :: v_dual_sub_f32 v99, v105, v192
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v103, v76, v195
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v76.h, v123.l
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v100, v110, v193
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_sub_f32_e32 v120, v197, v194
	v_dual_sub_f32 v98, v111, v193 :: v_dual_sub_f32 v111, v200, v194
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v75, 0, v75, s40
	v_dual_mov_b32 v200, v131 :: v_dual_sub_f32 v131, v196, v101
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v79.h, v123.l
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v80, 0, v80, s30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v76.l, v75.h
	v_cmp_o_f32_e64 s40, v75, v75
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v131, v131
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v126, v119, v193 :: v_dual_sub_f32 v105, v74, v195
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v76, 1, v76
	v_cmp_o_f32_e64 s30, v80, v80
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v128, v107, v192 :: v_dual_sub_f32 v117, v113, v193
	v_dual_sub_f32 v118, v112, v193 :: v_dual_sub_f32 v115, v209, v194
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v75, v75, v76, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v76, v215
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v113, v198, v194
	v_dual_sub_f32 v112, v199, v194 :: v_dual_sub_f32 v109, v212, v195
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v100, v100
	v_exp_f32_e32 v126, v126
	v_exp_f32_e32 v98, v98
	v_exp_f32_e32 v125, v125
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v204, v102, v192 :: v_dual_sub_f32 v121, v121, v193
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v76, 0, v76, s33
	v_mov_b32_e32 v199, v133
	.loc	1 688 24 is_stmt 1              ; attention.py:688:24
	v_max_f32_e32 v133, v140, v140
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v112, v112
	v_exp_f32_e32 v115, v115
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v77.l, v76.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v116, v208, v194
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s33, v76, v76
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v104, v104
	v_exp_f32_e32 v108, v108
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v77, 1, v77
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v201, v106, v192
	v_dual_sub_f32 v119, v122, v193 :: v_dual_sub_f32 v122, v207, v194
	v_sub_f32_e32 v107, v214, v195
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v76, v76, v77, 0x7fff
	v_cndmask_b16 v77.h, 0x7fff, v75.h, s40
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v106, v73, v195 :: v_dual_mov_b32 v197, v134
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v73, v221, v124, v141
	v_cndmask_b16 v77.l, 0x7fff, v76.h, s33
	v_perm_b32 v74, v221, v124, v142
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v128, v128
	v_exp_f32_e32 v203, v203
	v_exp_f32_e32 v99, v99
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v76, v77, s98, 0xfedcba98 op_sel:[1,0]
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v100, 0, v100, s25
	v_cndmask_b32_e64 v126, 0, v126, s27
	v_cndmask_b32_e64 v98, 0, v98, s24
	v_cndmask_b32_e64 v125, 0, v125, s26
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v75, v76, v77, v141
	v_perm_b32 v76, v76, v77, v142
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v77, v218
	v_exp_f32_e32 v118, v118
	v_exp_f32_e32 v121, v121
	v_exp_f32_e32 v105, v105
	v_exp_f32_e32 v109, v109
	v_exp_f32_e32 v202, v202
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v126, v100, v126 :: v_dual_add_f32 v125, v98, v125
.Ltmp73:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v120, v120
	v_exp_f32_e32 v122, v122
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v77, 0, v77, s41
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v113, v113
	v_exp_f32_e32 v116, v116
	v_exp_f32_e32 v111, v111
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v112, 0, v112, s12
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v78.l, v77.h
	v_cmp_o_f32_e64 s33, v77, v77
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v115, 0, v115, s15
	v_cndmask_b32_e64 v104, 0, v104, s4
	v_cndmask_b32_e64 v108, 0, v108, s8
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v78, 1, v78
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v110, v211, v195
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v128, 0, v128, s35
	v_cndmask_b32_e64 v203, 0, v203, s38
	v_cndmask_b32_e64 v99, 0, v99, s28
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v77, v77, v78, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v78, v217
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v118, 0, v118, s18
	v_cndmask_b32_e64 v121, 0, v121, s22
.Ltmp74:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v115, v112, v115
.Ltmp75:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v105, 0, v105, s5
	v_cndmask_b32_e64 v109, 0, v109, s9
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v104, v104, v108
	v_add_f32_e32 v108, v126, v125
.Ltmp77:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v117, v117
	v_exp_f32_e32 v119, v119
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v78, 0, v78, s31
	.loc	1 688 24 is_stmt 1              ; attention.py:688:24
	v_max_f32_e32 v133, v133, v206
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v202, 0, v202, s37
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v128, v128, v203
.Ltmp79:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v120, 0, v120, s19
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v79.l, v78.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v114, v210, v194
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s31, v78, v78
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v210, v97, v99
.Ltmp81:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v122, 0, v122, s20
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v79, 1, v79
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v114, v114
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v121, v118, v121
.Ltmp83:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v113, 0, v113, s13
	v_cndmask_b32_e64 v116, 0, v116, s16
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v78, v78, v79, 0x7fff
	v_cndmask_b16 v79.h, 0x7fff, v77.h, s33
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v111, 0, v111, s11
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v105, v105, v109
.Ltmp85:
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v134, s83, v188, 1
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v79.l, 0x7fff, v78.h, s31
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s31, 0xff800000, v196
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v114, 0, v114, s14
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v196, s83, v189, 1
	v_add_lshl_u32 v207, s83, v139, 1
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v78, v79, s98, 0xfedcba98 op_sel:[1,0]
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v131, 0, v131, s31
	v_mov_b32_e32 v198, v132
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v132, v191, v191
	.loc	1 694 30                        ; attention.py:694:30
	v_add_nc_u32_e32 v102, 0, v149
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v77, v78, v79, v141
	v_perm_b32 v78, v78, v79, v142
	v_mov_b16_e32 v79.h, v123.l
	v_mov_b16_e32 v79.l, v80.h
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v23, v23, v131
	v_mul_f32_e32 v24, v24, v131
	v_mul_f32_e32 v29, v29, v131
	v_mul_f32_e32 v1, v1, v131
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v79, 1, v79
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v17, v17, v131
	v_mul_f32_e32 v19, v19, v131
	v_mul_f32_e32 v20, v20, v131
	v_mul_f32_e32 v21, v21, v131
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v79, v80, v79, 0x7fff
	v_mov_b16_e32 v80.h, v123.l
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v123, v219
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v22, v22, v131
	v_dual_mul_f32 v25, v25, v131 :: v_dual_max_f32 v132, v132, v205
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v124.h, 0x7fff, v79.h, s30
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v26, v26, v131
	v_mul_f32_e32 v27, v27, v131
	v_mul_f32_e32 v28, v28, v131
	v_dual_mul_f32 v30, v30, v131 :: v_dual_add_f32 v211, v111, v114
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v123, 0, v123, s29
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v31, v31, v131 :: v_dual_add_f32 v122, v120, v122
	v_mul_f32_e32 v32, v32, v131
	v_mul_f32_e32 v9, v9, v131
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v80.l, v123.h
	v_cmp_o_f32_e64 s29, v123, v123
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v10, v10, v131 :: v_dual_sub_f32 v203, v140, v133
	v_dual_mul_f32 v11, v11, v131 :: v_dual_add_f32 v116, v113, v116
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v80, 1, v80
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v12, v12, v131
	v_mul_f32_e32 v15, v15, v131
	v_mul_f32_e32 v16, v16, v131
	v_mul_f32_e32 v2, v2, v131
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v80, v123, v80, 0x7fff
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v123, v190, v190
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v18, v18, v131
	v_mul_f32_e32 v4, v4, v131
	v_mul_f32_e32 v5, v5, v131
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v124.l, 0x7fff, v80.h, s29
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v6, v6, v131
	v_mul_f32_e32 v7, v7, v131
	v_dual_mul_f32 v8, v8, v131 :: v_dual_max_f32 v123, v123, v222
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v80, v124, s98, 0xfedcba98 op_sel:[1,0]
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v13, v13, v131
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v205, 0x80000000, v134, s1
	v_cndmask_b32_e64 v196, 0x80000000, v196, s1
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v117, 0, v117, s17
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v79, v80, v124, v141
	v_perm_b32 v80, v80, v124, v142
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v124, v137, v137
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v119, 0, v119, s21
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v134, 0x80000000, v207, s1
	buffer_load_b128 v[97:100], v205, s[88:91], 0 offen
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v106, v106
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v124, v124, v223
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v14, v14, v131
	v_mul_f32_e32 v3, v3, v131
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v131, s83, v136, 1
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v205, v117, v119
.Ltmp87:
	.loc	1 694 30                        ; attention.py:694:30
	s_clause 0x1
	buffer_load_b128 v[117:120], v196, s[88:91], 0 offen
	buffer_load_b128 v[111:114], v134, s[88:91], 0 offen
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v110, v110
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v206, 0x80000000, v131, s1
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v131, v201
	v_exp_f32_e32 v201, v204
	v_exp_f32_e32 v103, v103
	v_exp_f32_e32 v107, v107
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[206:209], v206, s[88:91], 0 offen
	v_dual_mov_b32 v196, v101 :: v_dual_sub_f32 v101, v190, v123
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v204, 0, v127, s34
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v115, v115, v211
.Ltmp89:
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v203, v203
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v131, 0, v131, s36
	v_cndmask_b32_e64 v201, 0, v201, s39
	v_cndmask_b32_e64 v103, 0, v103, s3
	v_cndmask_b32_e64 v107, 0, v107, s7
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s31, 0xff800000, v140
	v_cmp_neq_f32_e64 s33, 0xff800000, v191
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v127, v131, v201
.Ltmp91:
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v201, v101
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v101, 0, v106, s6
	v_cndmask_b32_e64 v106, 0, v110, s10
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v103, v103, v107
	v_dual_add_f32 v131, v204, v202 :: v_dual_add_f32 v110, v122, v116
	v_add_f32_e32 v109, v121, v205
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v101, v101, v106
	v_dual_add_f32 v103, v104, v103 :: v_dual_add_f32 v106, v127, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_f32_e32 v107, v131, v210
.Ltmp93:
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v203, 0, v203, s31
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v101, v101, v105
	v_dual_add_f32 v105, v108, v109 :: v_dual_sub_f32 v204, v191, v132
	v_mov_b32_e32 v191, v132
.Ltmp95:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v101, v101, v103
.Ltmp97:
	.loc	1 694 30                        ; attention.py:694:30
	s_barrier
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v204, v204
	v_mov_b32_e32 v140, v133
	.loc	1 689 25 is_stmt 0              ; attention.py:689:25
	v_cmp_neq_f32_e64 s29, 0xff800000, v190
.Ltmp98:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v109, v101
.Ltmp99:
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v134, v137, v124
	.loc	1 689 25 is_stmt 0              ; attention.py:689:25
	v_cmp_neq_f32_e64 s30, 0xff800000, v137
	v_dual_mov_b32 v190, v123 :: v_dual_mov_b32 v137, v124
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp100:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v109, v109 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v104, v106, v107 :: v_dual_mov_b32 v107, v105
.Ltmp102:
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v202, v134
	.loc	1 689 25 is_stmt 0              ; attention.py:689:25
	v_cndmask_b32_e64 v204, 0, v204, s33
.Ltmp103:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v101, v101, v109
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v103, v104
	v_mov_b32_dpp v107, v107 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp105:
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v201, 0, v201, s29
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s3, s99, 64
	s_cmpk_lt_u32 s99, 0x7c0
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v103, v103 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_mov_b32 s99, s3
.Ltmp107:
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v202, 0, v202, s30
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(0)
	ds_store_b128 v102, v[206:209]
	ds_store_b128 v102, v[97:100] offset:2048
	ds_store_b128 v102, v[117:120] offset:4096
	ds_store_b128 v102, v[111:114] offset:6144
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v103, v104, v103
	v_add_f32_e32 v104, v105, v107
	v_add_f32_e32 v106, v110, v115
.Ltmp109:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_dual_mov_b32 v107, v104 :: v_dual_mov_b32 v108, v106
	v_mov_b32_dpp v107, v107 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v108, v108 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v105, v106, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v108, v105
	v_mov_b32_dpp v108, v108 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v105, v105, v108
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v108, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v108, v108 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v132, v105, v108
.Ltmp116:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v106, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp117:
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v132, v198, v203
.Ltmp118:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v106, v106 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v103, v103, v106
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_dual_mov_b32 v109, v101 :: v_dual_add_f32 v104, v104, v107
	v_mov_b32_e32 v106, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v109, v109 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v106, v106 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v101, v101, v109
.Ltmp122:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v109, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v109, v109 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v107, v104 :: v_dual_add_f32 v134, v101, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v107, v107 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v131, v103, v106 :: v_dual_fmac_f32 v134, v197, v204
	s_delay_alu instid0(VALU_DEP_2)
	v_add_f32_e32 v133, v104, v107
.Ltmp124:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v99, v152 offset:608
	ds_load_u16_d16 v98, v152 offset:352
	ds_load_u16_d16 v107, v152 offset:768
	ds_load_u16_d16 v104, v152
	ds_load_u16_d16 v116, v152 offset:576
	ds_load_u16_d16 v117, v152 offset:832
	ds_load_u16_d16 v108, v152 offset:1024
	ds_load_u16_d16 v118, v152 offset:1088
	ds_load_u16_d16 v109, v152 offset:1280
	ds_load_u16_d16 v119, v152 offset:1344
	ds_load_u16_d16 v110, v152 offset:1536
	ds_load_u16_d16 v120, v152 offset:1600
	ds_load_u16_d16 v111, v152 offset:1792
	ds_load_u16_d16 v106, v152 offset:512
	ds_load_u16_d16 v105, v152 offset:256
	ds_load_u16_d16 v121, v152 offset:1856
	ds_load_u16_d16 v206, v152 offset:288
	ds_load_u16_d16 v205, v152 offset:32
	ds_load_u16_d16 v114, v152 offset:64
	ds_load_u16_d16 v115, v152 offset:320
	ds_load_u16_d16 v97, v152 offset:96
	ds_load_u16_d16 v207, v152 offset:544
	ds_load_u16_d16 v100, v152 offset:864
	ds_load_u16_d16 v101, v152 offset:1120
	ds_load_u16_d16 v102, v152 offset:1376
	ds_load_u16_d16 v103, v152 offset:1632
	ds_load_u16_d16 v208, v152 offset:800
	ds_load_u16_d16 v209, v152 offset:1056
	ds_load_u16_d16 v210, v152 offset:1312
	ds_load_u16_d16 v211, v152 offset:1568
	ds_load_u16_d16 v212, v152 offset:1824
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v104, v152 offset:128
	ds_load_u16_d16_hi v107, v152 offset:896
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v108, v152 offset:1152
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v109, v152 offset:1408
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v110, v152 offset:1664
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v111, v152 offset:1920
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v106, v152 offset:640
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v105, v152 offset:384
	ds_load_u16_d16 v113, v152 offset:2144
	ds_load_u16_d16_hi v116, v152 offset:704
	ds_load_u16_d16_hi v117, v152 offset:960
	ds_load_u16_d16_hi v118, v152 offset:1216
	ds_load_u16_d16_hi v119, v152 offset:1472
	ds_load_u16_d16_hi v120, v152 offset:1728
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v121, v152 offset:1984
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v114, v152 offset:192
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v115, v152 offset:448
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v131, v200, v201
	v_fmac_f32_e32 v133, v199, v202
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(9)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[104:111], v[89:96], v[17:24]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v105, v152 offset:2112
	ds_load_u16_d16 v104, v152 offset:1888
	ds_load_u16_d16 v106, v152 offset:2368
	ds_load_u16_d16_hi v205, v152 offset:160
	ds_load_u16_d16_hi v206, v152 offset:416
	ds_load_u16_d16_hi v207, v152 offset:672
	ds_load_u16_d16_hi v208, v152 offset:928
	ds_load_u16_d16_hi v209, v152 offset:1184
	ds_load_u16_d16_hi v210, v152 offset:1440
	ds_load_u16_d16_hi v211, v152 offset:1696
	ds_load_u16_d16_hi v212, v152 offset:1952
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(11)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[114:121], v[89:96], v[9:16]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v121, v152 offset:2048
	ds_load_u16_d16 v123, v152 offset:2560
	ds_load_u16_d16 v107, v152 offset:2624
	ds_load_u16_d16 v124, v152 offset:2816
	ds_load_u16_d16 v108, v152 offset:2880
	ds_load_u16_d16 v125, v152 offset:3072
	ds_load_u16_d16 v109, v152 offset:3136
	ds_load_u16_d16 v126, v152 offset:3328
	ds_load_u16_d16 v110, v152 offset:3392
	ds_load_u16_d16 v127, v152 offset:3584
	ds_load_u16_d16 v111, v152 offset:3648
	ds_load_u16_d16 v128, v152 offset:3840
	ds_load_u16_d16 v122, v152 offset:2304
	ds_load_u16_d16 v112, v152 offset:3904
	ds_load_u16_d16 v114, v152 offset:2400
	ds_load_u16_d16 v115, v152 offset:2656
	ds_load_u16_d16 v116, v152 offset:2912
	ds_load_u16_d16 v117, v152 offset:3168
	ds_load_u16_d16 v118, v152 offset:3424
	ds_load_u16_d16 v119, v152 offset:3680
	ds_load_u16_d16_hi v98, v152 offset:480
	ds_load_u16_d16_hi v97, v152 offset:224
	ds_load_u16_d16_hi v99, v152 offset:736
	ds_load_u16_d16_hi v100, v152 offset:992
	ds_load_u16_d16_hi v101, v152 offset:1248
	ds_load_u16_d16_hi v102, v152 offset:1504
	ds_load_u16_d16_hi v103, v152 offset:1760
	s_waitcnt lgkmcnt(36)
	ds_load_u16_d16_hi v104, v152 offset:2016
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(28)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[205:212], v[89:96], v[25:32]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[97:104], v[89:96], v[1:8]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v97, v152 offset:4160
	ds_load_u16_d16 v120, v152 offset:3936
	ds_load_u16_d16 v205, v152 offset:2080
	ds_load_u16_d16 v206, v152 offset:2336
	ds_load_u16_d16 v207, v152 offset:2592
	ds_load_u16_d16 v208, v152 offset:2848
	ds_load_u16_d16 v209, v152 offset:3104
	ds_load_u16_d16 v210, v152 offset:3360
	ds_load_u16_d16 v211, v152 offset:3616
	ds_load_u16_d16 v212, v152 offset:3872
	ds_load_u16_d16 v98, v152 offset:4416
	ds_load_u16_d16_hi v121, v152 offset:2176
	ds_load_u16_d16_hi v123, v152 offset:2688
	ds_load_u16_d16_hi v124, v152 offset:2944
	ds_load_u16_d16_hi v125, v152 offset:3200
	ds_load_u16_d16_hi v126, v152 offset:3456
	ds_load_u16_d16_hi v127, v152 offset:3712
	ds_load_u16_d16_hi v128, v152 offset:3968
	ds_load_u16_d16_hi v122, v152 offset:2432
	ds_load_u16_d16 v89, v152 offset:4192
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v205, v152 offset:2208
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v206, v152 offset:2464
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v207, v152 offset:2720
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v208, v152 offset:2976
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v209, v152 offset:3232
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v210, v152 offset:3488
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v211, v152 offset:3744
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v212, v152 offset:4000
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(9)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[121:128], v[81:88], v[17:24]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v121, v152 offset:4096
	ds_load_u16_d16 v123, v152 offset:4608
	ds_load_u16_d16 v99, v152 offset:4672
	ds_load_u16_d16 v124, v152 offset:4864
	ds_load_u16_d16 v100, v152 offset:4928
	ds_load_u16_d16 v125, v152 offset:5120
	ds_load_u16_d16 v101, v152 offset:5184
	ds_load_u16_d16 v126, v152 offset:5376
	ds_load_u16_d16 v102, v152 offset:5440
	ds_load_u16_d16 v127, v152 offset:5632
	ds_load_u16_d16 v103, v152 offset:5696
	ds_load_u16_d16 v128, v152 offset:5888
	ds_load_u16_d16 v122, v152 offset:4352
	ds_load_u16_d16 v104, v152 offset:5952
	ds_load_u16_d16 v90, v152 offset:4448
	ds_load_u16_d16 v91, v152 offset:4704
	ds_load_u16_d16 v92, v152 offset:4960
	ds_load_u16_d16 v93, v152 offset:5216
	ds_load_u16_d16 v94, v152 offset:5472
	ds_load_u16_d16 v95, v152 offset:5728
	ds_load_u16_d16_hi v105, v152 offset:2240
	ds_load_u16_d16_hi v106, v152 offset:2496
	ds_load_u16_d16_hi v107, v152 offset:2752
	ds_load_u16_d16_hi v108, v152 offset:3008
	ds_load_u16_d16_hi v109, v152 offset:3264
	ds_load_u16_d16_hi v110, v152 offset:3520
	ds_load_u16_d16_hi v111, v152 offset:3776
	ds_load_u16_d16_hi v112, v152 offset:4032
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(28)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[205:212], v[81:88], v[25:32]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[105:112], v[81:88], v[9:16]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v105, v152 offset:6208
	ds_load_u16_d16 v96, v152 offset:5984
	ds_load_u16_d16_hi v113, v152 offset:2272
	ds_load_u16_d16_hi v114, v152 offset:2528
	ds_load_u16_d16_hi v115, v152 offset:2784
	ds_load_u16_d16_hi v116, v152 offset:3040
	ds_load_u16_d16_hi v117, v152 offset:3296
	ds_load_u16_d16_hi v118, v152 offset:3552
	ds_load_u16_d16_hi v119, v152 offset:3808
	ds_load_u16_d16_hi v120, v152 offset:4064
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[113:120], v[81:88], v[1:8]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v205, v152 offset:4128
	ds_load_u16_d16 v206, v152 offset:4384
	ds_load_u16_d16 v207, v152 offset:4640
	ds_load_u16_d16 v208, v152 offset:4896
	ds_load_u16_d16 v209, v152 offset:5152
	ds_load_u16_d16 v210, v152 offset:5408
	ds_load_u16_d16 v211, v152 offset:5664
	ds_load_u16_d16 v212, v152 offset:5920
	ds_load_u16_d16 v106, v152 offset:6464
	ds_load_u16_d16 v81, v152 offset:6240
	ds_load_u16_d16_hi v121, v152 offset:4224
	ds_load_u16_d16_hi v123, v152 offset:4736
	ds_load_u16_d16_hi v124, v152 offset:4992
	ds_load_u16_d16_hi v125, v152 offset:5248
	ds_load_u16_d16_hi v126, v152 offset:5504
	ds_load_u16_d16_hi v127, v152 offset:5760
	ds_load_u16_d16_hi v128, v152 offset:6016
	ds_load_u16_d16_hi v122, v152 offset:4480
	ds_load_u16_d16 v113, v152 offset:6144
	ds_load_u16_d16 v115, v152 offset:6656
	ds_load_u16_d16 v107, v152 offset:6720
	ds_load_u16_d16 v116, v152 offset:6912
	ds_load_u16_d16 v108, v152 offset:6976
	ds_load_u16_d16 v117, v152 offset:7168
	ds_load_u16_d16 v109, v152 offset:7232
	ds_load_u16_d16 v118, v152 offset:7424
	ds_load_u16_d16 v110, v152 offset:7488
	ds_load_u16_d16 v119, v152 offset:7680
	ds_load_u16_d16 v111, v152 offset:7744
	ds_load_u16_d16 v120, v152 offset:7936
	ds_load_u16_d16 v114, v152 offset:6400
	ds_load_u16_d16 v112, v152 offset:8000
	ds_load_u16_d16 v82, v152 offset:6496
	ds_load_u16_d16 v83, v152 offset:6752
	ds_load_u16_d16 v84, v152 offset:7008
	ds_load_u16_d16 v85, v152 offset:7264
	ds_load_u16_d16 v86, v152 offset:7520
	ds_load_u16_d16 v87, v152 offset:7776
	ds_load_u16_d16 v88, v152 offset:8032
	s_waitcnt lgkmcnt(38)
	ds_load_u16_d16_hi v205, v152 offset:4256
	s_waitcnt lgkmcnt(38)
	ds_load_u16_d16_hi v206, v152 offset:4512
	s_waitcnt lgkmcnt(38)
	ds_load_u16_d16_hi v207, v152 offset:4768
	s_waitcnt lgkmcnt(38)
	ds_load_u16_d16_hi v208, v152 offset:5024
	s_waitcnt lgkmcnt(38)
	ds_load_u16_d16_hi v209, v152 offset:5280
	s_waitcnt lgkmcnt(38)
	ds_load_u16_d16_hi v210, v152 offset:5536
	s_waitcnt lgkmcnt(38)
	ds_load_u16_d16_hi v211, v152 offset:5792
	s_waitcnt lgkmcnt(38)
	ds_load_u16_d16_hi v212, v152 offset:6048
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(29)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[121:128], v[65:72], v[17:24]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v121, v152 offset:6176
	ds_load_u16_d16 v122, v152 offset:6432
	ds_load_u16_d16 v123, v152 offset:6688
	ds_load_u16_d16 v124, v152 offset:6944
	ds_load_u16_d16 v125, v152 offset:7200
	ds_load_u16_d16 v126, v152 offset:7456
	ds_load_u16_d16 v127, v152 offset:7712
	ds_load_u16_d16 v128, v152 offset:7968
	ds_load_u16_d16_hi v97, v152 offset:4288
	ds_load_u16_d16_hi v98, v152 offset:4544
	ds_load_u16_d16_hi v99, v152 offset:4800
	ds_load_u16_d16_hi v100, v152 offset:5056
	ds_load_u16_d16_hi v101, v152 offset:5312
	ds_load_u16_d16_hi v102, v152 offset:5568
	ds_load_u16_d16_hi v103, v152 offset:5824
	ds_load_u16_d16_hi v104, v152 offset:6080
	ds_load_u16_d16_hi v105, v152 offset:6336
	ds_load_u16_d16_hi v89, v152 offset:4320
	ds_load_u16_d16_hi v90, v152 offset:4576
	ds_load_u16_d16_hi v91, v152 offset:4832
	ds_load_u16_d16_hi v92, v152 offset:5088
	ds_load_u16_d16_hi v93, v152 offset:5344
	ds_load_u16_d16_hi v94, v152 offset:5600
	ds_load_u16_d16_hi v95, v152 offset:5856
	ds_load_u16_d16_hi v96, v152 offset:6112
	s_waitcnt lgkmcnt(53)
	ds_load_u16_d16_hi v113, v152 offset:6272
	ds_load_u16_d16_hi v106, v152 offset:6592
	s_waitcnt lgkmcnt(54)
	ds_load_u16_d16_hi v115, v152 offset:6784
	s_waitcnt lgkmcnt(54)
	ds_load_u16_d16_hi v107, v152 offset:6848
	s_waitcnt lgkmcnt(54)
	ds_load_u16_d16_hi v116, v152 offset:7040
	s_waitcnt lgkmcnt(54)
	ds_load_u16_d16_hi v108, v152 offset:7104
	s_waitcnt lgkmcnt(54)
	ds_load_u16_d16_hi v117, v152 offset:7296
	s_waitcnt lgkmcnt(54)
	ds_load_u16_d16_hi v109, v152 offset:7360
	s_waitcnt lgkmcnt(54)
	ds_load_u16_d16_hi v118, v152 offset:7552
	s_waitcnt lgkmcnt(54)
	ds_load_u16_d16_hi v110, v152 offset:7616
	s_waitcnt lgkmcnt(54)
	ds_load_u16_d16_hi v119, v152 offset:7808
	s_waitcnt lgkmcnt(54)
	ds_load_u16_d16_hi v111, v152 offset:7872
	s_waitcnt lgkmcnt(54)
	ds_load_u16_d16_hi v120, v152 offset:8064
	s_waitcnt lgkmcnt(54)
	ds_load_u16_d16_hi v114, v152 offset:6528
	s_waitcnt lgkmcnt(54)
	ds_load_u16_d16_hi v112, v152 offset:8128
	s_waitcnt lgkmcnt(39)
	ds_load_u16_d16_hi v121, v152 offset:6304
	ds_load_u16_d16_hi v81, v152 offset:6368
	s_waitcnt lgkmcnt(40)
	ds_load_u16_d16_hi v122, v152 offset:6560
	ds_load_u16_d16_hi v82, v152 offset:6624
	s_waitcnt lgkmcnt(41)
	ds_load_u16_d16_hi v123, v152 offset:6816
	ds_load_u16_d16_hi v83, v152 offset:6880
	s_waitcnt lgkmcnt(42)
	ds_load_u16_d16_hi v124, v152 offset:7072
	ds_load_u16_d16_hi v84, v152 offset:7136
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v125, v152 offset:7328
	ds_load_u16_d16_hi v85, v152 offset:7392
	s_waitcnt lgkmcnt(44)
	ds_load_u16_d16_hi v126, v152 offset:7584
	ds_load_u16_d16_hi v86, v152 offset:7648
	s_waitcnt lgkmcnt(45)
	ds_load_u16_d16_hi v127, v152 offset:7840
	ds_load_u16_d16_hi v87, v152 offset:7904
	s_waitcnt lgkmcnt(46)
	ds_load_u16_d16_hi v128, v152 offset:8096
	ds_load_u16_d16_hi v88, v152 offset:8160
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(40)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[97:104], v[65:72], v[9:16]
	s_waitcnt lgkmcnt(31)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[89:96], v[65:72], v[1:8]
	v_wmma_f32_16x16x16_bf16 v[25:32], v[205:212], v[65:72], v[25:32]
	s_waitcnt lgkmcnt(17)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[113:120], v[73:80], v[17:24]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[121:128], v[73:80], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[105:112], v[73:80], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[81:88], v[73:80], v[1:8]
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	v_lshrrev_b32_e32 v0, 4, v0
	v_and_b32_e32 v33, 0x80, v148
	v_add_nc_u32_e32 v34, 0, v151
	v_add_nc_u32_e32 v35, 0, v150
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v0, 4, v0
	s_barrier
	s_mov_b32 s11, 0x31027000
	ds_store_2addr_b64 v35, v[131:132], v[133:134] offset1:16
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v34, v33, v0
	s_barrier
	.loc	1 598 79                        ; attention.py:598:79
	v_lshrrev_b32_e32 v35, 1, v146
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 629 13                        ; attention.py:629:13
	ds_load_b32 v37, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v0, 1, v147
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v34, 16, v35
	v_or_b32_e32 v33, 32, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 570 31                        ; attention.py:570:31
	v_or_b32_e32 v36, v0, v145
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v0, 48, v35
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v38, s97, v36
	.loc	1 843 24                        ; attention.py:843:24
	v_or_b32_e32 v36, s96, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s1, 0x800, v38
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v36, s81, v36
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
	v_div_scale_f32 v39, vcc_lo, v17, v37, v17
	v_rcp_f32_e32 v49, v44
	v_div_scale_f32 v41, s2, v18, v37, v18
	v_fma_f32 v54, -v38, v46, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v55, -v40, v47, 1.0
	v_div_scale_f32 v43, s3, v19, v37, v19
	v_fma_f32 v56, -v42, v48, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v46, v54, v46 :: v_dual_fmac_f32 v47, v55, v47
	v_fma_f32 v57, -v44, v49, 1.0
	v_div_scale_f32 v51, s5, v21, v37, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v48, v56, v48 :: v_dual_mul_f32 v55, v39, v46
	v_mul_f32_e32 v56, v41, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v49, v57, v49
	v_div_scale_f32 v52, null, v37, v37, v22
	v_fma_f32 v61, -v38, v55, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v62, -v40, v56, v41
	v_mul_f32_e32 v57, v43, v48
	v_rcp_f32_e32 v58, v52
	v_div_scale_f32 v45, s4, v20, v37, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v55, v61, v46 :: v_dual_fmac_f32 v56, v62, v47
	v_fma_f32 v63, -v42, v57, v43
	v_div_scale_f32 v50, null, v37, v37, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v38, v55, v39
	v_fma_f32 v39, -v40, v56, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v57, v63, v48
	v_fma_f32 v60, -v52, v58, 1.0
	v_mul_f32_e32 v59, v45, v49
	v_div_fmas_f32 v38, v38, v46, v55
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v40, -v42, v57, v43
	v_div_scale_f32 v42, null, v37, v37, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v17, v38, v37, v17
	v_fmac_f32_e32 v58, v60, v58
	v_fma_f32 v64, -v44, v59, v45
	v_rcp_f32_e32 v38, v42
	v_rcp_f32_e32 v53, v50
	v_div_fmas_f32 v39, v39, v47, v56
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v43, null, v37, v37, v24
	v_div_fmas_f32 v40, v40, v48, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v18, v39, v37, v18
	v_div_scale_f32 v39, s3, v22, v37, v22
	v_fma_f32 v46, -v42, v38, 1.0
	v_fmac_f32_e32 v59, v64, v49
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v54, -v50, v53, 1.0
	v_div_fixup_f32 v19, v40, v37, v19
	v_fmac_f32_e32 v38, v46, v38
	v_fma_f32 v41, -v44, v59, v45
	v_mul_f32_e32 v45, v39, v58
	v_rcp_f32_e32 v47, v43
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s2, 0, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v41, v41, v49, v59
	v_fma_f32 v40, -v52, v45, v39
	s_mov_b32 vcc_lo, s5
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v17, 0, v17, s2
	v_cndmask_b32_e64 v18, 0, v18, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v20, v41, v37, v20
	v_div_scale_f32 v41, s4, v23, v37, v23
	v_fmac_f32_e32 v53, v54, v53
	v_fmac_f32_e32 v45, v40, v58
	v_fma_f32 v46, -v43, v47, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v40, v41, v38
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v19, 0, v19, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v54, v51, v53
	v_fma_f32 v39, -v52, v45, v39
	v_fmac_f32_e32 v47, v46, v47
	v_div_scale_f32 v46, s6, v24, v37, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v44, -v50, v54, v51
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v20, 0, v20, s2
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cmp_o_f32_e64 s7, v19, v19
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v54, v44, v53
	v_div_scale_f32 v44, null, v37, v37, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v48, -v50, v54, v51
	v_rcp_f32_e32 v49, v44
	v_fma_f32 v50, -v42, v40, v41
	v_mul_f32_e32 v51, v46, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v48, v48, v53, v54
	v_div_scale_f32 v53, null, v37, v37, v26
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v39, v39, v58, v45
	v_rcp_f32_e32 v45, v53
	v_fma_f32 v52, -v44, v49, 1.0
	v_fmac_f32_e32 v40, v50, v38
	v_div_fixup_f32 v21, v48, v37, v21
	v_div_fixup_f32 v22, v39, v37, v22
	v_div_scale_f32 v48, null, v37, v37, v27
	v_fmac_f32_e32 v49, v52, v49
	v_fma_f32 v39, -v42, v40, v41
	v_fma_f32 v50, -v43, v51, v46
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v42, -v53, v45, 1.0
	v_div_scale_f32 v52, s3, v25, v37, v25
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v51, v50, v47
	v_fmac_f32_e32 v45, v42, v45
	v_rcp_f32_e32 v42, v48
	v_div_fmas_f32 v38, v39, v38, v40
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v39, -v43, v51, v46
	v_div_scale_f32 v46, null, v37, v37, v28
	v_div_scale_f32 v43, s4, v26, v37, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v39, v39, v47, v51
	v_div_fixup_f32 v23, v38, v37, v23
	v_fma_f32 v50, -v48, v42, 1.0
	v_mul_f32_e32 v41, v52, v49
	v_mul_f32_e32 v47, v43, v45
	v_div_fixup_f32 v24, v39, v37, v24
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v42, v50, v42
	v_fma_f32 v40, -v44, v41, v52
	v_fma_f32 v39, -v53, v47, v43
	v_div_scale_f32 v51, null, v37, v37, v29
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v21, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v41, v40, v49
	v_rcp_f32_e32 v40, v46
	v_fmac_f32_e32 v47, v39, v45
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v22, 0, v22, s2
	v_cndmask_b32_e64 v23, 0, v23, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v38, -v44, v41, v52
	v_div_scale_f32 v44, s5, v27, v37, v27
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v24, 0, v24, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v38, v38, v49, v41
	v_fma_f32 v50, -v46, v40, 1.0
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v41, v51
	v_div_scale_f32 v49, s3, v28, v37, v28
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
	v_cndmask_b32_e64 v25, 0, v25, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v38, v38, v45, v47
	v_div_scale_f32 v45, s4, v29, v37, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v54, v41
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v26, v38, v37, v26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v47, -v50, v53, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v26, 0, v26, s2
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
	v_div_scale_f32 v44, s6, v30, v37, v30
	v_div_fmas_f32 v38, v38, v42, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v46, v52, v49
	v_fma_f32 v42, -v51, v43, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v48, v44, v53
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v27, v38, v37, v27
	v_div_fmas_f32 v39, v39, v40, v52
	v_fmac_f32_e32 v43, v42, v41
	v_fma_f32 v42, -v50, v48, v44
	s_mov_b32 vcc_lo, s4
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
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v52, -v47, v46, 1.0
	v_div_fixup_f32 v28, v39, v37, v28
	v_div_scale_f32 v39, s3, v31, v37, v31
	v_div_fmas_f32 v41, v41, v53, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v46, v52, v46
	v_fma_f32 v42, -v49, v40, 1.0
	v_div_scale_f32 v44, s4, v32, v37, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v30, v41, v37, v30
	v_rcp_f32_e32 v41, v51
	v_fmac_f32_e32 v40, v42, v40
	v_div_scale_f32 v42, null, v37, v37, v9
	v_div_fixup_f32 v29, v38, v37, v29
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v50, v44, v40
	v_rcp_f32_e32 v45, v42
	v_div_scale_f32 v53, null, v37, v37, v12
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v51, v41, 1.0
	v_fma_f32 v38, -v49, v50, v44
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v27, 0, v27, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v55, v53
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v28, 0, v28, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v41, v52, v41
	v_dual_mul_f32 v43, v39, v46 :: v_dual_fmac_f32 v50, v38, v40
	v_div_scale_f32 v38, s5, v9, v37, v9
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v29, 0, v29, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v48, -v47, v43, v39
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v30, 0, v30, s2
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
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v46, s3, v10, v37, v10
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
	v_div_scale_f32 v49, s6, v11, v37, v11
	v_fma_f32 v38, -v42, v44, v38
	v_div_scale_f32 v42, null, v37, v37, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v50, v49, v48
	v_dual_fmac_f32 v54, v43, v41 :: v_dual_fmac_f32 v55, v40, v55
	v_div_scale_f32 v40, s4, v12, v37, v12
	v_fma_f32 v39, -v47, v50, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v43, -v51, v54, v46
	s_mov_b32 vcc_lo, s5
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v31, 0, v31, s2
	v_cndmask_b32_e64 v32, 0, v32, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v50, v39, v48
	v_rcp_f32_e32 v39, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v39, 1.0
	v_fmac_f32_e32 v39, v46, v39
	v_div_fmas_f32 v38, v38, v45, v44
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v44, v40, v55
	v_div_fmas_f32 v41, v43, v41, v54
	v_fma_f32 v43, -v47, v50, v49
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v46, s3, v13, v37, v13
	v_div_fixup_f32 v9, v38, v37, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v43, v43, v48, v50
	v_fma_f32 v48, -v53, v44, v40
	v_mul_f32_e32 v38, v46, v39
	v_div_scale_f32 v45, null, v37, v37, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v11, v43, v37, v11
	v_fmac_f32_e32 v44, v48, v55
	v_div_scale_f32 v43, null, v37, v37, v15
	v_fma_f32 v48, -v42, v38, v46
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v53, v44, v40
	v_rcp_f32_e32 v49, v43
	v_rcp_f32_e32 v47, v45
	v_fmac_f32_e32 v38, v48, v39
	v_div_scale_f32 v48, null, v37, v37, v16
	v_div_fmas_f32 v40, v40, v55, v44
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v10, v41, v37, v10
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v50, v48
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v9, 0, v9, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v12, v40, v37, v12
	v_fma_f32 v40, -v42, v38, v46
	v_fma_f32 v46, -v43, v49, 1.0
	v_fma_f32 v41, -v45, v47, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v10, 0, v10, s2
	v_cndmask_b32_e64 v11, 0, v11, s2
	v_cndmask_b32_e64 v12, 0, v12, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v49, v46, v49
	v_div_fmas_f32 v38, v40, v39, v38
	v_div_scale_f32 v39, null, v37, v37, v1
	v_div_scale_f32 v40, s3, v15, v37, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v13, v38, v37, v13
	v_fma_f32 v38, -v48, v50, 1.0
	v_fmac_f32_e32 v47, v41, v47
	v_div_scale_f32 v41, s5, v14, v37, v14
	v_div_scale_f32 v46, null, v37, v37, v2
	v_fmac_f32_e32 v50, v38, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v44, v41, v47
	v_div_scale_f32 v38, s4, v16, v37, v16
	v_rcp_f32_e32 v52, v46
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v42, -v45, v44, v41
	v_div_scale_f32 v53, s5, v1, v37, v1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v44, v42, v47
	v_rcp_f32_e32 v42, v39
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v54, -v46, v52, 1.0
	v_fma_f32 v41, -v45, v44, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v41, v41, v47, v44
	v_fma_f32 v51, -v39, v42, 1.0
	v_mul_f32_e32 v45, v40, v49
	v_mul_f32_e32 v47, v38, v50
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v14, v41, v37, v14
	v_fmac_f32_e32 v42, v51, v42
	v_fma_f32 v44, -v43, v45, v40
	v_div_scale_f32 v51, null, v37, v37, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v14, 0, v14, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_mul_f32 v56, v53, v42 :: v_dual_fmac_f32 v45, v44, v49
	v_fma_f32 v44, -v48, v47, v38
	v_fmac_f32_e32 v52, v54, v52
	v_div_scale_f32 v54, s6, v2, v37, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v43, v45, v40
	v_fmac_f32_e32 v47, v44, v50
	v_rcp_f32_e32 v55, v51
	v_fma_f32 v41, -v39, v56, v53
	v_mul_f32_e32 v43, v54, v52
	v_div_fmas_f32 v40, v40, v49, v45
	v_fma_f32 v38, -v48, v47, v38
	v_div_scale_f32 v45, null, v37, v37, v4
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v56, v41, v42
	v_div_fmas_f32 v38, v38, v50, v47
	v_rcp_f32_e32 v47, v45
	v_fma_f32 v41, -v46, v43, v54
	v_div_fixup_f32 v15, v40, v37, v15
	v_fma_f32 v44, -v51, v55, 1.0
	v_fma_f32 v39, -v39, v56, v53
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v16, v38, v37, v16
	v_div_scale_f32 v49, null, v37, v37, v8
	v_fmac_f32_e32 v55, v44, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v45, v47, 1.0
	v_div_scale_f32 v44, s3, v3, v37, v3
	v_div_fmas_f32 v39, v39, v42, v56
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v47, v40, v47
	v_fmac_f32_e32 v43, v41, v52
	v_mul_f32_e32 v41, v44, v55
	v_div_scale_f32 v40, null, v37, v37, v6
	v_div_fixup_f32 v1, v39, v37, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v46, v43, v54
	v_fma_f32 v46, -v51, v41, v44
	v_div_scale_f32 v39, null, v37, v37, v5
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v15, 0, v15, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v42, v42, v52, v43
	v_fmac_f32_e32 v41, v46, v55
	s_mov_b32 vcc_lo, s3
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v16, 0, v16, s2
	v_cndmask_b32_e64 v1, 0, v1, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v2, v42, v37, v2
	v_div_scale_f32 v42, null, v37, v37, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v46, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v53, -v42, v46, 1.0
	v_fmac_f32_e32 v46, v53, v46
	v_fma_f32 v38, -v51, v41, v44
	v_rcp_f32_e32 v44, v40
	v_rcp_f32_e32 v51, v49
	v_div_scale_f32 v53, s5, v7, v37, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v38, v38, v55, v41
	v_rcp_f32_e32 v41, v39
	v_div_scale_f32 v43, vcc_lo, v4, v37, v4
	v_div_fixup_f32 v3, v38, v37, v3
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v50, -v40, v44, 1.0
	v_fma_f32 v55, -v49, v51, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v3, 0, v3, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v44, v50, v44
	v_div_scale_f32 v50, s4, v6, v37, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v39, v41, 1.0
	v_mul_f32_e32 v56, v50, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v48, v43, v47 :: v_dual_fmac_f32 v41, v38, v41
	v_div_scale_f32 v38, s3, v5, v37, v5
	v_fma_f32 v52, -v45, v48, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v54, v38, v41
	v_fmac_f32_e32 v48, v52, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v52, -v39, v54, v38
	v_fma_f32 v43, -v45, v48, v43
	v_fma_f32 v45, -v40, v56, v50
	v_fmac_f32_e32 v51, v55, v51
	v_div_scale_f32 v55, s6, v8, v37, v8
	v_fmac_f32_e32 v54, v52, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v56, v45, v44
	v_dual_mul_f32 v57, v53, v46 :: v_dual_mul_f32 v58, v55, v51
	v_div_fmas_f32 v43, v43, v47, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v39, v54, v38
	v_fma_f32 v40, -v40, v56, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v42, v57, v53
	v_fma_f32 v39, -v49, v58, v55
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v4, v43, v37, v4
	v_div_fmas_f32 v38, v38, v41, v54
	v_dual_fmac_f32 v57, v52, v46 :: v_dual_fmac_f32 v58, v39, v51
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s2
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v40, v40, v44, v56
	v_fma_f32 v39, -v42, v57, v53
	v_fma_f32 v41, -v49, v58, v55
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v5, v38, v37, v5
	v_div_fixup_f32 v6, v40, v37, v6
	v_div_fmas_f32 v39, v39, v46, v57
	s_mov_b32 vcc_lo, s6
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_bfe_u32 v38, v18, 16, 1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v41, v41, v51, v58
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s5, v17, v17
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v7, v39, v37, v7
	.loc	1 846 36                        ; attention.py:846:36
	v_bfe_u32 v39, v19, 16, 1
	v_cmp_o_f32_e64 s6, v18, v18
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v8, v41, v37, v8
	.loc	1 846 36                        ; attention.py:846:36
	v_bfe_u32 v37, v17, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v5, 0, v5, s2
	v_cndmask_b32_e64 v6, 0, v6, s2
	v_cndmask_b32_e64 v7, 0, v7, s2
	v_cndmask_b32_e64 v8, 0, v8, s2
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v37, v17, v37, 0x7fff
	v_add3_u32 v17, v18, v38, 0x7fff
	v_add3_u32 v18, v19, v39, 0x7fff
	v_bfe_u32 v19, v20, 16, 1
	v_bfe_u32 v38, v22, 16, 1
	v_cndmask_b16 v17.l, 0x7fff, v37.h, s5
	v_bfe_u32 v37, v21, 16, 1
	v_cmp_o_f32_e64 s5, v20, v20
	v_add3_u32 v19, v20, v19, 0x7fff
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s6
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s7
	v_add3_u32 v20, v21, v37, 0x7fff
	v_cmp_o_f32_e64 s6, v21, v21
	v_add3_u32 v21, v22, v38, 0x7fff
	v_cmp_o_f32_e64 s7, v22, v22
	v_cndmask_b16 v18.h, 0x7fff, v19.h, s5
	v_bfe_u32 v19, v23, 16, 1
	v_bfe_u32 v22, v24, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s6
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s7
	v_bfe_u32 v21, v25, 16, 1
	v_add3_u32 v19, v23, v19, 0x7fff
	v_cmp_o_f32_e64 s5, v23, v23
	v_add3_u32 v22, v24, v22, 0x7fff
	v_cmp_o_f32_e64 s6, v24, v24
	v_bfe_u32 v23, v26, 16, 1
	v_add3_u32 v21, v25, v21, 0x7fff
	v_cmp_o_f32_e64 s7, v25, v25
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s5
	v_cndmask_b16 v19.h, 0x7fff, v22.h, s6
	v_bfe_u32 v22, v27, 16, 1
	v_add3_u32 v23, v26, v23, 0x7fff
	v_cmp_o_f32_e64 s5, v26, v26
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s7
	v_bfe_u32 v24, v28, 16, 1
	v_add3_u32 v22, v27, v22, 0x7fff
	v_cmp_o_f32_e64 s6, v27, v27
	v_cndmask_b16 v21.h, 0x7fff, v23.h, s5
	v_bfe_u32 v23, v29, 16, 1
	v_bfe_u32 v25, v30, 16, 1
	v_add3_u32 v24, v28, v24, 0x7fff
	v_cmp_o_f32_e64 s7, v28, v28
	v_cndmask_b16 v22.l, 0x7fff, v22.h, s6
	v_add3_u32 v23, v29, v23, 0x7fff
	v_cmp_o_f32_e64 s5, v29, v29
	v_add3_u32 v25, v30, v25, 0x7fff
	v_cmp_o_f32_e64 s6, v30, v30
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s7
	v_bfe_u32 v24, v31, 16, 1
	v_cndmask_b16 v23.l, 0x7fff, v23.h, s5
	v_bfe_u32 v26, v32, 16, 1
	v_cndmask_b16 v23.h, 0x7fff, v25.h, s6
	v_bfe_u32 v25, v9, 16, 1
	v_bfe_u32 v27, v10, 16, 1
	v_add3_u32 v24, v31, v24, 0x7fff
	v_cmp_o_f32_e64 s7, v31, v31
	v_cmp_o_f32_e64 s6, v9, v9
	v_add3_u32 v25, v9, v25, 0x7fff
	v_add3_u32 v26, v32, v26, 0x7fff
	v_cmp_o_f32_e64 s5, v32, v32
	v_add3_u32 v9, v10, v27, 0x7fff
	v_cndmask_b16 v24.l, 0x7fff, v24.h, s7
	v_cmp_o_f32_e64 s7, v10, v10
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v25.h, s6
	v_bfe_u32 v25, v12, 16, 1
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s5
	v_bfe_u32 v26, v13, 16, 1
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v11, v11
	v_add3_u32 v11, v12, v25, 0x7fff
	v_cmp_o_f32_e64 s6, v12, v12
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s7
	v_add3_u32 v12, v13, v26, 0x7fff
	v_cmp_o_f32_e64 s7, v13, v13
	v_bfe_u32 v13, v14, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s5
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s6
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v25, v16, 16, 1
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v14, v14
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s7
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s6, v15, v15
	v_add3_u32 v14, v16, v25, 0x7fff
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
	v_cndmask_b16 v1.l, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v5, 16, 1
	v_cmp_o_f32_e64 s5, v4, v4
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s6
	v_add3_u32 v3, v4, v3, 0x7fff
	v_bfe_u32 v4, v6, 16, 1
	v_add3_u32 v13, v5, v13, 0x7fff
	v_bfe_u32 v14, v7, 16, 1
	v_cmp_o_f32_e64 s6, v5, v5
	v_bfe_u32 v5, v8, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s7
	v_add3_u32 v4, v6, v4, 0x7fff
	v_cmp_o_f32_e64 s7, v6, v6
	v_add3_u32 v6, v7, v14, 0x7fff
	v_cmp_o_f32_e64 s8, v7, v7
	v_add3_u32 v5, v8, v5, 0x7fff
	v_cmp_o_f32_e64 s9, v8, v8
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s5
	v_cndmask_b16 v3.l, 0x7fff, v13.h, s6
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s7
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s8
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s9
	v_cndmask_b32_e64 v5, v20, v17, s0
	v_cndmask_b32_e64 v6, v17, v20, s0
	v_cndmask_b32_e64 v7, v19, v18, s0
	v_cndmask_b32_e64 v8, v18, v19, s0
	v_cndmask_b32_e64 v14, v21, v23, s0
	v_cndmask_b32_e64 v16, v22, v24, s0
	v_cndmask_b32_e64 v17, v12, v9, s0
	v_cndmask_b32_e64 v9, v9, v12, s0
	v_cndmask_b32_e64 v12, v11, v10, s0
	v_cndmask_b32_e64 v10, v10, v11, s0
	v_cndmask_b32_e64 v18, v3, v1, s0
	v_cndmask_b32_e64 v1, v1, v3, s0
	v_cndmask_b32_e64 v19, v4, v2, s0
	v_cndmask_b32_e64 v2, v2, v4, s0
	s_mov_b32 s5, 0x76543210
	v_cndmask_b32_e64 v13, v23, v21, s0
	v_permlanex16_b32 v3, v6, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v8, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v14, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v16, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v9, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v10, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v1, s5, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v15, v24, v22, s0
	v_permlanex16_b32 v20, v2, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s81, v34
	v_cmp_gt_i32_e64 s4, s81, v35
	v_cmp_gt_i32_e64 s2, s81, v33
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v1, v3, v5, v141
	v_perm_b32 v2, v3, v5, v142
	v_perm_b32 v5, v6, v13, v141
	v_perm_b32 v6, v6, v13, v142
	v_perm_b32 v9, v11, v17, v141
	v_perm_b32 v10, v11, v17, v142
	v_perm_b32 v11, v14, v12, v141
	v_perm_b32 v12, v14, v12, v142
	v_perm_b32 v13, v16, v18, v141
	v_perm_b32 v14, v16, v18, v142
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v18, v36, v34, 1
	v_add_lshl_u32 v17, v36, v35, 1
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s3, s81, v0
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v3, v4, v7, v141
	v_perm_b32 v4, v4, v7, v142
	v_perm_b32 v7, v8, v15, v141
	v_perm_b32 v8, v8, v15, v142
	v_perm_b32 v15, v20, v19, v141
	v_perm_b32 v16, v20, v19, v142
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v19, v36, v33, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s1, vcc_lo
	s_and_b32 s0, s1, s4
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v0, v36, v0, 1
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s1, s2
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s1, s3
	.loc	1 846 17                        ; attention.py:846:17
	s_and_b32 s9, s79, 0xffff
	s_mov_b32 s8, s78
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[1:4], v17, s[8:11], 0 offen
	buffer_store_b128 v[5:8], v18, s[8:11], 0 offen
	buffer_store_b128 v[9:12], v19, s[8:11], 0 offen
	buffer_store_b128 v[13:16], v0, s[8:11], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp125:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 227
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 227
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 100
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18300
; TotalNumSgprs: 102
; NumVgprs: 227
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 28
; NumSGPRsForWavesPerEU: 102
; NumVGPRsForWavesPerEU: 227
; Occupancy: 6
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
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
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
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
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
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     102
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     227
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
