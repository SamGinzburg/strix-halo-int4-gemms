	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[18:19], s[0:1], 0x5c
	v_dual_mov_b32 v45, 0x5410 :: v_dual_and_b32 v8, 7, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 3, v0
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[40:41], s[0:1], 0x10
	v_dual_mov_b32 v46, 0x7632 :: v_dual_lshlrev_b32 v7, 3, v8
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s8, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s9, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s8, v1
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s30, s8, s9
	s_clause 0x1
	s_load_b32 s2, s[0:1], 0x64
	s_load_b64 s[28:29], s[0:1], 0x38
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x800, v2
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v48, 15, v0
	v_and_b32_e32 v52, 16, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v49, 0x60, v0
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[89:90], null, s18, v1, v[7:8]
	s_mul_i32 s1, s18, s30
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s18, v7
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s37, s5, 0xffff
	s_mov_b32 s36, s4
	v_dual_mov_b32 v30, v25 :: v_dual_lshlrev_b32 v51, 1, v0
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[90:91], null, s18, 48, v[89:90]
	v_lshl_add_u32 v95, s18, 4, v89
	v_lshl_add_u32 v96, s18, 5, v89
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v1, v89, s1, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s0, s0, vcc_lo
	v_bfe_i32 v53, v0, 3, 1
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v2, v95, s1, 1
	v_add_lshl_u32 v3, v96, s1, 1
	v_add_lshl_u32 v4, v90, s1, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s0
	v_mov_b32_e32 v29, v25
	v_cndmask_b32_e64 v2, 0x80000000, v2, s0
	v_cndmask_b32_e64 v9, 0x80000000, v3, s0
	v_cndmask_b32_e64 v10, 0x80000000, v4, s0
	s_clause 0x3
	buffer_load_b128 v[3:6], v1, s[36:39], 0 offen
	buffer_load_b128 v[33:36], v2, s[36:39], 0 offen
	buffer_load_b128 v[37:40], v9, s[36:39], 0 offen
	buffer_load_b128 v[41:44], v10, s[36:39], 0 offen
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v26, v25 :: v_dual_and_b32 v47, 0x78, v0
	s_lshr_b32 s0, s0, 28
	v_dual_mov_b32 v27, v25 :: v_dual_lshlrev_b32 v50, 4, v0
	s_add_i32 s0, s3, s0
	v_mov_b32_e32 v28, v25
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, 0xfff0
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s0, s0, 10
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	.loc	1 852 32                        ; attention.py:852:32
	s_and_b32 s3, s0, 0xffffc000
	v_cmp_eq_u32_e64 s0, 0, v52
	v_dual_mov_b32 v31, v25 :: v_dual_lshlrev_b32 v56, 7, v48
	v_dual_mov_b32 v32, v25 :: v_dual_and_b32 v51, 0x70, v51
	v_dual_mov_b32 v17, v25 :: v_dual_and_b32 v52, 0x410, v53
	v_mov_b32_e32 v18, v25
	v_dual_mov_b32 v20, v25 :: v_dual_lshlrev_b32 v57, 4, v8
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v54, 1, v49
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v49, 6, v49
	v_cndmask_b32_e64 v45, 0x1054, v45, s0
	v_mul_u32_u24_e32 v53, 0x90, v8
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v55, 1, v47
	v_or_b32_e32 v94, v54, v48
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v48, v50, v51
	v_or3_b32 v49, v56, v49, v57
	v_or_b32_e32 v97, v57, v56
	v_cndmask_b32_e64 v46, 0x3276, v46, s0
	v_lshl_or_b32 v45, v45, 8, v45
	v_xor_b32_e32 v47, v57, v47
	v_xor_b32_e32 v98, v53, v52
	v_mov_b32_e32 v19, v25
	v_dual_mov_b32 v22, v25 :: v_dual_add_nc_u32 v99, 0, v48
	v_dual_mov_b32 v24, v25 :: v_dual_and_b32 v45, 0x540054, v45
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s4, s1, 0x10007
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v48, 0, v49
	v_xad_u32 v51, v49, 16, 0
	v_xad_u32 v52, v49, 32, 0
	v_xad_u32 v53, v49, 48, 0
	v_xad_u32 v54, v49, 64, 0
	v_xad_u32 v56, 0x50, v49, 0
	v_xad_u32 v57, 0x60, v49, 0
	v_xad_u32 v61, 0x70, v49, 0
	v_xor_b32_e32 v49, 16, v97
	v_lshl_or_b32 v46, v46, 8, v46
	v_lshl_or_b32 v100, v8, 10, v47
	v_xor_b32_e32 v8, 16, v98
	v_xor_b32_e32 v47, 32, v98
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s1, s1, s4
	v_mov_b32_e32 v10, v25
	s_bfe_i32 s0, s1, 0x80000
	v_dual_mov_b32 v12, v25 :: v_dual_add_nc_u32 v101, 0, v49
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v50, s8, v94
	v_xor_b32_e32 v58, 32, v97
	v_xor_b32_e32 v59, 48, v97
	v_xor_b32_e32 v60, 64, v97
	v_xor_b32_e32 v62, 0x50, v97
	v_xor_b32_e32 v63, 0x60, v97
	v_xor_b32_e32 v64, 0x70, v97
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s19, v7
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[91:92], null, s19, v55, v[7:8]
	v_lshl_or_b32 v7, v45, 4, v45
	v_and_b32_e32 v45, 0x760076, v46
	v_add_nc_u32_e32 v109, 0, v47
	v_xor_b32_e32 v46, 0x120, v100
	v_xor_b32_e32 v47, 0x1b0, v100
	v_xor_b32_e32 v49, 0x240, v100
	.loc	1 758 19                        ; attention.py:758:19
	s_sext_i32_i16 s0, s0
	v_dual_mov_b32 v21, v25 :: v_dual_add_nc_u32 v102, 0, v58
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s0, s0, 10
	v_dual_mov_b32 v23, v25 :: v_dual_add_nc_u32 v104, 0, v60
	v_dual_mov_b32 v9, v25 :: v_dual_add_nc_u32 v106, 0, v63
	v_dual_mov_b32 v14, v25 :: v_dual_add_nc_u32 v103, 0, v59
	v_dual_mov_b32 v16, v25 :: v_dual_add_nc_u32 v105, 0, v62
	v_dual_mov_b32 v2, v25 :: v_dual_add_nc_u32 v107, 0, v64
	s_and_b32 s34, s0, 0xfffff800
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x800, v50
	v_and_b32_e32 v136, 0x5040504, v7
	v_lshl_or_b32 v7, v45, 4, v45
	v_add_nc_u32_e32 v138, 0, v46
	v_add_nc_u32_e32 v139, 0, v47
	v_add_nc_u32_e32 v140, 0, v49
	v_xor_b32_e32 v65, 48, v98
	v_xor_b32_e32 v66, 64, v98
	v_xor_b32_e32 v67, 0x50, v98
	v_xor_b32_e32 v93, 0x1830, v98
	v_dual_mov_b32 v11, v25 :: v_dual_add_nc_u32 v108, 0, v8
	v_dual_mov_b32 v13, v25 :: v_dual_add_nc_u32 v110, 0, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v15, v25 :: v_dual_add_nc_u32 v112, 0, v67
	v_xor_b32_e32 v68, 0x60, v98
	v_xor_b32_e32 v69, 0x70, v98
	v_xor_b32_e32 v70, 0x820, v98
	v_xor_b32_e32 v71, 0x830, v98
	v_xor_b32_e32 v72, 0x810, v98
	v_xor_b32_e32 v73, 0x860, v98
	v_xor_b32_e32 v74, 0x870, v98
	v_xor_b32_e32 v75, 0x840, v98
	v_xor_b32_e32 v76, 0x850, v98
	v_xor_b32_e32 v77, 0x1040, v98
	v_xor_b32_e32 v78, 0x1050, v98
	v_xor_b32_e32 v79, 0x1060, v98
	v_xor_b32_e32 v80, 0x1070, v98
	v_xor_b32_e32 v81, 0x1010, v98
	v_xor_b32_e32 v82, 0x1020, v98
	v_xor_b32_e32 v83, 0x1030, v98
	v_xor_b32_e32 v84, 0x1860, v98
	v_xor_b32_e32 v85, 0x1870, v98
	v_xor_b32_e32 v86, 0x1840, v98
	v_xor_b32_e32 v87, 0x1850, v98
	v_xor_b32_e32 v88, 0x1820, v98
	v_xor_b32_e32 v135, 0x1810, v98
	v_add_nc_u32_e32 v111, 0, v66
	v_xor_b32_e32 v8, 0x90, v100
	v_xor_b32_e32 v65, 0x2d0, v100
	v_xor_b32_e32 v66, 0x360, v100
	v_xor_b32_e32 v67, 0x3f0, v100
	v_add_nc_u32_e32 v134, 0, v93
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[92:93], null, s19, 3, v[91:92]
	v_dual_mov_b32 v1, v25 :: v_dual_add_nc_u32 v114, 0, v69
	v_add_nc_u32_e32 v113, 0, v68
	v_add_nc_u32_e32 v115, 0, v70
	v_add_nc_u32_e32 v116, 0, v71
	v_add_nc_u32_e32 v117, 0, v72
	v_add_nc_u32_e32 v118, 0, v73
	v_add_nc_u32_e32 v119, 0, v74
	v_add_nc_u32_e32 v120, 0, v75
	v_add_nc_u32_e32 v121, 0, v76
	v_dual_mov_b32 v149, 0xff800000 :: v_dual_add_nc_u32 v122, 0, v77
	v_add_nc_u32_e32 v123, 0, v78
	v_dual_mov_b32 v93, v25 :: v_dual_add_nc_u32 v124, 0, v79
	v_add_nc_u32_e32 v125, 0, v80
	v_add_nc_u32_e32 v126, 0, v81
	v_add_nc_u32_e32 v127, 0, v82
	v_add_nc_u32_e32 v128, 0, v83
	v_add_nc_u32_e32 v129, 0, v84
	v_add_nc_u32_e32 v130, 0, v85
	v_add_nc_u32_e32 v131, 0, v86
	v_add_nc_u32_e32 v132, 0, v87
	v_add_nc_u32_e32 v133, 0, v88
	v_add_nc_u32_e32 v135, 0, v135
	v_add_nc_u32_e32 v137, 0, v8
	v_add_nc_u32_e32 v141, 0, v65
	v_add_nc_u32_e32 v142, 0, v66
	v_add_nc_u32_e32 v143, 0, v67
	v_and_b32_e32 v144, 0x7060706, v7
	v_mov_b32_e32 v7, v25
	v_dual_mov_b32 v8, v25 :: v_dual_add_nc_u32 v145, s19, v91
	v_lshl_add_u32 v146, s19, 1, v91
	s_mov_b32 s20, 0
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s33, s2, 0x3fb8aa3b
	s_mov_b32 s31, 0x76543210
	s_mov_b32 s21, s20
	s_mov_b32 s22, s20
	s_mov_b32 s23, s20
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	s_mov_b32 s26, s20
	s_mov_b32 s27, s20
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_and_b32 s37, s7, 0xffff
	s_and_b32 s41, s41, 0xffff
	.loc	1 852 32                        ; attention.py:852:32
	s_add_i32 s34, s34, s3
	s_mov_b32 s36, s6
	s_mov_b32 s35, s20
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v99, v[3:6]
	s_waitcnt vmcnt(2)
	ds_store_b128 v99, v[33:36] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v99, v[37:40] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v99, v[41:44] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v48
	ds_load_b128 v[37:40], v51
	ds_load_b128 v[41:44], v52
	ds_load_b128 v[45:48], v53
	ds_load_b128 v[49:52], v54
	ds_load_b128 v[53:56], v56
	ds_load_b128 v[57:60], v57
	ds_load_b128 v[61:64], v61
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v6, v25
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s2, s35, s34
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v147, 0, v97
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s3, s2, s18
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v165, s27 :: v_dual_mov_b32 v162, s24
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v65, s3, v89, 1
	v_add_lshl_u32 v66, s3, v95, 1
	v_add_lshl_u32 v67, s3, v96, 1
	v_add_lshl_u32 v68, s3, v90, 1
	.loc	1 859 30                        ; attention.py:859:30
	v_mov_b32_e32 v164, s26
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	v_cndmask_b32_e32 v69, 0x80000000, v66, vcc_lo
	v_cndmask_b32_e32 v73, 0x80000000, v67, vcc_lo
	v_cndmask_b32_e32 v77, 0x80000000, v68, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[65:68], v65, s[36:39], 0 offen
	buffer_load_b128 v[69:72], v69, s[36:39], 0 offen
	buffer_load_b128 v[73:76], v73, s[36:39], 0 offen
	buffer_load_b128 v[77:80], v77, s[36:39], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v163, s25 :: v_dual_mov_b32 v160, s22
	v_dual_mov_b32 v161, s23 :: v_dual_mov_b32 v158, s20
	v_mov_b32_e32 v159, s21
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s2, s2, s19
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(3)
	ds_store_b128 v99, v[65:68]
	s_waitcnt vmcnt(2)
	ds_store_b128 v99, v[69:72] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v99, v[73:76] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v99, v[77:80] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v101
	ds_load_b128 v[65:68], v147
	ds_load_b128 v[73:76], v147 offset:2048
	ds_load_b128 v[77:80], v101 offset:2048
	ds_load_b128 v[85:88], v101 offset:4096
	ds_load_b128 v[81:84], v147 offset:4096
	ds_load_b128 v[150:153], v147 offset:6144
	ds_load_b128 v[154:157], v101 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[166:173], v[65:72], v[33:40], v[158:165]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[73:80], v[33:40], v[158:165]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[81:88], v[33:40], v[158:165]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[150:157], v[33:40], v[158:165]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[154:157], v103
	ds_load_b128 v[150:153], v102
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[166:173], v[150:157], v[41:48], v[166:173]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[150:153], v102 offset:2048
	ds_load_b128 v[154:157], v103 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[150:157], v[41:48], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[154:157], v103 offset:4096
	ds_load_b128 v[150:153], v102 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[150:157], v[41:48], v[73:80]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[150:153], v102 offset:6144
	ds_load_b128 v[154:157], v103 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[150:157], v[41:48], v[81:88]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[154:157], v105
	ds_load_b128 v[150:153], v104
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[166:173], v[150:157], v[49:56], v[166:173]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[150:153], v104 offset:2048
	ds_load_b128 v[154:157], v105 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[150:157], v[49:56], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[154:157], v105 offset:4096
	ds_load_b128 v[150:153], v104 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[150:157], v[49:56], v[73:80]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[150:153], v104 offset:6144
	ds_load_b128 v[154:157], v105 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[150:157], v[49:56], v[81:88]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[154:157], v107
	ds_load_b128 v[150:153], v106
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[166:173], v[150:157], v[57:64], v[166:173]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[150:153], v106 offset:2048
	ds_load_b128 v[154:157], v107 offset:2048
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v147, s33, v166 :: v_dual_mul_f32 v148, s33, v167
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[150:157], v[57:64], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[154:157], v107 offset:4096
	ds_load_b128 v[150:153], v106 offset:4096
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v158, s33, v173
	v_mul_f32_e32 v159, s33, v65
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v65, s2, v91, 1
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v161, s33, v70 :: v_dual_mul_f32 v162, s33, v71
	v_mul_f32_e32 v160, s33, v69
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v65, 0x80000000, v65, s1
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[150:157], v[57:64], v[73:80]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[150:153], v106 offset:6144
	ds_load_b128 v[154:157], v107 offset:6144
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v163, s33, v72 :: v_dual_mul_f32 v164, s33, v73
	v_dual_mul_f32 v165, s33, v74 :: v_dual_mul_f32 v166, s33, v75
	v_mul_f32_e32 v167, s33, v76
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[150:157], v[57:64], v[81:88]
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v153, s33, v66
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v66, s2, v146, 1
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v156, s33, v67
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v67, s2, v92, 1
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v157, s33, v68
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v68, s2, v145, 1
	v_cndmask_b32_e64 v66, 0x80000000, v66, s1
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v150, s33, v168
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v67, 0x80000000, v67, s1
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v151, s33, v169 :: v_dual_mul_f32 v152, s33, v170
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v70, 0x80000000, v68, s1
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v154, s33, v171 :: v_dual_mul_f32 v155, s33, v172
	v_dual_mul_f32 v168, s33, v77 :: v_dual_mul_f32 v169, s33, v78
	v_dual_mul_f32 v170, s33, v79 :: v_dual_mul_f32 v171, s33, v80
	v_mul_f32_e32 v172, s33, v81
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[74:77], v65, s[40:43], 0 offen
	buffer_load_b128 v[78:81], v66, s[40:43], 0 offen
	buffer_load_b128 v[66:69], v67, s[40:43], 0 offen
	buffer_load_b128 v[70:73], v70, s[40:43], 0 offen
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v173, s33, v82 :: v_dual_mul_f32 v174, s33, v83
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v65, 0, v100
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v175, s33, v86 :: v_dual_mul_f32 v176, s33, v87
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v154, 0xff800000, v154, s0
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v84, s33, v84 :: v_dual_mul_f32 v85, s33, v85
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v82.l, v74.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v83.l, v78.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v83.h, v66.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v82.h, v70.l
	v_mov_b16_e32 v70.l, v74.h
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v88, s33, v88
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v66.l, v78.h
	v_mov_b16_e32 v74.l, v76.l
	ds_store_b64 v65, v[82:83]
	v_mov_b16_e32 v82.h, v71.l
	v_mov_b32_e32 v65, v70
	v_mov_b16_e32 v71.l, v75.h
	v_mov_b16_e32 v83.l, v79.l
	v_mov_b16_e32 v83.h, v67.l
	v_mov_b16_e32 v82.l, v75.l
	ds_store_b64 v137, v[65:66]
	ds_store_b64 v138, v[82:83]
	v_mov_b16_e32 v67.l, v79.h
	v_mov_b32_e32 v66, v71
	v_mov_b16_e32 v75.l, v80.l
	v_mov_b16_e32 v75.h, v68.l
	v_mov_b16_e32 v74.h, v72.l
	v_mov_b16_e32 v72.l, v76.h
	ds_store_b64 v139, v[66:67]
	ds_store_b64 v140, v[74:75]
	v_mov_b16_e32 v66.h, v69.l
	v_mov_b16_e32 v69.l, v81.h
	v_mov_b16_e32 v68.l, v80.h
	v_mov_b32_e32 v67, v72
	v_mov_b16_e32 v66.l, v81.l
	v_mov_b16_e32 v65.l, v77.l
	v_mov_b16_e32 v65.h, v73.l
	v_mov_b32_e32 v74, v69
	v_mov_b16_e32 v73.l, v77.h
	ds_store_b64 v141, v[67:68]
	ds_store_b64 v142, v[65:66]
	ds_store_b64 v143, v[73:74]
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v65, 0xff800000, v153, s0
	v_cndmask_b32_e64 v67, 0xff800000, v156, s0
	v_cndmask_b32_e64 v68, 0xff800000, v157, s0
	v_cndmask_b32_e64 v69, 0xff800000, v160, s0
	v_cndmask_b32_e64 v70, 0xff800000, v161, s0
	v_cndmask_b32_e64 v71, 0xff800000, v162, s0
	v_cndmask_b32_e64 v72, 0xff800000, v163, s0
	v_cndmask_b32_e64 v73, 0xff800000, v164, s0
	v_cndmask_b32_e64 v74, 0xff800000, v165, s0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v66, v65, v67, v68
	v_max3_f32 v75, v69, v70, v71
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v77, 0xff800000, v168, s0
	v_cndmask_b32_e64 v78, 0xff800000, v169, s0
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v76, v72, v73, v74
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v79, 0xff800000, v170, s0
	v_cndmask_b32_e64 v80, 0xff800000, v171, s0
	v_cndmask_b32_e64 v81, 0xff800000, v172, s0
	v_cndmask_b32_e64 v82, 0xff800000, v173, s0
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v86, v66, v75, v76
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v75, 0xff800000, v166, s0
	v_cndmask_b32_e64 v76, 0xff800000, v167, s0
	v_cndmask_b32_e64 v83, 0xff800000, v174, s0
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v87, v78, v79, v80
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v161, 0xff800000, v147, s0
	v_cndmask_b32_e64 v162, 0xff800000, v148, s0
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v66, v75, v76, v77
	v_max3_f32 v153, v81, v82, v83
