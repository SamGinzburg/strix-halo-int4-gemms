	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x60
	s_load_b64 s[28:29], s[0:1], 0x20
	v_dual_mov_b32 v41, 0x7632 :: v_dual_lshlrev_b32 v38, 4, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v4, 1, v0
	v_mov_b32_e32 v40, 0x5410
	s_clause 0x2
	s_load_b256 s[4:11], s[0:1], 0x0
	s_load_b32 s22, s[0:1], 0x68
	s_load_b64 s[20:21], s[0:1], 0x38
	.loc	1 773 86                        ; attention.py:773:86
	v_and_b32_e32 v1, 16, v38
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s12, s2, 6
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s12, v4
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s13, s12, s2
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v63, v0, 4, 1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v5
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v156, 0xff800000 :: v_dual_and_b32 v81, 7, v0
	s_lshr_b32 s0, s0, 28
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[36:37], null, s34, v4, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s34, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s25, s5, 0xffff
	s_mov_b32 s24, s4
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, 0xfff0
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, s2, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, s34, s13, v[36:37]
	v_dual_mov_b32 v16, 0 :: v_dual_and_b32 v37, 15, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v46, 1, v0
	v_and_b32_e32 v47, 24, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v43, 0x78, v0
	v_dual_mov_b32 v27, v16 :: v_dual_lshlrev_b32 v80, 4, v81
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	v_mov_b32_e32 v19, v16
	v_and_or_b32 v79, v46, 30, v63
	v_mov_b32_e32 v20, v16
	v_mov_b32_e32 v22, v16
	buffer_load_b128 v[32:35], v1, s[24:27], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v1, v4, 48, v37
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s25, s11, 0xffff
	s_mov_b32 s24, s10
	v_mov_b32_e32 v25, v16
	v_xor_b32_e32 v78, v38, v47
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v44, s13, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s12, v1
	v_dual_mov_b32 v17, v16 :: v_dual_and_b32 v38, 24, v46
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v153, 2, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v2, 1, v44
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v1
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s0, s0, 10
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	.loc	1 821 32                        ; attention.py:821:32
	s_and_b32 s3, s0, 0xffffc000
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s0, s1, 0x10007
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v42, 4, v0
	v_mov_b32_e32 v18, v16
	v_lshrrev_b32_e32 v83, 1, v43
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s1, s1, s0
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v39, v1, s[24:27], 0 offen
	v_lshl_or_b32 v79, v37, 5, v38
	v_xor_b32_e32 v37, v80, v43
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v43, 4, v153
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s0, s1, 0x80000
	v_mov_b32_e32 v23, v16
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v45, 62, v42
	.loc	1 889 86                        ; attention.py:889:86
	v_lshlrev_b32_e32 v42, 3, v81
	.loc	1 758 19                        ; attention.py:758:19
	s_sext_i32_i16 s0, s0
	v_dual_mov_b32 v21, v16 :: v_dual_and_b32 v152, 16, v0
	v_mul_u32_u24_e32 v84, 0x90, v81
	v_lshl_or_b32 v81, v81, 10, v37
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s0, s0, 10
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[37:38], null, s35, v83, v[42:43]
	.loc	1 821 32                        ; attention.py:821:32
	s_and_b32 s1, s0, 0xfffff800
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s11, s22, 0x3fb8aa3b
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s35, v42
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s22, s1, s3
	v_xor_b32_e32 v38, 0x90, v81
	v_xor_b32_e32 v42, 0x120, v81
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s1, 0, v152
	v_bfe_i32 v48, v0, 3, 1
	v_mov_b32_e32 v29, v16
	v_add_nc_u32_e32 v145, 0, v38
	v_add_nc_u32_e32 v146, 0, v42
	v_cndmask_b32_e64 v38, 0x3276, v41, s1
	v_and_b32_e32 v82, 0x410, v48
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v76, 2, v63
	v_or_b32_e32 v75, 4, v63
	v_or_b32_e32 v74, 6, v63
	v_or_b32_e32 v73, 8, v63
	v_xor_b32_e32 v80, v84, v82
	v_or_b32_e32 v72, 10, v63
	v_or_b32_e32 v71, 12, v63
	v_or_b32_e32 v70, 14, v63
	v_or_b32_e32 v69, 16, v63
	v_or_b32_e32 v68, 18, v63
	v_or_b32_e32 v67, 20, v63
	v_or_b32_e32 v66, 22, v63
	v_or_b32_e32 v65, 24, v63
	v_or_b32_e32 v64, 26, v63
	v_or_b32_e32 v62, 28, v63
	v_or_b32_e32 v61, 30, v63
	v_or_b32_e32 v60, 32, v63
	v_or_b32_e32 v59, 34, v63
	v_or_b32_e32 v58, 36, v63
	v_or_b32_e32 v57, 38, v63
	v_or_b32_e32 v56, 40, v63
	v_or_b32_e32 v55, 42, v63
	v_or_b32_e32 v54, 44, v63
	v_or_b32_e32 v53, 46, v63
	v_or_b32_e32 v52, 48, v63
	v_or_b32_e32 v51, 50, v63
	v_or_b32_e32 v50, 52, v63
	v_or_b32_e32 v49, 54, v63
	v_or_b32_e32 v48, 56, v63
	v_or_b32_e32 v47, 58, v63
	v_or_b32_e32 v46, 60, v63
	v_xor_b32_e32 v85, 8, v78
	v_xor_b32_e32 v84, 8, v79
	v_xor_b32_e32 v86, 16, v79
	v_xor_b32_e32 v87, 24, v79
	v_xor_b32_e32 v88, 16, v80
	v_xor_b32_e32 v89, 32, v80
	v_xor_b32_e32 v90, 48, v80
	v_xor_b32_e32 v91, 64, v80
	v_xor_b32_e32 v92, 0x50, v80
	v_xor_b32_e32 v93, 0x60, v80
	v_xor_b32_e32 v94, 0x70, v80
	v_xor_b32_e32 v95, 0x820, v80
	v_xor_b32_e32 v96, 0x830, v80
	v_xor_b32_e32 v97, 0x810, v80
	v_xor_b32_e32 v98, 0x860, v80
	v_xor_b32_e32 v99, 0x870, v80
	v_xor_b32_e32 v100, 0x840, v80
	v_xor_b32_e32 v101, 0x850, v80
	v_xor_b32_e32 v102, 0x1040, v80
	v_xor_b32_e32 v103, 0x1050, v80
	v_xor_b32_e32 v104, 0x1060, v80
	v_xor_b32_e32 v105, 0x1070, v80
	v_xor_b32_e32 v106, 0x1010, v80
	v_xor_b32_e32 v107, 0x1020, v80
	v_xor_b32_e32 v108, 0x1030, v80
	v_xor_b32_e32 v109, 0x1860, v80
	v_xor_b32_e32 v110, 0x1870, v80
	v_xor_b32_e32 v111, 0x1840, v80
	v_xor_b32_e32 v112, 0x1850, v80
	v_xor_b32_e32 v113, 0x1820, v80
	v_xor_b32_e32 v114, 0x1830, v80
	v_xor_b32_e32 v115, 0x1810, v80
	v_xor_b32_e32 v147, 0x1b0, v81
	v_xor_b32_e32 v148, 0x240, v81
	v_xor_b32_e32 v149, 0x2d0, v81
	v_xor_b32_e32 v150, 0x360, v81
	v_xor_b32_e32 v151, 0x3f0, v81
	v_dual_mov_b32 v24, v16 :: v_dual_add_nc_u32 v83, 0, v84
	v_mov_b32_e32 v26, v16
	v_mov_b32_e32 v28, v16
	v_mov_b32_e32 v30, v16
	v_dual_mov_b32 v31, v16 :: v_dual_add_nc_u32 v82, 0, v85
	v_mov_b32_e32 v8, v16
	v_dual_mov_b32 v9, v16 :: v_dual_add_nc_u32 v84, 0, v86
	v_mov_b32_e32 v10, v16
	v_dual_mov_b32 v11, v16 :: v_dual_add_nc_u32 v86, 0, v88
	v_mov_b32_e32 v12, v16
	v_dual_mov_b32 v13, v16 :: v_dual_add_nc_u32 v88, 0, v90
	v_mov_b32_e32 v14, v16
	v_dual_mov_b32 v15, v16 :: v_dual_add_nc_u32 v90, 0, v92
	v_mov_b32_e32 v0, v16
	v_dual_mov_b32 v1, v16 :: v_dual_add_nc_u32 v92, 0, v94
	v_mov_b32_e32 v2, v16
	v_dual_mov_b32 v3, v16 :: v_dual_add_nc_u32 v94, 0, v96
	v_mov_b32_e32 v4, v16
	v_dual_mov_b32 v5, v16 :: v_dual_add_nc_u32 v96, 0, v98
	v_mov_b32_e32 v6, v16
	v_dual_mov_b32 v7, v16 :: v_dual_add_nc_u32 v98, 0, v100
	v_dual_mov_b32 v77, v16 :: v_dual_add_nc_u32 v100, 0, v102
	v_add_nc_u32_e32 v85, 0, v87
	v_add_nc_u32_e32 v87, 0, v89
	v_add_nc_u32_e32 v89, 0, v91
	v_add_nc_u32_e32 v91, 0, v93
	v_add_nc_u32_e32 v93, 0, v95
	v_add_nc_u32_e32 v95, 0, v97
	v_add_nc_u32_e32 v97, 0, v99
	v_add_nc_u32_e32 v99, 0, v101
	v_add_nc_u32_e32 v101, 0, v103
	v_add_nc_u32_e32 v103, 0, v105
	v_add_nc_u32_e32 v105, 0, v107
	v_add_nc_u32_e32 v107, 0, v109
	v_add_nc_u32_e32 v109, 0, v111
	v_add_nc_u32_e32 v111, 0, v113
	v_add_nc_u32_e32 v113, 0, v115
	v_or_b32_e32 v115, s22, v75
	v_or_b32_e32 v116, s22, v74
	v_or_b32_e32 v117, s22, v73
	v_or_b32_e32 v118, s22, v72
	v_or_b32_e32 v119, s22, v71
	v_or_b32_e32 v120, s22, v70
	v_or_b32_e32 v121, s22, v69
	v_or_b32_e32 v122, s22, v68
	v_or_b32_e32 v123, s22, v67
	v_or_b32_e32 v124, s22, v66
	v_or_b32_e32 v125, s22, v65
	v_or_b32_e32 v126, s22, v64
	v_or_b32_e32 v127, s22, v62
	v_or_b32_e32 v128, s22, v61
	v_or_b32_e32 v129, s22, v60
	v_or_b32_e32 v130, s22, v59
	v_or_b32_e32 v131, s22, v58
	v_or_b32_e32 v132, s22, v57
	v_or_b32_e32 v133, s22, v56
	v_or_b32_e32 v134, s22, v55
	v_or_b32_e32 v135, s22, v54
	v_or_b32_e32 v136, s22, v53
	v_or_b32_e32 v137, s22, v52
	v_or_b32_e32 v138, s22, v51
	v_or_b32_e32 v139, s22, v50
	v_or_b32_e32 v140, s22, v49
	v_or_b32_e32 v141, s22, v48
	v_or_b32_e32 v142, s22, v47
	v_or_b32_e32 v143, s22, v46
	v_or_b32_e32 v144, s22, v45
	v_add_nc_u32_e32 v147, 0, v147
	v_add_nc_u32_e32 v148, 0, v148
	v_add_nc_u32_e32 v149, 0, v149
	v_add_nc_u32_e32 v150, 0, v150
	v_add_nc_u32_e32 v151, 0, v151
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v152, s35, v37
	s_mov_b32 s12, 0
	s_and_b32 s7, s7, 0xffff
	s_mov_b32 s4, 0x76543210
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s5, s12
	s_and_b32 s29, s29, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s10, s26
	s_mov_b32 s24, s6
	s_mov_b32 s25, s7
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v154, v153, v32
	ds_bpermute_b32 v155, v43, v32
	ds_bpermute_b32 v42, v153, v33
	ds_bpermute_b32 v157, v43, v33
	ds_bpermute_b32 v158, v153, v34
	ds_bpermute_b32 v159, v43, v34
	ds_bpermute_b32 v153, v153, v35
	ds_bpermute_b32 v43, v43, v35
	v_cndmask_b32_e64 v33, 0x1054, v40, s1
	v_lshl_or_b32 v40, v38, 8, v38
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[34:35], null, s35, 3, v[37:38]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v33, v33, 8, v33
	v_and_b32_e32 v41, 0x540054, v33
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v32, v155, v154, s1
	v_cndmask_b32_e64 v38, v154, v155, s1
	v_and_b32_e32 v154, 0x760076, v40
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v39, 16, v39
	v_lshl_or_b32 v155, v41, 4, v41
	v_add_nc_u32_e32 v102, 0, v104
	v_add_nc_u32_e32 v104, 0, v106
	v_lshl_or_b32 v154, v154, 4, v154
	v_add_nc_u32_e32 v106, 0, v108
	v_add_nc_u32_e32 v108, 0, v110
	v_add_nc_u32_e32 v110, 0, v112
	v_add_nc_u32_e32 v112, 0, v114
	v_or_b32_e32 v114, s22, v76
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v35, s11, v39
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v33, v157, v42, s1
	v_cndmask_b32_e64 v39, v42, v157, s1
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v40, v159, v158, s1
	v_cndmask_b32_e64 v42, v158, v159, s1
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v41, v43, v153, s1
	v_cndmask_b32_e64 v43, v153, v43, s1
	v_and_b32_e32 v153, 0x5040504, v155
	v_and_b32_e32 v154, 0x7060706, v154
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v155, s35, 1, v37
	s_mov_b32 s11, s27
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_or_b32 s1, s5, s22
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v161, 0, v78
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[157:158], null, s1, s34, v[36:37]
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s1, s1, s35
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v157, 0x80000000, v157, vcc_lo
	buffer_load_b128 v[157:160], v157, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v161, v[157:158]
	ds_store_b64 v82, v[159:160]
	v_add_nc_u32_e32 v157, 0, v79
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[189:192], v84 offset1:1
	ds_load_2addr_stride64_b64 v[193:196], v84 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[173:176], v157 offset1:1
	ds_load_2addr_stride64_b64 v[177:180], v157 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[181:184], v83 offset1:1
	ds_load_2addr_stride64_b64 v[185:188], v83 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v164, s19 :: v_dual_mov_b32 v163, s18
	v_dual_mov_b32 v162, s17 :: v_dual_mov_b32 v161, s16
	v_mov_b32_e32 v158, s13
	v_dual_mov_b32 v160, s15 :: v_dual_mov_b32 v159, s14
	v_mov_b32_e32 v157, s12
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[197:200], v85 offset1:1
	ds_load_2addr_stride64_b64 v[201:204], v85 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[165:172], v[173:174], v[32:33], v[157:164] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[165:172], v[181:182], v[40:41], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[165:172], v[189:190], v[38:39], v[165:172] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[165:172], v[197:198], v[42:43], v[165:172] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v181, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v182, v166
	v_cvt_f32_i32_e32 v189, v167
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v197, v168
	v_cvt_f32_i32_e32 v198, v169
	v_cvt_f32_i32_e32 v205, v170
	v_cvt_f32_i32_e32 v206, v171
	v_cvt_f32_i32_e32 v207, v172
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[165:172], v[175:176], v[32:33], v[157:164] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[165:172], v[183:184], v[40:41], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[165:172], v[191:192], v[38:39], v[165:172] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[165:172], v[199:200], v[42:43], v[165:172] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v191, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v176, v166
	v_cvt_f32_i32_e32 v183, v167
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v184, v168
	v_cvt_f32_i32_e32 v190, v169
	v_cvt_f32_i32_e32 v192, v170
	v_cvt_f32_i32_e32 v199, v171
	v_cvt_f32_i32_e32 v200, v172
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[165:172], v[177:178], v[32:33], v[157:164] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[165:172], v[185:186], v[40:41], v[165:172] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[165:172], v[193:194], v[38:39], v[165:172] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[165:172], v[201:202], v[42:43], v[165:172] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v177, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v178, v166
	v_cvt_f32_i32_e32 v193, v167
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v194, v168
	v_cvt_f32_i32_e32 v201, v169
	v_cvt_f32_i32_e32 v202, v170
	v_cvt_f32_i32_e32 v208, v171
	v_cvt_f32_i32_e32 v209, v172
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[165:172], v[179:180], v[32:33], v[157:164] neg_lo:[1,1,0]
	v_or_b32_e32 v157, s22, v63
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v159, s1, v152, 1
	v_add_lshl_u32 v158, s1, v37, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[165:172], v[187:188], v[40:41], v[165:172] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v160, s1, v34, 1
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v157, s5, v157, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v162, 0x80000000, v159, s0
	v_add_lshl_u32 v159, s1, v155, 1
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[165:172], v[195:196], v[38:39], v[165:172] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v158, 0x80000000, v158, s0
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v212, v157, s[28:31], 0 offen
	v_add_lshl_u32 v157, s5, v114, 1
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v159, 0x80000000, v159, s0
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[165:172], v[203:204], v[42:43], v[165:172] neg_lo:[1,1,0]
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v160, 0x80000000, v160, s0
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v213, v157, s[28:31], 0 offen
	v_add_lshl_u32 v157, s5, v115, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v179, v165
	v_cvt_f32_i32_e32 v180, v166
	v_cvt_f32_i32_e32 v195, v167
	v_cvt_f32_i32_e32 v196, v168
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v214, v157, s[28:31], 0 offen
	v_add_lshl_u32 v157, s5, v116, 1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v203, v169
	v_cvt_f32_i32_e32 v204, v170
	v_cvt_f32_i32_e32 v210, v171
	v_cvt_f32_i32_e32 v211, v172
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v215, v157, s[28:31], 0 offen
	v_add_lshl_u32 v157, s5, v117, 1
	buffer_load_u16 v216, v157, s[28:31], 0 offen
	v_add_lshl_u32 v157, s5, v118, 1
	buffer_load_u16 v217, v157, s[28:31], 0 offen
	v_add_lshl_u32 v157, s5, v119, 1
	buffer_load_u16 v218, v157, s[28:31], 0 offen
	v_add_lshl_u32 v157, s5, v120, 1
	buffer_load_u16 v219, v157, s[28:31], 0 offen
	v_add_lshl_u32 v157, s5, v121, 1
	buffer_load_u16 v220, v157, s[28:31], 0 offen
	v_add_lshl_u32 v157, s5, v122, 1
	buffer_load_u16 v185, v157, s[28:31], 0 offen
	v_add_lshl_u32 v157, s5, v123, 1
	buffer_load_u16 v186, v157, s[28:31], 0 offen
	v_add_lshl_u32 v157, s5, v124, 1
	buffer_load_u16 v187, v157, s[28:31], 0 offen
	v_add_lshl_u32 v157, s5, v125, 1
	buffer_load_u16 v188, v157, s[28:31], 0 offen
	v_add_lshl_u32 v157, s5, v126, 1
	buffer_load_u16 v221, v157, s[28:31], 0 offen
	v_add_lshl_u32 v157, s5, v127, 1
	buffer_load_u16 v222, v157, s[28:31], 0 offen
	v_add_lshl_u32 v157, s5, v128, 1
	buffer_load_u16 v223, v157, s[28:31], 0 offen
	v_add_lshl_u32 v157, s5, v129, 1
	buffer_load_u16 v224, v157, s[28:31], 0 offen
	v_add_lshl_u32 v157, s5, v130, 1
	buffer_load_u16 v225, v157, s[28:31], 0 offen
	v_add_lshl_u32 v157, s5, v131, 1
	buffer_load_u16 v226, v157, s[28:31], 0 offen
	v_add_lshl_u32 v157, s5, v132, 1
	buffer_load_u16 v227, v157, s[28:31], 0 offen
	v_add_lshl_u32 v157, s5, v133, 1
	buffer_load_u16 v228, v157, s[28:31], 0 offen
	v_add_lshl_u32 v157, s5, v134, 1
	buffer_load_u16 v229, v157, s[28:31], 0 offen
	v_add_lshl_u32 v157, s5, v135, 1
	buffer_load_u16 v230, v157, s[28:31], 0 offen
	v_add_lshl_u32 v157, s5, v136, 1
	buffer_load_u16 v231, v157, s[28:31], 0 offen
	v_add_lshl_u32 v157, s5, v137, 1
	buffer_load_u16 v232, v157, s[28:31], 0 offen
	v_add_lshl_u32 v157, s5, v138, 1
	buffer_load_u16 v233, v157, s[28:31], 0 offen
	v_add_lshl_u32 v157, s5, v139, 1
	buffer_load_u16 v234, v157, s[28:31], 0 offen
	v_add_lshl_u32 v157, s5, v140, 1
	buffer_load_u16 v235, v157, s[28:31], 0 offen
	v_add_lshl_u32 v157, s5, v141, 1
	buffer_load_u16 v236, v157, s[28:31], 0 offen
	v_add_lshl_u32 v157, s5, v142, 1
	buffer_load_u16 v237, v157, s[28:31], 0 offen
	v_add_lshl_u32 v157, s5, v143, 1
	buffer_load_u16 v238, v157, s[28:31], 0 offen
	v_add_lshl_u32 v157, s5, v144, 1
	buffer_load_u16 v239, v157, s[28:31], 0 offen
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[166:169], v158, s[8:11], 0 offen
	buffer_load_b128 v[170:173], v159, s[8:11], 0 offen
	buffer_load_b128 v[158:161], v160, s[8:11], 0 offen
	buffer_load_b128 v[162:165], v162, s[8:11], 0 offen
	v_add_nc_u32_e32 v157, 0, v81
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v174.l, v166.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v175.l, v170.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v175.h, v158.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v174.h, v162.l
	v_mov_b16_e64 v162.l, v166.h
	v_mov_b16_e64 v158.l, v170.h
	v_mov_b16_e64 v166.l, v168.l
	v_mov_b16_e64 v166.h, v164.l
	ds_store_b64 v157, v[174:175]
	v_mov_b16_e64 v174.h, v163.l
	v_mov_b32_e32 v157, v162
	v_mov_b16_e64 v163.l, v167.h
	v_mov_b16_e64 v175.l, v171.l
	v_mov_b16_e64 v175.h, v159.l
	v_mov_b16_e64 v174.l, v167.l
	ds_store_b64 v145, v[157:158]
	ds_store_b64 v146, v[174:175]
	v_mov_b16_e64 v159.l, v171.h
	v_mov_b32_e32 v158, v163
	v_mov_b16_e64 v167.l, v172.l
	v_mov_b16_e64 v167.h, v160.l
	v_mov_b16_e64 v164.l, v168.h
	ds_store_b64 v147, v[158:159]
	ds_store_b64 v148, v[166:167]
	v_mov_b16_e64 v158.h, v161.l
	v_mov_b16_e64 v161.l, v173.h
	v_mov_b16_e64 v160.l, v172.h
	v_mov_b32_e32 v159, v164
	v_mov_b16_e64 v158.l, v173.l
	v_mov_b16_e64 v157.l, v169.l
	v_mov_b16_e64 v157.h, v165.l
	v_mov_b32_e32 v166, v161
	v_mov_b16_e64 v165.l, v169.h
	ds_store_b64 v149, v[159:160]
	ds_store_b64 v150, v[157:158]
	ds_store_b64 v151, v[165:166]
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v158, 16, v185
	v_lshlrev_b32_e32 v159, 16, v186
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v157, v35, v176
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v161, 16, v188
	v_lshlrev_b32_e32 v160, 16, v187
	v_lshlrev_b32_e32 v162, 16, v221
	v_lshlrev_b32_e32 v163, 16, v222
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v157, v157, v158 :: v_dual_mul_f32 v158, v35, v183
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v164, 16, v223
	v_lshlrev_b32_e32 v165, 16, v224
	v_lshlrev_b32_e32 v166, 16, v225
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v158, v158, v159 :: v_dual_lshlrev_b32 v167, 16, v234
	v_dual_mul_f32 v159, v35, v184 :: v_dual_lshlrev_b32 v170, 16, v217
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v173, 16, v218
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v187, 0xff800000, v158, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v159, v159, v160
	v_mul_f32_e32 v160, v35, v190
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v174, 16, v219
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v160, v160, v161 :: v_dual_mul_f32 v161, v35, v192
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v190, 0xff800000, v157, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v185, 0xff800000, v160, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v161, v161, v162 :: v_dual_mul_f32 v162, v35, v199
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v160, 16, v227
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v162, v162, v163 :: v_dual_mul_f32 v163, v35, v200
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v188, 0xff800000, v159, s2
	v_cndmask_b32_e64 v183, 0xff800000, v162, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v163, v163, v164
	v_mul_f32_e32 v164, v35, v177
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v157, v190, v187, v188
.Ltmp2:
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v162, 16, v229
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v184, 0xff800000, v163, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v164, v164, v165 :: v_dual_mul_f32 v165, v35, v178
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v186, 0xff800000, v161, s2
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v161, 16, v228
	v_lshlrev_b32_e32 v163, 16, v230
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v175, 0xff800000, v164, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v165, v165, v166
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v158, v185, v186, v183
.Ltmp4:
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v164, 16, v231
	v_lshlrev_b32_e32 v166, 16, v233
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v176, 0xff800000, v165, s2
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v165, 16, v232
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v159, v184, v175, v176
	v_max3_f32 v157, v157, v158, v159
