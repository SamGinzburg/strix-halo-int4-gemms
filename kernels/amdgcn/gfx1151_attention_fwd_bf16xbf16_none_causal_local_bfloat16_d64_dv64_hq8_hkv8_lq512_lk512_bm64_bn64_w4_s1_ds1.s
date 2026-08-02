	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b64 s[42:43], s[0:1], 0x5c
	s_load_b32 s4, s[0:1], 0x84
	s_load_b64 s[56:57], s[0:1], 0x0
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v33, 15, v0
.Ltmp0:
	.loc	1 787 79 prologue_end           ; attention.py:787:79
	v_and_b32_e32 v66, 7, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 3, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s5, s2, 6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v7, v8
	v_dual_mov_b32 v6, v8 :: v_dual_lshlrev_b32 v65, 3, v66
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s5, v1
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s54, s3, 9
	s_mov_b32 s59, 0x31027000
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s41, s5, s54
	s_mov_b32 s58, 0x7ffffffe
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x200, v2
	s_clause 0x1
	s_load_b64 s[8:9], s[0:1], 0x7c
	s_load_b64 s[52:53], s[0:1], 0x38
	v_dual_mov_b32 v5, v8 :: v_dual_and_b32 v34, 0x60, v0
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[97:98], null, s42, v1, v[65:66]
	s_mul_i32 s3, s42, s41
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s42, v65
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s57, s57, 0xffff
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v35, 1, v34
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v26, 1, v0
	v_lshlrev_b32_e32 v25, 4, v0
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[98:99], null, s42, 48, v[97:98]
	v_lshl_add_u32 v103, s42, 4, v97
	v_lshl_add_u32 v104, s42, 5, v97
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v1, v97, s3, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v101, v35, v33
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v2, v103, s3, 1
	v_add_lshl_u32 v3, v104, s3, 1
	v_add_lshl_u32 v4, v98, s3, 1
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v35, s5, v101
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	s_clause 0x3
	buffer_load_b128 v[36:39], v1, s[56:59], 0 offen
	buffer_load_b128 v[40:43], v2, s[56:59], 0 offen
	buffer_load_b128 v[44:47], v3, s[56:59], 0 offen
	buffer_load_b128 v[48:51], v4, s[56:59], 0 offen
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s2, s5, s8
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s5, s4, s5
	v_mov_b32_e32 v1, v8
	s_add_i32 s5, s5, 64
	v_dual_mov_b32 v15, v8 :: v_dual_and_b32 v52, 0x70, v26
	s_add_i32 s6, s5, s9
	.loc	1 810 25                        ; attention.py:810:25
	s_min_i32 s5, s5, 0x200
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s6, s6, 0x200
	.loc	1 811 35                        ; attention.py:811:35
	s_add_i32 s5, s5, 63
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s6, s6, 63
	.loc	1 811 34                        ; attention.py:811:34
	s_ashr_i32 s7, s5, 31
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s10, s6, 31
	v_dual_mov_b32 v3, v8 :: v_dual_and_b32 v102, 16, v0
	v_mov_b32_e32 v4, v8
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v52, v25, v52
	.loc	1 811 34                        ; attention.py:811:34
	s_lshr_b32 s7, s7, 26
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s10, s10, 26
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s2, s2, s4
	.loc	1 811 34                        ; attention.py:811:34
	s_add_i32 s5, s5, s7
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s6, s6, s10
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s2, s2, 0
	.loc	1 811 33                        ; attention.py:811:33
	s_and_not1_b32 s5, s5, 63
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s6, s6, 63
	v_dual_mov_b32 v2, v8 :: v_dual_add_nc_u32 v105, 0, v52
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v100, v8
	v_cmp_eq_u32_e64 s3, 0, v102
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s55, s2, 0x7fffffc0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x200, v35
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s64, s6, s5
	s_mov_b32 s44, 0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s55, s64
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v105, v[36:39]
	s_waitcnt vmcnt(2)
	ds_store_b128 v105, v[40:43] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v105, v[44:47] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v105, v[48:51] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v1, 7, v33
	v_lshlrev_b32_e32 v2, 6, v34
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v4, s4, v35
	v_lshlrev_b32_e32 v3, 4, v66
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_and_b32_e32 v5, 0x78, v0
	s_clause 0x1
	s_load_b32 s10, s[0:1], 0x64
	s_load_b128 s[4:7], s[0:1], 0x8
	.loc	1 892 65 is_stmt 1              ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s43, v65
	.loc	1 788 26                        ; attention.py:788:26
	v_or3_b32 v2, v1, v2, v3
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v6, s9, v4
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v106, s8, v4
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v154, 4, v102
	s_lshl_b32 s66, s43, 1
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v7, 0x70, v2, 0
	v_xad_u32 v8, 0x60, v2, 0
	ds_load_b128 v[37:40], v7
	ds_load_b128 v[33:36], v8
	v_xad_u32 v7, v2, 16, 0
	v_xad_u32 v9, 0x50, v2, 0
	v_xad_u32 v10, v2, 64, 0
	v_xad_u32 v11, v2, 48, 0
	v_xad_u32 v12, v2, 32, 0
	v_add_nc_u32_e32 v2, 0, v2
	ds_load_b128 v[61:64], v7
	ds_load_b128 v[57:60], v2
	v_mov_b32_e32 v2, 0x5410
	ds_load_b128 v[45:48], v9
	ds_load_b128 v[41:44], v10
	v_or_b32_e32 v107, v3, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 1, v5
	v_mov_b32_e32 v9, 0x7632
	v_cndmask_b32_e64 v2, 0x1054, v2, s3
	v_xor_b32_e32 v3, v3, v5
	v_bfe_i32 v5, v0, 3, 1
	.loc	1 788 26                        ; attention.py:788:26
	ds_load_b128 v[53:56], v11
	ds_load_b128 v[49:52], v12
	v_cndmask_b32_e64 v9, 0x3276, v9, s3
	v_lshl_or_b32 v2, v2, 8, v2
	v_lshl_or_b32 v0, v66, 10, v3
	v_mul_u32_u24_e32 v3, 0x90, v66
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[99:100], null, s43, v1, v[65:66]
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v2, 0x540054, v2
	v_lshl_or_b32 v9, v9, 8, v9
	v_xor_b32_e32 v7, 16, v107
	v_xor_b32_e32 v8, 32, v107
	v_xor_b32_e32 v10, 48, v107
	v_lshl_or_b32 v2, v2, 4, v2
	v_and_b32_e32 v1, 0x760076, v9
	v_xor_b32_e32 v11, 64, v107
	v_xor_b32_e32 v12, 0x50, v107
	v_xor_b32_e32 v13, 0x60, v107
	v_and_b32_e32 v108, 0x5040504, v2
	v_and_b32_e32 v2, 0x410, v5
	v_xor_b32_e32 v14, 0x70, v107
	v_xor_b32_e32 v5, 0x120, v0
	v_xor_b32_e32 v9, 0x1b0, v0
	v_xor_b32_e32 v15, 0x360, v0
	v_xor_b32_e32 v110, v3, v2
	v_xor_b32_e32 v2, 0x240, v0
	v_xor_b32_e32 v3, 0x2d0, v0
	v_xor_b32_e32 v16, 0x3f0, v0
	v_add_nc_u32_e32 v112, 0, v7
	v_xor_b32_e32 v30, 0x840, v110
	v_xor_b32_e32 v17, 16, v110
	v_xor_b32_e32 v18, 32, v110
	v_xor_b32_e32 v19, 48, v110
	v_xor_b32_e32 v20, 64, v110
	v_add_nc_u32_e32 v138, 0, v30
	v_mov_b32_e32 v30, v25
	v_lshl_or_b32 v1, v1, 4, v1
	v_xor_b32_e32 v21, 0x50, v110
	v_xor_b32_e32 v22, 0x60, v110
	v_xor_b32_e32 v23, 0x70, v110
	v_xor_b32_e32 v24, 0x820, v110
	v_and_b32_e32 v109, 0x7060706, v1
	v_xor_b32_e32 v1, 0x90, v0
	v_xor_b32_e32 v26, 0x830, v110
	v_xor_b32_e32 v27, 0x810, v110
	v_xor_b32_e32 v28, 0x860, v110
	v_xor_b32_e32 v29, 0x870, v110
	v_xor_b32_e32 v31, 0x850, v110
	v_xor_b32_e32 v32, 0x1040, v110
	v_xor_b32_e32 v65, 0x1050, v110
	v_xor_b32_e32 v66, 0x1060, v110
	v_xor_b32_e32 v67, 0x1070, v110
	v_xor_b32_e32 v68, 0x1010, v110
	v_xor_b32_e32 v69, 0x1020, v110
	v_xor_b32_e32 v70, 0x1030, v110
	v_xor_b32_e32 v71, 0x1860, v110
	v_xor_b32_e32 v72, 0x1870, v110
	v_xor_b32_e32 v73, 0x1840, v110
	v_xor_b32_e32 v74, 0x1850, v110
	v_xor_b32_e32 v75, 0x1820, v110
	v_xor_b32_e32 v76, 0x1830, v110
	v_xor_b32_e32 v77, 0x1810, v110
	v_add_nc_u32_e32 v113, 0, v8
	v_add_nc_u32_e32 v114, 0, v10
	v_add_nc_u32_e32 v115, 0, v11
	v_add_nc_u32_e32 v116, 0, v12
	v_add_nc_u32_e32 v117, 0, v13
	v_dual_mov_b32 v11, v25 :: v_dual_add_nc_u32 v118, 0, v14
	v_add_nc_u32_e32 v119, 0, v1
	v_dual_mov_b32 v13, v25 :: v_dual_add_nc_u32 v120, 0, v5
	v_dual_mov_b32 v10, v25 :: v_dual_add_nc_u32 v121, 0, v9
	v_add_nc_u32_e32 v122, 0, v2
	v_dual_mov_b32 v12, v25 :: v_dual_add_nc_u32 v123, 0, v3
	v_dual_mov_b32 v1, v25 :: v_dual_add_nc_u32 v124, 0, v15
	v_dual_mov_b32 v14, v25 :: v_dual_add_nc_u32 v125, 0, v16
	v_dual_mov_b32 v3, v25 :: v_dual_add_nc_u32 v126, 0, v17
	v_dual_mov_b32 v16, v25 :: v_dual_add_nc_u32 v127, 0, v18
	v_dual_mov_b32 v5, v25 :: v_dual_add_nc_u32 v128, 0, v19
	v_dual_mov_b32 v2, v25 :: v_dual_add_nc_u32 v129, 0, v20
	v_dual_mov_b32 v7, v25 :: v_dual_add_nc_u32 v130, 0, v21
	v_add_nc_u32_e32 v131, 0, v22
	v_add_nc_u32_e32 v132, 0, v23
	v_add_nc_u32_e32 v133, 0, v24
	v_add_nc_u32_e32 v134, 0, v26
	v_dual_mov_b32 v8, v25 :: v_dual_add_nc_u32 v135, 0, v27
	v_add_nc_u32_e32 v136, 0, v28
	v_dual_mov_b32 v156, 0xff800000 :: v_dual_add_nc_u32 v137, 0, v29
	v_dual_mov_b32 v100, v25 :: v_dual_add_nc_u32 v139, 0, v31
	v_add_nc_u32_e32 v140, 0, v32
	v_add_nc_u32_e32 v141, 0, v65
	v_add_nc_u32_e32 v142, 0, v66
	v_add_nc_u32_e32 v143, 0, v67
	v_add_nc_u32_e32 v144, 0, v68
	v_add_nc_u32_e32 v145, 0, v69
	v_add_nc_u32_e32 v146, 0, v70
	v_add_nc_u32_e32 v147, 0, v71
	v_add_nc_u32_e32 v148, 0, v72
	v_add_nc_u32_e32 v149, 0, v73
	v_add_nc_u32_e32 v150, 0, v74
	v_add_nc_u32_e32 v151, 0, v75
	v_add_nc_u32_e32 v152, 0, v76
	v_dual_mov_b32 v26, v25 :: v_dual_add_nc_u32 v153, 0, v77
	v_mov_b32_e32 v27, v25
	v_min_i32_e32 v111, v4, v6
	v_mov_b32_e32 v28, v25
	v_mov_b32_e32 v29, v25
	v_mov_b32_e32 v31, v25
	v_mov_b32_e32 v32, v25
	v_mov_b32_e32 v17, v25
	v_mov_b32_e32 v18, v25
	v_mov_b32_e32 v19, v25
	v_mov_b32_e32 v20, v25
	v_mov_b32_e32 v21, v25
	v_mov_b32_e32 v22, v25
	v_mov_b32_e32 v23, v25
	v_mov_b32_e32 v24, v25
	v_mov_b32_e32 v9, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v6, v25
	.loc	1 860 31                        ; attention.py:860:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s65, s10, 0x3fb8aa3b
	s_and_b32 s5, s5, 0xffff
	s_mul_i32 s67, s43, 3
	s_and_b32 s61, s7, 0xffff
	s_mov_b32 s56, s4
	s_mov_b32 s57, s5
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	s_mov_b32 s60, s6
	s_mov_b32 s62, s58
	s_mov_b32 s63, s59
	s_mov_b32 s68, 0x76543210
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s1, s55, s54
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v164, s51 :: v_dual_add_nc_u32 v89, 0, v107
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s4, s1, s42
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v163, s50 :: v_dual_mov_b32 v162, s49
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v65, s4, v97, 1
	v_add_lshl_u32 v66, s4, v103, 1
	v_add_lshl_u32 v67, s4, v104, 1
	v_add_lshl_u32 v68, s4, v98, 1
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v161, s48 :: v_dual_mov_b32 v160, s47
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v65, 0x80000000, v65, vcc_lo
	v_cndmask_b32_e32 v69, 0x80000000, v66, vcc_lo
	v_cndmask_b32_e32 v73, 0x80000000, v67, vcc_lo
	v_cndmask_b32_e32 v77, 0x80000000, v68, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[65:68], v65, s[56:59], 0 offen
	buffer_load_b128 v[69:72], v69, s[56:59], 0 offen
	buffer_load_b128 v[73:76], v73, s[56:59], 0 offen
	buffer_load_b128 v[77:80], v77, s[56:59], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v159, s46 :: v_dual_mov_b32 v158, s45
	v_mov_b32_e32 v157, s44
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(3)
	ds_store_b128 v105, v[65:68]
	s_waitcnt vmcnt(2)
	ds_store_b128 v105, v[69:72] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v105, v[73:76] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v105, v[77:80] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v112
	ds_load_b128 v[65:68], v89
	ds_load_b128 v[73:76], v89 offset:2048
	ds_load_b128 v[77:80], v112 offset:2048
	ds_load_b128 v[85:88], v112 offset:4096
	ds_load_b128 v[81:84], v89 offset:4096
	ds_load_b128 v[89:92], v89 offset:6144
	ds_load_b128 v[93:96], v112 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[165:172], v[65:72], v[57:64], v[157:164]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[73:80], v[57:64], v[157:164]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[81:88], v[57:64], v[157:164]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[85:88], v114
	ds_load_b128 v[81:84], v113
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[173:180], v[89:96], v[57:64], v[157:164]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[165:172], v[81:88], v[49:56], v[165:172]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[81:84], v113 offset:2048
	ds_load_b128 v[85:88], v114 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[81:88], v[49:56], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[85:88], v114 offset:4096
	ds_load_b128 v[81:84], v113 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[81:88], v[49:56], v[73:80]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[81:84], v113 offset:6144
	ds_load_b128 v[85:88], v114 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[173:180], v[81:88], v[49:56], v[173:180]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[85:88], v116
	ds_load_b128 v[81:84], v115
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[165:172], v[81:88], v[41:48], v[165:172]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[81:84], v115 offset:2048
	ds_load_b128 v[85:88], v116 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[81:88], v[41:48], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[85:88], v116 offset:4096
	ds_load_b128 v[81:84], v115 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[81:88], v[41:48], v[73:80]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[81:84], v115 offset:6144
	ds_load_b128 v[85:88], v116 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[173:180], v[81:88], v[41:48], v[173:180]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[85:88], v118
	ds_load_b128 v[81:84], v117
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[165:172], v[81:88], v[33:40], v[165:172]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[81:84], v117 offset:2048
	ds_load_b128 v[85:88], v118 offset:2048
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v94, s65, v165 :: v_dual_mul_f32 v95, s65, v166
	v_dual_mul_f32 v92, s65, v167 :: v_dual_mul_f32 v93, s65, v168
	v_dual_mul_f32 v96, s65, v169 :: v_dual_mul_f32 v155, s65, v170
	v_mul_f32_e32 v90, s65, v172
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[81:88], v[33:40], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[85:88], v118 offset:4096
	ds_load_b128 v[81:84], v117 offset:4096
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v89, s65, v171 :: v_dual_mul_f32 v160, s65, v69
	v_dual_mul_f32 v91, s65, v65 :: v_dual_mul_f32 v158, s65, v67
	v_dual_mul_f32 v157, s65, v66 :: v_dual_mul_f32 v162, s65, v71
	v_mad_u64_u32 v[65:66], null, s1, s43, v[99:100]
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v69, 0, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshlrev_b32_e32 v66, 1, v65
	v_add_lshl_u32 v67, v65, s66, 1
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[81:88], v[33:40], v[73:80]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[81:84], v117 offset:6144
	ds_load_b128 v[85:88], v118 offset:6144
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v159, s65, v68
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v68, v65, s67, 1
	v_add_lshl_u32 v65, v65, s43, 1
	v_cndmask_b32_e64 v66, 0x80000000, v66, s0
	v_cndmask_b32_e64 v67, 0x80000000, v67, s0
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v161, s65, v70 :: v_dual_mul_f32 v166, s65, v75
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v68, 0x80000000, v68, s0
	v_cndmask_b32_e64 v65, 0x80000000, v65, s0
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v163, s65, v72 :: v_dual_mul_f32 v168, s65, v77
	v_dual_mul_f32 v164, s65, v73 :: v_dual_mul_f32 v165, s65, v74
	v_mul_f32_e32 v170, s65, v79
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[173:180], v[81:88], v[33:40], v[173:180]
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v167, s65, v76
	v_mul_f32_e32 v169, s65, v78
	v_mul_f32_e32 v171, s65, v80
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[74:77], v66, s[60:63], 0 offen
	buffer_load_b128 v[78:81], v67, s[60:63], 0 offen
	buffer_load_b128 v[70:73], v68, s[60:63], 0 offen
	buffer_load_b128 v[65:68], v65, s[60:63], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v172, s65, v173 :: v_dual_mul_f32 v173, s65, v174
	v_mul_f32_e32 v84, s65, v176
	v_mul_f32_e32 v174, s65, v175
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v175, s55, v154
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v86, s65, v177 :: v_dual_mul_f32 v85, s65, v178
	v_dual_mul_f32 v88, s65, v180 :: v_dual_mul_f32 v87, s65, v179
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s38, v175, v106
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s39, v111, v175
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_add_i32 s55, s55, 64
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s38, s39, s38
	s_and_b32 s38, s2, s38
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v82.l, v74.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v83.l, v78.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v83.h, v70.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v82.h, v65.l
	v_mov_b16_e32 v65.l, v74.h
	v_mov_b16_e32 v70.l, v78.h
	v_mov_b16_e32 v74.h, v67.l
	v_mov_b16_e32 v67.l, v76.h
	ds_store_b64 v69, v[82:83]
	v_mov_b16_e32 v82.h, v66.l
	v_mov_b32_e32 v69, v65
	v_mov_b16_e32 v66.l, v75.h
	v_mov_b16_e32 v83.l, v79.l
	v_mov_b16_e32 v83.h, v71.l
	v_mov_b16_e32 v82.l, v75.l
	ds_store_b64 v119, v[69:70]
	ds_store_b64 v120, v[82:83]
	v_mov_b16_e32 v71.l, v79.h
	v_mov_b32_e32 v70, v66
	v_mov_b16_e32 v75.l, v80.l
	v_mov_b16_e32 v75.h, v72.l
	v_mov_b16_e32 v74.l, v76.l
	v_mov_b16_e32 v66.h, v73.l
	v_mov_b16_e32 v73.l, v81.h
	ds_store_b64 v121, v[70:71]
	ds_store_b64 v122, v[74:75]
	v_mov_b16_e32 v72.l, v80.h
	v_mov_b32_e32 v71, v67
	v_mov_b16_e32 v66.l, v81.l
	v_mov_b16_e32 v65.l, v77.l
	v_mov_b16_e32 v65.h, v68.l
	v_mov_b32_e32 v69, v73
	v_mov_b16_e32 v68.l, v77.h
	ds_store_b64 v123, v[71:72]
	ds_store_b64 v124, v[65:66]
	ds_store_b64 v125, v[68:69]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 52, v175
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v65, v106
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s4, v111, v65
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v65, 50, v175
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, s4, s1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s5, v65, v106
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s6, v111, v65
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v65, 48, v175
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, s6, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s7, v65, v106
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s8, v111, v65
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v65, 46, v175
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, s2, s1
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v67, 0xff800000, v173, s1
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s4, s8, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s9, v65, v106
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s10, v111, v65
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v65, 44, v175
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s4, s2, s4
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v66, 0xff800000, v172, s4
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, s10, s9
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s11, v65, v106
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s12, v111, v65
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v65, 42, v175
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, s2, s5
	s_and_b32 s5, s2, s21
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v69, 0xff800000, v171, s6
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s7, s12, s11
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s13, v65, v106
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s14, v111, v65
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v65, 40, v175
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s7, s2, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v68, 0xff800000, v170, s7
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s8, s14, s13
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s15, v65, v106
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s16, v111, v65
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v65, 38, v175
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s8, s2, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v71, 0xff800000, v169, s8
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s9, s16, s15
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s17, v65, v106
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s18, v111, v65
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v65, 36, v175
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s9, s2, s9
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v75, v71, v68, v69
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v70, 0xff800000, v168, s9
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s10, s18, s17
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s19, v65, v106
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s20, v111, v65
	.loc	1 867 21 is_stmt 1              ; attention.py:867:21
	s_and_b32 s10, s2, s10
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v65, 0xff800000, v174, s5
	v_cndmask_b32_e64 v73, 0xff800000, v167, s10
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s11, s20, s19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	s_and_b32 s11, s2, s11
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v74, v66, v67, v65
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v72, 0xff800000, v166, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v76, v72, v73, v70
	v_max3_f32 v166, v76, v75, v74
