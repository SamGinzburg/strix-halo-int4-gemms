	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b128 s[80:83], s[0:1], 0x60
	v_dual_mov_b32 v41, 0x5410 :: v_dual_and_b32 v40, 1, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 1, v0
	s_clause 0x1
	s_load_b256 s[64:71], s[0:1], 0x0
	s_load_b64 s[4:5], s[0:1], 0x70
	v_dual_mov_b32 v42, 0x7632 :: v_dual_lshlrev_b32 v1, 4, v40
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s6, s2, 6
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s6, v2
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s7, s6, s2
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v38, 0x60, v0
	v_dual_mov_b32 v216, 0xff800000 :: v_dual_and_b32 v39, 15, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v4
	s_mov_b32 s91, 0x31027000
	s_mov_b32 s90, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v124, v0, 4, 1
	v_dual_mov_b32 v22, v17 :: v_dual_lshlrev_b32 v149, 2, v0
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[95:96], null, s80, v2, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s80, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s89, s65, 0xffff
	s_mov_b32 s88, s64
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v68, 62, v124
	v_bfe_i32 v58, v0, 5, 1
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, s2, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, s80, s7, v[95:96]
	s_clause 0x1
	s_load_b64 s[92:93], s[0:1], 0x20
	s_load_b128 s[84:87], s[0:1], 0x30
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v44, 3, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 28
	v_dual_mov_b32 v21, v17 :: v_dual_lshlrev_b32 v48, 1, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 1, v38
	v_dual_mov_b32 v20, v17 :: v_dual_lshlrev_b32 v51, 9, v0
	v_dual_mov_b32 v24, v17 :: v_dual_lshlrev_b32 v53, 5, v0
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[33:36], v1, s[88:91], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, v2, v39
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s89, s71, 0xffff
	s_mov_b32 s88, s70
	v_bfe_i32 v57, v0, 3, 1
	v_dual_mov_b32 v13, v17 :: v_dual_lshlrev_b32 v40, 6, v40
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v2, s7, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s6, v1
	v_mov_b32_e32 v145, 0xff800000
	v_dual_mov_b32 v15, v17 :: v_dual_and_b32 v64, 0x7c, v149
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off
	scratch_store_b32 off, v68, off offset:4
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v1
	v_dual_mov_b32 v3, v17 :: v_dual_and_b32 v58, 0x2040, v58
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v23, v17 :: v_dual_lshlrev_b32 v150, 4, v0
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -16
	v_dual_mov_b32 v18, v17 :: v_dual_and_b32 v49, 24, v0
	v_dual_mov_b32 v29, v17 :: v_dual_and_b32 v54, 4, v0
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v37, v1, s[88:91], 0 offen
	v_bfe_i32 v55, v0, 2, 1
	v_dual_mov_b32 v10, v17 :: v_dual_and_b32 v53, 0x60, v53
	v_dual_mov_b32 v1, v17 :: v_dual_lshlrev_b32 v66, 2, v38
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v59, s6, v44
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v60, v48, 30, v124
	v_lshrrev_b32_e32 v65, 3, v38
	v_and_or_b32 v40, 0x1c00, v51, v40
	v_lshl_or_b32 v38, v38, 4, v64
	v_and_or_b32 v51, 0x1020, v57, v58
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s7, s0, 4
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s0, s1, 0x10007
	v_dual_mov_b32 v19, v17 :: v_dual_and_b32 v46, 16, v0
	.loc	1 773 86                        ; attention.py:773:86
	v_bfe_i32 v47, v0, 0, 1
	v_dual_mov_b32 v25, v17 :: v_dual_and_b32 v50, 0x70, v0
	v_mov_b32_e32 v30, v17
	v_dual_mov_b32 v9, v17 :: v_dual_lshlrev_b32 v152, 3, v39
	v_dual_mov_b32 v14, v17 :: v_dual_and_b32 v55, 0x2040, v55
	v_mov_b32_e32 v2, v17
	v_mov_b32_e32 v5, v17
	v_xor_b32_e32 v153, v150, v49
	v_and_b32_e32 v49, 24, v48
	v_and_b32_e32 v48, 0x80, v48
	v_lshl_add_u32 v54, v54, 9, 0
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s8, s1, s0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, 0x800, v59
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v59, 2, v60
	v_xor_b32_e32 v157, v38, v65
	v_xor_b32_e32 v38, v51, v53
	v_dual_mov_b32 v212, 0xff800000 :: v_dual_lshlrev_b32 v45, 3, v0
	v_dual_mov_b32 v26, v17 :: v_dual_and_b32 v43, 0x78, v0
	v_dual_mov_b32 v32, v17 :: v_dual_lshlrev_b32 v63, 5, v46
	v_dual_mov_b32 v11, v17 :: v_dual_and_b32 v62, 0x1b8, v149
	v_lshrrev_b32_e32 v61, 1, v50
	v_lshl_add_u32 v154, v39, 1, 0
	v_lshl_or_b32 v155, v39, 5, v49
	v_lshl_or_b32 v39, v50, 6, v152
	v_and_or_b32 v47, 0x1020, v47, v55
	v_xor_b32_e32 v55, 4, v59
	v_add3_u32 v38, v54, v48, v38
	v_mov_b32_e32 v28, v17
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v84, 26, v124
	v_or_b32_e32 v83, 28, v124
	.loc	1 756 22                        ; attention.py:756:22
	scratch_store_b32 off, v43, off offset:72 ; 4-byte Folded Spill
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v43, 56, v45
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s8, s8, 0x80000
	v_dual_mov_b32 v8, v17 :: v_dual_add_nc_u32 v185, v38, v46
	s_sext_i32_i16 s8, s8
	v_xor_b32_e32 v39, v39, v61
	v_or3_b32 v156, v40, v63, v62
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s8, s8, 10
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[100:101], null, s5, v44, v[43:44]
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s3, s7, 14
	s_and_b32 s8, s8, 0xfffff800
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[101:102], null, s81, v44, v[43:44]
	v_dual_mov_b32 v99, v17 :: v_dual_add_nc_u32 v164, 0, v39
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s9, s82, 0x3fb8aa3b
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s4, s4, s1
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s81, v43
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s82, s8, s3
	v_xor_b32_e32 v40, 8, v156
	v_xor_b32_e32 v43, 16, v156
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s3, 0, v46
	v_dual_mov_b32 v27, v17 :: v_dual_and_b32 v52, 28, v0
	v_dual_mov_b32 v31, v17 :: v_dual_and_b32 v56, 8, v0
	v_dual_mov_b32 v16, v17 :: v_dual_lshlrev_b32 v67, 6, v46
	v_dual_mov_b32 v96, v17 :: v_dual_add_nc_u32 v187, 0, v43
	v_cndmask_b32_e64 v41, 0x1054, v41, s3
	v_cndmask_b32_e64 v42, 0x3276, v42, s3
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[102:103], null, s5, 48, v[100:101]
	v_dual_mov_b32 v12, v17 :: v_dual_and_b32 v45, 0x310, v45
	v_lshl_or_b32 v49, v52, 7, v66
	v_lshl_or_b32 v50, v56, 4, v67
	v_lshl_or_b32 v41, v41, 8, v41
	v_lshl_or_b32 v42, v42, 8, v42
	v_mad_u64_u32 v[105:106], null, s81, 48, v[101:102]
	v_xor_b32_e32 v60, 8, v153
	v_or3_b32 v158, v49, v53, v52
	v_or3_b32 v159, v47, v50, v45
	v_mov_b32_e32 v7, v17
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v123, 24, v124
	v_or_b32_e32 v82, 30, v124
	v_or_b32_e32 v255, 32, v124
	v_or_b32_e32 v81, 34, v124
	v_or_b32_e32 v80, 36, v124
	v_or_b32_e32 v79, 38, v124
	v_or_b32_e32 v78, 40, v124
	v_or_b32_e32 v77, 42, v124
	v_or_b32_e32 v76, 44, v124
	v_or_b32_e32 v75, 46, v124
	v_or_b32_e32 v120, 48, v124
	v_or_b32_e32 v74, 50, v124
	v_or_b32_e32 v73, 52, v124
	v_or_b32_e32 v72, 54, v124
	v_or_b32_e32 v71, 56, v124
	v_or_b32_e32 v70, 58, v124
	v_or_b32_e32 v69, 60, v124
	v_xor_b32_e32 v56, 8, v155
	v_xor_b32_e32 v57, 16, v155
	v_xor_b32_e32 v58, 24, v155
	v_add_nc_u32_e32 v160, 0, v60
	v_xor_b32_e32 v44, 24, v156
	v_xor_b32_e32 v45, 32, v156
	v_xor_b32_e32 v47, 40, v156
	v_xor_b32_e32 v49, 48, v156
	v_xor_b32_e32 v50, 56, v156
	v_xor_b32_e32 v51, 0x810, v157
	v_xor_b32_e32 v52, 4, v158
	v_xor_b32_e32 v53, 8, v158
	v_xor_b32_e32 v60, 12, v158
	v_xor_b32_e32 v61, 16, v158
	v_xor_b32_e32 v62, 20, v158
	v_xor_b32_e32 v63, 24, v158
	v_xor_b32_e32 v64, 28, v158
	v_xor_b32_e32 v48, 32, v159
	v_xor_b32_e32 v54, 64, v159
	v_xor_b32_e32 v65, 0x60, v159
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s7, s83, s7
	v_dual_mov_b32 v146, 0xff800000 :: v_dual_mov_b32 v147, 0xff800000
	v_dual_mov_b32 v148, 0xff800000 :: v_dual_mov_b32 v213, 0xff800000
	v_dual_mov_b32 v214, 0xff800000 :: v_dual_mov_b32 v211, 0xff800000
	v_dual_mov_b32 v4, v17 :: v_dual_add_nc_u32 v161, 0, v56
	v_dual_mov_b32 v6, v17 :: v_dual_add_nc_u32 v163, 0, v58
	v_dual_mov_b32 v98, v17 :: v_dual_add_nc_u32 v189, 0, v45
	v_dual_mov_b32 v97, v17 :: v_dual_add_nc_u32 v162, 0, v57
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v144, 2, v124
	v_or_b32_e32 v143, 4, v124
	v_or_b32_e32 v142, 6, v124
	v_or_b32_e32 v141, 8, v124
	v_or_b32_e32 v122, 10, v124
	v_or_b32_e32 v121, 12, v124
	v_or_b32_e32 v151, 14, v124
	v_or_b32_e32 v254, 16, v124
	v_or_b32_e32 v253, 18, v124
	v_or_b32_e32 v252, 20, v124
	v_or_b32_e32 v251, 22, v124
	v_or_b32_e32 v165, s82, v123
	v_or_b32_e32 v166, s82, v84
	v_or_b32_e32 v167, s82, v83
	v_or_b32_e32 v168, s82, v82
	v_or_b32_e32 v169, s82, v255
	v_or_b32_e32 v170, s82, v81
	v_or_b32_e32 v171, s82, v80
	v_or_b32_e32 v172, s82, v79
	v_or_b32_e32 v173, s82, v78
	v_or_b32_e32 v174, s82, v77
	v_or_b32_e32 v175, s82, v76
	v_or_b32_e32 v176, s82, v75
	v_or_b32_e32 v177, s82, v120
	v_or_b32_e32 v178, s82, v74
	v_or_b32_e32 v179, s82, v73
	v_or_b32_e32 v180, s82, v72
	v_or_b32_e32 v181, s82, v71
	v_or_b32_e32 v182, s82, v70
	v_or_b32_e32 v183, s82, v69
	v_or_b32_e32 v184, s82, v68
	v_add_nc_u32_e32 v188, 0, v44
	v_add_nc_u32_e32 v190, 0, v47
	v_add_nc_u32_e32 v191, 0, v49
	v_add_nc_u32_e32 v192, 0, v50
	v_add_nc_u32_e32 v193, 0, v51
	v_add_nc_u32_e32 v194, 0, v52
	v_add_nc_u32_e32 v195, 0, v53
	v_add_nc_u32_e32 v196, 0, v60
	v_add_nc_u32_e32 v197, 0, v61
	v_add_nc_u32_e32 v198, 0, v62
	v_add_nc_u32_e32 v199, 0, v63
	v_add_nc_u32_e32 v200, 0, v64
	v_add_nc_u32_e32 v201, 0, v48
	v_add_nc_u32_e32 v202, 0, v54
	v_add_nc_u32_e32 v203, 0, v65
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v204, s5, 4, v100
	v_lshl_add_u32 v205, s5, 5, v100
	v_lshl_add_u32 v206, s81, 4, v101
	v_lshl_add_u32 v210, s81, 5, v101
	s_mov_b32 s72, 0
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s6, s5, s6
	s_and_b32 s67, s67, 0xffff
	s_waitcnt lgkmcnt(0)
	s_and_b32 s85, s85, 0xffff
	s_add_i32 s83, s4, s7
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
	s_mov_b32 s96, s84
	s_mov_b32 s97, s85
	s_add_i32 s83, s83, s6
	s_mov_b32 s70, s90
	s_mov_b32 s71, s91
	s_mov_b32 s88, s66
	s_mov_b32 s89, s67
	s_clause 0xf                            ; 64-byte Folded Spill
	scratch_store_b32 off, v84, off offset:68
	scratch_store_b32 off, v83, off offset:64
	scratch_store_b32 off, v82, off offset:60
	scratch_store_b32 off, v81, off offset:56
	scratch_store_b32 off, v80, off offset:52
	scratch_store_b32 off, v79, off offset:48
	scratch_store_b32 off, v78, off offset:44
	scratch_store_b32 off, v77, off offset:40
	scratch_store_b32 off, v76, off offset:36
	scratch_store_b32 off, v75, off offset:32
	scratch_store_b32 off, v74, off offset:28
	scratch_store_b32 off, v73, off offset:24
	scratch_store_b32 off, v72, off offset:20
	scratch_store_b32 off, v71, off offset:16
	scratch_store_b32 off, v70, off offset:12
	scratch_store_b32 off, v69, off offset:8
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v38, v59, v33
	ds_bpermute_b32 v33, v55, v33
	ds_bpermute_b32 v39, v59, v34
	ds_bpermute_b32 v34, v55, v34
	ds_bpermute_b32 v43, v59, v36
	ds_bpermute_b32 v36, v55, v36
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v103, v33, v38, s3
	v_cndmask_b32_e64 v106, v38, v33, s3
	v_and_b32_e32 v33, 0x540054, v41
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v104, v34, v39, s3
	v_cndmask_b32_e64 v107, v39, v34, s3
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v109, v36, v43, s3
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v37, 16, v37
	v_add_nc_u32_e32 v186, 0, v40
	.loc	1 774 26                        ; attention.py:774:26
	ds_bpermute_b32 v40, v59, v35
	ds_bpermute_b32 v35, v55, v35
	v_lshl_or_b32 v33, v33, 4, v33
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v207, s9, v37
	v_and_b32_e32 v37, 0x760076, v42
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v111, v43, v36, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v208, 0x5040504, v33
	v_lshl_or_b32 v34, v37, 4, v37
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v209, 0x7060706, v34
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v108, v35, v40, s3
	v_cndmask_b32_e64 v110, v40, v35, s3
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_or_b32 s84, s101, s82
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v37, 0, v153
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[33:34], null, s84, s80, v[95:96]
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v65, s72 :: v_dual_mov_b32 v70, s77
	v_dual_mov_b32 v66, s73 :: v_dual_mov_b32 v67, s74
	v_dual_mov_b32 v72, s79 :: v_dual_mov_b32 v69, s76
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v33, 0x80000000, v33, vcc_lo
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v71, s78
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s3, s83, s101
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v217.l, 0
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s84, s84, s81
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[33:36], v33, s[88:91], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v37, v[33:34]
	ds_store_b64 v160, v[35:36]
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v68, s75 :: v_dual_add_nc_u32 v33, 0, v155
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[41:44], v33 offset1:1
	ds_load_2addr_stride64_b64 v[79:82], v33 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[45:48], v161 offset1:1
	ds_load_2addr_stride64_b64 v[83:86], v161 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[49:52], v162 offset1:1
	ds_load_2addr_stride64_b64 v[87:90], v162 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[73:76], v163 offset1:1
	ds_load_2addr_stride64_b64 v[91:94], v163 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[103:104], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[45:46], v[108:109], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[49:50], v[106:107], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[73:74], v[110:111], v[33:40] neg_lo:[1,1,0]
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
	v_wmma_i32_16x16x16_iu4 v[33:40], v[43:44], v[103:104], v[65:72] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[47:48], v[108:109], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[51:52], v[106:107], v[33:40] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[75:76], v[110:111], v[33:40] neg_lo:[1,1,0]
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
	v_wmma_i32_16x16x16_iu4 v[33:40], v[79:80], v[103:104], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[81:82], v[103:104], v[65:72] neg_lo:[1,1,0]
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v65, s3, v100, 1
	v_add_lshl_u32 v66, s3, v204, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[83:84], v[108:109], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[73:80], v[85:86], v[108:109], v[73:80] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v55, v207, v55
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v65, 0x80000000, v65, s0
	v_cndmask_b32_e64 v69, 0x80000000, v66, s0
	s_clause 0x1
	buffer_load_b128 v[65:68], v65, s[96:99], 0 offen
	buffer_load_b128 v[69:72], v69, s[96:99], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[73:80], v[89:90], v[106:107], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[87:88], v[106:107], v[33:40] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v53, v207, v53
	v_mul_f32_e32 v51, v207, v51
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[73:80], v[93:94], v[110:111], v[73:80] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[91:92], v[110:111], v[33:40] neg_lo:[1,1,0]
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
	v_mul_f32_e32 v36, v207, v36
	v_mul_f32_e32 v34, v207, v34
	v_mul_f32_e32 v47, v207, v47
	v_mul_f32_e32 v45, v207, v45
	v_mul_f32_e32 v43, v207, v43
	v_mul_f32_e32 v39, v207, v39
	v_mul_f32_e32 v37, v207, v37
	v_mul_f32_e32 v35, v207, v35
	v_mul_f32_e32 v33, v207, v33
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v224, 0xff80ff80, v65, s0
	v_add_lshl_u32 v65, s3, v205, 1
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v219, 0xff80ff80, v72, s0
	v_cndmask_b32_e64 v222, 0xff80ff80, v71, s0
	v_cndmask_b32_e64 v221, 0xff80ff80, v70, s0
	v_cndmask_b32_e64 v220, 0xff80ff80, v69, s0
	v_cndmask_b32_e64 v112, 0x80000000, v65, s0
	v_add_lshl_u32 v65, s3, v102, 1
	v_cndmask_b32_e64 v223, 0xff80ff80, v68, s0
	v_cndmask_b32_e64 v226, 0xff80ff80, v67, s0
	v_cndmask_b32_e64 v225, 0xff80ff80, v66, s0
	v_mov_b16_e64 v217.h, v224.l
	v_cndmask_b32_e64 v116, 0x80000000, v65, s0
	v_or_b32_e32 v65, s82, v124
	.loc	1 880 35                        ; attention.py:880:35
	v_mov_b16_e64 v126.l, v226.l
	v_mov_b16_e64 v126.h, v223.l
	v_mov_b16_e64 v125.l, v224.l
	v_mov_b16_e64 v125.h, v225.l
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v65, s101, v65, 1
	.loc	1 880 35                        ; attention.py:880:35
	v_mov_b16_e64 v128.l, v222.l
	v_mov_b16_e64 v128.h, v219.l
	v_mov_b16_e64 v127.l, v220.l
	v_mov_b16_e64 v127.h, v221.l
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v218, v65, s[92:95], 0 offen
	v_or_b32_e32 v65, s82, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v65, s101, v65, 1
	buffer_load_u16 v93, v65, s[92:95], 0 offen
	v_or_b32_e32 v65, s82, v143
	v_add_lshl_u32 v65, s101, v65, 1
	buffer_load_u16 v94, v65, s[92:95], 0 offen
	v_or_b32_e32 v65, s82, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v65, s101, v65, 1
	buffer_load_u16 v87, v65, s[92:95], 0 offen
	v_or_b32_e32 v65, s82, v141
	v_add_lshl_u32 v65, s101, v65, 1
	buffer_load_u16 v215, v65, s[92:95], 0 offen
	v_or_b32_e32 v65, s82, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v65, s101, v65, 1
	buffer_load_u16 v88, v65, s[92:95], 0 offen
	v_or_b32_e32 v65, s82, v121
	v_add_lshl_u32 v65, s101, v65, 1
	buffer_load_u16 v89, v65, s[92:95], 0 offen
	v_or_b32_e32 v65, s82, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v65, s101, v65, 1
	buffer_load_u16 v84, v65, s[92:95], 0 offen
	v_or_b32_e32 v65, s82, v254
	v_add_lshl_u32 v65, s101, v65, 1
	buffer_load_u16 v90, v65, s[92:95], 0 offen
	v_or_b32_e32 v65, s82, v253
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v65, s101, v65, 1
	buffer_load_u16 v91, v65, s[92:95], 0 offen
	v_or_b32_e32 v65, s82, v252
	v_add_lshl_u32 v65, s101, v65, 1
	buffer_load_u16 v92, v65, s[92:95], 0 offen
	v_or_b32_e32 v65, s82, v251
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v54, v207, v54
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v65, s101, v65, 1
	buffer_load_u16 v85, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s101, v165, 1
	buffer_load_u16 v86, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s101, v166, 1
	buffer_load_u16 v83, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s101, v167, 1
	buffer_load_u16 v82, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s101, v168, 1
	buffer_load_u16 v81, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s101, v169, 1
	buffer_load_u16 v80, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s101, v170, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v50, v207, v50
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v79, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s101, v171, 1
	buffer_load_u16 v78, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s101, v172, 1
	buffer_load_u16 v77, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s101, v173, 1
	buffer_load_u16 v76, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s101, v174, 1
	buffer_load_u16 v75, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s101, v175, 1
	buffer_load_u16 v74, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s101, v176, 1
	buffer_load_u16 v73, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s101, v177, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v46, v207, v46
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v72, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s101, v178, 1
	buffer_load_u16 v71, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s101, v179, 1
	buffer_load_u16 v70, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s101, v180, 1
	buffer_load_u16 v69, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s101, v181, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v42, v207, v42
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v68, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s101, v182, 1
	buffer_load_u16 v67, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s101, v183, 1
	buffer_load_u16 v66, v65, s[92:95], 0 offen
	v_add_lshl_u32 v65, s101, v184, 1
	buffer_load_u16 v65, v65, s[92:95], 0 offen
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x1
	buffer_load_b128 v[112:115], v112, s[96:99], 0 offen
	buffer_load_b128 v[116:119], v116, s[96:99], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b64 v164, v[125:126], v[127:128] offset1:16
	v_mov_b16_e64 v126.l, v226.h
	v_mov_b16_e64 v126.h, v223.h
	v_mov_b16_e64 v125.l, v224.h
	v_mov_b16_e64 v125.h, v225.h
	v_mov_b16_e64 v128.l, v222.h
	v_mov_b16_e64 v128.h, v219.h
	v_mov_b16_e64 v127.l, v220.h
	v_mov_b16_e64 v127.h, v221.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v38, v207, v38
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b64 v164, v[125:126], v[127:128] offset0:64 offset1:80
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(32)
	v_lshlrev_b32_e32 v93, 16, v93
	s_waitcnt vmcnt(31)
	v_lshlrev_b32_e32 v94, 16, v94
	s_waitcnt vmcnt(30)
	v_lshlrev_b32_e32 v87, 16, v87
	s_waitcnt vmcnt(28)
	v_lshlrev_b32_e32 v88, 16, v88
	s_waitcnt vmcnt(26)
	v_lshlrev_b32_e32 v84, 16, v84
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(1)
	v_cndmask_b32_e64 v233, 0xff80ff80, v113, s0
	v_cndmask_b32_e64 v232, 0xff80ff80, v112, s0
	v_cndmask_b32_e64 v231, 0xff80ff80, v115, s0
	v_cndmask_b32_e64 v234, 0xff80ff80, v114, s0
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v229, 0xff80ff80, v117, s0
	v_cndmask_b32_e64 v228, 0xff80ff80, v116, s0
	v_cndmask_b32_e64 v227, 0xff80ff80, v119, s0
	v_cndmask_b32_e64 v230, 0xff80ff80, v118, s0
	.loc	1 880 35                        ; attention.py:880:35
	v_mov_b16_e64 v113.l, v234.l
	v_mov_b16_e64 v113.h, v231.l
	v_mov_b16_e64 v112.l, v232.l
	v_mov_b16_e64 v112.h, v233.l
	v_mov_b16_e64 v115.l, v230.l
	v_mov_b16_e64 v115.h, v227.l
	v_mov_b16_e64 v114.l, v228.l
	v_mov_b16_e64 v114.h, v229.l
	ds_store_2addr_b64 v164, v[112:113], v[114:115] offset0:32 offset1:48
	v_mov_b16_e64 v113.l, v234.h
	v_mov_b16_e64 v113.h, v231.h
	v_mov_b16_e64 v112.l, v232.h
	v_mov_b16_e64 v112.h, v233.h
	v_mov_b16_e64 v115.l, v230.h
	v_mov_b16_e64 v115.h, v227.h
	v_mov_b16_e64 v114.l, v228.h
	v_mov_b16_e64 v114.h, v229.h
	ds_store_2addr_b64 v164, v[112:113], v[114:115] offset0:96 offset1:112
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v112.l, v217.l
	v_mov_b16_e64 v112.h, v226.l
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v112
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v112.h, v223.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s16, s0, s3
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v112
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v112.h, v225.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v113, 0, 1, s16
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v217
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s15, s0, s4
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v112
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v112, 0, 1, s15
	s_and_b32 s18, s0, s3
	s_and_b32 s17, s0, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v112.l, 8, v112.l
	v_or_b16 v235.h, v113.l, v112.l
	v_cndmask_b32_e64 v112, 0, 1, s17
	v_cndmask_b32_e64 v113, 0, 1, s18
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v112.h, v220.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v112.l, 8, v112.l
	v_or_b16 v235.l, v113.l, v112.l
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v112.l, v217.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v112
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v112.h, v222.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s14, s0, s3
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v112
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v112.h, v219.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s12, s0, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v112
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v112.h, v221.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v113, 0, 1, s12
	s_and_b32 s11, s0, s5
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s6, 0xff800000, v112
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v112, 0, 1, s11
	s_and_b32 s13, s0, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v112.l, 8, v112.l
	v_or_b16 v236.h, v113.l, v112.l
	v_cndmask_b32_e64 v112, 0, 1, s13
	v_cndmask_b32_e64 v113, 0, 1, s14
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v112.h, v232.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v112.l, 8, v112.l
	v_or_b16 v236.l, v113.l, v112.l
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v112.l, v217.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v112
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v112.h, v234.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s10, s0, s3
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v112
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v112.h, v231.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s8, s0, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v112
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v112.h, v233.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v113, 0, 1, s8
	s_and_b32 s7, s0, s5
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s6, 0xff800000, v112
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v112, 0, 1, s7
	s_and_b32 s9, s0, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v112.l, 8, v112.l
	v_or_b16 v135.h, v113.l, v112.l
	v_cndmask_b32_e64 v112, 0, 1, s9
	v_cndmask_b32_e64 v113, 0, 1, s10
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v112.h, v228.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v112.l, 8, v112.l
	v_or_b16 v135.l, v113.l, v112.l
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v112.l, v217.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v112
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v112.h, v230.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v112
	.loc	1 879 36                        ; attention.py:879:36
	v_mov_b16_e64 v112.h, v227.l
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s4, s0, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s6, 0xff800000, v112
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_mov_b16_e64 v112.h, v229.l
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v113, 0, 1, s4
	s_and_b32 s3, s0, s6
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s19, 0xff800000, v112
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v112, 0, 1, s3
	s_and_b32 s6, s0, s5
	s_and_b32 s5, s0, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v112.l, 8, v112.l
	v_or_b16 v112.h, v113.l, v112.l
	v_cndmask_b32_e64 v113, 0, 1, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v112.l, v113.l
	v_cndmask_b32_e64 v113, 0, 1, s6
	v_lshlrev_b16 v112.l, 8, v112.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v112.l, v113.l, v112.l
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	v_add_nc_u32_e32 v113, 0, v156
	ds_load_b64 v[114:115], v113
	ds_load_b64 v[116:117], v186
	ds_load_b64 v[118:119], v187
	.loc	1 879 36                        ; attention.py:879:36
	ds_load_b64 v[125:126], v188
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[127:128], v189
	ds_load_b64 v[129:130], v190
	.loc	1 879 36                        ; attention.py:879:36
	ds_load_b64 v[131:132], v191
	ds_load_b64 v[133:134], v192
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v113, 0, v157
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b32 v113, v235, v236 offset1:32
	ds_store_2addr_b32 v113, v135, v112 offset0:64 offset1:96
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v112, 0xffff0000, v226
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v52, v207, v52
	v_mul_f32_e32 v48, v207, v48
	v_mul_f32_e32 v44, v207, v44
	v_mul_f32_e32 v40, v207, v40
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s19, 0xff800000, v112
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v112, 0xffff0000, v225
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s34, s0, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s20, 0xff800000, v112
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v112, 0xffff0000, v224
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s33, s0, s20
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s21, 0xff800000, v112
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v112, 0xffff0000, v223
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s35, s0, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s22, 0xff800000, v112
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v112, 0, 1, s33
	v_cndmask_b32_e64 v113, 0, 1, s35
	s_and_b32 s31, s0, s22
	v_lshlrev_b16 v112.l, 8, v112.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v135.l, v113.l, v112.l
	v_cndmask_b32_e64 v112, 0, 1, s31
	v_cndmask_b32_e64 v113, 0, 1, s34
	v_lshlrev_b16 v112.l, 8, v112.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v135.h, v113.l, v112.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v112, 0xffff0000, v222
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s19, 0xff800000, v112
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v112, 0xffff0000, v221
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s29, s0, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s20, 0xff800000, v112
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v112, 0xffff0000, v220
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s28, s0, s20
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s21, 0xff800000, v112
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v112, 0xffff0000, v219
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s30, s0, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s22, 0xff800000, v112
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v112, 0, 1, s28
	v_cndmask_b32_e64 v113, 0, 1, s30
	s_and_b32 s27, s0, s22
	v_lshlrev_b16 v112.l, 8, v112.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v136.l, v113.l, v112.l
	v_cndmask_b32_e64 v112, 0, 1, s27
	v_cndmask_b32_e64 v113, 0, 1, s29
	v_lshlrev_b16 v112.l, 8, v112.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v136.h, v113.l, v112.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v112, 0xffff0000, v234
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s19, 0xff800000, v112
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v112, 0xffff0000, v233
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s25, s0, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s20, 0xff800000, v112
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v112, 0xffff0000, v232
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s24, s0, s20
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s21, 0xff800000, v112
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v112, 0xffff0000, v231
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s26, s0, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s22, 0xff800000, v112
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v112, 0, 1, s24
	v_cndmask_b32_e64 v113, 0, 1, s26
	s_and_b32 s23, s0, s22
	v_lshlrev_b16 v112.l, 8, v112.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v137.l, v113.l, v112.l
	v_cndmask_b32_e64 v112, 0, 1, s23
	v_cndmask_b32_e64 v113, 0, 1, s25
	v_lshlrev_b16 v112.l, 8, v112.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v137.h, v113.l, v112.l
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v112, 0xffff0000, v230
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s19, 0xff800000, v112
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v112, 0xffff0000, v229
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s20, 0xff800000, v112
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v112, 0xffff0000, v228
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s20, s0, s20
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s21, 0xff800000, v112
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v112, 0xffff0000, v227
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s22, s0, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s36, 0xff800000, v112
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v112, 0, 1, s20
	v_cndmask_b32_e64 v113, 0, 1, s22
	s_and_b32 s21, s0, s19
	s_and_b32 s19, s0, s36
	v_lshlrev_b16 v112.l, 8, v112.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v138.l, v113.l, v112.l
	v_cndmask_b32_e64 v112, 0, 1, s19
	v_cndmask_b32_e64 v113, 0, 1, s21
	v_lshlrev_b16 v112.l, 8, v112.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v138.h, v113.l, v112.l
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v112, v207, v64
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v64.l, v217.l
	v_mov_b16_e32 v64.h, v114.l
	v_lshlrev_b32_e32 v113, 16, v218
	.loc	1 881 25                        ; attention.py:881:25
	ds_store_2addr_b32 v193, v135, v136 offset1:32
	ds_store_2addr_b32 v193, v137, v138 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v64, 0x3fb8aa3b, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v64, v112, v113
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v112, v207, v63 :: v_dual_and_b32 v63, 0xffff0000, v114
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v63, 0x3fb8aa3b, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v63, v112, v93
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v93, v207, v62 :: v_dual_lshlrev_b32 v62, 16, v115
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v62, 0x3fb8aa3b, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v62, v93, v94 :: v_dual_and_b32 v93, 0xffff0000, v115
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v94, v207, v61
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v61, 0x3fb8aa3b, v93
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v93, 16, v215
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v61, v94, v87
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v87, v207, v60
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v60.l, v217.l
	v_mov_b16_e32 v60.h, v116.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v60, 0x3fb8aa3b, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v60, v87, v93
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v87, v207, v59
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v59, 0xffff0000, v116
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v59, 0x3fb8aa3b, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v59, v87, v88
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v87, v207, v58 :: v_dual_lshlrev_b32 v58, 16, v117
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v88, 16, v89
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v58, 0x3fb8aa3b, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v58, v87, v88 :: v_dual_and_b32 v87, 0xffff0000, v117
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v88, v207, v56
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v56, 0x3fb8aa3b, v87 :: v_dual_lshlrev_b32 v87, 16, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v56, v88, v84
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v84, v207, v57 :: v_dual_lshlrev_b32 v57, 16, v118
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v57, 0x3fb8aa3b, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v57, v84, v87
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v87, 0xffff0000, v118
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v84, 16, v91
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v87, 0x3fb8aa3b, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v87, v55, v84 :: v_dual_lshlrev_b32 v84, 16, v119
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v55, 16, v92
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v84, 0x3fb8aa3b, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v84, v54, v55
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_and_b32_e32 v54, 0xffff0000, v119
	v_lshlrev_b32_e32 v55, 16, v85
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v85, 0x3fb8aa3b, v54 :: v_dual_lshlrev_b32 v54, 16, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v85, v53, v55
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v53, 16, v86
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v86, 0x3fb8aa3b, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v86, v52, v53
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v53, 0xffff0000, v125
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v52, 16, v83
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v83, 0x3fb8aa3b, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v83, v51, v52 :: v_dual_lshlrev_b32 v52, 16, v126
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v52, 0x3fb8aa3b, v52 :: v_dual_lshlrev_b32 v51, 16, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v52, v50, v51
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v50, 0xffff0000, v126
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v50, 0x3fb8aa3b, v50 :: v_dual_lshlrev_b32 v51, 16, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v50, v48, v51
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v51.l, v217.l
	v_mov_b16_e32 v51.h, v127.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v48, v207, v49 :: v_dual_lshlrev_b32 v49, 16, v80
	v_mul_f32_e32 v80, 0x3fb8aa3b, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v80, v48, v49 :: v_dual_and_b32 v49, 0xffff0000, v127
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v48, 16, v79
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v79, 0x3fb8aa3b, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v79, v47, v48
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v48, 16, v128
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v47, 16, v78
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v78, 0x3fb8aa3b, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v78, v46, v47
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v46, 0xffff0000, v128
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v47, 16, v77
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v77, 0x3fb8aa3b, v46
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v46.l, v217.l
	v_mov_b16_e64 v46.h, v129.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v77, v45, v47
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v45, 16, v76
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v76, 0x3fb8aa3b, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v76, v44, v45
	.loc	1 879 36                        ; attention.py:879:36
	v_and_b32_e32 v45, 0xffff0000, v129
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v44, 16, v75
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v75, 0x3fb8aa3b, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v75, v43, v44 :: v_dual_lshlrev_b32 v44, 16, v130
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v44, 0x3fb8aa3b, v44 :: v_dual_lshlrev_b32 v43, 16, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v44, v42, v43
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v42, 0xffff0000, v130
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v42, 0x3fb8aa3b, v42 :: v_dual_lshlrev_b32 v43, 16, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v42, v40, v43
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v40, v207, v41 :: v_dual_lshlrev_b32 v43, 16, v131
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v41, 16, v72
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v72, 0x3fb8aa3b, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_dual_fmac_f32 v72, v40, v41 :: v_dual_and_b32 v41, 0xffff0000, v131
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v40, 16, v71
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v71, 0x3fb8aa3b, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v71, v39, v40
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v40, 16, v132
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v39, 16, v70
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v70, 0x3fb8aa3b, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v70, v38, v39
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v38, 0xffff0000, v132
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v39, 16, v69
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v53, 0x3fb8aa3b, v38 :: v_dual_lshlrev_b32 v38, 16, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v53, v37, v39
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v37, 16, v68
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v55, 0x3fb8aa3b, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v55, v36, v37
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v37, 0xffff0000, v133
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v36, 16, v67
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v54, 0x3fb8aa3b, v37 :: v_dual_add_nc_u32 v133, 0, v150
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v54, v35, v36
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_lshlrev_b32_e32 v36, 16, v134
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v35, 16, v66
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v66, 0x3fb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v66, v34, v35
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	v_and_b32_e32 v34, 0xffff0000, v134
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v35, 16, v65
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v65, 0x3fb8aa3b, v34
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v65, v33, v35
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	ds_load_b32 v45, v195
	ds_load_b32 v34, v196
	ds_load_b32 v35, v197
	ds_load_b32 v73, v198
	ds_load_b32 v36, v199
	ds_load_b32 v67, v200
	ds_load_b32 v68, v194
	s_waitcnt lgkmcnt(6)
	v_and_b32_e32 v33, 0x1000000, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_ne_u32_e64 s51, 0, v33
	s_waitcnt lgkmcnt(5)
	v_and_b32_e32 v33, 0x10000, v34
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v48, 0xff800000, v85, s51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s47, 0, v33
	s_waitcnt lgkmcnt(4)
	v_and_b32_e32 v33, 1, v35
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v51, 0xff800000, v52, s47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s41, 1, v33
	v_and_b32_e32 v33, 0x10000, v45
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v37, 0xff800000, v80, s41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s50, 0, v33
	v_and_b32_e32 v33, 1, v34
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v47, 0xff800000, v84, s50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s49, 1, v33
	v_and_b32_e32 v33, 0x1000000, v34
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v49, 0xff800000, v86, s49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s48, 0, v33
	v_lshrrev_b16 v33.l, 8, v35.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v52, 0xff800000, v50, s48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v33.l, 1, v33.l
	v_cmp_eq_u16_e64 s44, 1, v33.l
	v_lshrrev_b16 v33.l, 8, v45.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v38, 0xff800000, v79, s44
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v33.l, 1, v33.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v39, v52, v37, v38
.Ltmp2:
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s53, 1, v33.l
	v_lshrrev_b16 v33.l, 8, v34.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v46, 0xff800000, v87, s53
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v33.l, 1, v33.l
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_eq_u16_e64 s52, 1, v33.l
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v46, v47, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp4:
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s59, 1, v45
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v50, 0xff800000, v83, s52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v45, 0xff800000, v57, s59
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v34, v49, v50, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_max3_f32 v69, v33, v34, v39
.Ltmp6:
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(3)
	v_and_b32_e32 v33, 0x10000, v73
	v_lshrrev_b16 v34.l, 8, v73.l
	v_cmp_ne_u32_e64 s39, 0, v33
	s_waitcnt lgkmcnt(2)
	v_and_b32_e32 v33, 0x10000, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b16 v34.l, 1, v34.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v43, 0xff800000, v44, s39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s36, 0, v33
	v_and_b32_e32 v33, 0x10000, v35
	v_cmp_eq_u16_e64 s45, 1, v34.l
	v_lshrrev_b16 v34.l, 8, v36.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_ne_u32_e64 s43, 0, v33
	v_and_b32_e32 v33, 0x1000000, v35
	v_and_b16 v34.l, 1, v34.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v35, 0xff800000, v70, s36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v39, 0xff800000, v78, s43
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s46, 0, v33
	v_and_b32_e32 v33, 1, v73
	v_cmp_eq_u16_e64 s38, 1, v34.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v40, 0xff800000, v77, s46
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s42, 1, v33
	v_and_b32_e32 v33, 0x1000000, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v34, 0xff800000, v71, s38
	v_cndmask_b32_e64 v41, 0xff800000, v76, s42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s40, 0, v33
	v_and_b32_e32 v33, 1, v36
	v_and_b32_e32 v36, 0x1000000, v36
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v70, v39, v40, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v44, 0xff800000, v42, s40
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s37, 1, v33
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v42, 0xff800000, v75, s45
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s58, 0, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v33, 0xff800000, v72, s37
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v71, v42, v43, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
.Ltmp10:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v36, 0xff800000, v53, s58
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(1)
	v_and_b32_e32 v53, 1, v67
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v72, v33, v34, v35
.Ltmp12:
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s56, 1, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v70, v70, v71, v72
.Ltmp14:
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v71, 0, v158
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v53, 0xff800000, v55, s56
	.loc	1 881 25                        ; attention.py:881:25
	ds_load_b32 v71, v71
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v72, 0x10000, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_ne_u32_e64 s63, 0, v72
	v_and_b32_e32 v72, 1, v71
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v89, 0xff800000, v62, s63
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v62, 0x1000000, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_eq_u32_e64 s66, 1, v72
	v_cmp_ne_u32_e64 s64, 0, v62
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v87, 0xff800000, v64, s66
	v_cndmask_b32_e64 v90, 0xff800000, v61, s64
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v61, 0x10000, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_ne_u32_e64 s60, 0, v61
	v_and_b32_e32 v61, 1, v68
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v93, 0xff800000, v58, s60
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v58, 0x1000000, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e64 s62, 1, v61
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v61, 0, v159
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s61, 0, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v91, 0xff800000, v60, s62
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v60, s84, v105, 1
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v94, 0xff800000, v56, s61
	.loc	1 881 25                        ; attention.py:881:25
	v_lshrrev_b16 v56.l, 8, v71.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v60, 0x80000000, v60, s1
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v56.l, 1, v56.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s67, 1, v56.l
	v_lshrrev_b16 v56.l, 8, v68.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v88, 0xff800000, v63, s67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v56.l, 1, v56.l
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b128 v61, v[87:90]
	ds_store_b128 v61, v[37:40] offset:2048
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s65, 1, v56.l
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v56, v87, v88
.Ltmp16:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v92, 0xff800000, v59, s65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v57, v90, v91, v92
	v_max3_f32 v56, v56, v89, v57
	v_max3_f32 v57, v93, v94, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max3_f32 v58, v56, v57, v69
