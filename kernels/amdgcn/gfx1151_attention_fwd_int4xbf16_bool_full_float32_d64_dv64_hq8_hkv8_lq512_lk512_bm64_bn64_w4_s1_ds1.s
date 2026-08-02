	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[84:87], s[0:1], 0x60
	s_load_b64 s[4:5], s[0:1], 0x70
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v34, 1, v0
	s_load_b256 s[68:75], s[0:1], 0x0
	v_dual_mov_b32 v44, 0x7632 :: v_dual_lshlrev_b32 v35, 4, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s6, s2, 6
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s7, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s6, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v86, 0xff800000 :: v_dual_and_b32 v33, 16, v35
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s8, s6, s7
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v40, 0x60, v0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v1
	v_dual_mov_b32 v162, 0xff800000 :: v_dual_and_b32 v41, 15, v0
	s_mov_b32 s95, 0x31027000
	s_mov_b32 s94, 0x7ffffffe
	v_dual_mov_b32 v161, 0xff800000 :: v_dual_and_b32 v46, 3, v0
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v2, s84, v34
	s_mul_i32 s9, s84, s8
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s84, v33
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s93, s69, 0xffff
	s_mov_b32 s92, s68
	v_dual_mov_b32 v20, v17 :: v_dual_and_b32 v49, 24, v0
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, s2, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 773 26                        ; attention.py:773:26
	v_add3_u32 v1, v2, v33, s9
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 1, v40
	v_dual_mov_b32 v21, v17 :: v_dual_and_b32 v50, 12, v0
	v_dual_mov_b32 v26, v17 :: v_dual_and_b32 v53, 8, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v19, v17 :: v_dual_and_b32 v84, 0x7c, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v45, 2, v0
	v_bfe_i32 v54, v0, 3, 1
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[36:39], v1, s[92:95], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, v2, v41
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s93, s75, 0xffff
	s_mov_b32 s92, s74
	v_dual_mov_b32 v28, v17 :: v_dual_and_b32 v55, 7, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v82, s8, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s6, v1
	v_mov_b32_e32 v43, 0x5410
	v_dual_mov_b32 v85, 0xff800000 :: v_dual_lshlrev_b32 v48, 1, v0
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v2, 1, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v1
	v_dual_mov_b32 v18, v17 :: v_dual_and_b32 v47, 16, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v83, v0, 4, 1
	v_dual_mov_b32 v23, v17 :: v_dual_lshlrev_b32 v52, 5, v0
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_dual_mov_b32 v24, v17 :: v_dual_lshlrev_b32 v87, 2, v0
	v_dual_mov_b32 v30, v17 :: v_dual_lshlrev_b32 v57, 4, v46
	buffer_load_u16 v42, v1, s[92:95], 0 offen
	v_dual_mov_b32 v31, v17 :: v_dual_lshlrev_b32 v60, 2, v40
	v_mov_b32_e32 v32, v17
	v_dual_mov_b32 v9, v17 :: v_dual_lshlrev_b32 v90, 5, v46
	v_dual_mov_b32 v12, v17 :: v_dual_lshlrev_b32 v61, 11, v46
	v_dual_mov_b32 v13, v17 :: v_dual_lshlrev_b32 v46, 4, v53
	v_xor_b32_e32 v89, v35, v49
	v_lshlrev_b32_e32 v35, 1, v50
	v_dual_mov_b32 v1, v17 :: v_dual_and_b32 v54, 0x410, v54
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v56, 1, v84
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v45, s6, v45
	v_mul_u32_u24_e32 v55, 0x90, v55
	v_dual_mov_b32 v29, v17 :: v_dual_and_b32 v52, 0x260, v52
	v_dual_mov_b32 v10, v17 :: v_dual_lshlrev_b32 v59, 8, v50
	v_dual_mov_b32 v11, v17 :: v_dual_lshlrev_b32 v40, 3, v40
	v_dual_mov_b32 v14, v17 :: v_dual_lshlrev_b32 v53, 6, v47
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_and_or_b32 v58, v48, 30, v83
	v_lshl_or_b32 v91, v41, 5, v35
	v_or_b32_e32 v35, v60, v35
	v_and_or_b32 v46, v87, 16, v46
	s_clause 0x1
	s_load_b64 s[96:97], s[0:1], 0x20
	s_load_b128 s[88:91], s[0:1], 0x30
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 818 13                        ; attention.py:818:13
	v_or_b32_e32 v34, s7, v34
	v_xor_b32_e32 v92, v55, v54
	v_or_b32_e32 v54, 32, v45
	v_or_b32_e32 v55, s7, v56
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	v_dual_mov_b32 v22, v17 :: v_dual_and_b32 v51, 48, v0
	v_dual_mov_b32 v25, v17 :: v_dual_lshlrev_b32 v88, 3, v41
	v_dual_mov_b32 v3, v17 :: v_dual_lshlrev_b32 v58, 2, v58
	s_add_i32 s0, s3, s0
	v_or3_b32 v94, v59, v52, v35
	v_or3_b32 v35, v46, v53, v40
	v_dual_mov_b32 v16, v17 :: v_dual_lshlrev_b32 v63, 1, v83
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s8, s0, 3
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, 0x200, v45
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[73:74], null, s84, v34, v[33:34]
	v_mul_lo_u32 v33, s5, v45
	v_mul_lo_u32 v34, s5, v54
	v_mul_lo_u32 v45, s85, v55
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	v_dual_mov_b32 v27, v17 :: v_dual_and_b32 v48, 0x80, v48
	v_lshrrev_b32_e32 v49, 1, v51
	v_lshl_or_b32 v41, v51, 6, v88
	v_lshl_or_b32 v51, v50, 9, v90
	v_lshl_or_b32 v50, v50, 3, v60
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v56, 4, v58
	v_or3_b32 v99, v35, v90, v61
	v_xor_b32_e32 v35, 8, v94
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_or_b32 v93, s3, 10, v63
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s3, s87, s8
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s4, s4, s1
	v_dual_mov_b32 v15, v17 :: v_dual_add_nc_u32 v62, 0, v47
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s3, s3, s4
	v_dual_mov_b32 v5, v17 :: v_dual_add_nc_u32 v48, 0, v48
	v_xor_b32_e32 v41, v41, v49
	v_xor_b32_e32 v40, v51, v50
	v_add3_u32 v133, s3, v33, v57
	v_add3_u32 v134, s3, v34, v57
	v_add_nc_u32_e32 v33, s85, v45
	v_add_nc_u32_e32 v136, 0, v35
	v_dual_mov_b32 v2, v17 :: v_dual_add_nc_u32 v101, v62, v40
	v_dual_mov_b32 v95, v17 :: v_dual_add_nc_u32 v100, v48, v41
	v_xor_b32_e32 v40, 16, v94
	v_xor_b32_e32 v41, 24, v94
	v_lshl_add_u32 v153, v33, 1, 16
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s3, 0, v47
	.loc	1 818 13                        ; attention.py:818:13
	v_lshlrev_b32_e32 v135, 1, v45
	v_add_nc_u32_e32 v137, 0, v40
	v_add_nc_u32_e32 v138, 0, v41
	v_xor_b32_e32 v40, 64, v99
	v_xor_b32_e32 v41, 0x60, v99
	v_cndmask_b32_e64 v43, 0x1054, v43, s3
	v_cndmask_b32_e64 v44, 0x3276, v44, s3
	v_xor_b32_e32 v60, v90, v84
	v_xor_b32_e32 v76, 0x1050, v92
	v_add_nc_u32_e32 v155, 0, v40
	v_add_nc_u32_e32 v156, 0, v41
	v_lshl_or_b32 v41, v43, 8, v43
	v_xor_b32_e32 v64, 8, v89
	v_xor_b32_e32 v63, 8, v91
	v_or_b32_e32 v97, v60, v61
	v_xor_b32_e32 v46, 16, v92
	v_xor_b32_e32 v49, 32, v92
	v_xor_b32_e32 v50, 48, v92
	v_xor_b32_e32 v51, 64, v92
	v_xor_b32_e32 v52, 0x50, v92
	v_xor_b32_e32 v53, 0x60, v92
	v_xor_b32_e32 v59, 0x70, v92
	v_xor_b32_e32 v60, 0x820, v92
	v_xor_b32_e32 v75, 0x1040, v92
	v_xor_b32_e32 v77, 0x1060, v92
	v_add_nc_u32_e32 v120, 0, v76
	v_dual_mov_b32 v6, v17 :: v_dual_add_nc_u32 v105, 0, v46
	v_dual_mov_b32 v7, v17 :: v_dual_add_nc_u32 v98, 0, v64
	v_dual_mov_b32 v8, v17 :: v_dual_add_nc_u32 v107, 0, v50
	v_dual_mov_b32 v96, v17 :: v_dual_add_nc_u32 v109, 0, v52
	v_xor_b32_e32 v65, 16, v91
	v_xor_b32_e32 v66, 24, v91
	v_xor_b32_e32 v67, 0x830, v92
	v_xor_b32_e32 v68, 0x810, v92
	v_xor_b32_e32 v69, 0x860, v92
	v_xor_b32_e32 v70, 0x870, v92
	v_xor_b32_e32 v71, 0x840, v92
	v_xor_b32_e32 v72, 0x850, v92
	v_xor_b32_e32 v78, 0x1070, v92
	v_xor_b32_e32 v79, 0x1010, v92
	v_xor_b32_e32 v80, 0x1020, v92
	v_xor_b32_e32 v81, 0x1030, v92
	v_xor_b32_e32 v126, 0x1860, v92
	v_xor_b32_e32 v127, 0x1870, v92
	v_xor_b32_e32 v128, 0x1840, v92
	v_xor_b32_e32 v129, 0x1850, v92
	v_xor_b32_e32 v130, 0x1820, v92
	v_xor_b32_e32 v64, 0x1830, v92
	v_xor_b32_e32 v132, 0x1810, v92
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s5, s86, 0x3fb8aa3b
	v_add_nc_u32_e32 v106, 0, v49
	v_add_nc_u32_e32 v108, 0, v51
	v_add_nc_u32_e32 v110, 0, v53
	v_add_nc_u32_e32 v111, 0, v59
	v_add_nc_u32_e32 v112, 0, v60
	v_add_nc_u32_e32 v119, 0, v75
	v_add_nc_u32_e32 v121, 0, v77
	v_xor_b32_e32 v46, 0x90, v97
	v_xor_b32_e32 v48, 0x120, v97
	v_xor_b32_e32 v49, 0x1b0, v97
	v_xor_b32_e32 v50, 0x240, v97
	v_xor_b32_e32 v51, 0x2d0, v97
	v_xor_b32_e32 v52, 0x360, v97
	v_xor_b32_e32 v53, 0x3f0, v97
	v_xor_b32_e32 v54, 0x410, v97
	v_xor_b32_e32 v55, 0x530, v97
	v_xor_b32_e32 v59, 0x5a0, v97
	v_xor_b32_e32 v60, 0x650, v97
	v_xor_b32_e32 v61, 0x6c0, v97
	v_xor_b32_e32 v62, 0x770, v97
	v_dual_mov_b32 v4, v17 :: v_dual_add_nc_u32 v103, 0, v65
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s85, v57
	v_dual_mov_b32 v163, 0xff800000 :: v_dual_add_nc_u32 v104, 0, v66
	v_add_nc_u32_e32 v113, 0, v67
	v_add_nc_u32_e32 v114, 0, v68
	v_add_nc_u32_e32 v115, 0, v69
	v_add_nc_u32_e32 v116, 0, v70
	v_add_nc_u32_e32 v117, 0, v71
	v_add_nc_u32_e32 v118, 0, v72
	v_add_nc_u32_e32 v122, 0, v78
	v_add_nc_u32_e32 v123, 0, v79
	v_add_nc_u32_e32 v124, 0, v80
	v_add_nc_u32_e32 v125, 0, v81
	v_add_nc_u32_e32 v126, 0, v126
	v_add_nc_u32_e32 v127, 0, v127
	v_add_nc_u32_e32 v128, 0, v128
	v_add_nc_u32_e32 v129, 0, v129
	v_add_nc_u32_e32 v130, 0, v130
	v_add_nc_u32_e32 v131, 0, v64
	v_add_nc_u32_e32 v132, 0, v132
	v_add_nc_u32_e32 v139, 0, v46
	v_add_nc_u32_e32 v140, 0, v48
	v_add_nc_u32_e32 v141, 0, v49
	v_add_nc_u32_e32 v142, 0, v50
	v_add_nc_u32_e32 v143, 0, v51
	v_add_nc_u32_e32 v144, 0, v52
	v_add_nc_u32_e32 v145, 0, v53
	v_add_nc_u32_e32 v146, 0, v54
	v_add_nc_u32_e32 v147, 0, v55
	v_add_nc_u32_e32 v148, 0, v59
	v_add_nc_u32_e32 v149, 0, v60
	v_add_nc_u32_e32 v150, 0, v61
	v_add_nc_u32_e32 v151, 0, v62
	s_mov_b32 s76, 0
	s_and_b32 s71, s71, 0xffff
	s_mov_b32 s69, 0x76543210
	s_mov_b32 s98, s94
	s_mov_b32 s99, s95
	s_mov_b32 s77, s76
	s_mov_b32 s78, s76
	s_mov_b32 s79, s76
	s_mov_b32 s80, s76
	s_mov_b32 s81, s76
	s_mov_b32 s82, s76
	s_mov_b32 s83, s76
	s_mov_b32 s100, s76
	s_waitcnt lgkmcnt(0)
	s_and_b32 s97, s97, 0xffff
	s_and_b32 s73, s73, 0xffff
	.loc	1 818 13                        ; attention.py:818:13
	s_lshl_b32 s86, s85, 7
	s_lshl_b32 s84, s84, 6
	s_mov_b32 s74, s94
	s_mov_b32 s75, s95
	s_mov_b32 s92, s70
	s_mov_b32 s93, s71
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v34, v58, v36
	ds_bpermute_b32 v35, v56, v36
	v_xor_b32_e32 v36, 32, v99
	ds_bpermute_b32 v33, v58, v37
	ds_bpermute_b32 v37, v56, v37
	ds_bpermute_b32 v45, v58, v38
	ds_bpermute_b32 v38, v56, v38
	v_add_nc_u32_e32 v154, 0, v36
	ds_bpermute_b32 v36, v58, v39
	ds_bpermute_b32 v39, v56, v39
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v74, v35, v34, s3
	v_cndmask_b32_e64 v76, v34, v35, s3
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v40, 16, v42
	v_lshl_or_b32 v42, v44, 8, v44
	v_and_b32_e32 v34, 0x540054, v41
	v_add_nc_u32_e32 v102, 0, v63
	v_xor_b32_e32 v63, 0x7e0, v97
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v75, v37, v33, s3
	v_and_b32_e32 v35, 0x760076, v42
	v_cndmask_b32_e64 v77, v33, v37, s3
	v_lshl_or_b32 v33, v34, 4, v34
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v157, s5, v40 :: v_dual_add_nc_u32 v152, 0, v63
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v34, v35, 4, v35
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v78, v38, v45, s3
	v_cndmask_b32_e64 v80, v45, v38, s3
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v79, v39, v36, s3
	v_cndmask_b32_e64 v81, v36, v39, s3
	v_and_b32_e32 v158, 0x5040504, v33
	v_and_b32_e32 v159, 0x7060706, v34
	s_branch .LBB0_2