.Ltmp6:
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v74, 34, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s12, v74, v106
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s13, v111, v74
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v74, 32, v175
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s12, s13, s12
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s14, v74, v106
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s15, v111, v74
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v74, 30, v175
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s12, s2, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v75, 0xff800000, v165, s12
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s30, s15, s14
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s16, v74, v106
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s17, v111, v74
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v74, 28, v175
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s13, s17, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s18, v74, v106
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s19, v111, v74
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v74, 26, v175
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s13, s2, s13
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v77, 0xff800000, v163, s13
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s14, s19, s18
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s20, v74, v106
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s21, v111, v74
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v74, 24, v175
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s14, s2, s14
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v76, 0xff800000, v162, s14
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s15, s21, s20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s22, v74, v106
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s23, v111, v74
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v74, 22, v175
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s15, s2, s15
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v79, 0xff800000, v161, s15
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s16, s23, s22
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s24, v74, v106
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s25, v111, v74
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v74, 20, v175
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s17, s2, s16
	s_and_b32 s16, s2, s30
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v78, 0xff800000, v160, s17
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s18, s25, s24
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s26, v74, v106
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s27, v111, v74
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v74, 18, v175
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s18, s2, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v82, 0xff800000, v159, s18
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s19, s27, s26
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s28, v74, v106
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s29, v111, v74
	.loc	1 867 21 is_stmt 1              ; attention.py:867:21
	s_and_b32 s19, s2, s19
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v74, 0xff800000, v164, s16
	v_cndmask_b32_e64 v80, 0xff800000, v158, s19
	v_cndmask_b32_e64 v159, 0xff800000, v94, s38
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s20, s29, s28
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	s_and_b32 s20, s2, s20
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v81, v77, v74, v75
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v83, 0xff800000, v157, s20
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v157, v78, v79, v76
	v_max3_f32 v158, v83, v80, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v158, v158, v157, v81
