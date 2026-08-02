	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b128 s[84:87], s[0:1], 0x60
	v_dual_mov_b32 v42, 0x5410 :: v_dual_and_b32 v1, 1, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 1, v0
	s_clause 0x1
	s_load_b256 s[68:75], s[0:1], 0x0
	s_load_b64 s[4:5], s[0:1], 0x70
	v_dual_mov_b32 v216, 0xff800000 :: v_dual_lshlrev_b32 v1, 4, v1
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s6, s2, 6
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s6, v2
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s7, s6, s2
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v38, 0x60, v0
	v_dual_mov_b32 v43, 0x7632 :: v_dual_and_b32 v72, 15, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v4
	s_mov_b32 s95, 0x31027000
	s_mov_b32 s94, 0x7ffffffe
	v_dual_mov_b32 v29, v25 :: v_dual_and_b32 v82, 16, v0
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[97:98], null, s84, v2, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s84, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s93, s69, 0xffff
	s_mov_b32 s92, s68
	s_clause 0x1
	s_load_b64 s[96:97], s[0:1], 0x20
	s_load_b128 s[88:91], s[0:1], 0x30
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, s84, s7, v[97:98]
	v_dual_mov_b32 v166, 0xff800000 :: v_dual_lshlrev_b32 v65, 2, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 28
	v_dual_mov_b32 v120, 0xff800000 :: v_dual_lshlrev_b32 v47, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v39, 3, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 1, v38
	v_dual_mov_b32 v27, v25 :: v_dual_and_b32 v40, 7, v0
	v_bfe_u32 v45, v0, 4, 1
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[33:36], v1, s[92:95], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, v2, v72
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s93, s75, 0xffff
	s_mov_b32 s92, s74
	v_bfe_i32 v55, v0, 2, 1
	v_bfe_i32 v57, v0, 3, 1
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v2, s7, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s6, v1
	v_bfe_i32 v58, v0, 5, 1
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	v_mov_b32_e32 v117, 0xff800000
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off
	scratch_store_b32 off, v82, off offset:4
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v1
	v_dual_mov_b32 v26, v25 :: v_dual_and_b32 v73, 0x78, v0
	v_mov_b32_e32 v32, v25
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -16
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	s_clause 0x2                            ; 12-byte Folded Spill
	scratch_store_b32 off, v72, off offset:8
	scratch_store_b32 off, v65, off offset:16
	scratch_store_b32 off, v73, off offset:12
	v_and_b32_e32 v65, 0x7c, v65
	buffer_load_u16 v41, v1, s[92:95], 0 offen
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s7, s3, s1
	.loc	1 773 86                        ; attention.py:773:86
	v_bfe_i32 v46, v0, 0, 1
	v_dual_mov_b32 v17, v25 :: v_dual_and_b32 v50, 12, v0
	v_dual_mov_b32 v23, v25 :: v_dual_and_b32 v56, 8, v0
	v_dual_mov_b32 v30, v25 :: v_dual_lshlrev_b32 v63, 4, v40
	v_dual_mov_b32 v22, v25 :: v_dual_and_b32 v55, 0x2040, v55
	v_dual_mov_b32 v10, v25 :: v_dual_and_b32 v69, 0x410, v57
	v_dual_mov_b32 v3, v25 :: v_dual_lshlrev_b32 v68, 6, v82
	v_dual_mov_b32 v5, v25 :: v_dual_and_b32 v58, 0x2040, v58
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v60, s6, v39
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v61, v47, 30, v45
	v_mul_u32_u24_e32 v70, 0x90, v40
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s1, s7, 0x10007
	v_dual_mov_b32 v11, v25 :: v_dual_lshlrev_b32 v64, 2, v38
	v_lshrrev_b32_e32 v66, 3, v38
	v_lshl_or_b32 v38, v38, 4, v65
	s_add_i32 s3, s7, s1
	v_dual_mov_b32 v190, 0xff800000 :: v_dual_and_b32 v49, 24, v0
	v_dual_mov_b32 v178, 0xff800000 :: v_dual_and_b32 v51, 3, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_i32 v44, v0, 4, 1
	v_dual_mov_b32 v31, v25 :: v_dual_lshlrev_b32 v48, 4, v0
	v_dual_mov_b32 v9, v25 :: v_dual_lshlrev_b32 v62, 1, v50
	v_dual_mov_b32 v13, v25 :: v_dual_lshlrev_b32 v50, 5, v50
	v_mov_b32_e32 v7, v25
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s1, 0x800, v60
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v60, 2, v61
	v_and_or_b32 v46, 0x1020, v46, v55
	v_lshl_or_b32 v55, v56, 4, v68
	v_and_or_b32 v56, 0x1020, v57, v58
	v_xor_b32_e32 v57, v63, v73
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s3, s3, 0x80000
	v_xor_b32_e32 v125, v70, v69
	s_sext_i32_i16 s3, s3
	v_xor_b32_e32 v128, v38, v66
	v_mul_lo_u32 v38, s5, v39
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s0, 4
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s9, s3, 10
	v_dual_mov_b32 v21, v25 :: v_dual_and_b32 v54, 4, v0
	v_dual_mov_b32 v28, v25 :: v_dual_lshlrev_b32 v37, 3, v40
	v_dual_mov_b32 v18, v25 :: v_dual_lshlrev_b32 v67, 5, v51
	v_mov_b32_e32 v15, v25
	v_dual_mov_b32 v1, v25 :: v_dual_and_b32 v44, 0x2040, v44
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v59, 1, v73
	v_xor_b32_e32 v123, v48, v49
	v_and_b32_e32 v48, 0x630, v48
	v_lshl_or_b32 v50, v51, 11, v50
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v58, 4, v60
	v_lshl_or_b32 v131, v40, 10, v57
	v_xor_b32_e32 v40, 16, v125
	v_xor_b32_e32 v75, 0x1860, v125
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s8, s0, 14
	s_and_b32 s9, s9, 0xfffff800
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s10, s86, 0x3fb8aa3b
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s86, s9, s8
	v_dual_mov_b32 v24, v25 :: v_dual_and_b32 v47, 0x80, v47
	v_lshl_add_u32 v54, v54, 9, 0
	v_or3_b32 v127, v48, v44, v50
	v_xor_b32_e32 v44, v56, v67
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[102:103], null, s85, v59, v[37:38]
	v_add_nc_u32_e32 v136, 0, v40
	v_add_nc_u32_e32 v157, 0, v75
	v_or_b32_e32 v165, s86, v45
	v_lshl_add_u32 v45, s5, 4, v38
	v_lshl_add_u32 v75, s5, 5, v38
	v_mad_u64_u32 v[39:40], null, s5, 48, v[38:39]
	v_add_nc_u32_e32 v167, v37, v38
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s0, s87, s0
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s4, s4, s7
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v71, 4, v37
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s87, s4, s0
	v_add3_u32 v44, v54, v47, v44
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v82
	v_dual_mov_b32 v164, 0xff800000 :: v_dual_lshlrev_b32 v53, 3, v0
	v_dual_mov_b32 v19, v25 :: v_dual_and_b32 v52, 28, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v188, v44, v82
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v208, v37, v45
	v_add_nc_u32_e32 v210, v71, v45
	v_cndmask_b32_e64 v42, 0x1054, v42, s0
	v_cndmask_b32_e64 v43, 0x3276, v43, s0
	v_dual_mov_b32 v20, v25 :: v_dual_and_b32 v53, 0x310, v53
	v_xor_b32_e32 v61, 8, v123
	v_lshl_or_b32 v124, v72, 5, v62
	v_lshl_or_b32 v62, v49, 8, v63
	v_lshl_or_b32 v49, v49, 1, v64
	v_lshl_or_b32 v51, v52, 7, v67
	v_xor_b32_e32 v70, 0x1070, v125
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s3, s85, v37
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v209, v37, v75
	v_add_nc_u32_e32 v212, v37, v39
	v_add_nc_u32_e32 v213, v71, v39
	v_lshl_or_b32 v39, v42, 8, v42
	v_mad_u64_u32 v[103:104], null, s85, 3, v[102:103]
	v_dual_mov_b32 v99, v25 :: v_dual_add_nc_u32 v132, 0, v61
	v_xor_b32_e32 v63, 8, v124
	v_xor_b32_e32 v65, 16, v124
	v_xor_b32_e32 v68, 24, v124
	v_xor_b32_e32 v126, v62, v49
	v_or3_b32 v129, v51, v64, v52
	v_or3_b32 v130, v46, v55, v53
	v_xor_b32_e32 v46, 32, v125
	v_xor_b32_e32 v48, 48, v125
	v_xor_b32_e32 v49, 64, v125
	v_xor_b32_e32 v50, 0x50, v125
	v_xor_b32_e32 v51, 0x60, v125
	v_xor_b32_e32 v52, 0x70, v125
	v_xor_b32_e32 v53, 0x820, v125
	v_xor_b32_e32 v55, 0x830, v125
	v_xor_b32_e32 v56, 0x810, v125
	v_xor_b32_e32 v57, 0x860, v125
	v_xor_b32_e32 v62, 0x870, v125
	v_xor_b32_e32 v64, 0x840, v125
	v_xor_b32_e32 v66, 0x850, v125
	v_xor_b32_e32 v67, 0x1040, v125
	v_xor_b32_e32 v61, 0x1050, v125
	v_xor_b32_e32 v69, 0x1060, v125
	v_xor_b32_e32 v72, 0x1010, v125
	v_xor_b32_e32 v73, 0x1020, v125
	v_xor_b32_e32 v74, 0x1030, v125
	v_dual_mov_b32 v12, v25 :: v_dual_add_nc_u32 v133, 0, v63
	v_dual_mov_b32 v14, v25 :: v_dual_add_nc_u32 v135, 0, v68
	v_dual_mov_b32 v16, v25 :: v_dual_add_nc_u32 v137, 0, v46
	v_dual_mov_b32 v2, v25 :: v_dual_add_nc_u32 v139, 0, v49
	v_dual_mov_b32 v4, v25 :: v_dual_add_nc_u32 v141, 0, v51
	v_dual_mov_b32 v6, v25 :: v_dual_add_nc_u32 v143, 0, v53
	v_dual_mov_b32 v8, v25 :: v_dual_add_nc_u32 v145, 0, v56
	v_dual_mov_b32 v98, v25 :: v_dual_add_nc_u32 v147, 0, v62
	v_dual_mov_b32 v100, v25 :: v_dual_add_nc_u32 v149, 0, v66
	v_dual_mov_b32 v101, v25 :: v_dual_add_nc_u32 v134, 0, v65
	v_xor_b32_e32 v76, 0x1870, v125
	v_xor_b32_e32 v77, 0x1840, v125
	v_xor_b32_e32 v78, 0x1850, v125
	v_xor_b32_e32 v79, 0x1820, v125
	v_xor_b32_e32 v80, 0x1830, v125
	v_xor_b32_e32 v81, 0x1810, v125
	v_add_nc_u32_e32 v138, 0, v48
	v_add_nc_u32_e32 v140, 0, v50
	v_add_nc_u32_e32 v142, 0, v52
	v_add_nc_u32_e32 v144, 0, v55
	v_add_nc_u32_e32 v146, 0, v57
	v_add_nc_u32_e32 v148, 0, v64
	v_add_nc_u32_e32 v150, 0, v67
	v_add_nc_u32_e32 v151, 0, v61
	v_add_nc_u32_e32 v152, 0, v69
	v_add_nc_u32_e32 v154, 0, v72
	v_add_nc_u32_e32 v155, 0, v73
	v_add_nc_u32_e32 v156, 0, v74
	v_xor_b32_e32 v46, 0x2040, v126
	v_xor_b32_e32 v47, 16, v127
	v_xor_b32_e32 v48, 32, v127
	v_xor_b32_e32 v49, 48, v127
	v_xor_b32_e32 v50, 64, v127
	v_xor_b32_e32 v51, 0x50, v127
	v_xor_b32_e32 v52, 0x60, v127
	v_xor_b32_e32 v53, 0x70, v127
	v_xor_b32_e32 v54, 0x810, v128
	v_xor_b32_e32 v55, 4, v129
	v_xor_b32_e32 v56, 8, v129
	v_xor_b32_e32 v57, 12, v129
	v_xor_b32_e32 v59, 16, v129
	v_xor_b32_e32 v61, 20, v129
	v_xor_b32_e32 v62, 24, v129
	v_xor_b32_e32 v63, 28, v129
	v_xor_b32_e32 v64, 32, v130
	v_xor_b32_e32 v65, 64, v130
	v_xor_b32_e32 v66, 0x60, v130
	v_xor_b32_e32 v67, 0x90, v131
	v_xor_b32_e32 v68, 0x120, v131
	v_xor_b32_e32 v69, 0x1b0, v131
	v_xor_b32_e32 v72, 0x2d0, v131
	v_xor_b32_e32 v73, 0x360, v131
	v_xor_b32_e32 v74, 0x3f0, v131
	v_dual_mov_b32 v118, 0xff800000 :: v_dual_mov_b32 v119, 0xff800000
	v_add_nc_u32_e32 v158, 0, v76
	v_add_nc_u32_e32 v159, 0, v77
	v_add_nc_u32_e32 v160, 0, v78
	v_add_nc_u32_e32 v161, 0, v79
	v_add_nc_u32_e32 v162, 0, v80
	v_add_nc_u32_e32 v163, 0, v81
	v_add_nc_u32_e32 v168, 0, v46
	v_add_nc_u32_e32 v169, 0, v47
	v_add_nc_u32_e32 v170, 0, v48
	v_add_nc_u32_e32 v171, 0, v49
	v_add_nc_u32_e32 v172, 0, v50
	v_add_nc_u32_e32 v173, 0, v51
	v_add_nc_u32_e32 v174, 0, v52
	v_add_nc_u32_e32 v175, 0, v53
	v_add_nc_u32_e32 v176, 0, v54
	v_add_nc_u32_e32 v177, 0, v55
	v_add_nc_u32_e32 v179, 0, v56
	v_add_nc_u32_e32 v180, 0, v57
	v_add_nc_u32_e32 v181, 0, v59
	v_add_nc_u32_e32 v182, 0, v61
	v_add_nc_u32_e32 v183, 0, v62
	v_add_nc_u32_e32 v184, 0, v63
	v_add_nc_u32_e32 v185, 0, v64
	v_add_nc_u32_e32 v186, 0, v65
	v_add_nc_u32_e32 v187, 0, v66
	v_add_nc_u32_e32 v189, 0, v67
	v_add_nc_u32_e32 v191, 0, v68
	v_add_nc_u32_e32 v192, 0, v69
	v_add_nc_u32_e32 v194, 0, v72
	v_add_nc_u32_e32 v195, 0, v73
	v_add_nc_u32_e32 v196, 0, v74
	v_or_b32_e32 v112, 42, v165
	v_or_b32_e32 v122, 44, v165
	v_or_b32_e32 v116, 46, v165
	v_or_b32_e32 v121, 48, v165
	v_or_b32_e32 v113, 50, v165
	v_or_b32_e32 v205, 58, v165
	v_or_b32_e32 v206, 60, v165
	v_or_b32_e32 v207, 62, v165
	v_add_nc_u32_e32 v211, v71, v75
	v_add_nc_u32_e32 v215, 4, v167
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
	ds_bpermute_b32 v38, v60, v33
	ds_bpermute_b32 v33, v58, v33
	ds_bpermute_b32 v40, v60, v34
	ds_bpermute_b32 v34, v58, v34
	ds_bpermute_b32 v44, v60, v35
	ds_bpermute_b32 v35, v58, v35
	ds_bpermute_b32 v45, v60, v36
	ds_bpermute_b32 v36, v58, v36
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v104, v33, v38, s0
	v_cndmask_b32_e64 v106, v38, v33, s0
	v_and_b32_e32 v33, 0x540054, v39
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v37, 16, v41
	v_lshl_or_b32 v41, v43, 8, v43
	v_add_nc_u32_e32 v153, 0, v70
	v_xor_b32_e32 v70, 0x240, v131
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v105, v34, v40, s0
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v214, s10, v37
	v_and_b32_e32 v37, 0x760076, v41
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v107, v40, v34, s0
	v_lshl_or_b32 v33, v33, 4, v33
	v_add_nc_u32_e32 v193, 0, v70
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v108, v35, v44, s0
	v_lshl_or_b32 v34, v37, 4, v37
	v_cndmask_b32_e64 v110, v44, v35, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v109, v36, v45, s0
	v_cndmask_b32_e64 v111, v45, v36, s0
	v_and_b32_e32 v114, 0x5040504, v33
	v_and_b32_e32 v115, 0x7060706, v34
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_or_b32 s58, s104, s86
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v37, 0, v123
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[33:34], null, s58, s84, v[97:98]
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s4, s87, s104
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s58, s58, s85
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[33:36], v33, s[92:95], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v37, v[33:34]
	ds_store_b64 v132, v[35:36]
	v_add_nc_u32_e32 v33, 0, v124
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[65:68], v134 offset1:1
	ds_load_2addr_stride64_b64 v[197:200], v134 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[49:52], v33 offset1:1
	ds_load_2addr_stride64_b64 v[53:56], v33 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[57:60], v133 offset1:1
	ds_load_2addr_stride64_b64 v[61:64], v133 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v33, s76 :: v_dual_mov_b32 v38, s81
	v_dual_mov_b32 v34, s77 :: v_dual_mov_b32 v35, s78
	v_mov_b32_e32 v40, s83
	v_dual_mov_b32 v36, s79 :: v_dual_mov_b32 v37, s80
	v_mov_b32_e32 v39, s82
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[69:72], v135 offset1:1
	ds_load_2addr_stride64_b64 v[201:204], v135 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[49:50], v[104:105], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[57:58], v[108:109], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[65:66], v[106:107], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[69:70], v[110:111], v[41:48] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v96, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v95, v42
	v_cvt_f32_i32_e32 v94, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v93, v44
	v_cvt_f32_i32_e32 v92, v45
	v_cvt_f32_i32_e32 v91, v46
	v_cvt_f32_i32_e32 v89, v47
	v_cvt_f32_i32_e32 v87, v48
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[51:52], v[104:105], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[59:60], v[108:109], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[67:68], v[106:107], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[71:72], v[110:111], v[41:48] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v90, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v88, v42
	v_cvt_f32_i32_e32 v86, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v85, v44
	v_cvt_f32_i32_e32 v84, v45
	v_cvt_f32_i32_e32 v83, v46
	v_cvt_f32_i32_e32 v81, v47
	v_cvt_f32_i32_e32 v79, v48
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[53:54], v[104:105], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[61:62], v[108:109], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[197:198], v[106:107], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[201:202], v[110:111], v[41:48] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v82, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v80, v42
	v_cvt_f32_i32_e32 v78, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v77, v44
	v_cvt_f32_i32_e32 v76, v45
	v_cvt_f32_i32_e32 v75, v46
	v_cvt_f32_i32_e32 v73, v47
	v_cvt_f32_i32_e32 v71, v48
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[55:56], v[104:105], v[33:40] neg_lo:[1,1,0]
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v33, s4, v167, 2
	v_add_lshl_u32 v34, s4, v215, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[63:64], v[108:109], v[41:48] neg_lo:[1,1,0]
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v33, 0x80000000, v33, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v34, 0x80000000, v34, s1
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[41:48], v[199:200], v[106:107], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[203:204], v[110:111], v[41:48] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v74, v41
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v72, v42
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x1
	buffer_load_b128 v[35:38], v33, s[100:103], 0 offen
	buffer_load_b128 v[39:42], v34, s[100:103], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v67, v46
	v_cvt_f32_i32_e32 v65, v48
	v_cvt_f32_i32_e32 v68, v45
	v_cvt_f32_i32_e32 v66, v47
	v_cvt_f32_i32_e32 v70, v43
	v_cvt_f32_i32_e32 v69, v44
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v46, 0xff800000, v37, s1
	v_add_lshl_u32 v37, s4, v208, 2
	v_cndmask_b32_e64 v34, 0xff800000, v38, s1
	v_add_lshl_u32 v38, s4, v210, 2
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v48, 0xff800000, v41, s1
	v_cndmask_b32_e64 v45, 0xff800000, v35, s1
	v_cndmask_b32_e64 v37, 0x80000000, v37, s1
	v_cndmask_b32_e64 v35, 0xff800000, v40, s1
	v_cndmask_b32_e64 v41, 0x80000000, v38, s1
	v_cndmask_b32_e64 v47, 0xff800000, v39, s1
	s_clause 0x1
	buffer_load_b128 v[37:40], v37, s[100:103], 0 offen
	buffer_load_b128 v[49:52], v41, s[100:103], 0 offen
	v_cndmask_b32_e64 v33, 0xff800000, v36, s1
	v_cndmask_b32_e64 v36, 0xff800000, v42, s1
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s10, 0xff800000, v45
	v_cmp_neq_f32_e64 s11, 0xff800000, v46
	v_cmp_neq_f32_e64 s24, 0xff800000, v47
	v_cmp_neq_f32_e64 s23, 0xff800000, v33
	v_cmp_neq_f32_e64 s30, 0xff800000, v48
	v_cmp_neq_f32_e64 s29, 0xff800000, v34
	v_cmp_neq_f32_e64 s33, 0xff800000, v35
	v_cmp_neq_f32_e64 s35, 0xff800000, v36
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s25, s1, s24
	s_and_b32 s24, s1, s30
	s_and_b32 s30, s1, s11
	s_and_b32 s31, s1, s10
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v57, 0xff800000, v37, s1
	v_add_lshl_u32 v37, s4, v209, 2
	v_cndmask_b32_e64 v41, 0xff800000, v38, s1
	v_add_lshl_u32 v38, s4, v211, 2
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v44, 0xff800000, v52, s1
	v_cndmask_b32_e64 v43, 0xff800000, v50, s1
	v_cndmask_b32_e64 v37, 0x80000000, v37, s1
	v_cndmask_b32_e64 v60, 0xff800000, v51, s1
	v_cndmask_b32_e64 v38, 0x80000000, v38, s1
	v_cndmask_b32_e64 v59, 0xff800000, v49, s1
	s_clause 0x1
	buffer_load_b128 v[49:52], v37, s[100:103], 0 offen
	buffer_load_b128 v[61:64], v38, s[100:103], 0 offen
	v_cndmask_b32_e64 v42, 0xff800000, v40, s1
	v_cndmask_b32_e64 v58, 0xff800000, v39, s1
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s8, 0xff800000, v57
	v_cmp_neq_f32_e64 s15, 0xff800000, v59
	v_cmp_neq_f32_e64 s17, 0xff800000, v60
	v_cmp_neq_f32_e64 s20, 0xff800000, v41
	v_cmp_neq_f32_e64 s9, 0xff800000, v58
	v_cmp_neq_f32_e64 s21, 0xff800000, v42
	v_cmp_neq_f32_e64 s22, 0xff800000, v43
	v_cmp_neq_f32_e64 s28, 0xff800000, v44
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s10, s1, s17
	s_and_b32 s11, s1, s15
	s_and_b32 s15, s1, s9
	s_and_b32 s17, s1, s8
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v53, 0xff800000, v49, s1
	v_add_lshl_u32 v49, s4, v212, 2
	v_cndmask_b32_e64 v37, 0xff800000, v50, s1
	v_add_lshl_u32 v50, s4, v213, 2
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v40, 0xff800000, v64, s1
	v_cndmask_b32_e64 v39, 0xff800000, v62, s1
	v_cndmask_b32_e64 v49, 0x80000000, v49, s1
	v_cndmask_b32_e64 v56, 0xff800000, v63, s1
	v_cndmask_b32_e64 v50, 0x80000000, v50, s1
	v_cndmask_b32_e64 v55, 0xff800000, v61, s1
	s_clause 0x1
	buffer_load_b128 v[61:64], v49, s[100:103], 0 offen
	buffer_load_b128 v[197:200], v50, s[100:103], 0 offen
	v_cndmask_b32_e64 v38, 0xff800000, v52, s1
	v_cndmask_b32_e64 v54, 0xff800000, v51, s1
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v53
	v_cmp_neq_f32_e64 s13, 0xff800000, v55
	v_cmp_neq_f32_e64 s16, 0xff800000, v37
	v_cmp_neq_f32_e64 s26, 0xff800000, v38
	v_cmp_neq_f32_e64 s12, 0xff800000, v54
	v_cmp_neq_f32_e64 s27, 0xff800000, v39
	v_cmp_neq_f32_e64 s38, 0xff800000, v40
	v_cmp_neq_f32_e64 s36, 0xff800000, v56
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s9, s1, s13
	s_and_b32 s12, s1, s12
	s_and_b32 s13, s1, s5
	s_and_b32 s26, s1, s26
	s_and_b32 s8, s1, s36
	s_and_b32 s36, s1, s23
	s_and_b32 s23, s1, s22
	s_and_b32 s22, s1, s28
	s_and_b32 s28, s1, s21
	s_and_b32 s21, s1, s27
	s_and_b32 s27, s1, s16
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v49, 0xff800000, v62, s1
	v_cndmask_b32_e64 v62, 0xff800000, v63, s1
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v63, 0xff800000, v197, s1
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v197, s104, v165, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v52, 0xff800000, v200, s1
	v_cndmask_b32_e64 v50, 0xff800000, v64, s1
	v_cndmask_b32_e64 v61, 0xff800000, v61, s1
	v_cndmask_b32_e64 v51, 0xff800000, v198, s1
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v217, v197, s[96:99], 0 offen
	v_or_b32_e32 v197, 2, v165
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v64, 0xff800000, v199, s1
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s19, 0xff800000, v52
	v_cmp_neq_f32_e64 s18, 0xff800000, v49
	v_cmp_neq_f32_e64 s14, 0xff800000, v51
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v197, s104, v197, 1
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s6, 0xff800000, v61
	v_cmp_neq_f32_e64 s4, 0xff800000, v63
	v_cmp_neq_f32_e64 s7, 0xff800000, v64
	v_cmp_neq_f32_e64 s34, 0xff800000, v62
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v218, v197, s[96:99], 0 offen
	v_or_b32_e32 v197, 4, v165
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s5, s1, s4
	s_and_b32 s4, s1, s7
	s_and_b32 s7, s1, s6
	s_and_b32 s6, s1, s34
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v197, s104, v197, 1
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s34, s1, s33
	s_and_b32 s33, s1, s35
	s_and_b32 s35, s1, s29
	s_and_b32 s29, s1, s20
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v219, v197, s[96:99], 0 offen
	v_or_b32_e32 v197, 6, v165
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s20, s1, s38
	s_and_b32 s16, s1, s14
	s_and_b32 s14, s1, s19
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s37, 0xff800000, v50
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_add_lshl_u32 v197, s104, v197, 1
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s19, s1, s18
	s_and_b32 s18, s1, s37
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v220, v197, s[96:99], 0 offen
	v_or_b32_e32 v197, 8, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v197, s104, v197, 1
	buffer_load_u16 v221, v197, s[96:99], 0 offen
	v_or_b32_e32 v197, 10, v165
	v_add_lshl_u32 v197, s104, v197, 1
	buffer_load_u16 v222, v197, s[96:99], 0 offen
	v_or_b32_e32 v197, 12, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v197, s104, v197, 1
	buffer_load_u16 v223, v197, s[96:99], 0 offen
	v_or_b32_e32 v197, 14, v165
	v_add_lshl_u32 v197, s104, v197, 1
	buffer_load_u16 v224, v197, s[96:99], 0 offen
	v_or_b32_e32 v197, 16, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v197, s104, v197, 1
	buffer_load_u16 v225, v197, s[96:99], 0 offen
	v_or_b32_e32 v197, 18, v165
	v_add_lshl_u32 v197, s104, v197, 1
	buffer_load_u16 v226, v197, s[96:99], 0 offen
	v_or_b32_e32 v197, 20, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v197, s104, v197, 1
	buffer_load_u16 v227, v197, s[96:99], 0 offen
	v_or_b32_e32 v197, 22, v165
	v_add_lshl_u32 v197, s104, v197, 1
	buffer_load_u16 v228, v197, s[96:99], 0 offen
	v_or_b32_e32 v197, 24, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v197, s104, v197, 1
	buffer_load_u16 v229, v197, s[96:99], 0 offen
	v_or_b32_e32 v197, 26, v165
	v_add_lshl_u32 v197, s104, v197, 1
	buffer_load_u16 v230, v197, s[96:99], 0 offen
	v_or_b32_e32 v197, 28, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v197, s104, v197, 1
	buffer_load_u16 v231, v197, s[96:99], 0 offen
	v_or_b32_e32 v197, 30, v165
	v_add_lshl_u32 v197, s104, v197, 1
	buffer_load_u16 v232, v197, s[96:99], 0 offen
	v_or_b32_e32 v197, 32, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v197, s104, v197, 1
	buffer_load_u16 v233, v197, s[96:99], 0 offen
	v_or_b32_e32 v197, 34, v165
	v_add_lshl_u32 v197, s104, v197, 1
	buffer_load_u16 v234, v197, s[96:99], 0 offen
	v_or_b32_e32 v197, 36, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v197, s104, v197, 1
	buffer_load_u16 v235, v197, s[96:99], 0 offen
	v_or_b32_e32 v197, 38, v165
	v_add_lshl_u32 v197, s104, v197, 1
	buffer_load_u16 v236, v197, s[96:99], 0 offen
	v_or_b32_e32 v197, 40, v165
	s_delay_alu instid0(VALU_DEP_1)
	v_add_lshl_u32 v197, s104, v197, 1
	buffer_load_u16 v237, v197, s[96:99], 0 offen
	v_add_lshl_u32 v197, s104, v112, 1
	buffer_load_u16 v248, v197, s[96:99], 0 offen
	v_add_lshl_u32 v197, s104, v122, 1
	buffer_load_u16 v247, v197, s[96:99], 0 offen
	v_add_lshl_u32 v197, s104, v116, 1
	buffer_load_u16 v246, v197, s[96:99], 0 offen
	v_add_lshl_u32 v197, s104, v121, 1
	buffer_load_u16 v245, v197, s[96:99], 0 offen
	v_add_lshl_u32 v197, s104, v113, 1
	buffer_load_u16 v244, v197, s[96:99], 0 offen
	v_or_b32_e32 v197, 52, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v197, s104, v197, 1
	buffer_load_u16 v243, v197, s[96:99], 0 offen
	v_or_b32_e32 v197, 54, v165
	v_add_lshl_u32 v197, s104, v197, 1
	buffer_load_u16 v242, v197, s[96:99], 0 offen
	v_or_b32_e32 v197, 56, v165
	s_delay_alu instid0(VALU_DEP_1)
	v_add_lshl_u32 v197, s104, v197, 1
	buffer_load_u16 v241, v197, s[96:99], 0 offen
	v_add_lshl_u32 v197, s104, v205, 1
	buffer_load_u16 v240, v197, s[96:99], 0 offen
	v_add_lshl_u32 v197, s104, v206, 1
	buffer_load_u16 v239, v197, s[96:99], 0 offen
	v_add_lshl_u32 v197, s104, v207, 1
	buffer_load_u16 v238, v197, s[96:99], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v197, 0, v126
	ds_store_b128 v168, v[33:36]
	ds_store_b128 v168, v[41:44] offset:512
	v_add_nc_u32_e32 v33, 0, v127
	ds_store_b128 v197, v[45:48]
	ds_store_b128 v197, v[57:60] offset:512
	ds_store_b128 v197, v[53:56] offset:1024
	ds_store_b128 v197, v[61:64] offset:1536
	ds_store_b128 v168, v[37:40] offset:1024
	ds_store_b128 v168, v[49:52] offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v33
	ds_load_b128 v[37:40], v169
	ds_load_b128 v[41:44], v170
	ds_load_b128 v[45:48], v171
	ds_load_b128 v[52:55], v172
	ds_load_b128 v[57:60], v173
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v64, 16, v217
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v33, 0x3fb8aa3b, v33 :: v_dual_mul_f32 v50, 0x3fb8aa3b, v42
	v_dual_mul_f32 v37, 0x3fb8aa3b, v37 :: v_dual_mul_f32 v56, 0x3fb8aa3b, v43
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v39, 0x3fb8aa3b, v39 :: v_dual_mul_f32 v250, 0x3fb8aa3b, v52
	v_dual_mul_f32 v51, 0x3fb8aa3b, v41 :: v_dual_mul_f32 v252, 0x3fb8aa3b, v54
	v_dual_mul_f32 v49, 0x3fb8aa3b, v44 :: v_dual_mul_f32 v52, 0x3fb8aa3b, v55
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v43, 0x3fb8aa3b, v45 :: v_dual_mul_f32 v54, 0x3fb8aa3b, v58
	v_dual_mul_f32 v47, 0x3fb8aa3b, v47 :: v_dual_mul_f32 v44, 0x3fb8aa3b, v60
	v_mul_f32_e32 v249, 0x3fb8aa3b, v53
	v_mul_f32_e32 v53, 0x3fb8aa3b, v57
	v_mul_f32_e32 v55, 0x3fb8aa3b, v59
	ds_load_b128 v[57:60], v174
	ds_load_b128 v[197:200], v175
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v34, 0x3fb8aa3b, v34 :: v_dual_mul_f32 v35, 0x3fb8aa3b, v35
	v_mul_f32_e32 v62, 0x3fb8aa3b, v46
	v_mul_f32_e32 v36, 0x3fb8aa3b, v36
	v_mul_f32_e32 v38, 0x3fb8aa3b, v38
	v_mul_f32_e32 v40, 0x3fb8aa3b, v40
	v_dual_mul_f32 v41, 0x3fb8aa3b, v48 :: v_dual_mul_f32 v42, 0x3fb8aa3b, v58
	v_dual_mul_f32 v253, 0x3fb8aa3b, v57 :: v_dual_mul_f32 v58, 0x3fb8aa3b, v199
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v57, 0, 1, s24
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v254, 0x3fb8aa3b, v59
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v59, 0, 1, s25
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v251, 0x3fb8aa3b, v60 :: v_dual_mul_f32 v46, 0x3fb8aa3b, v198
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v57.l, 8, v57.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v48, 0x3fb8aa3b, v200
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v60.h, v59.l, v57.l
	v_cndmask_b32_e64 v57, 0, 1, s30
	v_cndmask_b32_e64 v59, 0, 1, s31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v57.l, 8, v57.l
	v_or_b16 v60.l, v59.l, v57.l
	v_cndmask_b32_e64 v57, 0, 1, s10
	v_cndmask_b32_e64 v59, 0, 1, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v57.l, 8, v57.l
	v_or_b16 v61.h, v59.l, v57.l
	v_cndmask_b32_e64 v57, 0, 1, s15
	v_cndmask_b32_e64 v59, 0, 1, s17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v57.l, 8, v57.l
	v_or_b16 v61.l, v59.l, v57.l
	v_cndmask_b32_e64 v57, 0, 1, s8
	v_cndmask_b32_e64 v59, 0, 1, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v57.l, 8, v57.l
	v_or_b16 v63.h, v59.l, v57.l
	v_cndmask_b32_e64 v57, 0, 1, s12
	v_cndmask_b32_e64 v59, 0, 1, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v57.l, 8, v57.l
	v_or_b16 v63.l, v59.l, v57.l
	v_cndmask_b32_e64 v57, 0, 1, s4
	v_cndmask_b32_e64 v59, 0, 1, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v57.l, 8, v57.l
	v_or_b16 v57.h, v59.l, v57.l
	v_cndmask_b32_e64 v59, 0, 1, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v57.l, v59.l
	v_cndmask_b32_e64 v59, 0, 1, s7
	v_lshlrev_b16 v57.l, 8, v57.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v57.l, v59.l, v57.l
	v_add_nc_u32_e32 v59, 0, v128
	ds_store_2addr_b32 v59, v60, v61 offset1:32
	ds_store_2addr_b32 v59, v63, v57 offset0:64 offset1:96
	v_cndmask_b32_e64 v57, 0, 1, s33
	v_cndmask_b32_e64 v59, 0, 1, s34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v57.l, 8, v57.l
	v_or_b16 v60.h, v59.l, v57.l
	v_cndmask_b32_e64 v57, 0, 1, s35
	v_cndmask_b32_e64 v59, 0, 1, s36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v57.l, 8, v57.l
	v_or_b16 v60.l, v59.l, v57.l
	v_cndmask_b32_e64 v57, 0, 1, s22
	v_cndmask_b32_e64 v59, 0, 1, s23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v57.l, 8, v57.l
	v_or_b16 v61.h, v59.l, v57.l
	v_cndmask_b32_e64 v57, 0, 1, s28
	v_cndmask_b32_e64 v59, 0, 1, s29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v57.l, 8, v57.l
	v_or_b16 v61.l, v59.l, v57.l
	v_cndmask_b32_e64 v57, 0, 1, s20
	v_cndmask_b32_e64 v59, 0, 1, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v57.l, 8, v57.l
	v_or_b16 v63.h, v59.l, v57.l
	v_cndmask_b32_e64 v57, 0, 1, s26
	v_cndmask_b32_e64 v59, 0, 1, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v57.l, 8, v57.l
	v_or_b16 v63.l, v59.l, v57.l
	v_cndmask_b32_e64 v57, 0, 1, s14
	v_cndmask_b32_e64 v59, 0, 1, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v57.l, 8, v57.l
	v_or_b16 v57.h, v59.l, v57.l
	v_cndmask_b32_e64 v59, 0, 1, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v57.l, v59.l
	v_cndmask_b32_e64 v59, 0, 1, s19
	v_lshlrev_b16 v57.l, 8, v57.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v57.l, v59.l, v57.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v59, v214, v96
	.loc	1 881 25                        ; attention.py:881:25
	ds_store_2addr_b32 v176, v60, v61 offset1:32
	ds_store_2addr_b32 v176, v63, v57 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v33, v59, v64
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(30)
	v_dual_mul_f32 v59, v214, v95 :: v_dual_lshlrev_b32 v64, 16, v218
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v45, 0x3fb8aa3b, v197
	.loc	1 881 25                        ; attention.py:881:25
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v34, v59, v64 :: v_dual_add_nc_u32 v57, 0, v129
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(29)
	v_dual_mul_f32 v59, v214, v94 :: v_dual_lshlrev_b32 v64, 16, v219
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v35, v59, v64
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(28)
	v_dual_mul_f32 v59, v214, v93 :: v_dual_lshlrev_b32 v64, 16, v220
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v36, v59, v64
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(27)
	v_dual_mul_f32 v59, v214, v92 :: v_dual_lshlrev_b32 v64, 16, v221
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v37, v59, v64
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(26)
	v_dual_mul_f32 v59, v214, v91 :: v_dual_lshlrev_b32 v64, 16, v222
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v38, v59, v64 :: v_dual_mul_f32 v59, v214, v89
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(25)
	v_lshlrev_b32_e32 v64, 16, v223
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v39, v59, v64
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(24)
	v_dual_mul_f32 v59, v214, v87 :: v_dual_lshlrev_b32 v64, 16, v224
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v40, v59, v64 :: v_dual_mul_f32 v59, v214, v90
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(23)
	v_lshlrev_b32_e32 v64, 16, v225
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v51, v59, v64
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(22)
	v_dual_mul_f32 v59, v214, v88 :: v_dual_lshlrev_b32 v64, 16, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v50, v59, v64 :: v_dual_mul_f32 v59, v214, v86
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(21)
	v_lshlrev_b32_e32 v64, 16, v227
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v56, v59, v64 :: v_dual_mul_f32 v59, v214, v85
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(20)
	v_lshlrev_b32_e32 v64, 16, v228
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v49, v59, v64
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(19)
	v_dual_mul_f32 v59, v214, v84 :: v_dual_lshlrev_b32 v64, 16, v229
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v43, v59, v64
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(18)
	v_dual_mul_f32 v59, v214, v83 :: v_dual_lshlrev_b32 v64, 16, v230
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v62, v59, v64 :: v_dual_mul_f32 v59, v214, v81
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(17)
	v_lshlrev_b32_e32 v64, 16, v231
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v47, v59, v64
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(16)
	v_dual_mul_f32 v59, v214, v79 :: v_dual_lshlrev_b32 v64, 16, v232
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v41, v59, v64
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v59, v214, v82 :: v_dual_lshlrev_b32 v64, 16, v233
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v250, v59, v64
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(14)
	v_dual_mul_f32 v59, v214, v80 :: v_dual_lshlrev_b32 v64, 16, v234
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v249, v59, v64
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(13)
	v_dual_mul_f32 v59, v214, v78 :: v_dual_lshlrev_b32 v64, 16, v235
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v252, v59, v64 :: v_dual_mul_f32 v59, v214, v77
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(12)
	v_lshlrev_b32_e32 v64, 16, v236
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v52, v59, v64
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(11)
	v_dual_mul_f32 v59, v214, v76 :: v_dual_lshlrev_b32 v64, 16, v237
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v53, v59, v64
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(10)
	v_dual_mul_f32 v59, v214, v75 :: v_dual_lshlrev_b32 v64, 16, v248
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v54, v59, v64 :: v_dual_mul_f32 v59, v214, v73
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v64, 16, v247
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v55, v59, v64
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v59, v214, v71 :: v_dual_lshlrev_b32 v64, 16, v246
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v44, v59, v64 :: v_dual_mul_f32 v59, v214, v74
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v64, 16, v245
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v253, v59, v64
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v59, v214, v72
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v64, 16, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v42, v59, v64 :: v_dual_mul_f32 v59, v214, v70
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v64, 16, v243
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v254, v59, v64 :: v_dual_mul_f32 v59, v214, v69
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v64, 16, v242
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v251, v59, v64
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v59, v214, v68 :: v_dual_lshlrev_b32 v64, 16, v241
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v45, v59, v64
	.loc	1 847 25                        ; attention.py:847:25
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v59, v214, v67 :: v_dual_lshlrev_b32 v64, 16, v240
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v46, v59, v64 :: v_dual_mul_f32 v59, v214, v66
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v64, 16, v239
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v58, v59, v64 :: v_dual_mul_f32 v59, v214, v65
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v64, 16, v238
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_b32 v67, v57
	ds_load_b32 v68, v177
	ds_load_b32 v69, v179
	ds_load_b32 v70, v180
	ds_load_b32 v71, v181
	ds_load_b32 v72, v182
	ds_load_b32 v66, v183
	ds_load_b32 v65, v184
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v48, v59, v64 :: v_dual_and_b32 v57, 0x10000, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s63, 0, v57
	v_and_b32_e32 v57, 0x10000, v68
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v35, 0xff800000, v35, s63
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s61, 0, v57
	v_and_b32_e32 v57, 0x10000, v69
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v39, 0xff800000, v39, s61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s52, 0, v57
	v_and_b32_e32 v57, 0x10000, v70
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v59, 0xff800000, v56, s52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s50, 0, v57
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v63, 0xff800000, v47, s50
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v47, 0x10000, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_ne_u32_e64 s39, 0, v47
	v_and_b32_e32 v47, 1, v65
	v_cmp_eq_u32_e64 s40, 1, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v47, 0xff800000, v58, s39
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v58, 0x1000000, v65
	v_lshrrev_b16 v65.h, 8, v72.l
	v_lshrrev_b16 v65.l, 8, v65.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v45, 0xff800000, v45, s40
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s38, 0, v58
	v_lshrrev_b16 v58.l, 8, v67.l
	v_and_b16 v65.h, 1, v65.h
	v_and_b16 v65.l, 1, v65.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v48, 0xff800000, v48, s38
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v58.l, 1, v58.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_eq_u16_e64 s59, 1, v65.h
	v_lshrrev_b16 v65.h, 8, v66.l
	v_cmp_eq_u16_e64 s60, 1, v65.l
	v_cmp_eq_u16_e64 s68, 1, v58.l
	v_lshrrev_b16 v58.l, 8, v68.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_and_b16 v65.h, 1, v65.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v54, 0xff800000, v54, s59
	v_cndmask_b32_e64 v46, 0xff800000, v46, s60
	v_cndmask_b32_e64 v34, 0xff800000, v34, s68
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v58.l, 1, v58.l
	v_cmp_eq_u16_e64 s67, 1, v58.l
	v_lshrrev_b16 v58.l, 8, v69.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v38, 0xff800000, v38, s67
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v57, 0x10000, v71
	v_and_b16 v58.l, 1, v58.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_ne_u32_e64 s44, 0, v57
	v_and_b32_e32 v57, 0x10000, v72
	v_cmp_eq_u16_e64 s57, 1, v58.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_ne_u32_e64 s43, 0, v57
	v_and_b32_e32 v57, 0x10000, v66
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v58, 0xff800000, v50, s57
	.loc	1 881 25                        ; attention.py:881:25
	v_lshrrev_b16 v50.l, 8, v70.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v55, 0xff800000, v55, s43
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s37, 0, v57
	v_and_b32_e32 v57, 1, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b16 v50.l, 1, v50.l
	v_cmp_eq_u32_e64 s66, 1, v57
	v_and_b32_e32 v57, 0x1000000, v67
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u16_e64 s56, 1, v50.l
	v_lshrrev_b16 v50.l, 8, v71.l
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v67, s58, v102, 1
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v33, 0xff800000, v33, s66
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s65, 0, v57
	v_and_b32_e32 v57, 1, v68
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v62, 0xff800000, v62, s56
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v50.l, 1, v50.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v36, 0xff800000, v36, s65
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s64, 1, v57
	v_and_b32_e32 v57, 0x1000000, v68
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v68, s85, v102
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s49, 1, v50.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v37, 0xff800000, v37, s64
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s62, 0, v57
	v_and_b32_e32 v57, 1, v69
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v68, s58, v68, 1
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v50, 0xff800000, v249, s49
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v197, 0, v131
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v40, 0xff800000, v40, s62
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s55, 1, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v57, 0xff800000, v51, s55
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v51, 0x1000000, v69
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v69, s85, 1, v102
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s54, 0, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v69, s58, v69, 1
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v51, 0xff800000, v252, s44
	v_cndmask_b32_e64 v60, 0xff800000, v49, s54
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v49, 1, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cmp_eq_u32_e64 s53, 1, v49
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v61, 0xff800000, v43, s53
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v43, 0x1000000, v70
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v70, s58, v103, 1
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s58, 1, v65.h
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v65, 0, v130
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s51, 0, v43
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v43, 0xff800000, v254, s37
	v_cndmask_b32_e64 v42, 0xff800000, v42, s58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v64, 0xff800000, v41, s51
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v41, 1, v71
	v_cmp_eq_u32_e64 s48, 1, v41
	v_and_b32_e32 v41, 0x1000000, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v49, 0xff800000, v250, s48
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s47, 0, v41
	v_and_b32_e32 v41, 1, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v52, 0xff800000, v52, s47
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s46, 1, v41
	v_and_b32_e32 v41, 0x1000000, v72
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b128 v65, v[33:36]
	ds_store_b128 v65, v[49:52] offset:2048
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v65, 0x80000000, v67, s3
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v53, 0xff800000, v53, s46
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s45, 0, v41
	v_and_b32_e32 v41, 1, v66
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v67, 0x80000000, v69, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v56, 0xff800000, v44, s45
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v44, 0x1000000, v66
	v_cmp_eq_u32_e64 s42, 1, v41
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v66, 0x80000000, v68, s3
	v_cndmask_b32_e64 v68, 0x80000000, v70, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s41, 0, v44
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v41, 0xff800000, v253, s42
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e64 v44, 0xff800000, v251, s41
	ds_store_b128 v185, v[37:40]
	ds_store_b128 v185, v[53:56] offset:2048
	ds_store_b128 v186, v[57:60]
	ds_store_b128 v186, v[41:44] offset:2048
	ds_store_b128 v187, v[61:64]
	ds_store_b128 v187, v[45:48] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[221:224], v65, s[72:75], 0 offen
	buffer_load_b128 v[225:228], v67, s[72:75], 0 offen
	buffer_load_b128 v[198:201], v68, s[72:75], 0 offen
	buffer_load_b128 v[217:220], v66, s[72:75], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_b128 v[93:96], v188
	ds_load_b128 v[85:88], v188 offset:256
	ds_load_b128 v[89:92], v188 offset:1024
	ds_load_b128 v[81:84], v188 offset:1280
	ds_load_b128 v[77:80], v188 offset:512
	ds_load_b128 v[69:72], v188 offset:768
	ds_load_b128 v[73:76], v188 offset:1536
	ds_load_b128 v[65:68], v188 offset:1792
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v202.l, v221.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v203.l, v225.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v203.h, v198.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v202.h, v217.l
	v_mov_b16_e64 v217.l, v221.h
	v_mov_b16_e64 v198.l, v225.h
	ds_store_b64 v197, v[202:203]
	v_mov_b16_e64 v202.h, v218.l
	v_mov_b32_e32 v197, v217
	v_mov_b16_e64 v218.l, v222.h
	v_mov_b16_e64 v203.l, v226.l
	v_mov_b16_e64 v203.h, v199.l
	v_mov_b16_e64 v202.l, v222.l
	ds_store_b64 v189, v[197:198]
	ds_store_b64 v191, v[202:203]
	v_mov_b16_e64 v199.l, v226.h
	v_mov_b32_e32 v198, v218
	v_mov_b16_e64 v203.l, v227.l
	v_mov_b16_e64 v203.h, v200.l
	v_mov_b16_e64 v202.l, v223.l
	v_mov_b16_e64 v202.h, v219.l
	v_mov_b16_e64 v219.l, v223.h
	ds_store_b64 v192, v[198:199]
	ds_store_b64 v193, v[202:203]
	v_mov_b16_e64 v198.h, v201.l
	v_mov_b16_e64 v201.l, v228.h
	v_mov_b16_e64 v200.l, v227.h
	v_mov_b32_e32 v199, v219
	v_mov_b16_e64 v198.l, v228.l
	v_mov_b16_e64 v197.l, v224.l
	v_mov_b16_e64 v197.h, v220.l
	v_mov_b32_e32 v221, v201
	v_mov_b16_e64 v220.l, v224.h
	ds_store_b64 v194, v[199:200]
	ds_store_b64 v195, v[197:198]
	ds_store_b64 v196, v[220:221]
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v197, v58, v59, v60
	v_max3_f32 v198, v61, v62, v63
	v_max3_f32 v199, v64, v49, v50
	v_max3_f32 v200, v41, v42, v43