.LBB0_1:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 26 is_stmt 0                ; attention.py:0:26
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v196, 8, v70
	v_lshrrev_b32_e32 v197, 8, v69
	v_mov_b16_e64 v160.l, 0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v35, v35
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v198, 8, v72
	v_and_b16 v164.h, 0xff, v69.l
	v_and_b16 v165.h, 0xff, v197.l
	v_and_b16 v166.h, 0xff, v69.h
	v_lshrrev_b32_e32 v197, 24, v69
	v_and_b16 v69.l, 0xff, v70.l
	v_lshrrev_b32_e32 v201, 8, v71
	v_and_b16 v69.h, 0xff, v196.l
	v_lshrrev_b32_e32 v196, 24, v70
	v_and_b16 v70.l, 0xff, v71.l
	v_and_b16 v168.h, 0xff, v71.h
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v189.h, v188.l
	v_mov_b16_e64 v188.l, v160.l
	v_mov_b16_e64 v188.h, v187.l
	v_mov_b16_e64 v183.h, v182.l
	v_mov_b16_e64 v182.l, v160.l
	v_mov_b16_e64 v182.h, v181.l
	v_mov_b16_e64 v179.h, v178.l
	v_mov_b16_e64 v178.l, v160.l
	v_mov_b16_e64 v178.h, v177.l
	v_mov_b16_e64 v171.h, v170.l
	v_mov_b16_e64 v170.l, v160.l
	v_mov_b16_e64 v170.h, v169.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_mul_f32_e32 v216, v157, v35
	v_mul_f32_e32 v208, v157, v43
	v_mul_f32_e32 v55, v157, v55
	v_mul_f32_e32 v49, v157, v49
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v43, 8, v65
	v_and_b16 v169.h, 0xff, v72.h
	v_and_b16 v167.h, 0xff, v70.h
	v_and_b16 v70.h, 0xff, v201.l
	v_lshrrev_b32_e32 v201, 24, v71
	v_and_b16 v71.h, 0xff, v198.l
	v_cmp_ne_u16_e64 s12, 0, v70.l
	v_cmp_ne_u16_e64 s14, 0, v168.h
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v177.h, v176.l
	v_mov_b16_e64 v176.l, v160.l
	v_mov_b16_e64 v176.h, v175.l
	v_mov_b16_e64 v173.h, v172.l
	v_mov_b16_e64 v172.l, v160.l
	v_mov_b16_e64 v172.h, v171.l
	v_mov_b16_e64 v202.l, v160.l
	v_mov_b16_e64 v202.h, v167.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v51, v51
	v_mul_f32_e32 v214, v157, v33
	v_mul_f32_e32 v211, v157, v46
	v_mul_f32_e32 v217, v157, v36
	v_mul_f32_e32 v218, v157, v37
	v_mul_f32_e32 v210, v157, v45
	v_mul_f32_e32 v207, v157, v42
	v_mul_f32_e32 v219, v157, v38
	v_mul_f32_e32 v38, v55, v182
	v_mul_f32_e32 v36, v49, v188
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v42.h, 0xff, v43.l
	v_and_b16 v43.l, 0xff, v65.h
	v_and_b16 v43.h, 0xff, v66.l
	v_lshrrev_b32_e32 v46, 8, v67
	v_lshrrev_b32_e32 v49, 24, v66
	v_cmp_ne_u16_e64 s30, 0, v169.h
	v_cmp_ne_u16_e64 s3, 0, v164.h
	v_cmp_ne_u16_e64 s9, 0, v167.h
	v_cmp_ne_u16_e64 s29, 0, v71.h
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s23, s0, s12
	s_and_b32 s25, s0, s14
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v42.l, 0xff, v65.l
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v191.h, v190.l
	v_mov_b16_e64 v190.l, v160.l
	v_mov_b16_e64 v190.h, v189.l
	v_mov_b16_e64 v187.h, v186.l
	v_mov_b16_e64 v186.l, v160.l
	v_mov_b16_e64 v186.h, v185.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v40, v40
	v_mul_f32_e32 v51, v157, v51
	v_mul_f32_e32 v63, v157, v63
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v45.l, 0xff, v67.l
	v_and_b16 v45.h, 0xff, v46.l
	v_and_b16 v46.l, 0xff, v67.h
	v_and_b16 v46.h, 0xff, v68.l
	v_cmp_ne_u16_e64 s36, 0, v43.l
	v_cmp_ne_u16_e64 s38, 0, v43.h
	v_cmp_ne_u16_e64 s43, 0, v49.l
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	v_cndmask_b32_e64 v49, 0, 1, s23
	v_cndmask_b32_e64 v43, 0, 1, s25
	s_and_b32 s31, s0, s30
	s_and_b32 s10, s0, s3
	s_and_b32 s21, s0, s9
	s_and_b32 s29, s0, s29
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s34, 0, v42.l
	v_cmp_ne_u16_e64 s35, 0, v42.h
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v42, 0, 1, s31
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v181.l, v160.l
	v_mov_b16_e64 v181.h, v180.l
	v_mov_b16_e64 v180.h, v179.l
	v_mov_b16_e64 v179.l, v160.l
	v_mov_b16_e64 v203.l, v160.l
	v_mov_b16_e64 v203.h, v166.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v54, v54
	v_mul_f32_e32 v56, v157, v56
	v_mul_f32_e32 v215, v157, v34
	v_dual_mul_f32 v221, v157, v40 :: v_dual_mul_f32 v34, v51, v186
	v_dual_mul_f32 v61, v157, v61 :: v_dual_mul_f32 v40, v63, v190
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s45, 0, v45.l
	v_cmp_ne_u16_e64 s46, 0, v45.h
	v_cmp_ne_u16_e64 s47, 0, v46.l
	v_cmp_ne_u16_e64 s50, 0, v46.h
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	v_cndmask_b32_e64 v46, 0, 1, s10
	v_cndmask_b32_e64 v45, 0, 1, s21
	v_cndmask_b32_e64 v63, 0, 1, s29
	v_lshlrev_b16 v42.h, 8, v43.l
	v_mov_b16_e32 v43.l, v49.l
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v71.l, 0xff, v72.l
	v_lshrrev_b32_e32 v72, 24, v72
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v185.l, v160.l
	v_mov_b16_e64 v185.h, v184.l
	v_mov_b16_e64 v184.h, v183.l
	v_mov_b16_e64 v183.l, v160.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v39, v39
	v_mul_f32_e32 v54, v157, v54
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v49.l, v43.l, v42.h
	v_lshlrev_b16 v42.h, 8, v45.l
	v_mov_b16_e32 v45.l, v46.l
	v_mov_b16_e32 v46.l, v63.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v63, v56, v181 :: v_dual_mul_f32 v52, v157, v52
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s33, 0, v72.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v189.l, v160.l
	v_mov_b16_e64 v187.l, v160.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v62, v62
	v_mul_f32_e32 v220, v157, v39
	v_dual_mul_f32 v39, v54, v183 :: v_dual_mul_f32 v50, v157, v50
	v_dual_mul_f32 v33, v52, v185 :: v_dual_mul_f32 v64, v157, v64
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s33, s0, s33
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s6, 0, v197.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v35, v50, v187 :: v_dual_mul_f32 v62, v157, v62
	v_mul_f32_e32 v37, v64, v189
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v64, 0, 1, s33
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_lshrrev_b32_e32 v200, 8, v68
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v50, 24, v67
	v_cmp_ne_u16_e64 s7, 0, v69.l
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	v_mov_b16_e32 v43.l, v64.l
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s4, 0, v165.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s18, s0, s6
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v51, 24, v68
	v_lshrrev_b32_e32 v199, 8, v66
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v204.l, v160.l
	v_mov_b16_e64 v204.h, v165.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v48, v48
	v_mul_f32_e32 v212, v157, v47
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v47.l, 0xff, v200.l
	v_and_b16 v47.h, 0xff, v68.h
	v_cmp_ne_u16_e64 s49, 0, v50.l
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	v_cndmask_b32_e64 v50, 0, 1, s18
	v_lshlrev_b16 v43.l, 8, v43.l
	s_and_b32 s19, s0, s7
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s5, 0, v166.h
	v_cmp_ne_u16_e64 s27, 0, v71.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s15, s0, s4
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s53, 0, v51.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v51, 0, 1, s19
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v175.h, v174.l
	v_mov_b16_e64 v174.l, v160.l
	v_mov_b16_e64 v174.h, v173.l
	v_mov_b16_e64 v171.l, v160.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v209, v157, v44
	v_mul_f32_e32 v213, v157, v48
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v48, 24, v65
	v_and_b16 v44.l, 0xff, v199.l
	v_and_b16 v44.h, 0xff, v66.h
	v_cmp_ne_u16_e64 s51, 0, v47.l
	v_cmp_ne_u16_e64 s52, 0, v47.h
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	v_cndmask_b32_e64 v47, 0, 1, s15
	v_or_b16 v51.h, v46.l, v43.l
	v_mov_b16_e32 v43.l, v50.l
	s_and_b32 s16, s0, s5
	s_and_b32 s28, s0, s27
	s_and_b32 s39, s0, s38
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v175.l, v160.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s8, 0, v69.h
	v_cmp_ne_u16_e64 s37, 0, v48.l
	v_cmp_ne_u16_e64 s40, 0, v44.l
	v_cmp_ne_u16_e64 s41, 0, v44.h
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	v_cndmask_b32_e64 v48, 0, 1, s16
	v_cndmask_b32_e64 v44, 0, 1, s28
	v_cndmask_b32_e64 v69, 0, 1, s39
	v_lshlrev_b16 v42.l, 8, v42.l
	v_lshlrev_b16 v43.l, 8, v43.l
	v_mov_b16_e32 v46.l, v47.l
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s11, 0, v196.l
	v_cmp_ne_u16_e64 s17, 0, v201.l
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v192.h, v191.l
	v_mov_b16_e64 v191.l, v160.l
	v_mov_b16_e64 v184.l, v160.l
	v_mov_b16_e64 v180.l, v160.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v58, v58
	v_mul_f32_e32 v206, v157, v41
	.loc	1 877 25                        ; attention.py:877:25
	v_or_b16 v49.h, v44.l, v42.l
	v_mov_b16_e32 v42.l, v48.l
	v_or_b16 v50.l, v46.l, v43.l
	v_mov_b16_e32 v46.l, v69.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v69, v211, v175
	v_dual_mul_f32 v53, v157, v53 :: v_dual_mul_f32 v64, v206, v180
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s22, s0, s11
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s13, 0, v70.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s26, s0, s17
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v58, v157, v58 :: v_dual_mul_f32 v41, v62, v191
	v_mul_f32_e32 v62, v53, v184
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v53, 0, 1, s22
	v_lshlrev_b16 v42.l, 8, v42.l
	v_cndmask_b32_e64 v55, 0, 1, s26
	v_mov_b16_e32 v44.l, v51.l
	s_and_b32 s20, s0, s8
	s_and_b32 s24, s0, s13
	v_cndmask_b32_e64 v52, 0, 1, s20
	v_or_b16 v48.l, v45.l, v42.l
	v_mov_b16_e32 v42.l, v53.l
	v_cndmask_b32_e64 v54, 0, 1, s24
	v_or_b16 v48.h, v44.l, v42.h
	v_mov_b16_e32 v44.l, v55.l
	s_and_b32 s48, s0, s47
	s_and_b32 s44, s0, s43
	s_and_b32 s43, s0, s50
	s_and_b32 s50, s0, s52
	v_cndmask_b32_e64 v166, 0, 1, s48
	v_lshlrev_b16 v42.l, 8, v42.l
	v_mov_b16_e32 v45.l, v52.l
	v_cndmask_b32_e64 v182, 0, 1, s50
	v_lshlrev_b16 v42.h, 8, v44.l
	v_mov_b16_e32 v44.l, v54.l
	s_and_b32 s42, s0, s41
	s_and_b32 s45, s0, s45
	s_and_b32 s36, s0, s36
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v205.h, v164.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v71, 0, 1, s42
	v_cndmask_b32_e64 v164, 0, 1, s45
	v_or_b16 v50.h, v45.l, v42.l
	v_mov_b16_e64 v42.l, v166.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v198.h, v168.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v67, 0, 1, s36
	v_cndmask_b32_e64 v168, 0, 1, s43
	v_or_b16 v51.l, v44.l, v42.h
	v_mov_b16_e64 v44.l, v182.l
	s_and_b32 s52, s0, s53
	s_and_b32 s37, s0, s37
	s_and_b32 s49, s0, s49
	v_cndmask_b32_e64 v183, 0, 1, s52
	v_mov_b16_e32 v43.l, v71.l
	v_lshlrev_b16 v42.l, 8, v42.l
	v_mov_b16_e64 v45.l, v164.l
	v_cndmask_b32_e64 v68, 0, 1, s37
	v_cndmask_b32_e64 v72, 0, 1, s44
	v_cndmask_b32_e64 v167, 0, 1, s49
	v_lshlrev_b16 v42.h, 8, v44.l
	v_mov_b16_e64 v44.l, v168.l
	v_mov_b16_e32 v47.l, v67.l
	s_and_b32 s34, s0, s34
	s_and_b32 s47, s0, s51
	s_and_b32 s35, s0, s35
	s_and_b32 s40, s0, s40
	s_and_b32 s46, s0, s46
	v_cndmask_b32_e64 v65, 0, 1, s34
	v_cndmask_b32_e64 v169, 0, 1, s47
	v_lshlrev_b16 v43.l, 8, v43.l
	v_or_b16 v53.l, v45.l, v42.l
	v_mov_b16_e64 v42.l, v183.l
	v_cndmask_b32_e64 v66, 0, 1, s35
	v_cndmask_b32_e64 v70, 0, 1, s40
	v_cndmask_b32_e64 v165, 0, 1, s46
	v_or_b16 v53.h, v44.l, v42.h
	v_lshlrev_b16 v42.h, 8, v47.l
	v_mov_b16_e64 v44.l, v167.l
	v_mov_b16_e32 v45.l, v72.l
	v_mov_b16_e32 v47.l, v68.l
	v_or_b16 v52.h, v46.l, v43.l
	v_mov_b16_e32 v43.l, v65.l
	v_lshlrev_b16 v42.l, 8, v42.l
	v_mov_b16_e64 v46.l, v169.l
	v_lshlrev_b16 v43.h, 8, v44.l
	v_mov_b16_e64 v44.l, v165.l
	v_lshlrev_b16 v44.h, 8, v45.l
	v_mov_b16_e32 v45.l, v70.l
	v_lshlrev_b16 v45.h, 8, v47.l
	v_mov_b16_e32 v47.l, v66.l
	v_or_b16 v52.l, v43.l, v42.h
	v_or_b16 v55.h, v46.l, v42.l
	v_add_nc_u32_e32 v42, 0, v94
	v_or_b16 v55.l, v44.l, v43.h
	v_or_b16 v54.h, v45.l, v44.h
	v_or_b16 v54.l, v47.l, v45.h
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b64 v100, v[48:49], v[52:53] offset1:32
	ds_store_2addr_b64 v100, v[50:51], v[54:55] offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[44:45], v42
	ds_load_b64 v[48:49], v136
	ds_load_b64 v[52:53], v137
	ds_load_b64 v[54:55], v138
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v177.l, v160.l
	v_mov_b16_e64 v173.l, v160.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v205.l, v160.l
	v_mov_b16_e64 v160.h, v195.l
	v_mov_b16_e64 v195.l, v160.l
	v_mov_b16_e64 v195.h, v194.l
	v_mov_b16_e64 v194.l, v160.l
	v_mov_b16_e64 v194.h, v193.l
	v_mov_b16_e64 v193.l, v160.l
	v_mov_b16_e64 v193.h, v192.l
	v_mov_b16_e64 v192.l, v160.l
	v_mov_b16_e64 v198.l, v160.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v57, v157, v57 :: v_dual_mul_f32 v58, v58, v195
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(3)
	v_lshrrev_b16 v42.h, 8, v44.l
	v_lshrrev_b16 v42.l, 8, v45.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v60, v157, v60
	v_dual_mul_f32 v59, v157, v59 :: v_dual_and_b32 v56, 0x1000000, v45
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v43.l, 1, v42.h
	s_waitcnt lgkmcnt(2)
	v_lshrrev_b16 v42.h, 8, v48.l
	v_and_b16 v47.l, 1, v42.l
	v_lshrrev_b16 v42.l, 8, v49.l
	v_and_b32_e32 v46, 1, v45
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v168, v219, v203
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v50.h, 1, v42.h
	s_waitcnt lgkmcnt(1)
	v_lshrrev_b16 v42.h, 8, v52.l
	v_and_b16 v50.l, 1, v42.l
	v_lshrrev_b16 v42.l, 8, v53.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v164, v215, v171 :: v_dual_mul_f32 v71, v213, v173
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v51.h, 1, v42.h
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b16 v42.h, 8, v54.l
	v_and_b32_e32 v171, 0x10000, v45
	v_and_b32_e32 v45, 0x1000000, v44
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v72, v214, v172
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v172, 0x10000, v44
	v_and_b32_e32 v44, 1, v44
	v_and_b32_e32 v173, 0x1000000, v49
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v169, v220, v204
	v_dual_mul_f32 v70, v212, v174 :: v_dual_mul_f32 v67, v209, v177
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v51.l, 1, v42.l
	v_lshrrev_b16 v42.l, 8, v55.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v165, v216, v170
	v_dual_mul_f32 v66, v208, v178 :: v_dual_and_b32 v177, 0x10000, v48
	v_mul_f32_e32 v167, v218, v202
	v_mul_f32_e32 v68, v210, v176
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v176, 0x1000000, v48
	v_and_b32_e32 v178, 1, v48
	v_and_b32_e32 v174, 0x10000, v49
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v170, v221, v205 :: v_dual_and_b32 v181, 0x1000000, v52
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v182, 0x10000, v52
	v_and_b32_e32 v183, 1, v52
	v_and_b32_e32 v186, 0x1000000, v54
	v_and_b32_e32 v187, 0x10000, v54
	v_and_b16 v52.h, 1, v42.h
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v57, v57, v160 :: v_dual_and_b32 v54, 1, v54
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v180, 0x10000, v53
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v60, v60, v193 :: v_dual_mul_f32 v59, v59, v194
	v_dual_mul_f32 v61, v61, v192 :: v_dual_and_b32 v184, 0x1000000, v55
	v_dual_mul_f32 v65, v207, v179 :: v_dual_mul_f32 v166, v217, v198
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v175, 1, v49
	v_and_b32_e32 v179, 0x1000000, v53
	v_and_b32_e32 v53, 1, v53
	v_and_b32_e32 v185, 0x10000, v55
	v_and_b16 v52.l, 1, v42.l
	v_and_b32_e32 v55, 1, v55
	v_cmp_eq_u32_e64 s66, 1, v44
	v_cmp_eq_u16_e64 s67, 1, v43.l
	v_cmp_ne_u32_e64 s64, 0, v172
	v_cmp_ne_u32_e64 s65, 0, v45
	v_cmp_eq_u16_e64 s62, 1, v47.l
	v_cmp_eq_u32_e64 s58, 1, v178
	v_cmp_eq_u16_e64 s59, 1, v50.h
	v_cmp_ne_u32_e64 s56, 0, v177
	v_cmp_ne_u32_e64 s57, 0, v176
	v_cmp_ne_u32_e64 s60, 0, v171
	v_cmp_ne_u32_e64 s61, 0, v56
	v_cmp_eq_u16_e64 s55, 1, v50.l
	v_cmp_ne_u32_e64 s51, 0, v174
	v_cmp_eq_u32_e64 s38, 1, v183
	v_cmp_eq_u16_e64 s41, 1, v51.h
	v_cmp_ne_u32_e64 s27, 0, v182
	v_cmp_ne_u32_e64 s30, 0, v181
	v_cmp_eq_u32_e64 s11, 1, v54
	v_cmp_eq_u16_e64 s9, 1, v52.h
	v_cmp_ne_u32_e64 s7, 0, v187
	v_cmp_ne_u32_e64 s8, 0, v186
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v42, 0xff800000, v57, s66
	v_cndmask_b32_e64 v43, 0xff800000, v58, s67
	v_cndmask_b32_e64 v44, 0xff800000, v59, s64
	v_cndmask_b32_e64 v45, 0xff800000, v60, s65
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s63, 1, v46
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v47, 0xff800000, v41, s62
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s54, 1, v175
	v_cmp_ne_u32_e64 s53, 0, v173
	v_cmp_eq_u32_e64 s14, 1, v53
	v_cmp_eq_u16_e64 s17, 1, v51.l
	v_cmp_ne_u32_e64 s12, 0, v180
	v_cmp_ne_u32_e64 s13, 0, v179
	v_cmp_eq_u32_e64 s5, 1, v55
	v_cmp_eq_u16_e64 s6, 1, v52.l
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v41, 0, v99
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_ne_u32_e64 s3, 0, v185
	v_cmp_ne_u32_e64 s4, 0, v184
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v56, 0xff800000, v36, s58
	v_cndmask_b32_e64 v57, 0xff800000, v35, s59
	v_cndmask_b32_e64 v58, 0xff800000, v34, s56
	v_cndmask_b32_e64 v59, 0xff800000, v33, s57
	v_cndmask_b32_e64 v48, 0xff800000, v40, s60
	v_cndmask_b32_e64 v49, 0xff800000, v37, s61
	v_cndmask_b32_e64 v34, 0xff800000, v39, s55
	v_cndmask_b32_e64 v35, 0xff800000, v38, s51
	v_cndmask_b32_e64 v37, 0xff800000, v64, s38
	v_cndmask_b32_e64 v38, 0xff800000, v65, s41
	v_cndmask_b32_e64 v39, 0xff800000, v66, s27
	v_cndmask_b32_e64 v40, 0xff800000, v67, s30
	v_cndmask_b32_e64 v64, 0xff800000, v72, s11
	v_cndmask_b32_e64 v65, 0xff800000, v164, s9
	v_cndmask_b32_e64 v66, 0xff800000, v165, s7
	v_cndmask_b32_e64 v67, 0xff800000, v166, s8
	v_cndmask_b32_e64 v46, 0xff800000, v61, s63
	v_cndmask_b32_e64 v33, 0xff800000, v62, s54
	v_cndmask_b32_e64 v36, 0xff800000, v63, s53
	v_cndmask_b32_e64 v60, 0xff800000, v68, s14
	v_cndmask_b32_e64 v61, 0xff800000, v69, s17
	v_cndmask_b32_e64 v62, 0xff800000, v70, s12
	v_cndmask_b32_e64 v63, 0xff800000, v71, s13
	v_cndmask_b32_e64 v68, 0xff800000, v167, s5
	v_cndmask_b32_e64 v69, 0xff800000, v168, s6
	v_cndmask_b32_e64 v70, 0xff800000, v169, s3
	v_cndmask_b32_e64 v71, 0xff800000, v170, s4
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v41, v[42:45]
	ds_store_b128 v154, v[56:59]
	ds_store_b128 v155, v[37:40]
	ds_store_b128 v156, v[64:67]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[164:167], v101
	ds_load_b128 v[168:171], v101 offset:512
	ds_load_b128 v[172:175], v101 offset:1024
	ds_load_b128 v[176:179], v101 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v41, v[46:49]
	ds_store_b128 v154, v[33:36]
	ds_store_b128 v155, v[60:63]
	ds_store_b128 v156, v[68:71]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[180:183], v101
	ds_load_b128 v[184:187], v101 offset:1024
	ds_load_b128 v[188:191], v101 offset:512
	ds_load_b128 v[192:195], v101 offset:1536
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v197, v61, v62, v63
	v_max3_f32 v198, v64, v65, v66
	v_dual_max_f32 v199, v67, v68 :: v_dual_max_f32 v200, v70, v71
