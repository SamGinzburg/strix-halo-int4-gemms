	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b128 s[84:87], s[0:1], 0x60
	v_dual_mov_b32 v42, 0x5410 :: v_dual_and_b32 v37, 1, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 1, v0
	s_clause 0x1
	s_load_b256 s[68:75], s[0:1], 0x0
	s_load_b64 s[4:5], s[0:1], 0x70
	v_dual_mov_b32 v126, 0xff800000 :: v_dual_lshlrev_b32 v1, 4, v37
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s6, s2, 6
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s6, v2
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s7, s6, s2
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v40, 15, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v39, 0x60, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v4
	s_mov_b32 s95, 0x31027000
	s_mov_b32 s94, 0x7ffffffe
	v_dual_mov_b32 v26, v25 :: v_dual_and_b32 v81, 16, v0
	v_mov_b32_e32 v32, v25
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[105:106], null, s84, v2, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s84, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s93, s69, 0xffff
	s_mov_b32 s92, s68
	v_bfe_i32 v60, v0, 5, 1
	s_clause 0x1
	s_load_b64 s[96:97], s[0:1], 0x20
	s_load_b128 s[88:91], s[0:1], 0x30
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, s84, s7, v[105:106]
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v30, v25 :: v_dual_and_b32 v45, 7, v0
	v_dual_mov_b32 v17, v25 :: v_dual_lshlrev_b32 v66, 2, v0
	v_bfe_i32 v59, v0, 3, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 1, v39
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 28
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v44, 3, v0
	v_bfe_u32 v46, v0, 4, 1
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[33:36], v1, s[92:95], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, v2, v40
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s93, s75, 0xffff
	s_mov_b32 s92, s74
	v_dual_mov_b32 v27, v25 :: v_dual_lshlrev_b32 v48, 1, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v2, s7, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s6, v1
	v_dual_mov_b32 v31, v25 :: v_dual_lshlrev_b32 v52, 9, v0
	v_mov_b32_e32 v43, 0x7632
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off
	scratch_store_b32 off, v81, off offset:4
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v1
	v_dual_mov_b32 v19, v25 :: v_dual_lshlrev_b32 v54, 5, v0
	v_dual_mov_b32 v12, v25 :: v_dual_lshlrev_b32 v37, 6, v37
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_dual_mov_b32 v5, v25 :: v_dual_and_b32 v60, 0x2040, v60
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v28, v25 :: v_dual_and_b32 v73, 0x78, v0
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v41, v1, s[92:95], 0 offen
	v_dual_mov_b32 v11, v25 :: v_dual_lshlrev_b32 v74, 3, v40
	v_dual_mov_b32 v13, v25 :: v_dual_and_b32 v64, 0x1b8, v66
	v_mov_b32_e32 v15, v25
	v_dual_mov_b32 v6, v25 :: v_dual_and_b32 v71, 0x410, v59
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -16
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v66, off offset:12
	scratch_store_b32 off, v74, off offset:16
	scratch_store_b32 off, v73, off offset:8
	v_and_b32_e32 v66, 0x7c, v66
	v_mul_u32_u24_e32 v72, 0x90, v45
	v_dual_mov_b32 v18, v25 :: v_dual_lshlrev_b32 v49, 4, v0
	v_dual_mov_b32 v29, v25 :: v_dual_and_b32 v50, 24, v0
	v_dual_mov_b32 v21, v25 :: v_dual_and_b32 v56, 4, v0
	v_dual_mov_b32 v14, v25 :: v_dual_lshlrev_b32 v65, 5, v81
	v_dual_mov_b32 v1, v25 :: v_dual_and_b32 v54, 0x60, v54
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v62, s6, v44
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v63, v48, 30, v46
	v_and_or_b32 v37, 0x1c00, v52, v37
	v_and_or_b32 v52, 0x1020, v59, v60
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s7, s3, s1
	v_dual_mov_b32 v3, v25 :: v_dual_lshlrev_b32 v68, 2, v39
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s1, s7, 0x10007
	v_lshrrev_b32_e32 v67, 3, v39
	v_lshl_or_b32 v39, v39, 4, v66
	v_xor_b32_e32 v135, v72, v71
	v_dual_mov_b32 v20, v25 :: v_dual_and_b32 v51, 0x70, v0
	v_dual_mov_b32 v23, v25 :: v_dual_and_b32 v58, 8, v0
	v_mov_b32_e32 v10, v25
	v_dual_mov_b32 v4, v25 :: v_dual_lshlrev_b32 v69, 6, v81
	v_mov_b32_e32 v7, v25
	v_mov_b32_e32 v109, v25
	v_xor_b32_e32 v133, v49, v50
	v_and_b32_e32 v49, 24, v48
	v_and_b32_e32 v48, 0x80, v48
	v_lshl_add_u32 v56, v56, 9, 0
	s_add_i32 s3, s7, s1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s1, 0x800, v62
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v62, 2, v63
	v_or3_b32 v136, v37, v65, v64
	v_xor_b32_e32 v37, v52, v54
	v_dual_mov_b32 v9, v25 :: v_dual_lshlrev_b32 v38, 3, v45
	v_xor_b32_e32 v137, v39, v67
	v_xor_b32_e32 v39, 16, v135
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v61, 1, v73
	v_lshrrev_b32_e32 v50, 1, v51
	v_lshl_or_b32 v134, v40, 5, v49
	v_lshl_or_b32 v40, v51, 6, v74
	v_lshl_or_b32 v51, v58, 4, v69
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v58, 4, v62
	v_add3_u32 v37, v56, v48, v37
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s3, s3, 0x80000
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[110:111], null, s5, v44, v[38:39]
	.loc	1 758 19                        ; attention.py:758:19
	s_sext_i32_i16 s3, s3
	v_xor_b32_e32 v40, v40, v50
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s9, s3, 10
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s3, s85, v38
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[111:112], null, s85, v61, v[38:39]
	v_xor_b32_e32 v38, 8, v136
	v_add_nc_u32_e32 v197, v37, v81
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s0, 4
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s4, s4, s7
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s8, s0, 14
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s0, s87, s0
	v_bfe_i32 v57, v0, 2, 1
	v_dual_mov_b32 v108, v25 :: v_dual_add_nc_u32 v145, 0, v40
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s87, s4, s0
	v_add_nc_u32_e32 v146, 0, v39
	v_xor_b32_e32 v39, 16, v136
	v_xor_b32_e32 v40, 24, v136
	v_add_nc_u32_e32 v179, 0, v38
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v81
	.loc	1 773 86                        ; attention.py:773:86
	v_bfe_i32 v47, v0, 0, 1
	v_dual_mov_b32 v22, v25 :: v_dual_and_b32 v53, 28, v0
	v_dual_mov_b32 v24, v25 :: v_dual_lshlrev_b32 v55, 3, v0
	v_dual_mov_b32 v2, v25 :: v_dual_and_b32 v57, 0x2040, v57
	v_dual_mov_b32 v107, v25 :: v_dual_lshlrev_b32 v70, 4, v45
	v_add_nc_u32_e32 v180, 0, v39
	v_add_nc_u32_e32 v181, 0, v40
	v_cndmask_b32_e64 v42, 0x1054, v42, s0
	v_cndmask_b32_e64 v43, 0x3276, v43, s0
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[112:113], null, s5, 48, v[110:111]
	v_dual_mov_b32 v16, v25 :: v_dual_and_b32 v55, 0x310, v55
	v_xor_b32_e32 v63, 8, v133
	v_lshl_or_b32 v49, v53, 7, v68
	v_and_or_b32 v47, 0x1020, v47, v57
	v_xor_b32_e32 v57, v70, v73
	v_lshl_or_b32 v42, v42, 8, v42
	v_lshl_or_b32 v43, v43, 8, v43
	v_mad_u64_u32 v[113:114], null, s85, 3, v[111:112]
	v_dual_mov_b32 v8, v25 :: v_dual_add_nc_u32 v141, 0, v63
	v_xor_b32_e32 v59, 8, v134
	v_xor_b32_e32 v60, 16, v134
	v_xor_b32_e32 v66, 24, v134
	v_or3_b32 v138, v49, v54, v53
	v_or3_b32 v139, v47, v51, v55
	v_lshl_or_b32 v140, v45, 10, v57
	v_xor_b32_e32 v45, 32, v135
	v_xor_b32_e32 v47, 48, v135
	v_xor_b32_e32 v49, 64, v135
	v_xor_b32_e32 v50, 0x50, v135
	v_xor_b32_e32 v51, 0x60, v135
	v_xor_b32_e32 v52, 0x70, v135
	v_xor_b32_e32 v53, 0x820, v135
	v_xor_b32_e32 v54, 0x830, v135
	v_xor_b32_e32 v55, 0x810, v135
	v_xor_b32_e32 v57, 0x860, v135
	v_xor_b32_e32 v64, 0x870, v135
	v_xor_b32_e32 v65, 0x840, v135
	v_xor_b32_e32 v67, 0x850, v135
	v_xor_b32_e32 v68, 0x1040, v135
	v_xor_b32_e32 v63, 0x1030, v135
	.loc	1 821 32                        ; attention.py:821:32
	s_and_b32 s9, s9, 0xfffff800
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s10, s86, 0x3fb8aa3b
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s86, s9, s8
	v_dual_mov_b32 v106, v25 :: v_dual_add_nc_u32 v143, 0, v60
	v_xor_b32_e32 v69, 0x1050, v135
	v_xor_b32_e32 v70, 0x1060, v135
	v_xor_b32_e32 v71, 0x1070, v135
	v_xor_b32_e32 v72, 0x1010, v135
	v_xor_b32_e32 v73, 0x1020, v135
	v_xor_b32_e32 v74, 0x1860, v135
	v_xor_b32_e32 v75, 0x1870, v135
	v_xor_b32_e32 v76, 0x1840, v135
	v_xor_b32_e32 v77, 0x1850, v135
	v_xor_b32_e32 v78, 0x1820, v135
	v_xor_b32_e32 v79, 0x1830, v135
	v_xor_b32_e32 v80, 0x1810, v135
	v_add_nc_u32_e32 v144, 0, v66
	v_add_nc_u32_e32 v147, 0, v45
	v_add_nc_u32_e32 v149, 0, v47
	v_add_nc_u32_e32 v150, 0, v49
	v_add_nc_u32_e32 v151, 0, v50
	v_add_nc_u32_e32 v152, 0, v51
	v_add_nc_u32_e32 v153, 0, v52
	v_add_nc_u32_e32 v154, 0, v53
	v_add_nc_u32_e32 v155, 0, v54
	v_add_nc_u32_e32 v156, 0, v55
	v_add_nc_u32_e32 v157, 0, v57
	v_add_nc_u32_e32 v158, 0, v64
	v_add_nc_u32_e32 v159, 0, v65
	v_add_nc_u32_e32 v161, 0, v67
	v_add_nc_u32_e32 v162, 0, v68
	v_add_nc_u32_e32 v168, 0, v63
	v_xor_b32_e32 v44, 32, v136
	v_xor_b32_e32 v45, 40, v136
	v_xor_b32_e32 v47, 48, v136
	v_xor_b32_e32 v48, 56, v136
	v_xor_b32_e32 v49, 0x810, v137
	v_xor_b32_e32 v50, 4, v138
	v_xor_b32_e32 v51, 8, v138
	v_xor_b32_e32 v52, 12, v138
	v_xor_b32_e32 v53, 16, v138
	v_xor_b32_e32 v54, 20, v138
	v_xor_b32_e32 v55, 24, v138
	v_xor_b32_e32 v56, 28, v138
	v_xor_b32_e32 v57, 32, v139
	v_xor_b32_e32 v60, 0x60, v139
	v_xor_b32_e32 v61, 0x90, v140
	v_xor_b32_e32 v63, 0x120, v140
	v_xor_b32_e32 v64, 0x1b0, v140
	v_xor_b32_e32 v65, 0x240, v140
	v_xor_b32_e32 v66, 0x2d0, v140
	v_xor_b32_e32 v67, 0x360, v140
	v_xor_b32_e32 v68, 0x3f0, v140
	v_or_b32_e32 v178, s86, v46
	v_dual_mov_b32 v225, 0xff800000 :: v_dual_mov_b32 v128, 0xff800000
	v_dual_mov_b32 v127, 0xff800000 :: v_dual_mov_b32 v172, 0xff800000
	v_dual_mov_b32 v129, 0xff800000 :: v_dual_mov_b32 v160, 0xff800000
	v_dual_mov_b32 v177, 0xff800000 :: v_dual_mov_b32 v148, 0xff800000
	v_add_nc_u32_e32 v163, 0, v69
	v_add_nc_u32_e32 v164, 0, v70
	v_add_nc_u32_e32 v165, 0, v71
	v_add_nc_u32_e32 v166, 0, v72
	v_add_nc_u32_e32 v167, 0, v73
	v_add_nc_u32_e32 v169, 0, v74
	v_add_nc_u32_e32 v170, 0, v75
	v_add_nc_u32_e32 v171, 0, v76
	v_add_nc_u32_e32 v173, 0, v77
	v_add_nc_u32_e32 v174, 0, v78
	v_add_nc_u32_e32 v175, 0, v79
	v_add_nc_u32_e32 v176, 0, v80
	v_add_nc_u32_e32 v182, 0, v44
	v_add_nc_u32_e32 v183, 0, v45
	v_add_nc_u32_e32 v184, 0, v47
	v_add_nc_u32_e32 v185, 0, v48
	v_add_nc_u32_e32 v186, 0, v49
	v_add_nc_u32_e32 v187, 0, v50
	v_add_nc_u32_e32 v188, 0, v51
	v_add_nc_u32_e32 v189, 0, v52
	v_add_nc_u32_e32 v190, 0, v53
	v_add_nc_u32_e32 v191, 0, v54
	v_add_nc_u32_e32 v192, 0, v55
	v_add_nc_u32_e32 v193, 0, v56
	v_add_nc_u32_e32 v194, 0, v57
	v_add_nc_u32_e32 v196, 0, v60
	v_add_nc_u32_e32 v198, 0, v61
	v_add_nc_u32_e32 v199, 0, v63
	v_add_nc_u32_e32 v200, 0, v64
	v_add_nc_u32_e32 v201, 0, v65
	v_add_nc_u32_e32 v202, 0, v66
	v_add_nc_u32_e32 v203, 0, v67
	v_add_nc_u32_e32 v204, 0, v68
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v205, s5, 4, v110
	v_lshl_add_u32 v206, s5, 5, v110
	v_or_b32_e32 v122, 46, v178
	v_or_b32_e32 v132, 48, v178
	v_or_b32_e32 v130, 50, v178
	v_or_b32_e32 v131, 52, v178
	v_or_b32_e32 v123, 54, v178
	v_or_b32_e32 v224, 62, v178
	v_mov_b16_e64 v226.l, 0
	s_mov_b32 s76, 0
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s6, s5, s6
	s_and_b32 s71, s71, 0xffff
	s_waitcnt lgkmcnt(0)
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
	s_mov_b32 s100, s88
	s_mov_b32 s101, s89
	s_add_i32 s87, s87, s6
	s_mov_b32 s74, s94
	s_mov_b32 s75, s95
	s_mov_b32 s92, s70
	s_mov_b32 s93, s71
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v37, v62, v33
	ds_bpermute_b32 v33, v58, v33
	ds_bpermute_b32 v38, v62, v34
	ds_bpermute_b32 v34, v58, v34
	ds_bpermute_b32 v39, v62, v35
	ds_bpermute_b32 v35, v58, v35
	ds_bpermute_b32 v40, v62, v36
	ds_bpermute_b32 v36, v58, v36
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v114, v33, v37, s0
	v_cndmask_b32_e64 v116, v37, v33, s0
	v_and_b32_e32 v33, 0x540054, v42
	v_and_b32_e32 v37, 0x760076, v43
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v41, 16, v41
	v_add_nc_u32_e32 v142, 0, v59
	v_xor_b32_e32 v59, 64, v139
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v115, v34, v38, s0
	v_cndmask_b32_e64 v117, v38, v34, s0
	v_lshl_or_b32 v33, v33, 4, v33
	v_lshl_or_b32 v34, v37, 4, v37
	v_add_nc_u32_e32 v195, 0, v59
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v223, s10, v41
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v118, v35, v39, s0
	v_cndmask_b32_e64 v120, v39, v35, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v119, v36, v40, s0
	v_cndmask_b32_e64 v121, v40, v36, s0
	v_and_b32_e32 v124, 0x5040504, v33
	v_and_b32_e32 v125, 0x7060706, v34
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_or_b32 s58, s104, s86
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v37, 0, v133
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[33:34], null, s58, s84, v[105:106]
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v65, s76 :: v_dual_mov_b32 v70, s81
	v_dual_mov_b32 v66, s77 :: v_dual_mov_b32 v67, s78
	v_dual_mov_b32 v72, s83 :: v_dual_mov_b32 v69, s80
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v71, s82
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s4, s87, s104
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s58, s58, s85
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[33:36], v33, s[92:95], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v37, v[33:34]
	ds_store_b64 v141, v[35:36]
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v68, s79 :: v_dual_add_nc_u32 v33, 0, v134
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[41:44], v33 offset1:1
	ds_load_2addr_stride64_b64 v[79:82], v33 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[45:48], v142 offset1:1
	ds_load_2addr_stride64_b64 v[83:86], v142 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[49:52], v143 offset1:1
	ds_load_2addr_stride64_b64 v[87:90], v143 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[73:76], v144 offset1:1
	ds_load_2addr_stride64_b64 v[91:94], v144 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[114:115], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[45:46], v[118:119], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[49:50], v[116:117], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[73:74], v[120:121], v[33:40] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v64, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v63, v34
	v_cvt_f32_i32_e32 v62, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v61, v36
	v_cvt_f32_i32_e32 v60, v37
	v_cvt_f32_i32_e32 v59, v38
	v_cvt_f32_i32_e32 v58, v39
	v_cvt_f32_i32_e32 v56, v40
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[43:44], v[114:115], v[65:72] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v64, v223, v64
	v_mul_f32_e32 v60, v223, v60
	v_mul_f32_e32 v63, v223, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[47:48], v[118:119], v[33:40] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v58, v223, v58
	v_mul_f32_e32 v62, v223, v62
	v_mul_f32_e32 v56, v223, v56
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[51:52], v[116:117], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[75:76], v[120:121], v[33:40] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v57, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v55, v34
	v_cvt_f32_i32_e32 v54, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v53, v36
	v_cvt_f32_i32_e32 v52, v37
	v_cvt_f32_i32_e32 v51, v38
	v_cvt_f32_i32_e32 v50, v39
	v_cvt_f32_i32_e32 v48, v40
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[79:80], v[114:115], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[81:82], v[114:115], v[65:72] neg_lo:[1,1,0]
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v65, s4, v110, 1
	v_add_lshl_u32 v66, s4, v205, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[83:84], v[118:119], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[85:86], v[118:119], v[73:80] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v53, v223, v53
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v65, 0x80000000, v65, s1
	v_cndmask_b32_e64 v69, 0x80000000, v66, s1
	s_clause 0x1
	buffer_load_b128 v[65:68], v65, s[100:103], 0 offen
	buffer_load_b128 v[69:72], v69, s[100:103], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[73:80], v[89:90], v[116:117], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[87:88], v[116:117], v[33:40] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v50, v223, v50
	v_mul_f32_e32 v52, v223, v52
	v_mul_f32_e32 v48, v223, v48
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[93:94], v[120:121], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[91:92], v[120:121], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v41, v73
	v_cvt_f32_i32_e32 v49, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v33, v80
	v_cvt_f32_i32_e32 v47, v34
	v_cvt_f32_i32_e32 v34, v79
	v_cvt_f32_i32_e32 v46, v35
	v_cvt_f32_i32_e32 v35, v78
	v_cvt_f32_i32_e32 v45, v36
	v_cvt_f32_i32_e32 v36, v77
	v_cvt_f32_i32_e32 v44, v37
	v_cvt_f32_i32_e32 v37, v76
	v_cvt_f32_i32_e32 v43, v38
	v_cvt_f32_i32_e32 v38, v75
	v_cvt_f32_i32_e32 v42, v39
	v_cvt_f32_i32_e32 v39, v74
	v_cvt_f32_i32_e32 v40, v40
	v_mul_f32_e32 v37, v223, v37
	v_mul_f32_e32 v33, v223, v33
	v_mul_f32_e32 v46, v223, v46
	v_mul_f32_e32 v44, v223, v44
	v_mul_f32_e32 v42, v223, v42
	v_mul_f32_e32 v40, v223, v40
	v_mul_f32_e32 v38, v223, v38
	v_mul_f32_e32 v36, v223, v36
	v_mul_f32_e32 v34, v223, v34
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v102, 0xff80ff80, v65, s1
	v_add_lshl_u32 v65, s4, v206, 1
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v97, 0xff80ff80, v72, s1
	v_cndmask_b32_e64 v100, 0xff80ff80, v71, s1
	v_cndmask_b32_e64 v99, 0xff80ff80, v70, s1
	v_cndmask_b32_e64 v98, 0xff80ff80, v69, s1
	v_cndmask_b32_e64 v207, 0x80000000, v65, s1
	v_add_lshl_u32 v65, s4, v112, 1
	v_cndmask_b32_e64 v101, 0xff80ff80, v68, s1
	v_cndmask_b32_e64 v104, 0xff80ff80, v67, s1
	v_cndmask_b32_e64 v103, 0xff80ff80, v66, s1
	v_mov_b16_e64 v226.h, v102.l
	v_cndmask_b32_e64 v211, 0x80000000, v65, s1
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v65, s104, v178, 1
	.loc	1 880 35                        ; attention.py:880:35
	v_mov_b16_e64 v216.l, v104.l
	v_mov_b16_e64 v216.h, v101.l
	v_mov_b16_e64 v215.l, v102.l
	v_mov_b16_e64 v215.h, v103.l
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v96, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, 2, v178
	.loc	1 880 35                        ; attention.py:880:35
	v_mov_b16_e64 v218.l, v100.l
	v_mov_b16_e64 v218.h, v97.l
	v_mov_b16_e64 v217.l, v98.l
	v_mov_b16_e64 v217.h, v99.l
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v65, s104, v65, 1
	buffer_load_u16 v93, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, 4, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v65, s104, v65, 1
	buffer_load_u16 v94, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, 6, v178
	v_add_lshl_u32 v65, s104, v65, 1
	buffer_load_u16 v84, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, 8, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v65, s104, v65, 1
	buffer_load_u16 v95, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, 10, v178
	v_add_lshl_u32 v65, s104, v65, 1
	buffer_load_u16 v85, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, 12, v178
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v59, v223, v59
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v65, s104, v65, 1
	buffer_load_u16 v86, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, 14, v178
	v_add_lshl_u32 v65, s104, v65, 1
	buffer_load_u16 v82, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, 16, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v65, s104, v65, 1
	buffer_load_u16 v87, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, 18, v178
	v_add_lshl_u32 v65, s104, v65, 1
	buffer_load_u16 v88, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, 20, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v65, s104, v65, 1
	buffer_load_u16 v89, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, 22, v178
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v54, v223, v54
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v65, s104, v65, 1
	buffer_load_u16 v83, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, 24, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v65, s104, v65, 1
	buffer_load_u16 v90, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, 26, v178
	v_add_lshl_u32 v65, s104, v65, 1
	buffer_load_u16 v91, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, 28, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v65, s104, v65, 1
	buffer_load_u16 v92, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, 30, v178
	v_add_lshl_u32 v65, s104, v65, 1
	buffer_load_u16 v81, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, 32, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v65, s104, v65, 1
	buffer_load_u16 v80, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, 34, v178
	v_add_lshl_u32 v65, s104, v65, 1
	buffer_load_u16 v79, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, 36, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v65, s104, v65, 1
	buffer_load_u16 v78, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, 38, v178
	v_add_lshl_u32 v65, s104, v65, 1
	buffer_load_u16 v77, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, 40, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v65, s104, v65, 1
	buffer_load_u16 v76, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, 42, v178
	v_add_lshl_u32 v65, s104, v65, 1
	buffer_load_u16 v75, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, 44, v178
	s_delay_alu instid0(VALU_DEP_1)
	v_add_lshl_u32 v65, s104, v65, 1
	buffer_load_u16 v74, v65, s[96:99], 0 offen
	v_add_lshl_u32 v65, s104, v122, 1
	buffer_load_u16 v73, v65, s[96:99], 0 offen
	v_add_lshl_u32 v65, s104, v132, 1
	buffer_load_u16 v72, v65, s[96:99], 0 offen
	v_add_lshl_u32 v65, s104, v130, 1
	buffer_load_u16 v71, v65, s[96:99], 0 offen
	v_add_lshl_u32 v65, s104, v131, 1
	buffer_load_u16 v70, v65, s[96:99], 0 offen
	v_add_lshl_u32 v65, s104, v123, 1
	buffer_load_u16 v69, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, 56, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v65, s104, v65, 1
	buffer_load_u16 v68, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, 58, v178
	v_add_lshl_u32 v65, s104, v65, 1
	buffer_load_u16 v67, v65, s[96:99], 0 offen
	v_or_b32_e32 v65, 60, v178
	s_delay_alu instid0(VALU_DEP_1)
	v_add_lshl_u32 v65, s104, v65, 1
	buffer_load_u16 v66, v65, s[96:99], 0 offen
	v_add_lshl_u32 v65, s104, v224, 1
	buffer_load_u16 v65, v65, s[96:99], 0 offen
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x1
	buffer_load_b128 v[207:210], v207, s[100:103], 0 offen
	buffer_load_b128 v[211:214], v211, s[100:103], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b64 v145, v[215:216], v[217:218] offset1:16
	v_mov_b16_e64 v215.h, v103.h
	v_mov_b16_e64 v215.l, v102.h
	v_mov_b16_e64 v217.h, v99.h
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v102, 0xffff0000, v102
	.loc	1 880 35                        ; attention.py:880:35
	v_mov_b16_e64 v216.l, v104.h
	v_mov_b16_e64 v216.h, v101.h
	v_mov_b16_e64 v218.l, v100.h
	v_mov_b16_e64 v218.h, v97.h
	v_mov_b16_e64 v217.l, v98.h
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s18, 0xff800000, v102
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(33)
	v_lshlrev_b32_e32 v96, 16, v96
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b64 v145, v[215:216], v[217:218] offset0:64 offset1:80
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s35, s1, s18
	s_delay_alu instid0(SALU_CYCLE_1)
	v_cndmask_b32_e64 v102, 0, 1, s35
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v233, 0xff80ff80, v208, s1
	v_cndmask_b32_e64 v232, 0xff80ff80, v207, s1
	v_cndmask_b32_e64 v231, 0xff80ff80, v210, s1
	v_cndmask_b32_e64 v234, 0xff80ff80, v209, s1
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v229, 0xff80ff80, v212, s1
	v_cndmask_b32_e64 v228, 0xff80ff80, v211, s1
	v_cndmask_b32_e64 v227, 0xff80ff80, v214, s1
	v_cndmask_b32_e64 v230, 0xff80ff80, v213, s1
	.loc	1 880 35                        ; attention.py:880:35
	v_mov_b16_e64 v208.l, v234.l
	v_mov_b16_e64 v208.h, v231.l
	v_mov_b16_e64 v207.l, v232.l
	v_mov_b16_e64 v207.h, v233.l
	v_mov_b16_e64 v210.l, v230.l
	v_mov_b16_e64 v210.h, v227.l
	v_mov_b16_e64 v209.l, v228.l
	v_mov_b16_e64 v209.h, v229.l
	ds_store_2addr_b64 v145, v[207:208], v[209:210] offset0:32 offset1:48
	v_mov_b16_e64 v208.l, v234.h
	v_mov_b16_e64 v208.h, v231.h
	v_mov_b16_e64 v207.l, v232.h
	v_mov_b16_e64 v207.h, v233.h
	v_mov_b16_e64 v210.l, v230.h
	v_mov_b16_e64 v210.h, v227.h
	v_mov_b16_e64 v209.l, v228.h
	v_mov_b16_e64 v209.h, v229.h
	ds_store_2addr_b64 v145, v[207:208], v[209:210] offset0:96 offset1:112
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v207.l, v226.l
	v_mov_b16_e64 v207.h, v104.l
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v104, 0xffff0000, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v207
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v207.h, v101.l
	v_and_b32_e32 v101, 0xffff0000, v101
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s21, s1, s4
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v207
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v207.h, v103.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v208, 0, 1, s21
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v226
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v103, 0xffff0000, v103
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s20, s1, s5
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s6, 0xff800000, v207
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v207, 0, 1, s20
	s_and_b32 s30, s1, s4
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s17, 0xff800000, v103
	v_cmp_neq_f32_e64 s19, 0xff800000, v101
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s31, s1, s6
	v_lshlrev_b16 v207.l, 8, v207.l
	s_and_b32 s33, s1, s17
	s_and_b32 s34, s1, s19
	v_cndmask_b32_e64 v101, 0, 1, s33
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b16 v235.h, v208.l, v207.l
	v_cndmask_b32_e64 v207, 0, 1, s31
	v_cndmask_b32_e64 v208, 0, 1, s30
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v207.h, v98.l
	v_and_b32_e32 v98, 0xffff0000, v98
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v101.l, 8, v101.l
	v_lshlrev_b16 v207.l, 8, v207.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s18, 0xff800000, v98
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v103.l, v102.l, v101.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	v_or_b16 v235.l, v208.l, v207.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v207.l, v226.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v101, 0, 1, s34
	s_and_b32 s27, s1, s18
	v_cndmask_b32_e64 v98, 0, 1, s27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v207
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v207.h, v100.l
	v_and_b32_e32 v100, 0xffff0000, v100
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v101.l, 8, v101.l
	s_and_b32 s13, s1, s4
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v207
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v207.h, v97.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s9, s1, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s6, 0xff800000, v207
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v207.h, v99.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v208, 0, 1, s9
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v99, 0xffff0000, v99
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s8, s1, s6
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v207
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v207, 0, 1, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s17, 0xff800000, v99
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s12, s1, s7
	v_lshlrev_b16 v207.l, 8, v207.l
	s_and_b32 s23, s1, s17
	v_or_b16 v236.h, v208.l, v207.l
	v_cndmask_b32_e64 v207, 0, 1, s12
	v_cndmask_b32_e64 v208, 0, 1, s13
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v207.h, v232.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v207.l, 8, v207.l
	v_or_b16 v236.l, v208.l, v207.l
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v207.l, v226.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v207
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v207.h, v234.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s15, s1, s4
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v207
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v207.h, v231.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s11, s1, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s6, 0xff800000, v207
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v207.h, v233.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v208, 0, 1, s11
	s_and_b32 s10, s1, s6
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v207
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v207, 0, 1, s10
	s_and_b32 s14, s1, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v207.l, 8, v207.l
	v_or_b16 v237.h, v208.l, v207.l
	v_cndmask_b32_e64 v207, 0, 1, s14
	v_cndmask_b32_e64 v208, 0, 1, s15
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v207.h, v228.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v207.l, 8, v207.l
	v_or_b16 v237.l, v208.l, v207.l
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v207.l, v226.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s6, 0xff800000, v207
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v207.h, v230.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v207
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v207.h, v227.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s5, s1, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v207
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v207.h, v229.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v208, 0, 1, s5
	s_and_b32 s4, s1, s7
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s16, 0xff800000, v207
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v207, 0, 1, s4
	s_and_b32 s7, s1, s6
	s_and_b32 s6, s1, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_lshlrev_b16 v207.l, 8, v207.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s16, 0xff800000, v104
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v238.h, v208.l, v207.l
	v_cndmask_b32_e64 v207, 0, 1, s6
	v_cndmask_b32_e64 v208, 0, 1, s7
	s_and_b32 s36, s1, s16
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s16, 0xff800000, v100
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v102, 0, 1, s36
	v_lshlrev_b16 v207.l, 8, v207.l
	s_and_b32 s28, s1, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v103.h, v102.l, v101.l
	v_or_b16 v238.l, v208.l, v207.l
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	v_add_nc_u32_e32 v207, 0, v136
	ds_load_b64 v[207:208], v207
	ds_load_b64 v[209:210], v179
	ds_load_b64 v[211:212], v180
	.loc	1 879 36                        ; attention.py:879:36
	ds_load_b64 v[213:214], v181
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[215:216], v182
	ds_load_b64 v[217:218], v183
	.loc	1 879 36                        ; attention.py:879:36
	ds_load_b64 v[219:220], v184
	ds_load_b64 v[221:222], v185
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v61, v223, v61
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v97, 0xffff0000, v97
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v51, v223, v51
	v_mul_f32_e32 v55, v223, v55
	v_mul_f32_e32 v43, v223, v43
	v_mul_f32_e32 v47, v223, v47
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s19, 0xff800000, v97
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	v_cndmask_b32_e64 v97, 0, 1, s23
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v45, v223, v45
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_b32 s24, s1, s19
	v_lshlrev_b16 v97.l, 8, v97.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v99.l, v98.l, v97.l
	v_cndmask_b32_e64 v97, 0, 1, s24
	v_cndmask_b32_e64 v98, 0, 1, s28
	v_lshlrev_b16 v97.l, 8, v97.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v99.h, v98.l, v97.l
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v97, 0xffff0000, v234
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s16, 0xff800000, v97
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v97, 0xffff0000, v233
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s29, s1, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s17, 0xff800000, v97
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v97, 0xffff0000, v232
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s22, s1, s17
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s18, 0xff800000, v97
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v97, 0xffff0000, v231
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s26, s1, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s19, 0xff800000, v97
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v97, 0, 1, s22
	v_cndmask_b32_e64 v98, 0, 1, s26
	s_and_b32 s25, s1, s19
	v_lshlrev_b16 v97.l, 8, v97.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v100.l, v98.l, v97.l
	v_cndmask_b32_e64 v97, 0, 1, s25
	v_cndmask_b32_e64 v98, 0, 1, s29
	v_lshlrev_b16 v97.l, 8, v97.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v100.h, v98.l, v97.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v97, 0xffff0000, v230
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s17, 0xff800000, v97
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v97, 0xffff0000, v229
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s19, s1, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s16, 0xff800000, v97
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v97, 0xffff0000, v228
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s16, s1, s16
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s18, 0xff800000, v97
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v97, 0xffff0000, v227
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s18, s1, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v97
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v97, 0, 1, s16
	v_cndmask_b32_e64 v98, 0, 1, s18
	s_and_b32 s17, s1, s37
	v_lshlrev_b16 v97.l, 8, v97.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_or_b16 v101.l, v98.l, v97.l
	v_cndmask_b32_e64 v97, 0, 1, s17
	v_cndmask_b32_e64 v98, 0, 1, s19
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v97.h, v207.l
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v97.l, 8, v97.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_or_b16 v101.h, v98.l, v97.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v97.l, v226.l
	.loc	1 881 25                        ; attention.py:881:25
	ds_store_2addr_b32 v186, v103, v99 offset1:32
	ds_store_2addr_b32 v186, v100, v101 offset0:64 offset1:96
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v97, 0x3fb8aa3b, v97
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v97, v64, v96 :: v_dual_lshlrev_b32 v64, 16, v93
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v93, 0xffff0000, v207
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v207, 0, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v93, 0x3fb8aa3b, v93
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v93, v63, v64
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v64, 16, v208
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v239, 0, v137
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v64, 0x3fb8aa3b, v64 :: v_dual_lshlrev_b32 v63, 16, v94
	.loc	1 881 25                        ; attention.py:881:25
	ds_store_2addr_b32 v239, v235, v236 offset1:32
	ds_store_2addr_b32 v239, v237, v238 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v64, v62, v63
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v62, 0xffff0000, v208
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v62, 0x3fb8aa3b, v62 :: v_dual_lshlrev_b32 v63, 16, v84
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v62, v61, v63
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v63.l, v226.l
	v_mov_b16_e64 v63.h, v209.l
	v_lshlrev_b32_e32 v61, 16, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v63, 0x3fb8aa3b, v63
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v63, v60, v61
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v61, 0xffff0000, v209
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v60, 16, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v61, 0x3fb8aa3b, v61
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v61, v59, v60 :: v_dual_lshlrev_b32 v60, 16, v210
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v60, 0x3fb8aa3b, v60 :: v_dual_lshlrev_b32 v59, 16, v86
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v60, v58, v59
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v58, 0xffff0000, v210
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v59, 16, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v58, 0x3fb8aa3b, v58
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v58, v56, v59
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v56, v223, v57 :: v_dual_lshlrev_b32 v59, 16, v211
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v57, 16, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v59, 0x3fb8aa3b, v59
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v59, v56, v57
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v57, 0xffff0000, v211
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v57, 0x3fb8aa3b, v57 :: v_dual_lshlrev_b32 v56, 16, v88
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v57, v55, v56
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v56, 16, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v56, 0x3fb8aa3b, v56 :: v_dual_lshlrev_b32 v55, 16, v89
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v56, v54, v55
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_and_b32_e32 v54, 0xffff0000, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v54, 0x3fb8aa3b, v54 :: v_dual_lshlrev_b32 v55, 16, v83
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v54, v53, v55 :: v_dual_lshlrev_b32 v55, 16, v213
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v53, 16, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v55, 0x3fb8aa3b, v55
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v55, v52, v53
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v53, 0xffff0000, v213
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v52, 16, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v82, 0x3fb8aa3b, v53
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v82, v51, v52
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v52, 16, v214
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v51, 16, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v52, 0x3fb8aa3b, v52
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v52, v50, v51
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v50, 0xffff0000, v214
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v50, 0x3fb8aa3b, v50 :: v_dual_lshlrev_b32 v51, 16, v81
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v50, v48, v51
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v51.l, v226.l
	v_mov_b16_e64 v51.h, v215.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v48, v223, v49 :: v_dual_lshlrev_b32 v49, 16, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v51, 0x3fb8aa3b, v51
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v51, v48, v49
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v49, 0xffff0000, v215
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v48, 16, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v79, 0x3fb8aa3b, v49
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v79, v47, v48
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v48, 16, v216
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v48, 0x3fb8aa3b, v48 :: v_dual_lshlrev_b32 v47, 16, v78
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v48, v46, v47
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v46, 0xffff0000, v216
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v47, 16, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v53, 0x3fb8aa3b, v46
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v46.l, v226.l
	v_mov_b16_e64 v46.h, v217.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v53, v45, v47
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v45, 16, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v47, 0x3fb8aa3b, v46
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v47, v44, v45
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v45, 0xffff0000, v217
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v44, 16, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v46, 0x3fb8aa3b, v45
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v46, v43, v44
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v44, 16, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v44, 0x3fb8aa3b, v44 :: v_dual_lshlrev_b32 v43, 16, v74
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v44, v42, v43
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v42, 0xffff0000, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v42, 0x3fb8aa3b, v42 :: v_dual_lshlrev_b32 v43, 16, v73
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v42, v40, v43
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v40, v223, v41 :: v_dual_lshlrev_b32 v43, 16, v219
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v41, 16, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v43, 0x3fb8aa3b, v43
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v43, v40, v41 :: v_dual_mul_f32 v40, v223, v39
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v39, 0xffff0000, v219
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v41, 16, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v39, 0x3fb8aa3b, v39
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v39, v40, v41
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v41, 16, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v45, 0x3fb8aa3b, v41 :: v_dual_lshlrev_b32 v40, 16, v70
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v45, v38, v40
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v38, 0xffff0000, v220
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v40, 16, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v38, 0x3fb8aa3b, v38
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v38, v37, v40
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v40, 16, v221
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v37, 16, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v40, 0x3fb8aa3b, v40
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v40, v36, v37
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v36, v223, v35 :: v_dual_and_b32 v35, 0xffff0000, v221
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v37, 16, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v35, 0x3fb8aa3b, v35
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v35, v36, v37
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v37, 16, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v37, 0x3fb8aa3b, v37 :: v_dual_lshlrev_b32 v36, 16, v66
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v37, v34, v36 :: v_dual_and_b32 v34, 0xffff0000, v222
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v36, 16, v65
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v34, 0x3fb8aa3b, v34
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v34, v33, v36 :: v_dual_add_nc_u32 v33, 0, v138
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	ds_load_b32 v66, v33
	ds_load_b32 v70, v187
	ds_load_b32 v73, v188
	ds_load_b32 v74, v189
	ds_load_b32 v75, v190
	ds_load_b32 v76, v191
	ds_load_b32 v36, v192
	ds_load_b32 v33, v193
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v41, 0x10000, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_ne_u32_e64 s63, 0, v41
	v_and_b32_e32 v41, 0x10000, v70
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v99, 0xff800000, v64, s63
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s61, 0, v41
	v_and_b32_e32 v41, 0x10000, v73
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v103, 0xff800000, v60, s61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s51, 0, v41
	v_and_b32_e32 v41, 0x10000, v74
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v67, 0xff800000, v56, s51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s50, 0, v41
	v_and_b32_e32 v41, 0x10000, v75
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v71, 0xff800000, v52, s50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s44, 0, v41
	v_and_b32_e32 v41, 0x10000, v76
	v_cmp_ne_u32_e64 s43, 0, v41
	v_and_b32_e32 v41, 0x10000, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_ne_u32_e64 s37, 0, v41
	v_and_b32_e32 v41, 1, v66
	v_cmp_eq_u32_e64 s66, 1, v41
	v_and_b32_e32 v41, 0x1000000, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v97, 0xff800000, v97, s66
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s65, 0, v41
	v_and_b32_e32 v41, 1, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v100, 0xff800000, v62, s65
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s64, 1, v41
	v_and_b32_e32 v41, 0x1000000, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v101, 0xff800000, v63, s64
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s62, 0, v41
	v_and_b32_e32 v41, 1, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v104, 0xff800000, v58, s62
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s55, 1, v41
	v_and_b32_e32 v41, 0x1000000, v73
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v65, 0xff800000, v59, s55
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s54, 0, v41
	v_and_b32_e32 v41, 1, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v68, 0xff800000, v54, s54
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s53, 1, v41
	v_and_b32_e32 v41, 0x1000000, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v69, 0xff800000, v55, s53
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s52, 0, v41
	v_and_b32_e32 v41, 1, v75
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v55, 0xff800000, v44, s43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v72, 0xff800000, v50, s52
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s48, 1, v41
	v_and_b32_e32 v41, 0x1000000, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v49, 0xff800000, v51, s48
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s47, 0, v41
	v_and_b32_e32 v41, 1, v76
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v51, 0xff800000, v48, s44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v52, 0xff800000, v53, s47
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s46, 1, v41
	v_and_b32_e32 v41, 0x1000000, v76
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v53, 0xff800000, v47, s46
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s45, 0, v41
	v_and_b32_e32 v41, 1, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v56, 0xff800000, v42, s45
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v42, 0x1000000, v36
	v_cmp_eq_u32_e64 s42, 1, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_ne_u32_e64 s41, 0, v42
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v41, 0xff800000, v43, s42
	v_cndmask_b32_e64 v43, 0xff800000, v45, s37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v44, 0xff800000, v38, s41
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v38, 0x10000, v33
	v_cmp_ne_u32_e64 s38, 0, v38
	v_and_b32_e32 v38, 1, v33
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v47, 0xff800000, v37, s38
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v37, 0x1000000, v33
	v_lshrrev_b16 v33.h, 8, v66.l
	v_lshrrev_b16 v33.l, 8, v33.l
	v_cmp_eq_u32_e64 s40, 1, v38
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v38, s85, 1, v111
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s39, 0, v37
	v_and_b16 v33.h, 1, v33.h
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v37, s85, v111
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v33.l, 1, v33.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v45, 0xff800000, v40, s40
	v_cndmask_b32_e64 v48, 0xff800000, v34, s39
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s68, 1, v33.h
	v_lshrrev_b16 v33.h, 8, v70.l
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v34, s58, v111, 1
	v_add_lshl_u32 v37, s58, v37, 1
	v_add_lshl_u32 v38, s58, v38, 1
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v98, 0xff800000, v93, s68
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v33.h, 1, v33.h
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v40, s58, v113, 1
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s58, 1, v33.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s67, 1, v33.h
	v_lshrrev_b16 v33.h, 8, v73.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v102, 0xff800000, v61, s67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v33.h, 1, v33.h
	v_cmp_eq_u16_e64 s57, 1, v33.h
	v_lshrrev_b16 v33.h, 8, v74.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v66, 0xff800000, v57, s57
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v33.h, 1, v33.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s56, 1, v33.h
	v_lshrrev_b16 v33.h, 8, v75.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v70, 0xff800000, v82, s56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v33.h, 1, v33.h
	v_cmp_eq_u16_e64 s49, 1, v33.h
	v_lshrrev_b16 v33.h, 8, v76.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v50, 0xff800000, v79, s49
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v33.h, 1, v33.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s60, 1, v33.h
	v_lshrrev_b16 v33.h, 8, v36.l
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v36, 0x80000000, v40, s3
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v54, 0xff800000, v46, s60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v33.h, 1, v33.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v46, 0xff800000, v35, s58
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v35, 0x80000000, v38, s3
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s59, 1, v33.h
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v33, 0, v139
	ds_store_b128 v33, v[97:100]
	ds_store_b128 v33, v[49:52] offset:2048
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v33, 0x80000000, v34, s3
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v42, 0xff800000, v39, s59
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v34, 0x80000000, v37, s3
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b128 v194, v[101:104]
	ds_store_b128 v194, v[53:56] offset:2048
	ds_store_b128 v195, v[65:68]
	ds_store_b128 v195, v[41:44] offset:2048
	ds_store_b128 v196, v[69:72]
	ds_store_b128 v196, v[45:48] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[37:40], v33, s[72:75], 0 offen
	buffer_load_b128 v[212:215], v35, s[72:75], 0 offen
	buffer_load_b128 v[208:211], v36, s[72:75], 0 offen
	buffer_load_b128 v[33:36], v34, s[72:75], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_b128 v[93:96], v197
	ds_load_b128 v[85:88], v197 offset:256
	ds_load_b128 v[89:92], v197 offset:1024
	ds_load_b128 v[81:84], v197 offset:1280
	ds_load_b128 v[77:80], v197 offset:512
	ds_load_b128 v[61:64], v197 offset:768
	ds_load_b128 v[73:76], v197 offset:1536
	ds_load_b128 v[57:60], v197 offset:1792
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v216.l, v37.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v217.l, v212.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v217.h, v208.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v216.h, v33.l
	v_mov_b16_e32 v33.l, v37.h
	v_mov_b16_e64 v208.l, v212.h
	v_mov_b16_e32 v37.h, v35.l
	v_mov_b16_e32 v35.l, v39.h
	ds_store_b64 v207, v[216:217]
	v_mov_b16_e64 v216.h, v34.l
	v_mov_b32_e32 v207, v33
	v_mov_b16_e32 v34.l, v38.h
	v_mov_b16_e64 v217.l, v213.l
	v_mov_b16_e64 v217.h, v209.l
	v_mov_b16_e64 v216.l, v38.l
	ds_store_b64 v198, v[207:208]
	ds_store_b64 v199, v[216:217]
	v_mov_b16_e64 v209.l, v213.h
	v_mov_b32_e32 v208, v34
	v_mov_b16_e64 v38.l, v214.l
	v_mov_b16_e64 v38.h, v210.l
	v_mov_b16_e32 v37.l, v39.l
	ds_store_b64 v200, v[208:209]
	ds_store_b64 v201, v[37:38]
	v_mov_b32_e32 v209, v35
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v35, v66, v67, v68
	v_max3_f32 v38, v69, v70, v71
	v_max3_f32 v39, v72, v49, v50
