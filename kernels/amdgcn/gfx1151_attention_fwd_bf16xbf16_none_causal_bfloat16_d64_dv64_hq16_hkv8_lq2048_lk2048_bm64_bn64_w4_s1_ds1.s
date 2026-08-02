	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[38:39], s[0:1], 0x5c
	s_load_b64 s[52:53], s[0:1], 0x0
.Ltmp0:
	.loc	1 787 79 prologue_end           ; attention.py:787:79
	v_and_b32_e32 v2, 7, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s4, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s2, s3, 11
	s_mov_b32 s55, 0x31027000
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v1, 3, v2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s4, v3
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s37, s4, s2
	s_mov_b32 s54, 0x7ffffffe
	s_clause 0x1
	s_load_b32 s8, s[0:1], 0x84
	s_load_b64 s[48:49], s[0:1], 0x38
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v22, 4, v0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x800, v4
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v101, 16, v0
	s_mov_b32 s40, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_cmp_eq_u32_e64 s34, 0, v101
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[96:97], null, s38, v3, v[1:2]
	s_mul_i32 s5, s38, s37
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s38, v1
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s53, s53, 0xffff
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[97:98], null, s38, 48, v[96:97]
	v_lshl_add_u32 v102, s38, 4, v96
	v_lshl_add_u32 v103, s38, 5, v96
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v3, v96, s5, 1
	.loc	1 810 48                        ; attention.py:810:48
	s_add_i32 s9, s4, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v4, v102, s5, 1
	v_add_lshl_u32 v5, v103, s5, 1
	v_add_lshl_u32 v6, v97, s5, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 810 48                        ; attention.py:810:48
	s_add_i32 s9, s9, 64
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
	v_and_b32_e32 v3, 0x60, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v5, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v4, 15, v0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s9, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v23, 1, v3
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v5, 0x70, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v100, v23, v4
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v22, v22, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s4, v100
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v104, 0, v22
	s_waitcnt vmcnt(3)
	ds_store_b128 v104, v[6:9]
	s_waitcnt vmcnt(2)
	ds_store_b128 v104, v[10:13] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v104, v[14:17] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v104, v[18:21] offset:6144
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x800, v5
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v105, s8, v5
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v4, 7, v4
	v_dual_mov_b32 v24, 0 :: v_dual_lshlrev_b32 v3, 6, v3
	v_lshlrev_b32_e32 v5, 4, v2
	v_and_b32_e32 v6, 0x78, v0
	v_bfe_i32 v0, v0, 3, 1
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s4, s3, 31
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v153, 4, v101
	.loc	1 788 26                        ; attention.py:788:26
	v_or3_b32 v3, v4, v3, v5
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s10, s4, 28
	v_and_b32_e32 v0, 0x410, v0
	s_clause 0x1
	s_load_b32 s11, s[0:1], 0x64
	s_load_b128 s[4:7], s[0:1], 0x8
	s_add_i32 s0, s3, s10
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v9, 0x50, v3, 0
	v_xad_u32 v7, 0x70, v3, 0
	v_xad_u32 v10, v3, 64, 0
	v_xad_u32 v8, 0x60, v3, 0
	ds_load_b128 v[44:47], v9
	ds_load_b128 v[40:43], v10
	v_xad_u32 v9, v3, 16, 0
	ds_load_b128 v[36:39], v7
	ds_load_b128 v[32:35], v8
	v_xad_u32 v7, v3, 48, 0
	v_xad_u32 v8, v3, 32, 0
	v_add_nc_u32_e32 v3, 0, v3
	ds_load_b128 v[60:63], v9
	ds_load_b128 v[56:59], v3
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v3, 1, v6
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, 0xfff0
	v_mov_b32_e32 v9, 0x7632
	s_sub_i32 s1, s3, s1
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s0, s0, 10
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[98:99], null, s39, v3, v[1:2]
	v_xor_b32_e32 v3, v5, v6
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s8, s1, 0x10007
	v_cndmask_b32_e64 v9, 0x3276, v9, s34
	s_add_i32 s1, s1, s8
	.loc	1 852 32                        ; attention.py:852:32
	s_and_b32 s0, s0, 0xffffc000
	v_lshl_or_b32 v107, v2, 10, v3
	v_mul_u32_u24_e32 v2, 0x90, v2
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s1, s1, 0x80000
	v_lshl_or_b32 v9, v9, 8, v9
	s_sext_i32_i16 s1, s1
	.loc	1 788 26                        ; attention.py:788:26
	ds_load_b128 v[52:55], v7
	ds_load_b128 v[48:51], v8
	v_xor_b32_e32 v110, v2, v0
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s1, s1, 10
	.loc	1 810 25                        ; attention.py:810:25
	s_min_i32 s3, s9, 0x800
	.loc	1 852 32                        ; attention.py:852:32
	s_and_b32 s51, s1, 0xfffff800
	.loc	1 811 35                        ; attention.py:811:35
	s_add_i32 s3, s3, 63
	v_xor_b32_e32 v26, 0x870, v110
	.loc	1 852 32                        ; attention.py:852:32
	s_add_i32 s51, s51, s0
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s39, v1
	v_and_b32_e32 v1, 0x760076, v9
	v_xor_b32_e32 v27, 0x840, v110
	v_dual_mov_b32 v155, 0xff800000 :: v_dual_add_nc_u32 v136, 0, v26
	v_mov_b32_e32 v26, v24
	v_or_b32_e32 v106, v5, v4
	v_mov_b32_e32 v4, 0x5410
	v_xor_b32_e32 v30, 0x1050, v110
	v_add_nc_u32_e32 v137, 0, v27
	v_mov_b32_e32 v27, v24
	v_xor_b32_e32 v7, 16, v106
	v_cndmask_b32_e64 v4, 0x1054, v4, s34
	v_add_nc_u32_e32 v140, 0, v30
	v_mov_b32_e32 v30, v24
	v_lshl_or_b32 v1, v1, 4, v1
	v_xor_b32_e32 v8, 32, v106
	v_lshl_or_b32 v4, v4, 8, v4
	v_xor_b32_e32 v10, 48, v106
	v_xor_b32_e32 v11, 64, v106
	v_xor_b32_e32 v12, 0x50, v106
	v_xor_b32_e32 v13, 0x60, v106
	v_and_b32_e32 v4, 0x540054, v4
	v_xor_b32_e32 v14, 0x70, v106
	v_and_b32_e32 v109, 0x7060706, v1
	v_xor_b32_e32 v1, 0x90, v107
	v_xor_b32_e32 v3, 0x120, v107
	v_lshl_or_b32 v4, v4, 4, v4
	v_xor_b32_e32 v0, 0x240, v107
	v_xor_b32_e32 v2, 0x2d0, v107
	v_xor_b32_e32 v5, 0x360, v107
	v_xor_b32_e32 v6, 0x3f0, v107
	v_and_b32_e32 v108, 0x5040504, v4
	v_xor_b32_e32 v4, 0x1b0, v107
	v_xor_b32_e32 v9, 16, v110
	v_xor_b32_e32 v15, 32, v110
	v_xor_b32_e32 v16, 48, v110
	v_xor_b32_e32 v17, 64, v110
	v_xor_b32_e32 v18, 0x50, v110
	v_xor_b32_e32 v19, 0x60, v110
	v_xor_b32_e32 v20, 0x70, v110
	v_xor_b32_e32 v21, 0x820, v110
	v_xor_b32_e32 v22, 0x830, v110
	v_xor_b32_e32 v23, 0x810, v110
	v_xor_b32_e32 v25, 0x860, v110
	v_xor_b32_e32 v28, 0x850, v110
	v_xor_b32_e32 v29, 0x1040, v110
	v_xor_b32_e32 v31, 0x1060, v110
	v_xor_b32_e32 v64, 0x1070, v110
	v_xor_b32_e32 v65, 0x1010, v110
	v_xor_b32_e32 v66, 0x1020, v110
	v_xor_b32_e32 v67, 0x1030, v110
	v_xor_b32_e32 v68, 0x1860, v110
	v_xor_b32_e32 v69, 0x1870, v110
	v_xor_b32_e32 v70, 0x1840, v110
	v_xor_b32_e32 v71, 0x1850, v110
	v_xor_b32_e32 v72, 0x1820, v110
	v_xor_b32_e32 v73, 0x1830, v110
	v_xor_b32_e32 v74, 0x1810, v110
	.loc	1 811 34                        ; attention.py:811:34
	s_ashr_i32 s8, s3, 31
	v_add_nc_u32_e32 v111, 0, v7
	s_lshr_b32 s8, s8, 26
	v_add_nc_u32_e32 v112, 0, v8
	v_add_nc_u32_e32 v113, 0, v10
	v_add_nc_u32_e32 v114, 0, v11
	v_add_nc_u32_e32 v115, 0, v12
	v_add_nc_u32_e32 v116, 0, v13
	v_dual_mov_b32 v8, v24 :: v_dual_add_nc_u32 v117, 0, v14
	v_add_nc_u32_e32 v118, 0, v1
	v_dual_mov_b32 v10, v24 :: v_dual_add_nc_u32 v119, 0, v3
	v_add_nc_u32_e32 v120, 0, v4
	v_dual_mov_b32 v12, v24 :: v_dual_add_nc_u32 v121, 0, v0
	v_dual_mov_b32 v11, v24 :: v_dual_add_nc_u32 v122, 0, v2
	v_dual_mov_b32 v14, v24 :: v_dual_add_nc_u32 v123, 0, v5
	v_dual_mov_b32 v13, v24 :: v_dual_add_nc_u32 v124, 0, v6
	v_dual_mov_b32 v0, v24 :: v_dual_add_nc_u32 v125, 0, v9
	v_add_nc_u32_e32 v126, 0, v15
	v_mov_b32_e32 v15, v24
	v_dual_mov_b32 v2, v24 :: v_dual_add_nc_u32 v127, 0, v16
	v_dual_mov_b32 v1, v24 :: v_dual_add_nc_u32 v128, 0, v17
	v_dual_mov_b32 v4, v24 :: v_dual_add_nc_u32 v129, 0, v18
	v_dual_mov_b32 v3, v24 :: v_dual_add_nc_u32 v130, 0, v19
	v_dual_mov_b32 v6, v24 :: v_dual_add_nc_u32 v131, 0, v20
	v_dual_mov_b32 v5, v24 :: v_dual_add_nc_u32 v132, 0, v21
	v_add_nc_u32_e32 v133, 0, v22
	v_dual_mov_b32 v7, v24 :: v_dual_add_nc_u32 v134, 0, v23
	v_add_nc_u32_e32 v135, 0, v25
	v_dual_mov_b32 v99, v24 :: v_dual_add_nc_u32 v138, 0, v28
	v_add_nc_u32_e32 v139, 0, v29
	v_add_nc_u32_e32 v141, 0, v31
	v_add_nc_u32_e32 v142, 0, v64
	v_add_nc_u32_e32 v143, 0, v65
	v_add_nc_u32_e32 v144, 0, v66
	v_add_nc_u32_e32 v145, 0, v67
	v_add_nc_u32_e32 v146, 0, v68
	v_add_nc_u32_e32 v147, 0, v69
	v_add_nc_u32_e32 v148, 0, v70
	v_add_nc_u32_e32 v149, 0, v71
	v_add_nc_u32_e32 v150, 0, v72
	v_add_nc_u32_e32 v151, 0, v73
	v_dual_mov_b32 v25, v24 :: v_dual_add_nc_u32 v152, 0, v74
	v_mov_b32_e32 v28, v24
	v_mov_b32_e32 v29, v24
	v_mov_b32_e32 v31, v24
	v_mov_b32_e32 v16, v24
	v_mov_b32_e32 v17, v24
	v_mov_b32_e32 v18, v24
	v_mov_b32_e32 v19, v24
	v_mov_b32_e32 v20, v24
	v_mov_b32_e32 v21, v24
	v_mov_b32_e32 v22, v24
	v_mov_b32_e32 v23, v24
	v_mov_b32_e32 v9, v24
	s_add_i32 s50, s3, s8
	.loc	1 860 31                        ; attention.py:860:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s60, s11, 0x3fb8aa3b
	s_and_b32 s5, s5, 0xffff
	.loc	1 811 33                        ; attention.py:811:33
	s_and_not1_b32 s50, s50, 63
	s_lshl_b32 s61, s39, 1
	s_mul_i32 s62, s39, 3
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
	s_mov_b32 s63, 0x76543210
	s_mov_b32 s64, s40
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 33 is_stmt 0                ; attention.py:0:33
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 853 32 is_stmt 1              ; attention.py:853:32
	s_add_i32 s1, s51, s64
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v163, s47 :: v_dual_add_nc_u32 v88, 0, v106
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s3, s1, s38
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v162, s46 :: v_dual_mov_b32 v161, s45
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v64, s3, v96, 1
	v_add_lshl_u32 v65, s3, v102, 1
	v_add_lshl_u32 v66, s3, v103, 1
	v_add_lshl_u32 v67, s3, v97, 1
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v160, s44 :: v_dual_mov_b32 v159, s43
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e32 v64, 0x80000000, v64, vcc_lo
	v_cndmask_b32_e32 v68, 0x80000000, v65, vcc_lo
	v_cndmask_b32_e32 v72, 0x80000000, v66, vcc_lo
	v_cndmask_b32_e32 v76, 0x80000000, v67, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[64:67], v64, s[52:55], 0 offen
	buffer_load_b128 v[68:71], v68, s[52:55], 0 offen
	buffer_load_b128 v[72:75], v72, s[52:55], 0 offen
	buffer_load_b128 v[76:79], v76, s[52:55], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v158, s42 :: v_dual_mov_b32 v157, s41
	v_mov_b32_e32 v156, s40
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(3)
	ds_store_b128 v104, v[64:67]
	s_waitcnt vmcnt(2)
	ds_store_b128 v104, v[68:71] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v104, v[72:75] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v104, v[76:79] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[68:71], v111
	ds_load_b128 v[64:67], v88
	ds_load_b128 v[72:75], v88 offset:2048
	ds_load_b128 v[76:79], v111 offset:2048
	ds_load_b128 v[84:87], v111 offset:4096
	ds_load_b128 v[80:83], v88 offset:4096
	ds_load_b128 v[88:91], v88 offset:6144
	ds_load_b128 v[92:95], v111 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[164:171], v[64:71], v[56:63], v[156:163]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[64:71], v[72:79], v[56:63], v[156:163]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[72:79], v[80:87], v[56:63], v[156:163]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[84:87], v113
	ds_load_b128 v[80:83], v112
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[172:179], v[88:95], v[56:63], v[156:163]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[164:171], v[80:87], v[48:55], v[164:171]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[80:83], v112 offset:2048
	ds_load_b128 v[84:87], v113 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[64:71], v[80:87], v[48:55], v[64:71]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[84:87], v113 offset:4096
	ds_load_b128 v[80:83], v112 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[72:79], v[80:87], v[48:55], v[72:79]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[80:83], v112 offset:6144
	ds_load_b128 v[84:87], v113 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[172:179], v[80:87], v[48:55], v[172:179]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[84:87], v115
	ds_load_b128 v[80:83], v114
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[164:171], v[80:87], v[40:47], v[164:171]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[80:83], v114 offset:2048
	ds_load_b128 v[84:87], v115 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[64:71], v[80:87], v[40:47], v[64:71]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[84:87], v115 offset:4096
	ds_load_b128 v[80:83], v114 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[72:79], v[80:87], v[40:47], v[72:79]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[80:83], v114 offset:6144
	ds_load_b128 v[84:87], v115 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[172:179], v[80:87], v[40:47], v[172:179]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[84:87], v117
	ds_load_b128 v[80:83], v116
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[164:171], v[80:87], v[32:39], v[164:171]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[80:83], v116 offset:2048
	ds_load_b128 v[84:87], v117 offset:2048
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v93, s60, v164 :: v_dual_mul_f32 v94, s60, v165
	v_dual_mul_f32 v91, s60, v166 :: v_dual_mul_f32 v92, s60, v167
	v_dual_mul_f32 v95, s60, v168 :: v_dual_mul_f32 v154, s60, v169
	v_mul_f32_e32 v89, s60, v171
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[64:71], v[80:87], v[32:39], v[64:71]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[84:87], v117 offset:4096
	ds_load_b128 v[80:83], v116 offset:4096
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v88, s60, v170 :: v_dual_mul_f32 v159, s60, v68
	v_dual_mul_f32 v90, s60, v64 :: v_dual_mul_f32 v157, s60, v66
	v_dual_mul_f32 v156, s60, v65 :: v_dual_mul_f32 v161, s60, v70
	v_mad_u64_u32 v[64:65], null, s1, s39, v[98:99]
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v68, 0, v107
	s_delay_alu instid0(VALU_DEP_2)
	v_lshlrev_b32_e32 v65, 1, v64
	v_add_lshl_u32 v66, v64, s61, 1
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[72:79], v[80:87], v[32:39], v[72:79]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[80:83], v116 offset:6144
	ds_load_b128 v[84:87], v117 offset:6144
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v158, s60, v67
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v67, v64, s62, 1
	v_add_lshl_u32 v64, v64, s39, 1
	v_cndmask_b32_e64 v65, 0x80000000, v65, s0
	v_cndmask_b32_e64 v66, 0x80000000, v66, s0
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v160, s60, v69 :: v_dual_mul_f32 v165, s60, v74
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v67, 0x80000000, v67, s0
	v_cndmask_b32_e64 v64, 0x80000000, v64, s0
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v162, s60, v71 :: v_dual_mul_f32 v167, s60, v76
	v_dual_mul_f32 v163, s60, v72 :: v_dual_mul_f32 v164, s60, v73
	v_mul_f32_e32 v169, s60, v78
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[172:179], v[80:87], v[32:39], v[172:179]
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v166, s60, v75
	v_mul_f32_e32 v168, s60, v77
	v_mul_f32_e32 v170, s60, v79
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[73:76], v65, s[56:59], 0 offen
	buffer_load_b128 v[77:80], v66, s[56:59], 0 offen
	buffer_load_b128 v[69:72], v67, s[56:59], 0 offen
	buffer_load_b128 v[64:67], v64, s[56:59], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v171, s60, v172 :: v_dual_mul_f32 v172, s60, v173
	v_mul_f32_e32 v83, s60, v175
	v_mul_f32_e32 v173, s60, v174
	v_dual_mul_f32 v85, s60, v176 :: v_dual_mul_f32 v84, s60, v177
	v_mul_f32_e32 v87, s60, v179
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v81.l, v73.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v82.l, v77.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v82.h, v69.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v81.h, v64.l
	v_mov_b16_e32 v64.l, v73.h
	v_mov_b16_e32 v69.l, v77.h
	v_mov_b16_e32 v73.h, v66.l
	v_mov_b16_e32 v66.l, v75.h
	ds_store_b64 v68, v[81:82]
	v_mov_b16_e32 v81.h, v65.l
	v_mov_b32_e32 v68, v64
	v_mov_b16_e32 v65.l, v74.h
	v_mov_b16_e32 v82.l, v78.l
	v_mov_b16_e32 v82.h, v70.l
	v_mov_b16_e32 v81.l, v74.l
	ds_store_b64 v118, v[68:69]
	ds_store_b64 v119, v[81:82]
	v_mov_b16_e32 v70.l, v78.h
	v_mov_b32_e32 v69, v65
	v_mov_b16_e32 v74.l, v79.l
	v_mov_b16_e32 v74.h, v71.l
	v_mov_b16_e32 v73.l, v75.l
	v_mov_b16_e32 v65.h, v72.l
	v_mov_b16_e32 v72.l, v80.h
	ds_store_b64 v120, v[69:70]
	ds_store_b64 v121, v[73:74]
	v_mov_b16_e32 v71.l, v79.h
	v_mov_b32_e32 v70, v66
	v_mov_b16_e32 v65.l, v80.l
	v_mov_b16_e32 v64.l, v76.l
	v_mov_b16_e32 v64.h, v67.l
	v_mov_b32_e32 v68, v72
	v_mov_b16_e32 v67.l, v76.h
	ds_store_b64 v122, v[70:71]
	ds_store_b64 v123, v[64:65]
	ds_store_b64 v124, v[67:68]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v64, s64, v153
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s64, s64, 64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 52, v64
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s28, v64, v105
	v_cmp_le_i32_e64 s3, v65, v105
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, 50, v64
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s35, s2, s28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s1, v65, v105
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v65, 48, v64
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s1, s2, s1
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s4, v65, v105
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v65, 46, v64
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v74, 0xff800000, v172, s1
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s4, s2, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s5, v65, v105
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v65, 44, v64
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v73, 0xff800000, v171, s4
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s6, s2, s5
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s7, v65, v105
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v65, 42, v64
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s5, s2, s3
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v76, 0xff800000, v170, s6
	v_cndmask_b32_e64 v72, 0xff800000, v173, s5
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s7, s2, s7
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s8, v65, v105
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v65, 40, v64
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v75, 0xff800000, v169, s7
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s8, s2, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s9, v65, v105
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v65, 38, v64
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v78, 0xff800000, v168, s8
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s9, s2, s9
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s10, v65, v105
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v65, 36, v64
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v77, 0xff800000, v167, s9
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v66, v78, v75, v76
.Ltmp2:
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s10, s2, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s11, v65, v105
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	v_cndmask_b32_e64 v80, 0xff800000, v166, s10
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v65, v73, v74, v72
.Ltmp4:
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s11, s2, s11
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v79, 0xff800000, v165, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v67, v79, v80, v77
	v_max3_f32 v65, v67, v66, v65
