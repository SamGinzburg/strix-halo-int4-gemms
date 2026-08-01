	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
	v_and_b32_e32 v4, 7, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 3, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s4, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s2, s3, 11
	s_mov_b32 s55, 0x31027000
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v1, 3, v4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s4, v2
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s50, s4, s2
	s_mov_b32 s54, 0x7ffffffe
	s_clause 0x1
	s_load_b32 s8, s[0:1], 0x84
	s_load_b64 s[48:49], s[0:1], 0x38
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v127, 4, v0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x800, v3
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v121, v0, 4, 1
	v_lshrrev_b32_e32 v23, 4, v0
	s_mov_b32 s40, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_or_b32_e32 v123, 2, v121
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[88:89], null, s60, v2, v[1:2]
	s_mul_i32 s5, s60, s50
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s60, v1
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s53, s53, 0xffff
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v122, 4, v121
	v_or_b32_e32 v120, 6, v121
	v_or_b32_e32 v119, 8, v121
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[89:90], null, s60, 48, v[88:89]
	v_lshl_add_u32 v125, s60, 4, v88
	v_lshl_add_u32 v126, s60, 5, v88
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v3, v88, s5, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 810 48                        ; attention.py:810:48
	s_add_i32 s9, s4, s8
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v5, v125, s5, 1
	v_add_lshl_u32 v6, v126, s5, 1
	v_add_lshl_u32 v7, v89, s5, 1
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v118, 10, v121
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v19, 0x80000000, v7, s2
	s_clause 0x3
	buffer_load_b128 v[7:10], v3, s[52:55], 0 offen
	buffer_load_b128 v[11:14], v5, s[52:55], 0 offen
	buffer_load_b128 v[15:18], v6, s[52:55], 0 offen
	buffer_load_b128 v[19:22], v19, s[52:55], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v5, 0x60, v0
	v_and_b32_e32 v3, 15, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v6, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v117, 12, v121
	v_or_b32_e32 v116, 14, v121
	v_lshrrev_b32_e32 v24, 1, v5
	v_or_b32_e32 v115, 16, v121
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v6, 0x70, v6
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v114, 18, v121
	v_or_b32_e32 v113, 20, v121
	v_or_b32_e32 v124, v24, v3
	v_or_b32_e32 v112, 22, v121
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v24, v127, v6
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v111, 24, v121
	v_or_b32_e32 v110, 26, v121
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v6, s4, v124
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v109, 28, v121
	v_or_b32_e32 v108, 30, v121
	v_or_b32_e32 v107, 32, v121
	v_or_b32_e32 v106, 34, v121
	v_or_b32_e32 v105, 36, v121
	v_or_b32_e32 v104, 38, v121
	v_or_b32_e32 v103, 40, v121
	v_or_b32_e32 v102, 42, v121
	v_or_b32_e32 v101, 44, v121
	v_or_b32_e32 v100, 46, v121
	v_or_b32_e32 v99, 48, v121
	v_or_b32_e32 v98, 50, v121
	v_or_b32_e32 v97, 52, v121
	v_or_b32_e32 v94, 54, v121
	v_or_b32_e32 v95, 56, v121
	v_or_b32_e32 v93, 58, v121
	v_or_b32_e32 v92, 60, v121
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_add_nc_u32_e32 v128, 0, v24
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v96, 62, v23
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x800, v6
	.loc	1 810 48                        ; attention.py:810:48
	s_add_i32 s9, s9, 64
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v128, v[7:10]
	s_waitcnt vmcnt(2)
	ds_store_b128 v128, v[11:14] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v128, v[15:18] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v128, v[19:22] offset:6144
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s9, 1
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s4, s3, 31
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v129, s8, v6
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s10, s4, 28
	s_clause 0x1
	s_load_b32 s11, s[0:1], 0x64
	s_load_b128 s[4:7], s[0:1], 0x8
	s_add_i32 s0, s3, s10
	.loc	1 810 25                        ; attention.py:810:25
	s_min_i32 s8, s9, 0x800
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, 0xfff0
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v5, 6, v5
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	.loc	1 811 35                        ; attention.py:811:35
	s_add_i32 s3, s8, 63
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s8, s1, 0x10007
	v_mov_b32_e32 v24, 0
	s_add_i32 s1, s1, s8
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v6, 7, v3
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s1, s1, 0x80000
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v27, v24 :: v_dual_lshlrev_b32 v4, 4, v4
	v_dual_mov_b32 v29, v24 :: v_dual_and_b32 v0, 16, v0
	s_sext_i32_i16 s1, s1
	v_mov_b32_e32 v25, v24
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s1, s1, 10
	v_or_b32_e32 v130, v4, v6
	s_and_b32 s62, s1, 0xfffff800
	v_cmp_eq_u32_e64 s1, 0, v0
	v_mov_b32_e32 v0, 0x7632
	.loc	1 788 26                        ; attention.py:788:26
	v_or3_b32 v5, v6, v5, v4
	v_mov_b32_e32 v4, 0x5410
	v_xor_b32_e32 v6, 32, v130
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s0, s0, 10
	v_cndmask_b32_e64 v0, 0x3276, v0, s1
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v7, 0x70, v5, 0
	v_xad_u32 v8, 0x60, v5, 0
	v_xad_u32 v9, 0x50, v5, 0
	v_xad_u32 v10, v5, 64, 0
	v_xad_u32 v11, v5, 48, 0
	v_xad_u32 v12, v5, 32, 0
	ds_load_b128 v[36:39], v7
	ds_load_b128 v[32:35], v8
	ds_load_b128 v[44:47], v9
	ds_load_b128 v[40:43], v10
	ds_load_b128 v[52:55], v11
	ds_load_b128 v[48:51], v12
	v_xad_u32 v7, v5, 16, 0
	v_cndmask_b32_e64 v4, 0x1054, v4, s1
	v_dual_mov_b32 v80, 0xff800000 :: v_dual_add_nc_u32 v5, 0, v5
	ds_load_b128 v[60:63], v7
	ds_load_b128 v[56:59], v5
	v_lshl_or_b32 v4, v4, 8, v4
	v_lshl_or_b32 v0, v0, 8, v0
	v_add_nc_u32_e32 v135, 0, v6
	v_xor_b32_e32 v5, 16, v130
	v_xor_b32_e32 v7, 48, v130
	v_dual_mov_b32 v31, v24 :: v_dual_and_b32 v4, 0x540054, v4
	v_dual_mov_b32 v17, v24 :: v_dual_and_b32 v0, 0x760076, v0
	v_xor_b32_e32 v8, 64, v130
	v_xor_b32_e32 v9, 0x50, v130
	v_xor_b32_e32 v10, 0x60, v130
	v_xor_b32_e32 v11, 0x70, v130
	v_lshl_or_b32 v4, v4, 4, v4
	v_lshl_or_b32 v0, v0, 4, v0
	.loc	1 811 34                        ; attention.py:811:34
	s_ashr_i32 s9, s3, 31
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[90:91], null, s61, v2, v[1:2]
	.loc	1 852 32                        ; attention.py:852:32
	s_and_b32 s0, s0, 0xffffc000
	.loc	1 811 34                        ; attention.py:811:34
	s_lshr_b32 s8, s9, 26
	.loc	1 852 32                        ; attention.py:852:32
	s_add_i32 s62, s62, s0
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s61, v1
	v_dual_mov_b32 v26, v24 :: v_dual_and_b32 v131, 0x5040504, v4
	v_dual_mov_b32 v19, v24 :: v_dual_and_b32 v132, 0x7060706, v0
	v_lshl_add_u32 v133, v3, 1, 0
	v_dual_mov_b32 v21, v24 :: v_dual_add_nc_u32 v134, 0, v5
	v_dual_mov_b32 v23, v24 :: v_dual_add_nc_u32 v136, 0, v7
	v_dual_mov_b32 v28, v24 :: v_dual_add_nc_u32 v137, 0, v8
	v_add_nc_u32_e32 v138, 0, v9
	v_mov_b32_e32 v9, v24
	v_dual_mov_b32 v30, v24 :: v_dual_add_nc_u32 v139, 0, v10
	v_add_nc_u32_e32 v140, 0, v11
	v_mov_b32_e32 v11, v24
	v_mov_b32_e32 v16, v24
	v_mov_b32_e32 v18, v24
	v_mov_b32_e32 v20, v24
	v_mov_b32_e32 v22, v24
	v_mov_b32_e32 v8, v24
	v_mov_b32_e32 v10, v24
	v_mov_b32_e32 v12, v24
	v_mov_b32_e32 v13, v24
	v_mov_b32_e32 v14, v24
	v_mov_b32_e32 v15, v24
	v_mov_b32_e32 v0, v24
	v_mov_b32_e32 v1, v24
	v_mov_b32_e32 v2, v24
	v_mov_b32_e32 v3, v24
	v_mov_b32_e32 v4, v24
	v_mov_b32_e32 v5, v24
	v_mov_b32_e32 v6, v24
	v_mov_b32_e32 v7, v24
	v_mov_b32_e32 v91, v24
	.loc	1 811 34                        ; attention.py:811:34
	s_add_i32 s51, s3, s8
	.loc	1 860 31                        ; attention.py:860:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s63, s11, 0x3fb8aa3b
	s_and_b32 s5, s5, 0xffff
	.loc	1 811 33                        ; attention.py:811:33
	s_and_not1_b32 s51, s51, 63
	s_lshl_b32 s64, s61, 4
	s_lshl_b32 s65, s61, 5
	s_mul_i32 s66, s61, 48
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
	s_mov_b32 s67, 0x76543210
	s_mov_b32 s68, s40
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 33 is_stmt 0                ; attention.py:0:33
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 853 32 is_stmt 1              ; attention.py:853:32
	s_add_i32 s1, s62, s68
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v164, s47 :: v_dual_mov_b32 v163, s46
	.loc	1 853 32                        ; attention.py:853:32
	s_mul_i32 s3, s1, s60
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v162, s45 :: v_dual_mov_b32 v161, s44
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v64, s3, v88, 1
	v_add_lshl_u32 v65, s3, v125, 1
	v_add_lshl_u32 v66, s3, v126, 1
	v_add_lshl_u32 v67, s3, v89, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v64, 0x80000000, v64 :: v_dual_add_nc_u32 v81, 0, v130
	v_cndmask_b32_e32 v68, 0x80000000, v65, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
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
	v_dual_mov_b32 v160, s43 :: v_dual_mov_b32 v159, s42
	v_dual_mov_b32 v158, s41 :: v_dual_mov_b32 v157, s40
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(3)
	ds_store_b128 v128, v[64:67]
	s_waitcnt vmcnt(2)
	ds_store_b128 v128, v[68:71] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v128, v[72:75] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v128, v[76:79] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[68:71], v134
	ds_load_b128 v[64:67], v81
	ds_load_b128 v[72:75], v81 offset:2048
	ds_load_b128 v[76:79], v134 offset:2048
	ds_load_b128 v[145:148], v134 offset:4096
	ds_load_b128 v[141:144], v81 offset:4096
	ds_load_b128 v[149:152], v81 offset:6144
	ds_load_b128 v[153:156], v134 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[165:172], v[64:71], v[56:63], v[157:164]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[64:71], v[72:79], v[56:63], v[157:164]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[72:79], v[141:148], v[56:63], v[157:164]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[145:148], v136
	ds_load_b128 v[141:144], v135
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[173:180], v[149:156], v[56:63], v[157:164]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[165:172], v[141:148], v[48:55], v[165:172]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[141:144], v135 offset:2048
	ds_load_b128 v[145:148], v136 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[64:71], v[141:148], v[48:55], v[64:71]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[145:148], v136 offset:4096
	ds_load_b128 v[141:144], v135 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[72:79], v[141:148], v[48:55], v[72:79]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[141:144], v135 offset:6144
	ds_load_b128 v[145:148], v136 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[173:180], v[141:148], v[48:55], v[173:180]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[145:148], v138
	ds_load_b128 v[141:144], v137
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[165:172], v[141:148], v[40:47], v[165:172]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[141:144], v137 offset:2048
	ds_load_b128 v[145:148], v138 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[64:71], v[141:148], v[40:47], v[64:71]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[145:148], v138 offset:4096
	ds_load_b128 v[141:144], v137 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[72:79], v[141:148], v[40:47], v[72:79]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[141:144], v137 offset:6144
	ds_load_b128 v[145:148], v138 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[173:180], v[141:148], v[40:47], v[173:180]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[145:148], v140
	ds_load_b128 v[141:144], v139
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[165:172], v[141:148], v[32:39], v[165:172]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[141:144], v139 offset:2048
	ds_load_b128 v[145:148], v140 offset:2048
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v160, s63, v169 :: v_dual_mul_f32 v161, s63, v170
	v_dual_mul_f32 v149, s63, v171 :: v_dual_mul_f32 v152, s63, v172
	v_mul_f32_e32 v155, s63, v168
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[64:71], v[141:148], v[32:39], v[64:71]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[145:148], v140 offset:4096
	ds_load_b128 v[141:144], v139 offset:4096
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v156, s63, v64 :: v_dual_mul_f32 v159, s63, v65
	v_mad_u64_u32 v[64:65], null, s1, s61, v[90:91]
	v_dual_mul_f32 v157, s63, v66 :: v_dual_mul_f32 v158, s63, v67
	v_dual_mul_f32 v153, s63, v68 :: v_dual_mul_f32 v154, s63, v69
	v_dual_mul_f32 v150, s63, v70 :: v_dual_mul_f32 v151, s63, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v65, 1, v64
	v_add_lshl_u32 v66, v64, s64, 1
	v_add_lshl_u32 v67, v64, s65, 1
	v_add_lshl_u32 v64, v64, s66, 1
	v_cndmask_b32_e64 v65, 0x80000000, v65, s0
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[72:79], v[141:148], v[32:39], v[72:79]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[141:144], v139 offset:6144
	ds_load_b128 v[145:148], v140 offset:6144
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v68, 0x80000000, v66, s0
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v86, s63, v76 :: v_dual_mul_f32 v87, s63, v77
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v76, 0x80000000, v64, s0
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v84, s63, v78 :: v_dual_mul_f32 v85, s63, v79
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[173:180], v[141:148], v[32:39], v[173:180]
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v146, s63, v72 :: v_dual_mul_f32 v147, s63, v73
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v72, 0x80000000, v67, s0
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v144, s63, v74 :: v_dual_mul_f32 v145, s63, v75
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[64:67], v65, s[56:59], 0 offen
	buffer_load_b128 v[68:71], v68, s[56:59], 0 offen
	buffer_load_b128 v[72:75], v72, s[56:59], 0 offen
	buffer_load_b128 v[76:79], v76, s[56:59], 0 offen
	v_add_nc_u32_e32 v143, 0, v127
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v82, s63, v173 :: v_dual_mul_f32 v83, s63, v174
	v_dual_mul_f32 v81, s63, v175 :: v_dual_mul_f32 v162, s63, v176
	v_dual_mul_f32 v141, s63, v165 :: v_dual_mul_f32 v142, s63, v166
	v_mul_f32_e32 v148, s63, v167
	v_dual_mul_f32 v164, s63, v177 :: v_dual_mul_f32 v163, s63, v178
	v_dual_mul_f32 v165, s63, v179 :: v_dual_mul_f32 v166, s63, v180
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	ds_store_b128 v143, v[64:67]
	s_waitcnt vmcnt(2)
	ds_store_b128 v143, v[68:71] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v143, v[72:75] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v143, v[76:79] offset:6144
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v64, s68, v97
	v_or_b32_e32 v65, s68, v98
	v_or_b32_e32 v66, s68, v99
	v_or_b32_e32 v67, s68, v100
	v_or_b32_e32 v68, s68, v101
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s6, v64, v129
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v64, s68, v102
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s1, v65, v129
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s68, v103
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s3, v66, v129
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, s68, v104
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s4, v67, v129
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v67, s68, v105
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s7, v64, v129
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v64, s68, v107
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s8, v65, v129
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s68, v108
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s5, v68, v129
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v68, s68, v106
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s9, v66, v129
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, s68, v109
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s10, v67, v129
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v67, s68, v110
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s13, v64, v129
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v64, s68, v112
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s12, v65, v129
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s68, v113
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s11, v68, v129
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v68, s68, v111
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s14, v66, v129
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, s68, v114
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s15, v67, v129
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v67, s68, v115
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s18, v64, v129
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v64, s68, v117
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s19, v65, v129
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s68, v118
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s17, v68, v129
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v68, s68, v116
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s21, v66, v129
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v66, s68, v119
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s25, v67, v129
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v67, s68, v120
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s27, v64, v129
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v64, s68, v123
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s28, v65, v129
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v65, s68, v121
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s1, s2, s1
	s_and_b32 s3, s2, s3
	s_and_b32 s4, s2, s4
	s_and_b32 s5, s2, s5
	s_and_b32 s7, s2, s7
	s_and_b32 s8, s2, s8
	s_and_b32 s9, s2, s9
	s_and_b32 s10, s2, s10
	s_and_b32 s6, s2, s6
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s26, v68, v129
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v68, s68, v122
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v81, 0xff800000, v81, s6
	v_cndmask_b32_e64 v82, 0xff800000, v82, s3
	v_cndmask_b32_e64 v83, 0xff800000, v83, s1
	v_cndmask_b32_e64 v84, 0xff800000, v84, s5
	v_cndmask_b32_e64 v85, 0xff800000, v85, s4
	v_cndmask_b32_e64 v86, 0xff800000, v86, s8
	v_cndmask_b32_e64 v87, 0xff800000, v87, s7
	v_cndmask_b32_e64 v144, 0xff800000, v144, s10
	v_cndmask_b32_e64 v145, 0xff800000, v145, s9
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s29, v66, v129
	v_cmp_le_i32_e64 s30, v67, v129
	v_cmp_le_i32_e64 s33, v64, v129
	v_cmp_le_i32_e64 s34, v65, v129
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s11, s2, s11
	s_and_b32 s12, s2, s12
	s_and_b32 s14, s2, s14
	s_and_b32 s16, s2, s15
	s_and_b32 s20, s2, s17
	s_and_b32 s22, s2, s18
	s_and_b32 s23, s2, s19
	s_and_b32 s24, s2, s21
	s_and_b32 s19, s2, s13
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v66, s68, v96
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s31, v68, v129
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v68, s68, v95
	v_or_b32_e32 v64, s68, v94
	v_or_b32_e32 v65, s68, v92
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v146, 0xff800000, v146, s19
	v_cndmask_b32_e64 v147, 0xff800000, v147, s11
	v_cndmask_b32_e64 v150, 0xff800000, v150, s14
	v_cndmask_b32_e64 v151, 0xff800000, v151, s12
	v_cndmask_b32_e64 v153, 0xff800000, v153, s20
	v_cndmask_b32_e64 v154, 0xff800000, v154, s16
	v_cndmask_b32_e64 v157, 0xff800000, v157, s23
	v_cndmask_b32_e64 v158, 0xff800000, v158, s22
	v_cndmask_b32_e64 v159, 0xff800000, v159, s24
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v72, v82, v83, v81
	v_max3_f32 v73, v87, v84, v85
	v_max3_f32 v74, v144, v145, v86
