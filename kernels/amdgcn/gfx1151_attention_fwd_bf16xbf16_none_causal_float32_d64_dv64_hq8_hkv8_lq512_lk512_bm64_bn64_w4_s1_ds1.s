	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[60:61], s[0:1], 0x5c
	s_load_b64 s[52:53], s[0:1], 0x0
.Ltmp0:
	.loc	1 787 79 prologue_end           ; attention.py:787:79
	v_and_b32_e32 v2, 7, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s4, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s51, s3, 9
	s_mov_b32 s55, 0x31027000
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v1, 3, v2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s4, v3
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s50, s4, s51
	s_mov_b32 s54, 0x7ffffffe
	s_clause 0x1
	s_load_b32 s8, s[0:1], 0x84
	s_load_b64 s[48:49], s[0:1], 0x38
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v23, 1, v0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x200, v4
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v105, v0, 4, 1
	v_lshrrev_b32_e32 v22, 4, v0
	s_mov_b32 s40, 0
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v23, 0x70, v23
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v107, 2, v105
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[72:73], null, s60, v3, v[1:2]
	s_mul_i32 s3, s60, s50
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s60, v1
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s53, s53, 0xffff
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v106, 4, v105
	v_or_b32_e32 v104, 6, v105
	v_or_b32_e32 v103, 8, v105
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[73:74], null, s60, 48, v[72:73]
	v_lshl_add_u32 v109, s60, 4, v72
	v_lshl_add_u32 v110, s60, 5, v72
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v3, v72, s3, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v102, 10, v105
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v4, v109, s3, 1
	v_add_lshl_u32 v5, v110, s3, 1
	v_add_lshl_u32 v6, v73, s3, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 810 48                        ; attention.py:810:48
	s_add_i32 s3, s4, s8
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	v_cndmask_b32_e64 v18, 0x80000000, v6, s2
	s_clause 0x3
	buffer_load_b128 v[6:9], v3, s[52:55], 0 offen
	buffer_load_b128 v[10:13], v4, s[52:55], 0 offen
	buffer_load_b128 v[14:17], v5, s[52:55], 0 offen
	buffer_load_b128 v[18:21], v18, s[52:55], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v4, 0x60, v0
	v_and_b32_e32 v3, 15, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v5, 4, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v101, 12, v105
	v_or_b32_e32 v100, 14, v105
	v_lshrrev_b32_e32 v24, 1, v4
	v_or_b32_e32 v99, 16, v105
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v23, v5, v23
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v98, 18, v105
	v_or_b32_e32 v97, 20, v105
	v_or_b32_e32 v108, v24, v3
	v_or_b32_e32 v96, 22, v105
	v_or_b32_e32 v95, 24, v105
	v_or_b32_e32 v94, 26, v105
	v_or_b32_e32 v93, 28, v105
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v5, s4, v108
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v92, 30, v105
	v_or_b32_e32 v91, 32, v105
	v_or_b32_e32 v90, 34, v105
	v_or_b32_e32 v89, 36, v105
	v_or_b32_e32 v88, 38, v105
	v_or_b32_e32 v87, 40, v105
	v_or_b32_e32 v86, 42, v105
	v_or_b32_e32 v85, 44, v105
	v_or_b32_e32 v84, 46, v105
	v_or_b32_e32 v83, 48, v105
	v_or_b32_e32 v82, 50, v105
	v_or_b32_e32 v81, 52, v105
	v_or_b32_e32 v78, 54, v105
	v_or_b32_e32 v79, 56, v105
	v_or_b32_e32 v77, 58, v105
	v_or_b32_e32 v76, 60, v105
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_nc_u32_e32 v111, 0, v23
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v80, 62, v22
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x200, v5
	.loc	1 810 48                        ; attention.py:810:48
	s_add_i32 s3, s3, 64
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v111, v[6:9]
	s_waitcnt vmcnt(2)
	ds_store_b128 v111, v[10:13] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v111, v[14:17] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v111, v[18:21] offset:6144
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s3, 1
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v3, 7, v3
	v_dual_mov_b32 v24, 0 :: v_dual_and_b32 v7, 0x78, v0
	v_lshlrev_b32_e32 v4, 6, v4
	v_lshlrev_b32_e32 v6, 4, v2
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v112, s8, v5
	.loc	1 810 25                        ; attention.py:810:25
	s_min_i32 s3, s3, 0x200
	s_clause 0x1
	s_load_b32 s9, s[0:1], 0x64
	s_load_b128 s[4:7], s[0:1], 0x8
	.loc	1 788 26                        ; attention.py:788:26
	v_or3_b32 v4, v3, v4, v6
	.loc	1 811 35                        ; attention.py:811:35
	s_add_i32 s0, s3, 63
	s_lshl_b32 s64, s61, 1
	.loc	1 811 34 is_stmt 0              ; attention.py:811:34
	s_ashr_i32 s1, s0, 31
	s_mul_i32 s65, s61, 3
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_xad_u32 v5, 0x70, v4, 0
	v_xad_u32 v8, 0x60, v4, 0
	v_xad_u32 v9, 0x50, v4, 0
	ds_load_b128 v[36:39], v5
	ds_load_b128 v[32:35], v8
	v_xad_u32 v5, v4, 48, 0
	v_xad_u32 v10, v4, 64, 0
	v_xad_u32 v8, v4, 32, 0
	ds_load_b128 v[44:47], v9
	ds_load_b128 v[40:43], v10
	v_xad_u32 v9, v4, 16, 0
	ds_load_b128 v[52:55], v5
	ds_load_b128 v[48:51], v8
	v_mov_b32_e32 v8, 0x5410
	v_or_b32_e32 v113, v6, v3
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v3, 1, v7
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v4, 0, v4
	ds_load_b128 v[60:63], v9
	ds_load_b128 v[56:59], v4
	v_and_b32_e32 v4, 16, v0
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[74:75], null, s61, v3, v[1:2]
	v_xor_b32_e32 v3, v6, v7
	v_bfe_i32 v0, v0, 3, 1
	.loc	1 811 34                        ; attention.py:811:34
	s_lshr_b32 s1, s1, 26
	v_xor_b32_e32 v9, 32, v113
	s_add_i32 s62, s0, s1
	v_lshl_or_b32 v114, v2, 10, v3
	v_and_b32_e32 v0, 0x410, v0
	v_mul_u32_u24_e32 v2, 0x90, v2
	v_add_nc_u32_e32 v119, 0, v9
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s61, v1
	v_xor_b32_e32 v5, 16, v113
	v_xor_b32_e32 v10, 48, v113
	v_xor_b32_e32 v117, v2, v0
	v_xor_b32_e32 v11, 64, v113
	v_xor_b32_e32 v12, 0x50, v113
	v_xor_b32_e32 v13, 0x60, v113
	v_xor_b32_e32 v14, 0x70, v113
	v_xor_b32_e32 v17, 64, v117
	v_xor_b32_e32 v19, 0x60, v117
	v_xor_b32_e32 v26, 0x870, v117
	v_xor_b32_e32 v3, 0x120, v114
	v_xor_b32_e32 v0, 0x240, v114
	v_add_nc_u32_e32 v135, 0, v17
	v_mov_b32_e32 v17, v24
	v_cmp_eq_u32_e64 s1, 0, v4
	v_dual_mov_b32 v4, 0x7632 :: v_dual_add_nc_u32 v137, 0, v19
	v_add_nc_u32_e32 v143, 0, v26
	v_mov_b32_e32 v26, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v8, 0x1054, v8, s1
	v_cndmask_b32_e64 v4, 0x3276, v4, s1
	v_mov_b32_e32 v19, v24
	v_xor_b32_e32 v2, 0x2d0, v114
	v_xor_b32_e32 v6, 0x360, v114
	v_lshl_or_b32 v8, v8, 8, v8
	v_lshl_or_b32 v4, v4, 8, v4
	v_xor_b32_e32 v7, 0x3f0, v114
	v_xor_b32_e32 v15, 32, v117
	v_xor_b32_e32 v16, 48, v117
	v_and_b32_e32 v8, 0x540054, v8
	v_and_b32_e32 v1, 0x760076, v4
	v_xor_b32_e32 v18, 0x50, v117
	v_xor_b32_e32 v20, 0x70, v117
	v_xor_b32_e32 v21, 0x820, v117
	v_lshl_or_b32 v4, v8, 4, v8
	v_lshl_or_b32 v1, v1, 4, v1
	v_xor_b32_e32 v8, 16, v117
	v_xor_b32_e32 v22, 0x830, v117
	v_xor_b32_e32 v23, 0x810, v117
	v_and_b32_e32 v115, 0x5040504, v4
	v_and_b32_e32 v116, 0x7060706, v1
	v_xor_b32_e32 v1, 0x90, v114
	v_xor_b32_e32 v4, 0x1b0, v114
	v_xor_b32_e32 v25, 0x860, v117
	v_xor_b32_e32 v27, 0x840, v117
	v_xor_b32_e32 v28, 0x850, v117
	v_xor_b32_e32 v29, 0x1040, v117
	v_xor_b32_e32 v30, 0x1050, v117
	v_xor_b32_e32 v31, 0x1060, v117
	v_xor_b32_e32 v64, 0x1070, v117
	v_xor_b32_e32 v65, 0x1010, v117
	v_xor_b32_e32 v66, 0x1020, v117
	v_xor_b32_e32 v67, 0x1030, v117
	v_xor_b32_e32 v68, 0x1860, v117
	v_xor_b32_e32 v69, 0x1870, v117
	v_xor_b32_e32 v70, 0x1840, v117
	v_xor_b32_e32 v71, 0x1850, v117
	v_xor_b32_e32 v75, 0x1820, v117
	v_xor_b32_e32 v158, 0x1830, v117
	v_xor_b32_e32 v159, 0x1810, v117
	v_dual_mov_b32 v9, v24 :: v_dual_add_nc_u32 v118, 0, v5
	v_add_nc_u32_e32 v120, 0, v10
	v_add_nc_u32_e32 v121, 0, v11
	v_add_nc_u32_e32 v122, 0, v12
	v_add_nc_u32_e32 v123, 0, v13
	v_add_nc_u32_e32 v124, 0, v14
	v_add_nc_u32_e32 v125, 0, v1
	v_dual_mov_b32 v1, v24 :: v_dual_add_nc_u32 v126, 0, v3
	v_add_nc_u32_e32 v127, 0, v4
	v_dual_mov_b32 v3, v24 :: v_dual_add_nc_u32 v128, 0, v0
	v_add_nc_u32_e32 v129, 0, v2
	v_dual_mov_b32 v5, v24 :: v_dual_add_nc_u32 v130, 0, v6
	v_add_nc_u32_e32 v131, 0, v7
	v_dual_mov_b32 v7, v24 :: v_dual_add_nc_u32 v132, 0, v8
	v_dual_mov_b32 v10, v24 :: v_dual_add_nc_u32 v133, 0, v15
	v_add_nc_u32_e32 v134, 0, v16
	v_add_nc_u32_e32 v136, 0, v18
	v_add_nc_u32_e32 v138, 0, v20
	v_dual_mov_b32 v0, v24 :: v_dual_add_nc_u32 v139, 0, v21
	v_add_nc_u32_e32 v140, 0, v22
	v_dual_mov_b32 v2, v24 :: v_dual_add_nc_u32 v141, 0, v23
	v_add_nc_u32_e32 v142, 0, v25
	v_add_nc_u32_e32 v144, 0, v27
	v_dual_mov_b32 v6, v24 :: v_dual_add_nc_u32 v145, 0, v28
	v_add_nc_u32_e32 v146, 0, v29
	v_dual_mov_b32 v160, 0xff800000 :: v_dual_add_nc_u32 v147, 0, v30
	v_add_nc_u32_e32 v148, 0, v31
	v_add_nc_u32_e32 v149, 0, v64
	v_add_nc_u32_e32 v150, 0, v65
	v_add_nc_u32_e32 v151, 0, v66
	v_add_nc_u32_e32 v152, 0, v67
	v_add_nc_u32_e32 v153, 0, v68
	v_add_nc_u32_e32 v154, 0, v69
	v_add_nc_u32_e32 v155, 0, v70
	v_add_nc_u32_e32 v156, 0, v71
	v_add_nc_u32_e32 v157, 0, v75
	v_add_nc_u32_e32 v158, 0, v158
	v_add_nc_u32_e32 v159, 0, v159
	v_mov_b32_e32 v25, v24
	v_mov_b32_e32 v27, v24
	v_mov_b32_e32 v28, v24
	v_mov_b32_e32 v29, v24
	v_mov_b32_e32 v30, v24
	v_mov_b32_e32 v31, v24
	v_mov_b32_e32 v16, v24
	v_mov_b32_e32 v18, v24
	v_mov_b32_e32 v20, v24
	v_mov_b32_e32 v21, v24
	v_mov_b32_e32 v22, v24
	v_mov_b32_e32 v23, v24
	v_mov_b32_e32 v8, v24
	v_mov_b32_e32 v11, v24
	v_mov_b32_e32 v12, v24
	v_mov_b32_e32 v13, v24
	v_mov_b32_e32 v14, v24
	v_mov_b32_e32 v15, v24
	v_mov_b32_e32 v4, v24
	v_mov_b32_e32 v75, v24
	.loc	1 860 31                        ; attention.py:860:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s63, s9, 0x3fb8aa3b
	s_and_b32 s5, s5, 0xffff
	.loc	1 811 33                        ; attention.py:811:33
	s_and_not1_b32 s62, s62, 63
	s_and_b32 s57, s7, 0xffff
	s_mov_b32 s52, s4
	s_mov_b32 s53, s5
	s_mov_b32 s41, s40
	s_mov_b32 s42, s40
	s_mov_b32 s43, s40
	s_mov_b32 s44, s40
	s_mov_b32 s45, s40
	s_mov_b32 s46, s40
	s_mov_b32 s47, s40
	s_mov_b32 s56, s6
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	s_mov_b32 s66, 0x76543210
	s_mov_b32 s67, s40
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 33 is_stmt 0                ; attention.py:0:33
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 853 32 is_stmt 1              ; attention.py:853:32
	s_add_i32 s1, s67, s51
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v164, s67, v81
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s3, s1, s60
	v_mad_u64_u32 v[197:198], null, s1, s61, v[74:75]
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v198, s3, v72, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v168, s67, v85
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v199, s3, v109, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v172, s67, v89
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v200, s3, v110, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v176, s67, v93
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v201, s3, v73, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v165, s67, v82
	v_or_b32_e32 v166, s67, v83
	v_or_b32_e32 v167, s67, v84
	v_or_b32_e32 v169, s67, v86
	v_or_b32_e32 v170, s67, v87
	v_or_b32_e32 v171, s67, v88
	v_or_b32_e32 v173, s67, v90
	v_or_b32_e32 v174, s67, v91
	v_or_b32_e32 v175, s67, v92
	v_or_b32_e32 v177, s67, v94
	v_or_b32_e32 v178, s67, v95
	v_or_b32_e32 v179, s67, v96
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s23, v164, v112
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v164, 0x80000000, v198, vcc_lo
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v163, 0, v114
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s5, v168, v112
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v168, 0x80000000, v199, vcc_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s9, v172, v112
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v172, 0x80000000, v200, vcc_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s13, v176, v112
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v176, 0x80000000, v201, vcc_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s1, v165, v112
	v_cmp_le_i32_e64 s3, v166, v112
	v_cmp_le_i32_e64 s4, v167, v112
	v_cmp_le_i32_e64 s6, v169, v112
	v_cmp_le_i32_e64 s7, v170, v112
	v_cmp_le_i32_e64 s8, v171, v112
	v_cmp_le_i32_e64 s10, v173, v112
	v_cmp_le_i32_e64 s12, v174, v112
	v_cmp_le_i32_e64 s11, v175, v112
	v_cmp_le_i32_e64 s14, v177, v112
	v_cmp_le_i32_e64 s16, v178, v112
	v_cmp_le_i32_e64 s17, v179, v112
	.loc	1 854 32                        ; attention.py:854:32
	s_clause 0x3
	buffer_load_b128 v[164:167], v164, s[52:55], 0 offen
	buffer_load_b128 v[168:171], v168, s[52:55], 0 offen
	buffer_load_b128 v[172:175], v172, s[52:55], 0 offen
	buffer_load_b128 v[176:179], v176, s[52:55], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v180, s67, v97
	v_or_b32_e32 v181, s67, v98
	v_or_b32_e32 v182, s67, v99
	v_or_b32_e32 v183, s67, v100
	v_or_b32_e32 v184, s67, v101
	v_or_b32_e32 v185, s67, v102
	v_or_b32_e32 v186, s67, v103
	v_or_b32_e32 v187, s67, v104
	v_or_b32_e32 v188, s67, v106
	v_or_b32_e32 v189, s67, v107
	v_or_b32_e32 v190, s67, v105
	v_or_b32_e32 v191, s67, v80
	v_or_b32_e32 v192, s67, v77
	v_or_b32_e32 v193, s67, v79
	v_or_b32_e32 v194, s67, v76
	v_or_b32_e32 v195, s67, v78
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s18, v180, v112
	v_cmp_le_i32_e64 s21, v181, v112
	v_cmp_le_i32_e64 s25, v182, v112
	v_cmp_le_i32_e64 s26, v183, v112
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v180, v197, s64, 1
	v_add_lshl_u32 v181, v197, s65, 1
	v_lshlrev_b32_e32 v182, 1, v197
	v_add_lshl_u32 v183, v197, s61, 1
	.loc	1 854 32                        ; attention.py:854:32
	v_add_nc_u32_e32 v161, 0, v113
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v71, s47 :: v_dual_mov_b32 v68, s44
	v_mov_b32_e32 v70, s46
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s27, v184, v112
	v_cmp_le_i32_e64 s28, v185, v112
	v_cmp_le_i32_e64 s29, v186, v112
	v_cmp_le_i32_e64 s30, v187, v112
	v_cmp_le_i32_e64 s31, v188, v112
	v_cmp_le_i32_e64 s33, v189, v112
	v_cmp_le_i32_e64 s34, v190, v112
	v_cmp_le_i32_e64 s35, v191, v112
	v_cmp_le_i32_e64 s36, v192, v112
	v_cmp_le_i32_e64 s37, v193, v112
	v_cmp_le_i32_e64 s38, v194, v112
	v_cmp_le_i32_e64 s39, v195, v112
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v229, 0x80000000, v180, s0
	v_cndmask_b32_e64 v237, 0x80000000, v181, s0
	v_cndmask_b32_e64 v238, 0x80000000, v182, s0
	v_cndmask_b32_e64 v239, 0x80000000, v183, s0
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v69, s45 :: v_dual_mov_b32 v66, s42
	v_dual_mov_b32 v67, s43 :: v_dual_mov_b32 v64, s40
	v_dual_mov_b32 v65, s41 :: v_dual_add_nc_u32 v196, 0, v117
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s10, s2, s10
	s_and_b32 s11, s2, s11
	s_and_b32 s13, s2, s13
	s_and_b32 s15, s2, s14
	s_and_b32 s19, s2, s16
	s_and_b32 s20, s2, s17
	s_and_b32 s22, s2, s18
	s_and_b32 s17, s2, s12
	s_and_b32 s24, s2, s21
	s_and_b32 s28, s2, s28
	s_and_b32 s30, s2, s30
	s_and_b32 s33, s2, s33
	s_and_b32 s29, s2, s29
	s_and_b32 s34, s2, s34
	s_and_b32 s1, s2, s1
	s_and_b32 s3, s2, s3
	s_and_b32 s4, s2, s4
	s_and_b32 s5, s2, s5
	s_and_b32 s6, s2, s6
	s_and_b32 s7, s2, s7
	s_and_b32 s8, s2, s8
	s_and_b32 s9, s2, s9
	s_and_b32 s31, s2, s31
	s_and_b32 s26, s2, s26
	s_and_b32 s25, s2, s25
	s_and_b32 s27, s2, s27
	s_and_b32 s12, s2, s35
	s_and_b32 s18, s2, s37
	s_and_b32 s16, s2, s38
	s_and_b32 s21, s2, s39
	s_and_b32 s23, s2, s23
	s_and_b32 s14, s2, s36
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s35, 0xff800000, v160
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v162.h, 0
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s67, s67, 64
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(3)
	ds_store_b128 v111, v[164:167]
	s_waitcnt vmcnt(2)
	ds_store_b128 v111, v[168:171] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v111, v[172:175] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v111, v[176:179] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[168:171], v118
	ds_load_b128 v[164:167], v161
	ds_load_b128 v[172:175], v161 offset:2048
	ds_load_b128 v[176:179], v118 offset:2048
	ds_load_b128 v[184:187], v118 offset:4096
	ds_load_b128 v[180:183], v161 offset:4096
	ds_load_b128 v[188:191], v161 offset:6144
	ds_load_b128 v[192:195], v118 offset:6144
	ds_load_b128 v[201:204], v120
	ds_load_b128 v[197:200], v119
	ds_load_b128 v[205:208], v119 offset:2048
	ds_load_b128 v[209:212], v120 offset:2048
	ds_load_b128 v[217:220], v120 offset:4096
	ds_load_b128 v[213:216], v119 offset:4096
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[229:232], v229, s[56:59], 0 offen
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v233.h, v162.h
	v_mov_b16_e64 v234.h, v162.h
	v_mov_b16_e64 v235.h, v162.h
	v_mov_b16_e64 v236.h, v162.h
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s67, s62
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(12)
	v_wmma_f32_16x16x16_bf16 v[221:228], v[164:171], v[56:63], v[64:71]
	s_waitcnt lgkmcnt(10)
	v_wmma_f32_16x16x16_bf16 v[164:171], v[172:179], v[56:63], v[64:71]
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[172:179], v[180:187], v[56:63], v[64:71]
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[180:187], v[188:195], v[56:63], v[64:71]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[64:67], v119 offset:6144
	ds_load_b128 v[68:71], v120 offset:6144
	ds_load_b128 v[192:195], v122
	ds_load_b128 v[188:191], v121
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[164:171], v[205:212], v[48:55], v[164:171]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[172:179], v[213:220], v[48:55], v[172:179]
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x2
	buffer_load_b128 v[213:216], v238, s[56:59], 0 offen
	buffer_load_b128 v[209:212], v239, s[56:59], 0 offen
	buffer_load_b128 v[205:208], v237, s[56:59], 0 offen
	.loc	1 859 30                        ; attention.py:859:30
	v_wmma_f32_16x16x16_bf16 v[221:228], v[197:204], v[48:55], v[221:228]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[197:200], v121 offset:2048
	ds_load_b128 v[201:204], v122 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[180:187], v[64:71], v[48:55], v[180:187]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[68:71], v122 offset:4096
	ds_load_b128 v[64:67], v121 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[221:228], v[188:195], v[40:47], v[221:228]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[188:191], v121 offset:6144
	ds_load_b128 v[192:195], v122 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[164:171], v[197:204], v[40:47], v[164:171]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[201:204], v124
	ds_load_b128 v[197:200], v123
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[172:179], v[64:71], v[40:47], v[172:179]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[64:67], v123 offset:2048
	ds_load_b128 v[68:71], v124 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[180:187], v[188:195], v[40:47], v[180:187]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[188:191], v123 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[221:228], v[197:204], v[32:39], v[221:228]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[197:200], v123 offset:6144
	ds_load_b128 v[192:195], v124 offset:4096
	ds_load_b128 v[201:204], v124 offset:6144
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	v_wmma_f32_16x16x16_bf16 v[164:171], v[64:71], v[32:39], v[164:171]
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v64, s63, v221 :: v_dual_mul_f32 v67, s63, v224
	v_dual_mul_f32 v65, s63, v222 :: v_dual_mul_f32 v66, s63, v223
	v_dual_mul_f32 v69, s63, v226 :: v_dual_mul_f32 v68, s63, v225
	v_mul_f32_e32 v71, s63, v228
	.loc	1 859 30                        ; attention.py:859:30
	v_wmma_f32_16x16x16_bf16 v[172:179], v[188:195], v[32:39], v[172:179]
	v_wmma_f32_16x16x16_bf16 v[180:187], v[197:204], v[32:39], v[180:187]
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v70, s63, v227 :: v_dual_mul_f32 v161, s63, v164
	v_dual_mul_f32 v164, s63, v165 :: v_dual_mul_f32 v165, s63, v166
	v_dual_mul_f32 v166, s63, v167 :: v_dual_mul_f32 v167, s63, v168
	v_dual_mul_f32 v168, s63, v169 :: v_dual_mul_f32 v169, s63, v170
	v_dual_mul_f32 v170, s63, v171 :: v_dual_mul_f32 v171, s63, v172
	v_dual_mul_f32 v172, s63, v173 :: v_dual_mul_f32 v173, s63, v174
	v_dual_mul_f32 v174, s63, v175 :: v_dual_mul_f32 v175, s63, v176
	v_dual_mul_f32 v176, s63, v177 :: v_dual_mul_f32 v177, s63, v178
	v_dual_mul_f32 v178, s63, v179 :: v_dual_mul_f32 v179, s63, v180
	v_dual_mul_f32 v180, s63, v181 :: v_dual_mul_f32 v181, s63, v182
	v_dual_mul_f32 v182, s63, v183 :: v_dual_mul_f32 v183, s63, v184
	v_dual_mul_f32 v184, s63, v185 :: v_dual_mul_f32 v185, s63, v186
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v222, 0xff800000, v171, s17
	v_cndmask_b32_e64 v223, 0xff800000, v172, s10
	v_cndmask_b32_e64 v224, 0xff800000, v169, s13
	v_cndmask_b32_e64 v225, 0xff800000, v170, s11
	v_cndmask_b32_e64 v226, 0xff800000, v167, s19
	v_cndmask_b32_e64 v227, 0xff800000, v168, s15
	v_cndmask_b32_e64 v228, 0xff800000, v165, s22
	v_cndmask_b32_e64 v237, 0xff800000, v166, s20
	v_cndmask_b32_e64 v238, 0xff800000, v164, s24
	v_cndmask_b32_e64 v68, 0xff800000, v68, s29
	v_cndmask_b32_e64 v69, 0xff800000, v69, s28
	v_cndmask_b32_e64 v67, 0xff800000, v67, s30
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v186, s63, v187
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v64, 0xff800000, v64, s34
	v_cndmask_b32_e64 v65, 0xff800000, v65, s33
	v_cndmask_b32_e64 v195, 0xff800000, v181, s23
	v_cndmask_b32_e64 v201, 0xff800000, v179, s3
	v_cndmask_b32_e64 v202, 0xff800000, v180, s1
	v_cndmask_b32_e64 v203, 0xff800000, v177, s5
	v_cndmask_b32_e64 v217, 0xff800000, v178, s4
	v_cndmask_b32_e64 v218, 0xff800000, v175, s7
	v_cndmask_b32_e64 v219, 0xff800000, v176, s6
	v_cndmask_b32_e64 v220, 0xff800000, v173, s9
	v_cndmask_b32_e64 v221, 0xff800000, v174, s8
	v_cndmask_b32_e64 v66, 0xff800000, v66, s31
	v_cndmask_b32_e64 v239, 0xff800000, v161, s25
	v_cndmask_b32_e64 v70, 0xff800000, v70, s27
	v_cndmask_b32_e64 v71, 0xff800000, v71, s26
	v_cndmask_b32_e64 v185, 0xff800000, v185, s16
	v_cndmask_b32_e64 v186, 0xff800000, v186, s12
	v_cndmask_b32_e64 v183, 0xff800000, v183, s18
	v_cndmask_b32_e64 v240, 0xff800000, v182, s21
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v166, v225, v222, v223
	v_max3_f32 v167, v226, v227, v224
	v_max3_f32 v168, v238, v228, v237
	v_max3_f32 v169, v67, v68, v69
	v_max_f32_e32 v170, v64, v65
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v184, 0xff800000, v184, s14
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v161, v201, v202, v195
	v_max3_f32 v164, v219, v203, v217
	v_max3_f32 v165, v220, v221, v218
	v_max3_f32 v171, v70, v71, v239
	v_dual_max_f32 v172, v185, v186 :: v_dual_max_f32 v173, v240, v183
	v_max3_f32 v166, v168, v167, v166
	v_max3_f32 v167, v170, v66, v169
	v_max3_f32 v161, v165, v164, v161
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v164, v173, v184, v172
	v_max3_f32 v165, v167, v171, v166
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v161, v165, v161, v164
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v164, v161, s66, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v241, v160, v161, v164
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v161, v160, v241
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v65, v241
	v_sub_f32_e32 v67, v67, v241
	v_sub_f32_e32 v71, v71, v241
	v_sub_f32_e32 v195, v195, v241
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v161, v161
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v71, v71
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v183, v183, v241
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v195, v195
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_exp_f32_e32 v183, v183
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v250, 0, v161, s35
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v64, v241
	v_sub_f32_e32 v66, v66, v241
	v_sub_f32_e32 v68, v68, v241
	v_dual_sub_f32 v69, v69, v241 :: v_dual_mul_f32 v24, v24, v250
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v29, v29, v250
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v64, v64
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v31, v31, v250
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v250
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v70, v70, v241 :: v_dual_mul_f32 v19, v19, v250
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v243, 0, v65, s33
	v_cndmask_b32_e64 v245, 0, v67, s30
	v_cndmask_b32_e64 v242, 0, v64, s34
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v244, 0, v66, s31
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v162.l, v243.h
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v246, 0, v68, s29
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v233.l, v242.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v21, v21, v250
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v247, 0, v69, s28
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v234.l, v244.h
	v_and_b32_e32 v65, 1, v162
	v_and_b32_e32 v64, 1, v233
	v_mov_b16_e64 v162.l, v245.h
	v_mov_b16_e64 v235.l, v246.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v248, 0, v70, s27
	v_cndmask_b32_e64 v249, 0, v71, s26
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s27, v242, v242
	v_and_b32_e32 v66, 1, v234
	v_add3_u32 v64, v242, v64, 0x7fff
	v_and_b32_e32 v69, 1, v162
	v_mov_b16_e64 v162.l, v247.h
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v28, v28, v250 :: v_dual_and_b32 v67, 1, v235
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v65, v243, v65, 0x7fff
	v_cmp_o_f32_e64 s29, v244, v244
	v_mov_b16_e64 v236.l, v248.h
	v_add3_u32 v66, v244, v66, 0x7fff
	v_cndmask_b16 v65.l, 0x7fff, v64.h, s27
	v_and_b32_e32 v64, 1, v162
	v_mov_b16_e64 v162.l, v249.h
	v_add3_u32 v67, v246, v67, 0x7fff
	v_cmp_o_f32_e64 s28, v245, v245
	v_cmp_o_f32_e64 s31, v246, v246
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v23, v23, v250 :: v_dual_and_b32 v68, 1, v236
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v69, v245, v69, 0x7fff
	v_cndmask_b16 v67.l, 0x7fff, v66.h, s29
	v_and_b32_e32 v66, 1, v162
	v_cmp_o_f32_e64 s26, v243, v243
	v_cmp_o_f32_e64 s30, v247, v247
	v_cmp_o_f32_e64 s33, v249, v249
	v_cmp_o_f32_e64 s34, v248, v248
	v_add3_u32 v68, v248, v68, 0x7fff
	v_cndmask_b16 v69.l, 0x7fff, v67.h, s31
	v_cndmask_b16 v67.h, 0x7fff, v69.h, s28
	v_add3_u32 v70, v247, v64, 0x7fff
	v_add3_u32 v66, v249, v66, 0x7fff
	v_cndmask_b16 v65.h, 0x7fff, v65.h, s26
	v_cndmask_b16 v71.l, 0x7fff, v68.h, s34
	v_permlanex16_b32 v160, v67, s66, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v69.h, 0x7fff, v70.h, s30
	v_cndmask_b16 v71.h, 0x7fff, v66.h, s33
	v_permlanex16_b32 v68, v65, s66, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v250
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v66, v160, v67, v115
	v_permlanex16_b32 v70, v69, s66, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v67, v160, v67, v116
	v_permlanex16_b32 v160, v71, s66, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v64, v68, v65, v115
	v_perm_b32 v65, v68, v65, v116
	v_perm_b32 v68, v70, v69, v115
	v_perm_b32 v69, v70, v69, v116
	v_perm_b32 v70, v160, v71, v115
	v_perm_b32 v71, v160, v71, v116
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v250
	v_mul_f32_e32 v27, v27, v250
	v_dual_mul_f32 v18, v18, v250 :: v_dual_mov_b32 v233, v75
	v_mul_f32_e32 v20, v20, v250
	v_mul_f32_e32 v22, v22, v250
	v_dual_mul_f32 v8, v8, v250 :: v_dual_sub_f32 v75, v237, v241
	v_mul_f32_e32 v10, v10, v250
	v_mul_f32_e32 v12, v12, v250
	v_mul_f32_e32 v13, v13, v250
	v_mul_f32_e32 v14, v14, v250
	v_mul_f32_e32 v15, v15, v250
	v_mul_f32_e32 v0, v0, v250
	v_mul_f32_e32 v1, v1, v250
	v_mul_f32_e32 v2, v2, v250
	v_mul_f32_e32 v3, v3, v250
	v_mul_f32_e32 v4, v4, v250
	v_mul_f32_e32 v5, v5, v250
	v_mul_f32_e32 v6, v6, v250
	v_mul_f32_e32 v7, v7, v250
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v75, v75
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v184, v184, v241
	v_sub_f32_e32 v185, v185, v241
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v183, 0, v183, s18
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e64 v161.l, v229.l
	v_mov_b16_e64 v165.l, v230.l
	v_mov_b16_e64 v167.l, v231.l
	v_mov_b16_e64 v169.l, v232.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v160.l, v213.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v160.h, v209.l
	v_mov_b16_e64 v209.l, v213.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v11, v11, v250
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v161.h, v205.l
	v_mov_b16_e64 v205.l, v229.h
	v_mov_b16_e64 v164.h, v210.l
	v_mov_b16_e64 v210.l, v214.h
	v_mov_b32_e32 v204, v209
	v_mov_b16_e64 v165.h, v206.l
	v_mov_b16_e64 v164.l, v214.l
	v_mov_b16_e64 v166.h, v211.l
	v_mov_b16_e64 v211.l, v215.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v250
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v206.l, v230.h
	ds_store_b64 v163, v[160:161]
	ds_store_b64 v125, v[204:205]
	v_mov_b32_e32 v205, v210
	v_mov_b16_e64 v169.h, v208.l
	v_mov_b16_e64 v208.l, v232.h
	v_mov_b16_e64 v167.h, v207.l
	v_mov_b16_e64 v166.l, v215.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v250
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v207.l, v231.h
	ds_store_b64 v126, v[164:165]
	ds_store_b64 v127, v[205:206]
	v_mov_b32_e32 v206, v211
	v_mov_b16_e64 v168.l, v216.l
	v_mov_b16_e64 v168.h, v212.l
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v30, v30, v250 :: v_dual_mov_b32 v213, v208
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e64 v212.l, v216.h
	ds_store_b64 v128, v[166:167]
	ds_store_b64 v129, v[206:207]
	ds_store_b64 v130, v[168:169]
	ds_store_b64 v131, v[212:213]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[163:166], v196
	ds_load_b128 v[167:170], v132
	ds_load_b128 v[171:174], v139
	ds_load_b128 v[175:178], v140
	ds_load_b128 v[179:182], v133
	ds_load_b128 v[187:190], v196 offset:2048
	ds_load_b128 v[191:194], v141
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v160, v226, v241
	v_dual_sub_f32 v161, v227, v241 :: v_dual_add_f32 v204, v246, v247
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v185, v185
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v215.h, v162.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v160, v160
	v_exp_f32_e32 v161, v161
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v185, 0, v185, s16
	.loc	1 896 23 is_stmt 1              ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[163:170], v[64:71], v[24:31]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v163, v224, v241
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[171:178], v[64:71], v[16:23]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[169:172], v146
	ds_load_b128 v[173:176], v147
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v164, v225, v241
	v_sub_f32_e32 v177, v201, v241
	v_sub_f32_e32 v178, v202, v241
	v_sub_f32_e32 v201, v240, v241
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v163, v163
	v_exp_f32_e32 v164, v164
	v_exp_f32_e32 v177, v177
	v_exp_f32_e32 v178, v178
	v_exp_f32_e32 v201, v201
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v202, 0, v75, s20
	v_cndmask_b32_e64 v75, 0, v160, s19
	v_cndmask_b32_e64 v161, 0, v161, s15
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s20, v183, v183
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[165:168], v138
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v160, 0, v163, s13
	v_cndmask_b32_e64 v163, 0, v164, s11
