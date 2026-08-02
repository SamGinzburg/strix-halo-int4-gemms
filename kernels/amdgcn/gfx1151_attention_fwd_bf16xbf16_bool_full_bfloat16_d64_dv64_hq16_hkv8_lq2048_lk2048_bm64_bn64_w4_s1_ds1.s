	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[80:83], s[0:1], 0x5c
	s_load_b128 s[4:7], s[0:1], 0x0
	v_dual_mov_b32 v53, 0x5410 :: v_dual_and_b32 v52, 3, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v50, 2, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s93, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s2, s3, 11
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v54, 0x7632 :: v_dual_lshlrev_b32 v49, 4, v52
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s92, s93, s2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s93, v50
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v80, 0x7c, v0
	s_mov_b32 s87, 0x31027000
	s_mov_b32 s86, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v1
	s_clause 0x1
	s_load_b128 s[76:79], s[0:1], 0x30
	s_load_b64 s[88:89], s[0:1], 0x10
	v_dual_mov_b32 v30, v25 :: v_dual_and_b32 v79, 16, v0
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v2, s80, v50
	s_mul_i32 s2, s80, s92
	s_lshl_b32 s8, s80, 5
	v_or_b32_e32 v3, s2, v49
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s2, s80, v49
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s85, s5, 0xffff
	s_mov_b32 s84, s4
	s_load_b64 s[4:5], s[0:1], 0x6c
	v_dual_mov_b32 v26, v25 :: v_dual_add_nc_u32 v1, s8, v2
	.loc	1 787 26                        ; attention.py:787:26
	v_or_b32_e32 v4, 8, v3
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v5, v3, v2, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v3, v3, v1, 1
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v2, v4, v2, 1
	v_add_lshl_u32 v1, v4, v1, 1
	v_cndmask_b32_e64 v4, 0x80000000, v5, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 28
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_clause 0x3
	buffer_load_b128 v[33:36], v4, s[84:87], 0 offen
	buffer_load_b128 v[41:44], v3, s[84:87], 0 offen
	buffer_load_b128 v[37:40], v2, s[84:87], 0 offen
	buffer_load_b128 v[45:48], v1, s[84:87], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v64, 32, v50
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v19, v25 :: v_dual_and_b32 v62, 8, v0
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -16
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s9, s0, 4
	v_cmp_eq_u32_e64 s0, 0, v79
	.loc	1 818 13                        ; attention.py:818:13
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[109:110], null, s5, v64, v[49:50]
	v_dual_mov_b32 v28, v25 :: v_dual_and_b32 v71, 15, v0
	v_dual_mov_b32 v27, v25 :: v_dual_and_b32 v76, 0x60, v0
	v_dual_mov_b32 v32, v25 :: v_dual_lshlrev_b32 v81, 2, v0
	v_dual_mov_b32 v18, v25 :: v_dual_and_b32 v57, 7, v0
	v_dual_mov_b32 v20, v25 :: v_dual_lshlrev_b32 v59, 1, v0
	v_dual_mov_b32 v5, v25 :: v_dual_lshlrev_b32 v62, 4, v62
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v65, 1, v80
	v_cndmask_b32_e64 v53, 0x1054, v53, s0
	v_dual_mov_b32 v29, v25 :: v_dual_lshlrev_b32 v56, 5, v0
	v_dual_mov_b32 v31, v25 :: v_dual_lshlrev_b32 v58, 4, v0
	v_dual_mov_b32 v17, v25 :: v_dual_and_b32 v60, 48, v0
	v_dual_mov_b32 v22, v25 :: v_dual_and_b32 v61, 12, v0
	v_dual_mov_b32 v21, v25 :: v_dual_and_b32 v66, 0x70, v81
	v_dual_mov_b32 v23, v25 :: v_dual_lshlrev_b32 v68, 6, v76
	v_dual_mov_b32 v24, v25 :: v_dual_lshlrev_b32 v67, 7, v71
	v_dual_mov_b32 v9, v25 :: v_dual_and_b32 v70, 0x70, v59
	v_dual_mov_b32 v10, v25 :: v_dual_lshlrev_b32 v69, 4, v57
	v_dual_mov_b32 v11, v25 :: v_dual_lshlrev_b32 v82, 3, v71
	v_dual_mov_b32 v15, v25 :: v_dual_lshlrev_b32 v74, 2, v76
	v_mov_b32_e32 v1, v25
	v_dual_mov_b32 v2, v25 :: v_dual_lshlrev_b32 v75, 11, v52
	v_mov_b32_e32 v3, v25
	v_dual_mov_b32 v4, v25 :: v_dual_lshlrev_b32 v77, 6, v79
	v_lshlrev_b32_e32 v52, 5, v52
	scratch_store_b32 off, v76, off offset:20 ; 4-byte Folded Spill
	v_lshlrev_b32_e32 v76, 3, v76
	v_and_or_b32 v62, v81, 16, v62
	v_cndmask_b32_e64 v54, 0x3276, v54, s0
	v_lshl_or_b32 v53, v53, 8, v53
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s2, s81, v49
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[132:133], null, s81, v65, v[49:50]
	v_mad_u64_u32 v[49:50], null, s5, v50, v[49:50]
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[109:110], off
	scratch_store_b32 off, v71, off offset:16
	v_bfe_i32 v63, v0, 3, 1
	v_dual_mov_b32 v13, v25 :: v_dual_lshlrev_b32 v72, 8, v61
	v_dual_mov_b32 v14, v25 :: v_dual_and_b32 v59, 0x80, v59
	v_dual_mov_b32 v16, v25 :: v_dual_and_b32 v73, 0x260, v56
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s3, s3, s1
	v_lshrrev_b32_e32 v71, 1, v60
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v56, v56, v66
	v_or3_b32 v66, v67, v68, v69
	v_xor_b32_e32 v58, v58, v70
	v_or_b32_e32 v144, v69, v67
	v_lshl_or_b32 v60, v60, 6, v82
	v_lshl_or_b32 v67, v61, 1, v74
	v_lshl_or_b32 v68, v61, 9, v52
	v_lshl_or_b32 v61, v61, 3, v74
	v_xor_b32_e32 v69, v52, v80
	v_or3_b32 v62, v62, v77, v76
	v_dual_mov_b32 v214, v25 :: v_dual_and_b32 v53, 0x540054, v53
	v_lshl_or_b32 v54, v54, 8, v54
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s1, s3, 0x10007
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v55, 3, v0
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s1, s3, s1
	v_dual_mov_b32 v12, v25 :: v_dual_lshlrev_b32 v51, 3, v57
	v_dual_mov_b32 v6, v25 :: v_dual_and_b32 v63, 0x410, v63
	v_dual_mov_b32 v7, v25 :: v_dual_add_nc_u32 v78, 0, v79
	v_dual_mov_b32 v8, v25 :: v_dual_add_nc_u32 v59, 0, v59
	v_mul_u32_u24_e32 v57, 0x90, v57
	v_or3_b32 v146, v72, v73, v67
	v_xor_b32_e32 v60, v60, v71
	v_xor_b32_e32 v61, v68, v61
	v_or_b32_e32 v147, v69, v75
	v_dual_mov_b32 v213, 0xff800000 :: v_dual_add_nc_u32 v148, 0, v58
	v_xor_b32_e32 v58, 64, v144
	.loc	1 852 32                        ; attention.py:852:32
	scratch_store_b64 off, v[49:50], off offset:8 ; 8-byte Folded Spill
	v_or3_b32 v149, v62, v52, v75
	v_lshl_or_b32 v49, v53, 4, v53
	v_and_b32_e32 v50, 0x760076, v54
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s1, s1, 0x80000
	v_xor_b32_e32 v145, v57, v63
	s_sext_i32_i16 s1, s1
	v_dual_mov_b32 v216, 0xff800000 :: v_dual_add_nc_u32 v57, 0, v56
	v_dual_mov_b32 v212, 0xff800000 :: v_dual_add_nc_u32 v63, 0, v66
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s11, s1, 10
	.loc	1 856 31                        ; attention.py:856:31
	v_cmp_gt_i32_e64 s1, s80, v51
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[129:130], null, s80, v55, v[51:52]
	v_add_nc_u32_e32 v150, v59, v60
	v_add_nc_u32_e32 v151, v78, v61
	v_add_nc_u32_e32 v155, 0, v58
	v_xor_b32_e32 v51, 8, v146
	v_xor_b32_e32 v52, 16, v146
	v_xor_b32_e32 v53, 24, v146
	v_xor_b32_e32 v54, 0x90, v147
	v_xor_b32_e32 v55, 0x120, v147
	v_xor_b32_e32 v58, 0x1b0, v147
	v_xor_b32_e32 v59, 0x240, v147
	v_xor_b32_e32 v60, 0x2d0, v147
	v_xor_b32_e32 v61, 0x360, v147
	v_xor_b32_e32 v62, 0x3f0, v147
	v_xor_b32_e32 v64, 0x410, v147
	v_and_b32_e32 v136, 0x5040504, v49
	v_lshl_or_b32 v49, v50, 4, v50
	v_xor_b32_e32 v50, 32, v149
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v70, v66, 16, 0
	v_xad_u32 v56, v56, 16, 0
	v_xad_u32 v74, v66, 32, 0
	s_clause 0x3                            ; 16-byte Folded Spill
	scratch_store_b32 off, v79, off offset:24
	scratch_store_b32 off, v82, off offset:36
	scratch_store_b32 off, v81, off offset:32
	scratch_store_b32 off, v80, off offset:28
	v_xad_u32 v79, v66, 48, 0
	v_xad_u32 v80, v66, 64, 0
	v_xad_u32 v81, 0x50, v66, 0
	v_xad_u32 v67, 0x60, v66, 0
	v_xad_u32 v66, 0x70, v66, 0
	v_add_nc_u32_e32 v187, 0, v51
	v_add_nc_u32_e32 v188, 0, v52
	v_add_nc_u32_e32 v189, 0, v53
	v_add_nc_u32_e32 v190, 0, v54
	v_add_nc_u32_e32 v191, 0, v55
	v_add_nc_u32_e32 v192, 0, v58
	v_add_nc_u32_e32 v193, 0, v59
	v_add_nc_u32_e32 v194, 0, v60
	v_add_nc_u32_e32 v195, 0, v61
	v_add_nc_u32_e32 v196, 0, v62
	v_add_nc_u32_e32 v197, 0, v64
	v_and_b32_e32 v137, 0x7060706, v49
	v_add_nc_u32_e32 v204, 0, v50
	v_xor_b32_e32 v68, 48, v144
	v_xor_b32_e32 v72, 16, v144
	v_xor_b32_e32 v71, 32, v144
	v_xor_b32_e32 v69, 0x50, v144
	v_xor_b32_e32 v73, 0x60, v144
	v_add_nc_u32_e32 v154, 0, v68
	v_xor_b32_e32 v65, 0x530, v147
	v_xor_b32_e32 v68, 0x5a0, v147
	v_xor_b32_e32 v76, 0x70, v144
	v_xor_b32_e32 v77, 16, v145
	v_xor_b32_e32 v82, 32, v145
	v_xor_b32_e32 v83, 48, v145
	v_xor_b32_e32 v84, 64, v145
	v_xor_b32_e32 v85, 0x50, v145
	v_xor_b32_e32 v86, 0x60, v145
	v_xor_b32_e32 v87, 0x70, v145
	v_xor_b32_e32 v88, 0x820, v145
	v_xor_b32_e32 v89, 0x830, v145
	v_xor_b32_e32 v90, 0x810, v145
	v_xor_b32_e32 v91, 0x860, v145
	v_xor_b32_e32 v92, 0x870, v145
	v_xor_b32_e32 v93, 0x840, v145
	v_xor_b32_e32 v94, 0x850, v145
	v_xor_b32_e32 v95, 0x1040, v145
	v_xor_b32_e32 v96, 0x1050, v145
	v_xor_b32_e32 v97, 0x1060, v145
	v_xor_b32_e32 v98, 0x1070, v145
	v_xor_b32_e32 v99, 0x1010, v145
	v_xor_b32_e32 v100, 0x1020, v145
	v_xor_b32_e32 v101, 0x1030, v145
	v_xor_b32_e32 v102, 0x1860, v145
	v_xor_b32_e32 v103, 0x1870, v145
	v_xor_b32_e32 v104, 0x1840, v145
	v_xor_b32_e32 v105, 0x1850, v145
	v_xor_b32_e32 v106, 0x1820, v145
	v_xor_b32_e32 v107, 0x1830, v145
	v_xor_b32_e32 v108, 0x1810, v145
	v_dual_mov_b32 v215, 0xff800000 :: v_dual_add_nc_u32 v152, 0, v72
	v_add_nc_u32_e32 v153, 0, v71
	v_add_nc_u32_e32 v156, 0, v69
	v_add_nc_u32_e32 v157, 0, v73
	v_xor_b32_e32 v69, 0x650, v147
	v_xor_b32_e32 v71, 0x6c0, v147
	v_xor_b32_e32 v72, 0x770, v147
	v_xor_b32_e32 v73, 0x7e0, v147
	v_add_nc_u32_e32 v198, 0, v65
	v_add_nc_u32_e32 v199, 0, v68
	v_xor_b32_e32 v65, 64, v149
	v_xor_b32_e32 v68, 0x60, v149
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v206, 8, v132
	v_mad_u64_u32 v[134:135], null, s80, 48, v[129:130]
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s10, s9, 14
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s9, s83, s9
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s3, s4, s3
	v_add_nc_u32_e32 v158, 0, v76
	v_add_nc_u32_e32 v143, 0, v77
	v_add_nc_u32_e32 v138, 0, v82
	v_add_nc_u32_e32 v141, 0, v83
	v_add_nc_u32_e32 v142, 0, v84
	v_add_nc_u32_e32 v139, 0, v85
	v_add_nc_u32_e32 v140, 0, v86
	v_add_nc_u32_e32 v131, 0, v87
	v_add_nc_u32_e32 v133, 0, v88
	v_add_nc_u32_e32 v167, 0, v89
	v_add_nc_u32_e32 v168, 0, v90
	v_add_nc_u32_e32 v169, 0, v91
	v_add_nc_u32_e32 v170, 0, v92
	v_add_nc_u32_e32 v171, 0, v93
	v_add_nc_u32_e32 v172, 0, v94
	v_add_nc_u32_e32 v173, 0, v95
	v_add_nc_u32_e32 v174, 0, v96
	v_add_nc_u32_e32 v175, 0, v97
	v_add_nc_u32_e32 v176, 0, v98
	v_add_nc_u32_e32 v177, 0, v99
	v_add_nc_u32_e32 v178, 0, v100
	v_add_nc_u32_e32 v179, 0, v101
	v_add_nc_u32_e32 v180, 0, v102
	v_add_nc_u32_e32 v181, 0, v103
	v_add_nc_u32_e32 v182, 0, v104
	v_add_nc_u32_e32 v183, 0, v105
	v_add_nc_u32_e32 v184, 0, v106
	v_add_nc_u32_e32 v185, 0, v107
	v_add_nc_u32_e32 v186, 0, v108
	v_add_nc_u32_e32 v200, 0, v69
	v_add_nc_u32_e32 v201, 0, v71
	v_add_nc_u32_e32 v202, 0, v72
	v_add_nc_u32_e32 v203, 0, v73
	v_add_nc_u32_e32 v205, 0, v65
	v_add_nc_u32_e32 v207, 0, v68
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v208, s80, 4, v129
	v_add_nc_u32_e32 v209, s8, v129
	v_add_nc_u32_e32 v210, s81, v132
	v_add_nc_u32_e32 v211, s81, v206
	v_dual_mov_b32 v135, v25 :: v_dual_mov_b32 v130, 0xff800000
	s_mov_b32 s68, 0
	.loc	1 852 32                        ; attention.py:852:32
	s_and_b32 s11, s11, 0xfffff800
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s82, s82, 0x3fb8aa3b
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s4, s5, s93
	s_add_i32 s96, s3, s9
	s_mov_b32 s94, 0x76543210
	s_mov_b32 s69, s68
	s_mov_b32 s70, s68
	s_mov_b32 s71, s68
	s_mov_b32 s72, s68
	s_mov_b32 s73, s68
	s_mov_b32 s74, s68
	s_mov_b32 s75, s68
	s_mov_b32 s90, s86
	s_mov_b32 s91, s87
	s_mov_b32 s95, s68
	s_and_b32 s85, s7, 0xffff
	s_and_b32 s89, s89, 0xffff
	.loc	1 852 32                        ; attention.py:852:32
	s_add_i32 s83, s11, s10
	s_add_i32 s96, s96, s4
	s_mov_b32 s84, s6
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v57, v[33:36]
	s_waitcnt vmcnt(2)
	ds_store_b128 v57, v[41:44] offset:4096
	s_waitcnt vmcnt(1)
	ds_store_b128 v56, v[37:40]
	s_waitcnt vmcnt(0)
	ds_store_b128 v56, v[45:48] offset:4096
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v63
	ds_load_b128 v[37:40], v70
	ds_load_b128 v[41:44], v74
	ds_load_b128 v[45:48], v79
	ds_load_b128 v[49:52], v80
	ds_load_b128 v[53:56], v81
	ds_load_b128 v[57:60], v67
	ds_load_b128 v[61:64], v66
	s_branch .LBB0_2
