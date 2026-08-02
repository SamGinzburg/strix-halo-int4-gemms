	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[48:51], s[0:1], 0x5c
	s_load_b128 s[44:47], s[0:1], 0x30
	v_dual_mov_b32 v52, 0x7632 :: v_dual_and_b32 v49, 7, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v50, 3, v0
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[56:57], s[0:1], 0x10
	v_dual_mov_b32 v51, 0x5410 :: v_dual_lshlrev_b32 v48, 3, v49
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s65, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s66, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s65, v50
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s64, s65, s66
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	v_lshrrev_b32_e32 v116, 4, v0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v1
	v_bfe_i32 v59, v0, 3, 1
	s_mov_b32 s36, 0
	s_mov_b32 s67, 0x76543210
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[88:89], null, s48, v50, v[48:49]
	s_mul_i32 s9, s48, s64
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s2, s48, v48
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s8, s48, 5
	s_mul_i32 s10, s48, 48
	.loc	1 788 26                        ; attention.py:788:26
	s_mov_b32 s52, s4
	s_and_b32 s53, s5, 0xffff
	v_dual_mov_b32 v24, 0 :: v_dual_add_nc_u32 v1, s9, v88
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v110, s48, 4, v88
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s4, vcc_lo, s2
	.loc	1 787 79                        ; attention.py:787:79
	v_and_b32_e32 v113, 16, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v25, v24 :: v_dual_lshlrev_b32 v2, 1, v1
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v3, v110, s9, 1
	v_add_lshl_u32 v4, v1, s8, 1
	v_add_lshl_u32 v1, v1, s10, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_dual_mov_b32 v26, v24 :: v_dual_and_b32 v111, 15, v0
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	s_clause 0x3
	buffer_load_b128 v[32:35], v2, s[52:55], 0 offen
	buffer_load_b128 v[36:39], v3, s[52:55], 0 offen
	buffer_load_b128 v[40:43], v4, s[52:55], 0 offen
	buffer_load_b128 v[44:47], v1, s[52:55], 0 offen
	s_load_b64 s[4:5], s[0:1], 0x6c
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v27, v24 :: v_dual_and_b32 v112, 0x60, v0
	s_lshr_b32 s0, s0, 29
	v_dual_mov_b32 v29, v24 :: v_dual_and_b32 v114, 0x78, v0
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v30, v24 :: v_dual_lshlrev_b32 v53, 4, v0
	v_dual_mov_b32 v31, v24 :: v_dual_lshlrev_b32 v54, 1, v0
	v_dual_mov_b32 v18, v24 :: v_dual_lshlrev_b32 v115, 2, v0
	v_dual_mov_b32 v20, v24 :: v_dual_lshlrev_b32 v57, 6, v0
	v_dual_mov_b32 v19, v24 :: v_dual_lshlrev_b32 v58, 3, v0
	v_mov_b32_e32 v28, v24
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s8, s0, 3
	v_cmp_eq_u32_e64 s0, 0, v113
	v_dual_mov_b32 v16, v24 :: v_dual_and_b32 v55, 0x70, v0
	v_dual_mov_b32 v17, v24 :: v_dual_lshlrev_b32 v56, 9, v0
	v_dual_mov_b32 v21, v24 :: v_dual_lshlrev_b32 v62, 7, v111
	v_dual_mov_b32 v22, v24 :: v_dual_and_b32 v61, 0x70, v54
	v_dual_mov_b32 v23, v24 :: v_dual_lshlrev_b32 v64, 4, v49
	v_dual_mov_b32 v8, v24 :: v_dual_lshlrev_b32 v63, 6, v112
	v_dual_mov_b32 v10, v24 :: v_dual_lshlrev_b32 v117, 3, v111
	v_dual_mov_b32 v12, v24 :: v_dual_and_b32 v67, 64, v57
	v_dual_mov_b32 v13, v24 :: v_dual_and_b32 v70, 0x7c, v115
	v_dual_mov_b32 v1, v24 :: v_dual_and_b32 v72, 48, v53
	v_dual_mov_b32 v3, v24 :: v_dual_and_b32 v58, 48, v58
	v_lshrrev_b32_e32 v69, 1, v114
	v_cndmask_b32_e64 v51, 0x1054, v51, s0
	v_dual_mov_b32 v9, v24 :: v_dual_and_b32 v66, 0x1b8, v115
	v_dual_mov_b32 v11, v24 :: v_dual_lshlrev_b32 v68, 5, v113
	v_dual_mov_b32 v14, v24 :: v_dual_and_b32 v71, 2, v116
	v_dual_mov_b32 v15, v24 :: v_dual_and_b32 v54, 0x80, v54
	v_dual_mov_b32 v0, v24 :: v_dual_and_b32 v59, 0x210, v59
	v_lshrrev_b32_e32 v65, 1, v55
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v53, v53, v61
	v_or3_b32 v61, v62, v63, v64
	v_or_b32_e32 v118, v64, v62
	v_lshl_or_b32 v55, v55, 6, v117
	v_and_or_b32 v56, 0x1c00, v56, v67
	v_lshl_or_b32 v62, v112, 3, v64
	v_and_or_b32 v57, 0x700, v57, v70
	v_xor_b32_e32 v63, v72, v69
	v_lshl_or_b32 v58, v49, 6, v58
	v_lshl_or_b32 v51, v51, 8, v51
	v_cndmask_b32_e64 v52, 0x3276, v52, s0
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v60, 2, v114
	v_mov_b32_e32 v6, v24
	v_xor_b32_e32 v55, v55, v65
	v_or3_b32 v120, v56, v68, v66
	v_xor_b32_e32 v121, v62, v69
	v_or3_b32 v122, v57, v54, v71
	v_xor_b32_e32 v123, v58, v59
	v_and_b32_e32 v51, 0x540054, v51
	v_lshl_or_b32 v52, v52, 8, v52
	v_lshl_or_b32 v124, v49, 9, v63
	v_xor_b32_e32 v54, 16, v118
	v_xor_b32_e32 v56, 32, v118
	v_xor_b32_e32 v57, 48, v118
	v_xor_b32_e32 v58, 64, v118
	v_xor_b32_e32 v59, 0x50, v118
	v_xor_b32_e32 v62, 0x60, v118
	v_xor_b32_e32 v63, 0x70, v118
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s3, s3, s1
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s49, v48
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[93:94], null, s49, v60, v[48:49]
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v48, s5, v50
	v_dual_mov_b32 v2, v24 :: v_dual_add_nc_u32 v119, 0, v53
	v_dual_mov_b32 v4, v24 :: v_dual_add_nc_u32 v53, 0, v61
	v_dual_mov_b32 v5, v24 :: v_dual_add_nc_u32 v126, 0, v56
	v_dual_mov_b32 v7, v24 :: v_dual_add_nc_u32 v128, 0, v58
	v_dual_mov_b32 v89, v24 :: v_dual_add_nc_u32 v130, 0, v62
	v_dual_mov_b32 v91, v24 :: v_dual_add_nc_u32 v132, 0, v55
	v_mov_b32_e32 v90, v24
	v_dual_mov_b32 v92, v24 :: v_dual_add_nc_u32 v125, 0, v54
	v_lshl_or_b32 v50, v51, 4, v51
	v_and_b32_e32 v51, 0x760076, v52
	v_dual_mov_b32 v160, 0xff800000 :: v_dual_add_nc_u32 v127, 0, v57
	v_dual_mov_b32 v162, 0xff800000 :: v_dual_add_nc_u32 v129, 0, v59
	v_dual_mov_b32 v166, 0xff800000 :: v_dual_add_nc_u32 v131, 0, v63
	v_xor_b32_e32 v52, 8, v120
	v_xor_b32_e32 v54, 16, v120
	v_xor_b32_e32 v55, 24, v120
	v_xor_b32_e32 v56, 32, v120
	v_xor_b32_e32 v57, 40, v120
	v_xor_b32_e32 v58, 48, v120
	v_xor_b32_e32 v59, 56, v120
	v_xor_b32_e32 v60, 0x440, v121
	v_xor_b32_e32 v62, 16, v122
	v_xor_b32_e32 v63, 32, v122
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v64, v61, 16, 0
	v_xad_u32 v67, v61, 32, 0
	v_xad_u32 v70, v61, 48, 0
	v_xad_u32 v72, v61, 64, 0
	v_xad_u32 v73, 0x50, v61, 0
	v_xad_u32 v74, 0x60, v61, 0
	v_xad_u32 v61, 0x70, v61, 0
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v94, v49, 2, v48
	v_and_b32_e32 v108, 0x5040504, v50
	v_lshl_or_b32 v84, v51, 4, v51
	v_dual_mov_b32 v164, 0xff800000 :: v_dual_add_nc_u32 v133, 0, v52
	v_dual_mov_b32 v169, 0xff800000 :: v_dual_add_nc_u32 v134, 0, v54
	v_add_nc_u32_e32 v135, 0, v55
	v_dual_mov_b32 v161, 0xff800000 :: v_dual_add_nc_u32 v136, 0, v56
	v_add_nc_u32_e32 v137, 0, v57
	v_dual_mov_b32 v163, 0xff800000 :: v_dual_add_nc_u32 v138, 0, v58
	v_add_nc_u32_e32 v139, 0, v59
	v_dual_mov_b32 v165, 0xff800000 :: v_dual_add_nc_u32 v140, 0, v60
	v_add_nc_u32_e32 v141, 0, v62
	v_dual_mov_b32 v167, 0xff800000 :: v_dual_add_nc_u32 v142, 0, v63
	v_xor_b32_e32 v65, 48, v122
	v_xor_b32_e32 v66, 64, v122
	v_xor_b32_e32 v68, 0x50, v122
	v_xor_b32_e32 v69, 0x60, v122
	v_xor_b32_e32 v71, 0x70, v122
	v_xor_b32_e32 v75, 0x90, v124
	v_xor_b32_e32 v76, 0x120, v124
	v_xor_b32_e32 v77, 0x1b0, v124
	v_xor_b32_e32 v78, 16, v123
	v_xor_b32_e32 v79, 32, v123
	v_xor_b32_e32 v80, 48, v123
	v_xor_b32_e32 v81, 0x420, v123
	v_xor_b32_e32 v82, 0x430, v123
	v_xor_b32_e32 v83, 0x410, v123
	v_mad_u64_u32 v[95:96], null, s5, 48, v[94:95]
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s8, s51, s8
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s3, s4, s3
	v_add_nc_u32_e32 v143, 0, v65
	v_add_nc_u32_e32 v144, 0, v66
	v_add_nc_u32_e32 v145, 0, v68
	v_add_nc_u32_e32 v146, 0, v69
	v_add_nc_u32_e32 v147, 0, v71
	v_add_nc_u32_e32 v148, 0, v75
	v_add_nc_u32_e32 v149, 0, v76
	v_add_nc_u32_e32 v150, 0, v77
	v_add_nc_u32_e32 v151, 0, v78
	v_add_nc_u32_e32 v152, 0, v79
	v_add_nc_u32_e32 v153, 0, v80
	v_add_nc_u32_e32 v154, 0, v81
	v_add_nc_u32_e32 v155, 0, v82
	v_add_nc_u32_e32 v156, 0, v83
	v_and_b32_e32 v109, 0x7060706, v84
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v157, s5, 4, v94
	v_lshl_add_u32 v158, s5, 5, v94
	v_add_nc_u32_e32 v159, s49, v93
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s50, s50, 0x3fb8aa3b
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s4, s5, s65
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s60, s44
	s_add_i32 s44, s3, s8
	s_mov_b32 s37, s36
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	s_mov_b32 s62, s54
	s_mov_b32 s63, s55
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	s_mov_b32 s68, s36
	s_and_b32 s53, s7, 0xffff
	s_and_b32 s57, s57, 0xffff
	s_mov_b32 s61, s45
	s_add_i32 s44, s44, s4
	s_mov_b32 s52, s6
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v119, v[32:35]
	s_waitcnt vmcnt(2)
	ds_store_b128 v119, v[36:39] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v119, v[40:43] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v119, v[44:47] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[32:35], v53
	ds_load_b128 v[36:39], v64
	ds_load_b128 v[40:43], v67
	ds_load_b128 v[44:47], v70
	ds_load_b128 v[48:51], v72
	ds_load_b128 v[52:55], v73
	ds_load_b128 v[56:59], v74
	ds_load_b128 v[60:63], v61
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 853 32                        ; attention.py:853:32
	s_or_b32 s11, s68, s66
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s3, s44, s68
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s4, s11, s48
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v72, s3, v94, 2
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v74, s4, v88, 1
	v_add_lshl_u32 v75, s4, v110, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v73, s3, v157, 2
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v71, s43 :: v_dual_add_nc_u32 v80, 0, v118
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e32 v104, 0x80000000, v72, vcc_lo
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v72, 0x80000000, v74, s2
	v_cndmask_b32_e64 v76, 0x80000000, v75, s2
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e32 v106, 0x80000000, v73, vcc_lo
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v70, s42 :: v_dual_mov_b32 v69, s41
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x1
	buffer_load_b128 v[72:75], v72, s[52:55], 0 offen
	buffer_load_b128 v[76:79], v76, s[52:55], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v68, s40 :: v_dual_mov_b32 v67, s39
	v_dual_mov_b32 v66, s38 :: v_dual_mov_b32 v65, s37
	v_mov_b32_e32 v64, s36
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s23, s11, s49
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(1)
	ds_store_b128 v119, v[72:75]
	s_waitcnt vmcnt(0)
	ds_store_b128 v119, v[76:79] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[76:79], v125
	ds_load_b128 v[72:75], v80
	ds_load_b128 v[80:83], v80 offset:2048
	ds_load_b128 v[84:87], v125 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[96:103], v[72:79], v[32:39], v[64:71]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[170:177], v[80:87], v[32:39], v[64:71]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[68:71], v127
	ds_load_b128 v[64:67], v126
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[96:103], v[64:71], v[40:47], v[96:103]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[64:67], v126 offset:2048
	ds_load_b128 v[68:71], v127 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[170:177], v[64:71], v[40:47], v[170:177]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[68:71], v129
	ds_load_b128 v[64:67], v128
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[96:103], v[64:71], v[48:55], v[96:103]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[64:67], v128 offset:2048
	ds_load_b128 v[68:71], v129 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[170:177], v[64:71], v[48:55], v[170:177]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[68:71], v131
	ds_load_b128 v[64:67], v130
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[96:103], v[64:71], v[56:63], v[96:103]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[64:67], v130 offset:2048
	ds_load_b128 v[68:71], v131 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[170:177], v[64:71], v[56:63], v[170:177]
	.loc	1 879 36                        ; attention.py:879:36
	buffer_load_b128 v[66:69], v104, s[60:63], 0 offen
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v65, 0xff800000, v69 :: v_dual_cndmask_b32 v64, 0xff800000, v67
	v_dual_cndmask_b32 v105, 0xff800000, v68 :: v_dual_cndmask_b32 v104, 0xff800000, v66
	buffer_load_b128 v[68:71], v106, s[60:63], 0 offen
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s12, 0xff800000, v65
	v_cmp_neq_f32_e64 s11, 0xff800000, v64
	v_cmp_neq_f32_e64 s4, 0xff800000, v105
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s18, vcc_lo, s11
	s_and_b32 s15, vcc_lo, s4
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v107, 0xff800000, v70 :: v_dual_cndmask_b32 v106, 0xff800000, v68
	v_add_lshl_u32 v68, s3, v158, 2
	v_dual_cndmask_b32 v67, 0xff800000, v71 :: v_dual_cndmask_b32 v66, 0xff800000, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v107
	v_cmp_neq_f32_e64 s5, 0xff800000, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e32 v68, 0x80000000, v68, vcc_lo
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s17, 0xff800000, v67
	v_cmp_neq_f32_e64 s14, 0xff800000, v66
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s13, vcc_lo, s5
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	buffer_load_b128 v[70:73], v68, s[60:63], 0 offen
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s5, vcc_lo, s7
	s_and_b32 s14, vcc_lo, s14
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v179, 0xff800000, v72 :: v_dual_cndmask_b32 v178, 0xff800000, v70
	v_add_lshl_u32 v70, s3, v95, 2
	v_dual_cndmask_b32 v69, 0xff800000, v73 :: v_dual_cndmask_b32 v68, 0xff800000, v71
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_neq_f32_e64 s6, 0xff800000, v178
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e32 v70, 0x80000000, v70, vcc_lo
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s8, 0xff800000, v179
	v_cmp_neq_f32_e64 s19, 0xff800000, v68
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s16, vcc_lo, s3
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s20, 0xff800000, v69
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	buffer_load_b128 v[70:73], v70, s[60:63], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s7, vcc_lo, s6
	s_and_b32 s6, vcc_lo, s8
	s_and_b32 s11, vcc_lo, s20
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v183, 0xff800000, v72 :: v_dual_cndmask_b32 v182, 0xff800000, v70
	v_dual_cndmask_b32 v181, 0xff800000, v73 :: v_dual_add_nc_u32 v70, 0, v120
	v_cndmask_b32_e32 v180, 0xff800000, v71, vcc_lo
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b64 v132, v[104:105], v[106:107] offset1:16
	ds_store_2addr_b64 v132, v[64:65], v[66:67] offset0:64 offset1:80
	ds_store_2addr_b64 v132, v[178:179], v[182:183] offset0:32 offset1:48
	ds_store_2addr_b64 v132, v[68:69], v[180:181] offset0:96 offset1:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[71:72], v70
	ds_load_b64 v[85:86], v138
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v64, 0, 1, s5
	v_cndmask_b32_e64 v65, 0, 1, s13
	v_cndmask_b32_e64 v66, 0, 1, s15
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s10, 0xff800000, v183
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v67, 0, 1, s16
	v_lshlrev_b16 v64.l, 8, v64.l
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s9, 0xff800000, v182
	v_cmp_neq_f32_e64 s22, 0xff800000, v181
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s3, vcc_lo, s10
	s_and_b32 s10, vcc_lo, s17
	v_cndmask_b32_e64 v68, 0, 1, s3
	s_and_b32 s4, vcc_lo, s9
	s_and_b32 s17, vcc_lo, s12
	v_cndmask_b32_e64 v69, 0, 1, s4
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s21, 0xff800000, v180
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s8, vcc_lo, s22
	s_and_b32 s12, vcc_lo, s19
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v78, 0x3fb8aa3b, v71 :: v_dual_mul_f32 v71, 0x3fb8aa3b, v72
	ds_load_b64 v[72:73], v133
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s9, vcc_lo, s21
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v85, 0x3fb8aa3b, v85 :: v_dual_fmac_f32 v78, s50, v96
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v71, s50, v97
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[96:97], v139
	.loc	1 880 25                        ; attention.py:880:25
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v85, s50, v174 :: v_dual_mul_f32 v80, 0x3fb8aa3b, v72
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v72, 0x3fb8aa3b, v73
	ds_load_b64 v[73:74], v134
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v87, 0x3fb8aa3b, v96
	v_dual_mul_f32 v79, 0x3fb8aa3b, v97 :: v_dual_add_nc_u32 v96, 0, v122
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v97, s23, v93, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v87, s50, v176
	v_fmac_f32_e32 v79, s50, v177
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v81, 0x3fb8aa3b, v73
	v_mul_f32_e32 v73, 0x3fb8aa3b, v74
	ds_load_b64 v[74:75], v135
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v81, s50, v100 :: v_dual_fmac_f32 v72, s50, v99
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_or_b16 v99.h, v65.l, v64.l
	v_mov_b16_e32 v64.l, v66.l
	v_mov_b16_e32 v65.l, v67.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v73, s50, v101 :: v_dual_fmac_f32 v80, s50, v98
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v98, 0, 1, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshlrev_b16 v64.l, 8, v64.l
	v_cndmask_b32_e64 v100, 0, 1, s7
	v_cndmask_b32_e64 v66, 0, 1, s10
	v_cndmask_b32_e64 v67, 0, 1, s14
	v_or_b16 v99.l, v65.l, v64.l
	v_mov_b16_e32 v64.l, v68.l
	v_mov_b16_e32 v65.l, v69.l
	v_cndmask_b32_e64 v69, 0, 1, s17
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v82, 0x3fb8aa3b, v74
	v_mul_f32_e32 v74, 0x3fb8aa3b, v75
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v64.l, 8, v64.l
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[75:76], v136
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v68.h, v65.l, v64.l
	v_mov_b16_e32 v64.l, v98.l
	v_mov_b16_e32 v65.l, v100.l
	v_cndmask_b32_e64 v98, 0, 1, s18
	v_cndmask_b32_e64 v100, 0, 1, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v64.l, 8, v64.l
	v_or_b16 v68.l, v65.l, v64.l
	v_mov_b16_e32 v64.l, v66.l
	v_mov_b16_e32 v65.l, v67.l
	v_cndmask_b32_e64 v66, 0, 1, s11
	v_cndmask_b32_e64 v67, 0, 1, s9
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v83, 0x3fb8aa3b, v75
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v64.l, 8, v64.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v75, 0x3fb8aa3b, v76
	ds_load_b64 v[76:77], v137
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v82, s50, v102
	v_fmac_f32_e32 v74, s50, v103
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_or_b16 v101.h, v65.l, v64.l
	v_mov_b16_e32 v64.l, v69.l
	v_mov_b16_e32 v65.l, v98.l
	v_cndmask_b32_e64 v69, 0, 1, s12
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshlrev_b16 v64.l, 8, v64.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v83, s50, v170
	v_fmac_f32_e32 v75, s50, v171
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v101.l, v65.l, v64.l
	v_mov_b16_e32 v64.l, v100.l
	v_mov_b16_e32 v65.l, v66.l
	v_mov_b16_e32 v66.l, v67.l
	v_mov_b16_e32 v67.l, v69.l
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v69, 0x80000000, v97, s1
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v64.l, 8, v64.l
	v_lshlrev_b16 v64.h, 8, v65.l
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v84, 0x3fb8aa3b, v76
	v_dual_mul_f32 v76, 0x3fb8aa3b, v77 :: v_dual_mul_f32 v77, 0x3fb8aa3b, v86
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v86, 0, v121
	v_or_b16 v65.h, v66.l, v64.l
	v_or_b16 v65.l, v67.l, v64.h
	ds_store_2addr_b32 v86, v99, v68 offset1:32
	ds_store_2addr_b32 v140, v101, v65 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v64, v96
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v64, v141
	ds_load_u16_d16 v65, v142
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v65, v143
	ds_load_u16_d16 v66, v144
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v66, v145
	ds_load_u16_d16 v67, v146
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v67, v147
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v84, s50, v172
	v_dual_fmac_f32 v76, s50, v173 :: v_dual_fmac_f32 v77, s50, v175
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v173, 0, v124
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v68.l, 1, v64.l
	v_lshrrev_b16 v64.l, 8, v64.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cmp_eq_u16_e64 s30, 1, v68.l
	v_and_b16 v68.l, 1, v64.h
	v_lshrrev_b16 v64.h, 8, v64.h
	v_and_b16 v64.l, 1, v64.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v106, 0xff800000, v78, s30
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s29, 1, v68.l
	v_and_b16 v68.l, 1, v65.l
	v_lshrrev_b16 v65.l, 8, v65.l
	v_and_b16 v64.h, 1, v64.h
	v_cmp_eq_u16_e64 s35, 1, v64.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v104, 0xff800000, v80, s29
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s28, 1, v68.l
	v_and_b16 v68.l, 1, v65.h
	v_lshrrev_b16 v65.h, 8, v65.h
	v_and_b16 v65.l, 1, v65.l
	v_cmp_eq_u16_e64 s34, 1, v64.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v107, 0xff800000, v71, s35
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s27, 1, v68.l
	v_and_b16 v68.l, 1, v66.l
	v_lshrrev_b16 v66.l, 8, v66.l
	v_and_b16 v65.h, 1, v65.h
	v_cmp_eq_u16_e64 s33, 1, v65.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v105, 0xff800000, v72, s34
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s22, 1, v68.l
	v_and_b16 v68.l, 1, v66.h
	v_lshrrev_b16 v66.h, 8, v66.h
	v_and_b16 v66.l, 1, v66.l
	v_cmp_eq_u16_e64 s31, 1, v65.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v102, 0xff800000, v81, s28
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s21, 1, v68.l
	v_and_b16 v68.l, 1, v67.l
	v_lshrrev_b16 v67.l, 8, v67.l
	v_and_b16 v66.h, 1, v66.h
	v_cmp_eq_u16_e64 s26, 1, v66.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v103, 0xff800000, v73, s33
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s20, 1, v68.l
	v_and_b16 v68.l, 1, v67.h
	v_lshrrev_b16 v67.h, 8, v67.h
	v_and_b16 v67.l, 1, v67.l
	v_cmp_eq_u16_e64 s25, 1, v66.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v100, 0xff800000, v82, s27
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s19, 1, v68.l
	v_and_b16 v67.h, 1, v67.h
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v68, s23, v159, 1
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s24, 1, v67.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v101, 0xff800000, v74, s31
	v_cndmask_b32_e64 v98, 0xff800000, v83, s22
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s23, 1, v67.h
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v68, 0x80000000, v68, s1
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v99, 0xff800000, v75, s26
	v_cndmask_b32_e64 v96, 0xff800000, v84, s21
	v_cndmask_b32_e64 v86, 0xff800000, v85, s20
	v_cndmask_b32_e64 v84, 0xff800000, v87, s19
	v_cndmask_b32_e64 v97, 0xff800000, v76, s25
	v_cndmask_b32_e64 v87, 0xff800000, v77, s24
	v_cndmask_b32_e64 v85, 0xff800000, v79, s23
	ds_store_b64 v70, v[106:107]
	ds_store_b64 v133, v[104:105]
	ds_store_b64 v134, v[102:103]
	ds_store_b64 v135, v[100:101]
	ds_store_b64 v136, v[98:99]
	ds_store_b64 v137, v[96:97]
	ds_store_b64 v138, v[86:87]
	ds_store_b64 v139, v[84:85]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[64:67], v69, s[56:59], 0 offen
	buffer_load_b128 v[80:83], v68, s[56:59], 0 offen
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v168.l, v64.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v168.h, v80.l
	v_mov_b16_e32 v80.l, v64.h
	v_mov_b16_e64 v170.l, v65.l
	v_mov_b16_e64 v170.h, v81.l
	v_mov_b16_e32 v81.l, v65.h
	v_mov_b16_e64 v171.l, v66.l
	v_mov_b16_e64 v171.h, v82.l
	v_mov_b16_e32 v82.l, v66.h
	v_mov_b16_e64 v172.l, v67.l
	v_mov_b16_e64 v172.h, v83.l
	v_mov_b16_e32 v83.l, v67.h
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_2addr_b64 v[72:75], v132 offset1:16
	ds_load_2addr_b64 v[76:79], v132 offset0:64 offset1:80
	ds_load_2addr_b64 v[68:71], v132 offset0:32 offset1:48
	ds_load_2addr_b64 v[64:67], v132 offset0:96 offset1:112
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b32 v173, v168, v80 offset1:16
	ds_store_2addr_b32 v148, v170, v81 offset1:16
	ds_store_2addr_b32 v149, v171, v82 offset1:16
	ds_store_2addr_b32 v150, v172, v83 offset1:16
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v80, v106, v107
	v_max3_f32 v81, v105, v102, v103
	v_max3_f32 v82, v86, v87, v84