.Ltmp2:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v33.l, v40.l
	v_mov_b16_e32 v33.h, v36.l
	v_mov_b16_e32 v36.l, v40.h
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v40, v41, v42, v43
	v_max3_f32 v35, v35, v38, v39
	v_max3_f32 v38, v51, v52, v53
	v_max3_f32 v39, v54, v55, v56
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v34.h, v211.l
	v_mov_b16_e64 v210.l, v214.h
	v_mov_b16_e64 v34.l, v215.l
	v_mov_b16_e64 v211.l, v215.h
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v38, v38, v39, v40
	v_max_f32_e32 v39, v97, v98
	v_max3_f32 v40, v100, v101, v102
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v202, v[209:210]
	ds_store_b64 v203, v[33:34]
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v34.h, v226.l
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v39, v39, v99, v40
	v_max3_f32 v40, v103, v104, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v35, v39, v40, v35
	v_dual_max_f32 v39, v44, v45 :: v_dual_max_f32 v40, v47, v48
	v_max3_f32 v39, v39, v46, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v35, v35, v38, v39
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v33, v35, s69, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp9:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v227, v225, v35, v33
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v35.h, v226.l
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b32_e32 v37, v211
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v98, v227
	v_sub_f32_e32 v39, v102, v227
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v204, v[36:37]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v100, v227
	v_sub_f32_e32 v36, v99, v227
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v101, v227
	v_sub_f32_e32 v40, v103, v227
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v40, v40
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[211:214], v164
	ds_load_b128 v[215:218], v165
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s68
	v_cndmask_b32_e64 v36, 0, v36, s63
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	v_cmp_o_f32_e64 s68, v33, v33
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s64
	v_cndmask_b32_e64 v40, 0, v40, s61
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s63, v36, v36
	v_and_b32_e32 v34, 1, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s64, v38, v38
	v_cmp_o_f32_e64 s61, v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v33, v33, v34, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v97, v227
	v_sub_f32_e32 v97, v104, v227
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s66
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v35.l, v34.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s66, v34, v34
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v34, v34, v35, 0x7fff
	v_cndmask_b16 v35.h, 0x7fff, v33.h, s68
	v_cndmask_b16 v35.l, 0x7fff, v34.h, s66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v34, v35, s69, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v34, v35, v124
	v_perm_b32 v34, v34, v35, v125
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v37
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v37.h, v226.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s65
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v37.l, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s65, v35, v35
	v_and_b32_e32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v35, v37, 0x7fff
	v_mov_b16_e64 v37.h, v226.l
	v_mov_b16_e32 v37.l, v36.h
	v_and_b32_e32 v37, 1, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v36, v36, v37, 0x7fff
	v_cndmask_b16 v37.h, 0x7fff, v35.h, s65
	v_cndmask_b16 v37.l, 0x7fff, v36.h, s63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v36, v37, s69, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v36, v37, v124
	v_perm_b32 v36, v36, v37, v125
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v39.h, v226.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s67
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v39.l, v37.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s63, v37, v37
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v37, v37, v39, 0x7fff
	v_mov_b16_e64 v39.h, v226.l
	v_mov_b16_e32 v39.l, v38.h
	v_and_b32_e32 v39, 1, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v38, v38, v39, 0x7fff
	v_cndmask_b16 v39.h, 0x7fff, v37.h, s63
	v_cndmask_b16 v39.l, 0x7fff, v38.h, s64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v38, v39, s69, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v38, v39, v124
	v_perm_b32 v38, v38, v39, v125
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v97
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v97.h, v226.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s62
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v97.l, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s62, v39, v39
	v_and_b32_e32 v97, 1, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v39, v97, 0x7fff
	v_mov_b16_e64 v97.h, v226.l
	v_mov_b16_e32 v97.l, v40.h
	v_and_b32_e32 v97, 1, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v40, v40, v97, 0x7fff
	v_cndmask_b16 v97.h, 0x7fff, v39.h, s62
	v_cndmask_b16 v97.l, 0x7fff, v40.h, s61
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s61, 0xff800000, v225
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v40, v97, s69, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v40, v97, v124
	v_perm_b32 v40, v40, v97, v125
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v97, v225, v227
	v_mov_b32_e32 v225, v227
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v97, v97
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v98, 0, v97, s61
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_nc_u32_e32 v97, 0, v135
	ds_load_b128 v[228:231], v97
	ds_load_b128 v[232:235], v146
	ds_load_b128 v[236:239], v147
	ds_load_b128 v[244:247], v97 offset:2048
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v98
	v_mul_f32_e32 v26, v26, v98
	v_mul_f32_e32 v27, v27, v98
	v_mul_f32_e32 v28, v28, v98
	v_mul_f32_e32 v29, v29, v98
	v_mul_f32_e32 v30, v30, v98
	v_mul_f32_e32 v31, v31, v98
	v_mul_f32_e32 v32, v32, v98
	v_mul_f32_e32 v17, v17, v98
	v_mul_f32_e32 v18, v18, v98
	v_mul_f32_e32 v19, v19, v98
	v_mul_f32_e32 v20, v20, v98
	v_mul_f32_e32 v21, v21, v98
	v_mul_f32_e32 v22, v22, v98
	v_mul_f32_e32 v23, v23, v98
	v_mul_f32_e32 v24, v24, v98
	v_mul_f32_e32 v9, v9, v98
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[228:235], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[228:231], v154
	ds_load_b128 v[232:235], v155
	ds_load_b128 v[248:251], v156
	ds_load_b128 v[252:255], v153
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v10, v10, v98
	v_mul_f32_e32 v11, v11, v98
	v_mul_f32_e32 v12, v12, v98
	v_mul_f32_e32 v13, v13, v98
	v_mul_f32_e32 v14, v14, v98
	v_mul_f32_e32 v15, v15, v98
	v_mul_f32_e32 v16, v16, v98
	v_mul_f32_e32 v1, v1, v98
	v_mul_f32_e32 v2, v2, v98
	v_mul_f32_e32 v3, v3, v98
	v_mul_f32_e32 v4, v4, v98
	v_mul_f32_e32 v5, v5, v98
	v_mul_f32_e32 v6, v6, v98
	v_mul_f32_e32 v7, v7, v98
	v_mul_f32_e32 v8, v8, v98
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[228:235], v[33:40], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[228:231], v162
	ds_load_b128 v[232:235], v163
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[228:235], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[228:231], v169
	ds_load_b128 v[232:235], v170
	ds_load_b128 v[207:210], v171
	ds_load_b128 v[219:222], v168
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[228:235], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v66, v227
	v_sub_f32_e32 v34, v65, v227
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v65.h, v226.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v68, v227
	v_sub_f32_e32 v35, v67, v227
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v70, v227
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v35, v35
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v69, v227
	v_sub_f32_e32 v40, v72, v227
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v71, v227
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s57
	v_cndmask_b32_e64 v34, 0, v34, s55
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s54
	s_delay_alu instid0(TRANS32_DEP_3)
	v_cndmask_b32_e64 v35, 0, v35, s51
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v65.l, v33.h
	v_cmp_o_f32_e64 s57, v33, v33
	v_cmp_o_f32_e64 s55, v34, v34
	v_cmp_o_f32_e64 s54, v36, v36
	v_cmp_o_f32_e64 s51, v35, v35
	v_and_b32_e32 v65, 1, v65
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s56
	v_cndmask_b32_e64 v37, 0, v37, s53
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v39, v39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v33, v33, v65, 0x7fff
	v_mov_b16_e64 v65.h, v226.l
	v_mov_b16_e32 v65.l, v34.h
	v_cmp_o_f32_e64 s53, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_and_b32_e32 v65, 1, v65
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s52
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v39, 0, v39, s50
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v34, v34, v65, 0x7fff
	v_cndmask_b16 v65.h, 0x7fff, v33.h, s57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s50, v39, v39
	v_cndmask_b16 v65.l, 0x7fff, v34.h, s55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v34, v65, s69, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v34, v65, v124
	v_perm_b32 v34, v34, v65, v125
	v_mov_b16_e64 v65.h, v226.l
	v_mov_b16_e32 v65.l, v36.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v65, 1, v65
	v_add3_u32 v36, v36, v65, 0x7fff
	v_mov_b16_e64 v65.h, v226.l
	v_mov_b16_e32 v65.l, v35.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s54
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v35, v65, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s51
	v_cmp_o_f32_e64 s51, v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v65, v36, s69, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v65, v36, v124
	v_perm_b32 v36, v65, v36, v125
	v_mov_b16_e64 v65.h, v226.l
	v_mov_b16_e32 v65.l, v38.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v65, 1, v65
	v_add3_u32 v38, v38, v65, 0x7fff
	v_mov_b16_e64 v65.h, v226.l
	v_mov_b16_e32 v65.l, v37.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s51
	v_cmp_o_f32_e64 s51, v40, v40
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v37, v37, v65, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v65, v38, s69, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v65, v38, v124
	v_perm_b32 v38, v65, v38, v125
	v_mov_b16_e64 v65.h, v226.l
	v_mov_b16_e32 v65.l, v40.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v65, 1, v65
	v_add3_u32 v40, v40, v65, 0x7fff
	v_mov_b16_e64 v65.h, v226.l
	v_mov_b16_e32 v65.l, v39.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s51
	v_and_b32_e32 v65, 1, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v39, v65, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v65, v40, s69, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v65, v40, v124
	v_perm_b32 v40, v65, v40, v125
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[240:243], v149
	ds_load_b128 v[65:68], v150
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[211:218], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[211:214], v173
	ds_load_b128 v[228:231], v174
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[244:251], v[33:40], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[69:72], v151
	ds_load_b128 v[248:251], v152
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[236:243], v[33:40], v[25:32]
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[207:214], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v50, v227
	v_sub_f32_e32 v33, v49, v227
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v49.h, v226.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v52, v227
	v_sub_f32_e32 v35, v51, v227
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v33, v33
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v54, v227
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v35, v35
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v53, v227
	v_sub_f32_e32 v40, v56, v227
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v55, v227
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s49
	v_cndmask_b32_e64 v33, 0, v33, s48
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s47
	s_delay_alu instid0(TRANS32_DEP_3)
	v_cndmask_b32_e64 v35, 0, v35, s44
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v49.l, v34.h
	v_cmp_o_f32_e64 s49, v34, v34
	v_cmp_o_f32_e64 s48, v33, v33
	v_cmp_o_f32_e64 s47, v36, v36
	v_cmp_o_f32_e64 s44, v35, v35
	v_and_b32_e32 v49, 1, v49
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s60
	v_cndmask_b32_e64 v37, 0, v37, s46
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v39, v39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v34, v34, v49, 0x7fff
	v_mov_b16_e64 v49.h, v226.l
	v_mov_b16_e32 v49.l, v33.h
	v_cmp_o_f32_e64 s46, v37, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s49
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s45
	v_cndmask_b32_e64 v39, 0, v39, s43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v33, v33, v49, 0x7fff
	v_cmp_o_f32_e64 s43, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s48
	v_permlanex16_b32 v49, v34, s69, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v49, v34, v124
	v_perm_b32 v34, v49, v34, v125
	v_mov_b16_e64 v49.h, v226.l
	v_mov_b16_e32 v49.l, v36.h
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v36, v36, v49, 0x7fff
	v_mov_b16_e64 v49.h, v226.l
	v_mov_b16_e32 v49.l, v35.h
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v49, 1, v49
	v_add3_u32 v35, v35, v49, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s44
	v_cmp_o_f32_e64 s44, v38, v38
	v_permlanex16_b32 v49, v36, s69, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v49, v36, v124
	v_perm_b32 v36, v49, v36, v125
	v_mov_b16_e64 v49.h, v226.l
	v_mov_b16_e32 v49.l, v38.h
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v38, v38, v49, 0x7fff
	v_mov_b16_e64 v49.h, v226.l
	v_mov_b16_e32 v49.l, v37.h
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s44
	v_cmp_o_f32_e64 s44, v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v49, 1, v49
	v_add3_u32 v37, v37, v49, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s46
	v_permlanex16_b32 v49, v38, s69, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v37, v49, v38, v124
	v_perm_b32 v38, v49, v38, v125
	v_mov_b16_e64 v49.h, v226.l
	v_mov_b16_e32 v49.l, v40.h
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v40, v49, 0x7fff
	v_mov_b16_e64 v49.h, v226.l
	v_mov_b16_e32 v49.l, v39.h
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v49, 1, v49
	v_add3_u32 v39, v39, v49, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s43
	v_permlanex16_b32 v49, v40, s69, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v39, v49, v40, v124
	v_perm_b32 v40, v49, v40, v125
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[49:52], v157
	ds_load_b128 v[53:56], v158
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[65:72], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[232:235], v175
	ds_load_b128 v[69:72], v176
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[49:56], v[33:40], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[49:52], v97 offset:4096
	ds_load_b128 v[53:56], v166
	ds_load_b128 v[215:218], v167
	ds_load_b128 v[65:68], v97 offset:6144
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[228:235], v[33:40], v[1:8]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[49:56], v[33:40], v[9:16]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v42, v227
	v_sub_f32_e32 v33, v41, v227
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v41.h, v226.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v44, v227
	v_sub_f32_e32 v35, v43, v227
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v33, v33
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v46, v227
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v35, v35
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v45, v227
	v_sub_f32_e32 v40, v48, v227
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v47, v227
.Ltmp10:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v53, v74, v79, v75
.Ltmp11:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s59
	v_cndmask_b32_e64 v33, 0, v33, s42
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s41
	v_cndmask_b32_e64 v35, 0, v35, s37
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v41.l, v34.h
	v_cmp_o_f32_e64 s43, v34, v34
	v_cmp_o_f32_e64 s42, v33, v33
	v_cmp_o_f32_e64 s41, v36, v36
	v_cmp_o_f32_e64 s37, v35, v35
	v_and_b32_e32 v41, 1, v41
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s58
	v_cndmask_b32_e64 v37, 0, v37, s40
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v39, v39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v34, v34, v41, 0x7fff
	v_mov_b16_e64 v41.h, v226.l
	v_mov_b16_e32 v41.l, v33.h
	v_cmp_o_f32_e64 s40, v37, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s43
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s39
	v_cndmask_b32_e64 v39, 0, v39, s38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v33, v33, v41, 0x7fff
	v_cmp_o_f32_e64 s38, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s42
	v_permlanex16_b32 v41, v34, s69, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v41, v34, v124
	v_perm_b32 v34, v41, v34, v125
	v_mov_b16_e64 v41.h, v226.l
	v_mov_b16_e32 v41.l, v36.h
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v36, v36, v41, 0x7fff
	v_mov_b16_e64 v41.h, v226.l
	v_mov_b16_e32 v41.l, v35.h
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v35, v35, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s37
	v_cmp_o_f32_e64 s37, v38, v38
	v_permlanex16_b32 v41, v36, s69, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v41, v36, v124
	v_perm_b32 v36, v41, v36, v125
	v_mov_b16_e64 v41.h, v226.l
	v_mov_b16_e32 v41.l, v38.h
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v38, v38, v41, 0x7fff
	v_mov_b16_e64 v41.h, v226.l
	v_mov_b16_e32 v41.l, v37.h
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s37
	v_cmp_o_f32_e64 s37, v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v37, v37, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s40
	v_permlanex16_b32 v41, v38, s69, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v37, v41, v38, v124
	v_perm_b32 v38, v41, v38, v125
	v_mov_b16_e64 v41.h, v226.l
	v_mov_b16_e32 v41.l, v40.h
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v40, v41, 0x7fff
	v_mov_b16_e64 v41.h, v226.l
	v_mov_b16_e32 v41.l, v39.h
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v39, v39, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s38
	v_permlanex16_b32 v41, v40, s69, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v39, v41, v40, v124
	v_perm_b32 v40, v41, v40, v125
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[41:44], v159
	ds_load_b128 v[45:48], v161
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[248:255], v[33:40], v[25:32]
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[215:222], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[65:72], v[33:40], v[1:8]
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v64, v64
	v_max3_f32 v70, v58, v63, v59