.Ltmp10:
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v81, 2, v175
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s21, v81, v106
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s22, v111, v81
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v81, 16, v175
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, s22, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s23, v81, v106
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s24, v111, v81
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v81, 14, v175
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s25, v81, v106
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s26, v111, v81
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v81, 12, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s27, v81, v106
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s28, v111, v81
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v81, 10, v175
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s29, v81, v106
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s30, v111, v81
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v81, 8, v175
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, s30, s29
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s31, v81, v106
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s33, v111, v81
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v81, 6, v175
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s29, s2, s22
	s_and_b32 s22, s26, s25
	s_and_b32 s30, s33, s31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s34, v81, v106
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s35, v111, v81
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v81, 4, v175
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s30, s2, s30
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v94, 0xff800000, v96, s30
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s31, s35, s34
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s36, v81, v106
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s37, v111, v81
	.loc	1 867 21 is_stmt 1              ; attention.py:867:21
	s_and_b32 s34, s2, s21
	s_and_b32 s31, s2, s31
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v160, 0xff800000, v95, s34
	v_cndmask_b32_e64 v95, 0xff800000, v155, s29
	v_cndmask_b32_e64 v96, 0xff800000, v93, s31
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s33, s37, s36
	s_and_b32 s21, s24, s23
	s_and_b32 s33, s2, s33
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v81, v159, v160
.Ltmp12:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v157, 0xff800000, v92, s33
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v92, v96, v94, v95
.Ltmp14:
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s23, s28, s27
	s_and_b32 s27, s2, s22
	s_and_b32 s24, s2, s21
	s_and_b32 s28, s2, s23
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v92, v81, v157, v92
.Ltmp16:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v91, 0xff800000, v91, s24
	v_cndmask_b32_e64 v81, 0xff800000, v89, s28
	v_cndmask_b32_e64 v93, 0xff800000, v90, s27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v89, v81, v93, v91
	v_max3_f32 v90, v92, v89, v158