.Ltmp2:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v80, v80, v104, v81
	v_max3_f32 v81, v99, v96, v97
	v_max3_f32 v81, v81, v82, v85
	v_max3_f32 v82, v100, v101, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v80, v80, v82, v81
.Ltmp4:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v82.h, 0
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v81, v80, s67, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp6:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v168, v169, v80, v81
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v80, v107, v168
	v_sub_f32_e32 v81, v106, v168
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v80, v80
	v_exp_f32_e32 v81, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v80, 0, v80, s35
	v_cndmask_b32_e64 v81, 0, v81, s30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v82.l, v80.h
	v_cmp_o_f32_e64 s35, v80, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s30, v81, v81
	v_and_b32_e32 v83, 1, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v80, v80, v83, 0x7fff
	v_mov_b16_e32 v83.h, v82.h
	v_mov_b16_e32 v83.l, v81.h
	v_cndmask_b16 v80.h, 0x7fff, v80.h, s35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v83, 1, v83
	v_add3_u32 v81, v81, v83, 0x7fff
	v_mov_b16_e32 v83.h, v82.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v80.l, 0x7fff, v81.h, s30
	v_permlanex16_b32 v81, v80, s67, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v170, v81, v80, v108
	v_perm_b32 v171, v81, v80, v109
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v81, v105, v168
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v81, v81
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v81, 0, v81, s34
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v82.l, v81.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v80, v104, v168
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s30, v81, v81
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v80, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v80, 0, v80, s29
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v83.l, v80.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s29, v80, v80
	v_and_b32_e32 v83, 1, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v80, v80, v83, 0x7fff
	v_and_b32_e32 v83, 1, v82
	v_cndmask_b16 v80.l, 0x7fff, v80.h, s29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v81, v81, v83, 0x7fff
	v_mov_b16_e32 v83.h, v82.h
	v_cndmask_b16 v80.h, 0x7fff, v81.h, s30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v81, v80, s67, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v172, v81, v80, v108
	v_perm_b32 v173, v81, v80, v109
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v80, v102, v168
	v_sub_f32_e32 v81, v103, v168
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v80, v80
	v_exp_f32_e32 v81, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v80, 0, v80, s28
	v_cndmask_b32_e64 v81, 0, v81, s33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v83.l, v80.h
	v_mov_b16_e32 v82.l, v81.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s28, v80, v80
	v_cmp_o_f32_e64 s29, v81, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v83, 1, v83
	v_add3_u32 v80, v80, v83, 0x7fff
	v_and_b32_e32 v83, 1, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v80.l, 0x7fff, v80.h, s28
	v_add3_u32 v81, v81, v83, 0x7fff
	v_mov_b16_e32 v83.h, v82.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v80.h, 0x7fff, v81.h, s29
	v_permlanex16_b32 v81, v80, s67, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v174, v81, v80, v108
	v_perm_b32 v175, v81, v80, v109
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v80, v100, v168
	v_sub_f32_e32 v81, v101, v168
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v80, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v81, v81
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v80, 0, v80, s27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v81, 0, v81, s31
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v83.l, v80.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v82.l, v81.h
	v_cmp_o_f32_e64 s27, v80, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s28, v81, v81
	v_and_b32_e32 v83, 1, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v80, v80, v83, 0x7fff
	v_and_b32_e32 v83, 1, v82
	v_cndmask_b16 v80.l, 0x7fff, v80.h, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v81, v81, v83, 0x7fff
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s27, 0xff800000, v169
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v83, v72, v72
.Ltmp8:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v80.h, 0x7fff, v81.h, s28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v81, v80, s67, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v176, v81, v80, v108
	v_perm_b32 v177, v81, v80, v109
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v80, v169, v168
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v80, v80
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v81, 0, v80, s27
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_nc_u32_e32 v80, 0, v123
	ds_load_b128 v[100:103], v80
	ds_load_b128 v[104:107], v151
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v24, v24, v81
	v_mul_f32_e32 v25, v25, v81
	v_mul_f32_e32 v26, v26, v81
	v_mul_f32_e32 v27, v27, v81
	v_mul_f32_e32 v28, v28, v81
	v_mul_f32_e32 v29, v29, v81
	v_mul_f32_e32 v30, v30, v81
	v_mul_f32_e32 v31, v31, v81
	v_mul_f32_e32 v16, v16, v81
	v_mul_f32_e32 v17, v17, v81
	v_mul_f32_e32 v18, v18, v81
	v_mul_f32_e32 v19, v19, v81
	v_mul_f32_e32 v20, v20, v81
	v_mul_f32_e32 v21, v21, v81
	v_mul_f32_e32 v22, v22, v81
	v_mul_f32_e32 v23, v23, v81
	v_mul_f32_e32 v8, v8, v81
	v_mul_f32_e32 v9, v9, v81
	v_mul_f32_e32 v10, v10, v81
	v_mul_f32_e32 v11, v11, v81
	v_mul_f32_e32 v12, v12, v81
	v_mul_f32_e32 v13, v13, v81
	v_mul_f32_e32 v14, v14, v81
	v_mul_f32_e32 v15, v15, v81
	v_mul_f32_e32 v0, v0, v81
	v_mul_f32_e32 v1, v1, v81
	v_mul_f32_e32 v2, v2, v81
	v_mul_f32_e32 v3, v3, v81
	v_mul_f32_e32 v4, v4, v81
	v_mul_f32_e32 v5, v5, v81
	v_mul_f32_e32 v6, v6, v81
	v_mul_f32_e32 v7, v7, v81
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v81, v76, v76
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v81, v83, v81
	v_max_f32_e32 v83, v78, v78