.Ltmp2:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s68, 0xff800000, v161
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v85, v85, v85 :: v_dual_max_f32 v86, v86, v86
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v231, 0, v92
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v93, 0x80, v93
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v50, v164, v164 :: v_dual_add_nc_u32 v73, s84, v73
	v_max_f32_e32 v51, v168, v168
	v_max_f32_e32 v41, v172, v172
	v_max3_f32 v52, v173, v166, v174
.Ltmp4:
	.loc	1 877 25                        ; attention.py:877:25
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(3)
	v_max3_f32 v53, v167, v175, v180
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v41, v50, v41 :: v_dual_max_f32 v50, v176, v176
	s_waitcnt lgkmcnt(2)
	v_max3_f32 v54, v184, v181, v185
	v_max3_f32 v55, v182, v186, v183
	s_waitcnt lgkmcnt(0)
	v_max3_f32 v72, v192, v189, v193
	v_max3_f32 v196, v190, v194, v191
	v_max_f32_e32 v50, v51, v50
	v_max3_f32 v51, v177, v170, v178
	v_max3_f32 v41, v41, v165, v52
	v_max3_f32 v52, v54, v55, v187
	v_max3_f32 v54, v171, v179, v188
	v_max3_f32 v55, v33, v34, v35
	v_max3_f32 v50, v50, v169, v51
	v_max3_f32 v51, v72, v196, v195
	v_max3_f32 v41, v41, v53, v52
	v_max3_f32 v72, v36, v37, v38
	v_max3_f32 v53, v48, v49, v56
	v_max3_f32 v196, v39, v40, v60
	v_max3_f32 v50, v50, v54, v51
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v51, v41
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v54, v57, v58, v59
.Ltmp8:
	.loc	1 877 25                        ; attention.py:877:25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v52, v50
	v_mov_b32_dpp v51, v51 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v52, v52 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v51, v51, v51 :: v_dual_max_f32 v52, v52, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_dual_max_f32 v41, v41, v51 :: v_dual_max_f32 v50, v50, v52
	v_max_f32_e32 v51, v42, v43
	v_max3_f32 v52, v45, v46, v47
	v_max3_f32 v51, v51, v44, v52
	v_max3_f32 v52, v54, v55, v72
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v54, v41 :: v_dual_mov_b32 v55, v50
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v72, v196, v197, v198
	v_max3_f32 v196, v199, v69, v200
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v51, v51, v53, v52
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v54, v54 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v55, v55 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v51, v51, v72, v196
	v_dual_max_f32 v52, v54, v54 :: v_dual_max_f32 v53, v55, v55