.Ltmp6:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v212, v75, v161
.Ltmp7:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[169:176], v[64:71], v[8:15]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[169:172], v153
	ds_load_b128 v[173:176], v154
	ds_load_b128 v[197:200], v155
	ds_load_b128 v[205:208], v152
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v213, v160, v163
.Ltmp9:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s11, v163, v163
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v212, v212, v213
.Ltmp11:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[169:176], v[64:71], v[0:7]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v239, v241
	v_sub_f32_e32 v70, v238, v241
	v_sub_f32_e32 v71, v228, v241
	v_sub_f32_e32 v169, v222, v241
	v_sub_f32_e32 v170, v223, v241
	v_sub_f32_e32 v171, v220, v241
	v_sub_f32_e32 v172, v221, v241
	v_sub_f32_e32 v173, v218, v241
	v_sub_f32_e32 v174, v219, v241
	v_sub_f32_e32 v175, v203, v241
	v_sub_f32_e32 v176, v217, v241
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v71, v71
	v_exp_f32_e32 v169, v169
	v_exp_f32_e32 v170, v170
	v_exp_f32_e32 v171, v171
	v_exp_f32_e32 v172, v172
	v_exp_f32_e32 v173, v173
	v_exp_f32_e32 v174, v174
	v_exp_f32_e32 v175, v175
	v_exp_f32_e32 v176, v176
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s25
	v_cndmask_b32_e64 v70, 0, v70, s24
	v_cndmask_b32_e64 v71, 0, v71, s22
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v186, v186, v241
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v164, 0, v169, s17
	v_cndmask_b32_e64 v169, 0, v170, s10
	v_cndmask_b32_e64 v170, 0, v171, s9
	v_cndmask_b32_e64 v171, 0, v172, s8
	v_cndmask_b32_e64 v172, 0, v173, s7
	v_cndmask_b32_e64 v173, 0, v174, s6
	v_cndmask_b32_e64 v174, 0, v175, s5
	v_cndmask_b32_e64 v175, 0, v176, s4
	v_cndmask_b32_e64 v176, 0, v177, s3
	v_cndmask_b32_e64 v177, 0, v178, s1
	v_cndmask_b32_e64 v178, 0, v195, s23
	v_cndmask_b32_e64 v195, 0, v201, s21