.Ltmp2:
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s28, s2, s28
	s_and_b32 s30, s2, s30
	s_and_b32 s33, s2, s33
	s_and_b32 s34, s2, s34
	s_and_b32 s29, s2, s29
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v67, s68, v93
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s35, v66, v129
	v_cmp_le_i32_e64 s37, v68, v129
	v_cmp_le_i32_e64 s38, v64, v129
	v_cmp_le_i32_e64 s39, v65, v129
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v68, 0xff800000, v160, s29
	v_cndmask_b32_e64 v69, 0xff800000, v161, s28
	v_cndmask_b32_e64 v66, 0xff800000, v155, s30
	v_cndmask_b32_e64 v64, 0xff800000, v141, s34
	v_cndmask_b32_e64 v65, 0xff800000, v142, s33
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v75, v151, v146, v147
	v_max3_f32 v72, v74, v73, v72
	v_max3_f32 v73, v153, v154, v150
	v_max3_f32 v74, v159, v157, v158
.Ltmp4:
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s31, s2, s31
	s_and_b32 s26, s2, s26
	s_and_b32 s27, s2, s27
	s_and_b32 s25, s2, s25
	.loc	1 864 30 is_stmt 0              ; attention.py:864:30
	v_cmp_le_i32_e64 s36, v67, v129
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	v_cndmask_b32_e64 v67, 0xff800000, v148, s31
	v_cndmask_b32_e64 v160, 0xff800000, v156, s25
	v_cndmask_b32_e64 v70, 0xff800000, v149, s27
	v_cndmask_b32_e64 v71, 0xff800000, v152, s26
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v73, v74, v73, v75
	v_max3_f32 v74, v66, v68, v69
	v_max_f32_e32 v75, v64, v65