.Ltmp18:
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v89, 62, v175
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s21, v89, v106
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s22, v111, v89
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v89, 60, v175
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, s22, s21
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s23, v89, v106
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s25, v111, v89
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v89, 58, v175
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, s2, s21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v88, 0xff800000, v88, s21
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s23, s25, s23
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s26, v89, v106
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s35, v111, v89
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v89, 56, v175
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s23, s2, s23
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v87, 0xff800000, v87, s23
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, s35, s26
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s36, v89, v106
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s37, v111, v89
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v89, 54, v175
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, s2, s22
	s_and_b32 s25, s37, s36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s39, v89, v106
	.loc	1 866 21 is_stmt 0              ; attention.py:866:21
	v_cmp_ge_i32_e64 s40, v111, v89
	.loc	1 867 21 is_stmt 1              ; attention.py:867:21
	s_and_b32 s25, s2, s25
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v86, 0xff800000, v86, s25
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s26, s40, s39
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	s_and_b32 s26, s2, s26
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s55, s64
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v89, 0xff800000, v84, s26
	v_cndmask_b32_e64 v84, 0xff800000, v85, s22
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v85, v87, v88 :: v_dual_max_f32 v92, v89, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v85, v92, v84, v85
.Ltmp20:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v92.h, 0
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v85, v90, v166, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp22:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v158.h, v92.h
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v90, v85, s68, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v155, v156, v85, v90
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v85, v160, v155
	v_sub_f32_e32 v90, v159, v155
	v_sub_f32_e32 v157, v157, v155
	v_sub_f32_e32 v96, v96, v155
	v_sub_f32_e32 v82, v82, v155
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v85, v85
	v_exp_f32_e32 v90, v90
	v_exp_f32_e32 v157, v157
	v_exp_f32_e32 v96, v96
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v94, v94, v155
	v_sub_f32_e32 v78, v78, v155
	v_sub_f32_e32 v95, v95, v155
	v_sub_f32_e32 v81, v81, v155
	v_sub_f32_e32 v93, v93, v155
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v94, v94
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v85, 0, v85, s34
	v_cndmask_b32_e64 v90, 0, v90, s38
	v_cndmask_b32_e64 v157, 0, v157, s33
	v_cndmask_b32_e64 v96, 0, v96, s31
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v95, v95
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v92.l, v85.h
	v_mov_b16_e64 v158.l, v90.h
	v_cmp_o_f32_e64 s34, v85, v85
	v_cmp_o_f32_e64 s35, v90, v90
	v_cmp_o_f32_e64 s31, v96, v96
	v_and_b32_e32 v159, 1, v92
	v_and_b32_e32 v158, 1, v158
	v_mov_b16_e32 v92.l, v96.h
	v_cmp_o_f32_e64 s33, v157, v157
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v94, 0, v94, s30
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v159, v85, v159, 0x7fff
	v_add3_u32 v158, v90, v158, 0x7fff
	v_and_b32_e32 v161, 1, v92
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v95, 0, v95, s29
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s30, v94, v94
	v_cndmask_b16 v159.h, 0x7fff, v159.h, s34
	v_cndmask_b16 v159.l, 0x7fff, v158.h, s35
	v_add3_u32 v161, v96, v161, 0x7fff
	v_mov_b16_e32 v92.l, v95.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v81, v81
	v_exp_f32_e32 v93, v93
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v160, v159, s68, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v161.h, 0x7fff, v161.h, s31
	v_cmp_o_f32_e64 s29, v95, v95
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v72, v72, v155
	v_sub_f32_e32 v91, v91, v155
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v158, v160, v159, v108
	v_perm_b32 v159, v160, v159, v109
	v_mov_b16_e64 v160.h, v92.h
	v_mov_b16_e64 v160.l, v157.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v174, 0, v81, s28
	v_cndmask_b32_e64 v93, 0, v93, s27
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v81.h, v92.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v83, v83, v155 :: v_dual_and_b32 v160, 1, v160
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v81.l, v174.h
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_o_f32_e64 s27, v93, v93
	v_cmp_o_f32_e64 s28, v174, v174
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v80, v80, v155
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v160, v157, v160, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v74, v74, v155 :: v_dual_and_b32 v81, 1, v81
	v_sub_f32_e32 v75, v75, v155
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v161.l, 0x7fff, v160.h, s33
	v_add3_u32 v81, v174, v81, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v79, v79, v155
	v_sub_f32_e32 v76, v76, v155
	v_sub_f32_e32 v77, v77, v155
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v162, v161, s68, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v81.l, 0x7fff, v81.h, s28
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v73, v73, v155
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v91, v91
	v_exp_f32_e32 v83, v83
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_perm_b32 v160, v162, v161, v108
	v_perm_b32 v161, v162, v161, v109
	v_mov_b16_e64 v162.h, v92.h
	v_mov_b16_e64 v162.l, v94.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v80, v80
	v_exp_f32_e32 v82, v82
	v_exp_f32_e32 v74, v74
	v_exp_f32_e32 v75, v75
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v162, 1, v162
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v78, v78
	v_exp_f32_e32 v79, v79
	v_exp_f32_e32 v76, v76
	v_exp_f32_e32 v77, v77
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v162, v94, v162, 0x7fff
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v94, v94, v95
.Ltmp26:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v73, v73
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v85, v90, v85
.Ltmp28:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v91, 0, v91, s24
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v163.l, 0x7fff, v162.h, s30
	v_and_b32_e32 v162, 1, v92
	v_mov_b16_e32 v92.l, v93.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v83, 0, v83, s20
	v_cndmask_b32_e64 v80, 0, v80, s19
	v_cndmask_b32_e64 v82, 0, v82, s18
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v162, v95, v162, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v95, 0, v72, s11
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v72, v174, v93
.Ltmp30:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v74, 0, v74, s16
	v_cndmask_b32_e64 v75, 0, v75, s12
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v163.h, 0x7fff, v162.h, s29
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v90, v157, v96
.Ltmp32:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v78, 0, v78, s17
	v_cndmask_b32_e64 v79, 0, v79, s15
	v_cndmask_b32_e64 v76, 0, v76, s14
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v164, v163, s68, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v77, 0, v77, s13
	v_cndmask_b32_e64 v96, 0, v73, s10
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v73, v91, v83
	v_add_f32_e32 v85, v85, v90
.Ltmp34:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v162, v164, v163, v108
	v_perm_b32 v163, v164, v163, v109
	v_and_b32_e32 v164, 1, v92
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v90, v80, v82
	v_add_f32_e32 v72, v94, v72
.Ltmp36:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v70, v155
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v94, v95, v96 :: v_dual_sub_f32 v69, v69, v155
.Ltmp38:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v164, v93, v164, 0x7fff
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v93, v78, v79
	v_dual_add_f32 v73, v73, v90 :: v_dual_add_f32 v90, v76, v77
.Ltmp40:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v81.h, 0x7fff, v164.h, s27
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s27, 0xff800000, v156
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v68, v68, v155
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v90, v93, v90 :: v_dual_sub_f32 v71, v71, v155
.Ltmp42:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v165, v81, s68, 0xfedcba98 op_sel:[1,0]
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v93, v74, v75
.Ltmp44:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v66, v155
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v71, v71
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_perm_b32 v164, v165, v81, v108
	v_perm_b32 v165, v165, v81, v109
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v81, v156, v155
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v93, v93, v94
.Ltmp46:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v94, 0, v70, s9
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v88, v155
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v81, v81
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v67, v155
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v157, 0, v71, s8
	v_mov_b32_e32 v71, v100
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v67, v67
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v92.l, v83.h
	v_cmp_o_f32_e64 s8, v79, v79
	v_cmp_o_f32_e64 s9, v77, v77
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v156, 0, v81, s27
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v81, 0, v110
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v65, v155
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v75, v75
	v_cmp_o_f32_e64 s12, v96, v96
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v20, v20, v156
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[166:169], v81
	ds_load_b128 v[170:173], v126
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v29, v29, v156
	v_mul_f32_e32 v27, v27, v156
	v_mul_f32_e32 v22, v22, v156
	v_mul_f32_e32 v10, v10, v156
	v_mul_f32_e32 v16, v16, v156
	v_mul_f32_e32 v25, v25, v156
	v_mul_f32_e32 v26, v26, v156
	v_mul_f32_e32 v28, v28, v156
	v_mul_f32_e32 v30, v30, v156
	v_mul_f32_e32 v31, v31, v156
	v_mul_f32_e32 v32, v32, v156
	v_mul_f32_e32 v12, v12, v156
	v_mul_f32_e32 v14, v14, v156
	v_mul_f32_e32 v2, v2, v156
	v_mul_f32_e32 v24, v24, v156
	v_mul_f32_e32 v17, v17, v156
	v_mul_f32_e32 v4, v4, v156
	v_mul_f32_e32 v6, v6, v156
	v_mul_f32_e32 v18, v18, v156
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[166:173], v[158:165], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[166:169], v133
	ds_load_b128 v[170:173], v134
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v19, v19, v156
	v_mul_f32_e32 v21, v21, v156
	v_mul_f32_e32 v23, v23, v156
	v_mul_f32_e32 v8, v8, v156
	v_mul_f32_e32 v9, v9, v156
	v_mul_f32_e32 v11, v11, v156
	v_mul_f32_e32 v13, v13, v156
	v_mul_f32_e32 v15, v15, v156
	v_mul_f32_e32 v1, v1, v156
	v_mul_f32_e32 v3, v3, v156
	v_mul_f32_e32 v5, v5, v156
	v_mul_f32_e32 v7, v7, v156
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s13, v157, v157
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[166:173], v[158:165], v[17:24]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[166:169], v140
	ds_load_b128 v[170:173], v141
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[166:173], v[158:165], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[166:169], v147
	ds_load_b128 v[170:173], v148
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[166:173], v[158:165], v[1:8]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v158, 0, v68, s7
	v_cndmask_b32_e64 v159, 0, v69, s6
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v68, v94, v157
.Ltmp48:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v160, 0, v67, s1
	v_cndmask_b32_e64 v161, 0, v65, s5
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v67, v84, v155
.Ltmp49:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v69, v158, v159
.Ltmp50:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v163, 0, v70, s21
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v91, v91
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v70, v73, v90
.Ltmp52:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v68, v68, v69 :: v_dual_sub_f32 v69, v89, v155
.Ltmp54:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v89, 0, v66, s4
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v83, v83
	v_cmp_o_f32_e64 s5, v76, v76
	v_cmp_o_f32_e64 s6, v74, v74
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v65, v89, v160
.Ltmp56:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v82, v82
	v_cmp_o_f32_e64 s14, v159, v159
	v_cmp_o_f32_e64 s15, v160, v160
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v162, 0, v69, s26
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v69, v87, v155
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v87, 0, v67, s22
.Ltmp57:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v161, v162
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp58:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s16, v162, v162
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v65, v65, v66 :: v_dual_sub_f32 v66, v86, v155
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp60:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v86, 0, v69, s23
.Ltmp61:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v69, v85, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add_f32_e32 v67, v86, v163
.Ltmp62:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s11, v86, v86
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v84, 0, v66, s25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v66, v84, v87
	v_add_f32_e32 v66, v66, v67