.Ltmp12:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v201, v242, v243
.Ltmp13:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v184, v184
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v203, v244, v245 :: v_dual_add_f32 v210, v69, v70
	v_add_f32_e32 v211, v71, v202
.Ltmp15:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v186, v186
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v209, v248, v249
.Ltmp17:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v66.h, v162.h
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v214, v164, v169 :: v_dual_add_f32 v201, v201, v203
	v_add_f32_e32 v210, v210, v211
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_add_f32 v203, v170, v171 :: v_dual_add_f32 v204, v204, v209
	v_add_f32_e32 v209, v172, v173
	v_add_f32_e32 v211, v174, v175
.Ltmp19:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v66.l, v75.h
	v_mov_b16_e64 v64.h, v162.h
	v_mov_b16_e64 v65.h, v162.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v184, 0, v184, s14
	v_cndmask_b32_e64 v186, 0, v186, s12
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v213, v176, v177
.Ltmp21:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v64.l, v69.h
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v203, v214, v203
	v_add_f32_e32 v214, v178, v195
	v_dual_add_f32 v209, v209, v211 :: v_dual_and_b32 v66, 1, v66
.Ltmp23:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v65.l, v71.h
	v_mov_b16_e64 v67.h, v162.h
	v_mov_b16_e64 v68.h, v162.h
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v211, v183, v184
.Ltmp25:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v75, v75
	v_and_b32_e32 v65, 1, v65
	v_add3_u32 v66, v75, v66, 0x7fff
	v_mov_b16_e64 v75.h, v162.h
	v_mov_b16_e64 v67.l, v160.h
	v_mov_b16_e64 v68.l, v164.h
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v213, v213, v214
	v_add_f32_e32 v214, v185, v186