.Ltmp18:
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v56, 0x10000, v67
	v_lshrrev_b16 v57.l, 8, v67.l
	v_cmp_ne_u32_e64 s54, 0, v56
	v_and_b32_e32 v56, 0x1000000, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b16 v57.l, 1, v57.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v55, 0xff800000, v66, s54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s55, 0, v56
	v_cmp_eq_u16_e64 s57, 1, v57.l
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v36, v53
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp20:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v56, 0xff800000, v65, s55
	v_cndmask_b32_e64 v54, 0xff800000, v54, s57
	ds_store_b128 v201, v[91:94]
	ds_store_b128 v201, v[41:44] offset:2048
	ds_store_b128 v202, v[45:48]
	ds_store_b128 v202, v[33:36] offset:2048
	ds_store_b128 v203, v[49:52]
	ds_store_b128 v203, v[53:56] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v59, v55, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v57, v57, v54, v59
.Ltmp22:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v59.h, v217.l
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v57, v58, v70, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v58, v57, s100, 0xfedcba98 op_sel:[1,0]
.Ltmp25:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v215, v216, v57, v58
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v57, v88, v215
	v_sub_f32_e32 v58, v87, v215
	v_sub_f32_e32 v48, v48, v215
	v_sub_f32_e32 v90, v90, v215
	v_sub_f32_e32 v89, v89, v215
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v57, v57
	v_exp_f32_e32 v58, v58
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v92, v92, v215
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v90, v90
	v_exp_f32_e32 v89, v89
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v91, v91, v215
	v_sub_f32_e32 v94, v94, v215
	v_sub_f32_e32 v93, v93, v215
	v_sub_f32_e32 v46, v46, v215
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v48, v48
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v57, 0, v57, s67
	v_cndmask_b32_e64 v58, 0, v58, s66
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v43, v215
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v90, 0, v90, s64
	v_cndmask_b32_e64 v89, 0, v89, s63
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v59.l, v57.h
	v_cmp_o_f32_e64 s66, v57, v57
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v46, v46
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s64, v90, v90
	v_cmp_o_f32_e64 s63, v89, v89
	v_and_b32_e32 v59, 1, v59
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v48, 0, v48, s51
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v35, v215
	v_sub_f32_e32 v45, v45, v215
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v59, v57, v59, 0x7fff
	v_mov_b16_e64 v57.h, v217.l
	v_mov_b16_e32 v57.l, v58.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v46, 0, v46, s53
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v47, v47, v215
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v218.h, 0x7fff, v59.h, s66
	v_cmp_o_f32_e64 s66, v58, v58
	v_and_b32_e32 v57, 1, v57
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v59, s84, v210, 1
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s53, v46, v46
	v_cmp_o_f32_e64 s51, v48, v48
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v50, v50, v215
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v57, v58, v57, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v58, s84, v206, 1
	v_cndmask_b32_e64 v59, 0x80000000, v59, s1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v49, v49, v215
	v_sub_f32_e32 v52, v52, v215
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v218.l, 0x7fff, v57.h, s66
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v57, s84, v101, 1
	v_cndmask_b32_e64 v58, 0x80000000, v58, s1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v51, v51, v215
	v_sub_f32_e32 v37, v37, v215
	v_sub_f32_e32 v38, v38, v215
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v57, 0x80000000, v57, s1
	s_clause 0x3
	buffer_load_b128 v[112:115], v57, s[68:71], 0 offen
	buffer_load_b128 v[116:119], v58, s[68:71], 0 offen
	buffer_load_b128 v[125:128], v59, s[68:71], 0 offen
	buffer_load_b128 v[129:132], v60, s[68:71], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_b128 v[85:88], v185
	ds_load_b128 v[77:80], v185 offset:256
	ds_load_b128 v[81:84], v185 offset:1024
	ds_load_b128 v[73:76], v185 offset:1280
	ds_load_b128 v[69:72], v185 offset:512
	ds_load_b128 v[61:64], v185 offset:768
	ds_load_b128 v[65:68], v185 offset:1536
	ds_load_b128 v[57:60], v185 offset:1792
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	ds_store_b128 v133, v[112:115]
	s_waitcnt vmcnt(2)
	ds_store_b128 v133, v[116:119] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v133, v[125:128] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v133, v[129:132] offset:6144
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v112, v218, s100, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v39, v215
	v_sub_f32_e32 v40, v40, v215
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v219, v112, v218, v208
	v_perm_b32 v220, v112, v218, v209
	v_mov_b16_e64 v112.h, v217.l
	v_mov_b16_e32 v112.l, v90.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v44, v44, v215
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v50, v50
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v112, 1, v112
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v49, v49
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v51, v51
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v41, v41, v215
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v112, v90, v112, 0x7fff
	v_mov_b16_e64 v90.h, v217.l
	v_mov_b16_e32 v90.l, v89.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v45, s59
	v_cndmask_b32_e64 v47, 0, v47, s50
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v229, v154 offset:608
	ds_load_u16_d16 v228, v154 offset:352
	ds_load_u16_d16 v238, v154 offset:768
	ds_load_u16_d16 v235, v154
	ds_load_u16_d16 v245, v154 offset:576
	ds_load_u16_d16 v246, v154 offset:832
	ds_load_u16_d16 v239, v154 offset:1024
	ds_load_u16_d16 v247, v154 offset:1088
	ds_load_u16_d16 v240, v154 offset:1280
	ds_load_u16_d16 v248, v154 offset:1344
	ds_load_u16_d16 v241, v154 offset:1536
	ds_load_u16_d16 v249, v154 offset:1600
	ds_load_u16_d16 v242, v154 offset:1792
	ds_load_u16_d16 v237, v154 offset:512
	ds_load_u16_d16 v236, v154 offset:256
	ds_load_u16_d16 v250, v154 offset:1856
	ds_load_u16_d16 v113, v154 offset:288
	ds_load_u16_d16 v112, v154 offset:32
	ds_load_u16_d16 v243, v154 offset:64
	ds_load_u16_d16 v244, v154 offset:320
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v50, 0, v50, s52
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v90, 1, v90
	v_cmp_o_f32_e64 s59, v45, v45
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v34, v215
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s50, v47, v47
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v49, s49
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v90, v89, v90, 0x7fff
	s_waitcnt lgkmcnt(2)
	v_cndmask_b16 v89.h, 0x7fff, v112.h, s64
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v228, v154 offset:480
	ds_load_u16_d16 v227, v154 offset:96
	ds_load_u16_d16_hi v235, v154 offset:128
	ds_load_u16_d16_hi v245, v154 offset:704
	ds_load_u16_d16_hi v238, v154 offset:896
	ds_load_u16_d16_hi v246, v154 offset:960
	ds_load_u16_d16_hi v239, v154 offset:1152
	ds_load_u16_d16_hi v247, v154 offset:1216
	ds_load_u16_d16_hi v240, v154 offset:1408
	ds_load_u16_d16_hi v248, v154 offset:1472
	ds_load_u16_d16_hi v241, v154 offset:1664
	ds_load_u16_d16_hi v249, v154 offset:1728
	ds_load_u16_d16_hi v242, v154 offset:1920
	ds_load_u16_d16_hi v237, v154 offset:640
	ds_load_u16_d16_hi v236, v154 offset:384
	ds_load_u16_d16 v114, v154 offset:544
	ds_load_u16_d16 v230, v154 offset:864
	ds_load_u16_d16 v231, v154 offset:1120
	ds_load_u16_d16 v232, v154 offset:1376
	ds_load_u16_d16 v233, v154 offset:1632
	ds_load_u16_d16_hi v250, v154 offset:1984
	ds_load_u16_d16 v218, v154 offset:2048
	ds_load_u16_d16 v125, v154 offset:2112
	ds_load_u16_d16 v234, v154 offset:1888
	ds_load_u16_d16_hi v112, v154 offset:160
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v243, v154 offset:192
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v89.l, 0x7fff, v90.h, s63
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v115, v154 offset:800
	ds_load_u16_d16 v116, v154 offset:1056
	ds_load_u16_d16 v117, v154 offset:1312
	ds_load_u16_d16 v118, v154 offset:1568
	ds_load_u16_d16 v119, v154 offset:1824
	ds_load_u16_d16 v126, v154 offset:2368
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v114, v154 offset:672
	ds_load_u16_d16_hi v229, v154 offset:736
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v90, v89, s100, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v36, v215
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v227, v154 offset:224
	ds_load_u16_d16_hi v113, v154 offset:416
	ds_load_u16_d16_hi v244, v154 offset:448
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s49, v49, v49
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v52, 0, v52, s48
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v221, v90, v89, v208
	v_perm_b32 v222, v90, v89, v209
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v89, v92
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v90.h, v217.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v42, v42, v215
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v51, 0, v51, s47
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s48, v52, v52
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v40, v40
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s47, v51, v51
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v89, 0, v89, s65
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v41, v41
	v_exp_f32_e32 v44, v44
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v43, s39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v90.l, v89.h
	v_cmp_o_f32_e64 s63, v89, v89
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s44
	v_cndmask_b32_e64 v37, 0, v37, s41
	v_cndmask_b32_e64 v40, 0, v40, s46
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v90, 1, v90
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s43
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s44, v38, v38
	v_cmp_o_f32_e64 s41, v37, v37
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v42, s45
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v89, v89, v90, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v90, v91
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v91.h, v217.l
	v_cmp_o_f32_e64 s43, v39, v39
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s42
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v89.h, 0x7fff, v89.h, s63
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v44, 0, v44, s40
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s39, v43, v43
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s42, v41, v41
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v33, v215
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v90, 0, v90, s62
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s40, v44, v44
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v33, v33
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v91.l, v90.h
	v_cmp_o_f32_e64 s62, v90, v90
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v91, 1, v91
	v_cmp_o_f32_e64 s38, v34, v34
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s58
	v_cndmask_b32_e64 v33, 0, v33, s37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v90, v90, v91, 0x7fff
	v_mov_b16_e64 v91.h, v217.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s36
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s37, v33, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v89.l, 0x7fff, v90.h, s62
	v_cmp_o_f32_e64 s36, v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v90, v89, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v223, v90, v89, v208
	v_perm_b32 v224, v90, v89, v209
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v89, v94
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v90.h, v217.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v89, 0, v89, s61
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v90.l, v89.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s61, v89, v89
	v_and_b32_e32 v90, 1, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v89, v89, v90, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v90, v93
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v89.h, 0x7fff, v89.h, s61
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v90, 0, v90, s60
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v91.l, v90.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s60, v90, v90
	v_and_b32_e32 v91, 1, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v90, v90, v91, 0x7fff
	v_cndmask_b16 v89.l, 0x7fff, v90.h, s60
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s60, 0xff800000, v216
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v90, v89, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v225, v90, v89, v208
	v_perm_b32 v226, v90, v89, v209
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v89, v216, v215
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v89, v89
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v89, 0, v89, s60
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v12, v12, v89
	v_mul_f32_e32 v17, v17, v89
	v_mul_f32_e32 v18, v18, v89
	v_mul_f32_e32 v19, v19, v89
	v_mul_f32_e32 v20, v20, v89
	v_mul_f32_e32 v21, v21, v89
	v_mul_f32_e32 v22, v22, v89
	v_mul_f32_e32 v23, v23, v89
	v_mul_f32_e32 v24, v24, v89
	v_mul_f32_e32 v25, v25, v89
	v_mul_f32_e32 v26, v26, v89
	v_mul_f32_e32 v27, v27, v89
	v_mul_f32_e32 v28, v28, v89
	v_mul_f32_e32 v29, v29, v89
	v_mul_f32_e32 v30, v30, v89
	v_mul_f32_e32 v31, v31, v89
	v_mul_f32_e32 v32, v32, v89
	v_mul_f32_e32 v9, v9, v89
	v_mul_f32_e32 v10, v10, v89
	v_mul_f32_e32 v11, v11, v89
	v_mul_f32_e32 v13, v13, v89
	v_mul_f32_e32 v14, v14, v89
	v_mul_f32_e32 v15, v15, v89
	v_mul_f32_e32 v16, v16, v89
	v_mul_f32_e32 v1, v1, v89
	v_mul_f32_e32 v2, v2, v89
	v_mul_f32_e32 v3, v3, v89
	v_mul_f32_e32 v4, v4, v89
	v_mul_f32_e32 v5, v5, v89
	v_mul_f32_e32 v6, v6, v89
	v_mul_f32_e32 v7, v7, v89
	v_mul_f32_e32 v8, v8, v89
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v89.h, v217.l
	v_mov_b16_e32 v89.l, v46.h
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[235:242], v[219:226], v[17:24]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v115, v154 offset:928
	ds_load_u16_d16_hi v230, v154 offset:992
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v116, v154 offset:1184
	ds_load_u16_d16_hi v231, v154 offset:1248
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v117, v154 offset:1440
	ds_load_u16_d16_hi v232, v154 offset:1504
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v118, v154 offset:1696
	ds_load_u16_d16_hi v233, v154 offset:1760
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v119, v154 offset:1952
	ds_load_u16_d16_hi v234, v154 offset:2016
	ds_load_u16_d16_hi v125, v154 offset:2240
	ds_load_u16_d16 v235, v154 offset:2080
	ds_load_u16_d16 v133, v154 offset:2144
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(13)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[243:250], v[219:226], v[9:16]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_and_b32_e32 v89, 1, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v46, v46, v89, 0x7fff
	v_mov_b16_e64 v89.h, v217.l
	v_mov_b16_e32 v89.l, v45.h
	v_cndmask_b16 v46.h, 0x7fff, v46.h, s53
	s_delay_alu instid0(VALU_DEP_2)
	v_and_b32_e32 v89, 1, v89
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[112:119], v[219:226], v[25:32]
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[227:234], v[219:226], v[1:8]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v219, v154 offset:2304
	ds_load_u16_d16 v220, v154 offset:2560
	ds_load_u16_d16 v127, v154 offset:2624
	ds_load_u16_d16 v221, v154 offset:2816
	ds_load_u16_d16 v128, v154 offset:2880
	ds_load_u16_d16 v222, v154 offset:3072
	ds_load_u16_d16 v129, v154 offset:3136
	ds_load_u16_d16 v223, v154 offset:3328
	ds_load_u16_d16 v130, v154 offset:3392
	ds_load_u16_d16 v224, v154 offset:3584
	ds_load_u16_d16 v131, v154 offset:3648
	ds_load_u16_d16 v225, v154 offset:3840
	ds_load_u16_d16 v132, v154 offset:3904
	ds_load_u16_d16_hi v218, v154 offset:2176
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v219, v154 offset:2432
	ds_load_u16_d16_hi v126, v154 offset:2496
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v220, v154 offset:2688
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v127, v154 offset:2752
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v221, v154 offset:2944
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v128, v154 offset:3008
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v222, v154 offset:3200
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v129, v154 offset:3264
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v223, v154 offset:3456
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v130, v154 offset:3520
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v224, v154 offset:3712
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v131, v154 offset:3776
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v225, v154 offset:3968
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v132, v154 offset:4032
	ds_load_u16_d16 v134, v154 offset:2400
	ds_load_u16_d16 v135, v154 offset:2656
	ds_load_u16_d16 v136, v154 offset:2912
	ds_load_u16_d16 v137, v154 offset:3168
	ds_load_u16_d16 v138, v154 offset:3424
	ds_load_u16_d16 v139, v154 offset:3680
	ds_load_u16_d16 v112, v154 offset:4096
	ds_load_u16_d16 v226, v154 offset:4160
	ds_load_u16_d16 v140, v154 offset:3936
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v45, v45, v89, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v236, v154 offset:2336
	ds_load_u16_d16 v237, v154 offset:2592
	ds_load_u16_d16 v238, v154 offset:2848
	ds_load_u16_d16 v239, v154 offset:3104
	ds_load_u16_d16 v240, v154 offset:3360
	ds_load_u16_d16 v241, v154 offset:3616
	ds_load_u16_d16 v242, v154 offset:3872
	ds_load_u16_d16 v227, v154 offset:4416
	ds_load_u16_d16_hi v235, v154 offset:2208
	ds_load_u16_d16_hi v133, v154 offset:2272
	ds_load_u16_d16 v113, v154 offset:4352
	ds_load_u16_d16 v114, v154 offset:4608
	ds_load_u16_d16 v228, v154 offset:4672
	ds_load_u16_d16 v115, v154 offset:4864
	ds_load_u16_d16 v229, v154 offset:4928
	ds_load_u16_d16 v116, v154 offset:5120
	ds_load_u16_d16 v230, v154 offset:5184
	ds_load_u16_d16 v117, v154 offset:5376
	ds_load_u16_d16 v231, v154 offset:5440
	ds_load_u16_d16 v118, v154 offset:5632
	ds_load_u16_d16 v232, v154 offset:5696
	ds_load_u16_d16 v119, v154 offset:5888
	ds_load_u16_d16 v233, v154 offset:5952
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v112, v154 offset:4224
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v46.l, 0x7fff, v45.h, s59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v89, v46, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v45, v89, v46, v208
	v_perm_b32 v46, v89, v46, v209
	v_mov_b16_e64 v89.h, v217.l
	v_mov_b16_e32 v89.l, v48.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v89, 1, v89
	v_add3_u32 v48, v48, v89, 0x7fff
	v_mov_b16_e64 v89.h, v217.l
	v_mov_b16_e32 v89.l, v47.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v48.h, 0x7fff, v48.h, s51
	v_and_b32_e32 v89, 1, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v47, v47, v89, 0x7fff
	v_cndmask_b16 v48.l, 0x7fff, v47.h, s50
	v_cmp_o_f32_e64 s50, v50, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v89, v48, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v47, v89, v48, v208
	v_perm_b32 v48, v89, v48, v209
	v_mov_b16_e64 v89.h, v217.l
	v_mov_b16_e32 v89.l, v50.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v89, 1, v89
	v_add3_u32 v50, v50, v89, 0x7fff
	v_mov_b16_e64 v89.h, v217.l
	v_mov_b16_e32 v89.l, v49.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v50.h, 0x7fff, v50.h, s50
	v_and_b32_e32 v89, 1, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v49, v49, v89, 0x7fff
	v_cndmask_b16 v50.l, 0x7fff, v49.h, s49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v89, v50, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v49, v89, v50, v208
	v_perm_b32 v50, v89, v50, v209
	v_mov_b16_e64 v89.h, v217.l
	v_mov_b16_e32 v89.l, v52.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v89, 1, v89
	v_add3_u32 v52, v52, v89, 0x7fff
	v_mov_b16_e64 v89.h, v217.l
	v_mov_b16_e32 v89.l, v51.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v52.h, 0x7fff, v52.h, s48
	v_and_b32_e32 v89, 1, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v51, v51, v89, 0x7fff
	v_cndmask_b16 v52.l, 0x7fff, v51.h, s47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v89, v52, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v51, v89, v52, v208
	v_perm_b32 v52, v89, v52, v209
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[218:225], v[45:52], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[125:132], v[45:52], v[9:16]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v236, v154 offset:2464
	ds_load_u16_d16_hi v134, v154 offset:2528
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v237, v154 offset:2720
	ds_load_u16_d16_hi v135, v154 offset:2784
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v238, v154 offset:2976
	ds_load_u16_d16_hi v136, v154 offset:3040
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v239, v154 offset:3232
	ds_load_u16_d16_hi v137, v154 offset:3296
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v240, v154 offset:3488
	ds_load_u16_d16_hi v138, v154 offset:3552
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v241, v154 offset:3744
	ds_load_u16_d16_hi v139, v154 offset:3808
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v242, v154 offset:4000
	ds_load_u16_d16_hi v140, v154 offset:4064
	ds_load_u16_d16_hi v226, v154 offset:4288
	ds_load_u16_d16 v125, v154 offset:4128
	ds_load_u16_d16 v218, v154 offset:4192
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[235:242], v[45:52], v[25:32]
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[133:140], v[45:52], v[1:8]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_mov_b16_e64 v45.h, v217.l
	v_mov_b16_e32 v45.l, v38.h
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v126, v154 offset:4384
	ds_load_u16_d16 v127, v154 offset:4640
	ds_load_u16_d16 v128, v154 offset:4896
	ds_load_u16_d16 v129, v154 offset:5152
	ds_load_u16_d16 v130, v154 offset:5408
	ds_load_u16_d16 v131, v154 offset:5664
	ds_load_u16_d16 v132, v154 offset:5920
	ds_load_u16_d16 v134, v154 offset:6464
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v125, v154 offset:4256
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v218, v154 offset:4320
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v38, v38, v45, 0x7fff
	v_mov_b16_e64 v45.h, v217.l
	v_mov_b16_e32 v45.l, v37.h
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v45, 1, v45
	v_add3_u32 v37, v37, v45, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s41
	v_cmp_o_f32_e64 s41, v40, v40
	v_permlanex16_b32 v45, v38, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v37, v45, v38, v208
	v_perm_b32 v38, v45, v38, v209
	v_mov_b16_e64 v45.h, v217.l
	v_mov_b16_e32 v45.l, v40.h
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v40, v45, 0x7fff
	v_mov_b16_e64 v45.h, v217.l
	v_mov_b16_e32 v45.l, v39.h
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s41
	v_cmp_o_f32_e64 s41, v42, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v45, 1, v45
	v_add3_u32 v39, v39, v45, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s43
	v_permlanex16_b32 v45, v40, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v39, v45, v40, v208
	v_perm_b32 v40, v45, v40, v209
	v_mov_b16_e64 v45.h, v217.l
	v_mov_b16_e32 v45.l, v42.h
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v42, v42, v45, 0x7fff
	v_mov_b16_e64 v45.h, v217.l
	v_mov_b16_e32 v45.l, v41.h
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v45, 1, v45
	v_add3_u32 v41, v41, v45, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v42.l, 0x7fff, v41.h, s42
	v_permlanex16_b32 v45, v42, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v41, v45, v42, v208
	v_perm_b32 v42, v45, v42, v209
	v_mov_b16_e64 v45.h, v217.l
	v_mov_b16_e32 v45.l, v44.h
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v44, v44, v45, 0x7fff
	v_mov_b16_e64 v45.h, v217.l
	v_mov_b16_e32 v45.l, v43.h
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v45, 1, v45
	v_add3_u32 v43, v43, v45, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v44.l, 0x7fff, v43.h, s39
	v_permlanex16_b32 v45, v44, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v43, v45, v44, v208
	v_perm_b32 v44, v45, v44, v209
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v113, v154 offset:4480
	ds_load_u16_d16_hi v227, v154 offset:4544
	ds_load_u16_d16_hi v114, v154 offset:4736
	ds_load_u16_d16_hi v228, v154 offset:4800
	ds_load_u16_d16_hi v115, v154 offset:4992
	ds_load_u16_d16_hi v229, v154 offset:5056
	ds_load_u16_d16_hi v116, v154 offset:5248
	ds_load_u16_d16_hi v230, v154 offset:5312
	ds_load_u16_d16_hi v117, v154 offset:5504
	ds_load_u16_d16_hi v231, v154 offset:5568
	ds_load_u16_d16_hi v118, v154 offset:5760
	ds_load_u16_d16_hi v232, v154 offset:5824
	ds_load_u16_d16_hi v119, v154 offset:6016
	ds_load_u16_d16_hi v233, v154 offset:6080
	ds_load_u16_d16 v219, v154 offset:4448
	ds_load_u16_d16 v220, v154 offset:4704
	ds_load_u16_d16 v221, v154 offset:4960
	ds_load_u16_d16 v222, v154 offset:5216
	ds_load_u16_d16 v223, v154 offset:5472
	ds_load_u16_d16 v224, v154 offset:5728
	ds_load_u16_d16 v45, v154 offset:6144
	ds_load_u16_d16 v133, v154 offset:6208
	ds_load_u16_d16 v225, v154 offset:5984
	ds_load_u16_d16 v46, v154 offset:6400
	ds_load_u16_d16 v47, v154 offset:6656
	ds_load_u16_d16 v135, v154 offset:6720
	ds_load_u16_d16 v48, v154 offset:6912
	ds_load_u16_d16 v136, v154 offset:6976
	ds_load_u16_d16 v49, v154 offset:7168
	ds_load_u16_d16 v137, v154 offset:7232
	ds_load_u16_d16 v50, v154 offset:7424
	ds_load_u16_d16 v138, v154 offset:7488
	ds_load_u16_d16 v51, v154 offset:7680
	ds_load_u16_d16 v139, v154 offset:7744
	ds_load_u16_d16 v52, v154 offset:7936
	ds_load_u16_d16 v140, v154 offset:8000
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v45, v154 offset:6272
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[112:119], v[37:44], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v126, v154 offset:4512
	ds_load_u16_d16_hi v219, v154 offset:4576
	ds_load_u16_d16_hi v127, v154 offset:4768
	ds_load_u16_d16_hi v220, v154 offset:4832
	ds_load_u16_d16_hi v128, v154 offset:5024
	ds_load_u16_d16_hi v221, v154 offset:5088
	ds_load_u16_d16_hi v129, v154 offset:5280
	ds_load_u16_d16_hi v222, v154 offset:5344
	ds_load_u16_d16_hi v130, v154 offset:5536
	ds_load_u16_d16_hi v223, v154 offset:5600
	ds_load_u16_d16_hi v131, v154 offset:5792
	ds_load_u16_d16_hi v224, v154 offset:5856
	ds_load_u16_d16_hi v132, v154 offset:6048
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v225, v154 offset:6112
	ds_load_u16_d16_hi v133, v154 offset:6336
	ds_load_u16_d16 v112, v154 offset:6176
	ds_load_u16_d16 v216, v154 offset:6240
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[226:233], v[37:44], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v113, v154 offset:6432
	ds_load_u16_d16 v114, v154 offset:6688
	ds_load_u16_d16 v115, v154 offset:6944
	ds_load_u16_d16 v116, v154 offset:7200
	ds_load_u16_d16 v117, v154 offset:7456
	ds_load_u16_d16 v118, v154 offset:7712
	ds_load_u16_d16 v119, v154 offset:7968
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v112, v154 offset:6304
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v216, v154 offset:6368
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[125:132], v[37:44], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[218:225], v[37:44], v[1:8]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_mov_b16_e64 v41.h, v217.l
	v_mov_b16_e32 v41.l, v34.h
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v38, v54, v215
	v_sub_f32_e32 v37, v53, v215
	v_sub_f32_e32 v40, v56, v215
	v_sub_f32_e32 v39, v55, v215
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v41, 1, v41
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v39, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v34, v34, v41, 0x7fff
	v_mov_b16_e64 v41.h, v217.l
	v_mov_b16_e32 v41.l, v33.h
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v80, v80
	v_max3_f32 v44, v74, v79, v75
