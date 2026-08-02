	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[30:31], s[0:1], 0x5c
	v_dual_mov_b32 v45, 0x5410 :: v_dual_and_b32 v8, 7, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 3, v0
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[40:41], s[0:1], 0x10
	v_dual_mov_b32 v46, 0x7632 :: v_dual_lshlrev_b32 v7, 3, v8
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s2, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s33, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s2, v1
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s19, s2, s33
	s_clause 0x1
	s_load_b32 s8, s[0:1], 0x64
	s_load_b64 s[28:29], s[0:1], 0x38
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x200, v2
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v48, 0x60, v0
	v_and_b32_e32 v52, 16, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v47, 15, v0
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[89:90], null, s30, v1, v[7:8]
	s_mul_i32 s1, s30, s19
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s30, v7
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s37, s5, 0xffff
	s_mov_b32 s36, s4
	v_dual_mov_b32 v30, v25 :: v_dual_lshlrev_b32 v51, 1, v0
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[90:91], null, s30, 48, v[89:90]
	v_lshl_add_u32 v97, s30, 4, v89
	v_lshl_add_u32 v98, s30, 5, v89
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v1, v89, s1, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s0, s0, vcc_lo
	v_bfe_i32 v53, v0, 3, 1
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v2, v97, s1, 1
	v_add_lshl_u32 v3, v98, s1, 1
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
	v_cmp_eq_u32_e64 s0, 0, v52
	v_dual_mov_b32 v28, v25 :: v_dual_and_b32 v49, 0x78, v0
	v_dual_mov_b32 v27, v25 :: v_dual_lshlrev_b32 v50, 4, v0
	v_mov_b32_e32 v26, v25
	v_dual_mov_b32 v31, v25 :: v_dual_lshlrev_b32 v56, 7, v47
	v_dual_mov_b32 v32, v25 :: v_dual_and_b32 v51, 0x70, v51
	v_mov_b32_e32 v17, v25
	v_dual_mov_b32 v18, v25 :: v_dual_lshlrev_b32 v57, 4, v8
	v_dual_mov_b32 v19, v25 :: v_dual_and_b32 v52, 0x410, v53
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v54, 1, v48
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v48, 6, v48
	v_cndmask_b32_e64 v45, 0x1054, v45, s0
	v_mul_u32_u24_e32 v53, 0x90, v8
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v55, 1, v49
	v_or_b32_e32 v96, v54, v47
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v47, v50, v51
	v_or3_b32 v48, v56, v48, v57
	v_or_b32_e32 v99, v57, v56
	v_cndmask_b32_e64 v46, 0x3276, v46, s0
	v_lshl_or_b32 v45, v45, 8, v45
	v_xor_b32_e32 v49, v57, v49
	v_xor_b32_e32 v100, v53, v52
	v_dual_mov_b32 v20, v25 :: v_dual_add_nc_u32 v101, 0, v47
	v_dual_mov_b32 v22, v25 :: v_dual_add_nc_u32 v47, 0, v48
	v_dual_mov_b32 v24, v25 :: v_dual_and_b32 v45, 0x540054, v45
	v_xad_u32 v51, v48, 16, 0
	v_xad_u32 v52, v48, 32, 0
	v_xad_u32 v53, v48, 48, 0
	v_xad_u32 v54, v48, 64, 0
	v_xad_u32 v56, 0x50, v48, 0
	v_xad_u32 v57, 0x60, v48, 0
	v_xad_u32 v61, 0x70, v48, 0
	v_xor_b32_e32 v48, 16, v99
	v_lshl_or_b32 v46, v46, 8, v46
	v_lshl_or_b32 v102, v8, 10, v49
	v_xor_b32_e32 v8, 16, v100
	v_xor_b32_e32 v49, 32, v100
	v_mov_b32_e32 v10, v25
	v_dual_mov_b32 v12, v25 :: v_dual_add_nc_u32 v103, 0, v48
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v50, s2, v96
	v_xor_b32_e32 v58, 32, v99
	v_xor_b32_e32 v59, 48, v99
	v_xor_b32_e32 v60, 64, v99
	v_xor_b32_e32 v62, 0x50, v99
	v_xor_b32_e32 v63, 0x60, v99
	v_xor_b32_e32 v64, 0x70, v99
	v_xor_b32_e32 v94, 0x1810, v100
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s2, s31, v7
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[91:92], null, s31, v55, v[7:8]
	v_lshl_or_b32 v7, v45, 4, v45
	v_and_b32_e32 v45, 0x760076, v46
	v_add_nc_u32_e32 v111, 0, v49
	v_xor_b32_e32 v46, 0x120, v102
	v_xor_b32_e32 v48, 0x1b0, v102
	v_xor_b32_e32 v49, 0x240, v102
	v_dual_mov_b32 v21, v25 :: v_dual_add_nc_u32 v104, 0, v58
	v_dual_mov_b32 v23, v25 :: v_dual_add_nc_u32 v106, 0, v60
	v_dual_mov_b32 v9, v25 :: v_dual_add_nc_u32 v108, 0, v63
	v_dual_mov_b32 v14, v25 :: v_dual_add_nc_u32 v105, 0, v59
	v_dual_mov_b32 v16, v25 :: v_dual_add_nc_u32 v107, 0, v62
	v_dual_mov_b32 v2, v25 :: v_dual_add_nc_u32 v109, 0, v64
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s1, 0x200, v50
	v_add_nc_u32_e32 v137, 0, v94
	v_and_b32_e32 v94, 0x5040504, v7
	v_lshl_or_b32 v7, v45, 4, v45
	v_add_nc_u32_e32 v139, 0, v46
	v_add_nc_u32_e32 v140, 0, v48
	v_add_nc_u32_e32 v141, 0, v49
	v_xor_b32_e32 v65, 48, v100
	v_xor_b32_e32 v66, 64, v100
	v_xor_b32_e32 v67, 0x50, v100
	v_xor_b32_e32 v93, 0x1830, v100
	v_dual_mov_b32 v11, v25 :: v_dual_add_nc_u32 v110, 0, v8
	v_dual_mov_b32 v13, v25 :: v_dual_add_nc_u32 v112, 0, v65
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v15, v25 :: v_dual_add_nc_u32 v114, 0, v67
	v_xor_b32_e32 v68, 0x60, v100
	v_xor_b32_e32 v69, 0x70, v100
	v_xor_b32_e32 v70, 0x820, v100
	v_xor_b32_e32 v71, 0x830, v100
	v_xor_b32_e32 v72, 0x810, v100
	v_xor_b32_e32 v73, 0x860, v100
	v_xor_b32_e32 v74, 0x870, v100
	v_xor_b32_e32 v75, 0x840, v100
	v_xor_b32_e32 v76, 0x850, v100
	v_xor_b32_e32 v77, 0x1040, v100
	v_xor_b32_e32 v78, 0x1050, v100
	v_xor_b32_e32 v79, 0x1060, v100
	v_xor_b32_e32 v80, 0x1070, v100
	v_xor_b32_e32 v81, 0x1010, v100
	v_xor_b32_e32 v82, 0x1020, v100
	v_xor_b32_e32 v83, 0x1030, v100
	v_xor_b32_e32 v84, 0x1860, v100
	v_xor_b32_e32 v85, 0x1870, v100
	v_xor_b32_e32 v86, 0x1840, v100
	v_xor_b32_e32 v87, 0x1850, v100
	v_xor_b32_e32 v88, 0x1820, v100
	v_add_nc_u32_e32 v113, 0, v66
	v_xor_b32_e32 v8, 0x90, v102
	v_xor_b32_e32 v65, 0x2d0, v102
	v_xor_b32_e32 v66, 0x360, v102
	v_xor_b32_e32 v67, 0x3f0, v102
	v_add_nc_u32_e32 v136, 0, v93
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[92:93], null, s31, 3, v[91:92]
	v_dual_mov_b32 v1, v25 :: v_dual_add_nc_u32 v116, 0, v69
	v_add_nc_u32_e32 v115, 0, v68
	v_dual_mov_b32 v152, 0xff800000 :: v_dual_add_nc_u32 v117, 0, v70
	v_add_nc_u32_e32 v118, 0, v71
	v_add_nc_u32_e32 v119, 0, v72
	v_add_nc_u32_e32 v120, 0, v73
	v_add_nc_u32_e32 v121, 0, v74
	v_add_nc_u32_e32 v122, 0, v75
	v_add_nc_u32_e32 v123, 0, v76
	v_dual_mov_b32 v93, v25 :: v_dual_add_nc_u32 v124, 0, v77
	v_add_nc_u32_e32 v125, 0, v78
	v_add_nc_u32_e32 v126, 0, v79
	v_add_nc_u32_e32 v127, 0, v80
	v_add_nc_u32_e32 v128, 0, v81
	v_add_nc_u32_e32 v129, 0, v82
	v_add_nc_u32_e32 v130, 0, v83
	v_add_nc_u32_e32 v131, 0, v84
	v_add_nc_u32_e32 v132, 0, v85
	v_add_nc_u32_e32 v133, 0, v86
	v_add_nc_u32_e32 v134, 0, v87
	v_add_nc_u32_e32 v135, 0, v88
	v_add_nc_u32_e32 v138, 0, v8
	v_add_nc_u32_e32 v142, 0, v65
	v_add_nc_u32_e32 v143, 0, v66
	v_add_nc_u32_e32 v144, 0, v67
	v_and_b32_e32 v95, 0x7060706, v7
	v_mov_b32_e32 v7, v25
	v_dual_mov_b32 v8, v25 :: v_dual_add_nc_u32 v145, s31, v91
	v_lshl_add_u32 v146, s31, 1, v91
	s_mov_b32 s20, 0
	.loc	1 860 31                        ; attention.py:860:31
	s_mul_f32 s35, s8, 0x3fb8aa3b
	s_mov_b32 s34, 0x76543210
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
	s_mov_b32 s36, s6
	s_mov_b32 s44, s20
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v101, v[3:6]
	s_waitcnt vmcnt(2)
	ds_store_b128 v101, v[33:36] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v101, v[37:40] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v101, v[41:44] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v47
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
	s_or_b32 s3, s44, s33
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v168, s27 :: v_dual_add_nc_u32 v147, 0, v99
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s4, s3, s30
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v167, s26 :: v_dual_mov_b32 v166, s25
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v65, s4, v89, 1
	v_add_lshl_u32 v66, s4, v97, 1
	v_add_lshl_u32 v67, s4, v98, 1
	v_add_lshl_u32 v68, s4, v90, 1
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v165, s24 :: v_dual_mov_b32 v164, s23
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
	v_dual_mov_b32 v163, s22 :: v_dual_mov_b32 v162, s21
	v_mov_b32_e32 v161, s20
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s3, s3, s31
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(3)
	ds_store_b128 v101, v[65:68]
	s_waitcnt vmcnt(2)
	ds_store_b128 v101, v[69:72] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v101, v[73:76] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v101, v[77:80] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v103
	ds_load_b128 v[65:68], v147
	ds_load_b128 v[73:76], v147 offset:2048
	ds_load_b128 v[77:80], v103 offset:2048
	ds_load_b128 v[85:88], v103 offset:4096
	ds_load_b128 v[81:84], v147 offset:4096
	ds_load_b128 v[153:156], v147 offset:6144
	ds_load_b128 v[157:160], v103 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[169:176], v[65:72], v[33:40], v[161:168]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[73:80], v[33:40], v[161:168]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[81:88], v[33:40], v[161:168]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[153:160], v[33:40], v[161:168]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[157:160], v105
	ds_load_b128 v[153:156], v104
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[169:176], v[153:160], v[41:48], v[169:176]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[153:156], v104 offset:2048
	ds_load_b128 v[157:160], v105 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[153:160], v[41:48], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[157:160], v105 offset:4096
	ds_load_b128 v[153:156], v104 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[153:160], v[41:48], v[73:80]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[153:156], v104 offset:6144
	ds_load_b128 v[157:160], v105 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[153:160], v[41:48], v[81:88]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[157:160], v107
	ds_load_b128 v[153:156], v106
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[169:176], v[153:160], v[49:56], v[169:176]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[153:156], v106 offset:2048
	ds_load_b128 v[157:160], v107 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[153:160], v[49:56], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[157:160], v107 offset:4096
	ds_load_b128 v[153:156], v106 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[153:160], v[49:56], v[73:80]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[153:156], v106 offset:6144
	ds_load_b128 v[157:160], v107 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[153:160], v[49:56], v[81:88]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[157:160], v109
	ds_load_b128 v[153:156], v108
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[169:176], v[153:160], v[57:64], v[169:176]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[153:156], v108 offset:2048
	ds_load_b128 v[157:160], v109 offset:2048
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v147, s35, v169 :: v_dual_mul_f32 v150, s35, v172
	v_dual_mul_f32 v148, s35, v170 :: v_dual_mul_f32 v151, s35, v173
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v147, 0xff800000, v147, s1
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[153:160], v[57:64], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[157:160], v109 offset:4096
	ds_load_b128 v[153:156], v108 offset:4096
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v149, s35, v171
	v_mul_f32_e32 v162, s35, v71
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[153:160], v[57:64], v[73:80]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[153:156], v108 offset:6144
	ds_load_b128 v[157:160], v109 offset:6144
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v161, s35, v70
	v_dual_mul_f32 v163, s35, v72 :: v_dual_mul_f32 v168, s35, v77
	v_dual_mul_f32 v164, s35, v73 :: v_dual_mul_f32 v165, s35, v74
	v_mul_f32_e32 v170, s35, v79
	v_mul_f32_e32 v166, s35, v75
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[81:88], v[153:160], v[57:64], v[81:88]
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v160, s35, v65
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v65, s3, v91, 1
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v159, s35, v176 :: v_dual_mul_f32 v154, s35, v66
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v66, s3, v146, 1
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v155, s35, v67
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v67, s3, v92, 1
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v153, s35, v174 :: v_dual_mul_f32 v156, s35, v68
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v68, s3, v145, 1
	v_cndmask_b32_e64 v65, 0x80000000, v65, s2
	v_cndmask_b32_e64 v66, 0x80000000, v66, s2
	v_cndmask_b32_e64 v67, 0x80000000, v67, s2
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v157, s35, v69
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v70, 0x80000000, v68, s2
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v167, s35, v76 :: v_dual_mul_f32 v172, s35, v81
	v_dual_mul_f32 v169, s35, v78 :: v_dual_mul_f32 v174, s35, v83
	v_dual_mul_f32 v171, s35, v80 :: v_dual_mul_f32 v176, s35, v87
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[74:77], v65, s[40:43], 0 offen
	buffer_load_b128 v[78:81], v66, s[40:43], 0 offen
	buffer_load_b128 v[66:69], v67, s[40:43], 0 offen
	buffer_load_b128 v[70:73], v70, s[40:43], 0 offen
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v173, s35, v82 :: v_dual_mul_f32 v84, s35, v84
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v65, 0, v102
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v158, s35, v175 :: v_dual_mul_f32 v85, s35, v85
	v_mul_f32_e32 v88, s35, v88
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
	v_mov_b16_e32 v66.l, v78.h
	v_mov_b16_e32 v74.l, v76.l
	v_mov_b16_e32 v74.h, v72.l
	ds_store_b64 v65, v[82:83]
	v_mov_b16_e32 v82.h, v71.l
	v_mov_b32_e32 v65, v70
	v_mov_b16_e32 v71.l, v75.h
	v_mov_b16_e32 v83.l, v79.l
	v_mov_b16_e32 v83.h, v67.l
	v_mov_b16_e32 v82.l, v75.l
	ds_store_b64 v138, v[65:66]
	ds_store_b64 v139, v[82:83]
	v_mov_b16_e32 v67.l, v79.h
	v_mov_b32_e32 v66, v71
	v_mov_b16_e32 v75.l, v80.l
	v_mov_b16_e32 v75.h, v68.l
	v_mov_b16_e32 v72.l, v76.h
	ds_store_b64 v140, v[66:67]
	ds_store_b64 v141, v[74:75]
	v_mov_b16_e32 v66.h, v69.l
	v_mov_b16_e32 v69.l, v81.h
	v_mov_b16_e32 v68.l, v80.h
	v_mov_b32_e32 v67, v72
	v_mov_b16_e32 v66.l, v81.l
	v_mov_b16_e32 v65.l, v77.l
	v_mov_b16_e32 v65.h, v73.l
	v_mov_b32_e32 v74, v69
	v_mov_b16_e32 v73.l, v77.h
	ds_store_b64 v142, v[67:68]
	ds_store_b64 v143, v[65:66]
	ds_store_b64 v144, v[73:74]
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v65, 0xff800000, v154, s1
	v_cndmask_b32_e64 v67, 0xff800000, v155, s1
	v_cndmask_b32_e64 v68, 0xff800000, v156, s1
	v_cndmask_b32_e64 v69, 0xff800000, v157, s1
	v_cndmask_b32_e64 v70, 0xff800000, v161, s1
	v_cndmask_b32_e64 v71, 0xff800000, v162, s1
	v_cndmask_b32_e64 v72, 0xff800000, v163, s1
	v_cndmask_b32_e64 v73, 0xff800000, v164, s1
	v_cndmask_b32_e64 v74, 0xff800000, v165, s1
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v66, v65, v67, v68
	v_max3_f32 v75, v69, v70, v71
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v77, 0xff800000, v168, s1
	v_cndmask_b32_e64 v78, 0xff800000, v169, s1
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v76, v72, v73, v74
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v79, 0xff800000, v170, s1
	v_cndmask_b32_e64 v80, 0xff800000, v171, s1
	v_cndmask_b32_e64 v81, 0xff800000, v172, s1
	v_cndmask_b32_e64 v82, 0xff800000, v173, s1
	v_cndmask_b32_e64 v83, 0xff800000, v174, s1
	v_cndmask_b32_e64 v162, 0xff800000, v148, s1
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v175, s35, v86
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v86, v66, v75, v76
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v75, 0xff800000, v166, s1
	v_cndmask_b32_e64 v76, 0xff800000, v167, s1
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v87, v78, v79, v80
	v_max3_f32 v154, v81, v82, v83
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v156, 0xff800000, v150, s1
	v_cndmask_b32_e64 v155, 0xff800000, v153, s1
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v66, v75, v76, v77
.Ltmp10:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v157, 0xff800000, v149, s1
	v_cndmask_b32_e64 v149, 0xff800000, v158, s1
	v_cndmask_b32_e64 v153, 0xff800000, v159, s1
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v161, v66, v87, v154
.Ltmp12:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v154, 0xff800000, v151, s1
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v66, v147, v162
.Ltmp14:
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v87, v156, v154, v155
	v_max3_f32 v87, v66, v157, v87