.Ltmp13:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[41:48], v[33:40], v[17:24]
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v92, v92
	v_max_f32_e32 v34, v96, v96
	v_max3_f32 v35, v90, v95, v91
	v_max3_f32 v36, v82, v87, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v34, v33
	v_max3_f32 v34, v93, v89, v94
	v_max3_f32 v33, v34, v35, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v35, v88, v88 :: v_dual_mov_b32 v34, v33
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v34 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v34, v33
	v_mov_b32_dpp v34, v34 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v34, v33
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max_f32_e32 v33, v33, v34
.Ltmp21:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v34, v126, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v126, v34, v33
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v34, v84, v84 :: v_dual_sub_f32 v37, v93, v126
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v34, v35, v34
	v_max3_f32 v35, v85, v81, v86
.Ltmp23:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v41, v89, v126
	v_sub_f32_e32 v38, v94, v126
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v42, v90, v126
.Ltmp24:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v34, v35, v36, v34
	v_max_f32_e32 v36, v80, v80
.Ltmp25:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	v_exp_f32_e32 v38, v38
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v39, v95, v126
.Ltmp26:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v35, v34 :: v_dual_sub_f32 v40, v96, v126
.Ltmp27:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v44, v92, v126
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s30
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
.Ltmp28:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s35
	v_cndmask_b32_e64 v38, 0, v38, s31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp30:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v41