.LBB0_1:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 26 is_stmt 0                ; attention.py:0:26
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 860 21 is_stmt 1              ; attention.py:860:21
	v_dual_mul_f32 v109, s82, v89 :: v_dual_mul_f32 v108, s82, v91
	v_dual_mul_f32 v91, s82, v65 :: v_dual_mul_f32 v110, s82, v70
	.loc	1 877 34                        ; attention.py:877:34
	s_waitcnt vmcnt(0)
	v_and_b16 v65.l, 0xff, v99.l
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v111, s82, v90
	v_mul_f32_e32 v105, s82, v93
	v_dual_mul_f32 v93, s82, v96 :: v_dual_mul_f32 v90, s82, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s4, 0, v65.l
	v_and_b16 v65.l, 0xff, v99.h
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v89, s82, v68 :: v_dual_mul_f32 v96, s82, v69
	v_dual_mul_f32 v107, s82, v92 :: v_dual_mul_f32 v106, s82, v94
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s5, 0, v65.l
	v_and_b16 v65.l, 0xff, v100.h
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v92, s82, v66
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s9, vcc_lo, s4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s6, vcc_lo, s5
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s3, 0, v65.l
	v_and_b16 v65.l, 0xff, v100.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v66, 0, 1, s6
	s_barrier
	.loc	1 860 21 is_stmt 1              ; attention.py:860:21
	v_mul_f32_e32 v94, s82, v95
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s3, vcc_lo, s3
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s7, 0, v65.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v65, 0, 1, s3
	v_lshlrev_b16 v65.h, 8, v66.l
	v_cndmask_b32_e64 v66, 0, 1, s9
	.loc	1 860 21 is_stmt 1              ; attention.py:860:21
	v_dual_mul_f32 v95, s82, v71 :: v_dual_mul_f32 v112, s82, v72
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s5, vcc_lo, s7
	v_lshlrev_b16 v65.l, 8, v65.l
	v_cndmask_b32_e64 v67, 0, 1, s5
	v_or_b16 v69.l, v66.l, v65.h
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_lshrrev_b32_e32 v72, 24, v98
	v_lshrrev_b32_e32 v71, 24, v97
	.loc	1 860 21 is_stmt 1              ; attention.py:860:21
	v_dual_mul_f32 v117, s82, v77 :: v_dual_mul_f32 v118, s82, v78
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v69.h, v67.l, v65.l
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_and_b16 v65.l, 0xff, v98.h
	v_lshrrev_b32_e32 v77, 8, v103
	.loc	1 860 21 is_stmt 1              ; attention.py:860:21
	v_dual_mul_f32 v113, s82, v73 :: v_dual_mul_f32 v114, s82, v74
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v74, 8, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cmp_ne_u16_e64 s4, 0, v65.l
	v_and_b16 v65.l, 0xff, v98.l
	v_lshrrev_b32_e32 v73, 8, v102
	v_lshrrev_b32_e32 v78, 24, v102
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v115, s82, v75 :: v_dual_mul_f32 v116, s82, v76
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s7, 0, v65.l
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s11, vcc_lo, s4
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v75, 8, v101
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v65, 0, 1, s11
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v76, 24, v101
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s13, vcc_lo, s7
	.loc	1 860 21 is_stmt 1              ; attention.py:860:21
	v_dual_mul_f32 v81, s82, v81 :: v_dual_mul_f32 v82, s82, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 877 25                        ; attention.py:877:25
	v_lshlrev_b16 v65.l, 8, v65.l
	v_cndmask_b32_e64 v66, 0, 1, s13
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s33, 0, v76.l
	.loc	1 860 21 is_stmt 1              ; attention.py:860:21
	v_dual_mul_f32 v83, s82, v83 :: v_dual_mul_f32 v84, s82, v84
	v_dual_mul_f32 v85, s82, v85 :: v_dual_mul_f32 v86, s82, v86
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v68.h, v66.l, v65.l
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_and_b16 v65.l, 0xff, v97.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s33, vcc_lo, s33
	.loc	1 860 21 is_stmt 1              ; attention.py:860:21
	v_dual_mul_f32 v87, s82, v87 :: v_dual_mul_f32 v88, s82, v88
	v_dual_mul_f32 v79, s82, v79 :: v_dual_mul_f32 v80, s82, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s4, 0, v65.l
	v_and_b16 v65.l, 0xff, v97.l
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s97, s97, s81
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s15, vcc_lo, s4
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s7, 0, v65.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v65, 0, 1, s15
	s_and_b32 s17, vcc_lo, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_cndmask_b32_e64 v66, 0, 1, s17
	v_or_b16 v68.l, v66.l, v65.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v65.l, 0xff, v103.l
	.loc	1 877 25                        ; attention.py:877:25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s10, 0, v65.l
	v_and_b16 v65.l, 0xff, v103.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s10, vcc_lo, s10
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s7, 0, v65.l
	v_and_b16 v65.l, 0xff, v104.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s8, vcc_lo, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s4, 0, v65.l
	v_and_b16 v65.l, 0xff, v104.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v66, 0, 1, s8
	s_and_b32 s4, vcc_lo, s4
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s12, 0, v65.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v65, 0, 1, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v65.h, 8, v66.l
	v_cndmask_b32_e64 v66, 0, 1, s10
	s_and_b32 s7, vcc_lo, s12
	v_lshlrev_b16 v65.l, 8, v65.l
	v_cndmask_b32_e64 v67, 0, 1, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v67.h, v67.l, v65.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v65.l, 0xff, v102.h
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v67.l, v66.l, v65.h
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s12, 0, v65.l
	v_and_b16 v65.l, 0xff, v102.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s12, vcc_lo, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s14, 0, v65.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v65, 0, 1, s12
	s_and_b32 s14, vcc_lo, s14
	v_lshlrev_b16 v65.l, 8, v65.l
	v_cndmask_b32_e64 v66, 0, 1, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v66.h, v66.l, v65.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v65.l, 0xff, v101.h
	v_cmp_ne_u16_e64 s16, 0, v65.l
	v_and_b16 v65.l, 0xff, v101.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s16, vcc_lo, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s18, 0, v65.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v65, 0, 1, s16
	s_and_b32 s18, vcc_lo, s18
	v_lshlrev_b16 v65.l, 8, v65.l
	v_cndmask_b32_e64 v70, 0, 1, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v66.l, v70.l
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v70, 8, v97
	v_lshrrev_b32_e32 v97, 24, v103
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v66.l, v66.l, v65.l
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v65, 8, v99
	.loc	1 877 25                        ; attention.py:877:25
	ds_store_2addr_b64 v150, v[68:69], v[66:67] offset1:32
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v66, 8, v100
	v_lshrrev_b32_e32 v69, 24, v100
	v_and_b16 v65.l, 0xff, v65.l
	v_lshrrev_b32_e32 v67, 24, v99
	v_lshrrev_b32_e32 v68, 8, v98
	v_lshrrev_b32_e32 v98, 24, v104
	v_cmp_ne_u16_e64 s19, 0, v69.l
	v_cmp_ne_u16_e64 s20, 0, v65.l
	v_and_b16 v65.l, 0xff, v66.l
	v_cmp_ne_u16_e64 s21, 0, v67.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s19, vcc_lo, s19
	s_and_b32 s25, vcc_lo, s20
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s23, 0, v65.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v65, 0, 1, s19
	s_and_b32 s22, vcc_lo, s21
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s20, 0, v72.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v66, 0, 1, s22
	s_and_b32 s21, vcc_lo, s23
	v_lshlrev_b16 v65.l, 8, v65.l
	v_cndmask_b32_e64 v67, 0, 1, s21
	s_and_b32 s27, vcc_lo, s20
	v_lshlrev_b16 v65.h, 8, v66.l
	v_cndmask_b32_e64 v66, 0, 1, s25
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s20, 0, v71.l
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v69.h, v67.l, v65.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v65.l, 0xff, v68.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v69.l, v66.l, v65.h
	s_and_b32 s31, vcc_lo, s20
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s20, 0, v98.l
	v_cmp_ne_u16_e64 s23, 0, v65.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v65, 0, 1, s27
	s_and_b32 s20, vcc_lo, s20
	s_and_b32 s29, vcc_lo, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_cndmask_b32_e64 v66, 0, 1, s29
	v_or_b16 v68.h, v66.l, v65.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v65.l, 0xff, v70.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_ne_u16_e64 s23, 0, v65.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v65, 0, 1, s31
	s_and_b32 s34, vcc_lo, s23
	v_lshlrev_b16 v65.l, 8, v65.l
	v_cndmask_b32_e64 v66, 0, 1, s34
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s23, 0, v97.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v68.l, v66.l, v65.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v65.l, 0xff, v77.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s24, vcc_lo, s23
	v_cndmask_b32_e64 v66, 0, 1, s24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s26, 0, v65.l
	v_and_b16 v65.l, 0xff, v74.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s26, vcc_lo, s26
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s28, 0, v65.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v65, 0, 1, s20
	v_lshlrev_b16 v65.h, 8, v66.l
	v_cndmask_b32_e64 v66, 0, 1, s26
	s_and_b32 s23, vcc_lo, s28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_cndmask_b32_e64 v67, 0, 1, s23
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s28, 0, v78.l
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v67.h, v67.l, v65.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v65.l, 0xff, v73.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s28, vcc_lo, s28
	v_or_b16 v67.l, v66.l, v65.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s30, 0, v65.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v65, 0, 1, s28
	s_and_b32 s30, vcc_lo, s30
	v_lshlrev_b16 v65.l, 8, v65.l
	v_cndmask_b32_e64 v66, 0, 1, s30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v66.h, v66.l, v65.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v65.l, 0xff, v75.l
	v_cmp_ne_u16_e64 s35, 0, v65.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v65, 0, 1, s33
	s_and_b32 s35, vcc_lo, s35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v65.l, 8, v65.l
	v_cndmask_b32_e64 v70, 0, 1, s35
	v_mov_b16_e32 v66.l, v70.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v66.l, v66.l, v65.l
	v_add_nc_u32_e32 v65, 0, v146
	ds_store_2addr_b64 v150, v[68:69], v[66:67] offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[66:67], v65
	ds_load_b64 v[68:69], v187
	ds_load_b64 v[75:76], v188
	ds_load_b64 v[77:78], v189
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v72, 0x1000000, v67
	v_lshrrev_b16 v65.l, 8, v67.l
	v_and_b32_e32 v97, 0x10000, v67
	v_lshrrev_b16 v74.h, 8, v78.l
	v_and_b32_e32 v124, 0x1000000, v78
	v_and_b32_e32 v125, 0x10000, v78
	v_and_b32_e32 v78, 1, v78
	v_cmp_ne_u32_e64 s63, 0, v72
	v_and_b32_e32 v98, 0x1000000, v66
	v_lshrrev_b16 v71.l, 8, v68.l
	v_and_b16 v65.l, 1, v65.l
	v_cmp_eq_u32_e64 s39, 1, v78
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v72, 0xff800000, v93, s63
	.loc	1 877 25                        ; attention.py:877:25
	v_lshrrev_b16 v73.l, 8, v69.l
	v_cmp_ne_u32_e64 s65, 0, v98
	v_cmp_eq_u16_e64 s61, 1, v65.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v93, 0xff800000, v117, s39
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v70, 1, v67
	v_and_b16 v71.l, 1, v71.l
	v_cmp_ne_u32_e64 s60, 0, v97
	v_and_b32_e32 v99, 0x1000000, v69
	v_and_b32_e32 v100, 0x10000, v69
	v_cmp_eq_u32_e64 s62, 1, v70
	v_and_b32_e32 v101, 1, v69
	v_lshrrev_b16 v74.l, 8, v75.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v70, 0xff800000, v106, s61
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v103, 0x10000, v68
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v69, 0xff800000, v105, s62
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v102, 0x1000000, v68
	v_cmp_eq_u16_e64 s58, 1, v71.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v71, 0xff800000, v94, s60
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v104, 1, v68
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v68, 0xff800000, v107, s65
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v67, 0x10000, v66
	v_and_b16 v73.l, 1, v73.l
	v_lshrrev_b16 v73.h, 8, v76.l
	v_cmp_eq_u32_e64 s59, 1, v104
	v_cmp_ne_u32_e64 s57, 0, v102
	v_cmp_ne_u32_e64 s64, 0, v67
	v_cmp_eq_u16_e64 s54, 1, v73.l
	v_and_b16 v73.l, 1, v74.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v105, 0xff800000, v91, s59
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v122, 0x10000, v75
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v67, 0xff800000, v108, s64
	v_cndmask_b32_e64 v106, 0xff800000, v92, s58
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v121, 0x1000000, v75
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v108, 0xff800000, v89, s57
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v123, 1, v75
	v_lshrrev_b16 v75.l, 8, v77.l
	v_cmp_eq_u16_e64 s50, 1, v73.l
	v_and_b16 v73.l, 1, v73.h
	v_lshrrev_b16 v65.h, 8, v66.l
	v_and_b32_e32 v66, 1, v66
	v_and_b32_e32 v126, 0x1000000, v77
	v_and_b32_e32 v127, 0x10000, v77
	v_cmp_eq_u16_e64 s45, 1, v73.l
	v_and_b16 v73.l, 1, v75.l
	v_and_b32_e32 v77, 1, v77
	v_and_b16 v65.h, 1, v65.h
	v_and_b32_e32 v119, 0x1000000, v76
	v_and_b32_e32 v120, 0x10000, v76
	v_and_b32_e32 v76, 1, v76
	v_cmp_eq_u16_e64 s42, 1, v73.l
	v_and_b16 v73.l, 1, v74.h
	v_cmp_eq_u16_e64 s66, 1, v65.h
	v_cmp_eq_u32_e64 s67, 1, v66
	v_cmp_eq_u32_e64 s43, 1, v77
	v_cmp_ne_u32_e64 s56, 0, v103
	v_cmp_eq_u32_e64 s55, 1, v101
	v_cmp_ne_u32_e64 s52, 0, v100
	v_cmp_ne_u32_e64 s53, 0, v99
	v_cmp_eq_u32_e64 s51, 1, v123
	v_cmp_ne_u32_e64 s48, 0, v122
	v_cmp_ne_u32_e64 s49, 0, v121
	v_cmp_eq_u32_e64 s46, 1, v76
	v_cmp_ne_u32_e64 s44, 0, v120
	v_cmp_ne_u32_e64 s47, 0, v119
	v_cmp_ne_u32_e64 s40, 0, v127
	v_cmp_eq_u16_e64 s38, 1, v73.l
	v_cmp_ne_u32_e64 s41, 0, v126
	v_cmp_ne_u32_e64 s36, 0, v125
	v_cmp_ne_u32_e64 s37, 0, v124
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v65, 0xff800000, v109, s67
	v_cndmask_b32_e64 v66, 0xff800000, v111, s66
	v_cndmask_b32_e64 v89, 0xff800000, v113, s43
	v_add_nc_u32_e32 v113, 0, v149
	v_cndmask_b32_e64 v107, 0xff800000, v90, s56
	v_cndmask_b32_e64 v109, 0xff800000, v96, s55
	v_cndmask_b32_e64 v110, 0xff800000, v110, s54
	v_cndmask_b32_e64 v111, 0xff800000, v95, s52
	v_cndmask_b32_e64 v112, 0xff800000, v112, s53
	v_cndmask_b32_e64 v97, 0xff800000, v81, s51
	v_cndmask_b32_e64 v98, 0xff800000, v82, s50
	v_cndmask_b32_e64 v99, 0xff800000, v83, s48
	v_cndmask_b32_e64 v100, 0xff800000, v84, s49
	v_cndmask_b32_e64 v101, 0xff800000, v85, s46
	v_cndmask_b32_e64 v102, 0xff800000, v86, s45
	v_cndmask_b32_e64 v103, 0xff800000, v87, s44
	v_cndmask_b32_e64 v104, 0xff800000, v88, s47
	v_cndmask_b32_e64 v90, 0xff800000, v114, s42
	v_cndmask_b32_e64 v91, 0xff800000, v115, s40
	v_cndmask_b32_e64 v92, 0xff800000, v116, s41
	v_cndmask_b32_e64 v94, 0xff800000, v118, s38
	v_cndmask_b32_e64 v95, 0xff800000, v79, s36
	v_cndmask_b32_e64 v96, 0xff800000, v80, s37
	ds_store_b128 v113, v[65:68]
	ds_store_b128 v204, v[105:108]
	ds_store_b128 v205, v[97:100]
	ds_store_b128 v207, v[89:92]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[85:88], v151
	ds_load_b128 v[77:80], v151 offset:512
	ds_load_b128 v[81:84], v151 offset:1024
	ds_load_b128 v[73:76], v151 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v113, v[69:72]
	ds_store_b128 v204, v[109:112]
	ds_store_b128 v205, v[101:104]
	ds_store_b128 v207, v[93:96]
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v113, s97, v132, 1
	v_add_lshl_u32 v114, s97, v210, 1
	v_add_lshl_u32 v115, s97, v206, 1
	v_add_lshl_u32 v116, s97, v211, 1
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v113, 0x80000000, v113, s2
	v_cndmask_b32_e64 v114, 0x80000000, v114, s2
	v_cndmask_b32_e64 v115, 0x80000000, v115, s2
	v_cndmask_b32_e64 v120, 0x80000000, v116, s2
	.loc	1 882 26                        ; attention.py:882:26
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[116:119], v113, s[88:91], 0 offen
	buffer_load_b128 v[159:162], v115, s[88:91], 0 offen
	buffer_load_b128 v[163:166], v114, s[88:91], 0 offen
	buffer_load_b128 v[217:220], v120, s[88:91], 0 offen
	v_add_nc_u32_e32 v225, 0, v147
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v221.l, v116.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v221.h, v163.l
	v_mov_b16_e64 v163.l, v116.h
	v_mov_b16_e64 v222.l, v117.l
	v_mov_b16_e64 v222.h, v164.l
	v_mov_b16_e64 v164.l, v117.h
	v_mov_b16_e64 v223.l, v118.l
	v_mov_b16_e64 v223.h, v165.l
	v_mov_b16_e64 v165.l, v118.h
	v_mov_b16_e64 v224.l, v119.l
	v_mov_b16_e64 v224.h, v166.l
	v_mov_b16_e64 v166.l, v119.h
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_b128 v[125:128], v151
	ds_load_b128 v[117:120], v151 offset:512
	ds_load_b128 v[121:124], v151 offset:1024
	ds_load_b128 v[113:116], v151 offset:1536
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v225, v221
	ds_store_b32 v190, v163
	ds_store_b32 v191, v222
	ds_store_b32 v192, v164
	ds_store_b32 v193, v223
	ds_store_b32 v194, v165
	ds_store_b32 v195, v224
	ds_store_b32 v196, v166
	v_mov_b16_e64 v163.l, v159.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v163.h, v217.l
	v_mov_b16_e64 v217.l, v159.h
	v_mov_b16_e64 v159.l, v160.l
	v_mov_b16_e64 v159.h, v218.l
	v_mov_b16_e64 v218.l, v160.h
	v_mov_b16_e64 v160.l, v161.l
	v_mov_b16_e64 v160.h, v219.l
	v_mov_b16_e64 v219.l, v161.h
	v_mov_b16_e64 v161.l, v162.l
	v_mov_b16_e64 v161.h, v220.l
	v_mov_b16_e64 v220.l, v162.h
	ds_store_b32 v197, v163
	ds_store_b32 v225, v217 offset:1152
	ds_store_b32 v198, v159
	ds_store_b32 v199, v218
	ds_store_b32 v200, v160
	ds_store_b32 v201, v219
	ds_store_b32 v202, v161
	ds_store_b32 v203, v220
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v159, v106, v107, v108
	v_max3_f32 v160, v109, v110, v111
	v_max3_f32 v161, v112, v97, v98
	v_max3_f32 v162, v89, v90, v91