.Ltmp6:
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v158, v35, v193 :: v_dual_lshlrev_b32 v159, 16, v226
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[223:226], v92
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v158, v158, v159 :: v_dual_mul_f32 v159, v35, v194
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v177, 0xff800000, v158, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v159, v159, v160
	v_mul_f32_e32 v160, v35, v201
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v160, v160, v161 :: v_dual_mul_f32 v161, v35, v202
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v171, 0xff800000, v160, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v161, v161, v162 :: v_dual_mul_f32 v162, v35, v208
	v_dual_mul_f32 v162, v162, v163 :: v_dual_mul_f32 v163, v35, v209
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v178, 0xff800000, v159, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v168, 0xff800000, v162, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v163, v163, v164
	v_dual_mul_f32 v164, v35, v179 :: v_dual_lshlrev_b32 v179, 16, v220
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v169, 0xff800000, v163, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v164, v164, v165 :: v_dual_mul_f32 v165, v35, v180
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v172, 0xff800000, v161, s2
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v161, v177, v178, v171
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v159, 0xff800000, v164, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v165, v165, v166 :: v_dual_lshlrev_b32 v164, 16, v213
	v_mul_f32_e32 v166, v35, v195
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v162, v172, v168, v169
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp10:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v160, 0xff800000, v165, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v166, v166, v167 :: v_dual_lshlrev_b32 v167, 16, v216
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v165, 16, v214
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v158, 0xff800000, v166, s2
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v166, 16, v215
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v163, v159, v160, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v163, v161, v162, v163
.Ltmp12:
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v161, v35, v181 :: v_dual_lshlrev_b32 v162, 16, v212
	v_mul_f32_e32 v161, v161, v162
	v_mul_f32_e32 v162, v35, v182
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v162, v162, v164
	v_mul_f32_e32 v164, v35, v189
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v180, 0xff800000, v162, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v164, v164, v165
	v_mul_f32_e32 v165, v35, v197
	v_mul_f32_e32 v165, v165, v166
	v_mul_f32_e32 v166, v35, v198
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v193, 0xff800000, v164, s2
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v164, 16, v236
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v181, 0xff800000, v165, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v166, v166, v167 :: v_dual_mul_f32 v167, v35, v205
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v165, 16, v238
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v182, 0xff800000, v166, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v167, v167, v170
	v_mul_f32_e32 v170, v35, v206
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v166, 16, v239
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v170, v170, v173 :: v_dual_mul_f32 v173, v35, v207
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v189, 0xff800000, v167, s2
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v167, 16, v237
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v197, 0xff800000, v170, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v173, v173, v174 :: v_dual_mul_f32 v174, v35, v191
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v162, v181, v182, v189
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp14:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v198, 0xff800000, v173, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v174, v174, v179
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v179, 0xff800000, v161, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v212, 0xff800000, v174, s2
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v161, v179, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v161, v161, v193, v162
	v_max3_f32 v162, v197, v198, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_max3_f32 v157, v161, v162, v157