.Ltmp27:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v75.l, v176.h
	v_and_b32_e32 v64, 1, v64
	v_cmp_o_f32_e64 s3, v71, v71
	v_add3_u32 v65, v71, v65, 0x7fff
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v211, v211, v214
.Ltmp29:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v214.h, v162.h
	v_mov_b16_e64 v71.h, v162.h
	v_and_b32_e32 v67, 1, v67
	v_and_b32_e32 v68, 1, v68
	v_mov_b16_e64 v214.l, v170.h
	v_mov_b16_e64 v71.l, v174.h
	v_and_b32_e32 v75, 1, v75
	v_cmp_o_f32_e64 s1, v69, v69
	v_add3_u32 v64, v69, v64, 0x7fff
	v_mov_b16_e64 v69.h, v162.h
	v_cmp_o_f32_e64 s5, v160, v160
	v_cmp_o_f32_e64 s6, v164, v164
	v_add3_u32 v68, v164, v68, 0x7fff
	v_mov_b16_e64 v164.h, v162.h
	v_mov_b16_e64 v69.l, v172.h
	v_cmp_o_f32_e64 s18, v176, v176
	v_mov_b16_e64 v215.l, v178.h
	v_mov_b16_e64 v164.l, v183.h
	v_and_b32_e32 v71, 1, v71
	v_add3_u32 v75, v176, v75, 0x7fff
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v176, v210, v212
.Ltmp31:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v67, v160, v67, 0x7fff
	v_and_b32_e32 v160, 1, v214
	v_cmp_o_f32_e64 s7, v170, v170
	v_cmp_o_f32_e64 s17, v174, v174
	v_and_b32_e32 v215, 1, v215
	v_add3_u32 v71, v174, v71, 0x7fff
	v_add3_u32 v170, v170, v160, 0x7fff
	v_mov_b32_e32 v160, v241
	v_and_b32_e32 v164, 1, v164
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v174, v201, v204 :: v_dual_and_b32 v69, 1, v69
.Ltmp33:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s15, v172, v172
	v_cmp_o_f32_e64 s19, v178, v178
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v164, v183, v164, 0x7fff
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v183, v213, v211
.Ltmp35:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v65.l, 0x7fff, v64.h, s1
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v64, v174, v176
.Ltmp37:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v69, v172, v69, 0x7fff
	v_add3_u32 v172, v178, v215, 0x7fff
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v178, v203, v209
.Ltmp39:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v69.l, 0x7fff, v66.h, s4
	v_mov_b16_e64 v162.l, v70.h
	v_cmp_o_f32_e64 s8, v70, v70
	v_mov_b16_e64 v214.l, v185.h
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v178, v183
.Ltmp41:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v67.l, 0x7fff, v65.h, s3
	v_cndmask_b16 v164.l, 0x7fff, v68.h, s6
	v_cmp_o_f32_e64 s9, v202, v202
	v_cmp_o_f32_e64 s10, v161, v161
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v64, v64, v66
.Ltmp43:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v66, 1, v162
	v_mov_b16_e64 v162.l, v202.h
	v_cndmask_b16 v178.l, 0x7fff, v75.h, s18
	v_cmp_o_f32_e64 s21, v185, v185
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v68, v64, s66, 0xfedcba98 op_sel:[1,0]
.Ltmp45:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v66, v70, v66, 0x7fff
	v_and_b32_e32 v70, 1, v162
	v_mov_b16_e64 v162.l, v161.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v75, v64, v68 :: v_dual_and_b32 v214, 1, v214