.Ltmp2:
	.loc	1 877 34                        ; attention.py:877:34
	v_mov_b16_e64 v218.h, 0
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v159, v159, v160, v161
	v_max3_f32 v160, v99, v100, v101
	v_max3_f32 v161, v102, v103, v104
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[240:243], v168
	ds_load_b128 v[244:247], v131
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v160, v160, v161, v162
	v_max_f32_e32 v161, v65, v66
	v_max3_f32 v162, v68, v69, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v161, v161, v67, v162
	v_max3_f32 v162, v71, v72, v105
	v_max3_f32 v159, v161, v162, v159
	v_dual_max_f32 v161, v92, v93 :: v_dual_max_f32 v162, v95, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v161, v161, v94, v162
	v_max3_f32 v159, v159, v160, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v160, v159, s94, 0xfedcba98 op_sel:[1,0]
.Ltmp7:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v217, v216, v159, v160
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v66, v217
	v_sub_f32_e32 v65, v65, v217
	v_sub_f32_e32 v68, v68, v217
	v_sub_f32_e32 v67, v67, v217
	v_sub_f32_e32 v70, v70, v217
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v70, v70
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v69, v217
	v_sub_f32_e32 v72, v72, v217
	v_sub_f32_e32 v71, v71, v217
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s66
	v_cndmask_b32_e64 v65, 0, v65, s67
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v68, 0, v68, s65
	v_cndmask_b32_e64 v67, 0, v67, s64
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v70, 0, v70, s61
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v218.l, v66.h
	v_cmp_o_f32_e64 s66, v66, v66
	v_cmp_o_f32_e64 s67, v65, v65
	v_cmp_o_f32_e64 s65, v68, v68
	v_cmp_o_f32_e64 s64, v67, v67
	v_and_b32_e32 v159, 1, v218
	v_mov_b16_e64 v218.l, v68.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s61, v70, v70
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v159, v66, v159, 0x7fff
	v_mov_b16_e32 v66.l, v65.h
	v_mov_b16_e64 v66.h, v218.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v159.h, 0x7fff, v159.h, s66
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s62
	v_cndmask_b32_e64 v72, 0, v72, s63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v66, v65, v66, 0x7fff
	v_cmp_o_f32_e64 s62, v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s60
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v159.l, 0x7fff, v66.h, s67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s60, v71, v71
	v_permlanex16_b32 v66, v159, s94, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v65, v66, v159, v136
	v_perm_b32 v66, v66, v159, v137
	v_and_b32_e32 v159, 1, v218
	v_mov_b16_e64 v218.l, v70.h
	v_add3_u32 v159, v68, v159, 0x7fff
	v_mov_b16_e32 v68.l, v67.h
	v_mov_b16_e64 v68.h, v218.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v159.h, 0x7fff, v159.h, s65
	v_and_b32_e32 v68, 1, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v68, v67, v68, 0x7fff
	v_cndmask_b16 v159.l, 0x7fff, v68.h, s64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v68, v159, s94, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v67, v68, v159, v136
	v_perm_b32 v68, v68, v159, v137
	v_and_b32_e32 v159, 1, v218
	v_mov_b16_e64 v218.l, v72.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v159, v70, v159, 0x7fff
	v_mov_b16_e32 v70.l, v69.h
	v_mov_b16_e64 v70.h, v218.h
	v_cndmask_b16 v159.h, 0x7fff, v159.h, s61
	v_cmp_o_f32_e64 s61, v72, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v70, 1, v70
	v_add3_u32 v70, v69, v70, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v159.l, 0x7fff, v70.h, s62
	v_permlanex16_b32 v70, v159, s94, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v69, v70, v159, v136
	v_perm_b32 v70, v70, v159, v137
	v_and_b32_e32 v159, 1, v218
	v_add3_u32 v159, v72, v159, 0x7fff
	v_mov_b16_e32 v72.l, v71.h
	v_mov_b16_e64 v72.h, v218.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v159.h, 0x7fff, v159.h, s61
	v_and_b32_e32 v72, 1, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v72, v71, v72, 0x7fff
	v_cndmask_b16 v159.l, 0x7fff, v72.h, s60
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s60, 0xff800000, v216
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v72, v159, s94, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v71, v72, v159, v136
	v_perm_b32 v72, v72, v159, v137
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v159, v216, v217
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v159, v159
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v219, 0, v159, s60
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v11, v11, v219 :: v_dual_add_nc_u32 v216, 0, v145
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[220:223], v216
	ds_load_b128 v[224:227], v143
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v219
	v_mul_f32_e32 v26, v26, v219
	v_mul_f32_e32 v27, v27, v219
	v_mul_f32_e32 v28, v28, v219
	v_mul_f32_e32 v29, v29, v219
	v_mul_f32_e32 v30, v30, v219
	v_mul_f32_e32 v31, v31, v219
	v_mul_f32_e32 v32, v32, v219
	v_mul_f32_e32 v17, v17, v219
	v_mul_f32_e32 v18, v18, v219
	v_mul_f32_e32 v19, v19, v219
	v_mul_f32_e32 v20, v20, v219
	v_mul_f32_e32 v21, v21, v219
	v_mul_f32_e32 v22, v22, v219
	v_mul_f32_e32 v23, v23, v219
	v_mul_f32_e32 v24, v24, v219
	v_mul_f32_e32 v9, v9, v219
	v_mul_f32_e32 v10, v10, v219
	v_mul_f32_e32 v12, v12, v219
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[220:227], v[65:72], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[220:223], v133
	ds_load_b128 v[224:227], v167
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v13, v13, v219
	v_mul_f32_e32 v14, v14, v219
	v_mul_f32_e32 v15, v15, v219
	v_mul_f32_e32 v16, v16, v219
	v_mul_f32_e32 v1, v1, v219
	v_mul_f32_e32 v2, v2, v219
	v_mul_f32_e32 v3, v3, v219
	v_mul_f32_e32 v4, v4, v219
	v_mul_f32_e32 v5, v5, v219
	v_mul_f32_e32 v6, v6, v219
	v_mul_f32_e32 v7, v7, v219
	v_mul_f32_e32 v8, v8, v219
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[228:231], v138
	ds_load_b128 v[236:239], v216 offset:2048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[220:227], v[65:72], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[220:223], v173
	ds_load_b128 v[224:227], v174
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[220:227], v[65:72], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[219:222], v180
	ds_load_b128 v[223:226], v181
	ds_load_b128 v[248:251], v182
	ds_load_b128 v[163:166], v179
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[219:226], v[65:72], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v106, v217
	v_sub_f32_e32 v65, v105, v217
	v_sub_f32_e32 v68, v108, v217
	v_sub_f32_e32 v67, v107, v217
	v_sub_f32_e32 v70, v110, v217
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v70, v70
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v109, v217
	v_sub_f32_e32 v72, v112, v217
	v_sub_f32_e32 v71, v111, v217
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[219:222], v175
	ds_load_b128 v[223:226], v176
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s58
	v_cndmask_b32_e64 v65, 0, v65, s59
	v_cndmask_b32_e64 v68, 0, v68, s57
	v_cndmask_b32_e64 v67, 0, v67, s56
	v_cndmask_b32_e64 v70, 0, v70, s54
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v218.l, v66.h
	v_cmp_o_f32_e64 s58, v66, v66
	v_cmp_o_f32_e64 s59, v65, v65
	v_cmp_o_f32_e64 s57, v68, v68
	v_cmp_o_f32_e64 s56, v67, v67
	v_and_b32_e32 v105, 1, v218
	v_mov_b16_e64 v218.l, v68.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s54, v70, v70
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v105, v66, v105, 0x7fff
	v_mov_b16_e32 v66.l, v65.h
	v_mov_b16_e64 v66.h, v218.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v105.h, 0x7fff, v105.h, s58
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s55
	v_cndmask_b32_e64 v72, 0, v72, s53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v66, v65, v66, 0x7fff
	v_cmp_o_f32_e64 s55, v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s52
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s53, v72, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v105.l, 0x7fff, v66.h, s59
	v_cmp_o_f32_e64 s52, v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v66, v105, s94, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v65, v66, v105, v136
	v_perm_b32 v66, v66, v105, v137
	v_and_b32_e32 v105, 1, v218
	v_mov_b16_e64 v218.l, v70.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v105, v68, v105, 0x7fff
	v_mov_b16_e32 v68.l, v67.h
	v_mov_b16_e64 v68.h, v218.h
	v_cndmask_b16 v105.h, 0x7fff, v105.h, s57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v68, 1, v68
	v_add3_u32 v68, v67, v68, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v105.l, 0x7fff, v68.h, s56
	v_permlanex16_b32 v68, v105, s94, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v67, v68, v105, v136
	v_perm_b32 v68, v68, v105, v137
	v_and_b32_e32 v105, 1, v218
	v_mov_b16_e64 v218.l, v72.h
	v_add3_u32 v105, v70, v105, 0x7fff
	v_mov_b16_e32 v70.l, v69.h
	v_mov_b16_e64 v70.h, v218.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v105.h, 0x7fff, v105.h, s54
	v_and_b32_e32 v70, 1, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v70, v69, v70, 0x7fff
	v_cndmask_b16 v105.l, 0x7fff, v70.h, s55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v70, v105, s94, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v69, v70, v105, v136
	v_perm_b32 v70, v70, v105, v137
	v_and_b32_e32 v105, 1, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v105, v72, v105, 0x7fff
	v_mov_b16_e32 v72.l, v71.h
	v_mov_b16_e64 v72.h, v218.h
	v_cndmask_b16 v105.h, 0x7fff, v105.h, s53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v72, 1, v72
	v_add3_u32 v72, v71, v72, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v105.l, 0x7fff, v72.h, s52
	v_permlanex16_b32 v72, v105, s94, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v71, v72, v105, v136
	v_perm_b32 v72, v72, v105, v137
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[232:235], v141
	ds_load_b128 v[105:108], v142
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[219:226], v[65:72], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[252:255], v183
	ds_load_b128 v[219:222], v184
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[236:243], v[65:72], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[109:112], v139
	ds_load_b128 v[240:243], v140
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[228:235], v[65:72], v[25:32]
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[248:255], v[65:72], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v98, v217
	v_sub_f32_e32 v65, v97, v217
	v_sub_f32_e32 v68, v100, v217
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v68, v68
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v65, 0, v65, s51
	v_cndmask_b32_e64 v68, 0, v68, s49
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v218.l, v66.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v102, v217
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s50, v66, v66
	v_cmp_o_f32_e64 s51, v65, v65
	v_cmp_o_f32_e64 s49, v68, v68
	v_and_b32_e32 v97, 1, v218
	v_mov_b16_e64 v218.l, v68.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v72, v104, v217
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v97, v66, v97, 0x7fff
	v_mov_b16_e32 v66.l, v65.h
	v_mov_b16_e64 v66.h, v218.h
	v_cndmask_b16 v97.h, 0x7fff, v97.h, s50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v66, 1, v66
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v66, v65, v66, 0x7fff
	v_cmp_o_f32_e64 s45, v70, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v97.l, 0x7fff, v66.h, s51
	v_permlanex16_b32 v66, v97, s94, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_perm_b32 v65, v66, v97, v136
	v_perm_b32 v66, v66, v97, v137
	v_and_b32_e32 v97, 1, v218
	v_mov_b16_e64 v218.l, v70.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v97, v68, v97, 0x7fff
	v_mov_b16_e64 v68.h, v218.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v99, v217
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v97.h, 0x7fff, v97.h, s49
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s47
	v_cndmask_b32_e64 v67, 0, v67, s48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v68.l, v67.h
	v_cmp_o_f32_e64 s48, v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v68, 1, v68
	v_add3_u32 v68, v67, v68, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v97.l, 0x7fff, v68.h, s48
	v_permlanex16_b32 v68, v97, s94, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v67, v68, v97, v136
	v_perm_b32 v68, v68, v97, v137
	v_and_b32_e32 v97, 1, v218
	v_mov_b16_e64 v218.l, v72.h
	v_add3_u32 v97, v70, v97, 0x7fff
	v_mov_b16_e64 v70.h, v218.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v101, v217
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v97.h, 0x7fff, v97.h, s45
	v_cmp_o_f32_e64 s45, v72, v72
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s46
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v70.l, v69.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s46, v69, v69
	v_and_b32_e32 v70, 1, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v70, v69, v70, 0x7fff
	v_cndmask_b16 v97.l, 0x7fff, v70.h, s46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v70, v97, s94, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v69, v70, v97, v136
	v_perm_b32 v70, v70, v97, v137
	v_and_b32_e32 v97, 1, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v97, v72, v97, 0x7fff
	v_mov_b16_e64 v72.h, v218.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v71, v103, v217
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v97.h, 0x7fff, v97.h, s45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v72.l, v71.h
	v_cmp_o_f32_e64 s44, v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v72, 1, v72
	v_add3_u32 v72, v71, v72, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v97.l, 0x7fff, v72.h, s44
	v_permlanex16_b32 v72, v97, s94, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v71, v72, v97, v136
	v_perm_b32 v72, v72, v97, v137
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[97:100], v169
	ds_load_b128 v[101:104], v170
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[105:112], v[65:72], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[223:226], v185
	ds_load_b128 v[109:112], v186
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[97:104], v[65:72], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[97:100], v216 offset:4096
	ds_load_b128 v[101:104], v177
	ds_load_b128 v[159:162], v178
	ds_load_b128 v[105:108], v216 offset:6144
	v_mov_b32_e32 v216, v217
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[219:226], v[65:72], v[1:8]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[97:104], v[65:72], v[9:16]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v90, v217
	v_sub_f32_e32 v65, v89, v217
	v_sub_f32_e32 v68, v92, v217
	v_sub_f32_e32 v71, v95, v217
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v71, v71
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s42
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v65, 0, v65, s43
	v_cndmask_b32_e64 v68, 0, v68, s41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v71, 0, v71, s36
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v218.l, v66.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v94, v217
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s42, v66, v66
	v_cmp_o_f32_e64 s43, v65, v65
	v_cmp_o_f32_e64 s41, v68, v68
	v_and_b32_e32 v89, 1, v218
	v_mov_b16_e64 v218.l, v68.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v72, v96, v217
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s36, v71, v71
	v_add3_u32 v89, v66, v89, 0x7fff
	v_mov_b16_e32 v66.l, v65.h
	v_mov_b16_e64 v66.h, v218.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v89.h, 0x7fff, v89.h, s42
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s38
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v66, v65, v66, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s38, v70, v70
	v_cndmask_b16 v89.l, 0x7fff, v66.h, s43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v66, v89, s94, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v65, v66, v89, v136
	v_perm_b32 v66, v66, v89, v137
	v_and_b32_e32 v89, 1, v218
	v_mov_b16_e64 v218.l, v70.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v89, v68, v89, 0x7fff
	v_mov_b16_e64 v68.h, v218.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v91, v217
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v89.h, 0x7fff, v89.h, s41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s37, v72, v72
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v68.l, v67.h
	v_cmp_o_f32_e64 s40, v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v68, 1, v68
	v_add3_u32 v68, v67, v68, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v89.l, 0x7fff, v68.h, s40
	v_permlanex16_b32 v68, v89, s94, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v67, v68, v89, v136
	v_perm_b32 v68, v68, v89, v137
	v_and_b32_e32 v89, 1, v218
	v_mov_b16_e64 v218.l, v72.h
	v_add3_u32 v89, v70, v89, 0x7fff
	v_mov_b16_e64 v70.h, v218.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v93, v217
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v89.h, 0x7fff, v89.h, s38
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v70.l, v69.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s39, v69, v69
	v_and_b32_e32 v70, 1, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v70, v69, v70, 0x7fff
	v_cndmask_b16 v89.l, 0x7fff, v70.h, s39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v70, v89, s94, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v69, v70, v89, v136
	v_perm_b32 v70, v70, v89, v137
	v_and_b32_e32 v89, 1, v218
	v_mov_b16_e64 v218.l, v71.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v89, v72, v89, 0x7fff
	v_and_b32_e32 v72, 1, v218
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v89.h, 0x7fff, v89.h, s37
	v_add3_u32 v72, v71, v72, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v89.l, 0x7fff, v72.h, s36
	v_permlanex16_b32 v72, v89, s94, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v71, v72, v89, v136
	v_perm_b32 v72, v72, v89, v137
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[89:92], v171
	ds_load_b128 v[93:96], v172
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[240:247], v[65:72], v[25:32]
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[159:166], v[65:72], v[9:16]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[105:112], v[65:72], v[1:8]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[89:96], v[65:72], v[17:24]
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v65, v81, v81
	v_max_f32_e32 v66, v85, v85
	v_max3_f32 v67, v127, v123, v128
	v_max_f32_e32 v90, v73, v73
	v_max_f32_e32 v91, v77, v77
	v_max3_f32 v92, v119, v115, v120
	v_max_f32_e32 v65, v66, v65
	v_max3_f32 v66, v82, v87, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v90, v91, v90
	v_max3_f32 v91, v74, v79, v75
	v_max3_f32 v65, v65, v86, v66
	v_max3_f32 v66, v121, v126, v122
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max3_f32 v90, v90, v78, v91
	v_max3_f32 v91, v113, v118, v114
	v_max3_f32 v66, v66, v67, v124
	v_max3_f32 v67, v88, v84, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max3_f32 v91, v91, v92, v116
	v_max3_f32 v92, v80, v76, v117
	v_max3_f32 v65, v65, v67, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v90, v90, v92, v91
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v66, v65 :: v_dual_mov_b32 v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v66, v66 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v91, v91 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v66, v66, v66 :: v_dual_max_f32 v91, v91, v91
	v_dual_max_f32 v65, v65, v66 :: v_dual_max_f32 v90, v90, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v66, v65 :: v_dual_mov_b32 v91, v90
	v_mov_b32_dpp v66, v66 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v91, v91 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v66, v66, v66 :: v_dual_max_f32 v91, v91, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v67, v65, v66