.Ltmp2:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v218.h, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v197, v197, v198, v199
	v_max3_f32 v198, v51, v52, v53
	v_max3_f32 v199, v54, v55, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v198, v198, v199, v200
	v_max_f32_e32 v199, v33, v34
	v_max3_f32 v200, v36, v37, v38
	v_max3_f32 v199, v199, v35, v200
	v_max3_f32 v200, v39, v40, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v197, v199, v200, v197
	v_dual_max_f32 v199, v44, v45 :: v_dual_max_f32 v200, v47, v48
	v_max3_f32 v199, v199, v46, v200
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v197, v197, v198, v199
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v198, v197, s69, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v217, v216, v197, v198
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v34, v217
	v_sub_f32_e32 v33, v33, v217
	v_sub_f32_e32 v35, v35, v217
	v_sub_f32_e32 v36, v36, v217
	v_sub_f32_e32 v37, v37, v217
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v36, v36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v38, v217
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v39, v217
	v_sub_f32_e32 v40, v40, v217
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s68
	v_cndmask_b32_e64 v33, 0, v33, s66
	v_cndmask_b32_e64 v35, 0, v35, s63
	v_cndmask_b32_e64 v36, 0, v36, s65
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v218.l, v34.h
	v_cmp_o_f32_e64 s68, v34, v34
	v_cmp_o_f32_e64 s66, v33, v33
	v_cmp_o_f32_e64 s63, v35, v35
	v_cmp_o_f32_e64 s65, v36, v36
	v_and_b32_e32 v197, 1, v218
	v_mov_b16_e64 v218.l, v36.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s64
	v_cndmask_b32_e64 v38, 0, v38, s67
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v34, v34, v197, 0x7fff
	v_mov_b16_e64 v197.h, v218.h
	v_mov_b16_e64 v197.l, v33.h
	v_cmp_o_f32_e64 s64, v38, v38
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s61
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v197, 1, v197
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s61, v39, v39
	v_add3_u32 v33, v33, v197, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s62, v40, v40
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v197, v34, s69, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v197, v34, v114
	v_perm_b32 v34, v197, v34, v115
	v_mov_b16_e64 v197.h, v218.h
	v_mov_b16_e64 v197.l, v35.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v197, 1, v197
	v_add3_u32 v35, v35, v197, 0x7fff
	v_and_b32_e32 v197, 1, v218
	v_mov_b16_e64 v218.l, v38.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v36, v36, v197, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s63
	v_cmp_o_f32_e64 s63, v37, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s65
	v_permlanex16_b32 v197, v36, s69, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v197, v36, v114
	v_perm_b32 v36, v197, v36, v115
	v_mov_b16_e64 v197.h, v218.h
	v_mov_b16_e64 v197.l, v37.h
	v_and_b32_e32 v197, 1, v197
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v37, v37, v197, 0x7fff
	v_and_b32_e32 v197, 1, v218
	v_mov_b16_e64 v218.l, v40.h
	v_add3_u32 v38, v38, v197, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s63
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v197, v38, s69, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v197, v38, v114
	v_perm_b32 v38, v197, v38, v115
	v_mov_b16_e64 v197.h, v218.h
	v_mov_b16_e64 v197.l, v39.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v197, 1, v197
	v_add3_u32 v39, v39, v197, 0x7fff
	v_and_b32_e32 v197, 1, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v40, v197, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s61
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s61, 0xff800000, v216
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s62
	v_permlanex16_b32 v197, v40, s69, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v39, v197, v40, v114
	v_perm_b32 v40, v197, v40, v115
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v197, v216, v217
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v216, 0, v125
	ds_load_b128 v[220:223], v216
	ds_load_b128 v[224:227], v136
	ds_load_b128 v[228:231], v137
	ds_load_b128 v[236:239], v216 offset:2048
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v197, v197
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e64 v219, 0, v197, s61
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
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
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[220:227], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[220:223], v143
	ds_load_b128 v[224:227], v144
	ds_load_b128 v[240:243], v145
	ds_load_b128 v[244:247], v142
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v21, v21, v219
	v_mul_f32_e32 v22, v22, v219
	v_mul_f32_e32 v23, v23, v219
	v_mul_f32_e32 v24, v24, v219
	v_mul_f32_e32 v9, v9, v219
	v_mul_f32_e32 v10, v10, v219
	v_mul_f32_e32 v11, v11, v219
	v_mul_f32_e32 v12, v12, v219
	v_mul_f32_e32 v13, v13, v219
	v_mul_f32_e32 v14, v14, v219
	v_mul_f32_e32 v15, v15, v219
	v_mul_f32_e32 v16, v16, v219
	v_mul_f32_e32 v1, v1, v219
	v_mul_f32_e32 v2, v2, v219
	v_mul_f32_e32 v3, v3, v219
	v_mul_f32_e32 v4, v4, v219
	v_mul_f32_e32 v5, v5, v219
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[220:227], v[33:40], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[220:223], v150
	ds_load_b128 v[224:227], v151
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v219
	v_mul_f32_e32 v7, v7, v219
	v_mul_f32_e32 v8, v8, v219
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[220:227], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[219:222], v157
	ds_load_b128 v[223:226], v158
	ds_load_b128 v[248:251], v159
	ds_load_b128 v[201:204], v156
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[219:226], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v57, v217
	v_sub_f32_e32 v34, v58, v217
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v57.h, v218.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v59, v217
	v_sub_f32_e32 v36, v60, v217
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v61, v217
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v36, v36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v62, v217
	v_sub_f32_e32 v39, v63, v217
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v64, v217
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[219:222], v152
	ds_load_b128 v[223:226], v153
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s55
	v_cndmask_b32_e64 v34, 0, v34, s57
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s52
	v_cndmask_b32_e64 v36, 0, v36, s54
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v57.l, v33.h
	v_mov_b16_e64 v218.l, v34.h
	v_cmp_o_f32_e64 s55, v33, v33
	v_cmp_o_f32_e64 s57, v34, v34
	v_cmp_o_f32_e64 s52, v35, v35
	v_and_b32_e32 v57, 1, v57
	v_cmp_o_f32_e64 s54, v36, v36
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s53
	v_cndmask_b32_e64 v38, 0, v38, s56
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v33, v33, v57, 0x7fff
	v_and_b32_e32 v57, 1, v218
	v_mov_b16_e64 v218.l, v36.h
	v_cmp_o_f32_e64 s53, v38, v38
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v34, v34, v57, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s55
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s57
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s50, v39, v39
	v_permlanex16_b32 v57, v34, s69, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s51, v40, v40
	v_perm_b32 v33, v57, v34, v114
	v_perm_b32 v34, v57, v34, v115
	v_mov_b16_e64 v57.h, v218.h
	v_mov_b16_e32 v57.l, v35.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v57, 1, v57
	v_add3_u32 v35, v35, v57, 0x7fff
	v_and_b32_e32 v57, 1, v218
	v_mov_b16_e64 v218.l, v38.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v36, v36, v57, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s52
	v_cmp_o_f32_e64 s52, v37, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s54
	v_permlanex16_b32 v57, v36, s69, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v57, v36, v114
	v_perm_b32 v36, v57, v36, v115
	v_mov_b16_e64 v57.h, v218.h
	v_mov_b16_e32 v57.l, v37.h
	v_and_b32_e32 v57, 1, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v37, v37, v57, 0x7fff
	v_and_b32_e32 v57, 1, v218
	v_mov_b16_e64 v218.l, v40.h
	v_add3_u32 v38, v38, v57, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s52
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v57, v38, s69, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v57, v38, v114
	v_perm_b32 v38, v57, v38, v115
	v_mov_b16_e64 v57.h, v218.h
	v_mov_b16_e32 v57.l, v39.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v57, 1, v57
	v_add3_u32 v39, v39, v57, 0x7fff
	v_and_b32_e32 v57, 1, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v40, v57, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s51
	v_permlanex16_b32 v57, v40, s69, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v39, v57, v40, v114
	v_perm_b32 v40, v57, v40, v115
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[232:235], v138
	ds_load_b128 v[57:60], v139
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[219:226], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[252:255], v160
	ds_load_b128 v[219:222], v161
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[236:243], v[33:40], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[61:64], v140
	ds_load_b128 v[240:243], v141
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[228:235], v[33:40], v[25:32]
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[248:255], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v49, v217
	v_sub_f32_e32 v34, v50, v217
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v49.h, v218.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v51, v217
	v_sub_f32_e32 v36, v52, v217
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v53, v217
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v36, v36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v54, v217
	v_sub_f32_e32 v39, v55, v217
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v56, v217
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s48
	v_cndmask_b32_e64 v34, 0, v34, s49
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s44
	s_delay_alu instid0(TRANS32_DEP_3)
	v_cndmask_b32_e64 v36, 0, v36, s47
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v49.l, v33.h
	v_mov_b16_e64 v218.l, v34.h
	v_cmp_o_f32_e64 s48, v33, v33
	v_cmp_o_f32_e64 s49, v34, v34
	v_cmp_o_f32_e64 s44, v35, v35
	v_and_b32_e32 v49, 1, v49
	v_cmp_o_f32_e64 s47, v36, v36
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s46
	v_cndmask_b32_e64 v38, 0, v38, s59
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v33, v33, v49, 0x7fff
	v_and_b32_e32 v49, 1, v218
	v_mov_b16_e64 v218.l, v36.h
	v_cmp_o_f32_e64 s46, v38, v38
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v34, v34, v49, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s48
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s49
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s43, v39, v39
	v_permlanex16_b32 v49, v34, s69, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v49, v34, v114
	v_perm_b32 v34, v49, v34, v115
	v_mov_b16_e64 v49.h, v218.h
	v_mov_b16_e32 v49.l, v35.h
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v35, v35, v49, 0x7fff
	v_and_b32_e32 v49, 1, v218
	v_mov_b16_e64 v218.l, v38.h
	v_add3_u32 v36, v36, v49, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s44
	v_cmp_o_f32_e64 s44, v37, v37
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v49, v36, s69, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v49, v36, v114
	v_perm_b32 v36, v49, v36, v115
	v_mov_b16_e64 v49.h, v218.h
	v_mov_b16_e32 v49.l, v37.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v49, 1, v49
	v_add3_u32 v37, v37, v49, 0x7fff
	v_and_b32_e32 v49, 1, v218
	v_mov_b16_e64 v218.l, v40.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v38, v38, v49, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s44
	v_cmp_o_f32_e64 s44, v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s46
	v_permlanex16_b32 v49, v38, s69, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v37, v49, v38, v114
	v_perm_b32 v38, v49, v38, v115
	v_mov_b16_e64 v49.h, v218.h
	v_mov_b16_e32 v49.l, v39.h
	v_and_b32_e32 v49, 1, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v39, v49, 0x7fff
	v_and_b32_e32 v49, 1, v218
	v_add3_u32 v40, v40, v49, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s43
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v49, v40, s69, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v49, v40, v114
	v_perm_b32 v40, v49, v40, v115
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[49:52], v146
	ds_load_b128 v[53:56], v147
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[57:64], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[223:226], v162
	ds_load_b128 v[61:64], v163
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[49:56], v[33:40], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[49:52], v216 offset:4096
	ds_load_b128 v[53:56], v154
	ds_load_b128 v[197:200], v155
	ds_load_b128 v[57:60], v216 offset:6144
	v_mov_b32_e32 v216, v217
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[219:226], v[33:40], v[1:8]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[49:56], v[33:40], v[9:16]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v41, v217
	v_sub_f32_e32 v34, v42, v217
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v41.h, v218.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v43, v217
	v_sub_f32_e32 v36, v44, v217
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v45, v217
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v36, v36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v46, v217
	v_sub_f32_e32 v39, v47, v217
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v48, v217
.Ltmp6:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v52, v80, v80
.Ltmp7:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s42
	v_cndmask_b32_e64 v34, 0, v34, s58
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s37
	v_cndmask_b32_e64 v36, 0, v36, s41
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v41.l, v33.h
	v_mov_b16_e64 v218.l, v34.h
	v_cmp_o_f32_e64 s42, v33, v33
	v_cmp_o_f32_e64 s43, v34, v34
	v_cmp_o_f32_e64 s37, v35, v35
	v_and_b32_e32 v41, 1, v41
	v_cmp_o_f32_e64 s41, v36, v36
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s40
	v_cndmask_b32_e64 v38, 0, v38, s60
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v33, v33, v41, 0x7fff
	v_and_b32_e32 v41, 1, v218
	v_mov_b16_e64 v218.l, v36.h
	v_cmp_o_f32_e64 s40, v38, v38
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v40
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v53, v74, v79, v75
.Ltmp9:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v34, v34, v41, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s42
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s39
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s38
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v41, v34, s69, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s38, v40, v40
	v_perm_b32 v33, v41, v34, v114
	v_perm_b32 v34, v41, v34, v115
	v_mov_b16_e64 v41.h, v218.h
	v_mov_b16_e32 v41.l, v35.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v35, v35, v41, 0x7fff
	v_and_b32_e32 v41, 1, v218
	v_mov_b16_e64 v218.l, v38.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v36, v36, v41, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s37
	v_cmp_o_f32_e64 s37, v37, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s41
	v_permlanex16_b32 v41, v36, s69, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v41, v36, v114
	v_perm_b32 v36, v41, v36, v115
	v_mov_b16_e64 v41.h, v218.h
	v_mov_b16_e32 v41.l, v37.h
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v37, v37, v41, 0x7fff
	v_and_b32_e32 v41, 1, v218
	v_mov_b16_e64 v218.l, v40.h
	v_add3_u32 v38, v38, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s37
	v_cmp_o_f32_e64 s37, v39, v39
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v41, v38, s69, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v41, v38, v114
	v_perm_b32 v38, v41, v38, v115
	v_mov_b16_e64 v41.h, v218.h
	v_mov_b16_e32 v41.l, v39.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v39, v39, v41, 0x7fff
	v_and_b32_e32 v41, 1, v218
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v40, v41, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s38
	v_permlanex16_b32 v41, v40, s69, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v39, v41, v40, v114
	v_perm_b32 v40, v41, v40, v115
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[41:44], v148
	ds_load_b128 v[45:48], v149
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[240:247], v[33:40], v[25:32]
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[197:204], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[57:64], v[33:40], v[1:8]
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v60, v68, v68
	v_max_f32_e32 v61, v72, v72
	v_max3_f32 v62, v66, v71, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v60, v61, v60
	v_max3_f32 v61, v69, v65, v70
	v_max3_f32 v60, v61, v62, v60