.Ltmp27:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s38
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s57
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v41, 1, v41
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s56
	v_cndmask_b32_e64 v40, 0, v40, s55
	v_cndmask_b32_e64 v39, 0, v39, s54
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v53, v66, v71, v67
.Ltmp29:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v33, v33, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s37
	v_cmp_o_f32_e64 s37, v36, v36
	v_permlanex16_b32 v41, v34, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v41, v34, v208
	v_perm_b32 v34, v41, v34, v209
	v_mov_b16_e64 v41.h, v217.l
	v_mov_b16_e32 v41.l, v36.h
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v36, v36, v41, 0x7fff
	v_mov_b16_e64 v41.h, v217.l
	v_mov_b16_e32 v41.l, v35.h
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s37
	v_cmp_o_f32_e64 s37, v37, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v35, v35, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s36
	v_cmp_o_f32_e64 s36, v38, v38
	v_permlanex16_b32 v41, v36, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v41, v36, v208
	v_perm_b32 v36, v41, v36, v209
	v_mov_b16_e64 v41.h, v217.l
	v_mov_b16_e32 v41.l, v38.h
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v38, v38, v41, 0x7fff
	v_mov_b16_e64 v41.h, v217.l
	v_mov_b16_e32 v41.l, v37.h
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s36
	v_cmp_o_f32_e64 s36, v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v37, v37, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s37
	v_cmp_o_f32_e64 s37, v39, v39
	v_permlanex16_b32 v41, v38, s100, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v37, v41, v38, v208
	v_perm_b32 v38, v41, v38, v209
	v_mov_b16_e64 v41.h, v217.l
	v_mov_b16_e32 v41.l, v40.h
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v40, v40, v41, 0x7fff
	v_mov_b16_e64 v41.h, v217.l
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v46, v154 offset:6528
	ds_load_u16_d16_hi v134, v154 offset:6592
	ds_load_u16_d16_hi v47, v154 offset:6784
	ds_load_u16_d16_hi v135, v154 offset:6848
	ds_load_u16_d16_hi v48, v154 offset:7040
	ds_load_u16_d16_hi v136, v154 offset:7104
	ds_load_u16_d16_hi v49, v154 offset:7296
	ds_load_u16_d16_hi v137, v154 offset:7360
	ds_load_u16_d16_hi v50, v154 offset:7552
	ds_load_u16_d16_hi v138, v154 offset:7616
	ds_load_u16_d16_hi v51, v154 offset:7808
	ds_load_u16_d16_hi v139, v154 offset:7872
	ds_load_u16_d16_hi v52, v154 offset:8064
	ds_load_u16_d16_hi v140, v154 offset:8128
	ds_load_u16_d16 v217, v154 offset:6496
	ds_load_u16_d16 v218, v154 offset:6752
	ds_load_u16_d16 v219, v154 offset:7008
	ds_load_u16_d16 v220, v154 offset:7264
	ds_load_u16_d16 v221, v154 offset:7520
	ds_load_u16_d16 v222, v154 offset:7776
	ds_load_u16_d16 v223, v154 offset:8032
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v41.l, v39.h
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v113, v154 offset:6560
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v217, v154 offset:6624
	ds_load_u16_d16_hi v114, v154 offset:6816
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v218, v154 offset:6880
	ds_load_u16_d16_hi v115, v154 offset:7072
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v219, v154 offset:7136
	ds_load_u16_d16_hi v116, v154 offset:7328
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v220, v154 offset:7392
	ds_load_u16_d16_hi v117, v154 offset:7584
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v221, v154 offset:7648
	ds_load_u16_d16_hi v118, v154 offset:7840
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v222, v154 offset:7904
	ds_load_u16_d16_hi v119, v154 offset:8096
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v223, v154 offset:8160
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v41, 1, v41
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v39, v41, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v41, v40, s100, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v41, v40, v208
	v_perm_b32 v40, v41, v40, v209
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[45:52], v[33:40], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[133:140], v[33:40], v[9:16]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[112:119], v[33:40], v[25:32]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[216:223], v[33:40], v[1:8]
.Ltmp30:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v76, v76
	v_max_f32_e32 v52, v72, v72
	v_max_f32_e32 v33, v84, v84
	v_max_f32_e32 v34, v88, v88
	v_max3_f32 v35, v82, v87, v83
	v_max_f32_e32 v36, v43, v36
	v_max3_f32 v43, v77, v73, v78
	v_mov_b32_e32 v216, v215
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v36, v43, v44, v36
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v43, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v43
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v43, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v36, v36, v43
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v43, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v43, v36, v43 :: v_dual_max_f32 v36, v146, v146
.Ltmp37:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v146, v36, v43
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v68, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp39:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v44, v77, v146
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v52, v36
	v_max3_f32 v52, v69, v65, v70