.Ltmp13:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v65, v212, v212 :: v_dual_max_f32 v90, v90, v91
	v_max_f32_e32 v91, v213, v213
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v212, v65, v67 :: v_dual_max_f32 v213, v91, v90
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v81, v212
	v_sub_f32_e32 v69, v88, v212
	v_sub_f32_e32 v66, v86, v212
	v_sub_f32_e32 v86, v121, v212
	v_sub_f32_e32 v65, v85, v212
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v81, v84, v212
	v_sub_f32_e32 v84, v127, v212
	v_dual_sub_f32 v71, v82, v212 :: v_dual_sub_f32 v80, v80, v213
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v66, v66
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v68, v87, v212
	v_sub_f32_e32 v72, v83, v212
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s34
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v82, v125, v212 :: v_dual_sub_f32 v79, v79, v213
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s17
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v66, 0, v66, s15
	v_cndmask_b32_e64 v69, 0, v69, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
.Ltmp14:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v65, v65, v70
.Ltmp15:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v71
	v_exp_f32_e32 v71, v86
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s13
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v70, 0, v70, s31
	v_cndmask_b32_e64 v71, 0, v71, s25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp16:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v70
.Ltmp17:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v72
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp18:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v68, v68, v70
.Ltmp19:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v81
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp20:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v69, v69, v70
.Ltmp21:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v82
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp22:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v70, v70, v71
.Ltmp23:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v83, v126, v212 :: v_dual_sub_f32 v76, v76, v213
	v_dual_sub_f32 v87, v122, v212 :: v_dual_sub_f32 v94, v120, v213
	v_dual_sub_f32 v88, v123, v212 :: v_dual_sub_f32 v77, v77, v213
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v71, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v72, v87
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v85, v128, v212 :: v_dual_sub_f32 v78, v78, v213
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v81, v88
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v89, v124, v212 :: v_dual_sub_f32 v74, v74, v213
	v_sub_f32_e32 v73, v73, v213
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s6
	v_cndmask_b32_e64 v72, 0, v72, s22
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v92, v118, v213
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v82, v89
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v81, 0, v81, s21
.Ltmp24:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v71, v71, v72
.Ltmp25:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v84
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v75, v75, v213
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v82, 0, v82, s19
	v_cndmask_b32_e64 v72, 0, v72, s5
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp26:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v72, v72, v81
.Ltmp27:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v81, v85
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v98, v116, v213 :: v_dual_add_f32 v65, v65, v66
.Ltmp28:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v68, v69
	v_add_f32_e32 v68, v70, v71