.Ltmp16:
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v161, v35, v196 :: v_dual_lshlrev_b32 v162, 16, v235
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[227:230], v109
	ds_load_b128 v[235:238], v106
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v161, v161, v162 :: v_dual_mul_f32 v162, v35, v203
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v170, 0xff800000, v161, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v162, v162, v164
	v_mul_f32_e32 v164, v35, v210
	v_dual_mul_f32 v164, v164, v165 :: v_dual_mul_f32 v165, v35, v211
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v161, 0xff800000, v164, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v165, v165, v166 :: v_dual_mul_f32 v166, v35, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v167, v166, v167
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v166, 0xff800000, v162, s2
	v_cndmask_b32_e64 v162, 0xff800000, v165, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v167, 0xff800000, v167, s2
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v164, v170, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v165, v161, v162
	v_max3_f32 v164, v164, v167, v165
.Ltmp18:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v165.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v157, v157, v163, v164
.Ltmp20:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v173.h, v165.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v163, v157, s4, 0xfedcba98 op_sel:[1,0]
.Ltmp22:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v157, v156, v157, v163
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v163, v180, v157
	v_sub_f32_e32 v164, v179, v157
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v179.h, v165.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v171, v171, v157
	v_sub_f32_e32 v169, v169, v157
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v163, v163
	v_exp_f32_e32 v164, v164
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v167, v167, v157
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v171, v171
	v_exp_f32_e32 v169, v169
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v190, v190, v157
	v_sub_f32_e32 v187, v187, v157
	v_sub_f32_e32 v188, v188, v157
	v_sub_f32_e32 v185, v185, v157
	v_sub_f32_e32 v183, v183, v157
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v163, 0, v163, s2
	v_cndmask_b32_e64 v164, 0, v164, s2
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v186, v186, v157
	v_sub_f32_e32 v184, v184, v157
	v_sub_f32_e32 v175, v175, v157
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v165.l, v163.h
	v_mov_b16_e64 v173.l, v164.h
	v_cmp_o_f32_e64 s1, v163, v163
	v_cmp_o_f32_e64 s3, v164, v164
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v176, v176, v157
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v174, 1, v165
	v_and_b32_e32 v173, 1, v173
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v178, v178, v157
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v167, v167
	v_exp_f32_e32 v190, v190
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v174, v163, v174, 0x7fff
	v_add3_u32 v173, v164, v173, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v187, v187
	v_exp_f32_e32 v185, v185
	v_exp_f32_e32 v183, v183
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v174.h, 0x7fff, v174.h, s1
	v_cndmask_b16 v174.l, 0x7fff, v173.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v188, v188
	v_exp_f32_e32 v186, v186
	v_exp_f32_e32 v184, v184
	v_exp_f32_e32 v175, v175
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v173, v174, s4, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v176, v176
	v_exp_f32_e32 v178, v178
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v240, 0, v190, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v190.h, v165.h
	v_perm_b32 v191, v173, v174, v153
	v_perm_b32 v192, v173, v174, v154
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v173, v193, v157
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v241, 0, v187, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v187.h, v165.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v243, 0, v185, s2
	v_cndmask_b32_e64 v245, 0, v183, s2
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v173, v173
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v185.h, v165.h
	v_mov_b16_e64 v183.h, v165.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v242, 0, v188, s2
	v_cndmask_b32_e64 v244, 0, v186, s2
	v_cndmask_b32_e64 v246, 0, v184, s2
	v_cndmask_b32_e64 v175, 0, v175, s2
	v_cndmask_b32_e64 v176, 0, v176, s2
	v_cndmask_b32_e64 v178, 0, v178, s2
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v166, v166, v157
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v173, 0, v173, s2
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v162, v162, v157
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v187.l, v241.h
	v_mov_b16_e64 v185.l, v243.h
	v_mov_b16_e64 v183.l, v245.h
	v_mov_b16_e64 v179.l, v173.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v174, v181, v157
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v173, v173
	v_mov_b16_e64 v181.h, v165.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v166, v166
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v179, 1, v179
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v174, v174
	v_exp_f32_e32 v162, v162
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v187, 1, v187
	v_and_b32_e32 v185, 1, v185
	v_add3_u32 v179, v173, v179, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v172, v172, v157 :: v_dual_and_b32 v183, 1, v183
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v187, v241, v187, 0x7fff
	v_add3_u32 v185, v243, v185, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b16 v179.l, 0x7fff, v179.h, s3
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v174, 0, v174, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v183, v245, v183, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v162, 0, v162, s2
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v172, v172
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v168, v168, v157
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v165.l, v174.h
	v_cmp_o_f32_e64 s1, v174, v174
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v163, v164, v163 :: v_dual_add_f32 v164, v173, v174
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp24:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v168, v168
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v180, 1, v165
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v160, v160, v157
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v180, v174, v180, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v160, v160
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v179.h, 0x7fff, v180.h, s1
	v_permlanex16_b32 v180, v179, s4, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v160, 0, v160, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v193, v180, v179, v153
	v_perm_b32 v194, v180, v179, v154
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v179, v182, v157
	v_sub_f32_e32 v180, v189, v157
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v189.h, v165.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v179, v179
	v_exp_f32_e32 v180, v180
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v179, 0, v179, s2
	v_cndmask_b32_e64 v180, 0, v180, s2
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v158, v158, v157
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v181.l, v179.h
	v_mov_b16_e64 v165.l, v180.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v180, v180
	v_cmp_o_f32_e64 s3, v179, v179
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v158, v158
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v181, 1, v181
	v_and_b32_e32 v182, 1, v165
	v_add3_u32 v181, v179, v181, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add3_u32 v182, v180, v182, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v158, 0, v158, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v181.l, 0x7fff, v181.h, s3
	v_cndmask_b16 v181.h, 0x7fff, v182.h, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v182, v181, s4, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v195, v182, v181, v153
	v_perm_b32 v196, v182, v181, v154
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v181, v197, v157
	v_sub_f32_e32 v182, v198, v157
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v181, v181
	v_exp_f32_e32 v182, v182
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v181, 0, v181, s2
	v_cndmask_b32_e64 v182, 0, v182, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v189.l, v181.h
	v_mov_b16_e64 v165.l, v182.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s1, v182, v182
	v_cmp_o_f32_e64 s3, v181, v181
	v_and_b32_e32 v189, 1, v189
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v197, 1, v165
	v_mov_b16_e64 v165.l, v240.h
	v_add3_u32 v189, v181, v189, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v197, v182, v197, 0x7fff
	v_cndmask_b16 v189.l, 0x7fff, v189.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b16 v189.h, 0x7fff, v197.h, s1
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v156
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v240, v240
	v_permlanex16_b32 v198, v189, s4, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v197, v198, v189, v153
	v_perm_b32 v198, v198, v189, v154
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v189, v156, v157
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v207, v189
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_nc_u32_e32 v189, 0, v80
	ds_load_b128 v[199:202], v189
	ds_load_b128 v[203:206], v86
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v156, 0, v207, s1
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[207:210], v87
	ds_load_b128 v[215:218], v189 offset:2048
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v23, v23, v156
	v_mul_f32_e32 v16, v16, v156
	v_mul_f32_e32 v17, v17, v156
	v_mul_f32_e32 v18, v18, v156
	v_mul_f32_e32 v19, v19, v156
	v_mul_f32_e32 v20, v20, v156
	v_mul_f32_e32 v21, v21, v156
	v_mul_f32_e32 v22, v22, v156
	v_mul_f32_e32 v24, v24, v156
	v_mul_f32_e32 v25, v25, v156
	v_mul_f32_e32 v26, v26, v156
	v_mul_f32_e32 v27, v27, v156
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[199:206], v[191:198], v[16:23]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[199:202], v93
	ds_load_b128 v[203:206], v94
	ds_load_b128 v[219:222], v95
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v156
	v_mul_f32_e32 v29, v29, v156
	v_mul_f32_e32 v30, v30, v156
	v_mul_f32_e32 v31, v31, v156
	v_mul_f32_e32 v8, v8, v156
	v_mul_f32_e32 v9, v9, v156
	v_mul_f32_e32 v10, v10, v156
	v_mul_f32_e32 v11, v11, v156
	v_mul_f32_e32 v12, v12, v156
	v_mul_f32_e32 v13, v13, v156
	v_mul_f32_e32 v14, v14, v156
	v_mul_f32_e32 v15, v15, v156
	v_mul_f32_e32 v2, v2, v156
	v_mul_f32_e32 v0, v0, v156
	v_mul_f32_e32 v1, v1, v156
	v_mul_f32_e32 v3, v3, v156
	v_mul_f32_e32 v4, v4, v156
	v_mul_f32_e32 v5, v5, v156
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[199:206], v[191:198], v[24:31]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[199:202], v100
	ds_load_b128 v[203:206], v101
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v156
	v_mul_f32_e32 v7, v7, v156
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[199:206], v[191:198], v[8:15]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[199:202], v107
	ds_load_b128 v[203:206], v108
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[199:206], v[191:198], v[0:7]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v191, v212, v157
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[211:214], v88
	ds_load_b128 v[198:201], v89
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v191, v191
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v239, 0, v191, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v190.l, v239.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s1, v239, v239
	v_and_b32_e32 v190, 1, v190
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v190, v239, v190, 0x7fff
	v_cndmask_b16 v191.l, 0x7fff, v190.h, s1
	v_and_b32_e32 v190, 1, v165
	v_mov_b16_e64 v165.l, v242.h
	v_cmp_o_f32_e64 s1, v241, v241
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v190, v240, v190, 0x7fff
	v_and_b32_e32 v188, 1, v165
	v_mov_b16_e64 v165.l, v244.h
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v187.l, 0x7fff, v187.h, s1
	v_cmp_o_f32_e64 s1, v244, v244
	v_cndmask_b16 v191.h, 0x7fff, v190.h, s3
	v_cmp_o_f32_e64 s3, v242, v242
	v_add3_u32 v188, v242, v188, 0x7fff
	v_and_b32_e32 v186, 1, v165
	v_mov_b16_e64 v165.l, v246.h
	v_permlanex16_b32 v192, v191, s4, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v187.h, 0x7fff, v188.h, s3
	v_cmp_o_f32_e64 s3, v243, v243
	v_add3_u32 v186, v244, v186, 0x7fff
	v_and_b32_e32 v184, 1, v165
	v_perm_b32 v190, v192, v191, v153
	v_permlanex16_b32 v188, v187, s4, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v185.l, 0x7fff, v185.h, s3
	v_cndmask_b16 v185.h, 0x7fff, v186.h, s1
	v_cmp_o_f32_e64 s1, v246, v246
	v_cmp_o_f32_e64 s3, v245, v245
	v_add3_u32 v184, v246, v184, 0x7fff
	v_perm_b32 v191, v192, v191, v154
	v_permlanex16_b32 v186, v185, s4, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v192, v188, v187, v153
	v_cndmask_b16 v183.l, 0x7fff, v183.h, s3
	v_cndmask_b16 v183.h, 0x7fff, v184.h, s1
	v_perm_b32 v193, v188, v187, v154
	v_perm_b32 v194, v186, v185, v153
	v_perm_b32 v195, v186, v185, v154
	v_mov_b16_e64 v187.h, v165.h
	v_permlanex16_b32 v184, v183, s4, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v187.l, v175.h
	v_mov_b16_e64 v165.l, v176.h
	v_cmp_o_f32_e64 s1, v175, v175
	v_cmp_o_f32_e64 s3, v176, v176
	v_perm_b32 v196, v184, v183, v153
	v_perm_b32 v197, v184, v183, v154
	v_and_b32_e32 v187, 1, v187
	v_and_b32_e32 v188, 1, v165
	v_mov_b16_e64 v165.l, v178.h
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[231:234], v110
	ds_load_b128 v[183:186], v111
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[207:214], v[190:197], v[16:23]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v214, 0, v171, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v171.h, v165.h
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[24:31], v[215:222], v[190:197], v[24:31]
	.loc	1 886 33 is_stmt 1              ; attention.py:886:33
	v_cndmask_b32_e64 v216, 0, v168, s2
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[202:205], v102
	ds_load_b128 v[206:209], v103
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v171.l, v214.h
	v_mov_b16_e64 v168.h, v165.h
	v_add3_u32 v187, v175, v187, 0x7fff
	v_mov_b16_e64 v168.l, v216.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v177, v177, v157
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v171, 1, v171
	v_add3_u32 v188, v176, v188, 0x7fff
	v_cndmask_b16 v187.l, 0x7fff, v187.h, s1
	v_and_b32_e32 v168, 1, v168
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v177, v177
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v215, 0, v172, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v187.h, 0x7fff, v188.h, s3
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v217, 0, v169, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v178, v178
	v_add3_u32 v171, v214, v171, 0x7fff
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[227:234], v[190:197], v[0:7]
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v188, v187, s4, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v168, v216, v168, 0x7fff
.Ltmp25:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v173, v214, v215 :: v_dual_add_f32 v174, v216, v217
.Ltmp26:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v177, 0, v177, s2
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[202:209], v[190:197], v[8:15]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_perm_b32 v206, v188, v187, v153
	v_perm_b32 v207, v188, v187, v154
	v_mov_b16_e64 v187.h, v165.h
	v_mov_b16_e64 v187.l, v177.h
	v_and_b32_e32 v188, 1, v165
	v_mov_b16_e64 v165.l, v215.h
	v_cmp_o_f32_e64 s1, v177, v177
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[190:193], v96
	ds_load_b128 v[194:197], v97
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v187, 1, v187
	v_add3_u32 v188, v178, v188, 0x7fff
	v_and_b32_e32 v172, 1, v165
	v_mov_b16_e64 v165.l, v217.h
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[202:205], v90
	ds_load_b128 v[219:222], v91
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v187, v177, v187, 0x7fff
	v_add3_u32 v172, v215, v172, 0x7fff
	v_and_b32_e32 v169, 1, v165
	v_mov_b16_e64 v165.l, v160.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cndmask_b16 v187.l, 0x7fff, v187.h, s1
	v_cndmask_b16 v187.h, 0x7fff, v188.h, s3
	v_cmp_o_f32_e64 s1, v214, v214
	v_cmp_o_f32_e64 s3, v215, v215
	v_add3_u32 v169, v217, v169, 0x7fff
	v_permlanex16_b32 v188, v187, s4, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v171.l, 0x7fff, v171.h, s1
	v_cndmask_b16 v171.h, 0x7fff, v172.h, s3
	v_cmp_o_f32_e64 s1, v216, v216
	v_cmp_o_f32_e64 s3, v217, v217
	v_perm_b32 v208, v188, v187, v153
	v_perm_b32 v209, v188, v187, v154
	v_permlanex16_b32 v172, v171, s4, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v168.l, 0x7fff, v168.h, s1
	v_cndmask_b16 v168.h, 0x7fff, v169.h, s3
	v_cmp_o_f32_e64 s3, v160, v160
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_perm_b32 v210, v172, v171, v153
	v_perm_b32 v211, v172, v171, v154
	v_permlanex16_b32 v169, v168, s4, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_perm_b32 v212, v169, v168, v153
	v_perm_b32 v213, v169, v168, v154
	v_mov_b16_e64 v168.h, v165.h
	v_and_b32_e32 v169, 1, v165
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[198:205], v[206:213], v[16:23]
	v_wmma_f32_16x16x16_bf16 v[24:31], v[190:197], v[206:213], v[24:31]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[190:193], v189 offset:4096
	ds_load_b128 v[194:197], v104
	ds_load_b128 v[231:234], v105
	ds_load_b128 v[198:201], v189 offset:6144
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v169, v160, v169, 0x7fff
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[190:197], v[206:213], v[8:15]
	.loc	1 886 33 is_stmt 1              ; attention.py:886:33
	v_cndmask_b32_e64 v192, 0, v166, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v166.h, v165.h
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[187:190], v112
	ds_load_b128 v[202:205], v113
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v193, 0, v167, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v166.l, v192.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v159, v159, v157 :: v_dual_and_b32 v166, 1, v166
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v159, v159
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v166, v192, v166, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v159, 0, v159, s2
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[183:190], v[206:213], v[0:7]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_mov_b16_e64 v168.l, v159.h
	v_cmp_o_f32_e64 s1, v159, v159
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v168, 1, v168
	v_add3_u32 v168, v159, v168, 0x7fff