.Ltmp16:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v66, 0xff800000, v160, s1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v148, v149, v153, v66
	v_max3_f32 v148, v87, v148, v86
.Ltmp18:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v86, 0xff800000, v84, s1
	v_cndmask_b32_e64 v87, 0xff800000, v85, s1
	v_cndmask_b32_e64 v84, 0xff800000, v176, s1
	v_cndmask_b32_e64 v85, 0xff800000, v88, s1
	v_cndmask_b32_e64 v88, 0xff800000, v175, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v150, v86, v87 :: v_dual_max_f32 v151, v84, v85
	v_max3_f32 v150, v150, v88, v151
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v148, v148, v161, v150
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v150, v148, s34, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp21:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v148, v152, v148, v150
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v150, v162, v148
	v_sub_f32_e32 v147, v147, v148
	v_sub_f32_e32 v157, v157, v148
	v_sub_f32_e32 v156, v156, v148
	v_sub_f32_e32 v154, v154, v148
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v150, v150
	v_exp_f32_e32 v147, v147
	v_exp_f32_e32 v157, v157
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v155, v155, v148
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v154, v154
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v153, v153, v148
	v_sub_f32_e32 v73, v73, v148
	v_sub_f32_e32 v75, v75, v148
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v155, v155
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v79, v79, v148
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v150, 0, v150, s1
	v_cndmask_b32_e64 v151, 0, v147, s1
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_mov_b16_e64 v147.h, 0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v77, v77, v148
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v154, 0, v154, s1
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v147.l, v150.h
	v_mov_b16_e64 v158.l, v151.h
	v_mov_b16_e64 v158.h, v147.h
	v_cmp_o_f32_e64 s3, v150, v150
	v_cmp_o_f32_e64 s4, v151, v151
	v_and_b32_e32 v159, 1, v147
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v155, 0, v155, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v158, 1, v158
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v73, v73
	v_exp_f32_e32 v75, v75
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v159, v150, v159, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v77, v77
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v158, v151, v158, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v83, v83, v148
	v_sub_f32_e32 v85, v85, v148
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v160.h, 0x7fff, v159.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v79, v79
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v160.l, 0x7fff, v158.h, s4
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v73, 0, v73, s1
	v_cndmask_b32_e64 v75, 0, v75, s1
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v83, v83
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v77, 0, v77, s1
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_permlanex16_b32 v158, v160, s34, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v85, v85
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v81, v81, v148
	v_sub_f32_e32 v87, v87, v148
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v79, 0, v79, s1
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_perm_b32 v159, v158, v160, v94
	v_perm_b32 v160, v158, v160, v95
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v158, v156
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v156, 0, v157, s1
	v_cndmask_b32_e64 v83, 0, v83, s1
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v81, v81
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v85, 0, v85, s1
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v87, v87
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v156, v156
	v_cmp_o_f32_e64 s5, v77, v77
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v66, v148
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v79, v79
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v157, 0, v158, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v158.h, v147.h
	v_mov_b16_e64 v158.l, v156.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v149, v149, v148
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v147.l, v157.h
	v_cmp_o_f32_e64 s3, v157, v157
	v_and_b32_e32 v158, 1, v158
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v149, v149
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v81, 0, v81, s1
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v161, 1, v147
	v_mov_b16_e64 v147.l, v155.h
	v_add3_u32 v158, v156, v158, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v87, 0, v87, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s12, v81, v81
	v_add3_u32 v161, v157, v161, 0x7fff
	v_and_b32_e32 v163, 1, v147
	v_cndmask_b16 v158.l, 0x7fff, v158.h, s4
	v_cmp_o_f32_e64 s4, v154, v154
	v_cmp_o_f32_e64 s14, v83, v83
	v_cndmask_b16 v158.h, 0x7fff, v161.h, s3
	v_cmp_o_f32_e64 s3, v155, v155
	v_add3_u32 v163, v155, v163, 0x7fff
	v_cmp_o_f32_e64 s16, v87, v87
	v_cmp_o_f32_e64 s17, v85, v85
	v_permlanex16_b32 v162, v158, s34, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v68, v68, v148
	v_sub_f32_e32 v70, v70, v148
	v_sub_f32_e32 v72, v72, v148
	v_sub_f32_e32 v65, v65, v148
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v161, v162, v158, v94
	v_perm_b32 v162, v162, v158, v95
	v_mov_b16_e64 v158.h, v147.h
	v_mov_b16_e64 v158.l, v154.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v74, v74, v148
	v_sub_f32_e32 v76, v76, v148
	v_sub_f32_e32 v78, v78, v148
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_sub_f32 v67, v67, v148 :: v_dual_and_b32 v158, 1, v158
	v_sub_f32_e32 v80, v80, v148
	v_sub_f32_e32 v82, v82, v148
	v_sub_f32_e32 v86, v86, v148
	v_sub_f32_e32 v88, v88, v148
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v158, v154, v158, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v69, v148
	v_sub_f32_e32 v71, v71, v148
	v_sub_f32_e32 v84, v84, v148
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v74, v74
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v158.l, 0x7fff, v158.h, s4
	v_cndmask_b16 v158.h, 0x7fff, v163.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v76, v76
	v_exp_f32_e32 v78, v78
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v67, v67
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v164, v158, s34, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v86, v86
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v163, v164, v158, v94
	v_perm_b32 v164, v164, v158, v95
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v158, v153
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v153, 0, v149, s1
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v149.h, v147.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v74, 0, v74, s1
	v_cndmask_b32_e64 v76, 0, v76, s1
	v_cndmask_b32_e64 v78, 0, v78, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v149.l, v153.h
	v_cmp_o_f32_e64 s4, v153, v153
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v86, 0, v86, s1
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v158, 0, v158, s1
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v149, 1, v149
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	v_exp_f32_e32 v80, v80
	v_exp_f32_e32 v84, v84
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v147.l, v158.h
	v_cmp_o_f32_e64 s3, v158, v158
	v_add3_u32 v149, v153, v149, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v82, v82
	v_exp_f32_e32 v88, v88
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v165, 1, v147
	v_cmp_o_f32_e64 s7, v74, v74
	v_cndmask_b16 v149.l, 0x7fff, v149.h, s4
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v80, 0, v80, s1
	v_cndmask_b32_e64 v84, 0, v84, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v165, v158, v165, 0x7fff
	v_cmp_o_f32_e64 s8, v76, v76
	v_cmp_o_f32_e64 s9, v78, v78
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v82, 0, v82, s1
	v_cndmask_b32_e64 v88, 0, v88, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v149.h, 0x7fff, v165.h, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v152
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v80, v80
	v_cmp_o_f32_e64 s11, v82, v82
	v_cmp_o_f32_e64 s18, v84, v84
	v_permlanex16_b32 v166, v149, s34, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s13, v86, v86
	v_cmp_o_f32_e64 s15, v88, v88
	s_delay_alu instid0(VALU_DEP_3)
	v_perm_b32 v165, v166, v149, v94
	v_perm_b32 v166, v166, v149, v95
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v149, v152, v148
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v152, 0, v100
	ds_load_b128 v[167:170], v152
	ds_load_b128 v[171:174], v110
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v149, v149
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e64 v149, 0, v149, s3
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v149
	v_mul_f32_e32 v26, v26, v149
	v_mul_f32_e32 v27, v27, v149
	v_mul_f32_e32 v28, v28, v149
	v_mul_f32_e32 v29, v29, v149
	v_mul_f32_e32 v30, v30, v149
	v_mul_f32_e32 v31, v31, v149
	v_mul_f32_e32 v32, v32, v149
	v_mul_f32_e32 v17, v17, v149
	v_mul_f32_e32 v18, v18, v149
	v_mul_f32_e32 v19, v19, v149
	v_mul_f32_e32 v20, v20, v149
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[167:174], v[159:166], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[167:170], v117
	ds_load_b128 v[171:174], v118
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v21, v21, v149
	v_mul_f32_e32 v22, v22, v149
	v_mul_f32_e32 v23, v23, v149
	v_mul_f32_e32 v24, v24, v149
	v_mul_f32_e32 v9, v9, v149
	v_mul_f32_e32 v10, v10, v149
	v_mul_f32_e32 v11, v11, v149
	v_mul_f32_e32 v12, v12, v149
	v_mul_f32_e32 v13, v13, v149
	v_mul_f32_e32 v14, v14, v149
	v_mul_f32_e32 v15, v15, v149
	v_mul_f32_e32 v16, v16, v149
	v_mul_f32_e32 v1, v1, v149
	v_mul_f32_e32 v2, v2, v149
	v_mul_f32_e32 v3, v3, v149
	v_mul_f32_e32 v4, v4, v149
	v_mul_f32_e32 v5, v5, v149
	v_mul_f32_e32 v6, v6, v149
	v_mul_f32_e32 v7, v7, v149
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[167:174], v[159:166], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[167:170], v124
	ds_load_b128 v[171:174], v125
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v8, v8, v149
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[167:174], v[159:166], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[167:170], v131
	ds_load_b128 v[171:174], v132
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[167:174], v[159:166], v[1:8]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v159, 0, v66, s1
	v_cndmask_b32_e64 v160, 0, v65, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v65.h, v147.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v163, 0, v67, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v67.h, v147.h
	v_mov_b16_e64 v65.l, v159.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v165, 0, v69, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v159, v159
	v_mov_b16_e64 v67.l, v163.h
	v_mov_b16_e64 v147.l, v160.h
	v_and_b32_e32 v65, 1, v65
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v164, 0, v68, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v69.h, v147.h
	v_and_b32_e32 v67, 1, v67
	v_mov_b16_e64 v69.l, v165.h
	v_add3_u32 v65, v159, v65, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v166, 0, v70, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v160, v160
	v_add3_u32 v67, v163, v67, 0x7fff
	v_and_b32_e32 v69, 1, v69
	v_cndmask_b16 v66.l, 0x7fff, v65.h, s4
	v_and_b32_e32 v65, 1, v147
	v_cmp_o_f32_e64 s4, v163, v163
	v_mov_b16_e64 v147.l, v164.h
	v_add3_u32 v69, v165, v69, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v162, 0, v72, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v65, v160, v65, 0x7fff
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s4
	v_and_b32_e32 v67, 1, v147
	v_cmp_o_f32_e64 s4, v165, v165
	v_mov_b16_e64 v147.l, v166.h
	v_cndmask_b16 v66.h, 0x7fff, v65.h, s3
	v_cmp_o_f32_e64 s3, v164, v164
	v_add3_u32 v67, v164, v67, 0x7fff
	v_cndmask_b16 v70.l, 0x7fff, v69.h, s4
	v_and_b32_e32 v69, 1, v147
	v_permlanex16_b32 v161, v66, s34, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v147.l, v162.h
	v_cndmask_b16 v68.h, 0x7fff, v67.h, s3
	v_cmp_o_f32_e64 s3, v166, v166
	v_add3_u32 v69, v166, v69, 0x7fff
	v_perm_b32 v65, v161, v66, v94
	v_perm_b32 v66, v161, v66, v95
	v_permlanex16_b32 v161, v68, s34, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v70.h, 0x7fff, v69.h, s3
	v_cmp_o_f32_e64 s3, v162, v162
	v_perm_b32 v67, v161, v68, v94
	v_perm_b32 v68, v161, v68, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v161, v70, s34, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v69, v161, v70, v94
	v_perm_b32 v70, v161, v70, v95
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v161, 0, v71, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v71.h, v147.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e64 v71.l, v161.h
	v_cmp_o_f32_e64 s4, v161, v161
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v71, 1, v71
	v_add3_u32 v71, v161, v71, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b16 v72.l, 0x7fff, v71.h, s4
	v_and_b32_e32 v71, 1, v147
	v_mov_b16_e64 v147.l, v74.h
	v_cmp_o_f32_e64 s4, v75, v75
	v_add3_u32 v71, v162, v71, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v72.h, 0x7fff, v71.h, s3
	v_cmp_o_f32_e64 s3, v73, v73
	v_permlanex16_b32 v167, v72, s34, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v71, v167, v72, v94
	v_perm_b32 v72, v167, v72, v95
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[167:170], v111
	ds_load_b128 v[171:174], v112
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[167:174], v[65:72], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[167:170], v152 offset:2048
	ds_load_b128 v[171:174], v119
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[167:174], v[65:72], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[167:170], v126
	ds_load_b128 v[171:174], v127
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[167:174], v[65:72], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[167:170], v133
	ds_load_b128 v[171:174], v134
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[167:174], v[65:72], v[1:8]
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v67, v154, v155 :: v_dual_add_f32 v68, v153, v158
.Ltmp23:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v70.h, v147.h
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v71, v163, v164
.Ltmp25:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v70.l, v73.h
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v69, v159, v160 :: v_dual_add_f32 v66, v156, v157
	v_dual_add_f32 v67, v67, v68 :: v_dual_add_f32 v68, v77, v78
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_add_f32 v69, v69, v71 :: v_dual_and_b32 v70, 1, v70
	v_add_f32_e32 v71, v79, v80
	v_add_f32_e32 v65, v151, v150