.Ltmp6:
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, 34, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s3, v66, v105
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, 32, v64
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s12, s2, s3
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s16, v66, v105
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v66, 30, v64
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v82, 0xff800000, v164, s12
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s16, s2, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s13, v66, v105
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v66, 28, v64
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v81, 0xff800000, v163, s16
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s13, s2, s13
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s14, v66, v105
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v66, 26, v64
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v162, 0xff800000, v162, s13
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s14, s2, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s15, v66, v105
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v66, 24, v64
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v161, 0xff800000, v161, s14
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s15, s2, s15
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s17, v66, v105
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v66, 22, v64
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v160, 0xff800000, v160, s15
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s17, s2, s17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s18, v66, v105
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v66, 20, v64
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v159, 0xff800000, v159, s17
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s18, s2, s18
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s19, v66, v105
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v66, 18, v64
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v158, 0xff800000, v158, s18
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v67, v159, v160, v161
.Ltmp8:
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s19, s2, s19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(SALU_CYCLE_1)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s20, v66, v105
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	v_cndmask_b32_e64 v157, 0xff800000, v157, s19
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v66, v162, v81, v82
.Ltmp10:
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s20, s2, s20
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v156, 0xff800000, v156, s20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v68, v156, v157, v158
	v_max3_f32 v66, v68, v67, v66
