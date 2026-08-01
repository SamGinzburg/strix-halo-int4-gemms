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
	v_dual_mov_b32 v51, 0x5410 :: v_dual_and_b32 v32, 7, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v50, 3, v0
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[56:57], s[0:1], 0x10
	v_dual_mov_b32 v52, 0x7632 :: v_dual_lshlrev_b32 v49, 3, v32
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
	v_lshrrev_b32_e32 v105, 4, v0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v1
	s_mov_b32 s36, 0
	s_mov_b32 s67, 0x76543210
	s_mov_b32 s37, s36
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[88:89], null, s48, v50, v[49:50]
	s_mul_i32 s9, s48, s64
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e64 s2, s48, v49
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s8, s48, 5
	s_mul_i32 s10, s48, 48
	.loc	1 788 26                        ; attention.py:788:26
	s_mov_b32 s52, s4
	s_and_b32 s53, s5, 0xffff
	v_dual_mov_b32 v24, 0 :: v_dual_add_nc_u32 v1, s9, v88
	.loc	1 787 26                        ; attention.py:787:26
	v_lshl_add_u32 v99, s48, 4, v88
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s4, vcc_lo, s2
	.loc	1 787 79                        ; attention.py:787:79
	v_and_b32_e32 v102, 16, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v25, v24 :: v_dual_lshlrev_b32 v2, 1, v1
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v3, v99, s9, 1
	v_add_lshl_u32 v4, v1, s8, 1
	v_add_lshl_u32 v1, v1, s10, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	v_dual_mov_b32 v27, v24 :: v_dual_and_b32 v100, 15, v0
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	v_cndmask_b32_e64 v4, 0x80000000, v4, s4
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	s_clause 0x3
	buffer_load_b128 v[33:36], v2, s[52:55], 0 offen
	buffer_load_b128 v[37:40], v3, s[52:55], 0 offen
	buffer_load_b128 v[41:44], v4, s[52:55], 0 offen
	buffer_load_b128 v[45:48], v1, s[52:55], 0 offen
	s_load_b64 s[4:5], s[0:1], 0x6c
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v26, v24 :: v_dual_and_b32 v101, 0x60, v0
	s_lshr_b32 s0, s0, 29
	v_dual_mov_b32 v30, v24 :: v_dual_lshlrev_b32 v53, 1, v0
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v19, v24 :: v_dual_lshlrev_b32 v104, 2, v0
	v_dual_mov_b32 v21, v24 :: v_dual_lshlrev_b32 v56, 6, v0
	v_mov_b32_e32 v29, v24
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s8, s0, 3
	v_cmp_eq_u32_e64 s0, 0, v102
	v_dual_mov_b32 v28, v24 :: v_dual_and_b32 v103, 0x78, v0
	v_dual_mov_b32 v31, v24 :: v_dual_lshlrev_b32 v106, 4, v0
	v_dual_mov_b32 v17, v24 :: v_dual_and_b32 v54, 0x70, v0
	v_dual_mov_b32 v16, v24 :: v_dual_lshlrev_b32 v55, 9, v0
	v_dual_mov_b32 v18, v24 :: v_dual_and_b32 v57, 0x70, v53
	v_dual_mov_b32 v20, v24 :: v_dual_lshlrev_b32 v59, 6, v101
	v_dual_mov_b32 v22, v24 :: v_dual_lshlrev_b32 v107, 3, v100
	v_dual_mov_b32 v23, v24 :: v_dual_lshlrev_b32 v58, 7, v100
	v_dual_mov_b32 v8, v24 :: v_dual_and_b32 v63, 64, v56
	v_dual_mov_b32 v9, v24 :: v_dual_lshlrev_b32 v60, 4, v32
	v_dual_mov_b32 v15, v24 :: v_dual_and_b32 v66, 0x7c, v104
	v_cndmask_b32_e64 v51, 0x1054, v51, s0
	v_dual_mov_b32 v10, v24 :: v_dual_and_b32 v67, 2, v105
	v_dual_mov_b32 v11, v24 :: v_dual_and_b32 v62, 0x1b8, v104
	v_dual_mov_b32 v12, v24 :: v_dual_and_b32 v53, 0x80, v53
	v_dual_mov_b32 v13, v24 :: v_dual_lshlrev_b32 v64, 5, v102
	v_lshrrev_b32_e32 v61, 1, v54
	v_lshrrev_b32_e32 v65, 1, v103
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v57, v106, v57
	v_or3_b32 v59, v58, v59, v60
	v_or_b32_e32 v108, v60, v58
	v_lshl_or_b32 v54, v54, 6, v107
	v_and_or_b32 v55, 0x1c00, v55, v63
	v_lshl_or_b32 v58, v101, 3, v60
	v_and_or_b32 v56, 0x700, v56, v66
	v_cndmask_b32_e64 v52, 0x3276, v52, s0
	v_lshl_or_b32 v51, v51, 8, v51
	v_dual_mov_b32 v14, v24 :: v_dual_add_nc_u32 v109, 0, v57
	v_dual_mov_b32 v0, v24 :: v_dual_add_nc_u32 v57, 0, v59
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v2, v24 :: v_dual_and_b32 v51, 0x540054, v51
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v60, v59, 16, 0
	v_xad_u32 v63, v59, 32, 0
	v_xad_u32 v66, v59, 48, 0
	v_xad_u32 v68, v59, 64, 0
	v_xad_u32 v69, 0x50, v59, 0
	v_xad_u32 v70, 0x60, v59, 0
	v_xad_u32 v71, 0x70, v59, 0
	v_xor_b32_e32 v54, v54, v61
	v_or3_b32 v110, v55, v64, v62
	v_xor_b32_e32 v111, v58, v65
	v_or3_b32 v112, v56, v53, v67
	v_xor_b32_e32 v53, 16, v108
	v_lshl_or_b32 v52, v52, 8, v52
	v_xor_b32_e32 v55, 32, v108
	v_xor_b32_e32 v56, 48, v108
	v_xor_b32_e32 v58, 64, v108
	v_xor_b32_e32 v59, 0x50, v108
	v_xor_b32_e32 v61, 0x60, v108
	v_xor_b32_e32 v62, 0x70, v108
	.loc	1 872 27                        ; attention.py:872:27
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s4, s4, s1
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s49, v49
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[93:94], null, s49, v50, v[49:50]
	v_mul_lo_u32 v49, s5, v50
	v_dual_mov_b32 v1, v24 :: v_dual_add_nc_u32 v114, 0, v55
	v_dual_mov_b32 v3, v24 :: v_dual_add_nc_u32 v116, 0, v58
	v_mov_b32_e32 v4, v24
	v_dual_mov_b32 v5, v24 :: v_dual_add_nc_u32 v118, 0, v61
	v_dual_mov_b32 v6, v24 :: v_dual_add_nc_u32 v113, 0, v53
	v_dual_mov_b32 v7, v24 :: v_dual_add_nc_u32 v120, 0, v54
	v_dual_mov_b32 v90, v24 :: v_dual_add_nc_u32 v115, 0, v56
	v_dual_mov_b32 v92, v24 :: v_dual_add_nc_u32 v117, 0, v59
	v_lshl_or_b32 v50, v51, 4, v51
	v_and_b32_e32 v51, 0x760076, v52
	v_dual_mov_b32 v160, 0xff800000 :: v_dual_add_nc_u32 v119, 0, v62
	v_xor_b32_e32 v52, 8, v110
	v_xor_b32_e32 v53, 16, v110
	v_xor_b32_e32 v54, 24, v110
	v_xor_b32_e32 v55, 32, v110
	v_xor_b32_e32 v56, 40, v110
	v_xor_b32_e32 v58, 48, v110
	v_xor_b32_e32 v59, 56, v110
	v_xor_b32_e32 v61, 0x440, v111
	v_xor_b32_e32 v62, 16, v112
	v_dual_mov_b32 v89, v24 :: v_dual_add_nc_u32 v122, 0, v53
	v_dual_mov_b32 v91, v24 :: v_dual_add_nc_u32 v124, 0, v55
	v_lshl_add_u32 v94, v32, 2, v49
	v_and_b32_e32 v97, 0x5040504, v50
	v_lshl_or_b32 v75, v51, 4, v51
	v_dual_mov_b32 v142, 0xff800000 :: v_dual_add_nc_u32 v121, 0, v52
	v_dual_mov_b32 v140, 0xff800000 :: v_dual_add_nc_u32 v123, 0, v54
	v_dual_mov_b32 v144, 0xff800000 :: v_dual_add_nc_u32 v125, 0, v56
	v_dual_mov_b32 v143, 0xff800000 :: v_dual_add_nc_u32 v126, 0, v58
	v_add_nc_u32_e32 v127, 0, v59
	v_dual_mov_b32 v141, 0xff800000 :: v_dual_add_nc_u32 v128, 0, v61
	v_dual_mov_b32 v146, 0xff800000 :: v_dual_add_nc_u32 v129, 0, v62
	v_xor_b32_e32 v64, 32, v112
	v_xor_b32_e32 v65, 48, v112
	v_xor_b32_e32 v67, 64, v112
	v_xor_b32_e32 v72, 0x50, v112
	v_xor_b32_e32 v73, 0x60, v112
	v_xor_b32_e32 v74, 0x70, v112
	v_mad_u64_u32 v[95:96], null, s5, 48, v[94:95]
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s3, s51, s8
	v_dual_mov_b32 v145, 0xff800000 :: v_dual_add_nc_u32 v130, 0, v64
	v_add_nc_u32_e32 v131, 0, v65
	v_add_nc_u32_e32 v132, 0, v67
	v_add_nc_u32_e32 v133, 0, v72
	v_add_nc_u32_e32 v134, 0, v73
	v_add_nc_u32_e32 v135, 0, v74
	v_and_b32_e32 v98, 0x7060706, v75
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v136, s5, 4, v94
	v_lshl_add_u32 v137, s5, 5, v94
	v_lshl_add_u32 v138, s49, 4, v93
	v_lshl_add_u32 v139, v100, 1, 0
	v_mov_b32_e32 v96, 0xff800000
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s50, s50, 0x3fb8aa3b
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s8, s5, s65
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s60, s44
	s_add_i32 s44, s4, s3
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
	s_add_i32 s44, s44, s8
	s_mov_b32 s52, s6
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v109, v[33:36]
	s_waitcnt vmcnt(2)
	ds_store_b128 v109, v[37:40] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v109, v[41:44] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v109, v[45:48] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[32:35], v57
	ds_load_b128 v[36:39], v60
	ds_load_b128 v[40:43], v63
	ds_load_b128 v[44:47], v66
	ds_load_b128 v[48:51], v68
	ds_load_b128 v[52:55], v69
	ds_load_b128 v[56:59], v70
	ds_load_b128 v[60:63], v71
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 853 32                        ; attention.py:853:32
	s_or_b32 s45, s68, s66
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s3, s44, s68
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s4, s45, s48
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v64, s3, v94, 2
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v68, s4, v88, 1
	v_add_lshl_u32 v69, s4, v99, 1
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v65, s3, v136, 2
	v_add_lshl_u32 v66, s3, v137, 2
	v_add_lshl_u32 v67, s3, v95, 2
	v_cndmask_b32_e32 v155, 0x80000000, v64, vcc_lo
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v64, 0x80000000, v68, s2
	v_cndmask_b32_e64 v68, 0x80000000, v69, s2
	.loc	1 879 36                        ; attention.py:879:36
	v_dual_cndmask_b32 v156, 0x80000000, v65 :: v_dual_cndmask_b32 v157, 0x80000000, v66
	v_cndmask_b32_e32 v158, 0x80000000, v67, vcc_lo
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x1
	buffer_load_b128 v[64:67], v64, s[52:55], 0 offen
	buffer_load_b128 v[68:71], v68, s[52:55], 0 offen
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v87, s43 :: v_dual_add_nc_u32 v72, 0, v108
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v86, s42 :: v_dual_mov_b32 v85, s41
	v_dual_mov_b32 v84, s40 :: v_dual_mov_b32 v83, s39
	v_dual_mov_b32 v82, s38 :: v_dual_mov_b32 v81, s37
	v_mov_b32_e32 v80, s36
	.loc	1 881 25                        ; attention.py:881:25
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(1)
	ds_store_b128 v109, v[64:67]
	s_waitcnt vmcnt(0)
	ds_store_b128 v109, v[68:71] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[68:71], v113
	ds_load_b128 v[64:67], v72
	ds_load_b128 v[147:150], v72 offset:2048
	ds_load_b128 v[151:154], v113 offset:2048
	ds_load_b128 v[165:168], v115
	ds_load_b128 v[161:164], v114
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[72:79], v[64:71], v[32:39], v[80:87]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[64:71], v[147:154], v[32:39], v[80:87]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[80:83], v114 offset:2048
	ds_load_b128 v[84:87], v115 offset:2048
	ds_load_b128 v[151:154], v117
	ds_load_b128 v[147:150], v116
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[72:79], v[161:168], v[40:47], v[72:79]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[64:71], v[80:87], v[40:47], v[64:71]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[80:83], v116 offset:2048
	ds_load_b128 v[84:87], v117 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[72:79], v[147:154], v[48:55], v[72:79]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[151:154], v119
	ds_load_b128 v[147:150], v118
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[64:71], v[80:87], v[48:55], v[64:71]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[80:83], v118 offset:2048
	ds_load_b128 v[84:87], v119 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[72:79], v[147:154], v[56:63], v[72:79]
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x1
	buffer_load_b128 v[147:150], v155, s[60:63], 0 offen
	buffer_load_b128 v[151:154], v156, s[60:63], 0 offen
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[64:71], v[80:87], v[56:63], v[64:71]
	.loc	1 879 36                        ; attention.py:879:36
	s_clause 0x1
	buffer_load_b128 v[80:83], v157, s[60:63], 0 offen
	buffer_load_b128 v[84:87], v158, s[60:63], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(3)
	v_dual_cndmask_b32 v156, 0xff800000, v150 :: v_dual_cndmask_b32 v155, 0xff800000, v148
	v_dual_cndmask_b32 v148, 0xff800000, v149 :: v_dual_cndmask_b32 v147, 0xff800000, v147
	s_waitcnt vmcnt(2)
	v_dual_cndmask_b32 v150, 0xff800000, v154 :: v_dual_cndmask_b32 v149, 0xff800000, v152
	v_dual_cndmask_b32 v152, 0xff800000, v153 :: v_dual_cndmask_b32 v151, 0xff800000, v151
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v147
	v_cmp_neq_f32_e64 s4, 0xff800000, v148
	v_cmp_neq_f32_e64 s14, 0xff800000, v155
	v_cmp_neq_f32_e64 s6, 0xff800000, v152
	v_cmp_neq_f32_e64 s5, 0xff800000, v151
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s16, vcc_lo, s3
	s_and_b32 s15, vcc_lo, s4
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s13, 0xff800000, v156
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s9, vcc_lo, s6
	s_and_b32 s10, vcc_lo, s5
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s18, 0xff800000, v149
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt vmcnt(1)
	v_dual_cndmask_b32 v158, 0xff800000, v82 :: v_dual_cndmask_b32 v157, 0xff800000, v80
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v82, 0, v110
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v162, 0xff800000, v87 :: v_dual_cndmask_b32 v161, 0xff800000, v85
	v_dual_cndmask_b32 v86, 0xff800000, v86 :: v_dual_cndmask_b32 v85, 0xff800000, v84
	v_dual_cndmask_b32 v154, 0xff800000, v83 :: v_dual_cndmask_b32 v153, 0xff800000, v81
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v80, v142, v142 :: v_dual_max_f32 v81, v143, v143
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_2addr_b64 v120, v[147:148], v[151:152] offset1:16
	ds_store_2addr_b64 v120, v[155:156], v[149:150] offset0:64 offset1:80
	ds_store_2addr_b64 v120, v[157:158], v[85:86] offset0:32 offset1:48
	ds_store_2addr_b64 v120, v[153:154], v[161:162] offset0:96 offset1:112
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[142:143], v82
	ds_load_b64 v[147:148], v121
	ds_load_b64 v[151:152], v122
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v85
	v_cmp_neq_f32_e64 s12, 0xff800000, v86
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[85:86], v123
	.loc	1 881 25                        ; attention.py:881:25
	v_add_nc_u32_e32 v84, 0, v111
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v157
	v_cmp_neq_f32_e64 s8, 0xff800000, v158
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	ds_load_b64 v[155:156], v124
	ds_load_b64 v[157:158], v127
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s17, 0xff800000, v150
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[149:150], v125
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s19, 0xff800000, v153
	v_cmp_neq_f32_e64 s20, 0xff800000, v154
	.loc	1 880 35                        ; attention.py:880:35
	ds_load_b64 v[153:154], v126
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s3, vcc_lo, s12
	s_and_b32 s4, vcc_lo, s11
	s_and_b32 s11, vcc_lo, s7
	s_and_b32 s5, vcc_lo, s8
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(7)
	v_dual_mul_f32 v87, 0x3fb8aa3b, v142 :: v_dual_mul_f32 v142, 0x3fb8aa3b, v143
	s_waitcnt lgkmcnt(6)
	v_mul_f32_e32 v143, 0x3fb8aa3b, v147
	s_waitcnt lgkmcnt(5)
	v_dual_mul_f32 v147, 0x3fb8aa3b, v148 :: v_dual_mul_f32 v148, 0x3fb8aa3b, v151
	v_mul_f32_e32 v151, 0x3fb8aa3b, v152
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v152, 0, 1, s9
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v87, s50, v72 :: v_dual_fmac_f32 v142, s50, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v143, s50, v74 :: v_dual_fmac_f32 v148, s50, v76
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e64 v72.l, v152.l
	v_cndmask_b32_e64 v73, 0, 1, s10
	v_cndmask_b32_e64 v74, 0, 1, s15
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v147, s50, v75
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v75, 0, 1, s16
	v_lshlrev_b16 v72.l, 8, v72.l
	v_cndmask_b32_e64 v76, 0, 1, s3
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(4)
	v_dual_mul_f32 v85, 0x3fb8aa3b, v85 :: v_dual_mul_f32 v86, 0x3fb8aa3b, v86
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v151, s50, v77
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_or_b16 v152.h, v73.l, v72.l
	v_mov_b16_e32 v72.l, v74.l
	v_mov_b16_e32 v73.l, v75.l
	v_cndmask_b32_e64 v77, 0, 1, s4
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v86, s50, v79
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v79, 0, 1, s11
	v_lshlrev_b16 v72.l, 8, v72.l
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s22, 0xff800000, v162
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s12, vcc_lo, s17
	s_and_b32 s17, vcc_lo, s13
	v_cndmask_b32_e64 v159, 0, 1, s12
	v_or_b16 v152.l, v73.l, v72.l
	v_mov_b16_e32 v72.l, v76.l
	v_mov_b16_e32 v73.l, v77.l
	s_and_b32 s13, vcc_lo, s18
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s21, 0xff800000, v161
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v161, 0, 1, s13
	v_lshlrev_b16 v72.l, 8, v72.l
	s_and_b32 s18, vcc_lo, s14
	s_and_b32 s6, vcc_lo, s22
	s_and_b32 s8, vcc_lo, s20
	v_cndmask_b32_e64 v74, 0, 1, s17
	v_or_b16 v162.h, v73.l, v72.l
	v_mov_b16_e32 v73.l, v79.l
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v79, 0x3fb8aa3b, v155 :: v_dual_mul_f32 v164, 0x3fb8aa3b, v154
	v_dual_mul_f32 v155, 0x3fb8aa3b, v156 :: v_dual_mul_f32 v158, 0x3fb8aa3b, v158
	v_mul_f32_e32 v156, 0x3fb8aa3b, v150
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v85, s50, v78
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_cndmask_b32_e64 v78, 0, 1, s5
	v_cndmask_b32_e64 v75, 0, 1, s18
	v_cndmask_b32_e64 v76, 0, 1, s6
	s_and_b32 s7, vcc_lo, s21
	s_and_b32 s14, vcc_lo, s19
	v_mov_b16_e32 v72.l, v78.l
	v_cndmask_b32_e64 v78, 0, 1, s8
	v_cndmask_b32_e64 v77, 0, 1, s7
	v_cndmask_b32_e64 v154, 0, 1, s14
	v_add_nc_u32_e32 v83, 0, v112
	v_lshlrev_b16 v72.l, 8, v72.l
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v149, 0x3fb8aa3b, v149 :: v_dual_fmac_f32 v158, s50, v71
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_or_b16 v162.l, v73.l, v72.l
	v_mov_b16_e64 v72.l, v159.l
	v_mov_b16_e64 v73.l, v161.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v79, s50, v64 :: v_dual_fmac_f32 v164, s50, v69
	v_fmac_f32_e32 v155, s50, v65
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v72.l, 8, v72.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v149, s50, v66 :: v_dual_fmac_f32 v156, s50, v67
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	v_mul_f32_e32 v153, 0x3fb8aa3b, v153
	v_mul_f32_e32 v157, 0x3fb8aa3b, v157
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_or_b16 v150.h, v73.l, v72.l
	v_mov_b16_e32 v72.l, v74.l
	v_mov_b16_e32 v73.l, v75.l
	v_mov_b16_e32 v74.l, v76.l
	v_mov_b16_e32 v75.l, v78.l
	v_mov_b16_e32 v76.l, v77.l
	v_mov_b16_e64 v77.l, v154.l
	v_lshlrev_b16 v72.l, 8, v72.l
	v_lshlrev_b16 v72.h, 8, v74.l
	v_lshlrev_b16 v73.h, 8, v75.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v153, s50, v68
	v_fmac_f32_e32 v157, s50, v70
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v150.l, v73.l, v72.l
	v_or_b16 v72.h, v76.l, v72.h
	v_or_b16 v72.l, v77.l, v73.h
	ds_store_2addr_b32 v84, v152, v162 offset1:32
	ds_store_2addr_b32 v128, v150, v72 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v64, v83
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v64, v129
	ds_load_u16_d16 v65, v130
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v65, v131
	ds_load_u16_d16 v66, v132
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v66, v133
	ds_load_u16_d16 v67, v134
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v67, v135
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v68.l, 1, v64.l
	v_lshrrev_b16 v64.l, 8, v64.l
	v_and_b16 v68.h, 1, v64.h
	v_lshrrev_b16 v64.h, 8, v64.h
	v_and_b16 v69.l, 1, v65.l
	v_lshrrev_b16 v65.l, 8, v65.l
	v_and_b16 v69.h, 1, v65.h
	v_lshrrev_b16 v65.h, 8, v65.h
	v_and_b16 v70.l, 1, v66.l
	v_lshrrev_b16 v66.l, 8, v66.l
	v_and_b16 v70.h, 1, v66.h
	v_and_b16 v71.l, 1, v67.l
	v_and_b16 v71.h, 1, v67.h
	v_lshrrev_b16 v66.h, 8, v66.h
	v_lshrrev_b16 v67.l, 8, v67.l
	v_lshrrev_b16 v67.h, 8, v67.h
	v_and_b16 v64.l, 1, v64.l
	v_and_b16 v64.h, 1, v64.h
	v_and_b16 v65.l, 1, v65.l
	v_and_b16 v65.h, 1, v65.h
	v_and_b16 v66.l, 1, v66.l
	v_cmp_eq_u16_e64 s29, 1, v68.l
	v_and_b16 v66.h, 1, v66.h
	v_and_b16 v67.l, 1, v67.l
	v_and_b16 v67.h, 1, v67.h
	v_cmp_eq_u16_e64 s31, 1, v64.l
	v_cmp_eq_u16_e64 s30, 1, v68.h
	v_cmp_eq_u16_e64 s24, 1, v70.l
	v_cmp_eq_u16_e64 s33, 1, v64.h
	v_cmp_eq_u16_e64 s28, 1, v69.l
	v_cmp_eq_u16_e64 s22, 1, v70.h
	v_cmp_eq_u16_e64 s34, 1, v65.l
	v_cmp_eq_u16_e64 s26, 1, v69.h
	v_cmp_eq_u16_e64 s35, 1, v65.h
	v_cmp_eq_u16_e64 s20, 1, v71.l
	v_cmp_eq_u16_e64 s27, 1, v66.l
	v_cmp_eq_u16_e64 s19, 1, v71.h
	v_cmp_eq_u16_e64 s25, 1, v66.h
	v_cmp_eq_u16_e64 s23, 1, v67.l
	v_cmp_eq_u16_e64 s21, 1, v67.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v76, 0xff800000, v87, s29
	v_cndmask_b32_e64 v77, 0xff800000, v142, s31
	v_cndmask_b32_e64 v78, 0xff800000, v143, s30
	v_cndmask_b32_e64 v152, 0xff800000, v79, s24
	v_cndmask_b32_e64 v79, 0xff800000, v147, s33
	v_cndmask_b32_e64 v148, 0xff800000, v148, s28
	v_cndmask_b32_e64 v154, 0xff800000, v149, s22
	v_cndmask_b32_e64 v149, 0xff800000, v151, s34
	v_cndmask_b32_e64 v150, 0xff800000, v85, s26
	v_cndmask_b32_e64 v151, 0xff800000, v86, s35
	v_cndmask_b32_e64 v161, 0xff800000, v153, s20
	v_cndmask_b32_e64 v153, 0xff800000, v155, s27
	v_cndmask_b32_e64 v163, 0xff800000, v157, s19
	v_cndmask_b32_e64 v155, 0xff800000, v156, s25
	v_cndmask_b32_e64 v162, 0xff800000, v164, s23
	v_cndmask_b32_e64 v164, 0xff800000, v158, s21
	ds_store_b64 v82, v[76:77]
	ds_store_b64 v121, v[78:79]
	ds_store_b64 v122, v[148:149]
	ds_store_b64 v123, v[150:151]
	ds_store_b64 v124, v[152:153]
	ds_store_b64 v125, v[154:155]
	ds_store_b64 v126, v[161:162]
	ds_store_b64 v127, v[163:164]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[64:67], v120 offset0:64 offset1:80
	ds_load_2addr_b64 v[68:71], v120 offset1:16
	ds_load_2addr_b64 v[72:75], v120 offset0:96 offset1:112
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(2)
	v_max_f32_e32 v82, v64, v64
	s_waitcnt lgkmcnt(1)
	v_dual_max_f32 v83, v68, v68 :: v_dual_max_f32 v84, v66, v66
	v_max_f32_e32 v85, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v82, v83, v82 :: v_dual_max_f32 v83, v85, v84
	v_max3_f32 v82, v82, v69, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp2:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v84, v82
	v_mov_b32_dpp v84, v84 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v84, v84, v84
	v_max_f32_e32 v82, v82, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v84, v82
	v_mov_b32_dpp v84, v84 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v84, v84, v84
	v_max_f32_e32 v82, v82, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v84, v82
	v_mov_b32_dpp v84, v84 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v84, v84, v84
	v_max_f32_e32 v165, v82, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v142, v80, v165
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v83, v83, v71, v67
.Ltmp10:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v168, v69, v142 :: v_dual_mov_b32 v85, v83
	v_sub_f32_e32 v170, v65, v142
	v_sub_f32_e32 v167, v68, v142
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v68, v72, v72
.Ltmp12:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v169, v64, v142
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v85, v85 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v85, v85, v85
	v_max_f32_e32 v83, v83, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v85, v83
	v_mov_b32_dpp v85, v85 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v85, v85, v85
	v_max_f32_e32 v83, v83, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v85, v83
	v_mov_b32_dpp v85, v85 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v85, v85, v85
	v_max_f32_e32 v166, v83, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp19:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v143, v81, v166
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v83, v66, v143
	v_sub_f32_e32 v82, v67, v143
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_2addr_b64 v[64:67], v120 offset0:32 offset1:48
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v82, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v82, 0, v82, s12
.Ltmp20:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v69, v64, v64
	v_dual_max_f32 v68, v69, v68 :: v_dual_max_f32 v69, v74, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v68, v68, v65, v73