.Ltmp47:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v65.h, 0x7fff, v66.h, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v64, v202, v70, 0x7fff
	v_and_b32_e32 v66, 1, v162
	v_mov_b16_e64 v162.l, v163.h
	v_add3_u32 v185, v185, v214, 0x7fff
	v_cndmask_b16 v71.l, 0x7fff, v67.h, s5
	v_cndmask_b16 v185.l, 0x7fff, v69.h, s15
	v_add3_u32 v66, v161, v66, 0x7fff
	v_and_b32_e32 v70, 1, v162
	v_mov_b16_e64 v162.l, v169.h
	v_permlanex16_b32 v68, v65, s66, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v67.h, 0x7fff, v64.h, s9
	v_cndmask_b16 v69.h, 0x7fff, v66.h, s10
	v_add3_u32 v70, v163, v70, 0x7fff
	v_and_b32_e32 v161, 1, v162
	v_mov_b16_e64 v162.l, v171.h
	v_cmp_o_f32_e64 s12, v169, v169
	v_cndmask_b16 v201.l, 0x7fff, v71.h, s17
	v_perm_b32 v64, v68, v65, v115
	v_perm_b32 v65, v68, v65, v116
	v_permlanex16_b32 v68, v67, s66, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v163, v69, s66, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v71.h, 0x7fff, v70.h, s11
	v_add3_u32 v70, v169, v161, 0x7fff
	v_and_b32_e32 v161, 1, v162
	v_mov_b16_e64 v162.l, v173.h
	v_cmp_o_f32_e64 s13, v171, v171
	v_cndmask_b16 v235.l, 0x7fff, v164.h, s20
	v_perm_b32 v66, v68, v67, v115
	v_perm_b32 v67, v68, v67, v116
	v_perm_b32 v68, v163, v69, v115
	v_perm_b32 v69, v163, v69, v116
	v_permlanex16_b32 v163, v71, s66, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v164.h, 0x7fff, v70.h, s12
	v_add3_u32 v161, v171, v161, 0x7fff
	v_and_b32_e32 v169, 1, v162
	v_mov_b16_e64 v162.l, v175.h
	v_cmp_o_f32_e64 s14, v173, v173
	v_cndmask_b16 v234.l, 0x7fff, v172.h, s19
	v_perm_b32 v70, v163, v71, v115
	v_perm_b32 v71, v163, v71, v116
	v_permlanex16_b32 v163, v164, s66, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v172.h, 0x7fff, v161.h, s13
	v_add3_u32 v161, v173, v169, 0x7fff
	v_and_b32_e32 v171, 1, v162
	v_mov_b16_e64 v162.l, v177.h
	v_cmp_o_f32_e64 s16, v175, v175
	v_cndmask_b16 v172.l, 0x7fff, v170.h, s7
	v_cndmask_b16 v236.l, 0x7fff, v185.h, s21
	v_perm_b32 v169, v163, v164, v115
	v_perm_b32 v170, v163, v164, v116
	v_cndmask_b16 v185.h, 0x7fff, v161.h, s14
	v_add3_u32 v161, v175, v171, 0x7fff
	v_and_b32_e32 v164, 1, v162
	v_mov_b16_e64 v162.l, v195.h
	v_cmp_o_f32_e64 s22, v177, v177
	v_permlanex16_b32 v163, v172, s66, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v201.h, 0x7fff, v161.h, s16
	v_add3_u32 v161, v177, v164, 0x7fff
	v_and_b32_e32 v164, 1, v162
	v_mov_b16_e64 v162.l, v184.h
	v_cmp_o_f32_e64 s23, v195, v195
	v_perm_b32 v171, v163, v172, v115
	v_cndmask_b16 v178.h, 0x7fff, v161.h, s22
	v_add3_u32 v161, v195, v164, 0x7fff
	v_and_b32_e32 v164, 1, v162
	v_mov_b16_e64 v162.l, v186.h
	v_perm_b32 v172, v163, v172, v116
	v_permlanex16_b32 v163, v185, s66, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v183, v178, s66, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s24, v184, v184
	v_and_b32_e32 v162, 1, v162
	v_cmp_o_f32_e64 s25, v186, v186
	v_perm_b32 v173, v163, v185, v115
	v_perm_b32 v174, v163, v185, v116
	v_cndmask_b16 v234.h, 0x7fff, v161.h, s23
	v_add3_u32 v161, v184, v164, 0x7fff
	v_perm_b32 v177, v183, v178, v115
	v_perm_b32 v178, v183, v178, v116
	v_add3_u32 v237, v186, v162, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[183:186], v134
	ds_load_b128 v[209:212], v135
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v163, v201, s66, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[16:23], v[187:194], v[64:71], v[16:23]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[187:190], v142
	ds_load_b128 v[191:194], v143
	ds_load_b128 v[217:220], v157
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v235.h, 0x7fff, v161.h, s24
	v_perm_b32 v175, v163, v201, v115
	v_perm_b32 v176, v163, v201, v116
	v_cndmask_b16 v236.h, 0x7fff, v237.h, s25
	v_permlanex16_b32 v195, v234, s66, 0xfedcba98 op_sel:[1,0]
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v75, v233, v250
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[179:186], v[64:71], v[24:31]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[179:182], v148
	ds_load_b128 v[183:186], v149
	ds_load_b128 v[201:204], v156
	ds_load_b128 v[213:216], v136
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[187:194], v[169:176], v[16:23]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[179:186], v[64:71], v[8:15]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[197:204], v[64:71], v[0:7]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[68:71], v150
	ds_load_b128 v[221:224], v158
	ds_load_b128 v[161:164], v137
	ds_load_b128 v[64:67], v196 offset:4096
	ds_load_b128 v[225:228], v196 offset:6144
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[209:216], v[169:176], v[24:31]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[209:212], v144
	ds_load_b128 v[213:216], v145
	ds_load_b128 v[201:204], v151
	ds_load_b128 v[229:232], v159
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v182, v235, s66, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v184, v236, s66, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v179, v195, v234, v115
	v_perm_b32 v180, v195, v234, v116
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v181, v182, v235, v115
	v_perm_b32 v182, v182, v235, v116
	v_perm_b32 v183, v184, v236, v115
	v_perm_b32 v184, v184, v236, v116
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(7)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[217:224], v[169:176], v[0:7]
	s_waitcnt lgkmcnt(6)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[161:168], v[177:184], v[24:31]
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[64:71], v[169:176], v[8:15]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[209:216], v[177:184], v[16:23]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[225:232], v[177:184], v[0:7]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[201:208], v[177:184], v[8:15]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v7, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v6, v7
	v_mov_b32_e32 v5, v7
	v_mov_b32_e32 v4, v7
	v_mov_b32_e32 v3, v7
	v_mov_b32_e32 v2, v7
	v_mov_b32_e32 v1, v7
	v_mov_b32_e32 v0, v7
	v_mov_b32_e32 v15, v7
	v_mov_b32_e32 v14, v7
	v_mov_b32_e32 v13, v7
	v_mov_b32_e32 v12, v7
	v_mov_b32_e32 v11, v7
	v_mov_b32_e32 v10, v7
	v_mov_b32_e32 v9, v7
	v_mov_b32_e32 v8, v7
	v_mov_b32_e32 v23, v7
	v_mov_b32_e32 v22, v7
	v_mov_b32_e32 v21, v7
	v_mov_b32_e32 v20, v7
	v_mov_b32_e32 v19, v7
	v_mov_b32_e32 v18, v7
	v_mov_b32_e32 v17, v7
	v_mov_b32_e32 v16, v7
	v_mov_b32_e32 v31, v7
	v_mov_b32_e32 v30, v7
	v_mov_b32_e32 v29, v7
	v_mov_b32_e32 v28, v7
	v_mov_b32_e32 v27, v7
	v_mov_b32_e32 v26, v7
	v_mov_b32_e32 v25, v7
	v_mov_b32_e32 v24, v7
	v_mov_b32_e32 v75, v7