.Ltmp10:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[100:107], v[170:177], v[24:31]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[104:107], v155
	ds_load_b128 v[100:103], v154
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v81, v81, v73, v77
.Ltmp12:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[100:107], v[170:177], v[16:23]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[104:107], v151 offset:2048
	ds_load_b128 v[100:103], v80 offset:2048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[100:107], v[170:177], v[8:15]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[100:103], v154 offset:2048
	ds_load_b128 v[104:107], v155 offset:2048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[100:107], v[170:177], v[0:7]
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v100, v74, v74 :: v_dual_max_f32 v101, v161, v161
	v_dual_max_f32 v102, v70, v70 :: v_dual_max_f32 v103, v163, v163
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v83, v100, v83 :: v_dual_mov_b32 v100, v81
	v_max3_f32 v83, v83, v75, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v100 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v81, v81, v100 :: v_dual_mov_b32 v100, v83
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v100 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_dual_max_f32 v83, v83, v100 :: v_dual_mov_b32 v100, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v100 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v81, v81, v100 :: v_dual_mov_b32 v100, v83
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v100 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_dual_max_f32 v83, v83, v100 :: v_dual_mov_b32 v100, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v100 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v81, v81, v100 :: v_dual_mov_b32 v100, v83
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v100, v100 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
	v_max_f32_e32 v83, v83, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v100, v160, v160 :: v_dual_max_f32 v161, v101, v83
	v_max_f32_e32 v160, v100, v81
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v64, v64
	v_max_f32_e32 v101, v68, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v100, v101, v100 :: v_dual_max_f32 v101, v66, v66
	v_max3_f32 v100, v100, v69, v65