.Ltmp10:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v156, 0xff800000, v151, s0
	v_cndmask_b32_e64 v157, 0xff800000, v150, s0
	v_cndmask_b32_e64 v148, 0xff800000, v155, s0
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v155.h, 0
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v160, v66, v87, v153
.Ltmp12:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v153, 0xff800000, v152, s0
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v161, v162
.Ltmp14:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v152, 0xff800000, v158, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v158.h, v155.h
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v87, v156, v153, v154
.Ltmp16:
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v87, v66, v157, v87
.Ltmp18:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v66, 0xff800000, v159, s0
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v147, v148, v152, v66
	s_delay_alu instid0(VALU_DEP_1)
	v_max3_f32 v147, v87, v147, v86
.Ltmp20:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v86, 0xff800000, v84, s0
	v_cndmask_b32_e64 v87, 0xff800000, v85, s0
	v_cndmask_b32_e64 v84, 0xff800000, v176, s0
	v_cndmask_b32_e64 v85, 0xff800000, v88, s0
	v_cndmask_b32_e64 v88, 0xff800000, v175, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v150, v86, v87 :: v_dual_max_f32 v151, v84, v85
	v_max3_f32 v150, v150, v88, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v147, v147, v160, v150
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v150, v147, s31, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v147, v149, v147, v150
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v150, v162, v147
	v_sub_f32_e32 v151, v161, v147
	v_sub_f32_e32 v157, v157, v147
	v_sub_f32_e32 v156, v156, v147
	v_sub_f32_e32 v153, v153, v147
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v150, v150
	v_exp_f32_e32 v151, v151
	v_exp_f32_e32 v157, v157
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v154, v154, v147
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v153, v153
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v148, v148, v147
	v_sub_f32_e32 v152, v152, v147
	v_sub_f32_e32 v66, v66, v147
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v154, v154
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v65, v147
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v150, 0, v150, s0
	v_cndmask_b32_e64 v151, 0, v151, s0
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v148, v148
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v67, v147
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v153, 0, v153, s0
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v155.l, v150.h
	v_mov_b16_e64 v158.l, v151.h
	v_cmp_o_f32_e64 s2, v150, v150
	v_cmp_o_f32_e64 s3, v151, v151
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v154, 0, v154, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v159, 1, v155
	v_and_b32_e32 v158, 1, v158
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v68, v68, v147
	v_sub_f32_e32 v70, v70, v147
	v_sub_f32_e32 v72, v72, v147
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v159, v150, v159, 0x7fff
	v_add3_u32 v158, v151, v158, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v69, v147
	v_sub_f32_e32 v74, v74, v147
	v_sub_f32_e32 v76, v76, v147
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v160.h, 0x7fff, v159.h, s2
	v_cndmask_b16 v160.l, 0x7fff, v158.h, s3
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v71, v71, v147
	v_sub_f32_e32 v78, v78, v147
	v_sub_f32_e32 v80, v80, v147
	v_sub_f32_e32 v82, v82, v147
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v158, v160, s31, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v86, v86, v147
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v67, v67
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_perm_b32 v159, v158, v160, v136
	v_perm_b32 v160, v158, v160, v144
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v158, v156
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v156, 0, v157, s0
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v71, v71
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v156, v156
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	v_exp_f32_e32 v76, v76
	v_exp_f32_e32 v74, v74
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v157, 0, v158, s0
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v158.h, v155.h
	v_mov_b16_e64 v158.l, v156.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v82, v82
	v_exp_f32_e32 v86, v86
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v155.l, v157.h
	v_cmp_o_f32_e64 s2, v157, v157
	v_and_b32_e32 v158, 1, v158
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v78, v78
	v_exp_f32_e32 v80, v80
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v161, 1, v155
	v_mov_b16_e64 v155.l, v154.h
	v_add3_u32 v158, v156, v158, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v76, 0, v76, s0
	v_cndmask_b32_e64 v74, 0, v74, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v161, v157, v161, 0x7fff
	v_and_b32_e32 v163, 1, v155
	v_cndmask_b16 v158.l, 0x7fff, v158.h, s3
	v_cmp_o_f32_e64 s3, v153, v153
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v82, 0, v82, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v158.h, 0x7fff, v161.h, s2
	v_cmp_o_f32_e64 s2, v154, v154
	v_add3_u32 v163, v154, v163, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v86, 0, v86, s0
	v_cndmask_b32_e64 v78, 0, v78, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v162, v158, s31, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v80, 0, v80, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v74, v74
	v_cmp_o_f32_e64 s7, v76, v76
	v_cmp_o_f32_e64 s8, v78, v78
	v_perm_b32 v161, v162, v158, v136
	v_perm_b32 v162, v162, v158, v144
	v_mov_b16_e64 v158.h, v155.h
	v_mov_b16_e64 v158.l, v153.h
	v_cmp_o_f32_e64 s9, v80, v80
	v_cmp_o_f32_e64 s10, v82, v82
	v_cmp_o_f32_e64 s12, v86, v86
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v88, v88, v147
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v158, 1, v158
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v84, v84, v147
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v88, v88
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v158, v153, v158, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v84, v84
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v158.l, 0x7fff, v158.h, s3
	v_cndmask_b16 v158.h, 0x7fff, v163.h, s2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v88, 0, v88, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v164, v158, s31, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v84, 0, v84, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s14, v88, v88
	s_delay_alu instid0(VALU_DEP_3)
	v_perm_b32 v163, v164, v158, v136
	v_perm_b32 v164, v164, v158, v144
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v158, v152
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v152, 0, v148, s0
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v148.h, v155.h
	v_cmp_o_f32_e64 s17, v84, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e64 v148.l, v152.h
	v_cmp_o_f32_e64 s3, v152, v152
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v158, 0, v158, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v148, 1, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v155.l, v158.h
	v_cmp_o_f32_e64 s2, v158, v158
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v148, v152, v148, 0x7fff
	v_and_b32_e32 v165, 1, v155
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v148.l, 0x7fff, v148.h, s3
	v_add3_u32 v165, v158, v165, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v148.h, 0x7fff, v165.h, s2
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v149
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v166, v148, s31, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v165, v166, v148, v136
	v_perm_b32 v166, v166, v148, v144
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v148, v149, v147 :: v_dual_add_nc_u32 v149, 0, v98
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[167:170], v149
	ds_load_b128 v[171:174], v108
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v148, v148
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e64 v148, 0, v148, s2
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v148
	v_mul_f32_e32 v26, v26, v148
	v_mul_f32_e32 v27, v27, v148
	v_mul_f32_e32 v28, v28, v148
	v_mul_f32_e32 v29, v29, v148
	v_mul_f32_e32 v30, v30, v148
	v_mul_f32_e32 v31, v31, v148
	v_mul_f32_e32 v32, v32, v148
	v_mul_f32_e32 v17, v17, v148
	v_mul_f32_e32 v18, v18, v148
	v_mul_f32_e32 v19, v19, v148
	v_mul_f32_e32 v20, v20, v148
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[167:174], v[159:166], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[167:170], v115
	ds_load_b128 v[171:174], v116
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v21, v21, v148
	v_mul_f32_e32 v22, v22, v148
	v_mul_f32_e32 v23, v23, v148
	v_mul_f32_e32 v24, v24, v148
	v_mul_f32_e32 v9, v9, v148
	v_mul_f32_e32 v10, v10, v148
	v_mul_f32_e32 v11, v11, v148
	v_mul_f32_e32 v12, v12, v148
	v_mul_f32_e32 v13, v13, v148
	v_mul_f32_e32 v14, v14, v148
	v_mul_f32_e32 v15, v15, v148
	v_mul_f32_e32 v16, v16, v148
	v_mul_f32_e32 v1, v1, v148
	v_mul_f32_e32 v2, v2, v148
	v_mul_f32_e32 v3, v3, v148
	v_mul_f32_e32 v4, v4, v148
	v_mul_f32_e32 v5, v5, v148
	v_mul_f32_e32 v6, v6, v148
	v_mul_f32_e32 v7, v7, v148
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[167:174], v[159:166], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[167:170], v122
	ds_load_b128 v[171:174], v123
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v8, v8, v148
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[167:174], v[159:166], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[167:170], v129
	ds_load_b128 v[171:174], v130
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[167:174], v[159:166], v[1:8]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v159, 0, v66, s0
	v_cndmask_b32_e64 v160, 0, v65, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v65.h, v155.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v163, 0, v67, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v67.h, v155.h
	v_mov_b16_e64 v65.l, v159.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v165, 0, v69, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v159, v159
	v_mov_b16_e64 v67.l, v163.h
	v_mov_b16_e64 v155.l, v160.h
	v_and_b32_e32 v65, 1, v65
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v164, 0, v68, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v69.h, v155.h
	v_and_b32_e32 v67, 1, v67
	v_mov_b16_e64 v69.l, v165.h
	v_add3_u32 v65, v159, v65, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v166, 0, v70, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s2, v160, v160
	v_add3_u32 v67, v163, v67, 0x7fff
	v_and_b32_e32 v69, 1, v69
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s3
	v_and_b32_e32 v65, 1, v155
	v_cmp_o_f32_e64 s3, v163, v163
	v_mov_b16_e64 v155.l, v164.h
	v_add3_u32 v69, v165, v69, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v162, 0, v72, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v65, v160, v65, 0x7fff
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s3
	v_and_b32_e32 v67, 1, v155
	v_cmp_o_f32_e64 s3, v165, v165
	v_mov_b16_e64 v155.l, v166.h
	v_cndmask_b16 v66.h, 0x7fff, v65.h, s2
	v_cmp_o_f32_e64 s2, v164, v164
	v_add3_u32 v67, v164, v67, 0x7fff
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s3
	v_and_b32_e32 v69, 1, v155
	v_permlanex16_b32 v161, v66, s31, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v155.l, v162.h
	v_cndmask_b16 v68.h, 0x7fff, v67.h, s2
	v_cmp_o_f32_e64 s2, v166, v166
	v_add3_u32 v69, v166, v69, 0x7fff
	v_perm_b32 v65, v161, v66, v136
	v_perm_b32 v66, v161, v66, v144
	v_permlanex16_b32 v161, v68, s31, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v70.h, 0x7fff, v69.h, s2
	v_cmp_o_f32_e64 s2, v162, v162
	v_perm_b32 v67, v161, v68, v136
	v_perm_b32 v68, v161, v68, v144
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v161, v70, s31, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v69, v161, v70, v136
	v_perm_b32 v70, v161, v70, v144
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v161, 0, v71, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v71.h, v155.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v71.l, v161.h
	v_cmp_o_f32_e64 s3, v161, v161
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v71, 1, v71
	v_add3_u32 v71, v161, v71, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v72.l, 0x7fff, v71.h, s3
	v_and_b32_e32 v71, 1, v155
	v_mov_b16_e64 v155.l, v74.h
	v_add3_u32 v71, v162, v71, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v72.h, 0x7fff, v71.h, s2
	v_permlanex16_b32 v167, v72, s31, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v71, v167, v72, v136
	v_perm_b32 v72, v167, v72, v144
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[167:170], v109
	ds_load_b128 v[171:174], v110
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[167:174], v[65:72], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[167:170], v149 offset:2048
	ds_load_b128 v[171:174], v117
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[167:174], v[65:72], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[167:170], v124
	ds_load_b128 v[171:174], v125
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[167:174], v[65:72], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[167:170], v131
	ds_load_b128 v[171:174], v132
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[167:174], v[65:72], v[1:8]
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v65, v151, v150
	v_dual_add_f32 v68, v152, v158 :: v_dual_add_f32 v69, v159, v160
	v_add_f32_e32 v152, v161, v162
	v_dual_add_f32 v150, v165, v166 :: v_dual_sub_f32 v75, v75, v147
	v_dual_add_f32 v66, v156, v157 :: v_dual_add_f32 v67, v153, v154