.LBB0_4:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_scale_f32 v32, null, v75, v75, v24
	v_div_scale_f32 v33, null, v75, v75, v25
	v_div_scale_f32 v34, null, v75, v75, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v35, v32
	v_rcp_f32_e32 v36, v33
	v_div_scale_f32 v38, vcc_lo, v24, v75, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v39, s0, v25, v75, v25
	v_div_scale_f32 v42, null, v75, v75, v27
	v_div_scale_f32 v48, s3, v27, v75, v27
	v_fma_f32 v40, -v32, v35, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v41, -v33, v36, 1.0
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s49, s49, 0xffff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v34, v37, 1.0
	s_mov_b32 s51, 0x31027000
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v35, v40, v35 :: v_dual_fmac_f32 v36, v41, v36
	v_div_scale_f32 v40, s1, v26, v75, v26
	v_fmac_f32_e32 v37, v43, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v43, v38, v35 :: v_dual_mul_f32 v44, v39, v36
	v_rcp_f32_e32 v41, v42
	v_fma_f32 v46, -v32, v43, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v33, v44, v39
	v_dual_fmac_f32 v43, v46, v35 :: v_dual_fmac_f32 v44, v47, v36
	v_div_scale_f32 v46, null, v75, v75, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v42, v41, 1.0
	v_fma_f32 v32, -v32, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v33, v44, v39
	v_rcp_f32_e32 v38, v46
	v_div_scale_f32 v39, null, v75, v75, v29
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v32, v32, v35, v43
	s_mov_b32 vcc_lo, s0
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v75
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v36, v44
	v_rcp_f32_e32 v43, v39
	v_div_scale_f32 v44, null, v75, v75, v31
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v46, v38, 1.0
	v_div_fixup_f32 v25, v33, v75, v25
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v47, v44
	v_div_fixup_f32 v24, v32, v75, v24
	v_fmac_f32_e32 v38, v36, v38
	v_mul_f32_e32 v45, v40, v37
	v_div_scale_f32 v36, null, v75, v75, v30
	v_fmac_f32_e32 v41, v49, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v34, v45, v40
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v45, v50, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v34, v45, v40
	v_fma_f32 v34, -v39, v43, 1.0
	v_div_fmas_f32 v33, v33, v37, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v43, v34, v43
	v_rcp_f32_e32 v34, v36
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v26, v33, v75, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v45, -v36, v34, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v35, v48, v41 :: v_dual_fmac_f32 v34, v45, v34
	v_fma_f32 v32, -v42, v35, v48
	v_fma_f32 v45, -v44, v47, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v45, v47
	v_div_scale_f32 v45, s5, v31, v75, v31
	v_fmac_f32_e32 v35, v32, v41
	v_div_scale_f32 v32, s4, v28, v75, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v37, -v42, v35, v48
	v_mul_f32_e32 v40, v32, v38
	v_div_scale_f32 v42, s1, v29, v75, v29
	v_div_scale_f32 v48, null, v75, v75, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v35, v37, v41, v35
	v_fma_f32 v37, -v46, v40, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v41, v42, v43
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v27, v35, v75, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v37, v38
	v_div_scale_f32 v37, null, v75, v75, v16
	v_fma_f32 v33, -v39, v41, v42
	v_div_scale_f32 v35, s3, v30, v75, v30
	v_fma_f32 v32, -v46, v40, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v46, v37
	v_fmac_f32_e32 v41, v33, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v32, v38, v40
	v_mul_f32_e32 v40, v45, v47
	v_fma_f32 v38, -v39, v41, v42
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v28, v32, v75, v28
	v_fma_f32 v42, -v37, v46, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v46, v42, v46
	v_div_fmas_f32 v38, v38, v43, v41
	v_fma_f32 v41, -v44, v40, v45
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v42, s1, v16, v75, v16
	v_div_scale_f32 v43, null, v75, v75, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v41, v47
	v_div_scale_f32 v41, s3, v17, v75, v17
	v_mul_f32_e32 v33, v35, v34
	v_div_fixup_f32 v29, v38, v75, v29
	v_div_scale_f32 v38, null, v75, v75, v18
	v_fma_f32 v39, -v36, v33, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v33, v39, v34
	v_rcp_f32_e32 v39, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v36, v33, v35
	v_div_fmas_f32 v32, v32, v34, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v48, v39, 1.0
	v_fma_f32 v33, -v44, v40, v45
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v45, null, v75, v75, v21
	v_fmac_f32_e32 v39, v36, v39
	v_mul_f32_e32 v35, v42, v46
	v_rcp_f32_e32 v36, v38
	v_div_fixup_f32 v30, v32, v75, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v34, -v37, v35, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v35, v34, v46
	v_rcp_f32_e32 v34, v43
	v_fma_f32 v44, -v38, v36, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v37, v35, v42
	v_div_scale_f32 v37, s4, v18, v75, v18
	v_fmac_f32_e32 v36, v44, v36
	v_div_scale_f32 v44, null, v75, v75, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v43, v34, 1.0
	v_fmac_f32_e32 v34, v42, v34
	v_div_fmas_f32 v33, v33, v47, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v42, s1, v19, v75, v19
	v_div_fmas_f32 v32, v32, v46, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v31, v33, v75, v31
	v_rcp_f32_e32 v35, v44
	v_mul_f32_e32 v46, v42, v34
	v_mul_f32_e32 v40, v41, v39
	v_div_fixup_f32 v16, v32, v75, v16
	v_rcp_f32_e32 v47, v45
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v48, v40, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v33, v39
	v_mul_f32_e32 v33, v37, v36
	v_fma_f32 v32, -v48, v40, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v38, v33, v37
	v_fma_f32 v48, -v44, v35, 1.0
	v_div_fmas_f32 v32, v32, v39, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v41, v36
	v_fma_f32 v39, -v43, v46, v42
	v_fmac_f32_e32 v35, v48, v35
	v_div_scale_f32 v40, s3, v20, v75, v20
	v_fma_f32 v41, -v45, v47, 1.0
	v_div_fixup_f32 v17, v32, v75, v17
	v_fma_f32 v32, -v38, v33, v37
	v_fmac_f32_e32 v46, v39, v34
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v37, v40, v35
	v_fmac_f32_e32 v47, v41, v47
	v_div_scale_f32 v38, s5, v21, v75, v21
	v_div_fmas_f32 v32, v32, v36, v33
	v_fma_f32 v33, -v43, v46, v42
	v_div_scale_f32 v43, null, v75, v75, v23
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v36, -v44, v37, v40
	v_mul_f32_e32 v42, v38, v47
	v_div_fmas_f32 v33, v33, v34, v46
	v_rcp_f32_e32 v34, v43
	v_div_fixup_f32 v18, v32, v75, v18
	v_fmac_f32_e32 v37, v36, v35
	v_fma_f32 v36, -v45, v42, v38
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v39, null, v75, v75, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v44, v37, v40
	v_fmac_f32_e32 v42, v36, v47
	v_div_fixup_f32 v19, v33, v75, v19
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v36, -v43, v34, 1.0
	v_rcp_f32_e32 v41, v39
	v_div_fmas_f32 v32, v32, v35, v37
	v_fma_f32 v35, -v45, v42, v38
	v_div_scale_f32 v38, s3, v23, v75, v23
	v_fmac_f32_e32 v34, v36, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v20, v32, v75, v20
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v45, null, v75, v75, v9
	v_mul_f32_e32 v44, v38, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v39, v41, 1.0
	v_div_scale_f32 v33, s1, v22, v75, v22
	v_div_scale_f32 v36, null, v75, v75, v8
	v_fma_f32 v32, -v43, v44, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	v_cndmask_b32_e64 v18, 0, v18, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v40, v36
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v32, v34
	v_div_fmas_f32 v35, v35, v47, v42
	v_div_scale_f32 v32, s4, v8, v75, v8
	v_fmac_f32_e32 v41, v46, v41
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v21, v35, v75, v21
	v_rcp_f32_e32 v35, v45
	v_div_scale_f32 v47, null, v75, v75, v11
	v_mul_f32_e32 v37, v33, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	v_cndmask_b32_e64 v21, 0, v21, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v49, v47
	v_fma_f32 v42, -v39, v37, v33
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v45, v35, 1.0
	v_fmac_f32_e32 v35, v46, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v37, v42, v41
	v_fma_f32 v42, -v36, v40, 1.0
	v_fma_f32 v33, -v39, v37, v33
	v_div_scale_f32 v39, null, v75, v75, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v42, v40
	v_div_fmas_f32 v33, v33, v41, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v42, v39
	v_fma_f32 v37, -v43, v44, v38
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v41, s1, v9, v75, v9
	v_div_fixup_f32 v22, v33, v75, v22
	v_div_fmas_f32 v34, v37, v34, v44
	v_mul_f32_e32 v38, v32, v40
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v39, v42, 1.0
	v_div_fixup_f32 v23, v34, v75, v23
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v46, -v36, v38, v32
	v_fma_f32 v34, -v47, v49, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, s5, v10, v75, v10
	v_fmac_f32_e32 v38, v46, v40
	v_fmac_f32_e32 v49, v34, v49
	v_div_scale_f32 v34, s3, v11, v75, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v32, -v36, v38, v32
	v_div_scale_f32 v36, null, v75, v75, v12
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v39, v44, v43
	v_div_fmas_f32 v32, v32, v40, v38
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v44, v33, v42
	v_mul_f32_e32 v48, v41, v35
	v_rcp_f32_e32 v33, v36
	v_div_fixup_f32 v8, v32, v75, v8
	v_fma_f32 v37, -v45, v48, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v48, v37, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v40, -v36, v33, 1.0
	v_fma_f32 v37, -v45, v48, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v40, v33
	v_div_scale_f32 v40, s1, v12, v75, v12
	v_div_fmas_f32 v35, v37, v35, v48
	v_fma_f32 v37, -v39, v44, v43
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v32, v40, v33
	v_div_scale_f32 v39, null, v75, v75, v13
	v_div_fmas_f32 v37, v37, v42, v44
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v9, v35, v75, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v39
	v_div_fixup_f32 v10, v37, v75, v10
	v_div_scale_f32 v37, null, v75, v75, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v43, v37
	v_mul_f32_e32 v38, v34, v49
	v_fma_f32 v35, -v39, v41, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v47, v38, v34
	v_fmac_f32_e32 v38, v42, v49
	v_fma_f32 v42, -v36, v32, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v34, -v47, v38, v34
	v_fmac_f32_e32 v32, v42, v33
	v_div_scale_f32 v42, null, v75, v75, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v34, v34, v49, v38
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v44, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v11, v34, v75, v11
	v_fma_f32 v34, -v36, v32, v40
	v_fma_f32 v40, -v37, v43, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v34, v33, v32
	v_fmac_f32_e32 v43, v40, v43
	v_div_scale_f32 v40, null, v75, v75, v1
	v_div_scale_f32 v33, null, v75, v75, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v12, v32, v75, v12
	v_fma_f32 v32, -v42, v44, 1.0
	v_fmac_f32_e32 v41, v35, v41
	v_div_scale_f32 v35, s4, v13, v75, v13
	v_rcp_f32_e32 v46, v40
	v_fmac_f32_e32 v44, v32, v44
	v_div_scale_f32 v34, s1, v14, v75, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v38, v35, v41
	v_div_scale_f32 v32, s3, v15, v75, v15
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v47, s4, v0, v75, v0
	v_fma_f32 v36, -v39, v38, v35
	v_fma_f32 v48, -v40, v46, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v46, v48, v46
	v_fmac_f32_e32 v38, v36, v41
	v_rcp_f32_e32 v36, v33
	v_div_scale_f32 v48, s5, v1, v75, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v35, -v39, v38, v35
	v_mul_f32_e32 v39, v34, v43
	v_div_fmas_f32 v35, v35, v41, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v33, v36, 1.0
	v_fma_f32 v38, -v37, v39, v34
	v_mul_f32_e32 v41, v32, v44
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v13, v35, v75, v13
	v_fmac_f32_e32 v36, v45, v36
	v_div_scale_f32 v45, null, v75, v75, v2
	v_fmac_f32_e32 v39, v38, v43
	v_fma_f32 v38, -v42, v41, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v50, v47, v36
	v_rcp_f32_e32 v49, v45
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v37, v39, v34
	v_fmac_f32_e32 v41, v38, v44
	v_fma_f32 v35, -v33, v50, v47
	v_mul_f32_e32 v37, v48, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v34, v34, v43, v39
	v_fma_f32 v32, -v42, v41, v32
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v38, -v45, v49, 1.0
	v_fmac_f32_e32 v50, v35, v36
	v_fma_f32 v35, -v40, v37, v48
	v_div_fmas_f32 v32, v32, v44, v41
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v49, v38, v49
	v_fma_f32 v33, -v33, v50, v47
	v_fmac_f32_e32 v37, v35, v46
	v_div_scale_f32 v38, s1, v2, v75, v2
	v_div_scale_f32 v39, null, v75, v75, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v33, v33, v36, v50
	v_fma_f32 v36, -v40, v37, v48
	s_mov_b32 vcc_lo, s5
	v_mul_f32_e32 v35, v38, v49
	v_div_fixup_f32 v15, v32, v75, v15
	v_div_fixup_f32 v0, v33, v75, v0
	v_div_fmas_f32 v36, v36, v46, v37
	v_div_scale_f32 v33, null, v75, v75, v4
	v_fma_f32 v40, -v45, v35, v38
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v1, v36, v75, v1
	v_div_scale_f32 v36, null, v75, v75, v6
	v_fmac_f32_e32 v35, v40, v49
	v_rcp_f32_e32 v41, v39
	v_div_fixup_f32 v14, v34, v75, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v36
	v_div_scale_f32 v43, null, v75, v75, v7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v14, 0, v14, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v39, v41, 1.0
	v_fma_f32 v47, -v36, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v40, v47, v40
	v_fma_f32 v32, -v45, v35, v38
	v_rcp_f32_e32 v45, v43
	v_div_scale_f32 v47, s4, v6, v75, v6
	v_div_fmas_f32 v32, v32, v49, v35
	v_rcp_f32_e32 v35, v33
	v_div_scale_f32 v37, vcc_lo, v3, v75, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v51, v47, v40
	v_div_fixup_f32 v2, v32, v75, v2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v49, -v43, v45, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v32, -v33, v35, 1.0
	v_fmac_f32_e32 v45, v49, v45
	v_div_scale_f32 v49, s5, v7, v75, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v35, v32, v35
	v_div_scale_f32 v32, s1, v4, v75, v4
	v_fmac_f32_e32 v41, v34, v41
	v_div_scale_f32 v34, null, v75, v75, v5
	v_mul_f32_e32 v48, v32, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v42, v37, v41
	v_rcp_f32_e32 v38, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v39, v42, v37
	v_fmac_f32_e32 v42, v46, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v44, -v34, v38, 1.0
	v_fma_f32 v46, -v33, v48, v32
	v_fma_f32 v37, -v39, v42, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v44, v38
	v_div_scale_f32 v44, s3, v5, v75, v5
	v_fmac_f32_e32 v48, v46, v35
	v_fma_f32 v46, -v36, v51, v47
	v_mul_f32_e32 v52, v49, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v50, v44, v38
	v_div_fmas_f32 v37, v37, v41, v42
	v_fma_f32 v32, -v33, v48, v32
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v51, v46, v40
	v_fma_f32 v39, -v34, v50, v44
	v_fma_f32 v33, -v43, v52, v49
	v_div_fmas_f32 v32, v32, v35, v48
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v3, v37, v75, v3
	v_fmac_f32_e32 v50, v39, v38
	v_fmac_f32_e32 v52, v33, v45
	v_div_fixup_f32 v4, v32, v75, v4
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_or_b32_e32 v32, s50, v108
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v36, v51, v47
	v_fma_f32 v34, -v34, v50, v44
	v_fma_f32 v35, -v43, v52, v49
	s_mov_b32 s50, 0x7ffffffe
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v32, s61, v32
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v38, v50
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v40, v51
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v5, v34, v75, v5
	v_div_fmas_f32 v35, v35, v45, v52
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s61, v105
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v33, v75, v6
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v33, v32, v105, 2
	v_add_lshl_u32 v34, v32, v107, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v35, v75, v7
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v35, v32, v106, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	s_clause 0x2
	buffer_store_b32 v24, v33, s[48:51], 0 offen
	buffer_store_b32 v25, v34, s[48:51], 0 offen
	buffer_store_b32 v26, v35, s[48:51], 0 offen
	v_add_lshl_u32 v24, v32, v104, 2
	v_add_lshl_u32 v25, v32, v103, 2
	v_add_lshl_u32 v26, v32, v102, 2
	v_add_lshl_u32 v33, v32, v101, 2
	v_add_lshl_u32 v34, v32, v100, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s61, v99
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	s_clause 0x4
	buffer_store_b32 v27, v24, s[48:51], 0 offen
	buffer_store_b32 v28, v25, s[48:51], 0 offen
	buffer_store_b32 v29, v26, s[48:51], 0 offen
	buffer_store_b32 v30, v33, s[48:51], 0 offen
	buffer_store_b32 v31, v34, s[48:51], 0 offen
	v_add_lshl_u32 v24, v32, v99, 2
	v_add_lshl_u32 v25, v32, v98, 2
	v_add_lshl_u32 v26, v32, v97, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v27, v32, v96, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_lshl_u32 v28, v32, v95, 2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	s_clause 0x2
	buffer_store_b32 v16, v24, s[48:51], 0 offen
	buffer_store_b32 v17, v25, s[48:51], 0 offen
	buffer_store_b32 v18, v26, s[48:51], 0 offen
	v_add_lshl_u32 v17, v32, v94, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s61, v91
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v16, 0x80000000, v28, vcc_lo
	buffer_store_b32 v19, v27, s[48:51], 0 offen
	v_add_lshl_u32 v18, v32, v93, 2
	v_add_lshl_u32 v19, v32, v92, 2
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	buffer_store_b32 v20, v16, s[48:51], 0 offen
	v_add_lshl_u32 v16, v32, v91, 2
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v21, v17, s[48:51], 0 offen
	v_add_lshl_u32 v17, v32, v90, 2
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	s_clause 0x2
	buffer_store_b32 v22, v18, s[48:51], 0 offen
	buffer_store_b32 v23, v19, s[48:51], 0 offen
	buffer_store_b32 v8, v16, s[48:51], 0 offen
	v_add_lshl_u32 v8, v32, v89, 2
	v_cndmask_b32_e32 v16, 0x80000000, v17, vcc_lo
	v_add_lshl_u32 v17, v32, v88, 2
	v_add_lshl_u32 v18, v32, v87, 2
	v_add_lshl_u32 v19, v32, v86, 2
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	buffer_store_b32 v9, v16, s[48:51], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v16, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s61, v83
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v10, v8, s[48:51], 0 offen
	v_add_lshl_u32 v8, v32, v85, 2
	s_clause 0x2
	buffer_store_b32 v11, v9, s[48:51], 0 offen
	buffer_store_b32 v12, v16, s[48:51], 0 offen
	buffer_store_b32 v13, v17, s[48:51], 0 offen
	v_add_lshl_u32 v9, v32, v84, 2
	v_add_lshl_u32 v10, v32, v83, 2
	v_add_lshl_u32 v11, v32, v82, 2
	v_add_lshl_u32 v12, v32, v81, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v14, v8, s[48:51], 0 offen
	buffer_store_b32 v15, v9, s[48:51], 0 offen
	buffer_store_b32 v0, v10, s[48:51], 0 offen
	buffer_store_b32 v1, v11, s[48:51], 0 offen
	buffer_store_b32 v2, v12, s[48:51], 0 offen
	v_add_lshl_u32 v0, v32, v78, 2
	v_add_lshl_u32 v1, v32, v79, 2
	v_add_lshl_u32 v2, v32, v77, 2
	v_add_lshl_u32 v8, v32, v76, 2
	v_add_lshl_u32 v9, v32, v80, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	s_clause 0x4
	buffer_store_b32 v3, v0, s[48:51], 0 offen
	buffer_store_b32 v4, v1, s[48:51], 0 offen
	buffer_store_b32 v5, v2, s[48:51], 0 offen
	buffer_store_b32 v6, v8, s[48:51], 0 offen
	buffer_store_b32 v7, v9, s[48:51], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp48:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 251
		.amdhsa_next_free_sgpr 68
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_vgpr, 251
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.numbered_sgpr, 68
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11256
; TotalNumSgprs: 70
; NumVgprs: 251
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 70
; NumVGPRsForWavesPerEU: 251
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
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     70
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     251
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