.Ltmp27:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v159, v159, v160 :: v_dual_add_f32 v160, v192, v193
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp28:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v168.l, 0x7fff, v168.h, s1
	v_cndmask_b16 v168.h, 0x7fff, v169.h, s3
	v_cmp_o_f32_e64 s1, v158, v158
	v_permlanex16_b32 v169, v168, s4, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v183, v169, v168, v153
	v_perm_b32 v184, v169, v168, v154
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v168, v170, v157
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v168, v168
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v191, 0, v168, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v168.h, v165.h
	v_mov_b16_e64 v168.l, v158.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v161, v161, v157
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v165.l, v191.h
	v_cmp_o_f32_e64 s3, v191, v191
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v168, 1, v168
	v_and_b32_e32 v169, 1, v165
	v_mov_b16_e64 v165.l, v193.h
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v168, v158, v168, 0x7fff
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v158, v158, v191
.Ltmp30:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v161, v161
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v169, v191, v169, 0x7fff
	v_and_b32_e32 v167, 1, v165
	v_cndmask_b16 v168.l, 0x7fff, v168.h, s1
	v_cmp_o_f32_e64 s1, v192, v192
	v_mov_b16_e64 v165.l, v162.h
	v_cndmask_b16 v168.h, 0x7fff, v169.h, s3
	v_cmp_o_f32_e64 s3, v193, v193
	v_add3_u32 v167, v193, v167, 0x7fff
	v_cndmask_b16 v166.l, 0x7fff, v166.h, s1
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v161, 0, v161, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v169, v168, s4, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b16 v166.h, 0x7fff, v167.h, s3
	v_cmp_o_f32_e64 s3, v162, v162
	v_cmp_o_f32_e64 s1, v161, v161
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v185, v169, v168, v153
	v_perm_b32 v186, v169, v168, v154
	v_permlanex16_b32 v167, v166, s4, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v187, v167, v166, v153
	v_perm_b32 v188, v167, v166, v154
	v_mov_b16_e64 v166.h, v165.h
	v_mov_b16_e64 v166.l, v161.h
	v_and_b32_e32 v165, 1, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v166, 1, v166
	v_add3_u32 v165, v162, v165, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v166, v161, v166, 0x7fff
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v161, v161, v162 :: v_dual_add_f32 v162, v163, v164
	v_add_f32_e32 v158, v159, v158