.Ltmp41:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v48, v73, v146
	v_sub_f32_e32 v46, v79, v146
	v_sub_f32_e32 v50, v75, v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v36, v52, v53, v36
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v52, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v52, v52 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v52, v52, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v36, v36, v52 :: v_dual_sub_f32 v45, v78, v146
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v52, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v52, v52 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v49, v74, v146 :: v_dual_max_f32 v52, v52, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v52
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v52, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v52, v52 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v52, v52, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v52, v36, v52
.Ltmp50:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v36, v147, v147
	v_max_f32_e32 v147, v36, v52
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v34, v33
	v_max3_f32 v34, v85, v81, v86
	v_max_f32_e32 v36, v60, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp52:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v56, v72, v147
	v_sub_f32_e32 v54, v70, v147
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v33, v34, v35, v33
.Ltmp54:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v66, v147
	v_sub_f32_e32 v53, v69, v147
	v_sub_f32_e32 v68, v68, v147
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v69, v64, v64 :: v_dual_mov_b32 v34, v33
	v_max3_f32 v70, v58, v63, v59
	v_max_f32_e32 v36, v69, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v34 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v69, v61, v57, v62
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max3_f32 v36, v69, v70, v36
	v_max_f32_e32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v69, v36 :: v_dual_mov_b32 v34, v33
	v_mov_b32_dpp v69, v69 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v34, v34 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v69, v69, v69 :: v_dual_max_f32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v36, v36, v69 :: v_dual_max_f32 v33, v33, v34
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v69, v36 :: v_dual_mov_b32 v34, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v69, v69 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v69, v69, v69 :: v_dual_max_f32 v34, v34, v34
	v_dual_max_f32 v36, v36, v69 :: v_dual_max_f32 v33, v33, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp62:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v34, v145, v145 :: v_dual_mov_b32 v69, v36
	v_max_f32_e32 v145, v34, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp64:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v86, v145
	v_sub_f32_e32 v37, v87, v145
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v69, v69, v69
.Ltmp66:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v85, v145
	v_sub_f32_e32 v40, v82, v145
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v37, v37
.Ltmp67:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v36, v36, v69
.Ltmp68:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v69, v148, v148
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v41, v83, v145
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v88, v145
	v_sub_f32_e32 v42, v84, v145
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_max_f32_e32 v148, v69, v36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v81, v145
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s17
	v_cndmask_b32_e64 v37, 0, v37, s16
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v62, v62, v148
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s18
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v57, v57, v148
	v_sub_f32_e32 v58, v58, v148
	v_sub_f32_e32 v60, v60, v148
	v_sub_f32_e32 v61, v61, v148
	v_sub_f32_e32 v63, v63, v148
	v_sub_f32_e32 v64, v64, v148
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v39, 0, v39, s35
.Ltmp69:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v39
.Ltmp70:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s33
.Ltmp71:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v39
.Ltmp72:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v41
	v_exp_f32_e32 v41, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp74:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v41, 0, v41, s23
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v39
.Ltmp76:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v42
	v_exp_f32_e32 v42, v60
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s31
	v_cndmask_b32_e64 v42, 0, v42, s19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp77:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v38, v39