.Ltmp12:
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v67, 2, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s3, v67, v105
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v67, 16, v64
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s3, s2, s3
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s21, v67, v105
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v67, 14, v64
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v68, 0xff800000, v94, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s22, v67, v105
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v67, 12, v64
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s23, v67, v105
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v67, 10, v64
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s28, s2, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s24, v67, v105
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v67, 8, v64
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v88, 0xff800000, v88, s28
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s29, s2, s24
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s25, v67, v105
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v67, 6, v64
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v70, 0xff800000, v154, s29
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s30, s2, s25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s26, v67, v105
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v67, 4, v64
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v69, 0xff800000, v95, s30
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s31, s2, s26
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s27, v67, v105
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	v_cndmask_b32_e64 v67, 0xff800000, v93, s35
	v_cndmask_b32_e64 v71, 0xff800000, v92, s31
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s26, s2, s21
	s_and_b32 s33, s2, s27
	s_and_b32 s27, s2, s22
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v93, 0xff800000, v91, s33
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v91, v67, v68
	v_max3_f32 v92, v71, v69, v70
.Ltmp14:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v163, 0xff800000, v89, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v92, v91, v93, v92
.Ltmp16:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v91, 0xff800000, v90, s26
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v89, v88, v163, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v66, v92, v89, v66
.Ltmp18:
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v89, 62, v64
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s21, v89, v105
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v89, 58, v64
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s21, s2, s21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s22, v89, v105
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v89, 56, v64
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v87, 0xff800000, v87, s21
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s22, s2, s22
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s23, v89, v105
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v89, 60, v64
	v_or_b32_e32 v64, 54, v64
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s24, s2, s23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s25, v89, v105
	v_cmp_le_i32_e64 s36, v64, v105
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_mov_b16_e32 v89.h, 0
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v86, s60, v178
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v85, 0xff800000, v85, s24
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s23, s2, s25
	s_and_b32 s25, s2, s36
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s64, s50
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v86, 0xff800000, v86, s23
	v_cndmask_b32_e64 v90, 0xff800000, v83, s25
	v_cndmask_b32_e64 v83, 0xff800000, v84, s22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v64, v86, v87
	v_max_f32_e32 v84, v90, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v64, v84, v83, v64
	v_max3_f32 v64, v66, v65, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v65, v64, s63, 0xfedcba98 op_sel:[1,0]