.Ltmp27:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v72.h, v147.h
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v150, v165, v166
	v_add_f32_e32 v154, v73, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v68, v68, v71 :: v_dual_add_f32 v65, v65, v66
	v_add_f32_e32 v66, v75, v76
.Ltmp29:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v72.l, v75.h
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v153, v161, v162
.Ltmp31:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v151.h, v147.h
	v_mov_b16_e64 v151.l, v77.h
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v154, v66
	v_add_f32_e32 v154, v83, v86
.Ltmp33:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v72, 1, v72
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v150, v150, v153 :: v_dual_add_f32 v153, v81, v82
	v_add_f32_e32 v71, v87, v88
.Ltmp35:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v151, 1, v151
	v_add3_u32 v70, v73, v70, 0x7fff
	v_mov_b16_e64 v73.h, v147.h
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v153, v153, v154 :: v_dual_add_f32 v154, v84, v85
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp37:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v77, v77, v151, 0x7fff
	v_mov_b16_e64 v151.h, v147.h
	v_mov_b16_e32 v73.l, v81.h
	v_mov_b16_e64 v151.l, v87.h
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v71, v71, v154 :: v_dual_add_f32 v66, v66, v68
	v_add_f32_e32 v65, v65, v67
	v_add_f32_e32 v67, v69, v150