.Ltmp78:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v50
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v37, v38
.Ltmp80:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v80, v146
	v_mov_b32_e32 v38, v96
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v37, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp81:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp82:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
.Ltmp84:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp86:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v51, v76, v146 :: v_dual_add_f32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v40, v51
.Ltmp87:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp88:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp90:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v65, v147
	v_sub_f32_e32 v55, v71, v147
	v_sub_f32_e32 v67, v67, v147
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v96, v34, v35
.Ltmp93:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v44
	v_exp_f32_e32 v35, v48
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s14
	v_cndmask_b32_e64 v35, 0, v35, s30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp94:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp95:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v45
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp96:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v37
.Ltmp97:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v46
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp99:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s12
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v39
.Ltmp101:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s11
.Ltmp102:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v39, v39, v40
.Ltmp103:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v37, v39
	v_mov_b32_e32 v39, v98
.Ltmp105:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v66
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp107:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s25
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp109:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s24
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp113:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v59, v59, v148 :: v_dual_add_f32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp114:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v98, v34, v35
.Ltmp116:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v53
	v_exp_f32_e32 v35, v65
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v35, 0, v35, s26
.Ltmp117:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp118:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s9
.Ltmp119:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v37
.Ltmp120:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp122:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v40
.Ltmp124:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v56
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp125:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v40, v41
.Ltmp126:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v59
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v37, v40
.Ltmp128:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v58
	v_mov_b32_e32 v40, v97
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s21
	v_cndmask_b32_e64 v37, 0, v37, s20