.Ltmp21:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v154, v155, v64, v65
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v64, v68, v154
	v_sub_f32_e32 v65, v67, v154
	v_sub_f32_e32 v67, v71, v154
	v_sub_f32_e32 v71, v163, v154
	v_sub_f32_e32 v78, v78, v154
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v64, v64
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v71, v71
	v_exp_f32_e32 v78, v78
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v72, v72, v154
	v_sub_f32_e32 v90, v90, v154
	v_sub_f32_e32 v80, v80, v154
	v_sub_f32_e32 v76, v76, v154
	v_sub_f32_e32 v74, v74, v154
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v84, 0, v64, s3
	v_cndmask_b32_e64 v92, 0, v65, s35
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v64.h, v89.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v166, 0, v67, s31
	v_cndmask_b32_e64 v164, 0, v71, s27
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v89.l, v84.h
	v_mov_b16_e32 v64.l, v92.h
	v_cmp_o_f32_e64 s3, v84, v84
	v_cmp_o_f32_e64 s35, v92, v92
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v78, 0, v78, s8
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v65, 1, v89
	v_and_b32_e32 v64, 1, v64
	v_mov_b16_e64 v89.l, v166.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	v_exp_f32_e32 v90, v90
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v65, v84, v65, 0x7fff
	v_add3_u32 v64, v92, v64, 0x7fff
	v_and_b32_e32 v67, 1, v89
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v80, v80
	v_exp_f32_e32 v76, v76
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v65.h, 0x7fff, v65.h, s3
	v_cndmask_b16 v65.l, 0x7fff, v64.h, s35
	v_cmp_o_f32_e64 s3, v166, v166
	v_add3_u32 v67, v166, v67, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s5
	v_cndmask_b32_e64 v90, 0, v90, s25
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v66, v65, s63, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v74, v74
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v67.h, 0x7fff, v67.h, s3
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v76, 0, v76, s6
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v86, v86, v154
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_perm_b32 v64, v66, v65, v108
	v_perm_b32 v65, v66, v65, v109
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v93, v154
	v_sub_f32_e32 v81, v81, v154
	v_sub_f32_e32 v79, v79, v154
	v_sub_f32_e32 v77, v77, v154
	v_sub_f32_e32 v75, v75, v154
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v73, v73, v154
	v_sub_f32_e32 v85, v85, v154
	v_sub_f32_e32 v83, v83, v154
	v_sub_f32_e32 v87, v87, v154
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v86, v86
	v_exp_f32_e32 v81, v81
	v_exp_f32_e32 v77, v77
	v_exp_f32_e32 v79, v79
	v_exp_f32_e32 v87, v87
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v165, 0, v66, s33
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v66.h, v89.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v75, v75
	v_exp_f32_e32 v73, v73
	v_exp_f32_e32 v85, v85
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v66.l, v165.h
	v_cmp_o_f32_e64 s31, v165, v165
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v83, v83
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v81, 0, v81, s16
	v_cndmask_b32_e64 v77, 0, v77, s9
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v66, 1, v66
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v79, 0, v79, s11
	v_cndmask_b32_e64 v75, 0, v75, s7
	v_cndmask_b32_e64 v73, 0, v73, s4
	v_cndmask_b32_e64 v85, 0, v85, s24
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v66, v165, v66, 0x7fff
	v_cmp_o_f32_e64 s11, v72, v72
	v_cmp_o_f32_e64 s6, v81, v81
	v_cmp_o_f32_e64 s7, v79, v79
	v_cmp_o_f32_e64 s8, v77, v77
	v_cndmask_b16 v67.l, 0x7fff, v66.h, s31
	v_cmp_o_f32_e64 s9, v75, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v68, v67, s63, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v66, v68, v67, v108
	v_perm_b32 v67, v68, v67, v109
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v68, v69, v154
	v_sub_f32_e32 v69, v70, v154
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v69, v69
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v94, 0, v68, s30
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v68.h, v89.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v95, 0, v69, s29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v68.l, v94.h
	v_cmp_o_f32_e64 s29, v94, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v89.l, v95.h
	v_cmp_o_f32_e64 s3, v95, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v68, 1, v68
	v_add3_u32 v68, v94, v68, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v69.l, 0x7fff, v68.h, s29
	v_and_b32_e32 v68, 1, v89
	v_mov_b16_e64 v89.l, v164.h
	v_add3_u32 v68, v95, v68, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v69.h, 0x7fff, v68.h, s3
	v_cmp_o_f32_e64 s3, v164, v164
	v_permlanex16_b32 v70, v69, s63, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v68, v70, v69, v108
	v_perm_b32 v69, v70, v69, v109
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v88, v154
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v163, 0, v70, s28
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v70.h, v89.h
	v_mov_b16_e64 v70.l, v163.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s27, v163, v163
	v_and_b32_e32 v70, 1, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v70, v163, v70, 0x7fff
	v_cndmask_b16 v71.l, 0x7fff, v70.h, s27
	v_and_b32_e32 v70, 1, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v70, v164, v70, 0x7fff
	v_cndmask_b16 v71.h, 0x7fff, v70.h, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v155
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v88, v71, s63, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v70, v88, v71, v108
	v_perm_b32 v71, v88, v71, v109
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v88, v155, v154
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v155, 0, v80, s10
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v73, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v88, v88
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cndmask_b32_e64 v93, 0, v88, s3
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v11, v11, v93 :: v_dual_add_nc_u32 v88, 0, v110
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[167:170], v88
	ds_load_b128 v[171:174], v125
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v24, v24, v93
	v_mul_f32_e32 v25, v25, v93
	v_mul_f32_e32 v26, v26, v93
	v_mul_f32_e32 v27, v27, v93
	v_mul_f32_e32 v28, v28, v93
	v_mul_f32_e32 v29, v29, v93
	v_mul_f32_e32 v30, v30, v93
	v_mul_f32_e32 v31, v31, v93
	v_mul_f32_e32 v16, v16, v93
	v_mul_f32_e32 v17, v17, v93
	v_mul_f32_e32 v18, v18, v93
	v_mul_f32_e32 v19, v19, v93
	v_mul_f32_e32 v20, v20, v93
	v_mul_f32_e32 v21, v21, v93
	v_mul_f32_e32 v22, v22, v93
	v_mul_f32_e32 v23, v23, v93
	v_mul_f32_e32 v8, v8, v93
	v_mul_f32_e32 v9, v9, v93
	v_mul_f32_e32 v10, v10, v93
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[167:174], v[64:71], v[24:31]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[167:170], v132
	ds_load_b128 v[171:174], v133
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v12, v12, v93
	v_mul_f32_e32 v13, v13, v93
	v_mul_f32_e32 v14, v14, v93
	v_mul_f32_e32 v15, v15, v93
	v_mul_f32_e32 v0, v0, v93
	v_mul_f32_e32 v1, v1, v93
	v_mul_f32_e32 v2, v2, v93
	v_mul_f32_e32 v3, v3, v93
	v_mul_f32_e32 v4, v4, v93
	v_mul_f32_e32 v5, v5, v93
	v_mul_f32_e32 v6, v6, v93
	v_mul_f32_e32 v7, v7, v93
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[167:174], v[64:71], v[16:23]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[167:170], v139
	ds_load_b128 v[171:174], v140
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[167:174], v[64:71], v[8:15]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[167:170], v146
	ds_load_b128 v[171:174], v147
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[167:174], v[64:71], v[0:7]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v68, v157, v154
	v_sub_f32_e32 v69, v158, v154
	v_sub_f32_e32 v66, v91, v154
	v_sub_f32_e32 v67, v156, v154
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v64, v92, v84
.Ltmp23:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v69, v69
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v70, v159, v154
	v_sub_f32_e32 v71, v160, v154
	v_sub_f32_e32 v84, v161, v154
	v_sub_f32_e32 v91, v162, v154
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v71, v71
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s19
	v_cndmask_b32_e64 v69, 0, v69, s18
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v82, v82, v154
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v84, v84
	v_exp_f32_e32 v91, v91
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v158, 0, v87, s21
.Ltmp24:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v80, v94, v95 :: v_dual_add_f32 v95, v68, v69
.Ltmp25:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v82, v82
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s26
	v_cndmask_b32_e64 v67, 0, v67, s20
.Ltmp26:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v65, v165, v166
.Ltmp27:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s17
	v_cndmask_b32_e64 v71, 0, v71, s15
	v_cndmask_b32_e64 v84, 0, v84, s14
	v_cndmask_b32_e64 v91, 0, v91, s13
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v89.l, v67.h
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v94, v66, v67
.Ltmp29:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v92, 0, v82, s12
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v82, v163, v164
	v_dual_add_f32 v64, v64, v65 :: v_dual_add_f32 v65, v70, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v94, v94, v95 :: v_dual_add_f32 v95, v81, v92
	v_add_f32_e32 v80, v80, v82
	v_add_f32_e32 v82, v84, v91
	v_dual_add_f32 v156, v75, v76 :: v_dual_add_f32 v157, v72, v90
.Ltmp31:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v68, v68
	v_cmp_o_f32_e64 s4, v70, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v65, v65, v82 :: v_dual_add_f32 v82, v79, v155
.Ltmp33:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s5, v84, v84
	v_cmp_o_f32_e64 s14, v67, v67
	v_cmp_o_f32_e64 s12, v85, v85
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v65, v94, v65 :: v_dual_add_f32 v82, v95, v82
	v_add_f32_e32 v95, v77, v78