.Ltmp15:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v55, v163, v163
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v54, v51, s69, 0xfedcba98 op_sel:[1,0]
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v41, v41, v52 :: v_dual_max_f32 v52, v162, v162
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v50, v50, v53
.Ltmp18:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v53, v161, v51, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v85, v85, v41
	v_dual_max_f32 v51, v52, v41 :: v_dual_max_f32 v52, v55, v50
	v_max_f32_e32 v86, v86, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v54, v161, v53
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v41, v164, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v55, v162, v51 :: v_dual_sub_f32 v72, v163, v52
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v176, v176, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v54, v54
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v50, v172, v85 :: v_dual_sub_f32 v169, v169, v86
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v55, v55
	v_exp_f32_e32 v72, v72
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v168, v168, v86
	v_sub_f32_e32 v170, v170, v86
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	v_exp_f32_e32 v176, v176
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v171, v171, v86
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v161, 0, v54, s68
	v_cmp_neq_f32_e64 s68, 0xff800000, v162
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v162, v173, v85 :: v_dual_sub_f32 v179, v179, v86
	v_sub_f32_e32 v33, v33, v53
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v54, 0, v55, s68
	v_cmp_neq_f32_e64 s68, 0xff800000, v163
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v163, v166, v85
	v_sub_f32_e32 v166, v175, v85
	v_sub_f32_e32 v175, v182, v85
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v162, v162
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v55, 0, v72, s68
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v72, v165, v85
	v_sub_f32_e32 v165, v167, v85
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v163, v163
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v167, v180, v85 :: v_dual_sub_f32 v178, v178, v86
	v_sub_f32_e32 v180, v186, v85
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v164, v174, v85 :: v_dual_sub_f32 v177, v177, v86
	v_sub_f32_e32 v172, v184, v85
	v_sub_f32_e32 v174, v185, v85
	v_sub_f32_e32 v185, v189, v86
	v_sub_f32_e32 v186, v193, v86
	v_dual_sub_f32 v189, v191, v86 :: v_dual_sub_f32 v34, v34, v53
	v_sub_f32_e32 v35, v35, v53
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v175, v175
	v_exp_f32_e32 v180, v180
	v_exp_f32_e32 v200, v33
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v41, s10
	v_cndmask_b32_e64 v41, 0, v163, s19
	v_cndmask_b32_e64 v163, 0, v176, s35
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v36, v36, v53
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v167, v167
	v_exp_f32_e32 v172, v172
	v_exp_f32_e32 v201, v34
	v_exp_f32_e32 v202, v35
	v_exp_f32_e32 v203, v36
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v50, s15
	v_cndmask_b32_e64 v35, 0, v72, s16
	v_cndmask_b32_e64 v36, 0, v162, s18
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v49, v49, v53
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_sub_f32 v182, v187, v85 :: v_dual_add_f32 v33, v33, v34
	v_sub_f32_e32 v187, v190, v86
	v_dual_sub_f32 v190, v195, v86 :: v_dual_sub_f32 v45, v45, v53
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v164, v164
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v50, 0, v180, s29
.Ltmp19:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v35, v36
.Ltmp20:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v198, v49
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v49, 0, v175, s28
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v46, v46, v53
	v_dual_sub_f32 v173, v181, v85 :: v_dual_sub_f32 v184, v192, v86
	v_sub_f32_e32 v181, v183, v85
	v_sub_f32_e32 v183, v188, v86
	v_sub_f32_e32 v188, v194, v86
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v194, v45
	v_exp_f32_e32 v195, v46
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v167, s23
	v_cndmask_b32_e64 v46, 0, v172, s24
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v42, v42, v53
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v181, v181
	v_exp_f32_e32 v182, v182
	v_exp_f32_e32 v165, v165
	v_exp_f32_e32 v166, v166
	v_exp_f32_e32 v191, v42
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v42, 0, v164, s20
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v44, v44, v53
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v173, v173
	v_exp_f32_e32 v174, v174
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v48, v48, v53 :: v_dual_add_f32 v33, v33, v34
.Ltmp21:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v41, v42
	v_dual_add_f32 v41, v45, v46 :: v_dual_sub_f32 v56, v56, v53