.Ltmp64:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v67.h, v92.h
	v_mov_b16_e32 v67.l, v91.h
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v68, v93, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_e32 v65, v65, v66
.Ltmp66:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v65, v68, v65
.Ltmp68:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v67, v91, v67, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v66.l, 0x7fff, v67.h, s1
.Ltmp69:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v69, v70
.Ltmp70:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v69.h, v92.h
	v_mov_b16_e32 v69.l, v76.h
	v_cmp_o_f32_e64 s1, v80, v80
	v_mov_b16_e32 v70.h, v92.h
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v65, v67, v65
.Ltmp72:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v67, 1, v92
	v_mov_b16_e32 v92.l, v82.h
	v_and_b32_e32 v69, 1, v69
	v_mov_b16_e32 v70.l, v74.h
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v68, v65, s68, 0xfedcba98 op_sel:[1,0]
.Ltmp74:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v67, v83, v67, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v69, v76, v69, 0x7fff
	v_and_b32_e32 v70, 1, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v100, v65, v68
.Ltmp76:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v66.h, 0x7fff, v67.h, s4
	v_mov_b16_e32 v68.h, v92.h
	v_mov_b16_e32 v68.l, v78.h
	v_add3_u32 v70, v74, v70, 0x7fff
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v100, v71, v156
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v67, v66, s68, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v71, 1, v92
	v_and_b32_e32 v68, 1, v68
	v_mov_b16_e32 v92.l, v79.h
	v_cndmask_b16 v72.l, 0x7fff, v69.h, s5
	v_perm_b32 v65, v67, v66, v108
	v_perm_b32 v66, v67, v66, v109
	v_mov_b16_e32 v67.h, v92.h
	v_mov_b16_e32 v67.l, v80.h
	v_add3_u32 v68, v78, v68, 0x7fff
	v_cmp_o_f32_e64 s4, v78, v78
	v_cndmask_b16 v74.l, 0x7fff, v70.h, s6
	v_add3_u32 v71, v82, v71, 0x7fff
	v_and_b32_e32 v67, 1, v67
	v_mov_b16_e32 v76.h, v92.h
	v_cndmask_b16 v70.l, 0x7fff, v68.h, s4
	v_mov_b16_e32 v76.l, v94.h
	v_cndmask_b16 v68.h, 0x7fff, v71.h, s7
	v_add3_u32 v67, v80, v67, 0x7fff
	v_mov_b16_e32 v80.h, v92.h
	v_mov_b16_e32 v80.l, v84.h
	v_and_b32_e32 v76, 1, v76
	v_cmp_o_f32_e64 s5, v95, v95
	v_cndmask_b16 v68.l, 0x7fff, v67.h, s1
	v_and_b32_e32 v67, 1, v92
	v_mov_b16_e32 v92.l, v77.h
	v_and_b32_e32 v80, 1, v80
	v_mov_b16_e32 v78.h, v92.h
	v_permlanex16_b32 v71, v68, s68, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v67, v79, v67, 0x7fff
	v_and_b32_e32 v69, 1, v92
	v_mov_b16_e32 v92.l, v75.h
	v_mov_b16_e32 v79.h, v92.h
	v_mov_b16_e64 v79.l, v161.h
	v_cndmask_b16 v70.h, 0x7fff, v67.h, s8
	v_add3_u32 v69, v77, v69, 0x7fff
	v_and_b32_e32 v67, 1, v92
	v_mov_b16_e32 v92.l, v96.h
	v_mov_b16_e32 v78.l, v89.h
	v_and_b32_e32 v79, 1, v79
	v_cndmask_b16 v72.h, 0x7fff, v69.h, s9
	v_add3_u32 v73, v75, v67, 0x7fff
	v_permlanex16_b32 v75, v70, s68, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v67, v71, v68, v108
	v_perm_b32 v68, v71, v68, v109
	v_and_b32_e32 v83, 1, v92
	v_cndmask_b16 v74.h, 0x7fff, v73.h, s10
	v_perm_b32 v69, v75, v70, v108
	v_permlanex16_b32 v73, v72, s68, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v70, v75, v70, v109
	v_mov_b16_e64 v92.l, v157.h
	v_permlanex16_b32 v75, v74, s68, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s10, v84, v84
	v_perm_b32 v71, v73, v72, v108
	v_perm_b32 v72, v73, v72, v109
	v_add3_u32 v80, v84, v80, 0x7fff
	v_perm_b32 v73, v75, v74, v108
	v_perm_b32 v74, v75, v74, v109
	v_mov_b16_e32 v75.h, v92.h
	v_mov_b16_e32 v75.l, v95.h
	v_mov_b16_e32 v82.h, v92.h
	v_mov_b16_e32 v82.l, v86.h
	v_and_b32_e32 v84, 1, v92
	v_mov_b16_e64 v92.l, v159.h
	v_and_b32_e32 v75, 1, v75
	v_add3_u32 v76, v94, v76, 0x7fff
	v_mov_b16_e32 v77.h, v92.h
	v_mov_b16_e64 v77.l, v158.h
	v_and_b32_e32 v78, 1, v78
	v_add3_u32 v75, v95, v75, 0x7fff
	v_cmp_o_f32_e64 s9, v161, v161
	v_add3_u32 v79, v161, v79, 0x7fff
	v_and_b32_e32 v82, 1, v82
	v_add3_u32 v84, v157, v84, 0x7fff
	v_cndmask_b16 v76.l, 0x7fff, v75.h, s5
	v_and_b32_e32 v75, 1, v92
	v_mov_b16_e64 v92.l, v160.h
	v_cmp_o_f32_e64 s6, v94, v94
	v_and_b32_e32 v77, 1, v77
	v_cmp_o_f32_e64 s8, v89, v89
	v_add3_u32 v78, v89, v78, 0x7fff
	v_add3_u32 v82, v86, v82, 0x7fff
	v_add3_u32 v83, v96, v83, 0x7fff
	v_cndmask_b16 v84.l, 0x7fff, v79.h, s9
	v_add3_u32 v79, v159, v75, 0x7fff
	v_and_b32_e32 v86, 1, v92
	v_mov_b16_e64 v92.l, v162.h
	v_cmp_o_f32_e64 s7, v158, v158
	v_add3_u32 v77, v158, v77, 0x7fff
	v_cndmask_b16 v78.l, 0x7fff, v76.h, s6
	v_cndmask_b16 v85.l, 0x7fff, v78.h, s8
	v_cndmask_b16 v83.l, 0x7fff, v80.h, s10
	v_cndmask_b16 v76.h, 0x7fff, v83.h, s12
	v_cndmask_b16 v78.h, 0x7fff, v84.h, s13
	v_cndmask_b16 v80.h, 0x7fff, v79.h, s14
	v_and_b32_e32 v79, 1, v92
	v_mov_b16_e32 v92.l, v87.h
	v_cndmask_b16 v80.l, 0x7fff, v77.h, s7
	v_permlanex16_b32 v77, v76, s68, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v88, v78, s68, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s4, v87, v87
	v_and_b32_e32 v90, 1, v92
	v_mov_b16_e64 v92.l, v163.h
	v_perm_b32 v75, v77, v76, v108
	v_perm_b32 v76, v77, v76, v109
	v_perm_b32 v77, v88, v78, v108
	v_permlanex16_b32 v89, v80, s68, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v78, v88, v78, v109
	v_add3_u32 v88, v162, v79, 0x7fff
	v_and_b32_e32 v91, 1, v92
	v_cmp_o_f32_e64 s1, v163, v163
	v_perm_b32 v79, v89, v80, v108
	v_perm_b32 v80, v89, v80, v109
	v_cndmask_b16 v84.h, 0x7fff, v88.h, s16
	v_add3_u32 v88, v87, v90, 0x7fff
	v_add3_u32 v87, v163, v91, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[89:92], v127
	ds_load_b128 v[93:96], v128
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v86, v160, v86, 0x7fff
	v_cndmask_b16 v82.l, 0x7fff, v82.h, s11
	v_cndmask_b16 v83.h, 0x7fff, v88.h, s4
	v_cndmask_b16 v82.h, 0x7fff, v87.h, s1
	v_mov_b32_e32 v156, v155
	v_cndmask_b16 v85.h, 0x7fff, v86.h, s15
	s_delay_alu instid0(VALU_DEP_1)
	v_permlanex16_b32 v86, v85, s68, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[89:96], v[65:72], v[25:32]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[89:92], v81 offset:2048
	ds_load_b128 v[93:96], v135
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[89:96], v[65:72], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[89:92], v142
	ds_load_b128 v[93:96], v143
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[89:96], v[65:72], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[89:92], v149
	ds_load_b128 v[93:96], v150
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[89:96], v[65:72], v[1:8]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_permlanex16_b32 v68, v84, s68, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v70, v83, s68, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v72, v82, s68, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v65, v86, v85, v108
	v_perm_b32 v66, v86, v85, v109
	v_perm_b32 v67, v68, v84, v108
	v_perm_b32 v68, v68, v84, v109
	v_perm_b32 v69, v70, v83, v108
	v_perm_b32 v70, v70, v83, v109
	v_perm_b32 v71, v72, v82, v108
	v_perm_b32 v72, v72, v82, v109
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[82:85], v129
	ds_load_b128 v[86:89], v130
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[82:89], v[73:80], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[82:85], v136
	ds_load_b128 v[86:89], v137
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[82:89], v[73:80], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[86:89], v144
	ds_load_b128 v[82:85], v81 offset:4096
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[82:89], v[73:80], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[82:85], v151
	ds_load_b128 v[86:89], v152
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[82:89], v[73:80], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[85:88], v131
	ds_load_b128 v[89:92], v132
	ds_load_b128 v[73:76], v81 offset:6144
	ds_load_b128 v[81:84], v145
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[85:92], v[65:72], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[89:92], v138
	ds_load_b128 v[93:96], v139
	ds_load_b128 v[85:88], v146
	ds_load_b128 v[77:80], v153
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[89:96], v[65:72], v[17:24]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[81:88], v[65:72], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[73:80], v[65:72], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v36, null, v100, v100, v25
	v_div_scale_f32 v37, null, v100, v100, v26
	v_div_scale_f32 v41, null, v100, v100, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v38, v36
	v_rcp_f32_e32 v39, v37
	v_div_scale_f32 v43, null, v100, v100, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v44, v41
	v_div_scale_f32 v40, vcc_lo, v25, v100, v25
	v_rcp_f32_e32 v46, v43
	v_div_scale_f32 v42, s0, v26, v100, v26
	v_fma_f32 v33, -v36, v38, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v34, -v37, v39, 1.0
	v_div_scale_f32 v45, s1, v27, v100, v27
	v_fma_f32 v35, -v41, v44, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v38, v33, v38 :: v_dual_fmac_f32 v39, v34, v39
	v_fma_f32 v51, -v43, v46, 1.0
	v_div_scale_f32 v48, s4, v28, v100, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v47, v40, v38 :: v_dual_fmac_f32 v44, v35, v44
	v_dual_mul_f32 v49, v42, v39 :: v_dual_fmac_f32 v46, v51, v46
	v_div_scale_f32 v51, null, v100, v100, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v36, v47, v40
	v_fma_f32 v52, -v37, v49, v42
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v0, 1, v102
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s53, s53, 0xffff
	s_mov_b32 s55, 0x31027000
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v47, v50, v38 :: v_dual_mul_f32 v50, v45, v44
	v_fmac_f32_e32 v49, v52, v39
	v_div_scale_f32 v52, null, v100, v100, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v36, v47, v40
	v_div_scale_f32 v40, null, v100, v100, v29
	v_fma_f32 v37, -v37, v49, v42
	v_fma_f32 v42, -v41, v50, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v36, v36, v38, v47
	v_rcp_f32_e32 v38, v40
	s_mov_b32 vcc_lo, s0
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v100
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v50, v42, v44
	v_div_fixup_f32 v25, v36, v100, v25
	v_div_fmas_f32 v36, v37, v39, v49
	v_rcp_f32_e32 v37, v51
	s_mov_b32 vcc_lo, s1
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v35, 16, v0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v42, -v40, v38, 1.0
	v_div_fixup_f32 v26, v36, v100, v26
	v_fma_f32 v36, -v41, v50, v45
	v_div_scale_f32 v45, s1, v30, v100, v30
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v34, 32, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v51, v37, 1.0
	v_fmac_f32_e32 v38, v42, v38
	v_div_scale_f32 v42, null, v100, v100, v31
	v_div_fmas_f32 v36, v36, v44, v50
	v_fmac_f32_e32 v37, v41, v37
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v42
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v27, v36, v100, v27
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v33, 48, v0
	s_mov_b32 s54, 0x7ffffffe
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v49, -v42, v41, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v27, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v49, v41
	v_mul_f32_e32 v47, v48, v46
	v_fma_f32 v39, -v43, v47, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v47, v39, v46
	v_div_scale_f32 v39, s5, v29, v100, v29
	v_fma_f32 v43, -v43, v47, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v44, v39, v38
	v_div_scale_f32 v48, null, v100, v100, v32
	v_div_fmas_f32 v43, v43, v46, v47
	v_mul_f32_e32 v47, v45, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v46, -v40, v44, v39
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v50, v48
	v_div_fixup_f32 v28, v43, v100, v28
	v_fma_f32 v36, -v51, v47, v45
	v_fmac_f32_e32 v44, v46, v38
	v_div_scale_f32 v46, null, v100, v100, v17
	v_div_scale_f32 v43, s4, v31, v100, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v36, v37
	v_fma_f32 v39, -v40, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v40, v46
	v_fma_f32 v49, -v48, v50, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v39, v38, v44
	v_fma_f32 v39, -v51, v47, v45
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v29, v38, v100, v29
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v46, v40, 1.0
	v_div_fmas_f32 v37, v39, v37, v47
	v_rcp_f32_e32 v39, v52
	v_div_scale_f32 v47, s1, v17, v100, v17
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v40, v51, v40
	v_mul_f32_e32 v36, v43, v41
	v_div_fixup_f32 v30, v37, v100, v30
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v38, v47, v40
	v_fma_f32 v44, -v42, v36, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v44, v41
	v_fma_f32 v37, -v42, v36, v43
	v_fma_f32 v42, -v52, v39, 1.0
	v_fmac_f32_e32 v50, v49, v50
	v_div_scale_f32 v49, s6, v32, v100, v32
	v_div_scale_f32 v43, null, v100, v100, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v42, v39
	v_mul_f32_e32 v45, v49, v50
	v_div_fmas_f32 v36, v37, v41, v36
	v_fma_f32 v41, -v46, v38, v47
	v_rcp_f32_e32 v42, v43
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v44, -v48, v45, v49
	v_div_fixup_f32 v31, v36, v100, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v38, v41, v40 :: v_dual_fmac_f32 v45, v44, v50
	v_div_scale_f32 v44, s4, v18, v100, v18
	v_fma_f32 v36, -v46, v38, v47
	v_div_scale_f32 v46, s5, v19, v100, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v48, v45, v49
	v_div_scale_f32 v48, null, v100, v100, v20
	v_fma_f32 v49, -v43, v42, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v37, v50, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v41, v48
	v_dual_mul_f32 v45, v44, v39 :: v_dual_fmac_f32 v42, v49, v42
	v_div_scale_f32 v49, null, v100, v100, v21
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v32, v37, v100, v32
	v_fma_f32 v37, -v52, v45, v44
	v_div_fmas_f32 v36, v36, v40, v38
	v_rcp_f32_e32 v38, v49
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v48, v41, 1.0
	v_div_scale_f32 v40, s1, v20, v100, v20
	v_div_fixup_f32 v17, v36, v100, v17
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v47, v41
	v_fmac_f32_e32 v45, v37, v39
	v_div_scale_f32 v47, null, v100, v100, v22
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v32, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v50, v40, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v52, v45, v44
	v_rcp_f32_e32 v51, v47
	v_fma_f32 v52, -v49, v38, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v39, v45
	v_fma_f32 v39, -v48, v50, v40
	v_fmac_f32_e32 v38, v52, v38
	v_mul_f32_e32 v37, v46, v42
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v18, v36, v100, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v47, v51, 1.0
	v_fmac_f32_e32 v50, v39, v41
	v_fma_f32 v44, -v43, v37, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v51, v45, v51
	v_div_scale_f32 v45, null, v100, v100, v23
	v_fmac_f32_e32 v37, v44, v42
	v_div_scale_f32 v44, s4, v21, v100, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v43, v37, v46
	v_div_scale_f32 v43, s6, v22, v100, v22
	v_mul_f32_e32 v46, v43, v51
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v36, v36, v42, v37
	v_rcp_f32_e32 v42, v45
	v_fma_f32 v37, -v48, v50, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v48, null, v100, v100, v24
	v_div_fixup_f32 v19, v36, v100, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v37, v37, v41, v50
	v_fma_f32 v41, -v47, v46, v43
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v50, -v45, v42, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v20, v37, v100, v20
	v_div_scale_f32 v37, s1, v23, v100, v23
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v50, v42
	v_dual_mul_f32 v39, v44, v38 :: v_dual_fmac_f32 v46, v41, v51
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v49, v39, v44
	v_fmac_f32_e32 v39, v40, v38
	v_rcp_f32_e32 v40, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v48, v40, 1.0
	v_fmac_f32_e32 v40, v41, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v49, v39, v44
	v_div_scale_f32 v49, null, v100, v100, v10
	v_div_scale_f32 v41, null, v100, v100, v9
	v_div_fmas_f32 v36, v36, v38, v39
	v_fma_f32 v38, -v47, v46, v43
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v43, s4, v24, v100, v24
	v_rcp_f32_e32 v44, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v38, v38, v51, v46
	v_mul_f32_e32 v39, v37, v42
	v_div_fixup_f32 v21, v36, v100, v21
	v_div_scale_f32 v51, null, v100, v100, v12
	v_div_fixup_f32 v22, v38, v100, v22
	v_rcp_f32_e32 v38, v49
	v_fma_f32 v46, -v45, v39, v37
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v53, v51
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	v_cndmask_b32_e64 v22, 0, v22, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v49, v38, 1.0
	v_dual_mul_f32 v47, v43, v40 :: v_dual_fmac_f32 v38, v50, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v48, v47, v43
	v_fmac_f32_e32 v47, v36, v40
	v_div_scale_f32 v36, s5, v9, v100, v9
	v_fmac_f32_e32 v39, v46, v42
	v_fma_f32 v46, -v41, v44, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v45, v39, v37
	v_div_scale_f32 v45, null, v100, v100, v11
	v_fmac_f32_e32 v44, v46, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v37, v37, v42, v39
	v_rcp_f32_e32 v46, v45
	v_fma_f32 v39, -v48, v47, v43
	v_div_scale_f32 v43, s1, v10, v100, v10
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v42, v36, v44
	v_div_fixup_f32 v23, v37, v100, v23
	v_mul_f32_e32 v52, v43, v38
	v_div_fmas_f32 v39, v39, v40, v47
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v48, -v45, v46, 1.0
	v_fma_f32 v50, -v41, v42, v36
	v_fma_f32 v40, -v49, v52, v43
	v_div_fixup_f32 v24, v39, v100, v24
	v_fma_f32 v39, -v51, v53, 1.0
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v48, s6, v11, v100, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v52, v40, v38 :: v_dual_fmac_f32 v53, v39, v53
	v_dual_fmac_f32 v42, v50, v44 :: v_dual_mul_f32 v47, v48, v46
	v_div_scale_f32 v40, null, v100, v100, v13
	v_div_scale_f32 v39, s4, v12, v100, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v45, v47, v48
	v_fma_f32 v36, -v41, v42, v36
	v_fma_f32 v41, -v49, v52, v43
	v_div_scale_f32 v43, null, v100, v100, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v47, v37, v46
	v_rcp_f32_e32 v37, v40
	v_div_fmas_f32 v36, v36, v44, v42
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v42, v39, v53
	v_div_fmas_f32 v38, v41, v38, v52
	v_fma_f32 v41, -v45, v47, v48
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v9, v36, v100, v9
	v_rcp_f32_e32 v45, v43
	v_div_fixup_f32 v10, v38, v100, v10
	v_fma_f32 v44, -v40, v37, 1.0
	v_div_fmas_f32 v41, v41, v46, v47
	v_fma_f32 v46, -v51, v42, v39
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v44, v37
	v_div_scale_f32 v44, s1, v13, v100, v13
	v_div_fixup_f32 v11, v41, v100, v11
	v_div_scale_f32 v41, null, v100, v100, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v36, v44, v37
	v_fma_f32 v38, -v43, v45, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v47, v41
	v_fmac_f32_e32 v42, v46, v53
	v_fma_f32 v46, -v40, v36, v44
	v_fmac_f32_e32 v45, v38, v45
	v_div_scale_f32 v38, s5, v14, v100, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v51, v42, v39
	v_fmac_f32_e32 v36, v46, v37
	v_div_scale_f32 v46, null, v100, v100, v16
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v39, v39, v53, v42
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v48, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v12, v39, v100, v12
	v_fma_f32 v39, -v40, v36, v44
	v_fma_f32 v44, -v41, v47, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v39, v37, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v44, v47
	v_div_scale_f32 v44, null, v100, v100, v2
	v_div_scale_f32 v37, null, v100, v100, v1
	v_div_fixup_f32 v13, v36, v100, v13
	v_fma_f32 v36, -v46, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v50, v44
	v_div_scale_f32 v39, s1, v15, v100, v15
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v48, v36, v48
	v_div_scale_f32 v36, s4, v16, v100, v16
	v_mul_f32_e32 v42, v38, v45
	v_div_scale_f32 v51, s5, v1, v100, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v44, v50, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v43, v42, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v50, v52, v50
	v_div_scale_f32 v52, s6, v2, v100, v2
	v_fmac_f32_e32 v42, v40, v45
	v_rcp_f32_e32 v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v43, v42, v38
	v_mul_f32_e32 v43, v39, v47
	v_div_fmas_f32 v38, v38, v45, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v37, v40, 1.0
	v_fma_f32 v42, -v41, v43, v39
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v14, v38, v100, v14
	v_fmac_f32_e32 v40, v49, v40
	v_div_scale_f32 v49, null, v100, v100, v3
	v_fmac_f32_e32 v43, v42, v47
	v_mul_f32_e32 v45, v36, v48
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v53, v49
	v_fma_f32 v38, -v41, v43, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v42, -v46, v45, v36
	v_div_fmas_f32 v38, v38, v47, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v45, v42, v48
	v_mul_f32_e32 v41, v52, v50
	v_fma_f32 v42, -v49, v53, 1.0
	v_mul_f32_e32 v54, v51, v40
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v36, -v46, v45, v36
	v_div_scale_f32 v43, null, v100, v100, v4
	v_fmac_f32_e32 v53, v42, v53
	v_fma_f32 v39, -v37, v54, v51
	v_div_scale_f32 v42, s1, v3, v100, v3
	v_div_fmas_f32 v36, v36, v48, v45
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v54, v39, v40
	v_fma_f32 v39, -v44, v41, v52
	v_rcp_f32_e32 v45, v43
	v_div_fixup_f32 v16, v36, v100, v16
	v_div_fixup_f32 v15, v38, v100, v15
	v_div_scale_f32 v47, null, v100, v100, v8
	v_fmac_f32_e32 v41, v39, v50
	v_mul_f32_e32 v39, v42, v53
	v_fma_f32 v37, -v37, v54, v51
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v16, 0, v16, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v43, v45, 1.0
	v_div_fmas_f32 v37, v37, v40, v54
	v_fma_f32 v40, -v44, v41, v52
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v44, -v49, v39, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v1, v37, v100, v1
	v_div_fmas_f32 v40, v40, v50, v41
	v_div_scale_f32 v37, null, v100, v100, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v44, v53
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v2, v40, v100, v2
	v_div_scale_f32 v40, null, v100, v100, v7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v2, 0, v2, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v44, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v40, v44, 1.0
	v_fmac_f32_e32 v44, v51, v44
	v_fma_f32 v36, -v49, v39, v42
	v_rcp_f32_e32 v49, v47
	v_div_scale_f32 v51, s5, v7, v100, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v36, v53, v39
	v_rcp_f32_e32 v39, v37
	v_div_scale_f32 v41, vcc_lo, v4, v100, v4
	v_mul_f32_e32 v55, v51, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v3, v36, v100, v3
	v_fma_f32 v53, -v47, v49, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v37, v39, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v49, v53, v49
	v_div_scale_f32 v53, s6, v8, v100, v8
	v_fmac_f32_e32 v39, v36, v39
	v_div_scale_f32 v36, s1, v5, v100, v5
	v_fmac_f32_e32 v45, v38, v45
	v_div_scale_f32 v38, null, v100, v100, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v52, v36, v39
	v_mul_f32_e32 v56, v53, v49
	v_mul_f32_e32 v46, v41, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v42, v38
	v_fma_f32 v50, -v43, v46, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v46, v50, v45
	v_fma_f32 v48, -v38, v42, 1.0
	v_fma_f32 v50, -v37, v52, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v43, v46, v41
	v_fmac_f32_e32 v42, v48, v42
	v_div_scale_f32 v48, s4, v6, v100, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v52, v50, v39
	v_fma_f32 v50, -v40, v55, v51
	v_div_fmas_f32 v41, v41, v45, v46
	v_mul_f32_e32 v54, v48, v42
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v36, -v37, v52, v36
	v_fmac_f32_e32 v55, v50, v44
	v_fma_f32 v37, -v47, v56, v53
	v_fma_f32 v43, -v38, v54, v48
	v_div_fixup_f32 v4, v41, v100, v4
	v_div_fmas_f32 v36, v36, v39, v52
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v56, v37, v49
	v_fmac_f32_e32 v54, v43, v42
	v_fma_f32 v37, -v40, v55, v51
	v_div_fixup_f32 v5, v36, v100, v5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v47, v56, v53
	v_fma_f32 v38, -v38, v54, v48
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_or_b32_e32 v36, s41, v101
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s43, v0
	v_cmp_gt_i32_e64 s1, s43, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v42, v54
	s_mov_b32 vcc_lo, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s5, v25, v25
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v37, v44, v55
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v6, v38, v100, v6
	v_div_fmas_f32 v39, v39, v49, v56
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v38, v26, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v37, v100, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v37, v25, 16, 1
	v_cmp_o_f32_e64 s6, v26, v26
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v39, v100, v8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v39, v27, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v37, v25, v37, 0x7fff
	v_add3_u32 v25, v26, v38, 0x7fff
	v_bfe_u32 v38, v30, 16, 1
	v_add3_u32 v26, v27, v39, 0x7fff
	v_bfe_u32 v27, v28, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v37.h, s5
	v_bfe_u32 v37, v29, 16, 1
	v_cmp_o_f32_e64 s5, v28, v28
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s6
	v_add3_u32 v27, v28, v27, 0x7fff
	v_cndmask_b16 v26.l, 0x7fff, v26.h, s7
	v_add3_u32 v28, v29, v37, 0x7fff
	v_cmp_o_f32_e64 s6, v29, v29
	v_add3_u32 v29, v30, v38, 0x7fff
	v_cmp_o_f32_e64 s7, v30, v30
	v_cndmask_b16 v26.h, 0x7fff, v27.h, s5
	v_bfe_u32 v27, v31, 16, 1
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s6
	v_bfe_u32 v30, v32, 16, 1
	v_cndmask_b16 v28.h, 0x7fff, v29.h, s7
	v_bfe_u32 v29, v17, 16, 1
	v_add3_u32 v27, v31, v27, 0x7fff
	v_cmp_o_f32_e64 s5, v31, v31
	v_add3_u32 v30, v32, v30, 0x7fff
	v_cmp_o_f32_e64 s6, v32, v32
	v_add3_u32 v29, v17, v29, 0x7fff
	v_cmp_o_f32_e64 s7, v17, v17
	v_cndmask_b16 v17.l, 0x7fff, v27.h, s5
	v_bfe_u32 v27, v18, 16, 1
	v_cndmask_b16 v17.h, 0x7fff, v30.h, s6
	v_bfe_u32 v30, v19, 16, 1
	v_bfe_u32 v31, v20, 16, 1
	v_cmp_o_f32_e64 s5, v18, v18
	v_add3_u32 v27, v18, v27, 0x7fff
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s7
	v_add3_u32 v18, v19, v30, 0x7fff
	v_cmp_o_f32_e64 s6, v19, v19
	v_add3_u32 v19, v20, v31, 0x7fff
	v_cmp_o_f32_e64 s7, v20, v20
	v_cndmask_b16 v29.h, 0x7fff, v27.h, s5
	v_bfe_u32 v20, v21, 16, 1
	v_bfe_u32 v27, v22, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s6
	v_cmp_o_f32_e64 s5, v21, v21
	v_cmp_o_f32_e64 s6, v22, v22
	v_add3_u32 v20, v21, v20, 0x7fff
	v_add3_u32 v21, v22, v27, 0x7fff
	v_cndmask_b16 v18.h, 0x7fff, v19.h, s7
	v_bfe_u32 v19, v23, 16, 1
	v_bfe_u32 v22, v24, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s5
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v9, 16, 1
	v_add3_u32 v19, v23, v19, 0x7fff
	v_cmp_o_f32_e64 s7, v23, v23
	v_bfe_u32 v23, v10, 16, 1
	v_add3_u32 v22, v24, v22, 0x7fff
	v_cmp_o_f32_e64 s5, v24, v24
	v_add3_u32 v21, v9, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v9, v9
	v_add3_u32 v9, v10, v23, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s7
	v_cmp_o_f32_e64 s7, v10, v10
	v_cndmask_b16 v19.h, 0x7fff, v22.h, s5
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s6
	v_bfe_u32 v21, v12, 16, 1
	v_bfe_u32 v22, v13, 16, 1
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s7
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v11, v11
	v_add3_u32 v11, v12, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v12, v12
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
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s6
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s7
	v_bfe_u32 v14, v3, 16, 1
	v_add3_u32 v13, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s5, v1, v1
	v_add3_u32 v1, v2, v15, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v2, v2
	v_add3_u32 v2, v3, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v3, v3
	v_bfe_u32 v3, v4, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v13.h, s5
	v_bfe_u32 v13, v5, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s6
	v_cmp_o_f32_e64 s5, v4, v4
	v_add3_u32 v3, v4, v3, 0x7fff
	v_bfe_u32 v4, v6, 16, 1
	v_add3_u32 v13, v5, v13, 0x7fff
	v_bfe_u32 v14, v7, 16, 1
	v_cmp_o_f32_e64 s6, v5, v5
	v_bfe_u32 v5, v8, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s7
	v_add3_u32 v4, v6, v4, 0x7fff
	v_cmp_o_f32_e64 s7, v6, v6
	v_add3_u32 v6, v7, v14, 0x7fff
	v_cmp_o_f32_e64 s8, v7, v7
	v_add3_u32 v5, v8, v5, 0x7fff
	v_cmp_o_f32_e64 s9, v8, v8
	v_cndmask_b32_e64 v7, v17, v26, s3
	v_cndmask_b32_e64 v8, v26, v17, s3
	v_mov_b32_e32 v16, 0x5410
	v_mov_b32_e32 v17, 0x7632
	v_cndmask_b32_e64 v15, v19, v18, s3
	v_cndmask_b32_e64 v18, v18, v19, s3
	v_cndmask_b32_e64 v19, v12, v9, s3
	v_cndmask_b32_e64 v9, v9, v12, s3
	v_cndmask_b32_e64 v12, 0x1054, v16, s3
	v_cndmask_b32_e64 v16, 0x3276, v17, s3
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s5
	v_cndmask_b16 v3.l, 0x7fff, v13.h, s6
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s7
	v_cndmask_b32_e64 v17, v11, v10, s3
	v_cndmask_b32_e64 v10, v10, v11, s3
	v_lshl_or_b32 v11, v12, 8, v12
	v_lshl_or_b32 v12, v16, 8, v16
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s8
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s9
	v_cndmask_b32_e64 v6, v25, v28, s3
	v_cndmask_b32_e64 v13, v20, v29, s3
	v_cndmask_b32_e64 v14, v29, v20, s3
	v_cndmask_b32_e64 v20, v3, v1, s3
	v_cndmask_b32_e64 v1, v1, v3, s3
	v_and_b32_e32 v3, 0x540054, v11
	v_and_b32_e32 v11, 0x760076, v12
	s_mov_b32 s5, 0x76543210
	v_cndmask_b32_e64 v16, v4, v2, s3
	v_cndmask_b32_e64 v2, v2, v4, s3
	v_permlanex16_b32 v4, v6, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v8, s5, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v3, v3, 4, v3
	v_lshl_or_b32 v8, v11, 4, v11
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v36, s43, v36
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v5, v28, v25, s3
	v_permlanex16_b32 v11, v14, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v18, s5, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v18, 0x5040504, v3
	v_and_b32_e32 v21, 0x7060706, v8
	v_permlanex16_b32 v22, v10, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v9, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v1, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v24, v2, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s43, v35
	v_cmp_gt_i32_e64 s0, s43, v34
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v1, v4, v5, v18
	v_perm_b32 v2, v4, v5, v21
	v_perm_b32 v3, v6, v7, v18
	v_perm_b32 v4, v6, v7, v21
	v_perm_b32 v5, v11, v13, v18
	v_perm_b32 v6, v11, v13, v21
	v_perm_b32 v7, v12, v15, v18
	v_perm_b32 v8, v12, v15, v21
	v_perm_b32 v11, v22, v17, v18
	v_perm_b32 v12, v22, v17, v21
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v17, v36, v35, 1
	v_add_lshl_u32 v0, v36, v0, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v9, v14, v19, v18
	v_perm_b32 v13, v23, v20, v18
	v_perm_b32 v15, v24, v16, v18
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v18, v36, v34, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v10, v14, v19, v21
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s4
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v36, v33, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v0, 0x80000000, v0, s3
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v14, v23, v20, v21
	v_perm_b32 v16, v24, v16, v21
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[1:4], v0, s[52:55], 0 offen
	buffer_store_b128 v[5:8], v17, s[52:55], 0 offen
	buffer_store_b128 v[9:12], v18, s[52:55], 0 offen
	buffer_store_b128 v[13:16], v19, s[52:55], 0 offen
	.loc	1 691 5 is_stmt 1               ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp77:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 181
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_vgpr, 181
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.numbered_sgpr, 69
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12544
; TotalNumSgprs: 71
; NumVgprs: 181
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 71
; NumVGPRsForWavesPerEU: 181
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     71
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     181
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