.Ltmp35:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s15, v69, v69
	v_cmp_o_f32_e64 s16, v71, v71
	v_cmp_o_f32_e64 s17, v91, v91
	v_cmp_o_f32_e64 s18, v92, v92
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v95, v95, v156
.Ltmp37:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v156, 0, v74, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v66, v66
	v_cmp_o_f32_e64 s19, v155, v155
	v_cmp_o_f32_e64 s20, v78, v78
	v_cmp_o_f32_e64 s21, v76, v76
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v74, v73, v156
.Ltmp39:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s25, v158, v158
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[163:166], v130
	ds_load_b128 v[167:170], v131
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v74, v74, v157
.Ltmp41:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v157, 0, v83, s22
	v_cndmask_b32_e64 v83, 0, v86, s23
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s22, v156, v156
	v_cmp_o_f32_e64 s23, v90, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v86, v85, v157 :: v_dual_add_f32 v87, v83, v158
.Ltmp43:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s13, v83, v83
	v_cmp_o_f32_e64 s24, v157, v157
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v86, v86, v87
.Ltmp45:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v87.h, v89.h
	v_mov_b16_e32 v87.l, v66.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v74, v74, v86 :: v_dual_and_b32 v87, 1, v87
.Ltmp47:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v66, v66, v87, 0x7fff
	v_mov_b16_e32 v87.h, v89.h
	v_mov_b16_e32 v87.l, v68.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v66.l, 0x7fff, v66.h, s1
	v_and_b32_e32 v87, 1, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v68, v68, v87, 0x7fff
	v_mov_b16_e32 v87.h, v89.h
	v_mov_b16_e32 v87.l, v70.h
	v_cndmask_b16 v68.l, 0x7fff, v68.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v87, 1, v87
	v_add3_u32 v70, v70, v87, 0x7fff
	v_mov_b16_e32 v87.h, v89.h
	v_mov_b16_e32 v87.l, v84.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v70.l, 0x7fff, v70.h, s4
	v_and_b32_e32 v87, 1, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v84, v84, v87, 0x7fff
	v_mov_b16_e32 v87.h, v89.h
	v_mov_b16_e32 v87.l, v81.h
	v_and_b32_e32 v87, 1, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add3_u32 v81, v81, v87, 0x7fff
	v_mov_b16_e32 v87.h, v89.h
	v_mov_b16_e32 v87.l, v79.h
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v64, v64, v80 :: v_dual_and_b32 v87, 1, v87
	v_mov_b32_e32 v80, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp49:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v79, v79, v87, 0x7fff
	v_mov_b16_e32 v87.h, v89.h
	v_mov_b16_e32 v87.l, v77.h
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v64, v64, v65 :: v_dual_and_b32 v87, 1, v87
	v_add_f32_e32 v82, v82, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp51:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v77, v77, v87, 0x7fff
	v_mov_b16_e32 v87.h, v89.h
	v_mov_b16_e32 v87.l, v75.h
.Ltmp52:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v65, v82, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp53:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v77.l, 0x7fff, v77.h, s8
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v64, v64, v65 :: v_dual_and_b32 v87, 1, v87
.Ltmp55:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v65, 1, v89
	v_mov_b16_e32 v89.l, v69.h
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v75, v75, v87, 0x7fff
	v_mov_b16_e32 v87.h, v89.h
	v_mov_b16_e32 v87.l, v73.h
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v74, v64, s63, 0xfedcba98 op_sel:[1,0]
.Ltmp57:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v65, v67, v65, 0x7fff
	v_and_b32_e32 v67, 1, v89
	v_mov_b16_e32 v89.l, v71.h
	v_and_b32_e32 v87, 1, v87
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v99, v64, v74
.Ltmp59:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v66.h, 0x7fff, v65.h, s14
	v_add3_u32 v64, v69, v67, 0x7fff
	v_and_b32_e32 v65, 1, v89
	v_add3_u32 v73, v73, v87, 0x7fff
	v_mov_b16_e32 v87.h, v89.h
	v_mov_b16_e32 v87.l, v72.h
	v_mov_b16_e32 v89.l, v91.h
	v_permlanex16_b32 v67, v66, s63, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v68.h, 0x7fff, v64.h, s15
	v_add3_u32 v64, v71, v65, 0x7fff
	v_and_b32_e32 v87, 1, v87
	v_and_b32_e32 v65, 1, v89
	v_mov_b16_e32 v89.l, v92.h
	v_cndmask_b16 v73.l, 0x7fff, v81.h, s6
	v_perm_b32 v81, v67, v66, v109
	v_add3_u32 v72, v72, v87, 0x7fff
	v_mov_b16_e32 v87.h, v89.h
	v_mov_b16_e32 v87.l, v85.h
	v_cndmask_b16 v70.h, 0x7fff, v64.h, s16
	v_add3_u32 v64, v91, v65, 0x7fff
	v_and_b32_e32 v65, 1, v89
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v99, v80, v93
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v87, 1, v87
	v_perm_b32 v80, v67, v66, v108
	v_permlanex16_b32 v66, v68, s63, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e64 v89.l, v155.h
	v_cndmask_b16 v72.l, 0x7fff, v84.h, s5
	v_add3_u32 v85, v85, v87, 0x7fff
	v_mov_b16_e32 v87.h, v89.h
	v_mov_b16_e32 v87.l, v83.h
	v_cndmask_b16 v95.l, 0x7fff, v72.h, s11
	v_perm_b32 v82, v66, v68, v108
	v_cndmask_b16 v72.h, 0x7fff, v64.h, s17
	v_add3_u32 v64, v92, v65, 0x7fff
	v_and_b32_e32 v87, 1, v87
	v_and_b32_e32 v65, 1, v89
	v_mov_b16_e32 v89.l, v78.h
	v_cndmask_b16 v94.l, 0x7fff, v73.h, s10
	v_cndmask_b16 v159.l, 0x7fff, v85.h, s12
	v_add3_u32 v83, v83, v87, 0x7fff
	v_cndmask_b16 v73.h, 0x7fff, v64.h, s18
	v_permlanex16_b32 v64, v72, s63, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v65, v155, v65, 0x7fff
	v_cndmask_b16 v79.l, 0x7fff, v75.h, s9
	v_cndmask_b16 v160.l, 0x7fff, v83.h, s13
	v_perm_b32 v83, v66, v68, v109
	v_permlanex16_b32 v66, v70, s63, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v86, v64, v72, v108
	v_perm_b32 v87, v64, v72, v109
	v_cndmask_b16 v75.h, 0x7fff, v65.h, s19
	v_cndmask_b16 v75.l, 0x7fff, v79.h, s7
	v_perm_b32 v84, v66, v70, v108
	v_perm_b32 v85, v66, v70, v109
	v_and_b32_e32 v66, 1, v89
	v_mov_b16_e32 v89.l, v76.h
	v_permlanex16_b32 v67, v73, s63, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v64, v78, v66, 0x7fff
	v_and_b32_e32 v65, 1, v89
	v_mov_b16_e64 v89.l, v156.h
	v_permlanex16_b32 v66, v75, s63, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v72, v67, v73, v108
	v_cndmask_b16 v77.h, 0x7fff, v64.h, s20
	v_add3_u32 v64, v76, v65, 0x7fff
	v_and_b32_e32 v65, 1, v89
	v_mov_b16_e32 v89.l, v90.h
	v_perm_b32 v74, v66, v75, v108
	v_perm_b32 v75, v66, v75, v109
	v_cndmask_b16 v79.h, 0x7fff, v64.h, s21
	v_add3_u32 v65, v156, v65, 0x7fff
	v_and_b32_e32 v64, 1, v89
	v_mov_b16_e64 v89.l, v157.h
	v_perm_b32 v73, v67, v73, v109
	v_permlanex16_b32 v66, v79, s63, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v94.h, 0x7fff, v65.h, s22
	v_add3_u32 v64, v90, v64, 0x7fff
	v_and_b32_e32 v68, 1, v89
	v_mov_b16_e64 v89.l, v158.h
	v_perm_b32 v78, v66, v79, v108
	v_perm_b32 v79, v66, v79, v109
	v_permlanex16_b32 v67, v77, s63, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v68, v157, v68, 0x7fff
	v_and_b32_e32 v65, 1, v89
	v_cndmask_b16 v95.h, 0x7fff, v64.h, s23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_perm_b32 v76, v67, v77, v108
	v_cndmask_b16 v159.h, 0x7fff, v68.h, s24
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v66, v158, v65, 0x7fff
	v_perm_b32 v77, v67, v77, v109
	v_permlanex16_b32 v67, v94, s63, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v69, v95, s63, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v70, v159, s63, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v160.h, 0x7fff, v66.h, s25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_perm_b32 v64, v67, v94, v108
	v_perm_b32 v65, v67, v94, v109
	v_perm_b32 v66, v69, v95, v108
	v_permlanex16_b32 v71, v160, s63, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v67, v69, v95, v109
	v_perm_b32 v68, v70, v159, v108
	v_perm_b32 v69, v70, v159, v109
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v70, v71, v160, v108
	v_perm_b32 v71, v71, v160, v109
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[155:158], v126
	ds_load_b128 v[159:162], v127
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[155:162], v[80:87], v[24:31]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[155:158], v88 offset:2048
	ds_load_b128 v[159:162], v134
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[155:162], v[80:87], v[16:23]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[155:158], v141
	ds_load_b128 v[159:162], v142
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[155:162], v[80:87], v[8:15]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[155:158], v148
	ds_load_b128 v[159:162], v149
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[155:162], v[80:87], v[0:7]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[80:83], v128
	ds_load_b128 v[84:87], v129
	ds_load_b128 v[155:158], v135
	ds_load_b128 v[159:162], v136
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[80:87], v[72:79], v[24:31]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[84:87], v143
	ds_load_b128 v[80:83], v88 offset:4096
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[155:162], v[72:79], v[16:23]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[155:158], v150
	ds_load_b128 v[159:162], v151
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[24:31], v[163:170], v[64:71], v[24:31]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[80:87], v[72:79], v[8:15]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[155:162], v[72:79], v[0:7]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[72:75], v88 offset:6144
	ds_load_b128 v[80:83], v144
	ds_load_b128 v[88:91], v137
	ds_load_b128 v[92:95], v138
	ds_load_b128 v[84:87], v145
	ds_load_b128 v[76:79], v152
	v_mov_b32_e32 v155, v154
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[88:95], v[64:71], v[16:23]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[80:87], v[64:71], v[8:15]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[72:79], v[64:71], v[0:7]
	.loc	1 818 13                        ; attention.py:818:13
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
	v_mov_b32_e32 v99, v7