.Ltmp6:
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s13, s2, s35
	s_and_b32 s18, s2, s37
	s_and_b32 s21, s2, s38
	s_and_b32 s17, s2, s39
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v149, 0xff800000, v166, s13
	v_cndmask_b32_e64 v148, 0xff800000, v165, s17
	v_cndmask_b32_e64 v152, 0xff800000, v164, s18
	v_cndmask_b32_e64 v156, 0xff800000, v162, s21
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v74, v75, v67, v74
	v_max3_f32 v75, v70, v71, v160
.Ltmp8:
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s15, s2, s36
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v143.h, 0
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v155, 0xff800000, v163, s15
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v73, v74, v75, v73
	v_max_f32_e32 v74, v148, v149
	v_max_f32_e32 v75, v156, v152
.Ltmp10:
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s68, s68, 64
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_cmp_lt_i32 s68, s51
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v74, v75, v155, v74
.Ltmp12:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v75.h, v143.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v72, v73, v72, v74
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v73, v72, s67, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp15:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v141, v80, v72, v73
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v68, v68, v141
	v_sub_f32_e32 v66, v66, v141
	v_sub_f32_e32 v70, v70, v141
	v_sub_f32_e32 v64, v64, v141
	v_sub_f32_e32 v69, v69, v141
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v64, v64
	v_exp_f32_e32 v69, v69
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v83, v83, v141
	v_sub_f32_e32 v81, v81, v141
	v_sub_f32_e32 v82, v82, v141
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v165, 0, v68, s29
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v68.h, v143.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v164, 0, v66, s30
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v66.h, v143.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v167, 0, v70, s27
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v68.l, v165.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v67, v141
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v162, 0, v64, s34
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v70.h, v143.h
	v_mov_b16_e64 v70.l, v167.h
	v_and_b32_e32 v68, 1, v68
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v71, v71, v141
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v75.l, v162.h
	v_and_b32_e32 v70, 1, v70
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v166, 0, v69, s28
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s34, v162, v162
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v71, v71
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s29, v165, v165
	v_add3_u32 v68, v165, v68, 0x7fff
	v_cmp_o_f32_e64 s30, v164, v164
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v163, 0, v67, s31
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s27, v167, v167
	v_add3_u32 v70, v167, v70, 0x7fff
	v_cndmask_b16 v69.l, 0x7fff, v68.h, s29
	v_cmp_o_f32_e64 s28, v166, v166
	v_mov_b16_e64 v66.l, v163.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v65, v141
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v168, 0, v71, s26
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s31, v163, v163
	v_cndmask_b16 v71.l, 0x7fff, v70.h, s27
	v_and_b32_e32 v66, 1, v66
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s26, v168, v168
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v83, v83
	v_exp_f32_e32 v82, v82
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v66, v163, v66, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v81, v81
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v161, 0, v65, s33
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v65, 1, v75
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v82, 0, v82, s3
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v143.l, v161.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s33, v161, v161
	v_add3_u32 v65, v162, v65, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v81, 0, v81, s6
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v64, 1, v143
	v_mov_b16_e64 v143.l, v164.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v72.l, 0x7fff, v65.h, s34
	v_add3_u32 v64, v161, v64, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v67, 1, v143
	v_mov_b16_e64 v143.l, v166.h
	v_cndmask_b16 v72.h, 0x7fff, v64.h, s33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v67, v164, v67, 0x7fff
	v_and_b32_e32 v68, 1, v143
	v_mov_b16_e64 v143.l, v168.h
	v_cndmask_b16 v67.l, 0x7fff, v66.h, s31
	v_permlanex16_b32 v65, v72, s67, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v67.h, 0x7fff, v67.h, s30
	v_add3_u32 v68, v166, v68, 0x7fff
	v_and_b32_e32 v70, 1, v143
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_perm_b32 v64, v65, v72, v131
	v_perm_b32 v65, v65, v72, v132
	v_permlanex16_b32 v72, v67, s67, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v69.h, 0x7fff, v68.h, s28
	v_add3_u32 v70, v168, v70, 0x7fff
	v_perm_b32 v66, v72, v67, v131
	v_perm_b32 v67, v72, v67, v132
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v72, v69, s67, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v71.h, 0x7fff, v70.h, s26
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s26, 0xff800000, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v68, v72, v69, v131
	v_perm_b32 v69, v72, v69, v132
	v_permlanex16_b32 v72, v71, s67, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v70, v72, v71, v131
	v_perm_b32 v71, v72, v71, v132
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v72, v80, v141
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v80, v84, v141
	v_sub_f32_e32 v84, v85, v141
	v_sub_f32_e32 v85, v156, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v72, v72
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v80, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v84, v84
	v_exp_f32_e32 v85, v85
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v142, 0, v72, s26
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v72, v133
	ds_load_u16_d16 v75, v133 offset:768
	ds_load_u16_d16 v76, v133 offset:1024
	ds_load_u16_d16 v77, v133 offset:1280
	ds_load_u16_d16 v78, v133 offset:1536
	ds_load_u16_d16 v79, v133 offset:1792
	ds_load_u16_d16 v74, v133 offset:512
	ds_load_u16_d16 v73, v133 offset:256
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v72, v133 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v75, v133 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v76, v133 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v77, v133 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v78, v133 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v79, v133 offset:1920
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v74, v133 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v73, v133 offset:384
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v24, v24, v142
	v_mul_f32_e32 v25, v25, v142
	v_mul_f32_e32 v26, v26, v142
	v_mul_f32_e32 v27, v27, v142
	v_mul_f32_e32 v28, v28, v142
	v_mul_f32_e32 v29, v29, v142
	v_mul_f32_e32 v30, v30, v142
	v_mul_f32_e32 v31, v31, v142
	v_mul_f32_e32 v16, v16, v142
	v_mul_f32_e32 v17, v17, v142
	v_mul_f32_e32 v18, v18, v142
	v_mul_f32_e32 v19, v19, v142
	v_mul_f32_e32 v20, v20, v142
	v_mul_f32_e32 v21, v21, v142
	v_mul_f32_e32 v22, v22, v142
	v_mul_f32_e32 v23, v23, v142
	v_mul_f32_e32 v8, v8, v142
	v_mul_f32_e32 v9, v9, v142
	v_mul_f32_e32 v10, v10, v142
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[72:79], v[64:71], v[24:31]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v72, v133 offset:32
	ds_load_u16_d16 v73, v133 offset:288
	ds_load_u16_d16 v74, v133 offset:544
	ds_load_u16_d16 v75, v133 offset:800
	ds_load_u16_d16 v76, v133 offset:1056
	ds_load_u16_d16 v77, v133 offset:1312
	ds_load_u16_d16 v78, v133 offset:1568
	ds_load_u16_d16 v79, v133 offset:1824
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v72, v133 offset:160
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v73, v133 offset:416
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v74, v133 offset:672
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v75, v133 offset:928
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v76, v133 offset:1184
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v77, v133 offset:1440
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v78, v133 offset:1696
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v79, v133 offset:1952
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v11, v11, v142
	v_mul_f32_e32 v12, v12, v142
	v_mul_f32_e32 v13, v13, v142
	v_mul_f32_e32 v14, v14, v142
	v_mul_f32_e32 v15, v15, v142
	v_mul_f32_e32 v1, v1, v142
	v_mul_f32_e32 v3, v3, v142
	v_mul_f32_e32 v0, v0, v142
	v_mul_f32_e32 v2, v2, v142
	v_mul_f32_e32 v4, v4, v142
	v_mul_f32_e32 v5, v5, v142
	v_mul_f32_e32 v6, v6, v142
	v_mul_f32_e32 v7, v7, v142
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v80, 0, v80, s5
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[72:79], v[64:71], v[16:23]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v74, v133 offset:576
	ds_load_u16_d16 v75, v133 offset:832
	ds_load_u16_d16 v76, v133 offset:1088
	ds_load_u16_d16 v77, v133 offset:1344
	ds_load_u16_d16 v78, v133 offset:1600
	ds_load_u16_d16 v79, v133 offset:1856
	ds_load_u16_d16 v72, v133 offset:64
	ds_load_u16_d16 v73, v133 offset:320
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v74, v133 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v75, v133 offset:960
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v76, v133 offset:1216
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v77, v133 offset:1472
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v78, v133 offset:1728
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v79, v133 offset:1984
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v72, v133 offset:192
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v73, v133 offset:448
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[72:79], v[64:71], v[8:15]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v73, v133 offset:352
	ds_load_u16_d16 v72, v133 offset:96
	ds_load_u16_d16 v74, v133 offset:608
	ds_load_u16_d16 v75, v133 offset:864
	ds_load_u16_d16 v76, v133 offset:1120
	ds_load_u16_d16 v77, v133 offset:1376
	ds_load_u16_d16 v78, v133 offset:1632
	ds_load_u16_d16 v79, v133 offset:1888
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v73, v133 offset:480
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v72, v133 offset:224
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v74, v133 offset:736
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v75, v133 offset:992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v76, v133 offset:1248
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v77, v133 offset:1504
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v78, v133 offset:1760
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v79, v133 offset:2016
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[72:79], v[64:71], v[0:7]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v160, v141
	v_sub_f32_e32 v67, v159, v141
	v_sub_f32_e32 v72, v150, v141
	v_sub_f32_e32 v68, v157, v141
	v_sub_f32_e32 v69, v158, v141
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v79, v87, v141
	v_sub_f32_e32 v87, v155, v141
	v_sub_f32_e32 v77, v145, v141
	v_sub_f32_e32 v145, v149, v141
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v72, v72
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v153, v141
	v_sub_f32_e32 v71, v154, v141
	v_sub_f32_e32 v73, v151, v141
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s25
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v74, v146, v141
	v_sub_f32_e32 v75, v147, v141
	v_sub_f32_e32 v76, v144, v141
	v_sub_f32_e32 v78, v86, v141
	v_sub_f32_e32 v86, v152, v141
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v87, v87
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v64.h, v143.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v145, v145
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v64.l, v66.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v144, v148, v141
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v71, v71
	v_exp_f32_e32 v73, v73
	v_exp_f32_e32 v74, v74
	v_exp_f32_e32 v75, v75
	v_exp_f32_e32 v76, v76
	v_exp_f32_e32 v77, v77
	v_exp_f32_e32 v86, v86
	v_exp_f32_e32 v78, v78
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s24
	v_cndmask_b32_e64 v72, 0, v72, s14
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v64, 1, v64
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s23
	v_cndmask_b32_e64 v69, 0, v69, s22
	v_cndmask_b32_e64 v149, 0, v87, s15
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v87, v165, v166
.Ltmp17:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v144, v144
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v147, 0, v83, s1
	v_cndmask_b32_e64 v150, 0, v145, s13