.Ltmp32:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v42
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s21
.Ltmp33:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp34:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s20
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp36:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s33
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v38, v38, v41 :: v_dual_max_f32 v35, v35, v35
	v_dual_add_f32 v37, v37, v38 :: v_dual_max_f32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v35, v34
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v35
	v_max_f32_e32 v34, v34, v35
.Ltmp41:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v35, v127, v127
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v127, v35, v34
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v76, v76
.Ltmp43:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v45, v85, v127
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v36, v35
	v_max3_f32 v36, v77, v73, v78
.Ltmp45:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v49, v81, v127
	v_sub_f32_e32 v46, v86, v127
	v_sub_f32_e32 v50, v82, v127
	v_sub_f32_e32 v47, v87, v127
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v35, v36, v53, v35
.Ltmp47:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v51, v83, v127
	v_sub_f32_e32 v48, v88, v127
	v_sub_f32_e32 v52, v84, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v36, v35
.Ltmp49:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v36, v36 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp52:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s24
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v36, v35
	v_mov_b32_dpp v36, v36 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v36, v35
	v_mov_b32_dpp v36, v36 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v36
	v_max_f32_e32 v35, v35, v36
.Ltmp58:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v36, v128, v128
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v128, v36, v35
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v60, v60
.Ltmp60:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v53, v77, v128
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v69, v36
	v_max3_f32 v69, v61, v57, v62