.Ltmp22:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v182, s33
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v193, v44
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v44, 0, v166, s22
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v168, v168
	v_exp_f32_e32 v199, v56
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v56, 0, v181, s31
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v43, v53
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v169, v169
	v_exp_f32_e32 v177, v177
	v_exp_f32_e32 v170, v170
	v_exp_f32_e32 v178, v178
	v_exp_f32_e32 v192, v43
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v165, s21
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v57, v57, v53
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v171, v171
	v_exp_f32_e32 v179, v179
	v_exp_f32_e32 v183, v183
.Ltmp23:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v36, v43, v44 :: v_dual_sub_f32 v37, v37, v53
	v_dual_add_f32 v43, v49, v50 :: v_dual_add_f32 v44, v56, v72
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp24:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v61, v61, v53 :: v_dual_add_f32 v34, v35, v36
	v_sub_f32_e32 v47, v47, v53
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v184, v184
	v_exp_f32_e32 v185, v185
	v_exp_f32_e32 v186, v186
	v_exp_f32_e32 v187, v187
	v_exp_f32_e32 v188, v188
	v_exp_f32_e32 v189, v189
	v_exp_f32_e32 v190, v190
	v_exp_f32_e32 v197, v48
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v48, 0, v174, s26
.Ltmp25:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v43, v44
	v_add_f32_e32 v44, v33, v34
.Ltmp26:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v196, v47
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v47, 0, v173, s25
	v_cndmask_b32_e64 v162, 0, v168, s34
	v_cndmask_b32_e64 v164, 0, v169, s36
	v_cndmask_b32_e64 v165, 0, v177, s37
	v_cndmask_b32_e64 v166, 0, v170, s39
.Ltmp27:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v42, v47, v48
.Ltmp28:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v167, 0, v178, s40
	v_cndmask_b32_e64 v168, 0, v171, s42
	v_cndmask_b32_e64 v169, 0, v179, s44
	v_cndmask_b32_e64 v170, 0, v183, s45
	v_cndmask_b32_e64 v171, 0, v184, s46
	v_cndmask_b32_e64 v172, 0, v185, s48
	v_cndmask_b32_e64 v173, 0, v186, s49
	v_cndmask_b32_e64 v45, 0, v187, s43
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v41, v42
.Ltmp30:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v41, 0, v188, s47
	v_cndmask_b32_e64 v42, 0, v189, s50
	v_cndmask_b32_e64 v43, 0, v190, s52
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v50, v90, v153
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v58, v58, v53 :: v_dual_add_f32 v49, v35, v36
	v_dual_sub_f32 v59, v59, v53 :: v_dual_add_f32 v46, v170, v171
	v_dual_sub_f32 v40, v40, v53 :: v_dual_add_f32 v35, v166, v167
	v_dual_sub_f32 v63, v63, v53 :: v_dual_add_f32 v42, v42, v43
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v33, v162, v163 :: v_dual_add_f32 v34, v164, v165
	v_add_f32_e32 v36, v168, v169
	v_dual_add_f32 v47, v172, v173 :: v_dual_add_nc_u32 v56, v90, v135
	v_add_f32_e32 v41, v45, v41