.Ltmp18:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v145, v66, v67
.Ltmp19:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v66, v66
	v_add3_u32 v64, v66, v64, 0x7fff
	v_mov_b16_e64 v66.h, v143.h
	v_mov_b16_e32 v66.l, v72.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s20
	v_cndmask_b32_e64 v71, 0, v71, s16
	v_cndmask_b32_e64 v73, 0, v73, s12
	v_cndmask_b32_e64 v74, 0, v74, s19
	v_cndmask_b32_e64 v75, 0, v75, s11
	v_cndmask_b32_e64 v76, 0, v76, s10
	v_cndmask_b32_e64 v77, 0, v77, s9
	v_cndmask_b32_e64 v148, 0, v85, s21
	v_cndmask_b32_e64 v83, 0, v86, s18
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v85, v162, v161
	v_dual_add_f32 v151, v68, v69 :: v_dual_add_f32 v86, v163, v164
.Ltmp21:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v79, v79
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v78, 0, v78, s8
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v66, 1, v66
	v_mov_b16_e64 v65.h, v143.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v146, 0, v84, s4
	v_cndmask_b32_e64 v84, 0, v144, s17
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v153, v72, v73 :: v_dual_add_f32 v154, v74, v75
	v_dual_add_f32 v145, v145, v151 :: v_dual_add_f32 v144, v167, v168
	v_dual_add_f32 v85, v85, v86 :: v_dual_add_f32 v152, v70, v71
	v_add_f32_e32 v86, v76, v77
.Ltmp23:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v65.l, v68.h
	v_cmp_o_f32_e64 s5, v72, v72
	v_add3_u32 v66, v72, v66, 0x7fff
	v_mov_b16_e64 v72.h, v143.h
	v_mov_b16_e32 v72.l, v78.h
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v87, v87, v144
	v_add_f32_e32 v151, v80, v146
	v_dual_add_f32 v152, v152, v153 :: v_dual_add_f32 v153, v82, v147
	v_dual_add_f32 v86, v154, v86 :: v_dual_and_b32 v65, 1, v65