.Ltmp11:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[41:48], v[33:40], v[17:24]
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v92, v92
	v_max_f32_e32 v34, v96, v96
	v_max3_f32 v35, v90, v95, v91
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v61, v60
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v84, v84
	v_max_f32_e32 v43, v88, v88
	v_max_f32_e32 v33, v34, v33
	v_max3_f32 v34, v93, v89, v94
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v61 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v44, v82, v87, v83
	v_max_f32_e32 v42, v43, v42
	v_max3_f32 v43, v85, v81, v86
	v_max3_f32 v33, v34, v35, v33
	v_max_f32_e32 v61, v61, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v42, v43, v44, v42
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v34, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v60, v60, v61
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v34 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v61, v60 :: v_dual_max_f32 v34, v34, v34
	v_mov_b32_dpp v61, v61 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v34
	v_max_f32_e32 v61, v61, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v34, v33
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v60, v60, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v34 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v61, v60 :: v_dual_max_f32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v61, v61 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v61, v61, v61
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v34, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v60, v60, v61
.Ltmp27:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v61, v120, v120
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp29:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v120, v61, v60
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp31:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v68, v68, v120
	v_sub_f32_e32 v61, v69, v120
	v_sub_f32_e32 v65, v65, v120
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v33, v34
.Ltmp33:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v34, v117, v117
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v62, v70, v120
	v_sub_f32_e32 v66, v66, v120
	v_sub_f32_e32 v63, v71, v120
	v_sub_f32_e32 v67, v67, v120
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v117, v34, v33 :: v_dual_sub_f32 v64, v72, v120
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v93, v117
	v_sub_f32_e32 v38, v89, v117
	v_sub_f32_e32 v35, v94, v117
	v_sub_f32_e32 v39, v90, v117
	v_sub_f32_e32 v36, v95, v117
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v35, v35
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v91, v117
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v41, v92, v117
	v_sub_f32_e32 v37, v96, v117
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s31
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v38, 0, v38, s36
	v_cndmask_b32_e64 v35, 0, v35, s30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