.Ltmp28:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v75, v75, v161
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v101, v102, v101 :: v_dual_mov_b32 v102, v100
.Ltmp30:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v75, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v102, v102 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v79, v79, v161 :: v_dual_max_f32 v102, v102, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v79, v79
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v75, 0, v75, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v102
	v_max3_f32 v101, v101, v71, v67
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v102, v101
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp35:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v79, 0, v79, s10
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v102, v102 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v75, v75, v79 :: v_dual_max_f32 v102, v102, v102
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v101, v101, v102 :: v_dual_mov_b32 v102, v100
.Ltmp39:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v72, v72, v160
	v_sub_f32_e32 v76, v76, v160
	v_sub_f32_e32 v73, v73, v160
	v_sub_f32_e32 v77, v77, v160
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v102, v102 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	v_exp_f32_e32 v76, v76
	v_exp_f32_e32 v73, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v102, v102, v102
	v_max_f32_e32 v100, v100, v102
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v102, v101
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp44:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s16
	v_cndmask_b32_e64 v76, 0, v76, s18
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v73, 0, v73, s15
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s16, 0xff800000, v166
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v102, v102 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp46:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s15, 0xff800000, v165
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v72, v72, v76
.Ltmp48:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v76, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v102, v102, v102
.Ltmp50:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v74, v74, v161 :: v_dual_max_f32 v101, v101, v102
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v102, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp52:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v74, v74
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v76, 0, v76, s17
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e64 s17, 0xff800000, v167
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v102, v102 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v73, v73, v76 :: v_dual_max_f32 v102, v102, v102
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp55:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v74, 0, v74, s13
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v72, v72, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v102, v100, v102
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v100, v101
	v_mov_b32_dpp v100, v100 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v100, v100, v100