.Ltmp32:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v39, v39, v53 :: v_dual_add_nc_u32 v48, -16, v50
	v_dual_sub_f32 v38, v38, v53 :: v_dual_add_f32 v43, v33, v34
	v_dual_sub_f32 v65, v65, v53 :: v_dual_add_f32 v72, v35, v36
	v_dual_sub_f32 v67, v67, v53 :: v_dual_add_f32 v162, v46, v47
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v33, 0x80000000, v56, s1
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v41, v42
.Ltmp34:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v163, v37
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v44, v49
.Ltmp36:
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v34, 0x80000000, v48, s1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v60, v60, v53
	v_dual_sub_f32 v69, v69, v53 :: v_dual_add_f32 v42, v43, v72
	v_sub_f32_e32 v71, v71, v53
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[45:48], v33, s[72:75], 0 offen
	buffer_load_b128 v[33:36], v34, s[72:75], 0 offen
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v41, v162, v41
.Ltmp38:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v38
	v_exp_f32_e32 v162, v39
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v38, v37 :: v_dual_add_nc_u32 v39, 16, v56
.Ltmp40:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v164, v40
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v40, 0x80000000, v50, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v168.h, v160.l
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp41:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v38, v38 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v39, 0x80000000, v39, s1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v62, v62, v53
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v49, v42, v41
.Ltmp44:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v167.h, v160.l
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v165, v37, v38
.Ltmp46:
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[41:44], v39, s[72:75], 0 offen
	buffer_load_b128 v[37:40], v40, s[72:75], 0 offen
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v169, 0, v193, s64
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v56, v49
.Ltmp48:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v171, 0, v196, s62
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v166, v165
.Ltmp50:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v18, v18, v161
	v_mul_f32_e32 v20, v20, v161
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v56, v56 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp52:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v21, v21, v161
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v166, v166 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v64, v53
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v22, v22, v161
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v50, v49, v56 :: v_dual_mul_f32 v23, v23, v161
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_f32_e32 v49, v165, v166
.Ltmp56:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v165, 0, v192, s67
	v_cndmask_b32_e64 v166, 0, v191, s66
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v56, v50
.Ltmp58:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v24, v24, v161
	v_mul_f32_e32 v25, v25, v161
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v167.l, v165.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v66, v53
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v56, v56 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v161
	v_mul_f32_e32 v27, v27, v161
	v_dual_mul_f32 v28, v28, v161 :: v_dual_add_nc_u32 v135, s86, v135
	v_mul_f32_e32 v29, v29, v161
	v_mul_f32_e32 v30, v30, v161
	v_mul_f32_e32 v31, v31, v161
	v_mul_f32_e32 v9, v9, v161
	v_mul_f32_e32 v10, v10, v161
	v_mul_f32_e32 v11, v11, v161
	v_mul_f32_e32 v12, v12, v161
	v_mul_f32_e32 v13, v13, v161
	v_mul_f32_e32 v14, v14, v161
	v_mul_f32_e32 v15, v15, v161
	v_mul_f32_e32 v16, v16, v161
	v_mul_f32_e32 v1, v1, v161
	v_mul_f32_e32 v2, v2, v161
	v_mul_f32_e32 v3, v3, v161
	v_mul_f32_e32 v4, v4, v161
	v_dual_mul_f32 v5, v5, v161 :: v_dual_add_f32 v50, v50, v56
	v_mul_f32_e32 v6, v6, v161
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v168.l, v166.h
	v_and_b32_e32 v167, 1, v167
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v7, v7, v161 :: v_dual_fmac_f32 v50, v96, v55
	v_mul_f32_e32 v8, v8, v161
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v170.l, v169.h
	v_mov_b16_e64 v170.h, v160.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v161
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v172.l, v171.h
	v_mov_b16_e64 v172.h, v160.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v19, v19, v161
	.loc	1 897 23                        ; attention.py:897:23
	v_dual_fmac_f32 v49, v95, v54 :: v_dual_mul_f32 v32, v32, v161
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v161, 0, v194, s65
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v168, 1, v168
	v_add3_u32 v167, v165, v167, 0x7fff
	v_cmp_o_f32_e64 s10, v165, v165
	v_mov_b16_e64 v165.h, v160.l
	v_mov_b16_e64 v165.l, v161.h
	v_add3_u32 v168, v166, v168, 0x7fff
	v_and_b32_e32 v170, 1, v170
	v_cndmask_b16 v167.h, 0x7fff, v167.h, s10
	v_cmp_o_f32_e64 s10, v166, v166
	v_dual_mov_b32 v96, v50 :: v_dual_and_b32 v165, 1, v165
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v166, 0, v195, s63
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s15, v161, v161
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v167.l, 0x7fff, v168.h, s10
	v_add3_u32 v165, v161, v165, 0x7fff
	v_mov_b16_e64 v161.h, v160.l
	v_mov_b16_e64 v161.l, v166.h
	v_add3_u32 v168, v169, v170, 0x7fff
	v_and_b32_e32 v170, 1, v172
	v_cmp_o_f32_e64 s10, v169, v169
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v169, 0, v198, s61
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v57, v57
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v161, 1, v161
	v_cndmask_b16 v165.h, 0x7fff, v165.h, s15
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v172, 0, v197, s60
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v170, v171, v170, 0x7fff
	v_cmp_o_f32_e64 s15, v171, v171
	v_mov_b16_e64 v171.l, v169.h
	v_mov_b16_e64 v171.h, v160.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v58, v58
	v_exp_f32_e32 v59, v59
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v161, v166, v161, 0x7fff
	v_mov_b16_e64 v173.l, v172.h
	v_mov_b16_e64 v173.h, v160.l
	v_cmp_o_f32_e64 s16, v166, v166
	v_and_b32_e32 v166, 1, v171
	v_cndmask_b16 v165.l, 0x7fff, v168.h, s10
	v_cndmask_b16 v168.h, 0x7fff, v170.h, s15
	v_and_b32_e32 v170, 1, v173
	v_cndmask_b16 v168.l, 0x7fff, v161.h, s16
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v57, 0, v57, s59
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v161, v169, v166, 0x7fff
	v_cmp_o_f32_e64 s10, v169, v169
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v169, 0, v199, s58
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v166, v172, v170, 0x7fff
	v_mov_b16_e64 v170.l, v57.h
	v_mov_b16_e64 v170.h, v160.l
	v_cndmask_b16 v161.h, 0x7fff, v161.h, s10
	v_cmp_o_f32_e64 s10, v172, v172
	v_mov_b16_e64 v171.l, v169.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v59, 0, v59, s57
	v_cndmask_b32_e64 v58, 0, v58, s56
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v170, 1, v170
	v_cndmask_b16 v161.l, 0x7fff, v166.h, s10
	v_and_b32_e32 v166, 1, v171
	v_mov_b16_e64 v171.l, v59.h
	v_mov_b16_e64 v172.l, v58.h
	v_mov_b16_e64 v172.h, v160.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v68, v68, v53
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v170, v57, v170, 0x7fff
	v_cmp_o_f32_e64 s10, v57, v57
	v_add3_u32 v57, v169, v166, 0x7fff
	v_cmp_o_f32_e64 s15, v169, v169
	v_and_b32_e32 v166, 1, v172
	v_and_b32_e32 v169, 1, v171
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v171, 0, v201, s55
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v170.h, 0x7fff, v170.h, s10
	v_cndmask_b16 v170.l, 0x7fff, v57.h, s15
	v_add3_u32 v57, v58, v166, 0x7fff
	v_cmp_o_f32_e64 s15, v58, v58
	v_mov_b16_e64 v172.l, v171.h
	v_add3_u32 v166, v59, v169, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v70, v53
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v169, 0, v200, s54
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v59, v59
	v_and_b32_e32 v59, 1, v172
	v_cndmask_b16 v166.l, 0x7fff, v57.h, s15
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v57, 0, v203, s53
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v58.l, v169.h
	v_mov_b16_e64 v58.h, v160.l
	v_cndmask_b16 v166.h, 0x7fff, v166.h, s10
	v_add3_u32 v59, v171, v59, 0x7fff
	v_cmp_o_f32_e64 s10, v171, v171
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v171, 0, v202, s51
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v172.l, v57.h
	v_and_b32_e32 v58, 1, v58
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v163, 0, v163, s38
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v173.h, 0x7fff, v59.h, s10
	v_mov_b16_e64 v59.l, v171.h
	v_mov_b16_e64 v59.h, v160.l
	v_and_b32_e32 v172, 1, v172
	v_add3_u32 v58, v169, v58, 0x7fff
	v_cmp_o_f32_e64 s10, v169, v169
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s41
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v59, 1, v59
	v_add3_u32 v169, v57, v172, 0x7fff
	v_mov_b16_e64 v172.l, v163.h
	v_mov_b16_e64 v172.h, v160.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v164, 0, v164, s30
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v61, v61
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s15, v57, v57
	v_mov_b16_e32 v57.l, v72.h
	v_mov_b16_e64 v57.h, v160.l
	v_cndmask_b16 v173.l, 0x7fff, v58.h, s10
	v_add3_u32 v58, v171, v59, 0x7fff
	v_and_b32_e32 v59, 1, v172
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v162, 0, v162, s27
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v171, v171
	v_mov_b16_e64 v172.l, v164.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v60, v60
	v_exp_f32_e32 v63, v63
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v57, 1, v57
	v_add3_u32 v59, v163, v59, 0x7fff
	v_mov_b16_e64 v171.l, v162.h
	v_mov_b16_e64 v171.h, v160.l
	v_cmp_o_f32_e64 s16, v163, v163
	v_cndmask_b16 v169.l, 0x7fff, v58.h, s10
	v_and_b32_e32 v58, 1, v172
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v62, v62
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v169.h, 0x7fff, v169.h, s15
	v_add3_u32 v57, v72, v57, 0x7fff
	v_cmp_o_f32_e64 s15, v72, v72
	v_and_b32_e32 v72, 1, v171
	v_cndmask_b16 v185.l, 0x7fff, v59.h, s16
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v59, 0, v61, s17
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v58, v164, v58, 0x7fff
	v_cmp_o_f32_e64 s10, v164, v164
	v_cndmask_b16 v185.h, 0x7fff, v57.h, s15
	v_add3_u32 v57, v162, v72, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v60, 0, v60, s14
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s14, v162, v162
	v_mov_b16_e32 v61.l, v59.h
	v_mov_b16_e64 v61.h, v160.l
	v_cndmask_b16 v187.h, 0x7fff, v58.h, s10
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v58, 0, v63, s13
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v187.l, 0x7fff, v57.h, s14
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v62, 0, v62, s12
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v57, 1, v61
	v_mov_b16_e64 v63.h, v160.l
	v_mov_b16_e32 v63.l, v58.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v72.l, v60.h
	v_mov_b16_e64 v72.h, v160.l
	v_add3_u32 v57, v59, v57, 0x7fff
	v_cmp_o_f32_e64 s10, v59, v59
	v_mov_b16_e32 v59.l, v62.h
	v_mov_b16_e64 v59.h, v160.l
	v_and_b32_e32 v63, 1, v63
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v64, v64
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v61, 1, v72
	v_cndmask_b16 v72.h, 0x7fff, v57.h, s10
	v_and_b32_e32 v57, 1, v59
	v_add3_u32 v59, v58, v63, 0x7fff
	v_cmp_o_f32_e64 s10, v58, v58
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v61, v60, v61, 0x7fff
	v_cmp_o_f32_e64 s12, v60, v60
	v_add3_u32 v60, v62, v57, 0x7fff
	v_cndmask_b16 v57.h, 0x7fff, v59.h, s10
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v59, 0, v65, s9
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v58, 0, v64, s11
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s11, v62, v62
	v_mov_b16_e64 v62.h, v160.l
	v_mov_b16_e32 v62.l, v59.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v72.l, 0x7fff, v61.h, s12
	v_mov_b16_e32 v61.l, v58.h
	v_mov_b16_e64 v61.h, v160.l
	v_cndmask_b16 v57.l, 0x7fff, v60.h, s11
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v60, 0, v67, s8
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v62, 1, v62
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v71, v71
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v61, 1, v61
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v63, 0, v66, s7
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v64.l, v60.h
	v_mov_b16_e64 v64.h, v160.l
	v_add3_u32 v62, v59, v62, 0x7fff
	v_cmp_o_f32_e64 s7, v59, v59
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v61, v58, v61, 0x7fff
	v_mov_b16_e32 v65.l, v63.h
	v_mov_b16_e64 v65.h, v160.l
	v_and_b32_e32 v64, 1, v64
	v_cmp_o_f32_e64 s8, v58, v58
	v_cndmask_b16 v58.h, 0x7fff, v62.h, s7
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v62, 0, v69, s6
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v59, 1, v65
	v_add3_u32 v64, v60, v64, 0x7fff
	v_cmp_o_f32_e64 s9, v60, v60
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v60, 0, v68, s5
	v_cndmask_b32_e64 v65, 0, v71, s4
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v67.l, v62.h
	v_mov_b16_e64 v67.h, v160.l
	v_cndmask_b16 v58.l, 0x7fff, v61.h, s8
	v_add3_u32 v61, v63, v59, 0x7fff
	v_cndmask_b16 v59.h, 0x7fff, v64.h, s9
	v_mov_b16_e32 v64.l, v60.h
	v_mov_b16_e64 v64.h, v160.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v70, s3
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v68.l, v65.h
	v_mov_b16_e64 v68.h, v160.l
	v_and_b32_e32 v67, 1, v67
	v_and_b32_e32 v64, 1, v64
	v_mov_b16_e32 v69.l, v66.h
	v_mov_b16_e64 v69.h, v160.l
	v_and_b32_e32 v68, 1, v68
	v_add3_u32 v67, v62, v67, 0x7fff
	v_cmp_o_f32_e64 s4, v62, v62
	v_cmp_o_f32_e64 s3, v63, v63
	v_add3_u32 v63, v60, v64, 0x7fff
	v_and_b32_e32 v64, 1, v69
	v_add3_u32 v62, v65, v68, 0x7fff
	v_cndmask_b16 v239.h, 0x7fff, v67.h, s4
	v_permlanex16_b32 v67, v161, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v68, v170, s69, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s5, v60, v60
	v_add3_u32 v60, v66, v64, 0x7fff
	v_cmp_o_f32_e64 s7, v66, v66
	v_perm_b32 v66, v67, v161, v158
	v_perm_b32 v67, v67, v161, v159
	v_perm_b32 v160, v68, v170, v158
	v_perm_b32 v161, v68, v170, v159
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v164, 0, v97
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v65, v65
	v_cndmask_b16 v59.l, 0x7fff, v61.h, s3
	v_cndmask_b16 v239.l, 0x7fff, v63.h, s5
	v_permlanex16_b32 v61, v167, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v63, v165, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v65, v168, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v69, v166, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v70, v173, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v71, v169, s69, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v240.h, 0x7fff, v62.h, s6
	v_cndmask_b16 v240.l, 0x7fff, v60.h, s7
	v_perm_b32 v60, v61, v167, v158
	v_perm_b32 v61, v61, v167, v159
	v_perm_b32 v62, v63, v165, v158
	v_perm_b32 v63, v63, v165, v159
	v_perm_b32 v64, v65, v168, v158
	v_perm_b32 v65, v65, v168, v159
	v_perm_b32 v162, v69, v166, v158
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v68.l, v45.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v68.h, v33.l
	v_mov_b16_e32 v33.l, v45.h
	ds_store_b32 v164, v68
	ds_store_b32 v139, v33
	v_mov_b16_e32 v33.l, v46.l
	v_mov_b16_e32 v33.h, v34.l
	v_mov_b16_e32 v34.l, v46.h
	v_mov_b16_e32 v45.l, v47.l
	v_mov_b16_e32 v45.h, v35.l
	v_mov_b16_e32 v35.l, v47.h
	v_mov_b16_e32 v46.l, v48.l
	v_mov_b16_e32 v46.h, v36.l
	v_mov_b16_e32 v36.l, v48.h
	ds_store_b32 v140, v33
	ds_store_b32 v141, v34
	ds_store_b32 v142, v45
	ds_store_b32 v143, v35
	ds_store_b32 v144, v46
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v33.l, v41.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v33.h, v37.l
	v_mov_b16_e32 v37.l, v41.h
	v_mov_b16_e32 v34.l, v42.l
	v_mov_b16_e32 v34.h, v38.l
	v_mov_b16_e32 v38.l, v42.h
	ds_store_b32 v145, v36
	ds_store_b32 v146, v33
	ds_store_b32 v164, v37 offset:1152
	ds_store_b32 v147, v34
	ds_store_b32 v148, v38
	v_mov_b16_e32 v33.l, v43.l
	v_mov_b16_e32 v33.h, v39.l
	v_mov_b16_e32 v34.l, v44.l
	v_mov_b16_e32 v34.h, v40.l
	v_mov_b16_e32 v39.l, v43.h
	v_mov_b16_e32 v40.l, v44.h
	ds_store_b32 v149, v33
	ds_store_b32 v150, v39
	ds_store_b32 v151, v34
	ds_store_b32 v152, v40
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v231
	ds_load_b128 v[37:40], v105
	ds_load_b128 v[41:44], v112
	ds_load_b128 v[45:48], v113
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v163, v69, v166, v159
	v_perm_b32 v164, v70, v173, v158
	v_perm_b32 v165, v70, v173, v159
	v_perm_b32 v166, v71, v169, v158
	v_perm_b32 v167, v71, v169, v159
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[168:171], v119
	ds_load_b128 v[172:175], v120
	ds_load_b128 v[176:179], v126
	ds_load_b128 v[180:183], v127
	ds_load_b128 v[68:71], v111
	ds_load_b128 v[191:194], v106
	ds_load_b128 v[195:198], v107
	ds_load_b128 v[199:202], v231 offset:2048
	ds_load_b128 v[203:206], v114
	v_mov_b32_e32 v95, v49
	ds_load_b128 v[215:218], v231 offset:4096
	ds_load_b128 v[219:222], v123
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v186, v185, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v188, v187, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v189, v72, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v241, v57, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v242, v58, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v243, v59, s69, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v244, v239, s69, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v184, v186, v185, v158
	v_perm_b32 v185, v186, v185, v159
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(13)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[33:40], v[60:67], v[17:24]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[33:36], v121
	ds_load_b128 v[37:40], v122
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(13)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[41:48], v[60:67], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[41:44], v125
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v186, v188, v187, v158
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(12)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[168:175], v[60:67], v[9:16]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[168:171], v128
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(11)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[176:183], v[60:67], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[172:175], v129
	ds_load_b128 v[176:179], v108
	ds_load_b128 v[180:183], v109
	ds_load_b128 v[64:67], v110
	ds_load_b128 v[207:210], v115
	ds_load_b128 v[211:214], v116
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(14)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[191:198], v[160:167], v[17:24]
	s_waitcnt lgkmcnt(12)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[199:206], v[160:167], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[192:195], v130
	ds_load_b128 v[196:199], v131
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v187, v188, v187, v159
	v_perm_b32 v188, v189, v72, v158
	v_perm_b32 v189, v189, v72, v159
	v_perm_b32 v190, v241, v57, v158
	v_perm_b32 v191, v241, v57, v159
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v153, s86, v153
	s_add_i32 s3, s100, 64
	s_cmpk_lt_u32 s100, 0x1c0
	s_mov_b32 s100, s3
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(10)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[33:40], v[160:167], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[223:226], v117
	ds_load_b128 v[227:230], v118
	ds_load_b128 v[37:40], v124
	ds_load_b128 v[231:234], v231 offset:6144
	ds_load_b128 v[235:238], v132
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v33, v240, s69, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(10)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[176:183], v[184:191], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[168:175], v[160:167], v[1:8]
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v160, v242, v58, v158
	v_perm_b32 v161, v242, v58, v159
	v_perm_b32 v162, v243, v59, v158
	v_perm_b32 v163, v243, v59, v159
	v_perm_b32 v164, v244, v239, v158
	v_perm_b32 v165, v244, v239, v159
	v_perm_b32 v166, v33, v240, v158
	v_perm_b32 v167, v33, v240, v159
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(7)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[207:214], v[184:191], v[25:32]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[215:222], v[184:191], v[9:16]
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[192:199], v[184:191], v[1:8]
	v_wmma_f32_16x16x16_bf16 v[17:24], v[64:71], v[160:167], v[17:24]
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[223:230], v[160:167], v[25:32]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[37:44], v[160:167], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[231:238], v[160:167], v[1:8]
	v_dual_mov_b32 v161, v53 :: v_dual_mov_b32 v162, v51
	v_mov_b32_e32 v163, v52
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc0 .LBB0_6
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v33, 0x80000000, v73, vcc_lo
	v_add_nc_u32_e32 v37, 0, v89
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v65, s76 :: v_dual_mov_b32 v70, s81
	v_mov_b32_e32 v66, s77
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[33:36], v33, s[92:95], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v67, s78 :: v_dual_mov_b32 v72, s83
	v_mov_b32_e32 v69, s80
	v_mov_b32_e32 v71, s82
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v37, v[33:34]
	ds_store_b64 v98, v[35:36]
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v68, s79 :: v_dual_add_nc_u32 v37, 0, v91
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[33:36], v37 offset1:1
	ds_load_2addr_stride64_b64 v[164:167], v37 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[37:40], v102 offset1:1
	ds_load_2addr_stride64_b64 v[168:171], v102 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[41:44], v103 offset1:1
	ds_load_2addr_stride64_b64 v[172:175], v103 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[45:48], v104 offset1:1
	ds_load_2addr_stride64_b64 v[176:179], v104 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[33:34], v[74:75], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[35:36], v[74:75], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[37:38], v[78:79], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[39:40], v[78:79], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[166:167], v[74:75], v[65:72] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[41:42], v[76:77], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[43:44], v[76:77], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[170:171], v[78:79], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[45:46], v[80:81], v[57:64] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[47:48], v[80:81], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[164:165], v[74:75], v[65:72] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[174:175], v[76:77], v[33:40] neg_lo:[1,1,0]
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[168:169], v[78:79], v[41:48] neg_lo:[1,1,0]
	v_mov_b32_e32 v71, 0
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[178:179], v[80:81], v[33:40] neg_lo:[1,1,0]
	v_mov_b32_e32 v72, 0
	v_wmma_i32_16x16x16_iu4 v[41:48], v[172:173], v[76:77], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[176:177], v[80:81], v[41:48] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x1f
	buffer_load_u16 v195, v93, s[96:99], 0 offen
	buffer_load_u16 v194, v93, s[96:99], 0 offen offset:4
	buffer_load_u16 v193, v93, s[96:99], 0 offen offset:8
	buffer_load_u16 v192, v93, s[96:99], 0 offen offset:12
	buffer_load_u16 v191, v93, s[96:99], 0 offen offset:16
	buffer_load_u16 v190, v93, s[96:99], 0 offen offset:20
	buffer_load_u16 v189, v93, s[96:99], 0 offen offset:24
	buffer_load_u16 v188, v93, s[96:99], 0 offen offset:28
	buffer_load_u16 v187, v93, s[96:99], 0 offen offset:32
	buffer_load_u16 v186, v93, s[96:99], 0 offen offset:36
	buffer_load_u16 v185, v93, s[96:99], 0 offen offset:40
	buffer_load_u16 v184, v93, s[96:99], 0 offen offset:44
	buffer_load_u16 v183, v93, s[96:99], 0 offen offset:48
	buffer_load_u16 v182, v93, s[96:99], 0 offen offset:52
	buffer_load_u16 v181, v93, s[96:99], 0 offen offset:56
	buffer_load_u16 v180, v93, s[96:99], 0 offen offset:60
	buffer_load_u16 v179, v93, s[96:99], 0 offen offset:64
	buffer_load_u16 v178, v93, s[96:99], 0 offen offset:68
	buffer_load_u16 v177, v93, s[96:99], 0 offen offset:72
	buffer_load_u16 v176, v93, s[96:99], 0 offen offset:76
	buffer_load_u16 v175, v93, s[96:99], 0 offen offset:80
	buffer_load_u16 v174, v93, s[96:99], 0 offen offset:84
	buffer_load_u16 v173, v93, s[96:99], 0 offen offset:88
	buffer_load_u16 v172, v93, s[96:99], 0 offen offset:92
	buffer_load_u16 v171, v93, s[96:99], 0 offen offset:96
	buffer_load_u16 v170, v93, s[96:99], 0 offen offset:100
	buffer_load_u16 v169, v93, s[96:99], 0 offen offset:104
	buffer_load_u16 v168, v93, s[96:99], 0 offen offset:108
	buffer_load_u16 v167, v93, s[96:99], 0 offen offset:112
	buffer_load_u16 v166, v93, s[96:99], 0 offen offset:116
	buffer_load_u16 v165, v93, s[96:99], 0 offen offset:120
	buffer_load_u16 v164, v93, s[96:99], 0 offen offset:124
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s4, s0
	s_cbranch_execz .LBB0_4
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	v_add_nc_u32_e32 v65, s100, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ashrrev_i32_e32 v66, 31, v65
	v_add_co_u32 v65, s3, s88, v65
	v_add_co_ci_u32_e64 v66, null, s89, v66, s3
	global_load_b128 v[69:72], v[65:66], off