.Ltmp34:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v38
.Ltmp35:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v39
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v38, 0, v38, s35
.Ltmp36:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v38
.Ltmp37:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp39:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v36, v38
.Ltmp41:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v41
	v_exp_f32_e32 v41, v68
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v41, 0, v41, s14
.Ltmp42:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v43, v42
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v35, v36, v37 :: v_dual_mov_b32 v36, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v42, v43
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v43, v42
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v42, v43
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v43, v42
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v42, v43
.Ltmp65:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v43, v118, v118
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v51, v76, v76 :: v_dual_add_f32 v98, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp67:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v118, v43, v42 :: v_dual_max_f32 v51, v52, v51
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v52, v77, v73, v78
.Ltmp69:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v85, v118
	v_sub_f32_e32 v47, v81, v118
	v_sub_f32_e32 v44, v86, v118
	v_sub_f32_e32 v48, v82, v118
	v_sub_f32_e32 v45, v87, v118
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v43
	v_exp_f32_e32 v35, v47
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v49, v83, v118
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v48
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v46, v88, v118
	v_sub_f32_e32 v50, v84, v118
.Ltmp70:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v51, v52, v53, v51
.Ltmp71:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v49
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s17
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v35, 0, v35, s29
.Ltmp72:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v52, v51
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp73:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s28
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v39, v50
.Ltmp74:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp75:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v44
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s23
.Ltmp76:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v52, v52 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v52, v52, v52
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp78:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s22
	v_cndmask_b32_e64 v35, 0, v35, s15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v51, v51, v52
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v37
.Ltmp81:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp82:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v52, v51
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp84:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v52, v52 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp85:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp86:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v52, v52, v52 :: v_dual_add_f32 v37, v37, v38
.Ltmp87:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v46
.Ltmp88:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v51, v51, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp89:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v52, v51
.Ltmp90:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v52, v52 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v38, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp93:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v52, v52, v52 :: v_dual_add_f32 v35, v37, v38
	v_max_f32_e32 v51, v51, v52