.Ltmp62:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v73, v128
	v_sub_f32_e32 v54, v78, v128
	v_sub_f32_e32 v66, v74, v128
	v_sub_f32_e32 v55, v79, v128
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v36, v69, v70, v36
.Ltmp64:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v75, v128
	v_sub_f32_e32 v56, v80, v128
	v_sub_f32_e32 v68, v76, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v69, v36
	v_mov_b32_dpp v69, v69 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v36, v36, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v69, v36
	v_mov_b32_dpp v69, v69 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_max_f32_e32 v36, v36, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v69, v36
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
	v_dual_max_f32 v36, v36, v69 :: v_dual_sub_f32 v43, v91, v126
.Ltmp71:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v69, v129, v129
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v43
	v_exp_f32_e32 v43, v68
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v129, v69, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v61, v61, v129
	v_sub_f32_e32 v57, v57, v129
	v_sub_f32_e32 v62, v62, v129
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s36
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v43, 0, v43, s25
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v58, v58, v129
	v_sub_f32_e32 v63, v63, v129
	v_sub_f32_e32 v59, v59, v129
.Ltmp72:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v39, v39, v41
.Ltmp73:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v44
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v64, v64, v129
	v_sub_f32_e32 v60, v60, v129
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v44, v60
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
.Ltmp74:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v40, v41
.Ltmp75:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v51
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v44, 0, v44, s17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp76:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v38, v39, v40 :: v_dual_mov_b32 v39, v106
.Ltmp77:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v50
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp79:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s28
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v38, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp81:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s23
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v38, v38 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v38, v38 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v38, v37
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v106, v37, v38
.Ltmp88:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v45
	v_exp_f32_e32 v38, v49
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v38, 0, v38, s27
.Ltmp89:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
.Ltmp90:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s12
.Ltmp91:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v38, v40
.Ltmp92:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
.Ltmp94:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v40, v41
.Ltmp96:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v48
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp97:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v42
.Ltmp98:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v67
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v40, v41
	v_mov_b32_e32 v40, v108