.Ltmp29:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v77
	v_exp_f32_e32 v71, v73
	v_exp_f32_e32 v73, v75
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v81, 0, v81, s3
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v96, v114, v213
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v215
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v81, v81, v82
.Ltmp31:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s18
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v71, 0, v71, s35
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v91, v117, v213
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v73, 0, v73, s30
.Ltmp32:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v69, v72, v81
.Ltmp33:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v74
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v70, v70, v71
.Ltmp35:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v78
	v_exp_f32_e32 v74, v76
	v_exp_f32_e32 v76, v96
	v_exp_f32_e32 v78, v98
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v68, v68, v69
.Ltmp37:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s33
	v_cndmask_b32_e64 v71, 0, v71, s16
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v74, 0, v74, s28
	v_cndmask_b32_e64 v76, 0, v76, s24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v78, 0, v78, s20
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v71, v71, v72
.Ltmp39:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v79
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v95, v113, v213
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s14
.Ltmp40:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v72, v72, v73
.Ltmp41:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v73, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v73, 0, v73, s12
.Ltmp42:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v73, v73, v74
.Ltmp43:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v74, v91
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v65, v65, v66 :: v_dual_add_f32 v66, v70, v71
.Ltmp45:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v75, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v70, v72, v73
.Ltmp47:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v97, v115, v213 :: v_dual_add_f32 v66, v66, v70
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v74, 0, v74, s10
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v77, v97
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v75, 0, v75, s26
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v93, v119, v213 :: v_dual_add_f32 v74, v74, v75
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v75, v92
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v77, 0, v77, s23
	v_cndmask_b32_e64 v75, 0, v75, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp48:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v75, v75, v76