.Ltmp94:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v52, v119, v119 :: v_dual_mov_b32 v37, v100
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp95:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp96:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v119, v52, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v35, v34 :: v_dual_sub_f32 v52, v77, v119
.Ltmp98:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v56, v73, v119
	v_sub_f32_e32 v53, v78, v119
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v57, v74, v119
	v_sub_f32_e32 v54, v79, v119
	v_sub_f32_e32 v58, v75, v119
	v_sub_f32_e32 v55, v80, v119
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp102:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v57
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v59, v76, v119
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp103:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
.Ltmp104:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp106:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s26
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v39, 0, v39, s21
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp108:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s20
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v100, v34, v35
.Ltmp111:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v52
	v_exp_f32_e32 v35, v56
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s13
	v_cndmask_b32_e64 v35, 0, v35, s27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp112:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp113:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v53
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp114:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v38
.Ltmp115:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v54
.Ltmp116:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp117:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s9
.Ltmp118:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v38, v39
.Ltmp119:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s8
.Ltmp120:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v39, v39, v40
.Ltmp121:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp122:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v35, v38, v39 :: v_dual_mov_b32 v38, v99
.Ltmp123:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v66
.Ltmp124:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp125:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s16
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp127:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s18
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v99, v34, v35
.Ltmp134:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v61
	v_exp_f32_e32 v35, v65
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v35, 0, v35, s19
.Ltmp135:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp136:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s6
.Ltmp137:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v39
.Ltmp138:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp139:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp140:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v39, v39, v40
.Ltmp142:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v64
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s4
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e64 s4, 0xff800000, v190
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v40, v41
	v_add_f32_e32 v35, v39, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v39, v101 :: v_dual_add_f32 v34, v34, v35