.Ltmp21:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v81, v70, v143
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v66, v66
	v_dual_max_f32 v69, v70, v69 :: v_dual_mov_b32 v70, v68
.Ltmp23:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v80, v71, v143
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v69, v69, v67, v75
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v70 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v80, v80
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_max_f32_e32 v68, v68, v70
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v70, v69
.Ltmp29:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v81, v81
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v80, 0, v80, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp30:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v70 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp32:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v81, 0, v81, s10
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v69, v69, v70 :: v_dual_mov_b32 v70, v68
.Ltmp34:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v83, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v70 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp37:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v83, 0, v83, s13
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v70
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v70, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v70, v70 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v69, v69, v70 :: v_dual_mov_b32 v70, v68
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v70, v70 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v70, v70, v70
	v_dual_max_f32 v171, v68, v70 :: v_dual_mov_b32 v68, v69
.Ltmp43:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v70.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v68, v68 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v71.h, v70.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v68, v68, v68
	v_max_f32_e32 v172, v69, v68
.Ltmp47:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v68, v140, v140 :: v_dual_max_f32 v69, v141, v141
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v140, v68, v171 :: v_dual_max_f32 v141, v69, v172
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v68.h, v70.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v158, v64, v140
	v_sub_f32_e32 v86, v65, v140
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v64, v76, v77
	v_max3_f32 v65, v79, v148, v149