.Ltmp129:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v97, v34, v35
.Ltmp136:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v61
	v_exp_f32_e32 v35, v57
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v35, 0, v35, s22
.Ltmp137:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp138:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s5
.Ltmp139:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v37
.Ltmp140:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp141:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp142:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp143:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v41
.Ltmp144:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v64
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v41, s3
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v213
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp145:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v42
	v_add_f32_e32 v35, v37, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v37, v99 :: v_dual_add_f32 v34, v34, v35
.Ltmp146:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp148:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp149:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp150:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp151:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v99, v34, v35 :: v_dual_max_f32 v34, v213, v213
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp152:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v34, v34, v33
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v33, v213, v34
	v_mov_b32_e32 v213, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v33, v33
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v33, 0, v33, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v214
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v96, v38, v33
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v33, v214, v214
	v_max_f32_e32 v33, v33, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v35, v214, v33 :: v_dual_mov_b32 v214, v33
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v35, 0, v35, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v212
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_dual_fmac_f32 v98, v39, v35 :: v_dual_max_f32 v35, v212, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v35, v35, v52
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v38, v212, v35
	v_mov_b32_e32 v212, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v38, v38
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v38, 0, v38, s3
	v_cmp_neq_f32_e64 s3, 0xff800000, v211
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_dual_fmac_f32 v97, v40, v38 :: v_dual_max_f32 v38, v211, v211
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v36, v38, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v38, v211, v36 :: v_dual_mov_b32 v211, v36
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v38, 0, v38, s3
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_add_i32 s3, s101, 64
	s_cmpk_lt_u32 s101, 0x7c0
	s_mov_b32 s101, s3
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v99, v37, v38
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	scratch_load_b32 v35, off, off offset:72 ; 4-byte Folded Reload
	v_lshrrev_b32_e32 v0, 4, v0
	v_and_b32_e32 v33, 0x80, v149
	v_add_nc_u32_e32 v34, 0, v152
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v0, 4, v0
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v0, v34, v33, v0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v35, 0, v35
	ds_store_2addr_b64 v35, v[96:97], v[98:99] offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v0, v0, v17
	v_div_scale_f32 v35, null, v0, v0, v18
	v_div_scale_f32 v37, null, v0, v0, v19
	v_div_scale_f32 v39, null, v0, v0, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v33
	v_rcp_f32_e32 v46, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v37
	v_div_scale_f32 v41, null, v0, v0, v21
	v_rcp_f32_e32 v48, v39
	v_div_scale_f32 v43, null, v0, v0, v22
	v_rcp_f32_e32 v49, v41
	v_div_scale_f32 v34, vcc_lo, v17, v0, v17
	v_fma_f32 v54, -v33, v45, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v50, v43
	v_fma_f32 v55, -v35, v46, 1.0
	v_fma_f32 v56, -v37, v47, 1.0
	v_fma_f32 v57, -v39, v48, 1.0
	v_fmac_f32_e32 v45, v54, v45
	v_div_scale_f32 v36, s0, v18, v0, v18
	v_fmac_f32_e32 v46, v55, v46
	v_div_scale_f32 v38, s1, v19, v0, v19
	v_fmac_f32_e32 v47, v56, v47
	v_div_scale_f32 v40, s3, v20, v0, v20
	v_fma_f32 v58, -v41, v49, 1.0
	v_fmac_f32_e32 v48, v57, v48
	v_dual_mul_f32 v54, v34, v45 :: v_dual_mul_f32 v55, v36, v46
	v_fma_f32 v59, -v43, v50, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v56, v38, v47 :: v_dual_mul_f32 v57, v40, v48
	v_fmac_f32_e32 v49, v58, v49
	v_fma_f32 v58, -v33, v54, v34
	v_div_scale_f32 v42, s4, v21, v0, v21
	v_fmac_f32_e32 v50, v59, v50
	v_fma_f32 v59, -v35, v55, v36
	v_fma_f32 v60, -v37, v56, v38
	v_fma_f32 v61, -v39, v57, v40
	v_fmac_f32_e32 v54, v58, v45
	v_div_scale_f32 v44, null, v0, v0, v23
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
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v51, s5, v22, v0, v22
	v_div_fmas_f32 v34, v34, v46, v55
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v17, v33, v0, v17
	v_div_fmas_f32 v35, v35, v47, v56
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v52, null, v0, v0, v24
	v_div_fmas_f32 v33, v36, v48, v57
	v_fma_f32 v36, -v44, v53, 1.0
	v_div_fixup_f32 v18, v34, v0, v18
	v_mul_f32_e32 v34, v51, v50
	v_rcp_f32_e32 v37, v52
	v_fma_f32 v58, -v41, v62, v42
	v_fmac_f32_e32 v53, v36, v53
	v_div_scale_f32 v36, null, v0, v0, v25
	v_div_fixup_f32 v20, v33, v0, v20
	v_fma_f32 v33, -v43, v34, v51
	v_div_fixup_f32 v19, v35, v0, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v40, v36
	v_div_scale_f32 v35, s1, v23, v0, v23
	v_fma_f32 v38, -v52, v37, 1.0
	v_fmac_f32_e32 v34, v33, v50
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v33, v35, v53
	v_div_scale_f32 v46, null, v0, v0, v26
	v_fmac_f32_e32 v37, v38, v37
	v_fma_f32 v45, -v36, v40, 1.0
	v_div_scale_f32 v38, s3, v24, v0, v24
	v_div_scale_f32 v47, null, v0, v0, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v40, v45, v40
	v_div_scale_f32 v45, s4, v25, v0, v25
	v_fmac_f32_e32 v62, v58, v49
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v41, v62, v42
	v_fma_f32 v41, -v43, v34, v51
	v_fma_f32 v42, -v44, v33, v35
	v_mul_f32_e32 v43, v38, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v49, v62
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v33, v42, v53
	v_div_fmas_f32 v34, v41, v50, v34
	v_rcp_f32_e32 v41, v46
	v_fma_f32 v42, -v52, v43, v38
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v21, v39, v0, v21
	v_div_fixup_f32 v22, v34, v0, v22
	v_fma_f32 v34, -v44, v33, v35
	v_fmac_f32_e32 v43, v42, v37
	v_mul_f32_e32 v35, v45, v40
	v_div_scale_f32 v42, null, v0, v0, v27
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v46, v41, 1.0
	v_div_fmas_f32 v33, v34, v53, v33
	v_fma_f32 v34, -v52, v43, v38
	v_fma_f32 v38, -v36, v35, v45
	v_div_scale_f32 v44, s1, v26, v0, v26
	v_fmac_f32_e32 v41, v39, v41
	v_rcp_f32_e32 v39, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v35, v38, v40
	v_div_fixup_f32 v23, v33, v0, v23
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v38, v44, v41
	v_div_fmas_f32 v34, v34, v37, v43
	v_fma_f32 v33, -v36, v35, v45
	v_div_scale_f32 v45, null, v0, v0, v29
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v37, v47
	v_div_fmas_f32 v33, v33, v40, v35
	v_rcp_f32_e32 v35, v45
	v_fma_f32 v43, -v42, v39, 1.0
	v_div_fixup_f32 v24, v34, v0, v24
	v_fma_f32 v34, -v46, v38, v44
	v_div_scale_f32 v36, s3, v27, v0, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v39, v43, v39
	v_div_fixup_f32 v25, v33, v0, v25
	v_fma_f32 v43, -v47, v37, 1.0
	v_fmac_f32_e32 v38, v34, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v45, v35, 1.0
	v_mul_f32_e32 v34, v36, v39
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v40, s4, v28, v0, v28
	v_fmac_f32_e32 v35, v49, v35
	v_fmac_f32_e32 v37, v43, v37
	v_div_scale_f32 v43, null, v0, v0, v30
	v_fma_f32 v33, -v46, v38, v44
	v_fma_f32 v44, -v42, v34, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v48, v43
	v_fmac_f32_e32 v34, v44, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v43, v48, 1.0
	v_fmac_f32_e32 v48, v44, v48
	v_div_fmas_f32 v33, v33, v41, v38
	v_div_scale_f32 v41, s1, v29, v0, v29
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v26, v33, v0, v26
	v_fma_f32 v33, -v42, v34, v36
	v_mul_f32_e32 v36, v41, v35
	v_mul_f32_e32 v46, v40, v37
	v_div_scale_f32 v42, null, v0, v0, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v39, v34
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v38, -v47, v46, v40
	v_fma_f32 v39, -v45, v36, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v27, v33, v0, v27
	v_fmac_f32_e32 v46, v38, v37
	v_div_scale_f32 v38, s5, v30, v0, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v39, v35
	v_fma_f32 v34, -v47, v46, v40
	v_div_scale_f32 v47, null, v0, v0, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v45, v36, v41
	v_rcp_f32_e32 v40, v42
	v_div_fmas_f32 v34, v34, v37, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v37, v47
	v_mul_f32_e32 v44, v38, v48
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v45, null, v0, v0, v10
	v_div_fmas_f32 v33, v33, v35, v36
	v_fma_f32 v39, -v43, v44, v38
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v42, v40, 1.0
	v_div_fixup_f32 v28, v34, v0, v28
	v_div_scale_f32 v34, s3, v31, v0, v31
	v_fmac_f32_e32 v44, v39, v48
	v_fma_f32 v39, -v47, v37, 1.0
	v_div_fixup_f32 v29, v33, v0, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v43, v44, v38
	v_div_scale_f32 v38, null, v0, v0, v9
	v_fmac_f32_e32 v37, v39, v37
	v_div_scale_f32 v39, s1, v32, v0, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v35, v35, v48, v44
	v_rcp_f32_e32 v41, v38
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v48, null, v0, v0, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v30, v35, v0, v30
	v_rcp_f32_e32 v35, v45
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v50, v48
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v45, v35, 1.0
	v_fmac_f32_e32 v35, v46, v35
	v_mul_f32_e32 v36, v34, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v42, v36, v34
	v_fmac_f32_e32 v36, v43, v40
	v_fma_f32 v43, -v38, v41, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v42, v36, v34
	v_div_scale_f32 v42, null, v0, v0, v11
	v_fmac_f32_e32 v41, v43, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v34, v34, v40, v36
	v_rcp_f32_e32 v43, v42
	v_div_scale_f32 v40, s3, v10, v0, v10
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v31, v34, v0, v31
	v_mul_f32_e32 v49, v40, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v42, v43, 1.0
	v_dual_mul_f32 v44, v39, v37 :: v_dual_fmac_f32 v43, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v47, v44, v39
	v_div_scale_f32 v46, s5, v11, v0, v11
	v_fmac_f32_e32 v44, v33, v37
	v_div_scale_f32 v33, s4, v9, v0, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v47, v44, v39
	v_mul_f32_e32 v39, v33, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v36, v37, v44
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 1044 48                       ; attention.py:1044:48
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v48, v39, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v44, v38
	v_fma_f32 v35, -v40, v42, 1.0
	v_fma_f32 v43, -v37, v33, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48                       ; attention.py:1044:48
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v0, v0, v2
	v_div_fmas_f32 v33, v36, v34, v33
	v_div_scale_f32 v36, s1, v15, v0, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v47, v41
	v_mul_f32_e32 v39, v35, v42
	v_div_scale_f32 v34, null, v0, v0, v1
	v_div_fixup_f32 v13, v33, v0, v13
	v_fma_f32 v33, -v43, v45, 1.0
	v_fma_f32 v37, -v40, v39, v35
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v48, s4, v1, v0, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v41, v47, 1.0
	v_fmac_f32_e32 v45, v33, v45
	v_div_scale_f32 v33, s3, v16, v0, v16
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v47, v49, v47
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v49, s5, v2, v0, v2
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
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v14, v35, v0, v14
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	.loc	1 1044 48                       ; attention.py:1044:48
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
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s5, v8, v0, v8
	v_dual_mul_f32 v52, v48, v41 :: v_dual_fmac_f32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v33
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
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
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	s_mov_b32 s4, s86
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v35, v0, v6
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s81, v124
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v0, v7
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s5, s87, 0xffff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 1044 19                       ; attention.py:1044:19
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
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	scratch_load_b32 v32, off, off          ; 4-byte Folded Reload
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s81, v254
	v_cmp_gt_i32_e64 s1, s81, v255
	v_cmp_gt_i32_e64 s3, s81, v120
	.loc	1 1046 24                       ; attention.py:1046:24
	s_waitcnt vmcnt(0)
	v_mul_lo_u32 v32, s81, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v33, v32, v124, 2
	v_add_lshl_u32 v34, v32, v144, 2
	v_add_lshl_u32 v35, v32, v143, 2
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	s_clause 0x2
	buffer_store_b32 v8, v33, s[4:7], 0 offen
	buffer_store_b32 v17, v34, s[4:7], 0 offen
	buffer_store_b32 v18, v35, s[4:7], 0 offen
	v_add_lshl_u32 v8, v32, v142, 2
	v_add_lshl_u32 v17, v32, v141, 2
	v_add_lshl_u32 v18, v32, v122, 2
	v_add_lshl_u32 v33, v32, v121, 2
	v_add_lshl_u32 v34, v32, v151, 2
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
	v_add_lshl_u32 v8, v32, v254, 2
	v_add_lshl_u32 v17, v32, v253, 2
	v_add_lshl_u32 v18, v32, v252, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v19, v32, v251, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v17, 0x80000000, v17
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	v_add_lshl_u32 v20, v32, v123, 2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x2
	buffer_store_b32 v24, v8, s[4:7], 0 offen
	buffer_store_b32 v25, v17, s[4:7], 0 offen
	buffer_store_b32 v26, v18, s[4:7], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v17, off, off offset:68
	scratch_load_b32 v18, off, off offset:64
	buffer_store_b32 v27, v19, s[4:7], 0 offen
	scratch_load_b32 v19, off, off offset:60 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v17, v32, v17, 2
	v_cndmask_b32_e32 v8, 0x80000000, v20, vcc_lo
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v18, v32, v18, 2
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	buffer_store_b32 v28, v8, s[4:7], 0 offen
	v_add_lshl_u32 v8, v32, v255, 2
	buffer_store_b32 v29, v17, s[4:7], 0 offen
	scratch_load_b32 v17, off, off offset:56 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v19, v32, v19, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v17, v32, v17, 2
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x2
	buffer_store_b32 v30, v18, s[4:7], 0 offen
	buffer_store_b32 v31, v19, s[4:7], 0 offen
	buffer_store_b32 v9, v8, s[4:7], 0 offen
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v8, off, off offset:52
	scratch_load_b32 v18, off, off offset:44
	scratch_load_b32 v19, off, off offset:40
	v_cndmask_b32_e32 v9, 0x80000000, v17, vcc_lo
	scratch_load_b32 v17, off, off offset:48 ; 4-byte Folded Reload
	buffer_store_b32 v10, v9, s[4:7], 0 offen
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v8, v32, v8, 2
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v18, v32, v18, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v17, v32, v17, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v17
	buffer_store_b32 v11, v8, s[4:7], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v8, off, off offset:36
	scratch_load_b32 v11, off, off offset:28
	v_add_lshl_u32 v19, v32, v19, 2
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_cndmask_b32 v10, 0x80000000, v18 :: v_dual_cndmask_b32 v17, 0x80000000, v19
	s_clause 0x2
	buffer_store_b32 v12, v9, s[4:7], 0 offen
	buffer_store_b32 v13, v10, s[4:7], 0 offen
	buffer_store_b32 v14, v17, s[4:7], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v9, off, off offset:32
	scratch_load_b32 v12, off, off offset:24
	v_add_lshl_u32 v10, v32, v120, 2
	s_waitcnt vmcnt(3)
	v_add_lshl_u32 v8, v32, v8, 2
	s_waitcnt vmcnt(2)
	v_add_lshl_u32 v11, v32, v11, 2
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v9, v32, v9, 2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v12, v32, v12, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
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
	.loc	1 691 5                         ; attention.py:691:5
	s_endpgm
.Ltmp153:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 80
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 102
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 80
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 19052
; TotalNumSgprs: 104
; NumVgprs: 256
; ScratchSize: 80
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
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
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
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
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
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
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
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
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
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
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
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
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
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 80
    .sgpr_count:     104
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bf16_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 19
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