.Ltmp32:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v166.l, 0x7fff, v166.h, s1
	v_cndmask_b16 v166.h, 0x7fff, v165.h, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v159, v160, v161
.Ltmp34:
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s1, s5, 64
	s_cmpk_lt_u32 s5, 0x7c0
	s_mov_b32 s5, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v165, v166, s4, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v189, v165, v166, v153
	v_perm_b32 v190, v165, v166, v154
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[165:168], v98
	ds_load_b128 v[169:172], v99
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[16:23], v[219:226], v[183:190], v[16:23]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[231:238], v[183:190], v[8:15]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[198:205], v[183:190], v[0:7]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[165:172], v[183:190], v[24:31]
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v165, v179, v180 :: v_dual_add_f32 v166, v181, v182
	v_dual_add_f32 v167, v239, v240 :: v_dual_add_f32 v168, v241, v242
	v_dual_add_f32 v169, v243, v244 :: v_dual_add_f32 v170, v245, v246
	v_dual_add_f32 v171, v175, v176 :: v_dual_add_f32 v172, v177, v178
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v163, v165, v166 :: v_dual_add_f32 v164, v167, v168
	v_add_f32_e32 v165, v169, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v167, v173, v174 :: v_dual_add_f32 v166, v171, v172
	v_dual_add_f32 v160, v162, v163 :: v_dual_add_f32 v161, v164, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v162, v166, v167
	v_dual_add_f32 v158, v158, v159 :: v_dual_add_f32 v159, v160, v161
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v158, v162, v158
	v_dual_add_f32 v158, v159, v158 :: v_dual_mov_b32 v159, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v77, v158, s4, 0xfedcba98 op_sel:[1,0]
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v77, v158, v77
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp38:
	.loc	1 897 23                        ; attention.py:897:23
	v_dual_fmac_f32 v77, v159, v156 :: v_dual_mov_b32 v156, v157
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_scale_f32 v32, null, v77, v77, v16
	v_div_scale_f32 v33, null, v77, v77, v17
	v_div_scale_f32 v34, null, v77, v77, v18
	v_rcp_f32_e32 v35, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v36, v33
	v_div_scale_f32 v39, s0, v17, v77, v17
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v38, vcc_lo, v16, v77, v16
	v_div_scale_f32 v42, null, v77, v77, v19
	v_div_scale_f32 v82, s3, v19, v77, v19
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v40, -v32, v35, 1.0
	v_fma_f32 v41, -v33, v36, 1.0
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s21, s21, 0xffff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v34, v37, 1.0
	s_mov_b32 s23, 0x31027000
	v_dual_fmac_f32 v35, v40, v35 :: v_dual_fmac_f32 v36, v41, v36
	v_div_scale_f32 v40, s1, v18, v77, v18
	v_rcp_f32_e32 v41, v42
	s_mov_b32 s22, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v39, v36
	v_fma_f32 v81, -v33, v78, v39
	v_fmac_f32_e32 v37, v43, v37
	v_mul_f32_e32 v43, v38, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v83, -v42, v41, 1.0
	v_dual_fmac_f32 v78, v81, v36 :: v_dual_mul_f32 v79, v40, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v80, -v32, v43, v38
	v_fma_f32 v33, -v33, v78, v39
	v_div_scale_f32 v39, null, v77, v77, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v43, v80, v35
	v_div_scale_f32 v80, null, v77, v77, v20
	v_fma_f32 v84, -v34, v79, v40
	v_fma_f32 v32, -v32, v43, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v38, v80
	v_fmac_f32_e32 v79, v84, v37
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v32, v32, v35, v43
	v_rcp_f32_e32 v43, v39
	s_mov_b32 vcc_lo, s0
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v77
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v36, v78
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v36, -v80, v38, 1.0
	v_div_fixup_f32 v16, v32, v77, v16
	v_div_scale_f32 v78, null, v77, v77, v23
	v_div_fixup_f32 v17, v33, v77, v17
	v_fma_f32 v33, -v34, v79, v40
	v_fmac_f32_e32 v38, v36, v38
	v_fma_f32 v34, -v39, v43, 1.0
	v_div_scale_f32 v36, null, v77, v77, v22
	v_fmac_f32_e32 v41, v83, v41
	v_div_fmas_f32 v33, v33, v37, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v43, v34, v43
	v_rcp_f32_e32 v34, v36
	v_rcp_f32_e32 v81, v78
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v18, v33, v77, v18
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	v_cndmask_b32_e64 v17, 0, v17, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v79, -v36, v34, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v35, v82, v41 :: v_dual_fmac_f32 v34, v79, v34
	v_fma_f32 v32, -v42, v35, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v79, -v78, v81, 1.0
	v_fmac_f32_e32 v35, v32, v41
	v_div_scale_f32 v32, s4, v20, v77, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v81, v79, v81
	v_div_scale_f32 v79, s5, v23, v77, v23
	v_fma_f32 v37, -v42, v35, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v40, v32, v38
	v_div_scale_f32 v42, s1, v21, v77, v21
	v_div_scale_f32 v82, null, v77, v77, v25
	v_div_fmas_f32 v35, v37, v41, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v37, -v80, v40, v32
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v19, v35, v77, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v37, v38
	v_div_scale_f32 v37, null, v77, v77, v24
	v_div_scale_f32 v35, s3, v22, v77, v22
	v_fma_f32 v32, -v80, v40, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v80, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v32, v38, v40
	v_dual_mul_f32 v40, v79, v81 :: v_dual_mul_f32 v41, v42, v43
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v20, v32, v77, v20
	v_fma_f32 v33, -v39, v41, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v33, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v39, v41, v42
	v_fma_f32 v42, -v37, v80, 1.0
	v_div_fmas_f32 v38, v38, v43, v41
	v_fma_f32 v41, -v78, v40, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v33, v35, v34 :: v_dual_fmac_f32 v80, v42, v80
	v_div_scale_f32 v42, s1, v24, v77, v24
	v_fmac_f32_e32 v40, v41, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v36, v33, v35
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v43, null, v77, v77, v27
	v_div_fixup_f32 v21, v38, v77, v21
	v_fmac_f32_e32 v33, v39, v34
	v_rcp_f32_e32 v39, v82
	v_div_scale_f32 v38, null, v77, v77, v26
	v_div_scale_f32 v41, s3, v25, v77, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v36, v33, v35
	v_mul_f32_e32 v35, v42, v80
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v32, v34, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v34, -v37, v35, v42
	v_fma_f32 v36, -v82, v39, 1.0
	v_fma_f32 v33, -v78, v40, v79
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v22, v32, v77, v22
	v_fmac_f32_e32 v35, v34, v80
	v_rcp_f32_e32 v34, v43
	v_div_fmas_f32 v33, v33, v81, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v79, null, v77, v77, v29
	v_fma_f32 v32, -v37, v35, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v23, v33, v77, v23
	v_div_scale_f32 v37, s4, v26, v77, v26
	v_rcp_f32_e32 v81, v79
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v42, -v43, v34, 1.0
	v_fmac_f32_e32 v39, v36, v39
	v_rcp_f32_e32 v36, v38
	v_div_fmas_f32 v32, v32, v80, v35
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v34, v42, v34
	v_mul_f32_e32 v40, v41, v39
	v_div_scale_f32 v42, s1, v27, v77, v27
	v_div_fixup_f32 v24, v32, v77, v24
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v82, v40, v41
	v_fma_f32 v78, -v38, v36, 1.0
	v_mul_f32_e32 v80, v42, v34
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v33, v39
	v_fmac_f32_e32 v36, v78, v36
	v_div_scale_f32 v78, null, v77, v77, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v82, v40, v41
	v_mul_f32_e32 v33, v37, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v35, v78
	v_div_fmas_f32 v32, v32, v39, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v38, v33, v37
	v_fma_f32 v39, -v43, v80, v42
	v_div_scale_f32 v40, s3, v28, v77, v28
	v_div_fixup_f32 v25, v32, v77, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v33, v41, v36
	v_fma_f32 v82, -v78, v35, 1.0
	v_fma_f32 v41, -v79, v81, 1.0
	v_fmac_f32_e32 v80, v39, v34
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v32, -v38, v33, v37
	v_fmac_f32_e32 v35, v82, v35
	v_fmac_f32_e32 v81, v41, v81
	v_div_scale_f32 v38, s5, v29, v77, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v32, v32, v36, v33
	v_mul_f32_e32 v37, v40, v35
	v_fma_f32 v33, -v43, v80, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v42, v38, v81
	v_div_scale_f32 v39, null, v77, v77, v30
	v_fma_f32 v36, -v78, v37, v40
	v_div_scale_f32 v43, null, v77, v77, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v41, v39
	v_div_fixup_f32 v26, v32, v77, v26
	v_fmac_f32_e32 v37, v36, v35
	v_fma_f32 v36, -v79, v42, v38
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v34, v80
	v_fma_f32 v32, -v78, v37, v40
	v_fmac_f32_e32 v42, v36, v81
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v34, v43
	v_fma_f32 v80, -v39, v41, 1.0
	v_div_fmas_f32 v32, v32, v35, v37
	v_fma_f32 v35, -v79, v42, v38
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v79, null, v77, v77, v9
	v_div_fixup_f32 v27, v33, v77, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v35, v35, v81, v42
	v_fmac_f32_e32 v41, v80, v41
	v_div_scale_f32 v33, s1, v30, v77, v30
	v_fma_f32 v36, -v43, v34, 1.0
	v_div_fixup_f32 v29, v35, v77, v29
	v_rcp_f32_e32 v35, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v37, v33, v41
	v_div_scale_f32 v38, s3, v31, v77, v31
	v_fmac_f32_e32 v34, v36, v34
	v_div_scale_f32 v36, null, v77, v77, v8
	v_fma_f32 v42, -v39, v37, v33
	v_div_fixup_f32 v28, v32, v77, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v78, v38, v34
	v_rcp_f32_e32 v40, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v80, -v79, v35, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v81, null, v77, v77, v11
	v_fma_f32 v32, -v43, v78, v38
	v_fmac_f32_e32 v35, v80, v35
	v_fmac_f32_e32 v37, v42, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v83, v81
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v42, -v36, v40, 1.0
	v_fmac_f32_e32 v78, v32, v34
	v_fma_f32 v33, -v39, v37, v33
	v_div_scale_f32 v39, null, v77, v77, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v42, v40
	v_div_scale_f32 v32, s4, v8, v77, v8
	v_rcp_f32_e32 v42, v39
	v_div_fmas_f32 v33, v33, v41, v37
	v_fma_f32 v37, -v43, v78, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v38, v32, v40
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v41, s1, v9, v77, v9
	v_div_fmas_f32 v34, v37, v34, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v80, -v36, v38, v32
	v_div_fixup_f32 v30, v33, v77, v30
	v_fma_f32 v43, -v39, v42, 1.0
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v31, v34, v77, v31
	v_fmac_f32_e32 v38, v80, v40
	v_fma_f32 v34, -v81, v83, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, s5, v10, v77, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v36, v38, v32
	v_div_scale_f32 v36, null, v77, v77, v12
	v_mul_f32_e32 v78, v43, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v32, v40, v38
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v39, v78, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v32, v77, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v78, v33, v42
	v_mul_f32_e32 v82, v41, v35
	v_rcp_f32_e32 v33, v36
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v79, v82, v41
	v_fma_f32 v40, -v36, v33, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v82, v37, v35 :: v_dual_fmac_f32 v33, v40, v33
	v_fma_f32 v37, -v79, v82, v41
	v_div_scale_f32 v40, s1, v12, v77, v12
	v_fmac_f32_e32 v83, v34, v83
	v_div_scale_f32 v34, s3, v11, v77, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v35, v37, v35, v82
	v_fma_f32 v37, -v39, v78, v43
	v_div_scale_f32 v39, null, v77, v77, v13
	v_mul_f32_e32 v32, v40, v33
	v_div_fixup_f32 v9, v35, v77, v9
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v39
	v_div_fmas_f32 v37, v37, v42, v78
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v10, v37, v77, v10
	v_div_scale_f32 v37, null, v77, v77, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v39, v41, 1.0
	v_mul_f32_e32 v38, v34, v83
	v_rcp_f32_e32 v43, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v35, v41
	v_fma_f32 v42, -v81, v38, v34
	v_div_scale_f32 v35, s4, v13, v77, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v38, v42, v83
	v_fma_f32 v42, -v36, v32, v40
	v_fma_f32 v34, -v81, v38, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v32, v42, v33
	v_div_scale_f32 v42, null, v77, v77, v15
	v_div_fmas_f32 v34, v34, v83, v38
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v78, v42
	v_div_fixup_f32 v11, v34, v77, v11
	v_fma_f32 v34, -v36, v32, v40
	v_fma_f32 v40, -v37, v43, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v40, v43
	v_div_scale_f32 v40, null, v77, v77, v1
	v_div_fmas_f32 v32, v34, v33, v32
	v_div_scale_f32 v34, s1, v14, v77, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v80, v40
	v_mul_f32_e32 v38, v35, v41
	v_div_scale_f32 v33, null, v77, v77, v0
	v_div_fixup_f32 v12, v32, v77, v12
	v_fma_f32 v32, -v42, v78, 1.0
	v_fma_f32 v36, -v39, v38, v35
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v81, s4, v0, v77, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v82, -v40, v80, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v80, v82, v80
	v_div_scale_f32 v82, s5, v1, v77, v1
	v_fmac_f32_e32 v38, v36, v41
	v_rcp_f32_e32 v36, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v35, -v39, v38, v35
	v_mul_f32_e32 v39, v34, v43
	v_div_fmas_f32 v35, v35, v41, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v38, -v37, v39, v34
	v_fmac_f32_e32 v78, v32, v78
	v_div_scale_f32 v32, s3, v15, v77, v15
	v_fma_f32 v79, -v33, v36, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v38, v43
	v_div_fixup_f32 v13, v35, v77, v13
	v_mul_f32_e32 v41, v32, v78
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v37, v39, v34
	v_mul_f32_e32 v37, v82, v80
	v_fma_f32 v38, -v42, v41, v32
	v_fmac_f32_e32 v36, v79, v36
	v_div_scale_f32 v79, null, v77, v77, v2
	v_div_fmas_f32 v34, v34, v43, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v38, v78
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v83, v79
	v_div_scale_f32 v39, null, v77, v77, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v42, v41, v32
	v_div_fixup_f32 v14, v34, v77, v14
	v_div_scale_f32 v43, null, v77, v77, v7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v32, v78, v41
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v38, -v79, v83, 1.0
	v_mul_f32_e32 v84, v81, v36
	v_rcp_f32_e32 v41, v39
	v_div_fixup_f32 v15, v32, v77, v15
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v83, v38, v83
	v_fma_f32 v35, -v33, v84, v81
	v_div_scale_f32 v38, s1, v2, v77, v2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v84, v35, v36
	v_fma_f32 v35, -v40, v37, v82
	v_fma_f32 v34, -v39, v41, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, v35, v80
	v_mul_f32_e32 v35, v38, v83
	v_fma_f32 v33, -v33, v84, v81
	v_div_fmas_f32 v33, v33, v36, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v40, v37, v82
	v_fma_f32 v40, -v79, v35, v38
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v0, v33, v77, v0
	v_div_scale_f32 v33, null, v77, v77, v4
	v_fmac_f32_e32 v35, v40, v83
	v_div_fmas_f32 v36, v36, v80, v37
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v32, -v79, v35, v38
	v_div_fixup_f32 v1, v36, v77, v1
	v_div_scale_f32 v36, null, v77, v77, v6
	v_rcp_f32_e32 v79, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v32, v32, v83, v35
	v_rcp_f32_e32 v35, v33
	v_rcp_f32_e32 v40, v36
	v_div_scale_f32 v37, vcc_lo, v3, v77, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_div_fixup_f32 v2, v32, v77, v2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v83, -v43, v79, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v32, -v33, v35, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v36, v40, 1.0
	v_fmac_f32_e32 v41, v34, v41
	v_div_scale_f32 v34, null, v77, v77, v5
	v_fmac_f32_e32 v35, v32, v35
	v_div_scale_f32 v32, s1, v4, v77, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v38, v34
	v_fmac_f32_e32 v40, v81, v40
	v_mul_f32_e32 v42, v37, v41
	v_mul_f32_e32 v82, v32, v35
	v_div_scale_f32 v81, s4, v6, v77, v6
	v_fmac_f32_e32 v79, v83, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v80, -v39, v42, v37
	v_div_scale_f32 v83, s5, v7, v77, v7
	v_fma_f32 v78, -v34, v38, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v85, v81, v40 :: v_dual_fmac_f32 v42, v80, v41
	v_fma_f32 v80, -v33, v82, v32
	v_mul_f32_e32 v86, v83, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v78, v38
	v_div_scale_f32 v78, s3, v5, v77, v5
	v_fmac_f32_e32 v82, v80, v35
	v_fma_f32 v80, -v36, v85, v81
	v_fma_f32 v37, -v39, v42, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v84, v78, v38
	v_fma_f32 v32, -v33, v82, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v80, v40
	v_fma_f32 v33, -v43, v86, v83
	v_fma_f32 v39, -v34, v84, v78
	v_div_fmas_f32 v37, v37, v41, v42
	s_mov_b32 vcc_lo, s1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s35, v60
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v32, v35, v82
	v_fmac_f32_e32 v84, v39, v38
	v_fmac_f32_e32 v86, v33, v79
	v_fma_f32 v33, -v36, v85, v81
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v4, v32, v77, v4
	v_fma_f32 v34, -v34, v84, v78
	v_fma_f32 v35, -v43, v86, v83
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v32, s35, v44
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v3, v37, v77, v3
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v38, v84
	s_mov_b32 vcc_lo, s4
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s35, v52
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v40, v85
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v5, v34, v77, v5
	v_div_fmas_f32 v35, v35, v79, v86
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s35, v63
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v33, v77, v6
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v33, v32, v63, 2
	v_add_lshl_u32 v34, v32, v76, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v35, v77, v7
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v35, v32, v75, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	s_clause 0x2
	buffer_store_b32 v16, v33, s[20:23], 0 offen
	buffer_store_b32 v17, v34, s[20:23], 0 offen
	buffer_store_b32 v18, v35, s[20:23], 0 offen
	v_add_lshl_u32 v16, v32, v74, 2
	v_add_lshl_u32 v17, v32, v73, 2
	v_add_lshl_u32 v18, v32, v72, 2
	v_add_lshl_u32 v33, v32, v71, 2
	v_add_lshl_u32 v34, v32, v70, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v16, 0x80000000, v16 :: v_dual_cndmask_b32 v17, 0x80000000, v17
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s35, v69
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	s_clause 0x4
	buffer_store_b32 v19, v16, s[20:23], 0 offen
	buffer_store_b32 v20, v17, s[20:23], 0 offen
	buffer_store_b32 v21, v18, s[20:23], 0 offen
	buffer_store_b32 v22, v33, s[20:23], 0 offen
	buffer_store_b32 v23, v34, s[20:23], 0 offen
	v_add_lshl_u32 v16, v32, v69, 2
	v_add_lshl_u32 v17, v32, v68, 2
	v_add_lshl_u32 v18, v32, v67, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v19, v32, v66, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v16, 0x80000000, v16 :: v_dual_cndmask_b32 v17, 0x80000000, v17
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	v_add_lshl_u32 v20, v32, v65, 2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x2
	buffer_store_b32 v24, v16, s[20:23], 0 offen
	buffer_store_b32 v25, v17, s[20:23], 0 offen
	buffer_store_b32 v26, v18, s[20:23], 0 offen
	v_add_lshl_u32 v17, v32, v64, 2
	v_add_lshl_u32 v18, v32, v62, 2
	v_cndmask_b32_e32 v16, 0x80000000, v20, vcc_lo
	buffer_store_b32 v27, v19, s[20:23], 0 offen
	v_add_lshl_u32 v19, v32, v61, 2
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_cndmask_b32 v18, 0x80000000, v18
	buffer_store_b32 v28, v16, s[20:23], 0 offen
	v_add_lshl_u32 v16, v32, v60, 2
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v29, v17, s[20:23], 0 offen
	v_add_lshl_u32 v17, v32, v59, 2
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	s_clause 0x2
	buffer_store_b32 v30, v18, s[20:23], 0 offen
	buffer_store_b32 v31, v19, s[20:23], 0 offen
	buffer_store_b32 v8, v16, s[20:23], 0 offen
	v_add_lshl_u32 v8, v32, v58, 2
	v_cndmask_b32_e32 v16, 0x80000000, v17, vcc_lo
	v_add_lshl_u32 v17, v32, v57, 2
	v_add_lshl_u32 v18, v32, v56, 2
	v_add_lshl_u32 v19, v32, v55, 2
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	buffer_store_b32 v9, v16, s[20:23], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v16, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	buffer_store_b32 v10, v8, s[20:23], 0 offen
	v_add_lshl_u32 v8, v32, v54, 2
	s_clause 0x2
	buffer_store_b32 v11, v9, s[20:23], 0 offen
	buffer_store_b32 v12, v16, s[20:23], 0 offen
	buffer_store_b32 v13, v17, s[20:23], 0 offen
	v_add_lshl_u32 v9, v32, v53, 2
	v_add_lshl_u32 v10, v32, v52, 2
	v_add_lshl_u32 v11, v32, v51, 2
	v_add_lshl_u32 v12, v32, v50, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v14, v8, s[20:23], 0 offen
	buffer_store_b32 v15, v9, s[20:23], 0 offen
	buffer_store_b32 v0, v10, s[20:23], 0 offen
	buffer_store_b32 v1, v11, s[20:23], 0 offen
	buffer_store_b32 v2, v12, s[20:23], 0 offen
	v_add_lshl_u32 v0, v32, v49, 2
	v_add_lshl_u32 v1, v32, v48, 2
	v_add_lshl_u32 v2, v32, v47, 2
	v_add_lshl_u32 v8, v32, v46, 2
	v_add_lshl_u32 v9, v32, v45, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	s_clause 0x4
	buffer_store_b32 v3, v0, s[20:23], 0 offen
	buffer_store_b32 v4, v1, s[20:23], 0 offen
	buffer_store_b32 v5, v2, s[20:23], 0 offen
	buffer_store_b32 v6, v8, s[20:23], 0 offen
	buffer_store_b32 v7, v9, s[20:23], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp39:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
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
		.amdhsa_next_free_vgpr 247
		.amdhsa_next_free_sgpr 36
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 247
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 36
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11520
; TotalNumSgprs: 38
; NumVgprs: 247
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 38
; NumVGPRsForWavesPerEU: 247
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           1
        .value_kind:     by_value
      - .offset:         125
        .size:           1
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         152
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     38
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     247
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