.Ltmp100:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
.Ltmp102:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v38, v37
.Ltmp104:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v38, v38 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v38, v37
	v_mov_b32_dpp v38, v38 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v108, v37, v38
.Ltmp111:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v53
	v_exp_f32_e32 v38, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s15
	v_cndmask_b32_e64 v38, 0, v38, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp112:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
.Ltmp113:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v54
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp114:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v38, v41
.Ltmp115:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v55
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp117:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s11
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v42
.Ltmp119:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v56
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s10
.Ltmp120:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v42, v42, v43
.Ltmp121:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v38, v41, v42 :: v_dual_mov_b32 v41, v107
.Ltmp123:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v58
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp125:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s19
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v38, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp127:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s16
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v38, v38 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v38, v38 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v38, v37
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v107, v37, v38
.Ltmp134:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v61
	v_exp_f32_e32 v38, v57
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v38, 0, v38, s18
.Ltmp135:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
.Ltmp136:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s6
.Ltmp137:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v38, v42
.Ltmp138:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp139:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
.Ltmp140:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v42, v42, v43
.Ltmp142:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v64
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s4
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e64 s4, 0xff800000, v177
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v43, v43, v44
	v_add_f32_e32 v38, v42, v43
	v_mov_b32_e32 v42, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v37, v37, v38