.Ltmp60:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v78, v78, v161 :: v_dual_max_f32 v101, v101, v100
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v100, v162, v162
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v78, v78
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v163, v103, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v106, v71, v163 :: v_dual_sub_f32 v71, v85, v168
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v162, v100, v102
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v170, v66, v163
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v66.h, v82.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v171, v67, v163
	v_sub_f32_e32 v67, v97, v168
	v_dual_sub_f32 v107, v64, v162 :: v_dual_sub_f32 v64, v98, v168
	v_sub_f32_e32 v169, v65, v162
	v_sub_f32_e32 v65, v99, v168
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v103, v68, v162
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v64, v64
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v68.h, v82.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v105, v70, v163
	v_mov_b32_e32 v85, v89
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v78, 0, v78, s14
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v70.h, v82.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s25
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v89, v105
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v64, 0, v64, s22
.Ltmp61:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v74, v74, v78
.Ltmp62:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v65, 0, v65, s26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v66.l, v64.h
	v_cmp_o_f32_e64 s22, v64, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v82.l, v65.h
	v_cmp_o_f32_e64 s26, v65, v65
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v89, 0, v89, s4
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v73, v74, v75 :: v_dual_and_b32 v66, 1, v66
.Ltmp64:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s23
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v64, v64, v66, 0x7fff
	v_and_b32_e32 v66, 1, v82
	v_mov_b16_e32 v82.l, v67.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v65, v65, v66, 0x7fff
	v_cndmask_b16 v65.l, 0x7fff, v64.h, s22
	v_cmp_o_f32_e64 s22, v67, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v65.h, 0x7fff, v65.h, s26
	v_permlanex16_b32 v66, v65, s67, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v64, v66, v65, v108
	v_perm_b32 v65, v66, v65, v109
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v96, v168
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s21
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v68.l, v66.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s21, v66, v66
	v_and_b32_e32 v68, 1, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v66, v66, v68, 0x7fff
	v_and_b32_e32 v68, 1, v82
	v_add3_u32 v67, v67, v68, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v67.l, 0x7fff, v66.h, s21
	v_cndmask_b16 v67.h, 0x7fff, v67.h, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v68, v67, s67, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v66, v68, v67, v108
	v_perm_b32 v67, v68, v67, v109
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v68, v86, v168
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v86, v165, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v99, v86, v81
	v_max_f32_e32 v81, v166, v166
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v104, v69, v162 :: v_dual_sub_f32 v69, v87, v168
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v87, v169
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_max_f32_e32 v100, v81, v83
	v_max_f32_e32 v81, v167, v167
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s20
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v83, v107
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_dual_max_f32 v98, v81, v102 :: v_dual_max_f32 v81, v164, v164
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v86, v104
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v70.l, v68.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v87, 0, v87, s11
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s20, v68, v68
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v97, v81, v101
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v81, v167, v98
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s24
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v83, 0, v83, s12
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v101, v164, v97
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v78, v81
	.loc	1 886 49 is_stmt 1              ; attention.py:886:49
	v_exp_f32_e32 v81, v103
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v82.l, v69.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v86, 0, v86, s6
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v70, 1, v70
	v_cmp_o_f32_e64 s21, v69, v69
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v101, v101
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e64 v78, 0, v78, s17
	.loc	1 886 33 is_stmt 1              ; attention.py:886:33
	v_cndmask_b32_e64 v81, 0, v81, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v79, v81, v83
	v_add_f32_e32 v81, v86, v87