.Ltmp39:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v73, 1, v73
	v_and_b32_e32 v151, 1, v151
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v68, v153, v71
.Ltmp41:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v154.h, v147.h
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v150, v65, v67
.Ltmp43:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v65, 1, v147
	v_mov_b16_e64 v147.l, v76.h
	v_add3_u32 v73, v81, v73, 0x7fff
	v_add3_u32 v81, v87, v151, 0x7fff
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v151, v66, v68
.Ltmp45:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v65, v74, v65, 0x7fff
	v_and_b32_e32 v66, 1, v147
	v_mov_b16_e64 v147.l, v78.h
	v_mov_b16_e64 v154.l, v79.h
	v_cndmask_b16 v69.l, 0x7fff, v70.h, s3
	v_cndmask_b16 v69.h, 0x7fff, v65.h, s7
	v_add3_u32 v65, v76, v66, 0x7fff
	v_and_b32_e32 v66, 1, v147
	v_mov_b16_e64 v147.l, v80.h
	v_and_b32_e32 v154, 1, v154
	v_add3_u32 v72, v75, v72, 0x7fff
	v_cndmask_b16 v70.h, 0x7fff, v65.h, s8
	v_add3_u32 v65, v78, v66, 0x7fff
	v_and_b32_e32 v66, 1, v147
	v_mov_b16_e64 v147.l, v82.h
	v_mov_b16_e64 v75.h, v147.h
	v_mov_b16_e32 v75.l, v83.h
	v_cndmask_b16 v71.h, 0x7fff, v65.h, s9
	v_add3_u32 v65, v80, v66, 0x7fff
	v_and_b32_e32 v66, 1, v147
	v_mov_b16_e64 v147.l, v86.h
	v_add3_u32 v79, v79, v154, 0x7fff
	v_mov_b16_e64 v154.h, v147.h
	v_mov_b16_e64 v154.l, v84.h
	v_and_b32_e32 v75, 1, v75
	v_cndmask_b16 v70.l, 0x7fff, v72.h, s4
	v_permlanex16_b32 v67, v69, s34, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v72.h, 0x7fff, v65.h, s10
	v_and_b32_e32 v65, 1, v147
	v_mov_b16_e64 v147.l, v88.h
	v_and_b32_e32 v154, 1, v154
	v_add3_u32 v75, v83, v75, 0x7fff
	v_cndmask_b16 v72.l, 0x7fff, v79.h, s6
	v_cndmask_b16 v81.l, 0x7fff, v73.h, s12
	v_perm_b32 v73, v67, v69, v94
	v_permlanex16_b32 v68, v70, s34, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v74, v67, v69, v95
	v_add3_u32 v66, v82, v66, 0x7fff
	v_and_b32_e32 v69, 1, v147
	v_mov_b16_e64 v147.l, v85.h
	v_add3_u32 v83, v84, v154, 0x7fff
	v_cndmask_b16 v83.l, 0x7fff, v75.h, s14
	v_cndmask_b16 v84.l, 0x7fff, v81.h, s16
	v_perm_b32 v75, v68, v70, v94
	v_perm_b32 v76, v68, v70, v95
	v_permlanex16_b32 v68, v72, s34, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v81.h, 0x7fff, v66.h, s11
	v_and_b32_e32 v66, 1, v147
	v_cndmask_b16 v71.l, 0x7fff, v77.h, s5
	v_add3_u32 v65, v86, v65, 0x7fff
	v_perm_b32 v79, v68, v72, v94
	v_add3_u32 v69, v88, v69, 0x7fff
	v_perm_b32 v80, v68, v72, v95
	v_add3_u32 v68, v85, v66, 0x7fff
	v_cndmask_b16 v87.l, 0x7fff, v83.h, s18
	v_permlanex16_b32 v67, v71, s34, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v83.h, 0x7fff, v65.h, s13
	v_cndmask_b16 v84.h, 0x7fff, v69.h, s15
	v_cndmask_b16 v87.h, 0x7fff, v68.h, s17
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v150, v150, v151
.Ltmp47:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v77, v67, v71, v94
	v_perm_b32 v78, v67, v71, v95
	v_permlanex16_b32 v67, v81, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v70, v83, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v71, v84, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v72, v87, s34, 0xfedcba98 op_sel:[1,0]
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v151, v150, s34, 0xfedcba98 op_sel:[1,0]
.Ltmp49:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v65, v67, v81, v94
	v_perm_b32 v66, v67, v81, v95
	v_perm_b32 v67, v70, v83, v94
	v_perm_b32 v68, v70, v83, v95
	v_perm_b32 v69, v71, v84, v94
	v_perm_b32 v70, v71, v84, v95
	v_perm_b32 v71, v72, v87, v94
	v_perm_b32 v72, v72, v87, v95
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[81:84], v113
	ds_load_b128 v[85:88], v114
	v_mov_b32_e32 v153, v93
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v93, v150, v151
.Ltmp51:
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s3, s44, 64
	s_cmpk_lt_u32 s44, 0x1c0
	s_mov_b32 s44, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v93, v153, v149
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[81:88], v[73:80], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[81:84], v120
	ds_load_b128 v[85:88], v121
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[81:88], v[73:80], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[85:88], v128
	ds_load_b128 v[81:84], v152 offset:4096
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[81:88], v[73:80], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[81:84], v135
	ds_load_b128 v[85:88], v136
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[81:88], v[73:80], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[73:76], v115
	ds_load_b128 v[77:80], v116
	ds_load_b128 v[81:84], v122
	ds_load_b128 v[85:88], v123
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[73:80], v[65:72], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[73:76], v152 offset:6144
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[81:88], v[65:72], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[81:84], v129
	ds_load_b128 v[85:88], v130
	ds_load_b128 v[77:80], v137
	v_mov_b32_e32 v152, v148
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[81:88], v[65:72], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[73:80], v[65:72], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v36, null, v93, v93, v25
	v_div_scale_f32 v37, null, v93, v93, v26
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v0, 1, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v38, v36
	v_div_scale_f32 v40, vcc_lo, v25, v93, v25
	v_rcp_f32_e32 v39, v37
	v_div_scale_f32 v41, s2, v26, v93, v26
	v_div_scale_f32 v45, null, v93, v93, v28
	v_div_scale_f32 v42, null, v93, v93, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v36, v38, 1.0
	v_rcp_f32_e32 v49, v45
	v_div_scale_f32 v46, null, v93, v93, v29
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v37, v39, 1.0
	v_fmac_f32_e32 v38, v33, v38
	v_rcp_f32_e32 v44, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v50, v46
	v_div_scale_f32 v43, s3, v27, v93, v27
	v_dual_fmac_f32 v39, v34, v39 :: v_dual_and_b32 v34, 8, v0
	v_mul_f32_e32 v47, v40, v38
	v_fma_f32 v52, -v45, v49, 1.0
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s30, 0x7ffffffe
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v0, -v42, v44, 1.0
	v_fma_f32 v35, -v36, v47, v40
	v_mul_f32_e32 v48, v41, v39
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v33, 32, v34
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v49, v52, v49
	v_div_scale_f32 v52, null, v93, v93, v31
	v_fmac_f32_e32 v47, v35, v38
	v_fma_f32 v51, -v37, v48, v41
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v35, 16, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v36, v47, v40
	v_fmac_f32_e32 v48, v51, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v36, v38, v47
	v_fma_f32 v37, -v37, v48, v41
	v_div_scale_f32 v47, null, v93, v93, v30
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v41, -v46, v50, 1.0
	v_div_fmas_f32 v37, v37, v39, v48
	v_rcp_f32_e32 v39, v47
	v_div_scale_f32 v38, s4, v28, v93, v28
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v26, v37, v93, v26
	v_div_fixup_f32 v36, v36, v93, v25
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s2, 0, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v48, -v47, v39, 1.0
	v_fmac_f32_e32 v50, v41, v50
	v_div_scale_f32 v41, s5, v29, v93, v29
	v_fmac_f32_e32 v39, v48, v39
	v_fmac_f32_e32 v44, v0, v44
	v_div_scale_f32 v48, s3, v30, v93, v30
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v0, 48, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v51, v43, v44
	v_fma_f32 v40, -v42, v51, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v51, v40, v44 :: v_dual_mul_f32 v40, v38, v49
	v_fma_f32 v37, -v42, v51, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v45, v40, v38
	v_dual_mul_f32 v43, v41, v50 :: v_dual_fmac_f32 v40, v42, v49
	v_rcp_f32_e32 v42, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v37, v37, v44, v51
	v_fma_f32 v44, -v46, v43, v41
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v25, v37, v93, v27
	v_fma_f32 v27, -v45, v40, v38
	v_fmac_f32_e32 v43, v44, v50
	v_div_scale_f32 v45, s4, v31, v93, v31
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v38, -v52, v42, 1.0
	v_mul_f32_e32 v37, v48, v39
	v_div_fmas_f32 v27, v27, v49, v40
	v_fma_f32 v40, -v46, v43, v41
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v42, v38, v42
	v_div_scale_f32 v44, null, v93, v93, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v40, v40, v50, v43
	v_fma_f32 v41, -v47, v37, v48
	v_mul_f32_e32 v43, v45, v42
	v_div_scale_f32 v46, null, v93, v93, v17
	v_div_fixup_f32 v28, v27, v93, v28
	v_div_fixup_f32 v27, v40, v93, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v40, -v52, v43, v45
	v_rcp_f32_e32 v38, v44
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s2
	v_cndmask_b32_e64 v25, 0, v25, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v40, v42
	v_div_scale_f32 v40, s3, v17, v93, v17
	v_fmac_f32_e32 v37, v41, v39
	v_rcp_f32_e32 v41, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v44, v38, 1.0
	v_fma_f32 v29, -v47, v37, v48
	v_div_scale_f32 v47, s5, v32, v93, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v27, v27
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v48, -v46, v41, 1.0
	v_fmac_f32_e32 v38, v49, v38
	v_div_scale_f32 v49, null, v93, v93, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, null, v93, v93, v19
	v_mul_f32_e32 v50, v40, v41
	v_div_fmas_f32 v29, v29, v39, v37
	v_rcp_f32_e32 v39, v49
	v_mul_f32_e32 v37, v47, v38
	v_rcp_f32_e32 v51, v48
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v30, v29, v93, v30
	v_fma_f32 v29, -v52, v43, v45
	v_fma_f32 v45, -v44, v37, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v52, -v49, v39, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v29, v29, v42, v43
	v_fma_f32 v42, -v46, v50, v40
	v_div_scale_f32 v43, s4, v18, v93, v18
	v_fmac_f32_e32 v39, v52, v39
	v_fmac_f32_e32 v37, v45, v38
	v_fma_f32 v45, -v48, v51, 1.0
	v_div_fixup_f32 v29, v29, v93, v31
	v_fmac_f32_e32 v50, v42, v41
	v_mul_f32_e32 v42, v43, v39
	v_fma_f32 v31, -v44, v37, v47
	v_fmac_f32_e32 v51, v45, v51
	v_div_scale_f32 v45, null, v93, v93, v20
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v44, s6, v19, v93, v19
	v_div_fmas_f32 v31, v31, v38, v37
	v_fma_f32 v37, -v46, v50, v40
	v_rcp_f32_e32 v40, v45
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v38, -v49, v42, v43
	v_div_scale_f32 v47, null, v93, v93, v21
	v_div_fmas_f32 v37, v37, v41, v50
	v_mul_f32_e32 v46, v44, v51
	v_div_fixup_f32 v31, v31, v93, v32
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v45, v40, 1.0
	v_fma_f32 v41, -v48, v46, v44
	v_div_fixup_f32 v17, v37, v93, v17
	v_div_scale_f32 v37, s3, v20, v93, v20
	v_fmac_f32_e32 v40, v50, v40
	v_fmac_f32_e32 v42, v38, v39
	v_rcp_f32_e32 v38, v47
	v_fmac_f32_e32 v46, v41, v51
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v32, -v49, v42, v43
	v_div_scale_f32 v43, null, v93, v93, v22
	v_div_fmas_f32 v32, v32, v39, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v47, v38, 1.0
	v_fma_f32 v39, -v48, v46, v44
	v_div_scale_f32 v44, s4, v21, v93, v21
	v_div_scale_f32 v48, null, v93, v93, v23
	v_fmac_f32_e32 v38, v41, v38
	v_rcp_f32_e32 v41, v43
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v32, v32, v93, v18
	v_div_fmas_f32 v39, v39, v51, v46
	v_rcp_f32_e32 v51, v48
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v18, v39, v93, v19
	v_div_scale_f32 v39, s5, v22, v93, v22
	v_fma_f32 v50, -v43, v41, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v41, v50, v41 :: v_dual_mul_f32 v42, v37, v40
	v_mul_f32_e32 v49, v44, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v48, v51, 1.0
	v_fma_f32 v46, -v45, v42, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v19, -v47, v49, v44
	v_fmac_f32_e32 v51, v50, v51
	v_div_scale_f32 v50, s6, v23, v93, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v46, v40
	v_div_scale_f32 v46, null, v93, v93, v24
	v_fmac_f32_e32 v49, v19, v38
	v_fma_f32 v37, -v45, v42, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v52, v46
	v_div_fmas_f32 v19, v37, v40, v42
	v_mul_f32_e32 v42, v50, v51
	v_fma_f32 v37, -v47, v49, v44
	v_div_scale_f32 v47, null, v93, v93, v9
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v44, -v46, v52, 1.0
	v_mul_f32_e32 v45, v39, v41
	v_div_fmas_f32 v38, v37, v38, v49
	v_fma_f32 v49, -v48, v42, v50
	v_div_fixup_f32 v37, v19, v93, v20
	v_fmac_f32_e32 v52, v44, v52
	v_fma_f32 v40, -v43, v45, v39
	v_div_fixup_f32 v19, v38, v93, v21
	v_fmac_f32_e32 v42, v49, v51
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v44, s3, v24, v93, v24
	v_fmac_f32_e32 v45, v40, v41
	v_rcp_f32_e32 v40, v47
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v43, v45, v39
	v_div_scale_f32 v39, null, v93, v93, v10
	v_div_fmas_f32 v20, v20, v41, v45
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v38, -v47, v40, 1.0
	v_fma_f32 v41, -v48, v42, v50
	v_div_scale_f32 v48, null, v93, v93, v11
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v40, v38, v40
	v_rcp_f32_e32 v38, v39
	v_div_scale_f32 v45, s4, v9, v93, v9
	v_div_fixup_f32 v22, v20, v93, v22
	v_div_scale_f32 v50, null, v93, v93, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v39, v38, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v38, v49, v38
	v_div_fmas_f32 v41, v41, v51, v42
	v_rcp_f32_e32 v42, v48
	v_mul_f32_e32 v21, v44, v52
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v49, null, v93, v93, v12
	v_div_fixup_f32 v20, v41, v93, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v43, -v46, v21, v44
	v_rcp_f32_e32 v51, v50
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v21, v43, v52
	v_fma_f32 v23, -v46, v21, v44
	v_div_scale_f32 v44, s5, v10, v93, v10
	v_fma_f32 v46, -v48, v42, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v21, v23, v52, v21
	v_mul_f32_e32 v23, v44, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v43, v45, v40 :: v_dual_fmac_f32 v42, v46, v42
	v_div_scale_f32 v46, s3, v11, v93, v11
	v_div_fixup_f32 v21, v21, v93, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v41, -v47, v43, v45
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v41, v40
	v_rcp_f32_e32 v41, v49
	v_fma_f32 v24, -v47, v43, v45
	v_fma_f32 v45, -v39, v23, v44
	v_mul_f32_e32 v47, v46, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v24, v24, v40, v43
	v_fma_f32 v52, -v49, v41, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v23, v45, v38
	v_fma_f32 v40, -v48, v47, v46
	v_div_scale_f32 v43, s4, v12, v93, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v41, v52, v41
	v_fma_f32 v45, -v50, v51, 1.0
	v_div_fixup_f32 v9, v24, v93, v9
	v_fma_f32 v24, -v39, v23, v44
	v_fmac_f32_e32 v47, v40, v42
	v_mul_f32_e32 v39, v43, v41
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v51, v45, v51
	v_div_scale_f32 v40, s6, v13, v93, v13
	v_div_scale_f32 v44, null, v93, v93, v14
	v_div_fmas_f32 v23, v24, v38, v23
	v_fma_f32 v24, -v48, v47, v46
	v_fma_f32 v38, -v49, v39, v43
	v_div_scale_f32 v48, null, v93, v93, v15
	v_rcp_f32_e32 v45, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v46, v40, v51 :: v_dual_fmac_f32 v39, v38, v41
	v_rcp_f32_e32 v38, v48
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v10, v23, v93, v10
	v_div_fmas_f32 v24, v24, v42, v47
	v_fma_f32 v42, -v50, v46, v40
	v_fma_f32 v23, -v49, v39, v43
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v47, -v44, v45, 1.0
	v_div_fixup_f32 v11, v24, v93, v11
	v_fmac_f32_e32 v46, v42, v51
	v_fma_f32 v42, -v48, v38, 1.0
	v_div_scale_f32 v24, s3, v14, v93, v14
	v_fmac_f32_e32 v45, v47, v45
	v_div_scale_f32 v49, null, v93, v93, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v38, v42, v38
	v_div_fmas_f32 v23, v23, v41, v39
	v_fma_f32 v39, -v50, v46, v40
	s_mov_b32 vcc_lo, s6
	v_mul_f32_e32 v40, v24, v45
	v_div_scale_f32 v41, null, v93, v93, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v51, v46
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v46, -v44, v40, v24
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v43, v41
	v_div_scale_f32 v42, s4, v15, v93, v15
	v_div_fixup_f32 v13, v39, v93, v13
	v_rcp_f32_e32 v39, v49
	v_fmac_f32_e32 v40, v46, v45
	v_div_fixup_f32 v12, v23, v93, v12
	v_div_scale_f32 v51, null, v93, v93, v3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v24, -v44, v40, v24
	v_fma_f32 v46, -v41, v43, 1.0
	v_div_scale_f32 v44, null, v93, v93, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v50, -v49, v39, 1.0
	v_div_fmas_f32 v24, v24, v45, v40
	v_div_scale_f32 v45, s3, v1, v93, v1
	v_fmac_f32_e32 v43, v46, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v39, v50, v39
	v_rcp_f32_e32 v46, v44
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v53, v51
	v_div_fixup_f32 v14, v24, v93, v14
	v_dual_mul_f32 v52, v45, v39 :: v_dual_mul_f32 v47, v42, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s2
	v_cndmask_b32_e64 v12, 0, v12, s2
	v_cndmask_b32_e64 v11, 0, v11, s2
	v_cndmask_b32_e64 v14, 0, v14, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v23, -v48, v47, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v47, v23, v38
	v_div_scale_f32 v23, s5, v16, v93, v16
	v_fma_f32 v40, -v48, v47, v42
	v_fma_f32 v48, -v44, v46, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v42, v23, v43
	v_div_fmas_f32 v38, v40, v38, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v48, s6, v2, v93, v2
	v_fma_f32 v50, -v41, v42, v23
	v_fma_f32 v40, -v49, v52, v45
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v47, v48, v46
	v_div_fixup_f32 v15, v38, v93, v15
	v_fmac_f32_e32 v42, v50, v43
	v_fmac_f32_e32 v52, v40, v39
	v_fma_f32 v38, -v51, v53, 1.0
	v_fma_f32 v24, -v44, v47, v48
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v23, -v41, v42, v23
	v_fma_f32 v40, -v49, v52, v45
	v_fmac_f32_e32 v53, v38, v53
	v_fmac_f32_e32 v47, v24, v46
	v_div_scale_f32 v24, s4, v3, v93, v3
	v_div_fmas_f32 v23, v23, v43, v42
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v42, -v44, v47, v48
	v_div_fmas_f32 v39, v40, v39, v52
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v38, null, v93, v93, v4
	v_div_fmas_f32 v42, v42, v46, v47
	v_mul_f32_e32 v40, v24, v53
	v_div_scale_f32 v43, null, v93, v93, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v41, v38
	v_div_fixup_f32 v2, v42, v93, v2
	v_div_scale_f32 v42, null, v93, v93, v6
	v_fma_f32 v44, -v51, v40, v24
	v_rcp_f32_e32 v45, v43
	v_div_fixup_f32 v16, v23, v93, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v46, v42
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v40, v44, v53
	v_fma_f32 v44, -v38, v41, 1.0
	v_div_fixup_f32 v1, v39, v93, v1
	v_div_scale_f32 v47, s4, v5, v93, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v23, -v51, v40, v24
	v_div_scale_f32 v24, s3, v4, v93, v4
	v_fma_f32 v50, -v42, v46, 1.0
	v_fmac_f32_e32 v41, v44, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v23, v23, v53, v40
	v_fma_f32 v39, -v43, v45, 1.0
	v_div_scale_f32 v44, null, v93, v93, v7
	v_fmac_f32_e32 v46, v50, v46
	v_mul_f32_e32 v40, v24, v41
	v_div_scale_f32 v50, s5, v6, v93, v6
	v_fmac_f32_e32 v45, v39, v45
	v_rcp_f32_e32 v39, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v38, v40, v24
	v_div_scale_f32 v48, null, v93, v93, v8
	v_div_fixup_f32 v3, v23, v93, v3
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v40, v49, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v51, v48
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s2
	v_cndmask_b32_e64 v1, 0, v1, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v44, v39, 1.0
	v_fma_f32 v24, -v38, v40, v24
	v_dual_mul_f32 v38, v50, v46 :: v_dual_mul_f32 v23, v47, v45
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v49, v39
	v_div_scale_f32 v49, s6, v7, v93, v7
	v_fma_f32 v52, -v43, v23, v47
	v_fma_f32 v53, -v48, v51, 1.0
	v_div_fmas_f32 v24, v24, v41, v40
	v_fma_f32 v41, -v42, v38, v50
	s_mov_b32 vcc_lo, s4
	v_dual_fmac_f32 v23, v52, v45 :: v_dual_mul_f32 v52, v49, v39
	v_fmac_f32_e32 v51, v53, v51
	v_div_scale_f32 v53, s7, v8, v93, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v43, v23, v47
	v_fma_f32 v43, -v44, v52, v49
	v_fmac_f32_e32 v38, v41, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v47, v53, v51
	v_div_fixup_f32 v4, v24, v93, v4
	v_div_fmas_f32 v23, v40, v45, v23
	v_fmac_f32_e32 v52, v43, v39
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v40, -v48, v47, v53
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s31, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v5, v23, v93, v5
	v_fma_f32 v23, -v42, v38, v50
	v_fma_f32 v24, -v44, v52, v49
	v_fmac_f32_e32 v47, v40, v51
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s2
	v_cndmask_b32_e64 v5, 0, v5, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v23, v23, v46, v38
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v38, -v48, v47, v53
	v_div_fmas_f32 v24, v24, v39, v52
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v28, v28
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v23, v93, v6
	v_div_fmas_f32 v38, v38, v51, v47
	v_div_fixup_f32 v7, v24, v93, v7
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v26, s2
	v_cndmask_b32_e64 v26, 0, v36, s2
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e64 v36.h, v147.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v38, v93, v8
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s31, v35
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e64 v147.l, v24.h
	v_mov_b16_e32 v36.l, v26.h
	v_cmp_o_f32_e64 s6, v24, v24
	.loc	1 1046 24                       ; attention.py:1046:24
	v_or_b32_e32 v23, s19, v96
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s1, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v38, 1, v147
	v_and_b32_e32 v36, 1, v36
	v_mov_b16_e64 v147.l, v28.h
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v23, s31, v23
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v38, v24, v38, 0x7fff
	v_add3_u32 v24, v26, v36, 0x7fff
	v_mov_b16_e32 v36.l, v25.h
	v_mov_b16_e64 v36.h, v147.h
	v_and_b32_e32 v39, 1, v147
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s6
	v_cmp_o_f32_e64 s6, v26, v26
	v_mov_b16_e64 v147.l, v30.h
	v_and_b32_e32 v26, 1, v36
	v_add3_u32 v36, v28, v39, 0x7fff
	v_mov_b16_e32 v39.l, v27.h
	v_mov_b16_e64 v39.h, v147.h
	v_cndmask_b16 v38.l, 0x7fff, v24.h, s6
	v_add3_u32 v24, v25, v26, 0x7fff
	v_cndmask_b16 v28.h, 0x7fff, v36.h, s7
	v_and_b32_e32 v36, 1, v147
	v_and_b32_e32 v26, 1, v39
	v_cmp_o_f32_e64 s6, v25, v25
	v_cmp_o_f32_e64 s7, v30, v30
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v0, v23, v0, 1
	.loc	1 1044 19 is_stmt 1             ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v25, v27, v26, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v31, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v31, v30, v36, 0x7fff
	v_mov_b16_e32 v36.l, v29.h
	v_mov_b16_e64 v36.h, v147.h
	v_cndmask_b16 v28.l, 0x7fff, v24.h, s6
	v_mov_b16_e64 v147.l, v26.h
	v_cndmask_b16 v27.h, 0x7fff, v31.h, s7
	v_cndmask_b16 v27.l, 0x7fff, v25.h, s8
	v_and_b32_e32 v24, 1, v36
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v32, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v30, 1, v147
	v_cmp_o_f32_e64 s7, v29, v29
	v_cmp_o_f32_e64 s6, v26, v26
	v_add3_u32 v24, v29, v24, 0x7fff
	v_mov_b16_e64 v147.l, v25.h
	v_add3_u32 v30, v26, v30, 0x7fff
	v_mov_b16_e32 v26.l, v17.h
	v_mov_b16_e64 v26.h, v147.h
	v_cndmask_b16 v29.l, 0x7fff, v24.h, s7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v37, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v29.h, 0x7fff, v30.h, s6
	v_and_b32_e32 v30, 1, v147
	v_and_b32_e32 v26, 1, v26
	v_cmp_o_f32_e64 s6, v25, v25
	v_mov_b16_e64 v147.l, v24.h
	v_cmp_o_f32_e64 s7, v24, v24
	v_add3_u32 v30, v25, v30, 0x7fff
	v_add3_u32 v25, v17, v26, 0x7fff
	v_mov_b16_e32 v26.l, v18.h
	v_mov_b16_e64 v26.h, v147.h
	v_and_b32_e32 v31, 1, v147
	v_cndmask_b16 v30.h, 0x7fff, v30.h, s6
	v_cmp_o_f32_e64 s6, v17, v17
	v_mov_b16_e64 v147.l, v22.h
	v_and_b32_e32 v17, 1, v26
	v_add3_u32 v26, v24, v31, 0x7fff
	v_mov_b16_e32 v31.l, v19.h
	v_mov_b16_e64 v31.h, v147.h
	v_cndmask_b16 v30.l, 0x7fff, v25.h, s6
	v_add3_u32 v17, v18, v17, 0x7fff
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s7
	v_and_b32_e32 v26, 1, v147
	v_and_b32_e32 v24, 1, v31
	v_cmp_o_f32_e64 s6, v18, v18
	v_mov_b16_e64 v147.l, v21.h
	v_cmp_o_f32_e64 s7, v22, v22
	v_cmp_o_f32_e64 s8, v19, v19
	v_add3_u32 v18, v19, v24, 0x7fff
	v_add3_u32 v24, v22, v26, 0x7fff
	v_mov_b16_e32 v26.l, v20.h
	v_mov_b16_e64 v26.h, v147.h
	v_cndmask_b16 v25.l, 0x7fff, v17.h, s6
	v_and_b32_e32 v22, 1, v147
	v_cndmask_b16 v19.h, 0x7fff, v24.h, s7
	v_mov_b16_e64 v147.l, v10.h
	v_and_b32_e32 v17, 1, v26
	v_cmp_o_f32_e64 s7, v20, v20
	v_cndmask_b16 v19.l, 0x7fff, v18.h, s8
	v_add3_u32 v18, v21, v22, 0x7fff
	v_cmp_o_f32_e64 s6, v21, v21
	v_add3_u32 v17, v20, v17, 0x7fff
	v_mov_b16_e32 v20.l, v9.h
	v_mov_b16_e64 v20.h, v147.h
	v_and_b32_e32 v21, 1, v147
	v_mov_b16_e64 v147.l, v12.h
	v_cndmask_b16 v18.l, 0x7fff, v17.h, s7
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s6
	v_and_b32_e32 v17, 1, v20
	v_add3_u32 v20, v10, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v10, v10
	v_and_b32_e32 v21, 1, v147
	v_cmp_o_f32_e64 s7, v12, v12
	v_add3_u32 v10, v9, v17, 0x7fff
	v_mov_b16_e32 v17.l, v11.h
	v_mov_b16_e64 v17.h, v147.h
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s6
	v_cmp_o_f32_e64 s6, v9, v9
	v_mov_b16_e64 v147.l, v14.h
	v_cmp_o_f32_e64 s8, v13, v13
	v_and_b32_e32 v9, 1, v17
	v_add3_u32 v17, v12, v21, 0x7fff
	v_mov_b16_e32 v21.l, v13.h
	v_mov_b16_e64 v21.h, v147.h
	v_cndmask_b16 v20.l, 0x7fff, v10.h, s6
	v_add3_u32 v9, v11, v9, 0x7fff
	v_cndmask_b16 v12.h, 0x7fff, v17.h, s7
	v_and_b32_e32 v17, 1, v147
	v_cmp_o_f32_e64 s6, v11, v11
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v16, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v10, 1, v21
	v_cmp_o_f32_e64 s7, v14, v14
	v_add3_u32 v16, v14, v17, 0x7fff
	v_mov_b16_e32 v17.l, v15.h
	v_mov_b16_e64 v17.h, v147.h
	v_mov_b16_e64 v147.l, v11.h
	v_add3_u32 v10, v13, v10, 0x7fff
	v_cndmask_b16 v12.l, 0x7fff, v9.h, s6
	v_cndmask_b16 v13.h, 0x7fff, v16.h, s7
	v_and_b32_e32 v9, 1, v17
	v_and_b32_e32 v14, 1, v147
	v_mov_b16_e64 v147.l, v2.h
	v_cndmask_b16 v13.l, 0x7fff, v10.h, s8
	v_cmp_o_f32_e64 s6, v11, v11
	v_add3_u32 v9, v15, v9, 0x7fff
	v_add3_u32 v10, v11, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v15, v15
	v_mov_b16_e32 v11.l, v1.h
	v_mov_b16_e64 v11.h, v147.h
	v_and_b32_e32 v14, 1, v147
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s6
	v_cndmask_b16 v10.l, 0x7fff, v9.h, s7
	v_cmp_o_f32_e64 s6, v2, v2
	v_and_b32_e32 v9, 1, v11
	v_add3_u32 v11, v2, v14, 0x7fff
	v_mov_b16_e32 v2.l, v3.h
	v_mov_b16_e64 v2.h, v147.h
	v_mov_b16_e64 v147.l, v4.h
	v_add3_u32 v9, v1, v9, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s6
	v_cmp_o_f32_e64 s6, v1, v1
	v_and_b32_e32 v1, 1, v2
	v_and_b32_e32 v2, 1, v147
	v_mov_b16_e64 v147.l, v6.h
	v_mov_b16_e32 v9.l, v5.h
	v_cndmask_b16 v11.l, 0x7fff, v9.h, s6
	v_mov_b16_e64 v9.h, v147.h
	v_add3_u32 v2, v4, v2, 0x7fff
	v_cmp_o_f32_e64 s6, v4, v4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v8, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v8, 1, v147
	v_and_b32_e32 v9, 1, v9
	v_mov_b16_e32 v14.l, v7.h
	v_mov_b16_e64 v14.h, v147.h
	v_mov_b16_e64 v147.l, v4.h
	v_add3_u32 v1, v3, v1, 0x7fff
	v_cmp_o_f32_e64 s2, v3, v3
	v_add3_u32 v3, v5, v9, 0x7fff
	v_and_b32_e32 v9, 1, v14
	v_and_b32_e32 v14, 1, v147
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s6
	v_add3_u32 v8, v6, v8, 0x7fff
	v_cmp_o_f32_e64 s6, v6, v6
	v_cmp_o_f32_e64 s7, v5, v5
	v_add3_u32 v5, v7, v9, 0x7fff
	v_add3_u32 v6, v4, v14, 0x7fff
	v_cmp_o_f32_e64 s8, v4, v4
	v_cmp_o_f32_e64 s9, v7, v7
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s2
	v_cndmask_b16 v1.h, 0x7fff, v8.h, s6
	v_cndmask_b16 v1.l, 0x7fff, v3.h, s7
	v_cndmask_b16 v3.h, 0x7fff, v6.h, s8
	v_cndmask_b16 v3.l, 0x7fff, v5.h, s9
	v_cndmask_b32_e64 v5, v38, v27, s0
	v_cndmask_b32_e64 v7, v28, v29, s0
	v_cndmask_b32_e64 v9, v30, v19, s0
	v_cndmask_b32_e64 v14, v18, v25, s0
	v_cndmask_b32_e64 v15, v25, v18, s0
	v_cndmask_b32_e64 v18, v1, v11, s0
	v_cndmask_b32_e64 v1, v11, v1, s0
	v_cndmask_b32_e64 v16, v13, v20, s0
	v_cndmask_b32_e64 v13, v20, v13, s0
	v_cndmask_b32_e64 v17, v10, v12, s0
	v_cndmask_b32_e64 v10, v12, v10, s0
	v_cndmask_b32_e64 v8, v19, v30, s0
	v_cndmask_b32_e64 v19, v3, v2, s0
	v_cndmask_b32_e64 v2, v2, v3, s0
	s_mov_b32 s2, 0x76543210
	v_cndmask_b32_e64 v4, v27, v38, s0
	v_cndmask_b32_e64 v6, v29, v28, s0
	v_permlanex16_b32 v3, v5, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v7, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v9, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v15, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v1, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v13, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v10, s2, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v2, s2, 0xfedcba98 op_sel:[1,0]
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s31, v34
	v_cmp_gt_i32_e64 s3, s31, v33
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v1, v3, v4, v94
	v_perm_b32 v2, v3, v4, v95
	v_perm_b32 v3, v5, v6, v94
	v_perm_b32 v4, v5, v6, v95
	v_perm_b32 v5, v7, v8, v94
	v_perm_b32 v6, v7, v8, v95
	v_perm_b32 v7, v9, v14, v94
	v_perm_b32 v8, v9, v14, v95
	v_perm_b32 v13, v15, v18, v94
	v_perm_b32 v14, v15, v18, v95
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v18, v23, v35, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v9, v11, v16, v94
	v_perm_b32 v10, v11, v16, v95
	v_perm_b32 v11, v12, v17, v94
	v_perm_b32 v12, v12, v17, v95
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v17, v23, v34, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v15, v20, v19, v94
	v_perm_b32 v16, v20, v19, v95
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v23, v33, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s0, s1, s5
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s1, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s1, s4
	s_mov_b32 s31, 0x31027000
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[1:4], v17, s[28:31], 0 offen
	buffer_store_b128 v[5:8], v18, s[28:31], 0 offen
	buffer_store_b128 v[9:12], v19, s[28:31], 0 offen
	buffer_store_b128 v[13:16], v0, s[28:31], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp52:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
		.amdhsa_next_free_sgpr 45
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_vgpr, 177
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.numbered_sgpr, 45
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11448
; TotalNumSgprs: 47
; NumVgprs: 177
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 47
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
	.quad	.Ltmp21-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     47
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.kd
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