.Ltmp25:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v79, 0, v79, s7
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v72, 1, v72
	v_cmp_o_f32_e64 s3, v68, v68
	v_cmp_o_f32_e64 s8, v78, v78
	v_add3_u32 v65, v68, v65, 0x7fff
	v_mov_b16_e64 v68.h, v143.h
	v_mov_b16_e32 v68.l, v74.h
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v144, v78, v79
.Ltmp27:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v72, v78, v72, 0x7fff
	v_mov_b16_e64 v78.h, v143.h
	v_mov_b16_e32 v78.l, v81.h
	v_and_b32_e32 v68, 1, v68
	v_cmp_o_f32_e64 s6, v74, v74
	v_mov_b16_e64 v143.l, v67.h
	v_cmp_o_f32_e64 s9, v80, v80
	v_and_b32_e32 v78, 1, v78
	v_add3_u32 v68, v74, v68, 0x7fff
	v_mov_b16_e64 v74.h, v143.h
	v_mov_b16_e32 v74.l, v80.h
	v_cmp_o_f32_e64 s11, v67, v67
	v_add3_u32 v78, v81, v78, 0x7fff
	v_cndmask_b16 v78.l, 0x7fff, v72.h, s8
	v_and_b32_e32 v72, 1, v143
	v_and_b32_e32 v74, 1, v74
	v_mov_b16_e64 v143.l, v69.h
	v_cmp_o_f32_e64 s12, v69, v69
	v_cndmask_b16 v64.l, 0x7fff, v64.h, s1
	v_add3_u32 v67, v67, v72, 0x7fff
	v_add3_u32 v74, v80, v74, 0x7fff
	v_mov_b16_e64 v80.h, v143.h
	v_mov_b16_e32 v80.l, v83.h
	v_and_b32_e32 v72, 1, v143
	v_mov_b16_e64 v143.l, v71.h
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v154, v81, v148
.Ltmp29:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v64.h, 0x7fff, v67.h, s11
	v_and_b32_e32 v80, 1, v80
	v_add3_u32 v67, v69, v72, 0x7fff
	v_and_b32_e32 v69, 1, v143
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v153, v153, v154
	v_add_f32_e32 v154, v84, v150
	v_dual_add_f32 v144, v144, v151 :: v_dual_add_f32 v151, v83, v149