.Ltmp49:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v76, v93
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v76, 0, v76, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp50:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v76, v76, v77
.Ltmp51:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v77, v94
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v77, 0, v77, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp52:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v77, v77, v78
	v_dual_add_f32 v71, v74, v75 :: v_dual_add_f32 v72, v76, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v69, v71, v72
	v_dual_add_f32 v65, v65, v68 :: v_dual_add_f32 v66, v66, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v68, v65
	v_mov_b32_dpp v68, v68 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v65, v65, v68 :: v_dual_mov_b32 v68, v66
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v68, v68 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v68
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v69, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v66, v69
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v68, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v68, v68 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v65, v65, v68 :: v_dual_max_f32 v68, v215, v215
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp61:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v67, v68, v67
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v68, v215, v67
	v_mov_b32_e32 v215, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v68, v68
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v68, 0, v68, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v130
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v65, v214, v68
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v68, v130, v130
	v_max_f32_e32 v68, v68, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v214, v65 :: v_dual_sub_f32 v69, v130, v68
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e64 v69, 0, v69, s3
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_add_i32 s3, s95, 64
	s_cmpk_lt_u32 s95, 0x7c0
	s_mov_b32 s95, s3
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v66, v135, v69
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v130, v68 :: v_dual_mov_b32 v135, v66
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_6
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s97, s95, s83
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v120, s75 :: v_dual_add_nc_u32 v81, 0, v144
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s3, s97, s80
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v119, s74 :: v_dual_mov_b32 v118, s73
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v66, s3, v208, 1
	v_add_lshl_u32 v65, s3, v129, 1
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v117, s72 :: v_dual_mov_b32 v116, s71
	v_dual_mov_b32 v115, s70 :: v_dual_mov_b32 v114, s69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v69, 0x80000000, v66, s1
	v_add_lshl_u32 v66, s3, v209, 1
	v_cndmask_b32_e64 v65, 0x80000000, v65, s1
	.loc	1 859 30                        ; attention.py:859:30
	v_mov_b32_e32 v113, s68
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s4, s96, s95
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v73, 0x80000000, v66, s1
	v_add_lshl_u32 v66, s3, v134, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e64 v77, 0x80000000, v66, s1
	s_clause 0x3
	buffer_load_b128 v[65:68], v65, s[84:87], 0 offen
	buffer_load_b128 v[69:72], v69, s[84:87], 0 offen
	buffer_load_b128 v[73:76], v73, s[84:87], 0 offen
	buffer_load_b128 v[77:80], v77, s[84:87], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	ds_store_b128 v148, v[65:68]
	s_waitcnt vmcnt(2)
	ds_store_b128 v148, v[69:72] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v148, v[73:76] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v148, v[77:80] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v152
	ds_load_b128 v[65:68], v81
	ds_load_b128 v[73:76], v81 offset:2048
	ds_load_b128 v[77:80], v152 offset:2048
	ds_load_b128 v[101:104], v152 offset:4096
	ds_load_b128 v[97:100], v81 offset:4096
	ds_load_b128 v[105:108], v81 offset:6144
	ds_load_b128 v[109:112], v152 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[65:72], v[33:40], v[113:120]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[73:80], v[33:40], v[113:120]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[97:104], v[33:40], v[113:120]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[105:112], v[33:40], v[113:120]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[101:104], v154
	ds_load_b128 v[97:100], v153
	ds_load_b128 v[105:108], v153 offset:2048
	ds_load_b128 v[109:112], v154 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[97:104], v[41:48], v[89:96]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[105:112], v[41:48], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[101:104], v154 offset:4096
	ds_load_b128 v[97:100], v153 offset:4096
	ds_load_b128 v[105:108], v153 offset:6144
	ds_load_b128 v[109:112], v154 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[97:104], v[41:48], v[81:88]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[105:112], v[41:48], v[73:80]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[101:104], v156
	ds_load_b128 v[97:100], v155
	ds_load_b128 v[105:108], v155 offset:2048
	ds_load_b128 v[109:112], v156 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[97:104], v[49:56], v[89:96]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[105:112], v[49:56], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[101:104], v156 offset:4096
	ds_load_b128 v[97:100], v155 offset:4096
	ds_load_b128 v[105:108], v155 offset:6144
	ds_load_b128 v[109:112], v156 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[97:104], v[49:56], v[81:88]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[105:112], v[49:56], v[73:80]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[101:104], v158
	ds_load_b128 v[97:100], v157
	ds_load_b128 v[105:108], v157 offset:2048
	ds_load_b128 v[109:112], v158 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[89:96], v[97:104], v[57:64], v[89:96]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[105:112], v[57:64], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[101:104], v158 offset:4096
	ds_load_b128 v[97:100], v157 offset:4096
	ds_load_b128 v[105:108], v157 offset:6144
	ds_load_b128 v[109:112], v158 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[97:104], v[57:64], v[81:88]
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v100, 0
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[105:112], v[57:64], v[73:80]
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s5, vcc_lo
	s_cbranch_execz .LBB0_4
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 870 25                        ; attention.py:870:25
	scratch_load_b64 v[97:98], off, off offset:8 ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v97, s4, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v98, 31, v97
	v_add_co_u32 v97, s3, s76, v97
	v_add_co_ci_u32_e64 v98, null, s77, v98, s3
	global_load_b128 v[97:100], v[97:98], off
.LBB0_4:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s5
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v104, 0
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s5, vcc_lo
	s_cbranch_execz .LBB0_1
; %bb.5:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	scratch_load_b64 v[101:102], off, off   ; 8-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v101, s4, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v102, 31, v101
	v_add_co_u32 v101, s3, s76, v101
	v_add_co_ci_u32_e64 v102, null, s77, v102, s3
	global_load_b128 v[101:104], v[101:102], off
	s_branch .LBB0_1