.LBB0_4:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_scale_f32 v36, null, v99, v99, v24
	v_div_scale_f32 v37, null, v99, v99, v25
	v_div_scale_f32 v41, null, v99, v99, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v38, v36
	v_rcp_f32_e32 v39, v37
	v_div_scale_f32 v43, null, v99, v99, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v44, v41
	v_div_scale_f32 v40, vcc_lo, v24, v99, v24
	v_rcp_f32_e32 v46, v43
	v_div_scale_f32 v42, s0, v25, v99, v25
	v_fma_f32 v33, -v36, v38, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v34, -v37, v39, 1.0
	v_div_scale_f32 v45, s1, v26, v99, v26
	v_fma_f32 v35, -v41, v44, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v38, v33, v38 :: v_dual_fmac_f32 v39, v34, v39
	v_fma_f32 v51, -v43, v46, 1.0
	v_div_scale_f32 v48, s3, v27, v99, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v47, v40, v38 :: v_dual_fmac_f32 v44, v35, v44
	v_dual_mul_f32 v49, v42, v39 :: v_dual_fmac_f32 v46, v51, v46
	v_div_scale_f32 v51, null, v99, v99, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v36, v47, v40
	v_fma_f32 v52, -v37, v49, v42
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v32, 1, v101
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s51, 0x31027000
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v47, v50, v38 :: v_dual_mul_f32 v50, v45, v44
	v_fmac_f32_e32 v49, v52, v39
	v_div_scale_f32 v52, null, v99, v99, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v36, v47, v40
	v_div_scale_f32 v40, null, v99, v99, v28
	v_fma_f32 v37, -v37, v49, v42
	v_fma_f32 v42, -v41, v50, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v36, v36, v38, v47
	v_rcp_f32_e32 v38, v40
	s_mov_b32 vcc_lo, s0
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v99
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v50, v42, v44
	v_div_fixup_f32 v24, v36, v99, v24
	v_div_fmas_f32 v36, v37, v39, v49
	v_rcp_f32_e32 v37, v51
	s_mov_b32 vcc_lo, s1
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v35, 16, v32
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v42, -v40, v38, 1.0
	v_div_fixup_f32 v25, v36, v99, v25
	v_fma_f32 v36, -v41, v50, v45
	v_div_scale_f32 v45, s1, v29, v99, v29
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v34, 32, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v51, v37, 1.0
	v_fmac_f32_e32 v38, v42, v38
	v_div_scale_f32 v42, null, v99, v99, v30
	v_div_fmas_f32 v36, v36, v44, v50
	v_fmac_f32_e32 v37, v41, v37
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v42
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v26, v36, v99, v26
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v33, 48, v32
	s_mov_b32 s50, 0x7ffffffe
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v49, -v42, v41, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v26, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v49, v41
	v_mul_f32_e32 v47, v48, v46
	v_fma_f32 v39, -v43, v47, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v47, v39, v46
	v_div_scale_f32 v39, s4, v28, v99, v28
	v_fma_f32 v43, -v43, v47, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v44, v39, v38
	v_div_scale_f32 v48, null, v99, v99, v31
	v_div_fmas_f32 v43, v43, v46, v47
	v_mul_f32_e32 v47, v45, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v46, -v40, v44, v39
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v50, v48
	v_div_fixup_f32 v27, v43, v99, v27
	v_fma_f32 v36, -v51, v47, v45
	v_fmac_f32_e32 v44, v46, v38
	v_div_scale_f32 v46, null, v99, v99, v16
	v_div_scale_f32 v43, s3, v30, v99, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v36, v37
	v_fma_f32 v39, -v40, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v40, v46
	v_fma_f32 v49, -v48, v50, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v39, v38, v44
	v_fma_f32 v39, -v51, v47, v45
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v28, v38, v99, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v46, v40, 1.0
	v_div_fmas_f32 v37, v39, v37, v47
	v_rcp_f32_e32 v39, v52
	v_div_scale_f32 v47, s1, v16, v99, v16
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v40, v51, v40
	v_mul_f32_e32 v36, v43, v41
	v_div_fixup_f32 v29, v37, v99, v29
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v38, v47, v40
	v_fma_f32 v44, -v42, v36, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v44, v41
	v_fma_f32 v37, -v42, v36, v43
	v_fma_f32 v42, -v52, v39, 1.0
	v_fmac_f32_e32 v50, v49, v50
	v_div_scale_f32 v49, s5, v31, v99, v31
	v_div_scale_f32 v43, null, v99, v99, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v42, v39
	v_mul_f32_e32 v45, v49, v50
	v_div_fmas_f32 v36, v37, v41, v36
	v_fma_f32 v41, -v46, v38, v47
	v_rcp_f32_e32 v42, v43
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v44, -v48, v45, v49
	v_div_fixup_f32 v30, v36, v99, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v38, v41, v40 :: v_dual_fmac_f32 v45, v44, v50
	v_div_scale_f32 v44, s3, v17, v99, v17
	v_fma_f32 v36, -v46, v38, v47
	v_div_scale_f32 v46, s4, v18, v99, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v48, v45, v49
	v_div_scale_f32 v48, null, v99, v99, v19
	v_fma_f32 v49, -v43, v42, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v37, v50, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v41, v48
	v_dual_mul_f32 v45, v44, v39 :: v_dual_fmac_f32 v42, v49, v42
	v_div_scale_f32 v49, null, v99, v99, v20
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v31, v37, v99, v31
	v_fma_f32 v37, -v52, v45, v44
	v_div_fmas_f32 v36, v36, v40, v38
	v_rcp_f32_e32 v38, v49
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v48, v41, 1.0
	v_div_scale_f32 v40, s1, v19, v99, v19
	v_div_fixup_f32 v16, v36, v99, v16
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v47, v41
	v_fmac_f32_e32 v45, v37, v39
	v_div_scale_f32 v47, null, v99, v99, v21
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v50, v40, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v52, v45, v44
	v_rcp_f32_e32 v51, v47
	v_fma_f32 v52, -v49, v38, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v39, v45
	v_fma_f32 v39, -v48, v50, v40
	v_fmac_f32_e32 v38, v52, v38
	v_mul_f32_e32 v37, v46, v42
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v17, v36, v99, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v47, v51, 1.0
	v_fmac_f32_e32 v50, v39, v41
	v_fma_f32 v44, -v43, v37, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v51, v45, v51
	v_div_scale_f32 v45, null, v99, v99, v22
	v_fmac_f32_e32 v37, v44, v42
	v_div_scale_f32 v44, s3, v20, v99, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v43, v37, v46
	v_div_scale_f32 v43, s5, v21, v99, v21
	v_mul_f32_e32 v46, v43, v51
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v36, v36, v42, v37
	v_rcp_f32_e32 v42, v45
	v_fma_f32 v37, -v48, v50, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v48, null, v99, v99, v23
	v_div_fixup_f32 v18, v36, v99, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v37, v37, v41, v50
	v_fma_f32 v41, -v47, v46, v43
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v50, -v45, v42, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v19, v37, v99, v19
	v_div_scale_f32 v37, s1, v22, v99, v22
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v50, v42
	v_dual_mul_f32 v39, v44, v38 :: v_dual_fmac_f32 v46, v41, v51
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
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
	v_div_scale_f32 v49, null, v99, v99, v9
	v_div_scale_f32 v41, null, v99, v99, v8
	v_div_fmas_f32 v36, v36, v38, v39
	v_fma_f32 v38, -v47, v46, v43
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v43, s3, v23, v99, v23
	v_rcp_f32_e32 v44, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v38, v38, v51, v46
	v_mul_f32_e32 v39, v37, v42
	v_div_fixup_f32 v20, v36, v99, v20
	v_div_scale_f32 v51, null, v99, v99, v11
	v_div_fixup_f32 v21, v38, v99, v21
	v_rcp_f32_e32 v38, v49
	v_fma_f32 v46, -v45, v39, v37
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v53, v51
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	v_cndmask_b32_e64 v21, 0, v21, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v49, v38, 1.0
	v_dual_mul_f32 v47, v43, v40 :: v_dual_fmac_f32 v38, v50, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v48, v47, v43
	v_fmac_f32_e32 v47, v36, v40
	v_div_scale_f32 v36, s4, v8, v99, v8
	v_fmac_f32_e32 v39, v46, v42
	v_fma_f32 v46, -v41, v44, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v45, v39, v37
	v_div_scale_f32 v45, null, v99, v99, v10
	v_fmac_f32_e32 v44, v46, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v37, v37, v42, v39
	v_rcp_f32_e32 v46, v45
	v_fma_f32 v39, -v48, v47, v43
	v_div_scale_f32 v43, s1, v9, v99, v9
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v42, v36, v44
	v_div_fixup_f32 v22, v37, v99, v22
	v_mul_f32_e32 v52, v43, v38
	v_div_fmas_f32 v39, v39, v40, v47
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v48, -v45, v46, 1.0
	v_fma_f32 v50, -v41, v42, v36
	v_fma_f32 v40, -v49, v52, v43
	v_div_fixup_f32 v23, v39, v99, v23
	v_fma_f32 v39, -v51, v53, 1.0
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v48, s5, v10, v99, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v52, v40, v38 :: v_dual_fmac_f32 v53, v39, v53
	v_dual_fmac_f32 v42, v50, v44 :: v_dual_mul_f32 v47, v48, v46
	v_div_scale_f32 v40, null, v99, v99, v12
	v_div_scale_f32 v39, s3, v11, v99, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v45, v47, v48
	v_fma_f32 v36, -v41, v42, v36
	v_fma_f32 v41, -v49, v52, v43
	v_div_scale_f32 v43, null, v99, v99, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v47, v37, v46
	v_rcp_f32_e32 v37, v40
	v_div_fmas_f32 v36, v36, v44, v42
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v42, v39, v53
	v_div_fmas_f32 v38, v41, v38, v52
	v_fma_f32 v41, -v45, v47, v48
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v8, v36, v99, v8
	v_rcp_f32_e32 v45, v43
	v_div_fixup_f32 v9, v38, v99, v9
	v_fma_f32 v44, -v40, v37, 1.0
	v_div_fmas_f32 v41, v41, v46, v47
	v_fma_f32 v46, -v51, v42, v39
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v44, v37
	v_div_scale_f32 v44, s1, v12, v99, v12
	v_div_fixup_f32 v10, v41, v99, v10
	v_div_scale_f32 v41, null, v99, v99, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v36, v44, v37
	v_fma_f32 v38, -v43, v45, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v47, v41
	v_fmac_f32_e32 v42, v46, v53
	v_fma_f32 v46, -v40, v36, v44
	v_fmac_f32_e32 v45, v38, v45
	v_div_scale_f32 v38, s4, v13, v99, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v51, v42, v39
	v_fmac_f32_e32 v36, v46, v37
	v_div_scale_f32 v46, null, v99, v99, v15
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v39, v39, v53, v42
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v48, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v11, v39, v99, v11
	v_fma_f32 v39, -v40, v36, v44
	v_fma_f32 v44, -v41, v47, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v39, v37, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v44, v47
	v_div_scale_f32 v44, null, v99, v99, v1
	v_div_scale_f32 v37, null, v99, v99, v0
	v_div_fixup_f32 v12, v36, v99, v12
	v_fma_f32 v36, -v46, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v50, v44
	v_div_scale_f32 v39, s1, v14, v99, v14
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v48, v36, v48
	v_div_scale_f32 v36, s3, v15, v99, v15
	v_mul_f32_e32 v42, v38, v45
	v_div_scale_f32 v51, s4, v0, v99, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v44, v50, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v43, v42, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v50, v52, v50
	v_div_scale_f32 v52, s5, v1, v99, v1
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
	v_div_fixup_f32 v13, v38, v99, v13
	v_fmac_f32_e32 v40, v49, v40
	v_div_scale_f32 v49, null, v99, v99, v2
	v_fmac_f32_e32 v43, v42, v47
	v_mul_f32_e32 v45, v36, v48
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
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
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v46, v45, v36
	v_div_scale_f32 v43, null, v99, v99, v3
	v_fmac_f32_e32 v53, v42, v53
	v_fma_f32 v39, -v37, v54, v51
	v_div_scale_f32 v42, s1, v2, v99, v2
	v_div_fmas_f32 v36, v36, v48, v45
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v54, v39, v40
	v_fma_f32 v39, -v44, v41, v52
	v_rcp_f32_e32 v45, v43
	v_div_fixup_f32 v15, v36, v99, v15
	v_div_fixup_f32 v14, v38, v99, v14
	v_div_scale_f32 v47, null, v99, v99, v7
	v_fmac_f32_e32 v41, v39, v50
	v_mul_f32_e32 v39, v42, v53
	v_fma_f32 v37, -v37, v54, v51
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	v_cndmask_b32_e64 v15, 0, v15, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v43, v45, 1.0
	v_div_fmas_f32 v37, v37, v40, v54
	v_fma_f32 v40, -v44, v41, v52
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v44, -v49, v39, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v0, v37, v99, v0
	v_div_fmas_f32 v40, v40, v50, v41
	v_div_scale_f32 v37, null, v99, v99, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v44, v53
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v1, v40, v99, v1
	v_div_scale_f32 v40, null, v99, v99, v6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v1, 0, v1, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v44, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v40, v44, 1.0
	v_fmac_f32_e32 v44, v51, v44
	v_fma_f32 v36, -v49, v39, v42
	v_rcp_f32_e32 v49, v47
	v_div_scale_f32 v51, s4, v6, v99, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v36, v53, v39
	v_rcp_f32_e32 v39, v37
	v_div_scale_f32 v41, vcc_lo, v3, v99, v3
	v_mul_f32_e32 v55, v51, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v2, v36, v99, v2
	v_fma_f32 v53, -v47, v49, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v37, v39, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v49, v53, v49
	v_div_scale_f32 v53, s5, v7, v99, v7
	v_fmac_f32_e32 v39, v36, v39
	v_div_scale_f32 v36, s1, v4, v99, v4
	v_fmac_f32_e32 v45, v38, v45
	v_div_scale_f32 v38, null, v99, v99, v5
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
	v_div_scale_f32 v48, s3, v5, v99, v5
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
	v_div_fixup_f32 v3, v41, v99, v3
	v_div_fmas_f32 v36, v36, v39, v52
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v56, v37, v49
	v_fmac_f32_e32 v54, v43, v42
	v_fma_f32 v37, -v40, v55, v51
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s3, v24, v24
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v36, v99, v4
	v_fma_f32 v39, -v47, v56, v53
	v_fma_f32 v38, -v38, v54, v48
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_or_b32_e32 v36, s37, v100
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s39, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v42, v54
	s_mov_b32 vcc_lo, s4
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v36, s39, v36
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v37, v44, v55
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v5, v38, v99, v5
	v_div_fmas_f32 v39, v39, v49, v56
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v38, v25, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v37, v99, v6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v37, v24, 16, 1
	v_cmp_o_f32_e64 s5, v25, v25
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v39, v99, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v39, v26, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v37, v24, v37, 0x7fff
	v_add3_u32 v24, v25, v38, 0x7fff
	v_bfe_u32 v38, v29, 16, 1
	v_add3_u32 v25, v26, v39, 0x7fff
	v_bfe_u32 v26, v27, 16, 1
	v_cndmask_b16 v24.l, 0x7fff, v37.h, s3
	v_bfe_u32 v37, v28, 16, 1
	v_cmp_o_f32_e64 s3, v27, v27
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s5
	v_add3_u32 v26, v27, v26, 0x7fff
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s6
	v_add3_u32 v27, v28, v37, 0x7fff
	v_cmp_o_f32_e64 s5, v28, v28
	v_add3_u32 v28, v29, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v29, v29
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s3
	v_bfe_u32 v26, v30, 16, 1
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s5
	v_bfe_u32 v29, v31, 16, 1
	v_cndmask_b16 v27.h, 0x7fff, v28.h, s6
	v_bfe_u32 v28, v16, 16, 1
	v_add3_u32 v26, v30, v26, 0x7fff
	v_cmp_o_f32_e64 s3, v30, v30
	v_add3_u32 v29, v31, v29, 0x7fff
	v_cmp_o_f32_e64 s5, v31, v31
	v_add3_u32 v28, v16, v28, 0x7fff
	v_cmp_o_f32_e64 s6, v16, v16
	v_cndmask_b16 v16.l, 0x7fff, v26.h, s3
	v_bfe_u32 v26, v17, 16, 1
	v_cndmask_b16 v16.h, 0x7fff, v29.h, s5
	v_bfe_u32 v29, v18, 16, 1
	v_bfe_u32 v30, v19, 16, 1
	v_cmp_o_f32_e64 s3, v17, v17
	v_add3_u32 v26, v17, v26, 0x7fff
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s6
	v_add3_u32 v17, v18, v29, 0x7fff
	v_cmp_o_f32_e64 s5, v18, v18
	v_add3_u32 v18, v19, v30, 0x7fff
	v_cmp_o_f32_e64 s6, v19, v19
	v_cndmask_b16 v28.h, 0x7fff, v26.h, s3
	v_bfe_u32 v19, v20, 16, 1
	v_bfe_u32 v26, v21, 16, 1
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s5
	v_cmp_o_f32_e64 s3, v20, v20
	v_cmp_o_f32_e64 s5, v21, v21
	v_add3_u32 v19, v20, v19, 0x7fff
	v_add3_u32 v20, v21, v26, 0x7fff
	v_cndmask_b16 v17.h, 0x7fff, v18.h, s6
	v_bfe_u32 v18, v22, 16, 1
	v_bfe_u32 v21, v23, 16, 1
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s3
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s5
	v_bfe_u32 v20, v8, 16, 1
	v_add3_u32 v18, v22, v18, 0x7fff
	v_cmp_o_f32_e64 s6, v22, v22
	v_bfe_u32 v22, v9, 16, 1
	v_add3_u32 v21, v23, v21, 0x7fff
	v_cmp_o_f32_e64 s3, v23, v23
	v_add3_u32 v20, v8, v20, 0x7fff
	v_cmp_o_f32_e64 s5, v8, v8
	v_add3_u32 v8, v9, v22, 0x7fff
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s6
	v_cmp_o_f32_e64 s6, v9, v9
	v_cndmask_b16 v18.h, 0x7fff, v21.h, s3
	v_bfe_u32 v9, v10, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v20.h, s5
	v_bfe_u32 v20, v11, 16, 1
	v_bfe_u32 v21, v12, 16, 1
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s6
	v_add3_u32 v9, v10, v9, 0x7fff
	v_cmp_o_f32_e64 s3, v10, v10
	v_add3_u32 v10, v11, v20, 0x7fff
	v_cmp_o_f32_e64 s5, v11, v11
	v_add3_u32 v11, v12, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v12, v12
	v_bfe_u32 v12, v13, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s3
	v_cndmask_b16 v9.h, 0x7fff, v10.h, s5
	v_bfe_u32 v10, v14, 16, 1
	v_bfe_u32 v20, v15, 16, 1
	v_add3_u32 v12, v13, v12, 0x7fff
	v_cmp_o_f32_e64 s3, v13, v13
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s6
	v_add3_u32 v10, v14, v10, 0x7fff
	v_cmp_o_f32_e64 s5, v14, v14
	v_add3_u32 v13, v15, v20, 0x7fff
	v_cmp_o_f32_e64 s6, v15, v15
	v_cndmask_b16 v11.h, 0x7fff, v12.h, s3
	v_bfe_u32 v12, v0, 16, 1
	v_bfe_u32 v14, v1, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s5
	v_cndmask_b16 v10.h, 0x7fff, v13.h, s6
	v_bfe_u32 v13, v2, 16, 1
	v_add3_u32 v12, v0, v12, 0x7fff
	v_cmp_o_f32_e64 s3, v0, v0
	v_add3_u32 v0, v1, v14, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s5, v1, v1
	v_add3_u32 v1, v2, v13, 0x7fff
	v_cmp_o_f32_e64 s6, v2, v2
	v_bfe_u32 v2, v3, 16, 1
	v_cndmask_b16 v0.l, 0x7fff, v12.h, s3
	v_bfe_u32 v12, v4, 16, 1
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s5
	v_cmp_o_f32_e64 s3, v3, v3
	v_add3_u32 v2, v3, v2, 0x7fff
	v_bfe_u32 v3, v5, 16, 1
	v_add3_u32 v12, v4, v12, 0x7fff
	v_bfe_u32 v13, v6, 16, 1
	v_cmp_o_f32_e64 s5, v4, v4
	v_bfe_u32 v4, v7, 16, 1
	v_cndmask_b16 v1.l, 0x7fff, v1.h, s6
	v_add3_u32 v3, v5, v3, 0x7fff
	v_cmp_o_f32_e64 s6, v5, v5
	v_add3_u32 v5, v6, v13, 0x7fff
	v_cmp_o_f32_e64 s7, v6, v6
	v_add3_u32 v4, v7, v4, 0x7fff
	v_cmp_o_f32_e64 s8, v7, v7
	v_cndmask_b32_e64 v6, v16, v25, s34
	v_cndmask_b32_e64 v7, v25, v16, s34
	v_mov_b32_e32 v15, 0x5410
	v_mov_b32_e32 v16, 0x7632
	v_cndmask_b32_e64 v14, v18, v17, s34
	v_cndmask_b32_e64 v17, v17, v18, s34
	v_cndmask_b32_e64 v18, v11, v8, s34
	v_cndmask_b32_e64 v8, v8, v11, s34
	v_cndmask_b32_e64 v11, 0x1054, v15, s34
	v_cndmask_b32_e64 v15, 0x3276, v16, s34
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s3
	v_cndmask_b16 v2.l, 0x7fff, v12.h, s5
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s6
	v_cndmask_b32_e64 v16, v10, v9, s34
	v_cndmask_b32_e64 v9, v9, v10, s34
	v_lshl_or_b32 v10, v11, 8, v11
	v_lshl_or_b32 v11, v15, 8, v15
	v_cndmask_b16 v3.l, 0x7fff, v5.h, s7
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s8
	v_cndmask_b32_e64 v5, v24, v27, s34
	v_cndmask_b32_e64 v12, v19, v28, s34
	v_cndmask_b32_e64 v13, v28, v19, s34
	v_cndmask_b32_e64 v19, v2, v0, s34
	v_cndmask_b32_e64 v0, v0, v2, s34
	v_and_b32_e32 v2, 0x540054, v10
	v_and_b32_e32 v10, 0x760076, v11
	s_mov_b32 s3, 0x76543210
	v_cndmask_b32_e64 v15, v3, v1, s34
	v_cndmask_b32_e64 v1, v1, v3, s34
	v_permlanex16_b32 v3, v5, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v7, s3, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v2, v2, 4, v2
	v_lshl_or_b32 v7, v10, 4, v10
	v_cndmask_b32_e64 v4, v27, v24, s34
	v_permlanex16_b32 v10, v13, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v17, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v8, s3, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v17, 0x5040504, v2
	v_and_b32_e32 v20, 0x7060706, v7
	v_permlanex16_b32 v21, v9, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v0, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v1, s3, 0xfedcba98 op_sel:[1,0]
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s39, v35
	v_cmp_gt_i32_e64 s4, s39, v32
	v_cmp_gt_i32_e64 s0, s39, v34
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v0, v3, v4, v17
	v_perm_b32 v1, v3, v4, v20
	v_perm_b32 v2, v5, v6, v17
	v_perm_b32 v3, v5, v6, v20
	v_perm_b32 v4, v10, v12, v17
	v_perm_b32 v5, v10, v12, v20
	v_perm_b32 v6, v11, v14, v17
	v_perm_b32 v7, v11, v14, v20
	v_perm_b32 v8, v13, v18, v17
	v_perm_b32 v10, v21, v16, v17
	v_perm_b32 v12, v22, v19, v17
	v_perm_b32 v14, v23, v15, v17
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v17, v36, v35, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v11, v21, v16, v20
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v16, v36, v32, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v9, v13, v18, v20
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v18, v36, v34, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v13, v22, v19, v20
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 s3, s2, s4
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v36, v33, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v15, v23, v15, v20
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[48:51], 0 offen
	buffer_store_b128 v[4:7], v17, s[48:51], 0 offen
	buffer_store_b128 v[8:11], v18, s[48:51], 0 offen
	buffer_store_b128 v[12:15], v19, s[48:51], 0 offen
	.loc	1 691 5 is_stmt 1               ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp60:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 180
		.amdhsa_next_free_sgpr 65
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 180
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 65
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12208
; TotalNumSgprs: 67
; NumVgprs: 180
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 67
; NumVGPRsForWavesPerEU: 180
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
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     67
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     180
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