.Ltmp31:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s23, v83, v83
	v_add3_u32 v80, v83, v80, 0x7fff
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v83, v85, v87
.Ltmp33:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v70, v70
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v151, v151, v154
.Ltmp35:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v154.h, v143.h
	v_mov_b16_e64 v154.l, v70.h
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v85, v86, v144
.Ltmp37:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v76, v76
	v_cmp_o_f32_e64 s10, v82, v82
	v_mov_b16_e64 v143.l, v73.h
	v_and_b32_e32 v154, 1, v154
	v_cmp_o_f32_e64 s13, v71, v71
	v_cmp_o_f32_e64 s21, v81, v81
	v_cmp_o_f32_e64 s25, v84, v84
	v_cndmask_b16 v65.l, 0x7fff, v65.h, s3
	v_add3_u32 v70, v70, v154, 0x7fff
	v_mov_b16_e64 v154.h, v143.h
	v_mov_b16_e64 v154.l, v76.h
	v_permlanex16_b32 v72, v64, s67, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v65.h, 0x7fff, v67.h, s12
	v_add3_u32 v67, v71, v69, 0x7fff
	v_and_b32_e32 v69, 1, v143
	v_and_b32_e32 v154, 1, v154
	v_mov_b16_e64 v143.l, v75.h
	v_cmp_o_f32_e64 s14, v73, v73
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v86, v153, v151
.Ltmp39:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v66.l, 0x7fff, v70.h, s4
	v_add3_u32 v76, v76, v154, 0x7fff
	v_mov_b16_e64 v154.h, v143.h
	v_mov_b16_e64 v154.l, v82.h
	v_cndmask_b16 v68.l, 0x7fff, v66.h, s5
	v_cndmask_b16 v66.h, 0x7fff, v67.h, s13
	v_add3_u32 v67, v73, v69, 0x7fff
	v_and_b32_e32 v69, 1, v143
	v_and_b32_e32 v154, 1, v154
	v_mov_b16_e64 v143.l, v77.h
	v_cmp_o_f32_e64 s15, v75, v75
	v_cndmask_b16 v70.l, 0x7fff, v68.h, s6
	v_cndmask_b16 v68.h, 0x7fff, v67.h, s14
	v_add3_u32 v82, v82, v154, 0x7fff
	v_mov_b16_e64 v154.h, v143.h
	v_mov_b16_e64 v154.l, v84.h
	v_cmp_o_f32_e64 s16, v77, v77
	v_cmp_o_f32_e64 s17, v79, v79
	v_cndmask_b16 v76.l, 0x7fff, v76.h, s7
	v_cmp_o_f32_e64 s18, v146, v146
	v_and_b32_e32 v154, 1, v154
	v_cndmask_b16 v153.l, 0x7fff, v78.h, s21
	v_cmp_o_f32_e64 s19, v147, v147
	v_cmp_o_f32_e64 s20, v148, v148
	v_cndmask_b16 v151.l, 0x7fff, v74.h, s9
	v_add3_u32 v81, v84, v154, 0x7fff
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v84, v145, v152
.Ltmp41:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v154.l, 0x7fff, v80.h, s23
	v_perm_b32 v80, v72, v64, v131
	v_cndmask_b16 v152.l, 0x7fff, v82.h, s10
	v_cndmask_b16 v155.l, 0x7fff, v81.h, s25
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v144, v83, v84
.Ltmp43:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v81, v72, v64, v132
	v_permlanex16_b32 v64, v65, s67, 0xfedcba98 op_sel:[1,0]
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v145, v85, v86
.Ltmp45:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v67, 1, v143
	v_mov_b16_e64 v143.l, v79.h
	v_cmp_o_f32_e64 s22, v149, v149
	v_perm_b32 v82, v64, v65, v131
	v_perm_b32 v83, v64, v65, v132
	v_permlanex16_b32 v64, v66, s67, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v65, v75, v69, 0x7fff
	v_cmp_o_f32_e64 s24, v150, v150
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_perm_b32 v84, v64, v66, v131
	v_perm_b32 v85, v64, v66, v132
	v_cndmask_b16 v70.h, 0x7fff, v65.h, s15
	v_add3_u32 v65, v77, v67, 0x7fff
	v_and_b32_e32 v66, 1, v143
	v_mov_b16_e64 v143.l, v146.h
	v_permlanex16_b32 v64, v68, s67, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v76.h, 0x7fff, v65.h, s16
	v_add3_u32 v65, v79, v66, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v66, 1, v143
	v_mov_b16_e64 v143.l, v147.h
	v_perm_b32 v86, v64, v68, v131
	v_perm_b32 v87, v64, v68, v132
	v_cndmask_b16 v78.h, 0x7fff, v65.h, s17
	v_add3_u32 v65, v146, v66, 0x7fff
	v_and_b32_e32 v66, 1, v143
	v_mov_b16_e64 v143.l, v148.h
	v_permlanex16_b32 v64, v70, s67, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v67, v76, s67, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v151.h, 0x7fff, v65.h, s18
	v_add3_u32 v66, v147, v66, 0x7fff
	v_and_b32_e32 v65, 1, v143
	v_mov_b16_e64 v143.l, v149.h
	v_perm_b32 v72, v64, v70, v131
	v_perm_b32 v73, v64, v70, v132
	v_permlanex16_b32 v64, v78, s67, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v65, v148, v65, 0x7fff
	v_and_b32_e32 v68, 1, v143
	v_mov_b16_e64 v143.l, v150.h
	v_perm_b32 v74, v67, v76, v131
	v_perm_b32 v75, v67, v76, v132
	v_perm_b32 v76, v64, v78, v131
	v_permlanex16_b32 v67, v151, s67, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v152.h, 0x7fff, v66.h, s19
	v_perm_b32 v77, v64, v78, v132
	v_and_b32_e32 v64, 1, v143
	v_cndmask_b16 v153.h, 0x7fff, v65.h, s20
	v_perm_b32 v78, v67, v151, v131
	v_permlanex16_b32 v66, v152, s67, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v65, v149, v68, 0x7fff
	v_perm_b32 v79, v67, v151, v132
	v_add3_u32 v67, v150, v64, 0x7fff
	v_permlanex16_b32 v68, v153, s67, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v64, v66, v152, v131
	v_cndmask_b16 v154.h, 0x7fff, v65.h, s22
	v_perm_b32 v65, v66, v152, v132
	v_cndmask_b16 v155.h, 0x7fff, v67.h, s24
	v_perm_b32 v66, v68, v153, v131
	v_perm_b32 v67, v68, v153, v132
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v146, v133 offset:2048
	ds_load_u16_d16 v148, v133 offset:2560
	ds_load_u16_d16 v149, v133 offset:2816
	ds_load_u16_d16 v150, v133 offset:3072
	ds_load_u16_d16 v151, v133 offset:3328
	ds_load_u16_d16 v152, v133 offset:3584
	ds_load_u16_d16 v153, v133 offset:3840
	ds_load_u16_d16 v147, v133 offset:2304
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v146, v133 offset:2176
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v148, v133 offset:2688
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v149, v133 offset:2944
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v150, v133 offset:3200
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v151, v133 offset:3456
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v152, v133 offset:3712
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v153, v133 offset:3968
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v147, v133 offset:2432
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v69, v154, s67, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v71, v155, s67, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_perm_b32 v68, v69, v154, v131
	v_perm_b32 v69, v69, v154, v132
	v_perm_b32 v70, v71, v155, v131
	v_perm_b32 v71, v71, v155, v132
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[146:153], v[80:87], v[24:31]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v146, v133 offset:2080
	ds_load_u16_d16 v147, v133 offset:2336
	ds_load_u16_d16 v148, v133 offset:2592
	ds_load_u16_d16 v149, v133 offset:2848
	ds_load_u16_d16 v150, v133 offset:3104
	ds_load_u16_d16 v151, v133 offset:3360
	ds_load_u16_d16 v152, v133 offset:3616
	ds_load_u16_d16 v153, v133 offset:3872
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v146, v133 offset:2208
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v147, v133 offset:2464
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v148, v133 offset:2720
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v149, v133 offset:2976
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v150, v133 offset:3232
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v151, v133 offset:3488
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v152, v133 offset:3744
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v153, v133 offset:4000
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[146:153], v[80:87], v[16:23]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v146, v133 offset:2112
	ds_load_u16_d16 v147, v133 offset:2368
	ds_load_u16_d16 v148, v133 offset:2624
	ds_load_u16_d16 v149, v133 offset:2880
	ds_load_u16_d16 v150, v133 offset:3136
	ds_load_u16_d16 v151, v133 offset:3392
	ds_load_u16_d16 v152, v133 offset:3648
	ds_load_u16_d16 v153, v133 offset:3904
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v146, v133 offset:2240
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v147, v133 offset:2496
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v148, v133 offset:2752
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v149, v133 offset:3008
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v150, v133 offset:3264
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v151, v133 offset:3520
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v152, v133 offset:3776
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v153, v133 offset:4032
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[146:153], v[80:87], v[8:15]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v146, v133 offset:2144
	ds_load_u16_d16 v147, v133 offset:2400
	ds_load_u16_d16 v148, v133 offset:2656
	ds_load_u16_d16 v149, v133 offset:2912
	ds_load_u16_d16 v150, v133 offset:3168
	ds_load_u16_d16 v151, v133 offset:3424
	ds_load_u16_d16 v152, v133 offset:3680
	ds_load_u16_d16 v153, v133 offset:3936
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v146, v133 offset:2272
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v147, v133 offset:2528
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v148, v133 offset:2784
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v149, v133 offset:3040
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v150, v133 offset:3296
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v151, v133 offset:3552
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v152, v133 offset:3808
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v153, v133 offset:4064
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[146:153], v[80:87], v[0:7]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v80, v133 offset:4096
	ds_load_u16_d16 v82, v133 offset:4608
	ds_load_u16_d16 v83, v133 offset:4864
	ds_load_u16_d16 v84, v133 offset:5120
	ds_load_u16_d16 v85, v133 offset:5376
	ds_load_u16_d16 v86, v133 offset:5632
	ds_load_u16_d16 v87, v133 offset:5888
	ds_load_u16_d16 v81, v133 offset:4352
	ds_load_u16_d16 v146, v133 offset:4128
	ds_load_u16_d16 v147, v133 offset:4384
	ds_load_u16_d16 v148, v133 offset:4640
	ds_load_u16_d16 v149, v133 offset:4896
	ds_load_u16_d16 v150, v133 offset:5152
	ds_load_u16_d16 v151, v133 offset:5408
	ds_load_u16_d16 v152, v133 offset:5664
	ds_load_u16_d16 v153, v133 offset:5920
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v80, v133 offset:4224
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v82, v133 offset:4736
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v83, v133 offset:4992
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v84, v133 offset:5248
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v85, v133 offset:5504
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v86, v133 offset:5760
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v87, v133 offset:6016
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v81, v133 offset:4480
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[80:87], v[72:79], v[24:31]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v80, v133 offset:4160
	ds_load_u16_d16 v81, v133 offset:4416
	ds_load_u16_d16 v82, v133 offset:4672
	ds_load_u16_d16 v83, v133 offset:4928
	ds_load_u16_d16 v84, v133 offset:5184
	ds_load_u16_d16 v85, v133 offset:5440
	ds_load_u16_d16 v86, v133 offset:5696
	ds_load_u16_d16 v87, v133 offset:5952
	ds_load_u16_d16_hi v146, v133 offset:4256
	ds_load_u16_d16_hi v147, v133 offset:4512
	ds_load_u16_d16_hi v148, v133 offset:4768
	ds_load_u16_d16_hi v149, v133 offset:5024
	ds_load_u16_d16_hi v150, v133 offset:5280
	ds_load_u16_d16_hi v151, v133 offset:5536
	ds_load_u16_d16_hi v152, v133 offset:5792
	ds_load_u16_d16_hi v153, v133 offset:6048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[146:153], v[72:79], v[16:23]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v146, v133 offset:4192
	ds_load_u16_d16 v147, v133 offset:4448
	ds_load_u16_d16 v148, v133 offset:4704
	ds_load_u16_d16 v149, v133 offset:4960
	ds_load_u16_d16 v150, v133 offset:5216
	ds_load_u16_d16 v151, v133 offset:5472
	ds_load_u16_d16 v152, v133 offset:5728
	ds_load_u16_d16 v153, v133 offset:5984
	ds_load_u16_d16_hi v80, v133 offset:4288
	ds_load_u16_d16_hi v81, v133 offset:4544
	ds_load_u16_d16_hi v82, v133 offset:4800
	ds_load_u16_d16_hi v83, v133 offset:5056
	ds_load_u16_d16_hi v84, v133 offset:5312
	ds_load_u16_d16_hi v85, v133 offset:5568
	ds_load_u16_d16_hi v86, v133 offset:5824
	ds_load_u16_d16_hi v87, v133 offset:6080
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[80:87], v[72:79], v[8:15]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v80, v133 offset:6144
	ds_load_u16_d16 v82, v133 offset:6656
	ds_load_u16_d16 v83, v133 offset:6912
	ds_load_u16_d16 v84, v133 offset:7168
	ds_load_u16_d16 v85, v133 offset:7424
	ds_load_u16_d16 v86, v133 offset:7680
	ds_load_u16_d16 v87, v133 offset:7936
	ds_load_u16_d16 v81, v133 offset:6400
	ds_load_u16_d16_hi v146, v133 offset:4320
	ds_load_u16_d16_hi v147, v133 offset:4576
	ds_load_u16_d16_hi v148, v133 offset:4832
	ds_load_u16_d16_hi v149, v133 offset:5088
	ds_load_u16_d16_hi v150, v133 offset:5344
	ds_load_u16_d16_hi v151, v133 offset:5600
	ds_load_u16_d16_hi v152, v133 offset:5856
	ds_load_u16_d16_hi v153, v133 offset:6112
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[146:153], v[72:79], v[0:7]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v72, v133 offset:6208
	ds_load_u16_d16 v73, v133 offset:6464
	ds_load_u16_d16 v146, v133 offset:6240
	ds_load_u16_d16 v74, v133 offset:6720
	ds_load_u16_d16 v75, v133 offset:6976
	ds_load_u16_d16 v76, v133 offset:7232
	ds_load_u16_d16 v77, v133 offset:7488
	ds_load_u16_d16 v78, v133 offset:7744
	ds_load_u16_d16 v79, v133 offset:8000
	ds_load_u16_d16 v147, v133 offset:6496
	ds_load_u16_d16 v148, v133 offset:6752
	ds_load_u16_d16 v149, v133 offset:7008
	ds_load_u16_d16_hi v80, v133 offset:6272
	ds_load_u16_d16_hi v82, v133 offset:6784
	ds_load_u16_d16_hi v83, v133 offset:7040
	ds_load_u16_d16_hi v84, v133 offset:7296
	ds_load_u16_d16_hi v85, v133 offset:7552
	ds_load_u16_d16_hi v86, v133 offset:7808
	ds_load_u16_d16_hi v87, v133 offset:8064
	ds_load_u16_d16_hi v81, v133 offset:6528
	ds_load_u16_d16 v154, v133 offset:6176
	ds_load_u16_d16 v150, v133 offset:7264
	ds_load_u16_d16 v155, v133 offset:6432
	ds_load_u16_d16 v151, v133 offset:7520
	ds_load_u16_d16 v156, v133 offset:6688
	ds_load_u16_d16 v152, v133 offset:7776
	ds_load_u16_d16 v157, v133 offset:6944
	ds_load_u16_d16 v153, v133 offset:8032
	ds_load_u16_d16 v158, v133 offset:7200
	ds_load_u16_d16 v159, v133 offset:7456
	ds_load_u16_d16 v160, v133 offset:7712
	ds_load_u16_d16 v161, v133 offset:7968
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v72, v133 offset:6336
	s_waitcnt lgkmcnt(31)
	ds_load_u16_d16_hi v73, v133 offset:6592
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v74, v133 offset:6848
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v75, v133 offset:7104
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v76, v133 offset:7360
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v77, v133 offset:7616
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v78, v133 offset:7872
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v79, v133 offset:8128
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v154, v133 offset:6304
	ds_load_u16_d16_hi v146, v133 offset:6368
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v155, v133 offset:6560
	ds_load_u16_d16_hi v147, v133 offset:6624
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v156, v133 offset:6816
	ds_load_u16_d16_hi v148, v133 offset:6880
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v157, v133 offset:7072
	ds_load_u16_d16_hi v149, v133 offset:7136
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v158, v133 offset:7328
	ds_load_u16_d16_hi v150, v133 offset:7392
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v159, v133 offset:7584
	ds_load_u16_d16_hi v151, v133 offset:7648
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v160, v133 offset:7840
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v161, v133 offset:8096
	ds_load_u16_d16_hi v152, v133 offset:7904
	ds_load_u16_d16_hi v153, v133 offset:8160
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[24:31], v[80:87], v[64:71], v[24:31]
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v80, v144, v145 :: v_dual_mov_b32 v81, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v82, v80, s67, 0xfedcba98 op_sel:[1,0]
.Ltmp48:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[72:79], v[64:71], v[8:15]
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v91, v80, v82 :: v_dual_mov_b32 v80, v141
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp50:
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v91, v81, v142
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[154:161], v[64:71], v[16:23]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[146:153], v[64:71], v[0:7]
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
	v_mov_b32_e32 v91, v7