.Ltmp144:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp145:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp146:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp148:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp149:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v101, v34, v35
.Ltmp150:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v34, v190, v190
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v34, v33
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v34, v190, v33
	v_mov_b32_e32 v190, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v34, v34
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v34, 0, v34, s4
	v_cmp_neq_f32_e64 s4, 0xff800000, v178
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v98, v36, v34
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v34, v178, v178
	v_max_f32_e32 v34, v34, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v35, v178, v34
	v_mov_b32_e32 v178, v34
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v35, 0, v35, s4
	v_cmp_neq_f32_e64 s4, 0xff800000, v166
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_dual_fmac_f32 v100, v37, v35 :: v_dual_max_f32 v35, v166, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v35, v35, v51
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v36, v166, v35
	v_mov_b32_e32 v166, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v36, v36
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v36, 0, v36, s4
	v_cmp_neq_f32_e64 s4, 0xff800000, v164
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v99, v38, v36
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v36, v164, v164
	v_max_f32_e32 v36, v36, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v37, v164, v36
	v_mov_b32_e32 v164, v36
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
	v_fmac_f32_e32 v101, v39, v37
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v33, off, off offset:16
	scratch_load_b32 v34, off, off offset:8
	scratch_load_b32 v35, off, off offset:12
	v_lshrrev_b32_e32 v0, 4, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	v_and_b32_e32 v0, 4, v0
	s_waitcnt vmcnt(2)
	v_and_b32_e32 v33, 0x80, v33
	s_waitcnt vmcnt(1)
	v_lshl_add_u32 v34, v34, 3, 0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v35, 0, v35
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v0, v34, v33, v0
	ds_store_2addr_b64 v35, v[98:99], v[100:101] offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v0, v0, v25
	v_div_scale_f32 v35, null, v0, v0, v26
	v_div_scale_f32 v37, null, v0, v0, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v33
	v_div_scale_f32 v39, null, v0, v0, v28
	v_rcp_f32_e32 v46, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v37
	v_div_scale_f32 v41, null, v0, v0, v29
	v_div_scale_f32 v43, null, v0, v0, v30
	v_rcp_f32_e32 v48, v39
	v_rcp_f32_e32 v49, v41
	v_fma_f32 v54, -v33, v45, 1.0
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v50, v43
	v_fma_f32 v55, -v35, v46, 1.0
	v_fma_f32 v56, -v37, v47, 1.0
	v_div_scale_f32 v34, vcc_lo, v25, v0, v25
	v_fmac_f32_e32 v45, v54, v45
	v_div_scale_f32 v36, s1, v26, v0, v26
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v57, -v39, v48, 1.0
	v_fmac_f32_e32 v46, v55, v46
	v_div_scale_f32 v38, s3, v27, v0, v27
	v_dual_fmac_f32 v47, v56, v47 :: v_dual_mul_f32 v54, v34, v45
	v_fma_f32 v58, -v41, v49, 1.0
	v_div_scale_f32 v40, s4, v28, v0, v28
	v_fma_f32 v59, -v43, v50, 1.0
	v_dual_fmac_f32 v48, v57, v48 :: v_dual_mul_f32 v55, v36, v46
	v_mul_f32_e32 v56, v38, v47
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v49, v58, v49 :: v_dual_fmac_f32 v50, v59, v50
	v_fma_f32 v58, -v33, v54, v34
	v_div_scale_f32 v42, s5, v29, v0, v29
	v_mul_f32_e32 v57, v40, v48
	v_fma_f32 v59, -v35, v55, v36
	v_fma_f32 v60, -v37, v56, v38
	v_fmac_f32_e32 v54, v58, v45
	v_div_scale_f32 v44, null, v0, v0, v31
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
	v_div_scale_f32 v51, s6, v30, v0, v30
	v_div_fmas_f32 v35, v35, v47, v56
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v25, v33, v0, v25
	v_div_fmas_f32 v33, v36, v48, v57
	v_fma_f32 v36, -v44, v53, 1.0
	v_div_scale_f32 v52, null, v0, v0, v32
	v_div_fixup_f32 v26, v34, v0, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v34, v51, v50 :: v_dual_fmac_f32 v53, v36, v53
	v_div_scale_f32 v36, null, v0, v0, v17
	v_rcp_f32_e32 v37, v52
	v_fma_f32 v58, -v41, v62, v42
	v_div_fixup_f32 v28, v33, v0, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v36
	v_fma_f32 v33, -v43, v34, v51
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v27, v35, v0, v27
	v_div_scale_f32 v35, s3, v31, v0, v31
	v_fmac_f32_e32 v34, v33, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v38, -v52, v37, 1.0
	v_div_scale_f32 v46, null, v0, v0, v18
	v_fma_f32 v45, -v36, v40, 1.0
	v_mul_f32_e32 v33, v35, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, s4, v32, v0, v32
	v_fmac_f32_e32 v40, v45, v40
	v_div_scale_f32 v45, s5, v17, v0, v17
	v_fmac_f32_e32 v62, v58, v49
	v_div_scale_f32 v47, null, v0, v0, v20
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
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
	v_div_fixup_f32 v29, v39, v0, v29
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v30, v34, v0, v30
	v_fma_f32 v34, -v44, v33, v35
	v_fmac_f32_e32 v43, v42, v37
	v_div_scale_f32 v42, null, v0, v0, v19
	v_mul_f32_e32 v35, v45, v40
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v46, v41, 1.0
	v_div_fmas_f32 v33, v34, v53, v33
	v_fma_f32 v34, -v52, v43, v38
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v38, -v36, v35, v45
	v_fmac_f32_e32 v41, v39, v41
	v_rcp_f32_e32 v39, v42
	v_div_scale_f32 v44, s3, v18, v0, v18
	v_div_fmas_f32 v34, v34, v37, v43
	v_rcp_f32_e32 v37, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v35, v38, v40 :: v_dual_mul_f32 v38, v44, v41
	v_div_fixup_f32 v31, v33, v0, v31
	v_div_fixup_f32 v32, v34, v0, v32
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v42, v39, 1.0
	v_fma_f32 v34, -v46, v38, v44
	v_fma_f32 v33, -v36, v35, v45
	v_div_scale_f32 v36, s4, v19, v0, v19
	v_dual_fmac_f32 v39, v43, v39 :: v_dual_fmac_f32 v38, v34, v41
	v_fma_f32 v43, -v47, v37, 1.0
	v_div_scale_f32 v45, null, v0, v0, v21
	v_div_fmas_f32 v33, v33, v40, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v34, v36, v39 :: v_dual_fmac_f32 v37, v43, v37
	v_div_scale_f32 v43, null, v0, v0, v22
	v_rcp_f32_e32 v35, v45
	v_div_scale_f32 v40, s5, v20, v0, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v48, v43
	v_div_fixup_f32 v17, v33, v0, v17
	v_fma_f32 v33, -v46, v38, v44
	v_fma_f32 v44, -v42, v34, v36
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s1
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v45, v35, 1.0
	v_mul_f32_e32 v46, v40, v37
	v_fmac_f32_e32 v34, v44, v39
	v_fma_f32 v44, -v43, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v35, v49, v35 :: v_dual_fmac_f32 v48, v44, v48
	v_div_fmas_f32 v33, v33, v41, v38
	v_fma_f32 v38, -v47, v46, v40
	v_div_scale_f32 v41, s3, v21, v0, v21
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v18, v33, v0, v18
	v_fma_f32 v33, -v42, v34, v36
	v_fmac_f32_e32 v46, v38, v37
	v_mul_f32_e32 v36, v41, v35
	v_div_scale_f32 v38, s6, v22, v0, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v33, v33, v39, v34
	v_div_scale_f32 v42, null, v0, v0, v23
	v_fma_f32 v39, -v45, v36, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v44, v38, v48
	v_fma_f32 v34, -v47, v46, v40
	v_rcp_f32_e32 v40, v42
	v_div_scale_f32 v47, null, v0, v0, v24
	v_fmac_f32_e32 v36, v39, v35
	v_fma_f32 v39, -v43, v44, v38
	v_div_fixup_f32 v19, v33, v0, v19
	s_mov_b32 vcc_lo, s5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	.loc	1 1044 48                       ; attention.py:1044:48
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
	v_div_fixup_f32 v20, v34, v0, v20
	v_div_scale_f32 v34, s4, v23, v0, v23
	v_fma_f32 v39, -v47, v37, 1.0
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v38, null, v0, v0, v9
	v_div_fixup_f32 v22, v35, v0, v22
	v_rcp_f32_e32 v35, v45
	v_fmac_f32_e32 v37, v39, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v41, v38
	v_mul_f32_e32 v36, v34, v40
	v_div_scale_f32 v39, s3, v24, v0, v24
	v_div_fixup_f32 v21, v33, v0, v21
	v_div_scale_f32 v48, null, v0, v0, v12
	v_fma_f32 v43, -v42, v36, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v45, v35, 1.0
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v50, v48
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	v_cndmask_b32_e64 v20, 0, v20, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v35, v46, v35 :: v_dual_fmac_f32 v36, v43, v40
	v_fma_f32 v43, -v38, v41, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s1
	v_cndmask_b32_e64 v22, 0, v22, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v42, v36, v34
	v_div_scale_f32 v42, null, v0, v0, v11
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 1044 48                       ; attention.py:1044:48
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s1
	v_cndmask_b32_e64 v1, 0, v1, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v52, v48, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s1
	.loc	1 1044 48                       ; attention.py:1044:48
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
	v_perm_b32 v10, v11, v12, v114
	v_perm_b32 v11, v11, v12, v115
	v_perm_b32 v12, v13, v17, v114
	v_perm_b32 v13, v13, v17, v115
	v_perm_b32 v0, v2, v4, v114
	v_perm_b32 v1, v2, v4, v115
	v_perm_b32 v4, v5, v8, v114
	v_perm_b32 v5, v5, v8, v115
	v_perm_b32 v8, v9, v16, v114
	v_perm_b32 v9, v9, v16, v115
	v_perm_b32 v2, v3, v6, v114
	v_perm_b32 v3, v3, v6, v115
	v_perm_b32 v6, v7, v14, v114
	v_perm_b32 v7, v7, v14, v115
	v_perm_b32 v14, v15, v18, v114
	v_perm_b32 v15, v15, v18, v115
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
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 24
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17872
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
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
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
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
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
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
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
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
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
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
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
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
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
    .private_segment_fixed_size: 24
    .sgpr_count:     107
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
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