.LBB0_6:
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v33, off, off offset:32
	scratch_load_b32 v34, off, off offset:36
	scratch_load_b32 v35, off, off offset:28
	v_lshrrev_b32_e32 v0, 4, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	v_and_b32_e32 v0, 4, v0
	s_waitcnt vmcnt(2)
	v_and_b32_e32 v33, 0x80, v33
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v34, 0, v34
	s_waitcnt vmcnt(0)
	v_lshl_add_u32 v35, v35, 1, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v0, v34, v33, v0
	ds_store_b64 v35, v[65:66]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 759 31                        ; attention.py:759:31
	scratch_load_b32 v33, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 818 13                        ; attention.py:818:13
	ds_load_b32 v37, v0
	.loc	1 759 31                        ; attention.py:759:31
	scratch_load_b32 v0, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v40, null, v37, v37, v26
	v_div_scale_f32 v42, null, v37, v37, v27
	v_div_scale_f32 v44, null, v37, v37, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v40
	v_rcp_f32_e32 v48, v42
	v_div_scale_f32 v50, null, v37, v37, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v49, v44
	v_div_scale_f32 v39, vcc_lo, v25, v37, v25
	v_div_scale_f32 v41, s2, v26, v37, v26
	v_div_scale_f32 v52, null, v37, v37, v30
	v_fma_f32 v55, -v40, v47, 1.0
	v_rcp_f32_e32 v53, v50
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v56, -v42, v48, 1.0
	v_fma_f32 v57, -v44, v49, 1.0
	v_div_scale_f32 v43, s3, v27, v37, v27
	v_fmac_f32_e32 v47, v55, v47
	v_div_scale_f32 v45, s4, v28, v37, v28
	v_rcp_f32_e32 v58, v52
	v_fmac_f32_e32 v49, v57, v49
	v_div_scale_f32 v51, s5, v29, v37, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v60, -v52, v58, 1.0
	v_fmac_f32_e32 v58, v60, v58
	.loc	1 759 31                        ; attention.py:759:31
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v0, 1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b32_e32 v36, v0, v33
	.loc	1 787 79                        ; attention.py:787:79
	scratch_load_b32 v0, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v38, s93, v36
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v36, s92, v36
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s1, 0x800, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v38, null, v37, v37, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v36, s81, v36
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v46, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v54, -v38, v46, 1.0
	v_fmac_f32_e32 v46, v54, v46
	v_fmac_f32_e32 v48, v56, v48
	v_fma_f32 v54, -v50, v53, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v55, v39, v46 :: v_dual_mul_f32 v56, v41, v47
	v_mul_f32_e32 v57, v43, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v53, v54, v53
	v_fma_f32 v61, -v38, v55, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v62, -v40, v56, v41
	v_mul_f32_e32 v59, v45, v49
	v_fma_f32 v63, -v42, v57, v43
	v_dual_mul_f32 v54, v51, v53 :: v_dual_fmac_f32 v55, v61, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v56, v62, v47
	v_fma_f32 v64, -v44, v59, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v38, v55, v39
	v_fma_f32 v39, -v40, v56, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v59, v64, v49
	v_div_fmas_f32 v38, v38, v46, v55
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2)
	v_fma_f32 v41, -v44, v59, v45
	v_fma_f32 v44, -v50, v54, v51
	v_fmac_f32_e32 v57, v63, v48
	v_div_fmas_f32 v39, v39, v47, v56
	v_div_fixup_f32 v25, v38, v37, v25
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v54, v44, v53
	v_fma_f32 v40, -v42, v57, v43
	v_div_scale_f32 v42, null, v37, v37, v31
	v_div_fixup_f32 v26, v39, v37, v26
	v_div_scale_f32 v39, s3, v30, v37, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v38, v42
	v_div_fmas_f32 v40, v40, v48, v57
	v_div_scale_f32 v43, null, v37, v37, v32
	v_mul_f32_e32 v45, v39, v58
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v27, v40, v37, v27
	v_rcp_f32_e32 v47, v43
	v_div_scale_f32 v44, null, v37, v37, v17
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v42, v38, 1.0
	v_fma_f32 v40, -v52, v45, v39
	v_fma_f32 v48, -v50, v54, v51
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s2, 0, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v46, v38
	v_div_fmas_f32 v41, v41, v49, v59
	v_fmac_f32_e32 v45, v40, v58
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v46, -v43, v47, 1.0
	v_rcp_f32_e32 v49, v44
	v_div_fixup_f32 v28, v41, v37, v28
	v_div_scale_f32 v41, s4, v31, v37, v31
	v_div_fmas_f32 v48, v48, v53, v54
	v_fma_f32 v39, -v52, v45, v39
	v_div_scale_f32 v53, null, v37, v37, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_mul_f32 v40, v41, v38 :: v_dual_fmac_f32 v47, v46, v47
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v52, -v44, v49, 1.0
	v_div_fmas_f32 v39, v39, v58, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v50, -v42, v40, v41
	v_rcp_f32_e32 v45, v53
	v_div_scale_f32 v46, s6, v32, v37, v32
	v_dual_fmac_f32 v49, v52, v49 :: v_dual_fmac_f32 v40, v50, v38
	v_div_fixup_f32 v29, v48, v37, v29
	v_div_fixup_f32 v30, v39, v37, v30
	v_div_scale_f32 v48, null, v37, v37, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v39, -v42, v40, v41
	v_fma_f32 v42, -v53, v45, 1.0
	v_mul_f32_e32 v51, v46, v47
	v_div_scale_f32 v52, s3, v17, v37, v17
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v42, v45
	v_rcp_f32_e32 v42, v48
	v_fma_f32 v50, -v43, v51, v46
	v_div_fmas_f32 v38, v39, v38, v40
	s_mov_b32 vcc_lo, s6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s2
	v_cndmask_b32_e64 v26, 0, v26, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v51, v50, v47
	v_div_fixup_f32 v31, v38, v37, v31
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s2
	v_cndmask_b32_e64 v28, 0, v28, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v48, v42, 1.0
	v_mul_f32_e32 v41, v52, v49
	v_fma_f32 v39, -v43, v51, v46
	v_div_scale_f32 v46, null, v37, v37, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v50, v42
	v_fma_f32 v40, -v44, v41, v52
	v_div_scale_f32 v43, s4, v18, v37, v18
	v_div_fmas_f32 v39, v39, v47, v51
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v41, v40, v49
	v_rcp_f32_e32 v40, v46
	v_mul_f32_e32 v47, v43, v45
	v_div_fixup_f32 v32, v39, v37, v32
	v_div_scale_f32 v51, null, v37, v37, v21
	v_fma_f32 v38, -v44, v41, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v39, -v53, v47, v43
	v_div_scale_f32 v44, s5, v19, v37, v19
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v46, v40, 1.0
	v_div_fmas_f32 v38, v38, v49, v41
	v_fmac_f32_e32 v47, v39, v45
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v41, v51
	v_fmac_f32_e32 v40, v50, v40
	v_div_scale_f32 v50, null, v37, v37, v22
	v_div_fixup_f32 v17, v38, v37, v17
	v_fma_f32 v38, -v53, v47, v43
	v_div_scale_f32 v49, s3, v20, v37, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v53, v50
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v45, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v52, v49, v40
	v_fma_f32 v54, -v51, v41, 1.0
	v_div_scale_f32 v45, s4, v21, v37, v21
	v_div_fixup_f32 v18, v38, v37, v18
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v41, v54, v41
	v_fma_f32 v47, -v50, v53, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v27, v27
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s2
	v_cndmask_b32_e64 v32, 0, v32, s2
	v_cndmask_b32_e64 v17, 0, v17, s2
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v53, v47, v53
	v_mul_f32_e32 v39, v44, v42
	v_div_scale_f32 v47, null, v37, v37, v23
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v48, v39, v44
	v_fmac_f32_e32 v39, v43, v42
	v_fma_f32 v43, -v46, v52, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v48, v39, v44
	v_dual_fmac_f32 v52, v43, v40 :: v_dual_mul_f32 v43, v45, v41
	v_div_scale_f32 v44, s6, v22, v37, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v38, v38, v42, v39
	v_fma_f32 v39, -v46, v52, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v51, v43, v45
	v_mul_f32_e32 v48, v44, v53
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v19, v38, v37, v19
	v_div_fmas_f32 v39, v39, v40, v52
	v_fmac_f32_e32 v43, v42, v41
	v_fma_f32 v42, -v50, v48, v44
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v46, v47
	v_div_scale_f32 v49, null, v37, v37, v24
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
	v_div_fixup_f32 v20, v39, v37, v20
	v_div_scale_f32 v39, s3, v23, v37, v23
	v_div_fmas_f32 v41, v41, v53, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v46, v52, v46
	v_fma_f32 v42, -v49, v40, 1.0
	v_div_scale_f32 v44, s4, v24, v37, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v22, v41, v37, v22
	v_rcp_f32_e32 v41, v51
	v_fmac_f32_e32 v40, v42, v40
	v_div_scale_f32 v42, null, v37, v37, v9
	v_div_fixup_f32 v21, v38, v37, v21
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v50, v44, v40
	v_rcp_f32_e32 v45, v42
	v_div_scale_f32 v53, null, v37, v37, v12
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v51, v41, 1.0
	v_fma_f32 v38, -v49, v50, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v55, v53
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v52, v41
	v_dual_mul_f32 v43, v39, v46 :: v_dual_fmac_f32 v50, v38, v40
	v_div_scale_f32 v38, s5, v9, v37, v9
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v48, -v47, v43, v39
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s2
	.loc	1 1044 48                       ; attention.py:1044:48
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
	v_div_fixup_f32 v23, v39, v37, v23
	v_mul_f32_e32 v54, v46, v41
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v49, -v47, v48, 1.0
	v_div_fixup_f32 v24, v40, v37, v24
	v_fmac_f32_e32 v44, v52, v45
	v_fma_f32 v40, -v53, v55, 1.0
	v_fma_f32 v43, -v51, v54, v46
	v_fmac_f32_e32 v48, v49, v48
	v_div_scale_f32 v49, s6, v11, v37, v11
	v_fma_f32 v38, -v42, v44, v38
	v_div_scale_f32 v42, null, v37, v37, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v50, v49, v48
	v_dual_fmac_f32 v54, v43, v41 :: v_dual_fmac_f32 v55, v40, v55
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v40, s4, v12, v37, v12
	v_fma_f32 v39, -v47, v50, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v51, v54, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s2
	v_cndmask_b32_e64 v24, 0, v24, s2
	.loc	1 1044 48                       ; attention.py:1044:48
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
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v11, v43, v37, v11
	v_div_scale_f32 v43, null, v37, v37, v15
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v47, v45
	v_div_fixup_f32 v10, v41, v37, v10
	v_rcp_f32_e32 v49, v43
	v_fmac_f32_e32 v44, v48, v55
	v_fma_f32 v48, -v42, v38, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s2
	v_cndmask_b32_e64 v10, 0, v10, s2
	v_cndmask_b32_e64 v11, 0, v11, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v53, v44, v40
	v_fmac_f32_e32 v38, v48, v39
	v_div_scale_f32 v48, null, v37, v37, v16
	v_fma_f32 v41, -v45, v47, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v40, v40, v55, v44
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v50, v48
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v35, 1, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v12, v40, v37, v12
	v_fma_f32 v40, -v42, v38, v46
	v_fma_f32 v46, -v43, v49, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v34, 16, v35
	v_or_b32_e32 v33, 32, v35
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s2
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fmas_f32 v38, v40, v39, v38
	v_div_scale_f32 v39, null, v37, v37, v1
	v_fmac_f32_e32 v49, v46, v49
	v_div_scale_f32 v46, null, v37, v37, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v13, v38, v37, v13
	v_fma_f32 v38, -v48, v50, 1.0
	v_fmac_f32_e32 v47, v41, v47
	v_div_scale_f32 v41, s5, v14, v37, v14
	v_div_scale_f32 v40, s3, v15, v37, v15
	v_fmac_f32_e32 v50, v38, v50
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v44, v41, v47
	v_rcp_f32_e32 v52, v46
	v_div_scale_f32 v38, s4, v16, v37, v16
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v42, -v45, v44, v41
	v_div_scale_f32 v53, s5, v1, v37, v1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s2
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v0, 48, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v42, v47
	v_rcp_f32_e32 v42, v39
	v_fma_f32 v54, -v46, v52, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v45, v44, v41
	v_div_fmas_f32 v41, v41, v47, v44
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v51, -v39, v42, 1.0
	v_mul_f32_e32 v45, v40, v49
	v_mul_f32_e32 v47, v38, v50
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v14, v41, v37, v14
	v_fmac_f32_e32 v42, v51, v42
	v_fma_f32 v44, -v43, v45, v40
	v_div_scale_f32 v51, null, v37, v37, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v56, v53, v42 :: v_dual_fmac_f32 v45, v44, v49
	v_fma_f32 v44, -v48, v47, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v55, v51
	v_fmac_f32_e32 v52, v54, v52
	v_div_scale_f32 v54, s6, v2, v37, v2
	v_fma_f32 v40, -v43, v45, v40
	v_fmac_f32_e32 v47, v44, v50
	v_fma_f32 v41, -v39, v56, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v43, v54, v52
	v_div_fmas_f32 v40, v40, v49, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v51, v55, 1.0
	v_fmac_f32_e32 v56, v41, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v41, -v46, v43, v54
	v_fma_f32 v38, -v48, v47, v38
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v55, v44, v55
	v_fma_f32 v39, -v39, v56, v53
	v_fmac_f32_e32 v43, v41, v52
	v_div_fmas_f32 v38, v38, v50, v47
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v44, s3, v3, v37, v3
	v_div_fmas_f32 v39, v39, v42, v56
	v_fma_f32 v42, -v46, v43, v54
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v41, v44, v55
	v_div_scale_f32 v45, null, v37, v37, v4
	v_div_fmas_f32 v42, v42, v52, v43
	v_div_fixup_f32 v15, v40, v37, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v51, v41, v44
	v_rcp_f32_e32 v47, v45
	v_div_fixup_f32 v16, v38, v37, v16
	v_div_fixup_f32 v2, v42, v37, v2
	v_div_scale_f32 v42, null, v37, v37, v7
	v_fmac_f32_e32 v41, v46, v55
	v_div_fixup_f32 v1, v39, v37, v1
	v_div_scale_f32 v39, null, v37, v37, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v46, v42
	v_fma_f32 v40, -v45, v47, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v49, null, v37, v37, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v47, v40, v47
	v_div_scale_f32 v40, null, v37, v37, v6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v53, -v42, v46, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s2
	v_cndmask_b32_e64 v2, 0, v2, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v46, v53, v46
	v_fma_f32 v38, -v51, v41, v44
	v_rcp_f32_e32 v44, v40
	v_rcp_f32_e32 v51, v49
	v_div_scale_f32 v53, s5, v7, v37, v7
	v_div_fmas_f32 v38, v38, v55, v41
	v_rcp_f32_e32 v41, v39
	v_div_scale_f32 v43, vcc_lo, v4, v37, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v57, v53, v46
	v_div_fixup_f32 v3, v38, v37, v3
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v50, -v40, v44, 1.0
	v_fma_f32 v55, -v49, v51, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s2
	.loc	1 1044 48                       ; attention.py:1044:48
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
	v_fma_f32 v52, -v42, v57, v53
	v_fmac_f32_e32 v56, v45, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v58, v55, v51
	v_div_fmas_f32 v43, v43, v47, v48
	v_fma_f32 v38, -v39, v54, v38
	v_fmac_f32_e32 v57, v52, v46
	v_fma_f32 v40, -v40, v56, v50
	v_fma_f32 v39, -v49, v58, v55
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v4, v43, v37, v4
	v_div_fmas_f32 v38, v38, v41, v54
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v58, v39, v51
	v_fma_f32 v39, -v42, v57, v53
	v_div_fmas_f32 v40, v40, v44, v56
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v5, v38, v37, v5
	v_fma_f32 v41, -v49, v58, v55
	v_div_fmas_f32 v39, v39, v46, v57
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v6, v40, v37, v6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v38, v26, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v41, v41, v51, v58
	v_div_fixup_f32 v7, v39, v37, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v39, v27, 16, 1
	v_cmp_o_f32_e64 s5, v25, v25
	v_cmp_o_f32_e64 s6, v26, v26
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v41, v37, v8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v37, v25, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s2
	v_cndmask_b32_e64 v5, 0, v5, s2
	v_cndmask_b32_e64 v6, 0, v6, s2
	v_cndmask_b32_e64 v7, 0, v7, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v37, v25, v37, 0x7fff
	v_add3_u32 v25, v26, v38, 0x7fff
	v_add3_u32 v26, v27, v39, 0x7fff
	v_bfe_u32 v27, v28, 16, 1
	v_bfe_u32 v38, v30, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v37.h, s5
	v_bfe_u32 v37, v29, 16, 1
	v_cmp_o_f32_e64 s5, v28, v28
	v_add3_u32 v27, v28, v27, 0x7fff
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s6
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s7
	v_add3_u32 v28, v29, v37, 0x7fff
	v_cmp_o_f32_e64 s6, v29, v29
	v_add3_u32 v29, v30, v38, 0x7fff
	v_cmp_o_f32_e64 s7, v30, v30
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s5
	v_bfe_u32 v27, v31, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s6
	v_bfe_u32 v30, v32, 16, 1
	v_cndmask_b16 v28.h, 0x7fff, v29.h, s7
	v_bfe_u32 v29, v17, 16, 1
	v_add3_u32 v27, v31, v27, 0x7fff
	v_cmp_o_f32_e64 s5, v31, v31
	v_add3_u32 v30, v32, v30, 0x7fff
	v_cmp_o_f32_e64 s6, v32, v32
	v_add3_u32 v29, v17, v29, 0x7fff
	v_cmp_o_f32_e64 s7, v17, v17
	v_cndmask_b16 v17.l, 0x7fff, v27.h, s5
	v_bfe_u32 v27, v18, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v30.h, s6
	v_bfe_u32 v30, v19, 16, 1
	v_bfe_u32 v31, v20, 16, 1
	v_cmp_o_f32_e64 s5, v18, v18
	v_add3_u32 v27, v18, v27, 0x7fff
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s7
	v_add3_u32 v18, v19, v30, 0x7fff
	v_cmp_o_f32_e64 s6, v19, v19
	v_add3_u32 v19, v20, v31, 0x7fff
	v_cmp_o_f32_e64 s7, v20, v20
	v_cndmask_b16 v29.h, 0x7fff, v27.h, s5
	v_bfe_u32 v20, v21, 16, 1
	v_bfe_u32 v27, v22, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s6
	v_cmp_o_f32_e64 s5, v21, v21
	v_cmp_o_f32_e64 s6, v22, v22
	v_add3_u32 v20, v21, v20, 0x7fff
	v_add3_u32 v21, v22, v27, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v19.h, s7
	v_bfe_u32 v19, v23, 16, 1
	v_bfe_u32 v22, v24, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s5
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v9, 16, 1
	v_add3_u32 v19, v23, v19, 0x7fff
	v_cmp_o_f32_e64 s7, v23, v23
	v_bfe_u32 v23, v10, 16, 1
	v_cmp_o_f32_e64 s6, v9, v9
	v_add3_u32 v21, v9, v21, 0x7fff
	v_add3_u32 v22, v24, v22, 0x7fff
	v_cmp_o_f32_e64 s5, v24, v24
	v_add3_u32 v9, v10, v23, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s7
	v_cmp_o_f32_e64 s7, v10, v10
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v12, 16, 1
	v_cndmask_b16 v19.h, 0x7fff, v22.h, s5
	v_bfe_u32 v22, v13, 16, 1
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v11, v11
	v_add3_u32 v11, v12, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v12, v12
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s7
	v_add3_u32 v12, v13, v22, 0x7fff
	v_cmp_o_f32_e64 s7, v13, v13
	v_bfe_u32 v13, v14, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s5
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s6
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v21, v16, 16, 1
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v14, v14
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s7
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s6, v15, v15
	v_add3_u32 v14, v16, v21, 0x7fff
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v1.l, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v5, 16, 1
	v_cmp_o_f32_e64 s5, v4, v4
	v_add3_u32 v3, v4, v3, 0x7fff
	v_bfe_u32 v4, v6, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s6
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
	v_cndmask_b32_e64 v6, v25, v28, s0
	v_cndmask_b32_e64 v7, v17, v26, s0
	v_cndmask_b32_e64 v8, v26, v17, s0
	v_cndmask_b32_e64 v14, v29, v20, s0
	v_cndmask_b32_e64 v15, v19, v18, s0
	v_cndmask_b32_e64 v16, v18, v19, s0
	v_cndmask_b32_e64 v17, v12, v9, s0
	v_cndmask_b32_e64 v9, v9, v12, s0
	v_cndmask_b32_e64 v12, v11, v10, s0
	v_cndmask_b32_e64 v10, v10, v11, s0
	v_cndmask_b32_e64 v18, v3, v1, s0
	v_cndmask_b32_e64 v1, v1, v3, s0
	v_cndmask_b32_e64 v19, v4, v2, s0
	v_cndmask_b32_e64 v2, v2, v4, s0
	s_mov_b32 s5, 0x76543210
	v_cndmask_b32_e64 v5, v28, v25, s0
	v_cndmask_b32_e64 v13, v20, v29, s0
	v_permlanex16_b32 v3, v6, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v8, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v14, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v16, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v9, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v10, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v1, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v2, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s81, v34
	v_cmp_gt_i32_e64 s4, s81, v35
	v_cmp_gt_i32_e64 s2, s81, v33
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v1, v3, v5, v136
	v_perm_b32 v2, v3, v5, v137
	v_perm_b32 v5, v6, v13, v136
	v_perm_b32 v6, v6, v13, v137
	v_perm_b32 v9, v11, v17, v136
	v_perm_b32 v10, v11, v17, v137
	v_perm_b32 v11, v14, v12, v136
	v_perm_b32 v12, v14, v12, v137
	v_perm_b32 v13, v16, v18, v136
	v_perm_b32 v14, v16, v18, v137
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v18, v36, v34, 1
	v_add_lshl_u32 v17, v36, v35, 1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s81, v0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v3, v4, v7, v136
	v_perm_b32 v4, v4, v7, v137
	v_perm_b32 v7, v8, v15, v136
	v_perm_b32 v8, v8, v15, v137
	v_perm_b32 v15, v20, v19, v136
	v_perm_b32 v16, v20, v19, v137
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v19, v36, v33, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s1, vcc_lo
	s_and_b32 s0, s1, s4
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v0, v36, v0, 1
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s1, s2
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s1, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s9, s79, 0xffff
	s_mov_b32 s8, s78
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[1:4], v17, s[8:11], 0 offen
	buffer_store_b128 v[5:8], v18, s[8:11], 0 offen
	buffer_store_b128 v[9:12], v19, s[8:11], 0 offen
	buffer_store_b128 v[13:16], v0, s[8:11], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_endpgm
.Ltmp62:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 44
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
		.amdhsa_next_free_sgpr 98
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 98
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 44
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15740
; TotalNumSgprs: 100
; NumVgprs: 256
; ScratchSize: 44
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 100
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
	.short	883                             ; DW_AT_call_line
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
	.short	887                             ; DW_AT_call_line
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
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 44
    .sgpr_count:     100
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 10
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