.LBB0_4:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_scale_f32 v32, null, v91, v91, v24
	v_div_scale_f32 v33, null, v91, v91, v25
	v_div_scale_f32 v34, null, v91, v91, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v35, v32
	v_rcp_f32_e32 v36, v33
	v_div_scale_f32 v38, vcc_lo, v24, v91, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v39, s0, v25, v91, v25
	v_div_scale_f32 v42, null, v91, v91, v27
	v_div_scale_f32 v48, s3, v27, v91, v27
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
	v_div_scale_f32 v40, s1, v26, v91, v26
	v_fmac_f32_e32 v37, v43, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v43, v38, v35 :: v_dual_mul_f32 v44, v39, v36
	v_rcp_f32_e32 v41, v42
	v_fma_f32 v46, -v32, v43, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v33, v44, v39
	v_dual_fmac_f32 v43, v46, v35 :: v_dual_fmac_f32 v44, v47, v36
	v_div_scale_f32 v46, null, v91, v91, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v42, v41, 1.0
	v_fma_f32 v32, -v32, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v33, v44, v39
	v_rcp_f32_e32 v38, v46
	v_div_scale_f32 v39, null, v91, v91, v29
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v32, v32, v35, v43
	s_mov_b32 vcc_lo, s0
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v91
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v36, v44
	v_rcp_f32_e32 v43, v39
	v_div_scale_f32 v44, null, v91, v91, v31
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v46, v38, 1.0
	v_div_fixup_f32 v25, v33, v91, v25
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v47, v44
	v_div_fixup_f32 v24, v32, v91, v24
	v_fmac_f32_e32 v38, v36, v38
	v_mul_f32_e32 v45, v40, v37
	v_div_scale_f32 v36, null, v91, v91, v30
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
	v_div_fixup_f32 v26, v33, v91, v26
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
	v_div_scale_f32 v45, s5, v31, v91, v31
	v_fmac_f32_e32 v35, v32, v41
	v_div_scale_f32 v32, s4, v28, v91, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v37, -v42, v35, v48
	v_mul_f32_e32 v40, v32, v38
	v_div_scale_f32 v42, s1, v29, v91, v29
	v_div_scale_f32 v48, null, v91, v91, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v35, v37, v41, v35
	v_fma_f32 v37, -v46, v40, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v41, v42, v43
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v27, v35, v91, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v37, v38
	v_div_scale_f32 v37, null, v91, v91, v16
	v_fma_f32 v33, -v39, v41, v42
	v_div_scale_f32 v35, s3, v30, v91, v30
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
	v_div_fixup_f32 v28, v32, v91, v28
	v_fma_f32 v42, -v37, v46, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v46, v42, v46
	v_div_fmas_f32 v38, v38, v43, v41
	v_fma_f32 v41, -v44, v40, v45
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v42, s1, v16, v91, v16
	v_div_scale_f32 v43, null, v91, v91, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v41, v47
	v_div_scale_f32 v41, s3, v17, v91, v17
	v_mul_f32_e32 v33, v35, v34
	v_div_fixup_f32 v29, v38, v91, v29
	v_div_scale_f32 v38, null, v91, v91, v18
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
	v_div_scale_f32 v45, null, v91, v91, v21
	v_fmac_f32_e32 v39, v36, v39
	v_mul_f32_e32 v35, v42, v46
	v_rcp_f32_e32 v36, v38
	v_div_fixup_f32 v30, v32, v91, v30
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
	v_div_scale_f32 v37, s4, v18, v91, v18
	v_fmac_f32_e32 v36, v44, v36
	v_div_scale_f32 v44, null, v91, v91, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v43, v34, 1.0
	v_fmac_f32_e32 v34, v42, v34
	v_div_fmas_f32 v33, v33, v47, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v42, s1, v19, v91, v19
	v_div_fmas_f32 v32, v32, v46, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v31, v33, v91, v31
	v_rcp_f32_e32 v35, v44
	v_mul_f32_e32 v46, v42, v34
	v_mul_f32_e32 v40, v41, v39
	v_div_fixup_f32 v16, v32, v91, v16
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
	v_div_scale_f32 v40, s3, v20, v91, v20
	v_fma_f32 v41, -v45, v47, 1.0
	v_div_fixup_f32 v17, v32, v91, v17
	v_fma_f32 v32, -v38, v33, v37
	v_fmac_f32_e32 v46, v39, v34
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v37, v40, v35
	v_fmac_f32_e32 v47, v41, v47
	v_div_scale_f32 v38, s5, v21, v91, v21
	v_div_fmas_f32 v32, v32, v36, v33
	v_fma_f32 v33, -v43, v46, v42
	v_div_scale_f32 v43, null, v91, v91, v23
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v36, -v44, v37, v40
	v_mul_f32_e32 v42, v38, v47
	v_div_fmas_f32 v33, v33, v34, v46
	v_rcp_f32_e32 v34, v43
	v_div_fixup_f32 v18, v32, v91, v18
	v_fmac_f32_e32 v37, v36, v35
	v_fma_f32 v36, -v45, v42, v38
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v39, null, v91, v91, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v32, -v44, v37, v40
	v_fmac_f32_e32 v42, v36, v47
	v_div_fixup_f32 v19, v33, v91, v19
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v36, -v43, v34, 1.0
	v_rcp_f32_e32 v41, v39
	v_div_fmas_f32 v32, v32, v35, v37
	v_fma_f32 v35, -v45, v42, v38
	v_div_scale_f32 v38, s3, v23, v91, v23
	v_fmac_f32_e32 v34, v36, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v20, v32, v91, v20
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v45, null, v91, v91, v9
	v_mul_f32_e32 v44, v38, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v39, v41, 1.0
	v_div_scale_f32 v33, s1, v22, v91, v22
	v_div_scale_f32 v36, null, v91, v91, v8
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
	v_div_scale_f32 v32, s4, v8, v91, v8
	v_fmac_f32_e32 v41, v46, v41
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v21, v35, v91, v21
	v_rcp_f32_e32 v35, v45
	v_div_scale_f32 v47, null, v91, v91, v11
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
	v_div_scale_f32 v39, null, v91, v91, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v42, v40
	v_div_fmas_f32 v33, v33, v41, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v42, v39
	v_fma_f32 v37, -v43, v44, v38
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v41, s1, v9, v91, v9
	v_div_fixup_f32 v22, v33, v91, v22
	v_div_fmas_f32 v34, v37, v34, v44
	v_mul_f32_e32 v38, v32, v40
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v39, v42, 1.0
	v_div_fixup_f32 v23, v34, v91, v23
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v46, -v36, v38, v32
	v_fma_f32 v34, -v47, v49, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, s5, v10, v91, v10
	v_fmac_f32_e32 v38, v46, v40
	v_fmac_f32_e32 v49, v34, v49
	v_div_scale_f32 v34, s3, v11, v91, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v32, -v36, v38, v32
	v_div_scale_f32 v36, null, v91, v91, v12
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
	v_div_fixup_f32 v8, v32, v91, v8
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
	v_div_scale_f32 v40, s1, v12, v91, v12
	v_div_fmas_f32 v35, v37, v35, v48
	v_fma_f32 v37, -v39, v44, v43
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v32, v40, v33
	v_div_scale_f32 v39, null, v91, v91, v13
	v_div_fmas_f32 v37, v37, v42, v44
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v9, v35, v91, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v39
	v_div_fixup_f32 v10, v37, v91, v10
	v_div_scale_f32 v37, null, v91, v91, v14
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
	v_div_scale_f32 v42, null, v91, v91, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v34, v34, v49, v38
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v44, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v11, v34, v91, v11
	v_fma_f32 v34, -v36, v32, v40
	v_fma_f32 v40, -v37, v43, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v32, v34, v33, v32
	v_fmac_f32_e32 v43, v40, v43
	v_div_scale_f32 v40, null, v91, v91, v1
	v_div_scale_f32 v33, null, v91, v91, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v12, v32, v91, v12
	v_fma_f32 v32, -v42, v44, 1.0
	v_fmac_f32_e32 v41, v35, v41
	v_div_scale_f32 v35, s4, v13, v91, v13
	v_rcp_f32_e32 v46, v40
	v_fmac_f32_e32 v44, v32, v44
	v_div_scale_f32 v34, s1, v14, v91, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v38, v35, v41
	v_div_scale_f32 v32, s3, v15, v91, v15
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v47, s4, v0, v91, v0
	v_fma_f32 v36, -v39, v38, v35
	v_fma_f32 v48, -v40, v46, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v46, v48, v46
	v_fmac_f32_e32 v38, v36, v41
	v_rcp_f32_e32 v36, v33
	v_div_scale_f32 v48, s5, v1, v91, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v35, -v39, v38, v35
	v_mul_f32_e32 v39, v34, v43
	v_div_fmas_f32 v35, v35, v41, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v33, v36, 1.0
	v_fma_f32 v38, -v37, v39, v34
	v_mul_f32_e32 v41, v32, v44
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v13, v35, v91, v13
	v_fmac_f32_e32 v36, v45, v36
	v_div_scale_f32 v45, null, v91, v91, v2
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
	v_div_scale_f32 v38, s1, v2, v91, v2
	v_div_scale_f32 v39, null, v91, v91, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v33, v33, v36, v50
	v_fma_f32 v36, -v40, v37, v48
	s_mov_b32 vcc_lo, s5
	v_mul_f32_e32 v35, v38, v49
	v_div_fixup_f32 v15, v32, v91, v15
	v_div_fixup_f32 v0, v33, v91, v0
	v_div_fmas_f32 v36, v36, v46, v37
	v_div_scale_f32 v33, null, v91, v91, v4
	v_fma_f32 v40, -v45, v35, v38
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v1, v36, v91, v1
	v_div_scale_f32 v36, null, v91, v91, v6
	v_fmac_f32_e32 v35, v40, v49
	v_rcp_f32_e32 v41, v39
	v_div_fixup_f32 v14, v34, v91, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v36
	v_div_scale_f32 v43, null, v91, v91, v7
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
	v_div_scale_f32 v47, s4, v6, v91, v6
	v_div_fmas_f32 v32, v32, v49, v35
	v_rcp_f32_e32 v35, v33
	v_div_scale_f32 v37, vcc_lo, v3, v91, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v51, v47, v40
	v_div_fixup_f32 v2, v32, v91, v2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v49, -v43, v45, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v32, -v33, v35, 1.0
	v_fmac_f32_e32 v45, v49, v45
	v_div_scale_f32 v49, s5, v7, v91, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v35, v32, v35
	v_div_scale_f32 v32, s1, v4, v91, v4
	v_fmac_f32_e32 v41, v34, v41
	v_div_scale_f32 v34, null, v91, v91, v5
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
	v_div_scale_f32 v44, s3, v5, v91, v5
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
	v_div_fixup_f32 v3, v37, v91, v3
	v_fmac_f32_e32 v50, v39, v38
	v_fmac_f32_e32 v52, v33, v45
	v_div_fixup_f32 v4, v32, v91, v4
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_or_b32_e32 v32, s50, v124
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
	v_div_fixup_f32 v5, v34, v91, v5
	v_div_fmas_f32 v35, v35, v45, v52
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s61, v121
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v33, v91, v6
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v33, v32, v121, 2
	v_add_lshl_u32 v34, v32, v123, 2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v35, v91, v7
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v35, v32, v122, 2
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
	v_add_lshl_u32 v24, v32, v120, 2
	v_add_lshl_u32 v25, v32, v119, 2
	v_add_lshl_u32 v26, v32, v118, 2
	v_add_lshl_u32 v33, v32, v117, 2
	v_add_lshl_u32 v34, v32, v116, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s61, v115
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	s_clause 0x4
	buffer_store_b32 v27, v24, s[48:51], 0 offen
	buffer_store_b32 v28, v25, s[48:51], 0 offen
	buffer_store_b32 v29, v26, s[48:51], 0 offen
	buffer_store_b32 v30, v33, s[48:51], 0 offen
	buffer_store_b32 v31, v34, s[48:51], 0 offen
	v_add_lshl_u32 v24, v32, v115, 2
	v_add_lshl_u32 v25, v32, v114, 2
	v_add_lshl_u32 v26, v32, v113, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v27, v32, v112, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_lshl_u32 v28, v32, v111, 2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	s_clause 0x2
	buffer_store_b32 v16, v24, s[48:51], 0 offen
	buffer_store_b32 v17, v25, s[48:51], 0 offen
	buffer_store_b32 v18, v26, s[48:51], 0 offen
	v_add_lshl_u32 v17, v32, v110, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s61, v107
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v16, 0x80000000, v28, vcc_lo
	buffer_store_b32 v19, v27, s[48:51], 0 offen
	v_add_lshl_u32 v18, v32, v109, 2
	v_add_lshl_u32 v19, v32, v108, 2
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	buffer_store_b32 v20, v16, s[48:51], 0 offen
	v_add_lshl_u32 v16, v32, v107, 2
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v21, v17, s[48:51], 0 offen
	v_add_lshl_u32 v17, v32, v106, 2
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	s_clause 0x2
	buffer_store_b32 v22, v18, s[48:51], 0 offen
	buffer_store_b32 v23, v19, s[48:51], 0 offen
	buffer_store_b32 v8, v16, s[48:51], 0 offen
	v_add_lshl_u32 v8, v32, v105, 2
	v_cndmask_b32_e32 v16, 0x80000000, v17, vcc_lo
	v_add_lshl_u32 v17, v32, v104, 2
	v_add_lshl_u32 v18, v32, v103, 2
	v_add_lshl_u32 v19, v32, v102, 2
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	buffer_store_b32 v9, v16, s[48:51], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v16, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s61, v99
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v10, v8, s[48:51], 0 offen
	v_add_lshl_u32 v8, v32, v101, 2
	s_clause 0x2
	buffer_store_b32 v11, v9, s[48:51], 0 offen
	buffer_store_b32 v12, v16, s[48:51], 0 offen
	buffer_store_b32 v13, v17, s[48:51], 0 offen
	v_add_lshl_u32 v9, v32, v100, 2
	v_add_lshl_u32 v10, v32, v99, 2
	v_add_lshl_u32 v11, v32, v98, 2
	v_add_lshl_u32 v12, v32, v97, 2
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
	v_add_lshl_u32 v0, v32, v94, 2
	v_add_lshl_u32 v1, v32, v95, 2
	v_add_lshl_u32 v2, v32, v93, 2
	v_add_lshl_u32 v8, v32, v92, 2
	v_add_lshl_u32 v9, v32, v96, 2
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
.Ltmp51:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 181
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 69
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12836
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
	.quad	.Ltmp15-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     71
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
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