.Ltmp49:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v85, v66, v141
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v66, v161, v162, v163
.Ltmp51:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v159, v72, v140
	v_sub_f32_e32 v157, v73, v140
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v64, v64, v78, v65
	v_max3_f32 v65, v153, v154, v155
.Ltmp53:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v87, v75, v141
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v85, v85
	v_exp_f32_e32 v157, v157
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp54:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v65, v65, v66, v164
	v_max3_f32 v66, v150, v151, v152
.Ltmp55:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v87, v87
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v64, v64, v66, v65
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp57:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v85, 0, v85, s4
	v_cndmask_b32_e64 v157, 0, v157, s8
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s4, 0xff800000, v146
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v65, v64, s67, 0xfedcba98 op_sel:[1,0]
.Ltmp59:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v87, 0, v87, s6
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s6, 0xff800000, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v147, v160, v64, v65
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v84, v67, v141
	v_sub_f32_e32 v156, v74, v141
	v_sub_f32_e32 v64, v77, v147
	v_sub_f32_e32 v65, v76, v147
	v_sub_f32_e32 v69, v162, v147
	v_sub_f32_e32 v67, v155, v147
	v_mov_b32_e32 v155, v91
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v64, v64
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v67, v67
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v64, 0, v64, s31
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v65, 0, v65, s29
	v_cndmask_b32_e64 v69, 0, v69, s23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v67, 0, v67, s25
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v70.l, v64.h
	v_cmp_o_f32_e64 s31, v64, v64
	v_cmp_o_f32_e64 s29, v65, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v66, 1, v70
	v_add3_u32 v64, v64, v66, 0x7fff
	v_mov_b16_e32 v66.h, v70.h
	v_mov_b16_e32 v66.l, v65.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v64.h, 0x7fff, v64.h, s31
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v65, v65, v66, 0x7fff
	v_mov_b16_e32 v66.h, v70.h
	v_cndmask_b16 v64.l, 0x7fff, v65.h, s29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v65, v64, s67, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v72, v65, v64, v97
	v_perm_b32 v73, v65, v64, v98
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v78, v147
	v_sub_f32_e32 v65, v79, v147
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v64, v64
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v64, 0, v64, s30
	v_cndmask_b32_e64 v65, 0, v65, s33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v66.l, v64.h
	v_mov_b16_e32 v70.l, v65.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s29, v64, v64
	v_cmp_o_f32_e64 s30, v65, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v66, 1, v66
	v_add3_u32 v64, v64, v66, 0x7fff
	v_and_b32_e32 v66, 1, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v64.l, 0x7fff, v64.h, s29
	v_add3_u32 v65, v65, v66, 0x7fff
	v_mov_b16_e32 v66.h, v70.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v64.h, 0x7fff, v65.h, s30
	v_permlanex16_b32 v65, v64, s67, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v74, v65, v64, v97
	v_perm_b32 v75, v65, v64, v98
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v148, v147
	v_sub_f32_e32 v65, v149, v147
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v149.h, v70.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v84, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v64, v64
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v84, 0, v84, s3
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v145
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v64, 0, v64, s28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v65, 0, v65, s34
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v66.l, v64.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v70.l, v65.h
	v_cmp_o_f32_e64 s28, v64, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s29, v65, v65
	v_and_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v64, v64, v66, 0x7fff
	v_and_b32_e32 v66, 1, v70
	v_cndmask_b16 v64.l, 0x7fff, v64.h, s28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v65, v65, v66, 0x7fff
	v_mov_b16_e32 v66.h, v70.h
	v_cndmask_b16 v64.h, 0x7fff, v65.h, s29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v65, v64, s67, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v76, v65, v64, v97
	v_perm_b32 v77, v65, v64, v98
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v150, v147
	v_sub_f32_e32 v65, v151, v147
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v86, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v64, v64
	v_exp_f32_e32 v65, v65
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v86, 0, v86, s5
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e64 s5, 0xff800000, v144
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v64, 0, v64, s26
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v65, 0, v65, s35
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v157, v86, v157
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp61:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v66.l, v64.h
	v_mov_b16_e32 v70.l, v65.h
	v_cmp_o_f32_e64 s26, v64, v64
	v_cmp_o_f32_e64 s28, v65, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v66, 1, v66
	v_add3_u32 v64, v64, v66, 0x7fff
	v_and_b32_e32 v66, 1, v70
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v64.l, 0x7fff, v64.h, s26
	v_add3_u32 v65, v65, v66, 0x7fff
	v_mov_b16_e32 v66.h, v70.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v64.h, 0x7fff, v65.h, s28
	v_permlanex16_b32 v65, v64, s67, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_perm_b32 v78, v65, v64, v97
	v_perm_b32 v79, v65, v64, v98
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v152, v147
	v_sub_f32_e32 v65, v153, v147
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v156, v156
	v_exp_f32_e32 v64, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v65, v65
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v156, 0, v156, s7
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v64, 0, v64, s24
	v_cndmask_b32_e64 v65, 0, v65, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v66.l, v64.h
	v_mov_b16_e32 v70.l, v65.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s24, v64, v64
	v_cmp_o_f32_e64 s26, v65, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v66, 1, v66
	v_add3_u32 v64, v64, v66, 0x7fff
	v_and_b32_e32 v66, 1, v70
	v_mov_b16_e32 v70.l, v67.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v65, v65, v66, 0x7fff
	v_cndmask_b16 v65.l, 0x7fff, v64.h, s24
	v_cmp_o_f32_e64 s24, v67, v67
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v65.h, 0x7fff, v65.h, s26
	v_permlanex16_b32 v66, v65, s67, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v64, v66, v65, v97
	v_perm_b32 v65, v66, v65, v98
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v154, v147
	v_dual_mov_b32 v154, v89 :: v_dual_sub_f32 v89, v160, v147
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v89, v89
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v68.l, v66.h
	v_cmp_o_f32_e64 s22, v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v68, 1, v68
	v_add3_u32 v66, v66, v68, 0x7fff
	v_and_b32_e32 v68, 1, v70
	v_mov_b16_e32 v70.l, v69.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v67, v67, v68, 0x7fff
	v_cndmask_b16 v67.l, 0x7fff, v66.h, s22
	v_cmp_o_f32_e64 s22, v69, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v67.h, 0x7fff, v67.h, s24
	v_permlanex16_b32 v68, v67, s67, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v66, v68, v67, v97
	v_perm_b32 v67, v68, v67, v98
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v68, v161, v147
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s20
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v71.l, v68.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s20, v68, v68
	v_and_b32_e32 v71, 1, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v68, v68, v71, 0x7fff
	v_and_b32_e32 v71, 1, v70
	v_add3_u32 v69, v69, v71, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v69.l, 0x7fff, v68.h, s20
	v_cndmask_b16 v69.h, 0x7fff, v69.h, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v71, v69, s67, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v68, v71, v69, v97
	v_perm_b32 v69, v71, v69, v98
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v71, v163, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v71, 0, v71, s19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v149.l, v71.h
	v_cmp_o_f32_e64 s19, v71, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v149, 1, v149
	v_add3_u32 v71, v71, v149, 0x7fff
	v_mov_b32_e32 v149, v92
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v92, v170
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v71.l, 0x7fff, v71.h, s19
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s19, 0xff800000, v160
	v_cndmask_b32_e64 v89, 0, v89, s19
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v148, v164, v147
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v92, 0, v92, s17
	.loc	1 889 30 is_stmt 1              ; attention.py:889:30
	s_mul_i32 s19, s45, s49
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v89
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v148, v148
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v5, v5, v89
	v_mul_f32_e32 v24, v24, v89
	v_mul_f32_e32 v25, v25, v89
	v_mul_f32_e32 v26, v26, v89
	v_mul_f32_e32 v27, v27, v89
	v_mul_f32_e32 v28, v28, v89
	v_mul_f32_e32 v29, v29, v89
	v_mul_f32_e32 v30, v30, v89
	v_mul_f32_e32 v31, v31, v89
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v148, 0, v148, s21
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v89
	v_mul_f32_e32 v17, v17, v89
	v_mul_f32_e32 v19, v19, v89
	v_mul_f32_e32 v20, v20, v89
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v70.l, v148.h
	v_cmp_o_f32_e64 s20, v148, v148
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v21, v21, v89
	v_mul_f32_e32 v22, v22, v89
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v23, v23, v89 :: v_dual_and_b32 v70, 1, v70
	v_mul_f32_e32 v8, v8, v89
	v_mul_f32_e32 v9, v9, v89
	v_mul_f32_e32 v10, v10, v89
	v_mul_f32_e32 v11, v11, v89
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v70, v148, v70, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v12, v12, v89
	v_mul_f32_e32 v13, v13, v89
	v_mul_f32_e32 v14, v14, v89
	v_mul_f32_e32 v15, v15, v89
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v71.h, 0x7fff, v70.h, s20
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v0, v0, v89
	v_mul_f32_e32 v2, v2, v89
	v_mul_f32_e32 v3, v3, v89
	v_mul_f32_e32 v4, v4, v89
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v148, v71, s67, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v89
	v_mul_f32_e32 v7, v7, v89
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v91, s19, v93, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v70, v148, v71, v97
	v_perm_b32 v71, v148, v71, v98
	v_mov_b32_e32 v148, v90
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v90, v169
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v160, 0x80000000, v91, s1
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v91, v158
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v90, 0, v90, s18
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v18, v18, v89 :: v_dual_max_f32 v89, v144, v144
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v158, 0, v91, s11
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v91, v81, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp63:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v150, v89, v165 :: v_dual_max_f32 v89, v96, v96
	v_max_f32_e32 v151, v89, v166
	v_max_f32_e32 v89, v145, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v152, v89, v171 :: v_dual_max_f32 v89, v146, v146
	v_max_f32_e32 v153, v89, v172
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v89, v167
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v89, 0, v89, s16
.Ltmp64:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v89, v89, v90
.Ltmp65:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v90, v168
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v90, 0, v90, s15
.Ltmp66:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v90, v90, v92
.Ltmp67:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v92, s19, v138, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp68:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v89, v89, v90
.Ltmp69:
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v161, 0x80000000, v92, s1
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v92, v159
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v90, v144, v150
	v_sub_f32_e32 v144, v146, v153
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v90, v90
	.loc	1 886 33 is_stmt 1              ; attention.py:886:33
	v_cndmask_b32_e64 v159, 0, v92, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp70:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v158, v158, v159
	v_add_f32_e32 v92, v80, v82