.Ltmp144:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v38, v38 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp145:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp146:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v38, v37
	v_mov_b32_dpp v38, v38 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
.Ltmp148:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v38, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v38, v38 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp149:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v109, v37, v38
.Ltmp150:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v37, v177, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v37, v33
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v37, v177, v33
	v_mov_b32_e32 v177, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v37, v37
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v37, 0, v37, s4
	v_cmp_neq_f32_e64 s4, 0xff800000, v172
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_dual_fmac_f32 v106, v39, v37 :: v_dual_max_f32 v37, v172, v172
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v34, v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v37, v172, v34 :: v_dual_mov_b32 v172, v34
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v37, 0, v37, s4
	v_cmp_neq_f32_e64 s4, 0xff800000, v160
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v108, v40, v37
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v37, v160, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v37, v35
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v37, v160, v35 :: v_dual_mov_b32 v160, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v37, v37
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v37, 0, v37, s4
	v_cmp_neq_f32_e64 s4, 0xff800000, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v107, v41, v37
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v37, v148, v148
	v_max_f32_e32 v36, v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v37, v148, v36
	v_mov_b32_e32 v148, v36
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v37, 0, v37, s4
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_add_i32 s4, s104, 64
	s_cmpk_lt_u32 s104, 0x7c0
	s_mov_b32 s104, s4
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v109, v42, v37
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v33, off, off offset:12
	scratch_load_b32 v34, off, off offset:16
	scratch_load_b32 v35, off, off offset:8
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
	v_add_nc_u32_e32 v35, 0, v35
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v0, v34, v33, v0
	ds_store_2addr_b64 v35, v[106:107], v[108:109] offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v0, v0, v25
	v_div_scale_f32 v35, null, v0, v0, v26
	v_div_scale_f32 v37, null, v0, v0, v27
	v_div_scale_f32 v39, null, v0, v0, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v33
	v_rcp_f32_e32 v46, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v37
	v_div_scale_f32 v41, null, v0, v0, v29
	v_rcp_f32_e32 v48, v39
	v_div_scale_f32 v43, null, v0, v0, v30
	v_rcp_f32_e32 v49, v41
	v_div_scale_f32 v34, vcc_lo, v25, v0, v25
	v_fma_f32 v54, -v33, v45, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v50, v43
	v_fma_f32 v55, -v35, v46, 1.0
	v_fma_f32 v56, -v37, v47, 1.0
	v_fma_f32 v57, -v39, v48, 1.0
	v_fmac_f32_e32 v45, v54, v45
	v_div_scale_f32 v36, s1, v26, v0, v26
	v_fmac_f32_e32 v46, v55, v46
	v_div_scale_f32 v38, s3, v27, v0, v27
	v_fmac_f32_e32 v47, v56, v47
	v_div_scale_f32 v40, s4, v28, v0, v28
	v_fma_f32 v58, -v41, v49, 1.0
	v_fmac_f32_e32 v48, v57, v48
	v_dual_mul_f32 v54, v34, v45 :: v_dual_mul_f32 v55, v36, v46
	v_fma_f32 v59, -v43, v50, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v56, v38, v47 :: v_dual_mul_f32 v57, v40, v48
	v_fmac_f32_e32 v49, v58, v49
	v_fma_f32 v58, -v33, v54, v34
	v_div_scale_f32 v42, s5, v29, v0, v29
	v_fmac_f32_e32 v50, v59, v50
	v_fma_f32 v59, -v35, v55, v36
	v_fma_f32 v60, -v37, v56, v38
	v_fma_f32 v61, -v39, v57, v40
	v_fmac_f32_e32 v54, v58, v45
	v_div_scale_f32 v44, null, v0, v0, v31
	v_dual_mul_f32 v62, v42, v49 :: v_dual_fmac_f32 v55, v59, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v56, v60, v47 :: v_dual_fmac_f32 v57, v61, v48
	v_fma_f32 v33, -v33, v54, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v53, v44
	v_fma_f32 v34, -v35, v55, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v35, -v37, v56, v38
	v_fma_f32 v36, -v39, v57, v40
	v_div_fmas_f32 v33, v33, v45, v54
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v51, s6, v30, v0, v30
	v_div_fmas_f32 v34, v34, v46, v55
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v25, v33, v0, v25
	v_div_fmas_f32 v35, v35, v47, v56
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v52, null, v0, v0, v32
	v_div_fmas_f32 v33, v36, v48, v57
	v_fma_f32 v36, -v44, v53, 1.0
	v_div_fixup_f32 v26, v34, v0, v26
	v_mul_f32_e32 v34, v51, v50
	v_rcp_f32_e32 v37, v52
	v_fma_f32 v58, -v41, v62, v42
	v_fmac_f32_e32 v53, v36, v53
	v_div_scale_f32 v36, null, v0, v0, v17
	v_div_fixup_f32 v28, v33, v0, v28
	v_fma_f32 v33, -v43, v34, v51
	v_div_fixup_f32 v27, v35, v0, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v40, v36
	v_div_scale_f32 v35, s3, v31, v0, v31
	v_fma_f32 v38, -v52, v37, 1.0
	v_fmac_f32_e32 v34, v33, v50
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v33, v35, v53
	v_div_scale_f32 v46, null, v0, v0, v18
	v_fmac_f32_e32 v37, v38, v37
	v_fma_f32 v45, -v36, v40, 1.0
	v_div_scale_f32 v38, s4, v32, v0, v32
	v_div_scale_f32 v47, null, v0, v0, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v40, v45, v40
	v_div_scale_f32 v45, s5, v17, v0, v17
	v_fmac_f32_e32 v62, v58, v49
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v41, v62, v42
	v_fma_f32 v41, -v43, v34, v51
	v_fma_f32 v42, -v44, v33, v35
	v_mul_f32_e32 v43, v38, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v49, v62
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v33, v42, v53
	v_div_fmas_f32 v34, v41, v50, v34
	v_rcp_f32_e32 v41, v46
	v_fma_f32 v42, -v52, v43, v38
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v29, v39, v0, v29
	v_div_fixup_f32 v30, v34, v0, v30
	v_fma_f32 v34, -v44, v33, v35
	v_fmac_f32_e32 v43, v42, v37
	v_mul_f32_e32 v35, v45, v40
	v_div_scale_f32 v42, null, v0, v0, v19
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v46, v41, 1.0
	v_div_fmas_f32 v33, v34, v53, v33
	v_fma_f32 v34, -v52, v43, v38
	v_fma_f32 v38, -v36, v35, v45
	v_div_scale_f32 v44, s3, v18, v0, v18
	v_fmac_f32_e32 v41, v39, v41
	v_rcp_f32_e32 v39, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v35, v38, v40
	v_div_fixup_f32 v31, v33, v0, v31
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v38, v44, v41
	v_div_fmas_f32 v34, v34, v37, v43
	v_fma_f32 v33, -v36, v35, v45
	v_div_scale_f32 v45, null, v0, v0, v21
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v37, v47
	v_div_fmas_f32 v33, v33, v40, v35
	v_rcp_f32_e32 v35, v45
	v_fma_f32 v43, -v42, v39, 1.0
	v_div_fixup_f32 v32, v34, v0, v32
	v_fma_f32 v34, -v46, v38, v44
	v_div_scale_f32 v36, s4, v19, v0, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v39, v43, v39
	v_div_fixup_f32 v17, v33, v0, v17
	v_fma_f32 v43, -v47, v37, 1.0
	v_fmac_f32_e32 v38, v34, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v45, v35, 1.0
	v_mul_f32_e32 v34, v36, v39
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v40, s5, v20, v0, v20
	v_fmac_f32_e32 v35, v49, v35
	v_fmac_f32_e32 v37, v43, v37
	v_div_scale_f32 v43, null, v0, v0, v22
	v_fma_f32 v33, -v46, v38, v44
	v_fma_f32 v44, -v42, v34, v36
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v48, v43
	v_fmac_f32_e32 v34, v44, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v43, v48, 1.0
	v_fmac_f32_e32 v48, v44, v48
	v_div_fmas_f32 v33, v33, v41, v38
	v_div_scale_f32 v41, s3, v21, v0, v21
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v18, v33, v0, v18
	v_fma_f32 v33, -v42, v34, v36
	v_mul_f32_e32 v36, v41, v35
	v_mul_f32_e32 v46, v40, v37
	v_div_scale_f32 v42, null, v0, v0, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v39, v34
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v38, -v47, v46, v40
	v_fma_f32 v39, -v45, v36, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v19, v33, v0, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v46, v38, v37
	v_div_scale_f32 v38, s6, v22, v0, v22
	v_fmac_f32_e32 v36, v39, v35
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v47, v46, v40
	v_div_scale_f32 v47, null, v0, v0, v24
	v_fma_f32 v33, -v45, v36, v41
	v_rcp_f32_e32 v40, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v34, v34, v37, v46
	v_rcp_f32_e32 v37, v47
	v_mul_f32_e32 v44, v38, v48
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v45, null, v0, v0, v10
	v_div_fmas_f32 v33, v33, v35, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v39, -v43, v44, v38
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v46, -v42, v40, 1.0
	v_div_fixup_f32 v20, v34, v0, v20
	v_div_scale_f32 v34, s4, v23, v0, v23
	v_fmac_f32_e32 v44, v39, v48
	v_fma_f32 v39, -v47, v37, 1.0
	v_div_fixup_f32 v21, v33, v0, v21
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v43, v44, v38
	v_div_scale_f32 v38, null, v0, v0, v9
	v_fmac_f32_e32 v37, v39, v37
	v_div_scale_f32 v39, s3, v24, v0, v24
	v_div_fmas_f32 v35, v35, v48, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v41, v38
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v48, null, v0, v0, v12
	v_div_fixup_f32 v22, v35, v0, v22
	v_rcp_f32_e32 v35, v45
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v50, v48
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s1
	v_cndmask_b32_e64 v22, 0, v22, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v45, v35, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v35, v46, v35
	v_mul_f32_e32 v36, v34, v40
	v_fma_f32 v43, -v42, v36, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v36, v43, v40
	v_fma_f32 v43, -v38, v41, 1.0
	v_fma_f32 v34, -v42, v36, v34
	v_div_scale_f32 v42, null, v0, v0, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v43, v41
	v_div_fmas_f32 v34, v34, v40, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v43, v42
	v_div_scale_f32 v40, s4, v10, v0, v10
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v23, v34, v0, v23
	v_mul_f32_e32 v49, v40, v35
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v42, v43, 1.0
	v_dual_mul_f32 v44, v39, v37 :: v_dual_fmac_f32 v43, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v47, v44, v39
	v_div_scale_f32 v46, s6, v11, v0, v11
	v_fmac_f32_e32 v44, v33, v37
	v_div_scale_f32 v33, s5, v9, v0, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v47, v44, v39
	v_mul_f32_e32 v39, v33, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v36, v37, v44
	v_fma_f32 v47, -v38, v39, v33
	v_fma_f32 v37, -v45, v49, v40
	v_mul_f32_e32 v44, v46, v43
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v24, v36, v0, v24
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	.loc	1 1044 48                       ; attention.py:1044:48
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v48, v39, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v44, v38
	v_fma_f32 v35, -v40, v42, 1.0
	v_fma_f32 v43, -v37, v33, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v50, v39
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v42, v35, v42
	v_fmac_f32_e32 v33, v43, v34
	v_div_scale_f32 v43, null, v0, v0, v16
	v_div_fixup_f32 v12, v36, v0, v12
	v_div_scale_f32 v35, s5, v14, v0, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v37, v33, v41
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	v_cndmask_b32_e64 v12, 0, v12, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v0, v0, v2
	v_div_fmas_f32 v33, v36, v34, v33
	v_div_scale_f32 v36, s3, v15, v0, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v47, v41
	v_mul_f32_e32 v39, v35, v42
	v_div_scale_f32 v34, null, v0, v0, v1
	v_div_fixup_f32 v13, v33, v0, v13
	v_fma_f32 v33, -v43, v45, 1.0
	v_fma_f32 v37, -v40, v39, v35
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v48, s5, v1, v0, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v41, v47, 1.0
	v_fmac_f32_e32 v45, v33, v45
	v_div_scale_f32 v33, s4, v16, v0, v16
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v47, v49, v47
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v49, s6, v2, v0, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 1044 48                       ; attention.py:1044:48
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	.loc	1 1044 48                       ; attention.py:1044:48
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
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s6, v8, v0, v8
	v_dual_mul_f32 v52, v48, v41 :: v_dual_fmac_f32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v33
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s1
	v_cndmask_b32_e64 v1, 0, v1, s1
	v_cndmask_b32_e64 v2, 0, v2, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v40, v43, v38
	v_fmac_f32_e32 v49, v47, v36
	v_fma_f32 v47, -v37, v52, v48
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v6, v35, v0, v6
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v0, v7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v25, s1
	v_cndmask_b32_e64 v25, 0, v26, s1
	v_cndmask_b32_e64 v26, 0, v27, s1
	v_cndmask_b32_e64 v27, 0, v28, s1
	v_cndmask_b32_e64 v28, 0, v29, s1
	v_cndmask_b32_e64 v29, 0, v30, s1
	v_cndmask_b32_e64 v30, 0, v31, s1
	v_cndmask_b32_e64 v31, 0, v32, s1
	.loc	1 1046 74 is_stmt 1             ; attention.py:1046:74
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v32, off, off offset:4
	scratch_load_b32 v36, off, off
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v37, v8, 16, 1
	v_bfe_u32 v38, v25, 16, 1
	v_bfe_u32 v39, v26, 16, 1
	v_cmp_o_f32_e64 s5, v8, v8
	v_cmp_o_f32_e64 s6, v25, v25
	v_add3_u32 v37, v8, v37, 0x7fff
	v_add3_u32 v8, v25, v38, 0x7fff
	v_add3_u32 v25, v26, v39, 0x7fff
	v_cmp_o_f32_e64 s7, v26, v26
	v_bfe_u32 v26, v27, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v37.h, s5
	v_bfe_u32 v37, v28, 16, 1
	v_bfe_u32 v38, v29, 16, 1
	v_cmp_o_f32_e64 s5, v27, v27
	v_add3_u32 v26, v27, v26, 0x7fff
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s6
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s7
	v_add3_u32 v27, v28, v37, 0x7fff
	v_cmp_o_f32_e64 s6, v28, v28
	v_add3_u32 v28, v29, v38, 0x7fff
	v_cmp_o_f32_e64 s7, v29, v29
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s5
	v_bfe_u32 v26, v30, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s6
	v_bfe_u32 v29, v31, 16, 1
	v_cndmask_b16 v27.h, 0x7fff, v28.h, s7
	v_bfe_u32 v28, v17, 16, 1
	v_add3_u32 v26, v30, v26, 0x7fff
	v_cmp_o_f32_e64 s5, v30, v30
	v_add3_u32 v29, v31, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v31, v31
	v_add3_u32 v28, v17, v28, 0x7fff
	v_cmp_o_f32_e64 s7, v17, v17
	v_cndmask_b16 v17.l, 0x7fff, v26.h, s5
	v_bfe_u32 v26, v18, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v29.h, s6
	v_bfe_u32 v29, v19, 16, 1
	v_bfe_u32 v30, v20, 16, 1
	v_cmp_o_f32_e64 s5, v18, v18
	v_add3_u32 v26, v18, v26, 0x7fff
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s7
	v_add3_u32 v18, v19, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v19, v19
	v_add3_u32 v19, v20, v30, 0x7fff
	v_cmp_o_f32_e64 s7, v20, v20
	v_cndmask_b16 v28.h, 0x7fff, v26.h, s5
	v_bfe_u32 v20, v21, 16, 1
	v_bfe_u32 v26, v22, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s6
	v_cmp_o_f32_e64 s5, v21, v21
	v_cmp_o_f32_e64 s6, v22, v22
	v_add3_u32 v20, v21, v20, 0x7fff
	v_add3_u32 v21, v22, v26, 0x7fff
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
	v_cndmask_b32_e64 v7, 0, v7, s1
	v_cndmask_b32_e64 v0, 0, v0, s1
	.loc	1 1049 36                       ; attention.py:1049:36
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
	v_cndmask_b32_e64 v5, v8, v27, s0
	v_cndmask_b32_e64 v6, v17, v25, s0
	v_cndmask_b32_e64 v7, v25, v17, s0
	v_cndmask_b32_e64 v13, v28, v20, s0
	v_cndmask_b32_e64 v16, v12, v9, s0
	v_cndmask_b32_e64 v9, v9, v12, s0
	v_cndmask_b32_e64 v12, v11, v10, s0
	v_cndmask_b32_e64 v10, v10, v11, s0
	v_cndmask_b32_e64 v17, v0, v1, s0
	v_cndmask_b32_e64 v0, v1, v0, s0
	v_cndmask_b32_e64 v15, v18, v19, s0
	v_cndmask_b32_e64 v1, v2, v3, s0
	s_mov_b32 s5, 0x76543210
	v_cndmask_b32_e64 v14, v19, v18, s0
	v_cndmask_b32_e64 v18, v3, v2, s0
	v_permlanex16_b32 v2, v5, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v13, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v10, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v0, s5, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v4, v27, v8, s0
	v_cndmask_b32_e64 v8, v20, v28, s0
	v_permlanex16_b32 v9, v9, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v7, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v15, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v1, s5, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v10, v11, v12, v124
	v_perm_b32 v11, v11, v12, v125
	v_perm_b32 v12, v13, v17, v124
	v_perm_b32 v13, v13, v17, v125
	v_perm_b32 v0, v2, v4, v124
	v_perm_b32 v1, v2, v4, v125
	v_perm_b32 v4, v5, v8, v124
	v_perm_b32 v5, v5, v8, v125
	v_perm_b32 v8, v9, v16, v124
	v_perm_b32 v9, v9, v16, v125
	v_perm_b32 v2, v3, v6, v124
	v_perm_b32 v3, v3, v6, v125
	v_perm_b32 v6, v7, v14, v124
	v_perm_b32 v7, v7, v14, v125
	v_perm_b32 v14, v15, v18, v124
	v_perm_b32 v15, v15, v18, v125
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	s_and_b32 s9, s91, 0xffff
	s_mov_b32 s8, s90
	.loc	1 1046 74 is_stmt 1             ; attention.py:1046:74
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v32, 1, v32
	.loc	1 1046 24 is_stmt 0             ; attention.py:1046:24
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v36, s85, v36
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v33, 16, v32
	v_or_b32_e32 v34, 32, v32
	v_or_b32_e32 v35, 48, v32
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s85, v32
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v16, v36, v32, 1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s85, v33
	v_cmp_gt_i32_e64 s1, s85, v34
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v17, v36, v33, 1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s85, v35
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v18, v36, v34, 1
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	s_and_b32 s0, s2, s4
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v36, v35, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[8:11], 0 offen
	buffer_store_b128 v[4:7], v17, s[8:11], 0 offen
	buffer_store_b128 v[8:11], v18, s[8:11], 0 offen
	buffer_store_b128 v[12:15], v19, s[8:11], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_endpgm
.Ltmp151:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 24
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 24
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 18320
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 24
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 107
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
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
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
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
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
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
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
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
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
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
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
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
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
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
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
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
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
	.quad	.Ltmp150-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 24
    .sgpr_count:     107
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 5
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