.LBB0_4:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s4
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s4, s0
	s_cbranch_execz .LBB0_1
; %bb.5:                                ;   in Loop: Header=BB0_2 Depth=1
	v_add_nc_u32_e32 v65, s100, v134
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ashrrev_i32_e32 v66, 31, v65
	v_add_co_u32 v65, s3, s88, v65
	v_add_co_ci_u32_e64 v66, null, s89, v66, s3
	global_load_b128 v[65:68], v[65:66], off
	s_branch .LBB0_1
.LBB0_6:
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	v_lshrrev_b32_e32 v0, 4, v0
	v_and_b32_e32 v33, 0x80, v87
	v_add_nc_u32_e32 v34, 0, v88
	v_lshl_add_u32 v35, v84, 1, 0
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v0, 4, v0
	s_barrier
	s_mov_b32 s7, 0x31027000
	ds_store_b64 v35, v[49:50]
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v34, v33, v0
	s_barrier
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v34, 16, v83
	v_or_b32_e32 v33, 32, v83
	.loc	1 818 13                        ; attention.py:818:13
	ds_load_b32 v35, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 48, v83
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v40, null, v35, v35, v19
	v_div_scale_f32 v36, null, v35, v35, v17
	v_div_scale_f32 v38, null, v35, v35, v18
	v_div_scale_f32 v42, null, v35, v35, v20
	v_div_scale_f32 v44, null, v35, v35, v21
	v_rcp_f32_e32 v49, v40
	v_div_scale_f32 v46, null, v35, v35, v22
	v_rcp_f32_e32 v47, v36
	v_rcp_f32_e32 v48, v38
	v_rcp_f32_e32 v50, v42
	v_rcp_f32_e32 v51, v44
	v_rcp_f32_e32 v54, v46
	v_div_scale_f32 v41, s1, v19, v35, v19
	v_fma_f32 v57, -v40, v49, 1.0
	v_div_scale_f32 v37, vcc_lo, v17, v35, v17
	v_fma_f32 v55, -v36, v47, 1.0
	v_fma_f32 v56, -v38, v48, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v58, -v42, v50, 1.0
	v_fma_f32 v59, -v44, v51, 1.0
	v_fmac_f32_e32 v49, v57, v49
	v_div_scale_f32 v39, s0, v18, v35, v18
	v_div_scale_f32 v45, s4, v21, v35, v21
	v_dual_fmac_f32 v47, v55, v47 :: v_dual_fmac_f32 v48, v56, v48
	v_fmac_f32_e32 v50, v58, v50
	v_fma_f32 v55, -v46, v54, 1.0
	v_dual_mul_f32 v58, v41, v49 :: v_dual_fmac_f32 v51, v59, v51
	v_div_scale_f32 v52, s5, v22, v35, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v54, v55, v54
	v_mul_f32_e32 v57, v39, v48
	v_mul_f32_e32 v55, v45, v51
	v_mul_f32_e32 v56, v37, v47
	v_div_scale_f32 v43, s3, v20, v35, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v61, -v38, v57, v39
	v_fma_f32 v62, -v40, v58, v41
	v_fma_f32 v59, -v36, v56, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v60, v43, v50
	v_div_scale_f32 v53, null, v35, v35, v23
	v_dual_fmac_f32 v57, v61, v48 :: v_dual_fmac_f32 v56, v59, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v63, -v42, v60, v43
	v_fma_f32 v36, -v36, v56, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v38, v57, v39
	v_fmac_f32_e32 v60, v63, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v36, v47, v56
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v39, -v42, v60, v43
	v_div_fmas_f32 v37, v37, v48, v57
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v17, v36, v35, v17
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v18, v37, v35, v18
	v_fma_f32 v37, -v44, v55, v45
	v_fmac_f32_e32 v58, v62, v49
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v55, v37, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v40, v58, v41
	v_rcp_f32_e32 v40, v53
	v_div_scale_f32 v41, null, v35, v35, v24
	v_fma_f32 v44, -v44, v55, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v38, v38, v49, v58
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v43, v41
	v_div_scale_f32 v37, s1, v23, v35, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v19, v38, v35, v19
	v_div_scale_f32 v38, null, v35, v35, v25
	v_fma_f32 v42, -v53, v40, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v45, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v38, v45, 1.0
	v_fmac_f32_e32 v40, v42, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v42, -v41, v43, 1.0
	v_fmac_f32_e32 v45, v49, v45
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v43, v42, v43
	v_div_fmas_f32 v36, v39, v50, v60
	v_mul_f32_e32 v39, v52, v54
	v_div_scale_f32 v50, null, v35, v35, v26
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v20, v36, v35, v20
	v_fma_f32 v36, -v46, v39, v52
	v_div_fmas_f32 v44, v44, v51, v55
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v42, s3, v24, v35, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v36, v54
	v_div_scale_f32 v49, s4, v25, v35, v25
	v_mul_f32_e32 v48, v42, v43
	v_div_fixup_f32 v21, v44, v35, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v46, v39, v52
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	v_cndmask_b32_e64 v21, 0, v21, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v39, v46, v54, v39
	v_rcp_f32_e32 v46, v50
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v22, v39, v35, v22
	v_mul_f32_e32 v39, v49, v45
	v_mul_f32_e32 v36, v37, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v50, v46, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v47, -v53, v36, v37
	v_fmac_f32_e32 v46, v44, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v36, v47, v40
	v_fma_f32 v47, -v41, v48, v42
	v_div_scale_f32 v44, null, v35, v35, v28
	v_fma_f32 v37, -v53, v36, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v47, v43
	v_div_scale_f32 v47, null, v35, v35, v27
	v_div_fmas_f32 v36, v37, v40, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v41, v48, v42
	v_fma_f32 v40, -v38, v39, v49
	v_rcp_f32_e32 v41, v47
	v_div_scale_f32 v42, s1, v26, v35, v26
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v39, v40, v45
	v_rcp_f32_e32 v40, v44
	v_div_fmas_f32 v37, v37, v43, v48
	v_mul_f32_e32 v43, v42, v46
	v_div_fixup_f32 v23, v36, v35, v23
	v_fma_f32 v36, -v38, v39, v49
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v48, -v47, v41, 1.0
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v24, v37, v35, v24
	v_fma_f32 v37, -v50, v43, v42
	v_div_fmas_f32 v36, v36, v45, v39
	v_div_scale_f32 v45, s4, v28, v35, v28
	v_fmac_f32_e32 v41, v48, v41
	v_fma_f32 v48, -v44, v40, 1.0
	v_div_scale_f32 v38, s3, v27, v35, v27
	v_div_scale_f32 v49, null, v35, v35, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v43, v37, v46 :: v_dual_fmac_f32 v40, v48, v40
	v_div_fixup_f32 v25, v36, v35, v25
	v_rcp_f32_e32 v39, v49
	v_div_scale_f32 v48, null, v35, v35, v30
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
	v_div_scale_f32 v43, s1, v29, v35, v29
	v_div_fixup_f32 v26, v36, v35, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v37, v42, v41
	v_fma_f32 v42, -v44, v50, v45
	v_fmac_f32_e32 v39, v52, v39
	v_fma_f32 v46, -v48, v51, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v47, v37, v38
	v_fmac_f32_e32 v50, v42, v40
	v_div_scale_f32 v47, null, v35, v35, v32
	v_div_scale_f32 v42, s5, v30, v35, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v36, v36, v41, v37
	v_fma_f32 v37, -v44, v50, v45
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v27, v36, v35, v27
	v_div_fmas_f32 v37, v37, v40, v50
	v_rcp_f32_e32 v40, v47
	v_fmac_f32_e32 v51, v46, v51
	v_div_scale_f32 v46, null, v35, v35, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v28, v37, v35, v28
	v_div_scale_f32 v37, s3, v31, v35, v31
	v_rcp_f32_e32 v44, v46
	v_mul_f32_e32 v45, v42, v51
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	v_cndmask_b32_e64 v27, 0, v27, s0
	v_cndmask_b32_e64 v28, 0, v28, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
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
	v_div_scale_f32 v42, s1, v32, v35, v32
	v_mul_f32_e32 v39, v37, v44
	v_div_scale_f32 v41, null, v35, v35, v9
	v_mul_f32_e32 v48, v42, v40
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v29, v36, v35, v29
	v_div_fmas_f32 v38, v38, v51, v45
	v_rcp_f32_e32 v43, v41
	v_fma_f32 v45, -v46, v39, v37
	v_fma_f32 v36, -v47, v48, v42
	v_div_scale_f32 v51, null, v35, v35, v12
	v_div_fixup_f32 v30, v38, v35, v30
	v_rcp_f32_e32 v38, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v48, v36, v40
	v_div_scale_f32 v36, s4, v9, v35, v9
	v_fmac_f32_e32 v39, v45, v44
	v_fma_f32 v45, -v41, v43, 1.0
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v53, v51
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	.loc	1 1044 48                       ; attention.py:1044:48
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
	v_div_fixup_f32 v31, v37, v35, v31
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v47, -v46, v45, 1.0
	v_div_fixup_f32 v32, v39, v35, v32
	v_fma_f32 v39, -v51, v53, 1.0
	v_fmac_f32_e32 v38, v50, v38
	v_fma_f32 v50, -v41, v42, v36
	v_fmac_f32_e32 v45, v47, v45
	v_div_scale_f32 v47, s5, v11, v35, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v53, v39, v53 :: v_dual_mul_f32 v52, v44, v38
	v_div_scale_f32 v39, s1, v12, v35, v12
	v_mul_f32_e32 v48, v47, v45
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v49, v52, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v32, s0
	.loc	1 1044 48                       ; attention.py:1044:48
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 1044 48                       ; attention.py:1044:48
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v45, v36, v48
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v41, v43, v39
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v42, -v46, v45, v36
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 1044 48                       ; attention.py:1044:48
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v16, v36, v35, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v54, v39, v40
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v2, v40, v35, v2
	v_div_scale_f32 v40, null, v35, v35, v7
	v_fma_f32 v36, -v49, v39, v42
	v_rcp_f32_e32 v42, v38
	v_rcp_f32_e32 v49, v47
	v_rcp_f32_e32 v44, v40
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v53, v39
	v_rcp_f32_e32 v39, v37
	v_div_scale_f32 v41, vcc_lo, v4, v35, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_div_fixup_f32 v3, v36, v35, v3
	v_fma_f32 v48, -v38, v42, 1.0
	v_fma_f32 v53, -v47, v49, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v51, -v40, v44, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
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
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s85, v83
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v37, v35, v7
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s5, s91, 0xffff
	s_mov_b32 s4, s90
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v39, v35, v8
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v35, s85, v82
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s85, v34
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v36, v35, v83, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s85, v33
	v_cmp_gt_i32_e64 s3, s85, v0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v0, v35, v0, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v37, 8, v36
	v_add_nc_u32_e32 v38, 16, v36
	v_cndmask_b32_e32 v39, 0x80000000, v36, vcc_lo
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	s_clause 0x2
	buffer_store_b32 v17, v39, s[4:7], 0 offen
	buffer_store_b32 v18, v37, s[4:7], 0 offen
	buffer_store_b32 v19, v38, s[4:7], 0 offen
	v_add_nc_u32_e32 v17, 24, v36
	v_add_nc_u32_e32 v18, 32, v36
	v_add_nc_u32_e32 v19, 40, v36
	v_add_nc_u32_e32 v37, 48, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_add_nc_u32 v38, 56, v36
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_cndmask_b32 v37, 0x80000000, v37 :: v_dual_cndmask_b32 v38, 0x80000000, v38
	s_clause 0x4
	buffer_store_b32 v20, v17, s[4:7], 0 offen
	buffer_store_b32 v21, v18, s[4:7], 0 offen
	buffer_store_b32 v22, v19, s[4:7], 0 offen
	buffer_store_b32 v23, v37, s[4:7], 0 offen
	buffer_store_b32 v24, v38, s[4:7], 0 offen
	v_add_lshl_u32 v17, v35, v34, 2
	v_add_nc_u32_e32 v18, 0x48, v36
	v_add_nc_u32_e32 v19, 0x50, v36
	v_add_nc_u32_e32 v20, 0x58, v36
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v21, 0x60, v36
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_cndmask_b32 v18, 0x80000000, v18
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v19, 0x80000000, v19 :: v_dual_cndmask_b32 v20, 0x80000000, v20
	s_clause 0x2
	buffer_store_b32 v25, v17, s[4:7], 0 offen
	buffer_store_b32 v26, v18, s[4:7], 0 offen
	buffer_store_b32 v27, v19, s[4:7], 0 offen
	v_cndmask_b32_e32 v17, 0x80000000, v21, vcc_lo
	v_add_nc_u32_e32 v18, 0x68, v36
	buffer_store_b32 v28, v20, s[4:7], 0 offen
	v_add_nc_u32_e32 v19, 0x70, v36
	v_add_nc_u32_e32 v20, 0x78, v36
	buffer_store_b32 v29, v17, s[4:7], 0 offen
	v_add_lshl_u32 v17, v35, v33, 2
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	buffer_store_b32 v30, v18, s[4:7], 0 offen
	v_add_nc_u32_e32 v18, 0x88, v36
	s_clause 0x2
	buffer_store_b32 v31, v19, s[4:7], 0 offen
	buffer_store_b32 v32, v20, s[4:7], 0 offen
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
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1051 17                       ; attention.py:1051:17
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
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp61:
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
		.amdhsa_next_free_vgpr 245
		.amdhsa_next_free_sgpr 101
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
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_vgpr, 245
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.numbered_sgpr, 101
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14720
; TotalNumSgprs: 103
; NumVgprs: 245
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 103
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
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
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
    .sgpr_count:     103
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.kd
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