.Ltmp71:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v146, 0, v90, s5
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[80:83], v160, s[56:59], 0 offen
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v159, v85, v156
	v_dual_add_f32 v90, v91, v92 :: v_dual_add_f32 v91, v158, v157
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v157, v89 :: v_dual_mov_b32 v158, v90
	v_mov_b32_dpp v157, v157 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v158, v158 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v89, v89, v157 :: v_dual_add_f32 v160, v84, v87
.Ltmp75:
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[84:87], v161, s[56:59], 0 offen
.Ltmp76:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v90, v90, v158 :: v_dual_sub_f32 v161, v96, v151
.Ltmp77:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp78:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v158, v90
	v_mov_b32_dpp v158, v158 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v158, v90, v158
	v_add_f32_e32 v92, v159, v160
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v159, v91 :: v_dual_sub_f32 v96, v145, v152
.Ltmp81:
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v145, v161
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v157, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v159, v159 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v157, v157 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v91, v91, v159
.Ltmp84:
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v145, 0, v145, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v92, v92, v157 :: v_dual_mov_b32 v157, v89
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v159, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v157, v157 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v159, v159 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp87:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v89, v89, v157 :: v_dual_add_nc_u32 v156, 0, v106
	v_add_f32_e32 v91, v91, v159
.Ltmp88:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v159, v158
.Ltmp89:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	ds_store_b128 v156, v[80:83]
	s_waitcnt vmcnt(0)
	ds_store_b128 v156, v[84:87] offset:2048
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v90, v89
	v_mov_b32_dpp v159, v159 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp91:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v90, v90 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v89, v89, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp94:
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v89, v154, v146
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v157, v92 :: v_dual_mov_b32 v146, v153
	v_mov_b32_dpp v157, v157 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v92, v92, v157 :: v_dual_mov_b32 v157, v91
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v157, v157 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v90, v91, v157 :: v_dual_mov_b32 v157, v92
	v_add_f32_e32 v91, v158, v159
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v157, v157 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp100:
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v91, v155, v145
	v_mov_b32_e32 v145, v152
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v92, v92, v157
.Ltmp102:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v80, v139
	ds_load_u16_d16 v83, v139 offset:768
	ds_load_u16_d16 v84, v139 offset:1024
	ds_load_u16_d16 v85, v139 offset:1280
	ds_load_u16_d16 v86, v139 offset:1536
	ds_load_u16_d16 v87, v139 offset:1792
	ds_load_u16_d16 v82, v139 offset:512
	ds_load_u16_d16 v81, v139 offset:256
	ds_load_u16_d16 v155, v139 offset:288
	ds_load_u16_d16 v154, v139 offset:32
	ds_load_u16_d16 v156, v139 offset:544
	ds_load_u16_d16 v157, v139 offset:800
	ds_load_u16_d16 v158, v139 offset:1056
	ds_load_u16_d16 v159, v139 offset:1312
	ds_load_u16_d16 v160, v139 offset:1568
	ds_load_u16_d16 v161, v139 offset:1824
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v80, v139 offset:128
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v83, v139 offset:896
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v84, v139 offset:1152
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v85, v139 offset:1408
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v86, v139 offset:1664
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v87, v139 offset:1920
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v82, v139 offset:640
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v81, v139 offset:384
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[80:87], v[72:79], v[24:31]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v82, v139 offset:576
	ds_load_u16_d16 v83, v139 offset:832
	ds_load_u16_d16 v84, v139 offset:1088
	ds_load_u16_d16 v85, v139 offset:1344
	ds_load_u16_d16 v86, v139 offset:1600
	ds_load_u16_d16 v87, v139 offset:1856
	ds_load_u16_d16 v80, v139 offset:64
	ds_load_u16_d16 v81, v139 offset:320
	ds_load_u16_d16_hi v154, v139 offset:160
	ds_load_u16_d16_hi v155, v139 offset:416
	ds_load_u16_d16_hi v156, v139 offset:672
	ds_load_u16_d16_hi v157, v139 offset:928
	ds_load_u16_d16_hi v158, v139 offset:1184
	ds_load_u16_d16_hi v159, v139 offset:1440
	ds_load_u16_d16_hi v160, v139 offset:1696
	ds_load_u16_d16_hi v161, v139 offset:1952
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[154:161], v[72:79], v[16:23]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v156, v139 offset:608
	ds_load_u16_d16 v155, v139 offset:352
	ds_load_u16_d16 v154, v139 offset:96
	ds_load_u16_d16 v157, v139 offset:864
	ds_load_u16_d16 v158, v139 offset:1120
	ds_load_u16_d16 v159, v139 offset:1376
	ds_load_u16_d16 v160, v139 offset:1632
	ds_load_u16_d16 v161, v139 offset:1888
	ds_load_u16_d16_hi v82, v139 offset:704
	ds_load_u16_d16_hi v83, v139 offset:960
	ds_load_u16_d16_hi v84, v139 offset:1216
	ds_load_u16_d16_hi v85, v139 offset:1472
	ds_load_u16_d16_hi v86, v139 offset:1728
	ds_load_u16_d16_hi v87, v139 offset:1984
	ds_load_u16_d16_hi v80, v139 offset:192
	ds_load_u16_d16_hi v81, v139 offset:448
	ds_load_u16_d16 v162, v139 offset:2048
	ds_load_u16_d16 v164, v139 offset:2560
	ds_load_u16_d16 v165, v139 offset:2816
	ds_load_u16_d16 v166, v139 offset:3072
	ds_load_u16_d16 v167, v139 offset:3328
	ds_load_u16_d16 v168, v139 offset:3584
	ds_load_u16_d16 v169, v139 offset:3840
	ds_load_u16_d16 v163, v139 offset:2304
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v155, v139 offset:480
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v154, v139 offset:224
	ds_load_u16_d16_hi v156, v139 offset:736
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v157, v139 offset:992
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v158, v139 offset:1248
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v159, v139 offset:1504
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v160, v139 offset:1760
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v161, v139 offset:2016
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[80:87], v[72:79], v[8:15]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[154:161], v[72:79], v[0:7]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v80, v139 offset:2112
	ds_load_u16_d16 v81, v139 offset:2368
	ds_load_u16_d16 v72, v139 offset:2144
	ds_load_u16_d16 v82, v139 offset:2624
	ds_load_u16_d16 v83, v139 offset:2880
	ds_load_u16_d16 v84, v139 offset:3136
	ds_load_u16_d16 v85, v139 offset:3392
	ds_load_u16_d16 v86, v139 offset:3648
	ds_load_u16_d16 v87, v139 offset:3904
	ds_load_u16_d16 v73, v139 offset:2400
	ds_load_u16_d16 v74, v139 offset:2656
	ds_load_u16_d16 v75, v139 offset:2912
	ds_load_u16_d16_hi v162, v139 offset:2176
	ds_load_u16_d16_hi v164, v139 offset:2688
	ds_load_u16_d16_hi v165, v139 offset:2944
	ds_load_u16_d16_hi v166, v139 offset:3200
	ds_load_u16_d16_hi v167, v139 offset:3456
	ds_load_u16_d16_hi v168, v139 offset:3712
	ds_load_u16_d16_hi v169, v139 offset:3968
	ds_load_u16_d16_hi v163, v139 offset:2432
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v154, v96
	v_exp_f32_e32 v155, v144
	v_mov_b32_e32 v160, v147
	v_mov_b32_e32 v144, v150
	v_mov_b32_e32 v96, v151
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e64 v147, 0, v154, s3
	v_cndmask_b32_e64 v150, 0, v155, s4
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_add_i32 s3, s68, 32
	s_cmpk_lt_u32 s68, 0x1e0
	s_mov_b32 s68, s3
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v90, v148, v147
	v_fmac_f32_e32 v92, v149, v150
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[162:169], v[64:71], v[24:31]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v161, v139 offset:2080
	ds_load_u16_d16 v76, v139 offset:3168
	ds_load_u16_d16 v162, v139 offset:2336
	ds_load_u16_d16 v77, v139 offset:3424
	ds_load_u16_d16 v163, v139 offset:2592
	ds_load_u16_d16 v78, v139 offset:3680
	ds_load_u16_d16 v164, v139 offset:2848
	ds_load_u16_d16 v79, v139 offset:3936
	ds_load_u16_d16 v165, v139 offset:3104
	ds_load_u16_d16 v166, v139 offset:3360
	ds_load_u16_d16 v167, v139 offset:3616
	ds_load_u16_d16 v168, v139 offset:3872
	ds_load_u16_d16_hi v80, v139 offset:2240
	ds_load_u16_d16_hi v81, v139 offset:2496
	ds_load_u16_d16_hi v82, v139 offset:2752
	ds_load_u16_d16_hi v83, v139 offset:3008
	ds_load_u16_d16_hi v84, v139 offset:3264
	ds_load_u16_d16_hi v85, v139 offset:3520
	ds_load_u16_d16_hi v86, v139 offset:3776
	ds_load_u16_d16_hi v87, v139 offset:4032
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v161, v139 offset:2208
	ds_load_u16_d16_hi v72, v139 offset:2272
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v162, v139 offset:2464
	ds_load_u16_d16_hi v73, v139 offset:2528
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v163, v139 offset:2720
	ds_load_u16_d16_hi v74, v139 offset:2784
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v164, v139 offset:2976
	ds_load_u16_d16_hi v75, v139 offset:3040
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v165, v139 offset:3232
	ds_load_u16_d16_hi v76, v139 offset:3296
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v166, v139 offset:3488
	ds_load_u16_d16_hi v77, v139 offset:3552
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v167, v139 offset:3744
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v168, v139 offset:4000
	ds_load_u16_d16_hi v78, v139 offset:3808
	ds_load_u16_d16_hi v79, v139 offset:4064
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[80:87], v[64:71], v[8:15]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[161:168], v[64:71], v[16:23]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[72:79], v[64:71], v[0:7]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	v_and_b32_e32 v32, 0x80, v104
	v_and_b32_e32 v33, 4, v105
	v_add_nc_u32_e32 v34, 0, v107
	v_add_nc_u32_e32 v35, 0, v103
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s11, 0x31027000
	v_add3_u32 v32, v34, v32, v33
	ds_store_2addr_b64 v35, v[89:90], v[91:92] offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v35, 1, v102
	.loc	1 818 13                        ; attention.py:818:13
	ds_load_b32 v37, v32
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v32, 1, v101
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v34, 16, v35
	v_or_b32_e32 v33, 32, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v36, v32, v100
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
	v_div_scale_f32 v40, null, v37, v37, v25
	v_div_scale_f32 v44, null, v37, v37, v27
	v_div_scale_f32 v38, null, v37, v37, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v47, v40
	v_div_scale_f32 v51, null, v37, v37, v29
	v_rcp_f32_e32 v52, v44
	v_div_scale_f32 v42, null, v37, v37, v26
	v_rcp_f32_e32 v46, v38
	v_div_scale_f32 v48, null, v37, v37, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v50, v42
	v_fma_f32 v55, -v40, v47, 1.0
	v_div_scale_f32 v45, s4, v27, v37, v27
	v_rcp_f32_e32 v54, v48
	v_fma_f32 v57, -v44, v52, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v55, v47
	v_rcp_f32_e32 v55, v51
	v_fma_f32 v53, -v38, v46, 1.0
	v_div_scale_f32 v39, vcc_lo, v24, v37, v24
	v_div_scale_f32 v41, s2, v25, v37, v25
	v_fmac_f32_e32 v46, v53, v46
	v_fma_f32 v53, -v42, v50, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v59, -v48, v54, 1.0
	v_div_scale_f32 v43, s3, v26, v37, v26
	v_fma_f32 v62, -v51, v55, 1.0
	v_fmac_f32_e32 v52, v57, v52
	v_mul_f32_e32 v58, v39, v46
	v_fmac_f32_e32 v54, v59, v54
	v_div_scale_f32 v56, null, v37, v37, v30
	v_fmac_f32_e32 v55, v62, v55
	v_mul_f32_e32 v63, v45, v52
	v_fma_f32 v57, -v38, v58, v39
	v_div_scale_f32 v49, s5, v28, v37, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v59, -v44, v63, v45
	v_fmac_f32_e32 v50, v53, v50
	v_dual_fmac_f32 v58, v57, v46 :: v_dual_fmac_f32 v63, v59, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v53, v41, v47 :: v_dual_mul_f32 v60, v43, v50
	v_fma_f32 v38, -v38, v58, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v61, -v40, v53, v41
	v_fma_f32 v57, -v42, v60, v43
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v38, v38, v46, v58
	s_mov_b32 vcc_lo, s2
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s2, 0, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v53, v61, v47
	v_fmac_f32_e32 v60, v57, v50
	v_div_fixup_f32 v24, v38, v37, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v40, v53, v41
	v_fma_f32 v40, -v42, v60, v43
	v_rcp_f32_e32 v41, v56
	v_div_scale_f32 v43, null, v37, v37, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v47, v53
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v42, s3, v29, v37, v29
	v_rcp_f32_e32 v47, v43
	v_div_fmas_f32 v38, v40, v50, v60
	v_div_fixup_f32 v25, v39, v37, v25
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v56, v41, 1.0
	v_fma_f32 v39, -v44, v63, v45
	v_mul_f32_e32 v45, v42, v55
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v26, v38, v37, v26
	v_fmac_f32_e32 v41, v46, v41
	v_div_fmas_f32 v39, v39, v52, v63
	v_fma_f32 v46, -v43, v47, 1.0
	v_mul_f32_e32 v40, v49, v54
	v_fma_f32 v38, -v51, v45, v42
	v_div_scale_f32 v52, null, v37, v37, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v46, v47
	v_fma_f32 v44, -v48, v40, v49
	v_div_fixup_f32 v27, v39, v37, v27
	v_div_scale_f32 v39, s4, v30, v37, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v45, v38, v55 :: v_dual_fmac_f32 v40, v44, v54
	v_div_scale_f32 v44, null, v37, v37, v16
	v_mul_f32_e32 v38, v39, v41
	v_div_scale_f32 v46, s6, v31, v37, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v48, v40, v49
	v_rcp_f32_e32 v49, v44
	v_fma_f32 v42, -v51, v45, v42
	s_mov_b32 vcc_lo, s5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v40, v48, v54, v40
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v48, -v56, v38, v39
	v_div_fmas_f32 v42, v42, v55, v45
	v_rcp_f32_e32 v45, v52
	v_div_fixup_f32 v28, v40, v37, v28
	v_fma_f32 v51, -v44, v49, 1.0
	v_mul_f32_e32 v50, v46, v47
	v_fmac_f32_e32 v38, v48, v41
	v_div_fixup_f32 v29, v42, v37, v29
	s_mov_b32 vcc_lo, s4
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
	v_cndmask_b32_e64 v25, 0, v25, s2
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
	v_cndmask_b32_e64 v26, 0, v26, s2
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s2
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s2
	v_cndmask_b32_e64 v29, 0, v29, s2
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
	v_cmp_o_f32_e64 s7, v26, v26
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s2
	v_cndmask_b32_e64 v31, 0, v31, s2
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
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s6
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s7
	v_add3_u32 v27, v28, v37, 0x7fff
	v_cmp_o_f32_e64 s6, v28, v28
	v_add3_u32 v28, v29, v38, 0x7fff
	v_cmp_o_f32_e64 s7, v29, v29
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s5
	v_bfe_u32 v26, v30, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s6
	v_bfe_u32 v29, v31, 16, 1
	v_cndmask_b16 v27.h, 0x7fff, v28.h, s7
	v_bfe_u32 v28, v16, 16, 1
	v_add3_u32 v26, v30, v26, 0x7fff
	v_cmp_o_f32_e64 s5, v30, v30
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s2
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
	v_perm_b32 v0, v2, v4, v97
	v_perm_b32 v1, v2, v4, v98
	v_perm_b32 v4, v5, v12, v97
	v_perm_b32 v5, v5, v12, v98
	v_perm_b32 v8, v10, v16, v97
	v_perm_b32 v9, v10, v16, v98
	v_perm_b32 v10, v13, v11, v97
	v_perm_b32 v11, v13, v11, v98
	v_perm_b32 v12, v15, v17, v97
	v_perm_b32 v13, v15, v17, v98
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v17, v36, v34, 1
	v_add_lshl_u32 v16, v36, v35, 1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s49, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v2, v3, v6, v97
	v_perm_b32 v3, v3, v6, v98
	v_perm_b32 v6, v7, v14, v97
	v_perm_b32 v7, v7, v14, v98
	v_perm_b32 v14, v19, v18, v97
	v_perm_b32 v15, v19, v18, v98
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
.Ltmp103:
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
		.amdhsa_next_free_vgpr 173
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
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_fp32_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.num_vgpr, 173
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
; codeLenInByte = 12752
; TotalNumSgprs: 71
; NumVgprs: 173
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 71
; NumVGPRsForWavesPerEU: 173
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
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
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
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
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
    .vgpr_count:     173
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