.Ltmp66:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v68, v68, v70, 0x7fff
	v_and_b32_e32 v70, 1, v82
	v_mov_b16_e32 v82.l, v71.h
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v74, v79, v81 :: v_dual_mov_b32 v79, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp68:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v69, v69, v70, 0x7fff
	v_cndmask_b16 v69.l, 0x7fff, v68.h, s20
	v_cmp_o_f32_e64 s20, v71, v71
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v81, v73 :: v_dual_mov_b32 v96, v92
.Ltmp70:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v69.h, 0x7fff, v69.h, s21
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v92, v171
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v79, v79 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v81, v81 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp72:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v70, v69, s67, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v73, v73, v81
.Ltmp74:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v68, v70, v69, v108
	v_perm_b32 v69, v70, v69, v109
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v84, v168
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v84.h, v82.h
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v81, v73 :: v_dual_and_b32 v82, 1, v82
.Ltmp76:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v92, 0, v92, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v71, v71, v82, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v81, v81 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp78:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v71.h, 0x7fff, v71.h, s20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v73, v73, v81
.Ltmp80:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v81, v73
.Ltmp82:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v84.l, v70.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s19, v70, v70
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp84:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v84, 1, v84
	v_add3_u32 v70, v70, v84, 0x7fff
	v_mov_b32_e32 v84, v90
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v90, v170
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v71.l, 0x7fff, v70.h, s19
	v_permlanex16_b32 v82, v71, s67, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v90, 0, v90, s9
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v70, v82, v71, v108
	v_perm_b32 v71, v82, v71, v109
	v_mov_b32_e32 v82, v91
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v91, v106
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v83, v89, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp86:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v91, 0, v91, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v164
	v_mov_b32_e32 v164, v97
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v86, v91, v92 :: v_dual_add_f32 v91, v73, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v75, v83, v86
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v83, v74 :: v_dual_mov_b32 v86, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v83, v83 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v86, v86 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp89:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v74, v74, v83 :: v_dual_add_f32 v75, v75, v86
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v83, v74
.Ltmp91:
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v77, v166, v100 :: v_dual_mov_b32 v166, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v83, v83 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp93:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v77, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v74, v74, v83
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v83, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp96:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v77, 0, v77, s16
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v86, v75
	v_mov_b32_dpp v83, v83 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp98:
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v91, v82, v77
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v86, v86 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v76, v165, v99 :: v_dual_mov_b32 v165, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v90, v74, v83
.Ltmp102:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v99, 0, v101, s3
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v75, v75, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
.Ltmp104:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v76, v76
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s3, s68, 32
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v90, v84, v78
	.loc	1 818 13                        ; attention.py:818:13
	s_cmpk_lt_u32 s68, 0x1e0
	s_mov_b32 s68, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v76, 0, v76, s15
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v72, v72, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v79, v72
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v72, v72, v79
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v79, v72 :: v_dual_mov_b32 v86, v75
	v_mov_b32_e32 v167, v98
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v86, v86 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v89, v72, v79 :: v_dual_add_f32 v92, v75, v86
.Ltmp110:
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v89, v85, v76
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[76:79], v153
	ds_load_b128 v[72:75], v152
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v92, v96, v99
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[72:79], v[64:71], v[24:31]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[169:172], v80 offset:1024
	ds_load_b128 v[173:176], v156
	ds_load_b128 v[72:75], v80 offset:3072
	ds_load_b128 v[80:83], v152 offset:2048
	ds_load_b128 v[84:87], v153 offset:2048
	ds_load_b128 v[76:79], v156 offset:2048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[169:176], v[64:71], v[16:23]
	v_mov_b32_e32 v169, v168
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[80:87], v[64:71], v[8:15]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[72:79], v[64:71], v[0:7]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	v_and_b32_e32 v32, 0x80, v115
	v_and_b32_e32 v33, 4, v116
	v_add_nc_u32_e32 v34, 0, v117
	v_add_nc_u32_e32 v35, 0, v114
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s11, 0x31027000
	v_add3_u32 v32, v34, v32, v33
	ds_store_2addr_b64 v35, v[89:90], v[91:92] offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v35, 1, v113
	.loc	1 818 13                        ; attention.py:818:13
	ds_load_b32 v37, v32
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v32, 1, v112
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v34, 16, v35
	v_or_b32_e32 v33, 32, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v36, v32, v111
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v32, 48, v35
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v38, s65, v36
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v36, s64, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s1, 0x200, v38
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v36, s49, v36
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v44, null, v37, v37, v27
	v_div_scale_f32 v38, null, v37, v37, v24
	v_div_scale_f32 v40, null, v37, v37, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v52, v44
	v_div_scale_f32 v42, null, v37, v37, v26
	v_rcp_f32_e32 v46, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v40
	v_div_scale_f32 v48, null, v37, v37, v28
	v_rcp_f32_e32 v50, v42
	v_div_scale_f32 v45, s4, v27, v37, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v54, v48
	v_fma_f32 v57, -v44, v52, 1.0
	v_div_scale_f32 v39, vcc_lo, v24, v37, v24
	v_fma_f32 v53, -v38, v46, 1.0
	v_fma_f32 v55, -v40, v47, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v52, v57, v52
	v_div_scale_f32 v41, s2, v25, v37, v25
	v_div_scale_f32 v51, null, v37, v37, v29
	v_fmac_f32_e32 v46, v53, v46
	v_fma_f32 v53, -v42, v50, 1.0
	v_fmac_f32_e32 v47, v55, v47
	v_fma_f32 v59, -v48, v54, 1.0
	v_mul_f32_e32 v63, v45, v52
	v_rcp_f32_e32 v55, v51
	v_mul_f32_e32 v58, v39, v46
	v_div_scale_f32 v43, s3, v26, v37, v26
	v_fmac_f32_e32 v54, v59, v54
	v_fma_f32 v59, -v44, v63, v45
	v_fmac_f32_e32 v50, v53, v50
	v_mul_f32_e32 v53, v41, v47
	v_fma_f32 v57, -v38, v58, v39
	v_div_scale_f32 v56, null, v37, v37, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v62, -v51, v55, 1.0
	v_fma_f32 v61, -v40, v53, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v58, v57, v46 :: v_dual_fmac_f32 v63, v59, v52
	v_dual_mul_f32 v60, v43, v50 :: v_dual_fmac_f32 v55, v62, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v53, v61, v47
	v_fma_f32 v38, -v38, v58, v39
	v_div_scale_f32 v49, s5, v28, v37, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v57, -v42, v60, v43
	v_fma_f32 v39, -v40, v53, v41
	v_rcp_f32_e32 v41, v56
	v_div_fmas_f32 v38, v38, v46, v58
	s_mov_b32 vcc_lo, s2
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s2, 0, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v39, v39, v47, v53
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v24, v38, v37, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v25, v39, v37, v25
	v_fma_f32 v46, -v56, v41, 1.0
	v_fmac_f32_e32 v60, v57, v50
	v_fma_f32 v39, -v44, v63, v45
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s2
	v_cndmask_b32_e64 v25, 0, v25, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v46, v41
	v_fma_f32 v40, -v42, v60, v43
	v_div_scale_f32 v42, s3, v29, v37, v29
	v_div_scale_f32 v43, null, v37, v37, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v38, v40, v50, v60
	v_mul_f32_e32 v45, v42, v55
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v47, v43
	v_div_fmas_f32 v39, v39, v52, v63
	v_div_fixup_f32 v26, v38, v37, v26
	v_fma_f32 v38, -v51, v45, v42
	v_mul_f32_e32 v40, v49, v54
	v_div_scale_f32 v52, null, v37, v37, v17
	v_div_fixup_f32 v27, v39, v37, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v45, v38, v55
	v_fma_f32 v44, -v48, v40, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v43, v47, 1.0
	v_div_scale_f32 v39, s4, v30, v37, v30
	v_fma_f32 v42, -v51, v45, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v40, v44, v54 :: v_dual_fmac_f32 v47, v46, v47
	v_div_scale_f32 v44, null, v37, v37, v16
	v_mul_f32_e32 v38, v39, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v48, v40, v49
	v_div_scale_f32 v46, s6, v31, v37, v31
	v_rcp_f32_e32 v49, v44
	s_mov_b32 vcc_lo, s5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v40, v48, v54, v40
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v48, -v56, v38, v39
	v_div_fmas_f32 v42, v42, v55, v45
	v_rcp_f32_e32 v45, v52
	v_div_fixup_f32 v28, v40, v37, v28
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v51, -v44, v49, 1.0
	v_mul_f32_e32 v50, v46, v47
	v_fmac_f32_e32 v38, v48, v41
	v_div_fixup_f32 v29, v42, v37, v29
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v49, v51, v49
	v_fma_f32 v48, -v43, v50, v46
	v_div_scale_f32 v51, s3, v16, v37, v16
	v_fma_f32 v39, -v56, v38, v39
	v_fma_f32 v42, -v52, v45, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v50, v48, v47
	v_mul_f32_e32 v40, v51, v49
	v_div_scale_f32 v48, null, v37, v37, v18
	v_div_fmas_f32 v38, v39, v41, v38
	v_fmac_f32_e32 v45, v42, v45
	v_fma_f32 v39, -v43, v50, v46
	v_fma_f32 v41, -v44, v40, v51
	v_rcp_f32_e32 v42, v48
	v_div_scale_f32 v46, null, v37, v37, v19
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v40, v41, v49
	v_div_scale_f32 v43, s4, v17, v37, v17
	v_rcp_f32_e32 v41, v46
	v_div_fmas_f32 v39, v39, v47, v50
	v_div_fixup_f32 v30, v38, v37, v30
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_fma_f32 v50, -v48, v42, 1.0
	v_fma_f32 v38, -v44, v40, v51
	v_div_scale_f32 v51, null, v37, v37, v20
	s_mov_b32 vcc_lo, s3
	v_dual_mul_f32 v47, v43, v45 :: v_dual_fmac_f32 v42, v50, v42
	v_fma_f32 v50, -v46, v41, 1.0
	v_div_fmas_f32 v38, v38, v49, v40
	v_rcp_f32_e32 v40, v51
	v_div_fixup_f32 v31, v39, v37, v31
	v_fma_f32 v39, -v52, v47, v43
	v_div_scale_f32 v44, s5, v18, v37, v18
	v_fmac_f32_e32 v41, v50, v41
	v_div_scale_f32 v50, null, v37, v37, v21
	v_div_scale_f32 v49, s3, v19, v37, v19
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v54, -v51, v40, 1.0
	v_fmac_f32_e32 v47, v39, v45
	v_mul_f32_e32 v39, v44, v42
	v_rcp_f32_e32 v53, v50
	v_div_fixup_f32 v16, v38, v37, v16
	v_fmac_f32_e32 v40, v54, v40
	v_fma_f32 v38, -v52, v47, v43
	v_fma_f32 v43, -v48, v39, v44
	v_mul_f32_e32 v52, v49, v41
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v45, v47
	v_fmac_f32_e32 v39, v43, v42
	v_fma_f32 v43, -v46, v52, v49
	v_div_scale_f32 v45, s4, v20, v37, v20
	v_fma_f32 v47, -v50, v53, 1.0
	v_div_fixup_f32 v17, v38, v37, v17
	v_fma_f32 v38, -v48, v39, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v52, v43, v41 :: v_dual_mul_f32 v43, v45, v40
	v_fmac_f32_e32 v53, v47, v53
	v_div_scale_f32 v44, s6, v21, v37, v21
	v_div_scale_f32 v47, null, v37, v37, v22
	s_mov_b32 vcc_lo, s5
	v_mul_f32_e32 v48, v44, v53
	v_div_fmas_f32 v38, v38, v42, v39
	v_fma_f32 v39, -v46, v52, v49
	v_fma_f32 v42, -v51, v43, v45
	v_rcp_f32_e32 v46, v47
	v_div_scale_f32 v49, null, v37, v37, v23
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v43, v42, v40
	v_div_fmas_f32 v39, v39, v41, v52
	v_rcp_f32_e32 v41, v49
	v_fma_f32 v42, -v50, v48, v44
	v_div_fixup_f32 v18, v38, v37, v18
	v_fma_f32 v38, -v51, v43, v45
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v52, -v47, v46, 1.0
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v48, v42, v53
	v_div_fixup_f32 v19, v39, v37, v19
	v_div_scale_f32 v39, s3, v22, v37, v22
	v_fmac_f32_e32 v46, v52, v46
	v_fma_f32 v42, -v49, v41, 1.0
	v_div_fmas_f32 v38, v38, v40, v43
	v_fma_f32 v40, -v50, v48, v44
	s_mov_b32 vcc_lo, s6
	v_mul_f32_e32 v43, v39, v46
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v42, null, v37, v37, v8
	v_div_fmas_f32 v40, v40, v53, v48
	v_div_scale_f32 v51, null, v37, v37, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v42
	v_fma_f32 v48, -v47, v43, v39
	v_div_fixup_f32 v21, v40, v37, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v51
	v_div_scale_f32 v44, s4, v23, v37, v23
	v_fmac_f32_e32 v43, v48, v46
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v20, v38, v37, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v50, v44, v41
	v_fma_f32 v48, -v42, v45, 1.0
	v_fma_f32 v39, -v47, v43, v39
	v_div_scale_f32 v47, null, v37, v37, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v51, v40, 1.0
	v_fma_f32 v38, -v49, v50, v44
	v_div_fmas_f32 v39, v39, v46, v43
	v_div_scale_f32 v46, s3, v9, v37, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v40, v52, v40
	v_fmac_f32_e32 v45, v48, v45
	v_rcp_f32_e32 v48, v47
	v_fmac_f32_e32 v50, v38, v41
	v_div_scale_f32 v38, s5, v8, v37, v8
	v_mul_f32_e32 v54, v46, v40
	v_div_scale_f32 v53, null, v37, v37, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v49, v50, v44
	v_mul_f32_e32 v44, v38, v45
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v49, -v47, v48, 1.0
	v_rcp_f32_e32 v55, v53
	v_div_fixup_f32 v22, v39, v37, v22
	v_fma_f32 v52, -v42, v44, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v48, v49, v48
	v_div_scale_f32 v49, s6, v10, v37, v10
	v_div_fmas_f32 v41, v43, v41, v50
	v_fmac_f32_e32 v44, v52, v45
	v_fma_f32 v43, -v51, v54, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v50, v49, v48
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v23, v41, v37, v23
	v_fma_f32 v38, -v42, v44, v38
	v_div_scale_f32 v42, null, v37, v37, v12
	v_fma_f32 v39, -v47, v50, v49
	v_fmac_f32_e32 v54, v43, v40
	v_fma_f32 v41, -v53, v55, 1.0
	v_div_fmas_f32 v38, v38, v45, v44
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v50, v39, v48
	v_rcp_f32_e32 v39, v42
	v_fma_f32 v43, -v51, v54, v46
	v_fmac_f32_e32 v55, v41, v55
	v_div_scale_f32 v41, s4, v11, v37, v11
	v_div_scale_f32 v45, null, v37, v37, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v40, v43, v40, v54
	v_fma_f32 v43, -v47, v50, v49
	v_mul_f32_e32 v44, v41, v55
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v46, -v42, v39, 1.0
	s_mov_b32 vcc_lo, s6
	v_rcp_f32_e32 v47, v45
	v_div_fmas_f32 v43, v43, v48, v50
	v_fma_f32 v48, -v53, v44, v41
	v_fmac_f32_e32 v39, v46, v39
	v_div_scale_f32 v46, s3, v12, v37, v12
	v_div_fixup_f32 v8, v38, v37, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v48, v55
	v_div_fixup_f32 v9, v40, v37, v9
	v_mul_f32_e32 v38, v46, v39
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v45, v47, 1.0
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v41, -v53, v44, v41
	v_div_fixup_f32 v10, v43, v37, v10
	v_fma_f32 v48, -v42, v38, v46
	v_div_scale_f32 v43, null, v37, v37, v14
	v_fmac_f32_e32 v47, v40, v47
	v_div_scale_f32 v40, s5, v13, v37, v13
	v_div_fmas_f32 v41, v41, v55, v44
	v_fmac_f32_e32 v38, v48, v39
	v_rcp_f32_e32 v49, v43
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v44, v40, v47
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v11, v41, v37, v11
	v_fma_f32 v41, -v42, v38, v46
	v_div_scale_f32 v48, null, v37, v37, v15
	v_fma_f32 v42, -v45, v44, v40
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v26, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v41, v39, v38
	v_div_scale_f32 v39, null, v37, v37, v0
	v_fma_f32 v46, -v43, v49, 1.0
	v_rcp_f32_e32 v50, v48
	v_fmac_f32_e32 v44, v42, v47
	v_rcp_f32_e32 v42, v39
	v_div_scale_f32 v41, s3, v14, v37, v14
	v_fmac_f32_e32 v49, v46, v49
	v_div_scale_f32 v46, null, v37, v37, v1
	v_div_fixup_f32 v12, v38, v37, v12
	v_fma_f32 v40, -v45, v44, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v48, v50, 1.0
	v_rcp_f32_e32 v52, v46
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v51, -v39, v42, 1.0
	v_mul_f32_e32 v45, v41, v49
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v50, v38, v50
	v_div_scale_f32 v38, s4, v15, v37, v15
	v_fmac_f32_e32 v42, v51, v42
	v_div_scale_f32 v51, null, v37, v37, v2
	v_div_fmas_f32 v40, v40, v47, v44
	v_fma_f32 v44, -v43, v45, v41
	v_mul_f32_e32 v47, v38, v50
	v_div_scale_f32 v53, s5, v0, v37, v0
	v_fma_f32 v54, -v46, v52, 1.0
	v_rcp_f32_e32 v55, v51
	v_fmac_f32_e32 v45, v44, v49
	v_fma_f32 v44, -v48, v47, v38
	v_mul_f32_e32 v56, v53, v42
	v_fmac_f32_e32 v52, v54, v52
	v_div_scale_f32 v54, s6, v1, v37, v1
	v_div_fixup_f32 v13, v40, v37, v13
	v_fma_f32 v40, -v43, v45, v41
	v_fmac_f32_e32 v47, v44, v50
	v_fma_f32 v41, -v39, v56, v53
	v_mul_f32_e32 v43, v54, v52
	v_fma_f32 v44, -v51, v55, 1.0
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v38, -v48, v47, v38
	v_fmac_f32_e32 v56, v41, v42
	v_fma_f32 v41, -v46, v43, v54
	v_fmac_f32_e32 v55, v44, v55
	v_div_scale_f32 v44, s3, v2, v37, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v39, v56, v53
	v_fmac_f32_e32 v43, v41, v52
	v_div_fmas_f32 v40, v40, v49, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v41, v44, v55
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v45, null, v37, v37, v3
	v_div_fmas_f32 v38, v38, v50, v47
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v14, v40, v37, v14
	v_div_fmas_f32 v39, v39, v42, v56
	v_fma_f32 v42, -v46, v43, v54
	v_fma_f32 v46, -v51, v41, v44
	v_rcp_f32_e32 v47, v45
	v_div_fixup_f32 v15, v38, v37, v15
	v_div_fixup_f32 v0, v39, v37, v0
	v_div_scale_f32 v39, null, v37, v37, v4
	v_fmac_f32_e32 v41, v46, v55
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v49, null, v37, v37, v7
	v_div_fmas_f32 v42, v42, v52, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v38, -v51, v41, v44
	v_fma_f32 v40, -v45, v47, 1.0
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v51, v49
	v_div_fixup_f32 v1, v42, v37, v1
	v_div_fmas_f32 v38, v38, v55, v41
	v_rcp_f32_e32 v41, v39
	v_fmac_f32_e32 v47, v40, v47
	v_div_scale_f32 v40, null, v37, v37, v5
	v_div_scale_f32 v42, null, v37, v37, v6
	v_div_scale_f32 v43, vcc_lo, v3, v37, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v44, v40
	v_rcp_f32_e32 v46, v42
	v_div_fixup_f32 v2, v38, v37, v2
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v38, -v39, v41, 1.0
	v_mul_f32_e32 v48, v43, v47
	v_fma_f32 v55, -v49, v51, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s2
	v_cndmask_b32_e64 v31, 0, v31, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v38, v41
	v_div_scale_f32 v38, s3, v4, v37, v4
	v_fma_f32 v50, -v40, v44, 1.0
	v_fma_f32 v53, -v42, v46, 1.0
	v_fma_f32 v52, -v45, v48, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v54, v38, v41 :: v_dual_fmac_f32 v51, v55, v51
	v_fmac_f32_e32 v44, v50, v44
	v_div_scale_f32 v50, s4, v5, v37, v5
	v_fmac_f32_e32 v46, v53, v46
	v_div_scale_f32 v53, s5, v6, v37, v6
	v_fmac_f32_e32 v48, v52, v47
	v_fma_f32 v52, -v39, v54, v38
	v_div_scale_f32 v55, s6, v7, v37, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v56, v50, v44 :: v_dual_mul_f32 v57, v53, v46
	v_fmac_f32_e32 v54, v52, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v58, v55, v51
	v_fma_f32 v43, -v45, v48, v43
	v_fma_f32 v45, -v40, v56, v50
	v_fma_f32 v52, -v42, v57, v53
	v_fma_f32 v38, -v39, v54, v38
	v_fma_f32 v39, -v49, v58, v55
	v_div_fmas_f32 v43, v43, v47, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v56, v45, v44 :: v_dual_fmac_f32 v57, v52, v46
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v58, v39, v51
	v_div_fmas_f32 v38, v38, v41, v54
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v40, -v40, v56, v50
	v_fma_f32 v39, -v42, v57, v53
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v41, -v49, v58, v55
	v_div_fixup_f32 v3, v43, v37, v3
	v_div_fmas_f32 v40, v40, v44, v56
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v4, v38, v37, v4
	v_div_fmas_f32 v39, v39, v46, v57
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v5, v40, v37, v5
	v_div_fmas_f32 v41, v41, v51, v58
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_bfe_u32 v38, v25, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v39, v37, v6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v39, v26, 16, 1
	v_cmp_o_f32_e64 s5, v24, v24
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v41, v37, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v37, v24, 16, 1
	v_cmp_o_f32_e64 s6, v25, v25
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s2
	v_cndmask_b32_e64 v17, 0, v17, s2
	v_cndmask_b32_e64 v18, 0, v18, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v37, v24, v37, 0x7fff
	v_add3_u32 v24, v25, v38, 0x7fff
	v_add3_u32 v25, v26, v39, 0x7fff
	v_bfe_u32 v26, v27, 16, 1
	v_bfe_u32 v38, v29, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v37.h, s5
	v_bfe_u32 v37, v28, 16, 1
	v_cmp_o_f32_e64 s5, v27, v27
	v_add3_u32 v26, v27, v26, 0x7fff
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s6
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
	v_bfe_u32 v28, v16, 16, 1
	v_add3_u32 v26, v30, v26, 0x7fff
	v_cmp_o_f32_e64 s5, v30, v30
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v31, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v31, v31
	v_add3_u32 v28, v16, v28, 0x7fff
	v_cmp_o_f32_e64 s7, v16, v16
	v_cndmask_b16 v16.l, 0x7fff, v26.h, s5
	v_bfe_u32 v26, v17, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s2
	v_cndmask_b32_e64 v21, 0, v21, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v16.h, 0x7fff, v29.h, s6
	v_bfe_u32 v29, v18, 16, 1
	v_bfe_u32 v30, v19, 16, 1
	v_add3_u32 v26, v17, v26, 0x7fff
	v_cmp_o_f32_e64 s5, v17, v17
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s7
	v_add3_u32 v17, v18, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v18, v18
	v_add3_u32 v18, v19, v30, 0x7fff
	v_cmp_o_f32_e64 s7, v19, v19
	v_cndmask_b16 v28.h, 0x7fff, v26.h, s5
	v_bfe_u32 v19, v20, 16, 1
	v_bfe_u32 v26, v21, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s2
	v_cndmask_b32_e64 v8, 0, v8, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s6
	v_add3_u32 v19, v20, v19, 0x7fff
	v_cmp_o_f32_e64 s5, v20, v20
	v_add3_u32 v20, v21, v26, 0x7fff
	v_cmp_o_f32_e64 s6, v21, v21
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s2
	v_cndmask_b32_e64 v9, 0, v9, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.h, 0x7fff, v18.h, s7
	v_bfe_u32 v18, v22, 16, 1
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s5
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s6
	v_bfe_u32 v20, v8, 16, 1
	v_bfe_u32 v21, v23, 16, 1
	v_add3_u32 v18, v22, v18, 0x7fff
	v_cmp_o_f32_e64 s7, v22, v22
	v_bfe_u32 v22, v9, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s2
	v_cndmask_b32_e64 v11, 0, v11, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v20, v8, v20, 0x7fff
	v_cmp_o_f32_e64 s6, v8, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v21, v23, v21, 0x7fff
	v_cmp_o_f32_e64 s5, v23, v23
	v_add3_u32 v8, v9, v22, 0x7fff
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s7
	v_cmp_o_f32_e64 s7, v9, v9
	v_bfe_u32 v9, v10, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v20.h, s6
	v_bfe_u32 v20, v11, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.h, 0x7fff, v21.h, s5
	v_bfe_u32 v21, v12, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s2
	v_cndmask_b32_e64 v15, 0, v15, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v10, v9, 0x7fff
	v_cmp_o_f32_e64 s5, v10, v10
	v_add3_u32 v10, v11, v20, 0x7fff
	v_cmp_o_f32_e64 s6, v11, v11
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s7
	v_add3_u32 v11, v12, v21, 0x7fff
	v_cmp_o_f32_e64 s7, v12, v12
	v_bfe_u32 v12, v13, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s5
	v_cndmask_b16 v9.h, 0x7fff, v10.h, s6
	v_bfe_u32 v10, v14, 16, 1
	v_bfe_u32 v20, v15, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v12, v13, v12, 0x7fff
	v_cmp_o_f32_e64 s5, v13, v13
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s2
	v_cndmask_b32_e64 v2, 0, v2, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s7
	v_add3_u32 v10, v14, v10, 0x7fff
	v_cmp_o_f32_e64 s6, v14, v14
	v_add3_u32 v13, v15, v20, 0x7fff
	v_cmp_o_f32_e64 s7, v15, v15
	v_cndmask_b16 v11.h, 0x7fff, v12.h, s5
	v_bfe_u32 v12, v0, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s6
	v_bfe_u32 v14, v1, 16, 1
	v_cndmask_b16 v10.h, 0x7fff, v13.h, s7
	v_bfe_u32 v13, v2, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v12, v0, v12, 0x7fff
	v_cmp_o_f32_e64 s5, v0, v0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v0, v1, v14, 0x7fff
	v_cmp_o_f32_e64 s6, v1, v1
	v_add3_u32 v1, v2, v13, 0x7fff
	v_cmp_o_f32_e64 s7, v2, v2
	v_bfe_u32 v2, v3, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s2
	v_cndmask_b32_e64 v7, 0, v7, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v0.l, 0x7fff, v12.h, s5
	v_bfe_u32 v12, v4, 16, 1
	v_add3_u32 v2, v3, v2, 0x7fff
	v_cmp_o_f32_e64 s5, v3, v3
	v_bfe_u32 v3, v5, 16, 1
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s6
	v_add3_u32 v12, v4, v12, 0x7fff
	v_bfe_u32 v13, v6, 16, 1
	v_cmp_o_f32_e64 s6, v4, v4
	v_bfe_u32 v4, v7, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v1.h, s7
	v_add3_u32 v3, v5, v3, 0x7fff
	v_cmp_o_f32_e64 s7, v5, v5
	v_add3_u32 v5, v6, v13, 0x7fff
	v_cmp_o_f32_e64 s8, v6, v6
	v_add3_u32 v4, v7, v4, 0x7fff
	v_cmp_o_f32_e64 s9, v7, v7
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s5
	v_cndmask_b16 v2.l, 0x7fff, v12.h, s6
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s7
	v_cndmask_b16 v3.l, 0x7fff, v5.h, s8
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s9
	v_cndmask_b32_e64 v5, v24, v27, s0
	v_cndmask_b32_e64 v6, v16, v25, s0
	v_cndmask_b32_e64 v7, v25, v16, s0
	v_cndmask_b32_e64 v13, v28, v19, s0
	v_cndmask_b32_e64 v14, v18, v17, s0
	v_cndmask_b32_e64 v15, v17, v18, s0
	v_cndmask_b32_e64 v16, v11, v8, s0
	v_cndmask_b32_e64 v8, v8, v11, s0
	v_cndmask_b32_e64 v11, v10, v9, s0
	v_cndmask_b32_e64 v9, v9, v10, s0
	v_cndmask_b32_e64 v17, v2, v0, s0
	v_cndmask_b32_e64 v0, v0, v2, s0
	v_cndmask_b32_e64 v18, v3, v1, s0
	v_cndmask_b32_e64 v1, v1, v3, s0
	s_mov_b32 s5, 0x76543210
	v_cndmask_b32_e64 v4, v27, v24, s0
	v_cndmask_b32_e64 v12, v19, v28, s0
	v_permlanex16_b32 v2, v5, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v7, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v13, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v15, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v8, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v9, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v0, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v19, v1, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s49, v34
	v_cmp_gt_i32_e64 s4, s49, v35
	v_cmp_gt_i32_e64 s2, s49, v33
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v0, v2, v4, v108
	v_perm_b32 v1, v2, v4, v109
	v_perm_b32 v4, v5, v12, v108
	v_perm_b32 v5, v5, v12, v109
	v_perm_b32 v8, v10, v16, v108
	v_perm_b32 v9, v10, v16, v109
	v_perm_b32 v10, v13, v11, v108
	v_perm_b32 v11, v13, v11, v109
	v_perm_b32 v12, v15, v17, v108
	v_perm_b32 v13, v15, v17, v109
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v17, v36, v34, 1
	v_add_lshl_u32 v16, v36, v35, 1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s49, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v2, v3, v6, v108
	v_perm_b32 v3, v3, v6, v109
	v_perm_b32 v6, v7, v14, v108
	v_perm_b32 v7, v7, v14, v109
	v_perm_b32 v14, v19, v18, v108
	v_perm_b32 v15, v19, v18, v109
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v18, v36, v33, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s1, vcc_lo
	s_and_b32 s0, s1, s4
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v36, v32, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s1, s2
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s1, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s9, s47, 0xffff
	s_mov_b32 s8, s46
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[8:11], 0 offen
	buffer_store_b128 v[4:7], v17, s[8:11], 0 offen
	buffer_store_b128 v[8:11], v18, s[8:11], 0 offen
	buffer_store_b128 v[12:15], v19, s[8:11], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp111:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 184
		.amdhsa_next_free_sgpr 69
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.num_vgpr, 184
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.numbered_sgpr, 69
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11984
; TotalNumSgprs: 71
; NumVgprs: 184
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 71
; NumVGPRsForWavesPerEU: 184
; Occupancy: 8
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
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
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
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
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
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
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
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     71
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     184
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