.Ltmp25:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v70.h, v155.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v150, v150, v152
.Ltmp27:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v75, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v65, v65, v66
	v_add_f32_e32 v67, v67, v68
.Ltmp29:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v72.h, v155.h
	v_mov_b16_e64 v151.h, v155.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v75, 0, v75, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v73, v73, v147 :: v_dual_add_f32 v66, v75, v76
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v73, v73
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v72.l, v75.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v87, v87, v147
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v75, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v72, 1, v72
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v87, v87
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v73, 0, v73, s0
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v72, v75, v72, 0x7fff
	v_mov_b16_e64 v75.h, v155.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v153, v73, v74
.Ltmp31:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v83, v83, v147
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v70.l, v73.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v81, v81, v147
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v87, 0, v87, s0
.Ltmp32:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v153, v66
.Ltmp33:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v83, v83
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v70, 1, v70
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v81, v81
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s2, v73, v73
	v_cmp_o_f32_e64 s15, v87, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_add3_u32 v70, v73, v70, 0x7fff
	v_mov_b16_e64 v73.h, v155.h
	v_cndmask_b16 v70.l, 0x7fff, v72.h, s3
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v83, 0, v83, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v81, 0, v81, s0
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v79, v79, v147
.Ltmp34:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v153, v83, v86
.Ltmp35:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v75.l, v83.h
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v152, v81, v82
.Ltmp37:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v77, v77, v147
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v79, v79
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v73.l, v81.h
	v_cmp_o_f32_e64 s11, v81, v81
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v152, v152, v153
.Ltmp39:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v77, v77
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v75, 1, v75
	v_and_b32_e32 v73, 1, v73
	v_cmp_o_f32_e64 s13, v83, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v79, 0, v79, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v73, v81, v73, 0x7fff
	v_add3_u32 v75, v83, v75, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v77, 0, v77, s0
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v71, v163, v164
.Ltmp41:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s5, v79, v79
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v68, v77, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_f32_e32 v69, v69, v71
	v_add_f32_e32 v71, v79, v80
.Ltmp43:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v151.l, v77.h
	v_cmp_o_f32_e64 s4, v77, v77
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v68, v68, v71
.Ltmp45:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v85, v85, v147
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v71, v87, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v66, v66, v68 :: v_dual_and_b32 v151, 1, v151
.Ltmp47:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v85, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v77, v77, v151, 0x7fff
	v_mov_b16_e64 v151.h, v155.h
	v_mov_b16_e64 v151.l, v87.h
	v_and_b32_e32 v151, 1, v151
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v85, 0, v85, s0
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v81, v87, v151, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v153, v84, v85
.Ltmp49:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v81.l, 0x7fff, v73.h, s11
	v_cmp_o_f32_e64 s16, v85, v85
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v71, v71, v153
.Ltmp51:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v153.h, v155.h
	v_mov_b16_e64 v153.l, v79.h
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v68, v152, v71
	v_add_f32_e32 v65, v65, v67
	v_add_f32_e32 v67, v69, v150
.Ltmp53:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v69.l, 0x7fff, v70.h, s2
	v_and_b32_e32 v153, 1, v153
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v151, v66, v68
.Ltmp55:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v71.l, 0x7fff, v77.h, s4
.Ltmp56:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v150, v65, v67
.Ltmp57:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v65, 1, v155
	v_mov_b16_e64 v155.l, v76.h
	v_add3_u32 v79, v79, v153, 0x7fff
	v_mov_b16_e64 v153.h, v155.h
	v_mov_b16_e64 v153.l, v84.h
	v_add3_u32 v65, v74, v65, 0x7fff
	v_and_b32_e32 v66, 1, v155
	v_mov_b16_e64 v155.l, v78.h
	v_cndmask_b16 v72.l, 0x7fff, v79.h, s5
	v_and_b32_e32 v153, 1, v153
	v_cndmask_b16 v69.h, 0x7fff, v65.h, s6
	v_add3_u32 v65, v76, v66, 0x7fff
	v_and_b32_e32 v66, 1, v155
	v_mov_b16_e64 v155.l, v80.h
	v_add3_u32 v83, v84, v153, 0x7fff
	v_permlanex16_b32 v67, v69, s31, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v70.h, 0x7fff, v65.h, s7
	v_add3_u32 v65, v78, v66, 0x7fff
	v_and_b32_e32 v66, 1, v155
	v_mov_b16_e64 v155.l, v82.h
	v_perm_b32 v73, v67, v69, v136
	v_permlanex16_b32 v68, v70, s31, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v71.h, 0x7fff, v65.h, s8
	v_add3_u32 v65, v80, v66, 0x7fff
	v_and_b32_e32 v66, 1, v155
	v_mov_b16_e64 v155.l, v86.h
	v_perm_b32 v74, v67, v69, v144
	v_cndmask_b16 v83.l, 0x7fff, v75.h, s13
	v_cndmask_b16 v72.h, 0x7fff, v65.h, s9
	v_add3_u32 v66, v82, v66, 0x7fff
	v_and_b32_e32 v65, 1, v155
	v_mov_b16_e64 v155.l, v88.h
	v_cndmask_b16 v84.l, 0x7fff, v81.h, s15
	v_perm_b32 v75, v68, v70, v136
	v_perm_b32 v76, v68, v70, v144
	v_permlanex16_b32 v68, v72, s31, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v69, 1, v155
	v_mov_b16_e64 v155.l, v85.h
	v_cndmask_b16 v81.h, 0x7fff, v66.h, s10
	v_add3_u32 v65, v86, v65, 0x7fff
	v_perm_b32 v79, v68, v72, v136
	v_add3_u32 v69, v88, v69, 0x7fff
	v_and_b32_e32 v66, 1, v155
	v_perm_b32 v80, v68, v72, v144
	v_cndmask_b16 v87.l, 0x7fff, v83.h, s17
	v_permlanex16_b32 v67, v71, s31, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v83.h, 0x7fff, v65.h, s12
	v_add3_u32 v68, v85, v66, 0x7fff
	v_cndmask_b16 v84.h, 0x7fff, v69.h, s14
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s2, s35, 64
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v77, v67, v71, v136
	v_perm_b32 v78, v67, v71, v144
	v_cndmask_b16 v87.h, 0x7fff, v68.h, s16
	v_permlanex16_b32 v67, v81, s31, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v70, v83, s31, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v71, v84, s31, 0xfedcba98 op_sel:[1,0]
	.loc	1 818 13                        ; attention.py:818:13
	s_cmpk_lt_u32 s35, 0x7c0
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v72, v87, s31, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v65, v67, v81, v136
	v_perm_b32 v66, v67, v81, v144
	v_perm_b32 v67, v70, v83, v136
	v_perm_b32 v68, v70, v83, v144
	v_perm_b32 v69, v71, v84, v136
	v_perm_b32 v70, v71, v84, v144
	v_perm_b32 v71, v72, v87, v136
	v_perm_b32 v72, v72, v87, v144
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[81:84], v111
	ds_load_b128 v[85:88], v112
	s_mov_b32 s35, s2
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[81:88], v[73:80], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[81:84], v118
	ds_load_b128 v[85:88], v119
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[81:88], v[73:80], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[85:88], v126
	ds_load_b128 v[81:84], v149 offset:4096
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[81:88], v[73:80], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[81:84], v133
	ds_load_b128 v[85:88], v134
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[81:88], v[73:80], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[73:76], v113
	ds_load_b128 v[77:80], v114
	ds_load_b128 v[81:84], v120
	ds_load_b128 v[85:88], v121
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[73:80], v[65:72], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[73:76], v149 offset:6144
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[81:88], v[65:72], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[81:84], v127
	ds_load_b128 v[85:88], v128
	ds_load_b128 v[77:80], v135
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v149, v150, v151
	v_mov_b32_e32 v151, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v150, v149, s31, 0xfedcba98 op_sel:[1,0]
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v93, v149, v150
	v_mov_b32_e32 v149, v147
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp61:
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v93, v151, v148
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[81:88], v[65:72], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[73:80], v[65:72], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v37, null, v93, v93, v25
	v_div_scale_f32 v38, null, v93, v93, v26
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v33, 4, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v39, v37
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v35, v0, 4, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v40, v38
	v_div_scale_f32 v42, null, v93, v93, v27
	v_div_scale_f32 v41, vcc_lo, v25, v93, v25
	v_div_scale_f32 v43, null, v93, v93, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v45, v42
	v_fma_f32 v0, -v37, v39, 1.0
	v_div_scale_f32 v44, s1, v26, v93, v26
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v38, v40, 1.0
	v_rcp_f32_e32 v46, v43
	v_fmac_f32_e32 v39, v0, v39
	v_div_scale_f32 v47, s2, v27, v93, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v40, v34, v40
	v_fma_f32 v36, -v42, v45, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v48, v41, v39
	v_div_scale_f32 v53, null, v93, v93, v18
	v_mul_f32_e32 v49, v44, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v51, -v43, v46, 1.0
	v_fma_f32 v50, -v37, v48, v41
	v_fmac_f32_e32 v45, v36, v45
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 62, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v52, -v38, v49, v44
	v_fmac_f32_e32 v46, v51, v46
	v_fmac_f32_e32 v48, v50, v39
	v_div_scale_f32 v51, s3, v28, v93, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v49, v52, v40
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v33, 48, v35
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v37, v48, v41
	v_div_scale_f32 v41, null, v93, v93, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v38, v49, v44
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v34, 32, v35
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v37, v39, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v39, v41
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v93
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v40, v49
	v_div_fixup_f32 v25, v37, v93, v25
	v_div_scale_f32 v37, null, v93, v93, v30
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v26, v38, v93, v26
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_or_b32_e32 v36, 16, v35
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v41, v39, 1.0
	v_mul_f32_e32 v50, v47, v45
	v_rcp_f32_e32 v40, v37
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	v_cndmask_b32_e64 v26, 0, v26, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v49, v39
	v_fma_f32 v52, -v42, v50, v47
	v_div_scale_f32 v49, s2, v30, v93, v30
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s31, 0x31027000
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v50, v52, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v42, v50, v47
	v_div_scale_f32 v42, s4, v29, v93, v29
	v_mul_f32_e32 v48, v51, v46
	v_div_scale_f32 v47, null, v93, v93, v31
	v_div_fmas_f32 v38, v38, v45, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v45, v42, v39
	v_fma_f32 v44, -v43, v48, v51
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v50, null, v93, v93, v32
	v_div_fixup_f32 v27, v38, v93, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v48, v44, v46
	v_fma_f32 v44, -v37, v40, 1.0
	v_rcp_f32_e32 v52, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v43, v48, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v40, v44, v40
	v_rcp_f32_e32 v44, v47
	v_div_fmas_f32 v43, v43, v46, v48
	v_fma_f32 v46, -v41, v45, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v48, v49, v40
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v28, v43, v93, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v45, v46, v39
	v_div_scale_f32 v46, null, v93, v93, v17
	v_fma_f32 v38, -v37, v48, v49
	v_fma_f32 v51, -v47, v44, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v41, v45, v42
	v_rcp_f32_e32 v42, v46
	v_div_scale_f32 v43, s3, v31, v93, v31
	v_fmac_f32_e32 v48, v38, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v41, v39, v45
	s_mov_b32 vcc_lo, s2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v37, v48, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v29, v39, v93, v29
	v_fma_f32 v49, -v46, v42, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v37, v37, v40, v48
	v_div_scale_f32 v48, s2, v17, v93, v17
	v_fmac_f32_e32 v42, v49, v42
	v_fmac_f32_e32 v44, v51, v44
	v_fma_f32 v51, -v50, v52, 1.0
	v_rcp_f32_e32 v40, v53
	v_div_fixup_f32 v30, v37, v93, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v39, v48, v42 :: v_dual_mul_f32 v38, v43, v44
	v_fmac_f32_e32 v52, v51, v52
	v_div_scale_f32 v51, s5, v32, v93, v32
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v41, -v47, v38, v43
	v_div_scale_f32 v49, null, v93, v93, v20
	v_mul_f32_e32 v45, v51, v52
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v41, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v50, v45, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v47, v38, v43
	v_div_scale_f32 v43, null, v93, v93, v19
	v_fmac_f32_e32 v45, v41, v52
	v_fma_f32 v41, -v53, v40, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v37, v37, v44, v38
	v_fma_f32 v44, -v46, v39, v48
	v_div_scale_f32 v47, s3, v18, v93, v18
	v_fmac_f32_e32 v40, v41, v40
	v_rcp_f32_e32 v41, v43
	v_fma_f32 v38, -v50, v45, v51
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v31, v37, v93, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v38, v38, v52, v45
	v_mul_f32_e32 v45, v47, v40
	v_fmac_f32_e32 v39, v44, v42
	v_rcp_f32_e32 v44, v49
	v_fma_f32 v50, -v43, v41, 1.0
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v32, v38, v93, v32
	v_fma_f32 v37, -v46, v39, v48
	v_fma_f32 v38, -v53, v45, v47
	v_fmac_f32_e32 v41, v50, v41
	v_div_scale_f32 v50, null, v93, v93, v21
	v_div_scale_f32 v46, s4, v19, v93, v19
	v_div_fmas_f32 v37, v37, v42, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v39, v50
	v_fma_f32 v48, -v49, v44, 1.0
	v_fmac_f32_e32 v45, v38, v40
	v_mul_f32_e32 v38, v46, v41
	v_div_scale_f32 v42, s2, v20, v93, v20
	v_fmac_f32_e32 v44, v48, v44
	v_div_fixup_f32 v17, v37, v93, v17
	v_fma_f32 v37, -v53, v45, v47
	v_fma_f32 v47, -v43, v38, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v53, -v50, v39, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v48, null, v93, v93, v22
	v_fmac_f32_e32 v38, v47, v41
	v_div_fmas_f32 v37, v37, v40, v45
	v_fmac_f32_e32 v39, v53, v39
	v_div_scale_f32 v45, s3, v21, v93, v21
	v_mul_f32_e32 v51, v42, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v18, v37, v93, v18
	v_fma_f32 v37, -v43, v38, v46
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v52, v48
	v_fma_f32 v40, -v49, v51, v42
	v_div_scale_f32 v46, null, v93, v93, v23
	v_div_fmas_f32 v37, v37, v41, v38
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v51, v40, v44 :: v_dual_mul_f32 v40, v45, v39
	v_div_scale_f32 v43, s5, v22, v93, v22
	v_fma_f32 v47, -v48, v52, 1.0
	v_div_fixup_f32 v19, v37, v93, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v41, -v50, v40, v45
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s1
	v_cndmask_b32_e64 v32, 0, v32, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v52, v47, v52
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v41, v39
	v_fma_f32 v38, -v49, v51, v42
	v_rcp_f32_e32 v42, v46
	v_div_scale_f32 v49, null, v93, v93, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v50, v40, v45
	v_div_fmas_f32 v38, v38, v44, v51
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v49
	v_div_scale_f32 v50, null, v93, v93, v10
	v_div_fixup_f32 v20, v38, v93, v20
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v46, v42, 1.0
	v_div_scale_f32 v38, s2, v23, v93, v23
	v_div_fmas_f32 v37, v37, v39, v40
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v42, v51, v42
	v_mul_f32_e32 v47, v43, v52
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v21, v37, v93, v21
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v40, v38, v42
	v_fma_f32 v44, -v48, v47, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s1
	v_cndmask_b32_e64 v21, 0, v21, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v47, v44, v52
	v_fma_f32 v44, -v49, v41, 1.0
	v_fma_f32 v39, -v48, v47, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v41, v44, v41
	v_div_scale_f32 v44, s3, v24, v93, v24
	v_div_scale_f32 v43, null, v93, v93, v9
	v_mul_f32_e32 v48, v44, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v45, v43
	v_fma_f32 v37, -v49, v48, v44
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v48, v37, v41
	v_div_fmas_f32 v39, v39, v52, v47
	v_fma_f32 v47, -v46, v40, v38
	v_div_scale_f32 v52, null, v93, v93, v12
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v22, v39, v93, v22
	v_fmac_f32_e32 v40, v47, v42
	v_rcp_f32_e32 v39, v50
	v_fma_f32 v47, -v43, v45, 1.0
	v_rcp_f32_e32 v54, v52
	v_div_scale_f32 v37, s4, v9, v93, v9
	v_fma_f32 v38, -v46, v40, v38
	v_div_scale_f32 v46, null, v93, v93, v11
	v_fmac_f32_e32 v45, v47, v45
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v42, v40
	v_rcp_f32_e32 v47, v46
	v_fma_f32 v40, -v49, v48, v44
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v51, -v50, v39, 1.0
	v_div_scale_f32 v44, s2, v10, v93, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v40, v40, v41, v48
	v_div_fixup_f32 v23, v38, v93, v23
	v_fmac_f32_e32 v39, v51, v39
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v49, -v46, v47, 1.0
	v_div_fixup_f32 v24, v40, v93, v24
	v_fma_f32 v40, -v52, v54, 1.0
	v_mul_f32_e32 v53, v44, v39
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v11, v93, v11
	v_fmac_f32_e32 v54, v40, v54
	v_div_scale_f32 v40, s3, v12, v93, v12
	v_mul_f32_e32 v42, v37, v45
	v_fma_f32 v41, -v50, v53, v44
	v_mul_f32_e32 v48, v49, v47
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v51, -v43, v42, v37
	v_fmac_f32_e32 v53, v41, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v46, v48, v49
	v_div_scale_f32 v41, null, v93, v93, v13
	v_fmac_f32_e32 v42, v51, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v38, v47
	v_rcp_f32_e32 v38, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v37, -v43, v42, v37
	v_mul_f32_e32 v43, v40, v54
	v_div_fmas_f32 v37, v37, v45, v42
	v_fma_f32 v42, -v50, v53, v44
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v44, null, v93, v93, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v41, v38, 1.0
	v_div_fmas_f32 v39, v42, v39, v53
	v_fma_f32 v42, -v46, v48, v49
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v46, v44
	v_fmac_f32_e32 v38, v45, v38
	v_div_scale_f32 v45, s2, v13, v93, v13
	v_div_fmas_f32 v42, v42, v47, v48
	v_fma_f32 v47, -v52, v43, v40
	v_div_fixup_f32 v9, v37, v93, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v37, v45, v38
	v_div_fixup_f32 v10, v39, v93, v10
	v_div_fixup_f32 v11, v42, v93, v11
	v_fmac_f32_e32 v43, v47, v54
	v_fma_f32 v39, -v44, v46, 1.0
	v_div_scale_f32 v42, null, v93, v93, v15
	v_fma_f32 v47, -v41, v37, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v40, -v52, v43, v40
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v46, v39, v46
	v_div_scale_f32 v39, s4, v14, v93, v14
	v_rcp_f32_e32 v48, v42
	v_div_fmas_f32 v40, v40, v54, v43
	v_fmac_f32_e32 v37, v47, v38
	v_div_scale_f32 v47, null, v93, v93, v16
	v_mul_f32_e32 v43, v39, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v12, v40, v93, v12
	v_fma_f32 v40, -v41, v37, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v49, v47
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v41, -v44, v43, v39
	v_fma_f32 v45, -v42, v48, 1.0
	v_div_fmas_f32 v37, v40, v38, v37
	v_div_scale_f32 v38, null, v93, v93, v1
	v_div_scale_f32 v40, s2, v15, v93, v15
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v48, v45, v48
	v_fmac_f32_e32 v43, v41, v46
	v_div_fixup_f32 v13, v37, v93, v13
	v_fma_f32 v37, -v47, v49, 1.0
	v_rcp_f32_e32 v41, v38
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v39, -v44, v43, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v44, v40, v48 :: v_dual_fmac_f32 v49, v37, v49
	v_div_scale_f32 v37, s3, v16, v93, v16
	v_div_scale_f32 v45, null, v93, v93, v2
	v_div_fmas_f32 v39, v39, v46, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v42, v44, v40
	v_mul_f32_e32 v46, v37, v49
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v50, -v38, v41, 1.0
	v_rcp_f32_e32 v51, v45
	v_div_fixup_f32 v14, v39, v93, v14
	v_fmac_f32_e32 v44, v43, v48
	v_fma_f32 v43, -v47, v46, v37
	v_fmac_f32_e32 v41, v50, v41
	v_div_scale_f32 v50, null, v93, v93, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v42, v44, v40
	v_fmac_f32_e32 v46, v43, v49
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v52, s4, v1, v93, v1
	v_fma_f32 v53, -v45, v51, 1.0
	v_rcp_f32_e32 v54, v50
	v_div_fmas_f32 v39, v39, v48, v44
	v_fma_f32 v37, -v47, v46, v37
	v_div_scale_f32 v44, null, v93, v93, v4
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v55, v52, v41
	v_fmac_f32_e32 v51, v53, v51
	v_div_scale_f32 v53, s5, v2, v93, v2
	v_div_fmas_f32 v37, v37, v49, v46
	v_rcp_f32_e32 v46, v44
	v_fma_f32 v40, -v38, v55, v52
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v42, v53, v51
	v_fma_f32 v43, -v50, v54, 1.0
	v_div_fixup_f32 v15, v39, v93, v15
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v55, v40, v41
	v_fma_f32 v40, -v45, v42, v53
	v_fmac_f32_e32 v54, v43, v54
	v_div_scale_f32 v43, s2, v3, v93, v3
	v_fma_f32 v39, -v44, v46, 1.0
	v_fma_f32 v38, -v38, v55, v52
	v_div_fixup_f32 v16, v37, v93, v16
	v_div_scale_f32 v48, null, v93, v93, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v46, v39, v46
	v_fmac_f32_e32 v42, v40, v51
	v_mul_f32_e32 v40, v43, v54
	v_div_fmas_f32 v38, v38, v41, v55
	v_div_scale_f32 v39, null, v93, v93, v6
	v_fma_f32 v41, -v45, v42, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v50, v40, v43
	v_div_fixup_f32 v1, v38, v93, v1
	v_div_scale_f32 v38, null, v93, v93, v5
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v40, v45, v54
	v_div_fmas_f32 v41, v41, v51, v42
	s_mov_b32 vcc_lo, s2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v50, v40, v43
	v_rcp_f32_e32 v43, v39
	v_rcp_f32_e32 v50, v48
	v_div_fixup_f32 v2, v41, v93, v2
	v_div_scale_f32 v41, null, v93, v93, v7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	v_cndmask_b32_e64 v12, 0, v12, s1
	v_cndmask_b32_e64 v13, 0, v13, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v45, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v39, v43, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	v_cndmask_b32_e64 v16, 0, v16, s1
	v_cndmask_b32_e64 v1, 0, v1, s1
	v_cndmask_b32_e64 v2, 0, v2, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v49, v43
	v_div_scale_f32 v49, s3, v6, v93, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v52, -v41, v45, 1.0
	v_mul_f32_e32 v55, v49, v43
	v_div_fmas_f32 v37, v37, v54, v40
	v_rcp_f32_e32 v40, v38
	v_div_scale_f32 v42, vcc_lo, v4, v93, v4
	v_fma_f32 v54, -v48, v50, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v3, v37, v93, v3
	v_fmac_f32_e32 v45, v52, v45
	v_mul_f32_e32 v47, v42, v46
	v_div_scale_f32 v52, s4, v7, v93, v7
	v_fmac_f32_e32 v50, v54, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v38, v40, 1.0
	v_div_scale_f32 v54, s5, v8, v93, v8
	v_fma_f32 v51, -v44, v47, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v40, v37, v40 :: v_dual_mul_f32 v57, v54, v50
	v_div_scale_f32 v37, s2, v5, v93, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v47, v51, v46
	v_mul_f32_e32 v53, v37, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v42, -v44, v47, v42
	v_fma_f32 v44, -v39, v55, v49
	v_fma_f32 v51, -v38, v53, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v42, v42, v46, v47
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v55, v44, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v53, v51, v40
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s2, s19, v34
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v42, v93, v4
	v_fma_f32 v39, -v39, v55, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v38, v53, v37
	v_fma_f32 v38, -v48, v57, v54
	v_mul_f32_e32 v56, v52, v45
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v37, v40, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v57, v38, v50
	v_fma_f32 v51, -v41, v56, v52
	s_mov_b32 vcc_lo, s3
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s19, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v5, v37, v93, v5
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v37, s30, v94
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v56, v51, v45
	v_div_fmas_f32 v39, v39, v43, v55
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v40, -v48, v57, v54
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v37, s19, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v41, v56, v52
	v_div_fixup_f32 v6, v39, v93, v6
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v45, v56
	s_mov_b32 vcc_lo, s5
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_add_lshl_u32 v0, v37, v0, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v40, v40, v50, v57
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s19, v35
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v38, v93, v7
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v38, v37, v35, 2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v8, v40, v93, v8
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v35, 8, v38
	v_add_nc_u32_e32 v39, 16, v38
	v_cndmask_b32_e32 v40, 0x80000000, v38, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s19, v36
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	s_clause 0x2
	buffer_store_b32 v25, v40, s[28:31], 0 offen
	buffer_store_b32 v26, v35, s[28:31], 0 offen
	buffer_store_b32 v27, v39, s[28:31], 0 offen
	v_add_nc_u32_e32 v25, 24, v38
	v_add_nc_u32_e32 v35, 48, v38
	v_add_nc_u32_e32 v26, 32, v38
	v_add_nc_u32_e32 v27, 40, v38
	v_add_nc_u32_e32 v39, 56, v38
	v_cndmask_b32_e32 v25, 0x80000000, v25, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v35, 0x80000000, v35 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	s_clause 0x4
	buffer_store_b32 v28, v25, s[28:31], 0 offen
	buffer_store_b32 v29, v26, s[28:31], 0 offen
	buffer_store_b32 v30, v27, s[28:31], 0 offen
	buffer_store_b32 v31, v35, s[28:31], 0 offen
	buffer_store_b32 v32, v39, s[28:31], 0 offen
	v_add_lshl_u32 v25, v37, v36, 2
	v_add_nc_u32_e32 v26, 0x48, v38
	v_add_nc_u32_e32 v27, 0x50, v38
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v28, 0x58, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	v_add_nc_u32_e32 v29, 0x60, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	s_clause 0x2
	buffer_store_b32 v17, v25, s[28:31], 0 offen
	buffer_store_b32 v18, v26, s[28:31], 0 offen
	buffer_store_b32 v19, v27, s[28:31], 0 offen
	v_add_nc_u32_e32 v18, 0x68, v38
	v_add_nc_u32_e32 v19, 0x70, v38
	v_cndmask_b32_e32 v17, 0x80000000, v29, vcc_lo
	buffer_store_b32 v20, v28, s[28:31], 0 offen
	v_add_nc_u32_e32 v20, 0x78, v38
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	buffer_store_b32 v21, v17, s[28:31], 0 offen
	v_add_lshl_u32 v17, v37, v34, 2
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s2
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v22, v18, s[28:31], 0 offen
	v_add_nc_u32_e32 v18, 0x88, v38
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x2
	buffer_store_b32 v23, v19, s[28:31], 0 offen
	buffer_store_b32 v24, v20, s[28:31], 0 offen
	buffer_store_b32 v9, v17, s[28:31], 0 offen
	v_add_nc_u32_e32 v9, 0x90, v38
	v_cndmask_b32_e32 v17, 0x80000000, v18, vcc_lo
	v_add_nc_u32_e32 v18, 0x98, v38
	v_add_nc_u32_e32 v19, 0xa0, v38
	v_add_nc_u32_e32 v20, 0xa8, v38
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_store_b32 v10, v17, s[28:31], 0 offen
	v_dual_cndmask_b32 v10, 0x80000000, v18 :: v_dual_cndmask_b32 v17, 0x80000000, v19
	v_cndmask_b32_e32 v18, 0x80000000, v20, vcc_lo
	buffer_store_b32 v11, v9, s[28:31], 0 offen
	v_add_nc_u32_e32 v9, 0xb0, v38
	s_clause 0x2
	buffer_store_b32 v12, v10, s[28:31], 0 offen
	buffer_store_b32 v13, v17, s[28:31], 0 offen
	buffer_store_b32 v14, v18, s[28:31], 0 offen
	v_add_nc_u32_e32 v10, 0xb8, v38
	v_add_lshl_u32 v11, v37, v33, 2
	v_add_nc_u32_e32 v12, 0xc8, v38
	v_add_nc_u32_e32 v13, 0xd0, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_cndmask_b32 v12, 0x80000000, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v9, s[28:31], 0 offen
	buffer_store_b32 v16, v10, s[28:31], 0 offen
	buffer_store_b32 v1, v11, s[28:31], 0 offen
	buffer_store_b32 v2, v12, s[28:31], 0 offen
	buffer_store_b32 v3, v13, s[28:31], 0 offen
	v_add_nc_u32_e32 v1, 0xd8, v38
	v_add_nc_u32_e32 v2, 0xe0, v38
	v_add_nc_u32_e32 v3, 0xe8, v38
	v_add_nc_u32_e32 v9, 0xf0, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[28:31], 0 offen
	buffer_store_b32 v5, v2, s[28:31], 0 offen
	buffer_store_b32 v6, v3, s[28:31], 0 offen
	buffer_store_b32 v7, v9, s[28:31], 0 offen
	buffer_store_b32 v8, v0, s[28:31], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp62:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 177
		.amdhsa_next_free_sgpr 44
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 177
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10472
; TotalNumSgprs: 46
; NumVgprs: 177
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 177
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
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     177
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
