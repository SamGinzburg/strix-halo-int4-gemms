	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x5c
	s_load_b64 s[40:41], s[0:1], 0x0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 3, v0
	.loc	1 787 79                        ; attention.py:787:79
	v_and_b32_e32 v2, 7, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s4, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s8, s3, 9
	s_mov_b32 s43, 0x31027000
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s4, v1
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v4, 3, v2
	.loc	1 787 26 is_stmt 0              ; attention.py:787:26
	s_add_i32 s33, s4, s8
	s_mov_b32 s42, 0x7ffffffe
	s_clause 0x1
	s_load_b32 s9, s[0:1], 0x84
	s_load_b64 s[36:37], s[0:1], 0x38
	.loc	1 790 23 is_stmt 1              ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x200, v3
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v89, 16, v0
	s_mov_b32 s24, 0
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v5, s22, v1
	s_mul_i32 s3, s22, s33
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s22, v4
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s5, s22, 4
	s_mul_i32 s6, s22, 48
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s41, s41, 0xffff
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s2, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 787 26                        ; attention.py:787:26
	v_add3_u32 v3, v5, v4, s3
	s_lshl_b32 s3, s22, 5
	.loc	1 810 48                        ; attention.py:810:48
	s_add_i32 s10, s4, s9
	s_add_i32 s10, s10, 64
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v5, 1, v3
	v_add_lshl_u32 v6, v3, s5, 1
	v_add_lshl_u32 v7, v3, s3, 1
	v_add_lshl_u32 v3, v3, s6, 1
	v_cmp_eq_u32_e64 s3, 0, v89
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s10, 1
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x3
	buffer_load_b128 v[8:11], v5, s[40:43], 0 offen
	buffer_load_b128 v[12:15], v6, s[40:43], 0 offen
	buffer_load_b128 v[16:19], v7, s[40:43], 0 offen
	buffer_load_b128 v[20:23], v3, s[40:43], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v6, 0x60, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v5, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v7, 15, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v3, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v24, 1, v6
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v5, 0x70, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v88, v24, v7
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v24, v3, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s4, v88
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v90, 0, v24
	s_waitcnt vmcnt(3)
	ds_store_b128 v90, v[8:11]
	s_waitcnt vmcnt(2)
	ds_store_b128 v90, v[12:15] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v90, v[16:19] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v90, v[20:23] offset:6144
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x200, v5
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v7, 7, v7
	v_lshlrev_b32_e32 v6, 6, v6
	v_dual_mov_b32 v24, 0 :: v_dual_and_b32 v9, 0x78, v0
	v_lshlrev_b32_e32 v8, 4, v2
	s_clause 0x1
	s_load_b32 s11, s[0:1], 0x64
	s_load_b128 s[4:7], s[0:1], 0x8
	.loc	1 810 25                        ; attention.py:810:25
	s_min_i32 s0, s10, 0x200
	v_mov_b32_e32 v25, v24
	.loc	1 788 26                        ; attention.py:788:26
	v_or3_b32 v6, v7, v6, v8
	.loc	1 811 35                        ; attention.py:811:35
	s_add_i32 s0, s0, 31
	v_dual_mov_b32 v27, v24 :: v_dual_add_nc_u32 v92, s9, v5
	.loc	1 811 34 is_stmt 0              ; attention.py:811:34
	s_ashr_i32 s1, s0, 31
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_xad_u32 v5, 0x70, v6, 0
	v_xad_u32 v10, 0x60, v6, 0
	.loc	1 811 34                        ; attention.py:811:34
	s_lshr_b32 s1, s1, 27
	v_dual_mov_b32 v31, v24 :: v_dual_lshlrev_b32 v16, 3, v0
	s_add_i32 s34, s0, s1
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s23, v4
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v4, 0x50, v6, 0
	ds_load_b128 v[36:39], v5
	ds_load_b128 v[32:35], v10
	v_xad_u32 v5, v6, 64, 0
	v_xad_u32 v10, v6, 48, 0
	v_xad_u32 v11, v6, 32, 0
	v_xad_u32 v12, v6, 16, 0
	v_dual_mov_b32 v29, v24 :: v_dual_add_nc_u32 v6, 0, v6
	ds_load_b128 v[44:47], v4
	ds_load_b128 v[40:43], v5
	ds_load_b128 v[52:55], v10
	ds_load_b128 v[48:51], v11
	ds_load_b128 v[60:63], v12
	ds_load_b128 v[56:59], v6
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v4, 2, v9
	v_dual_mov_b32 v28, v24 :: v_dual_and_b32 v3, 48, v3
	v_lshrrev_b32_e32 v9, 1, v9
	v_bfe_i32 v0, v0, 3, 1
	v_dual_mov_b32 v5, 0x5410 :: v_dual_and_b32 v16, 48, v16
	v_mov_b32_e32 v21, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v3, v3, v9
	v_and_b32_e32 v0, 0x210, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v9, v2, 6, v16
	v_cndmask_b32_e64 v5, 0x1054, v5, s3
	v_mov_b32_e32 v6, 0x7632
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v4, s8, v4
	v_or_b32_e32 v93, v8, v7
	v_xor_b32_e32 v97, v9, v0
	v_lshl_or_b32 v5, v5, 8, v5
	v_cndmask_b32_e64 v6, 0x3276, v6, s3
	v_add_nc_u32_e32 v0, s8, v1
	v_xor_b32_e32 v13, 0x50, v93
	v_xor_b32_e32 v9, 32, v97
	v_dual_mov_b32 v26, v24 :: v_dual_and_b32 v5, 0x540054, v5
	v_lshl_or_b32 v6, v6, 8, v6
	v_xor_b32_e32 v16, 48, v97
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v113, 0, v9
	v_mov_b32_e32 v9, v24
	v_mul_lo_u32 v1, s23, v4
	v_lshl_or_b32 v5, v5, 4, v5
	v_and_b32_e32 v6, 0x760076, v6
	v_add_nc_u32_e32 v106, 0, v13
	v_mov_b32_e32 v13, v24
	v_lshl_or_b32 v95, v2, 9, v3
	v_dual_mov_b32 v23, v24 :: v_dual_and_b32 v94, 0x5040504, v5
	v_add_nc_u32_e32 v17, s23, v1
	v_dual_mov_b32 v30, v24 :: v_dual_add_nc_u32 v5, 16, v0
	v_add_nc_u32_e32 v114, 0, v16
	v_mov_b32_e32 v16, v24
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_add_u32 v98, v17, 1, v8
	v_mov_b32_e32 v17, v24
	v_lshl_or_b32 v6, v6, 4, v6
	v_mul_lo_u32 v5, s22, v5
	v_mul_lo_u32 v0, s22, v0
	v_xor_b32_e32 v7, 16, v93
	v_xor_b32_e32 v10, 32, v93
	v_xor_b32_e32 v11, 48, v93
	v_xor_b32_e32 v12, 64, v93
	v_xor_b32_e32 v14, 0x60, v93
	v_xor_b32_e32 v15, 0x70, v93
	v_and_b32_e32 v96, 0x7060706, v6
	v_xor_b32_e32 v2, 0x90, v95
	v_xor_b32_e32 v3, 0x120, v95
	v_xor_b32_e32 v4, 0x1b0, v95
	v_xor_b32_e32 v6, 16, v97
	v_xor_b32_e32 v18, 0x420, v97
	v_xor_b32_e32 v19, 0x430, v97
	v_xor_b32_e32 v20, 0x410, v97
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v91, 4, v89
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v99, v1, 1, v8
	v_lshl_add_u32 v100, v5, 1, v8
	v_lshl_add_u32 v101, v0, 1, v8
	v_add_nc_u32_e32 v102, 0, v7
	v_add_nc_u32_e32 v103, 0, v10
	v_dual_mov_b32 v1, v24 :: v_dual_add_nc_u32 v104, 0, v11
	v_add_nc_u32_e32 v105, 0, v12
	v_dual_mov_b32 v22, v24 :: v_dual_add_nc_u32 v107, 0, v14
	v_dual_mov_b32 v5, v24 :: v_dual_add_nc_u32 v108, 0, v15
	v_dual_mov_b32 v8, v24 :: v_dual_add_nc_u32 v109, 0, v2
	v_dual_mov_b32 v7, v24 :: v_dual_add_nc_u32 v110, 0, v3
	v_dual_mov_b32 v10, v24 :: v_dual_add_nc_u32 v111, 0, v4
	v_dual_mov_b32 v121, 0xff800000 :: v_dual_add_nc_u32 v112, 0, v6
	v_dual_mov_b32 v14, v24 :: v_dual_add_nc_u32 v115, 0, v18
	v_add_nc_u32_e32 v116, 0, v19
	v_dual_mov_b32 v0, v24 :: v_dual_add_nc_u32 v117, 0, v20
	v_mov_b32_e32 v18, v24
	v_mov_b32_e32 v19, v24
	v_mov_b32_e32 v20, v24
	v_mov_b32_e32 v11, v24
	v_mov_b32_e32 v12, v24
	v_mov_b32_e32 v15, v24
	v_mov_b32_e32 v2, v24
	v_mov_b32_e32 v3, v24
	v_mov_b32_e32 v4, v24
	v_mov_b32_e32 v6, v24
	v_mov_b32_e32 v82, v24
	.loc	1 860 31                        ; attention.py:860:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s35, s11, 0x3fb8aa3b
	s_and_b32 s5, s5, 0xffff
	.loc	1 811 33                        ; attention.py:811:33
	s_and_not1_b32 s34, s34, 31
	s_and_b32 s45, s7, 0xffff
	.loc	1 818 13                        ; attention.py:818:13
	s_lshl_b32 s38, s23, 6
	s_lshl_b32 s22, s22, 6
	s_mov_b32 s40, s4
	s_mov_b32 s41, s5
	s_mov_b32 s25, s24
	s_mov_b32 s26, s24
	s_mov_b32 s27, s24
	s_mov_b32 s28, s24
	s_mov_b32 s29, s24
	s_mov_b32 s30, s24
	s_mov_b32 s31, s24
	s_mov_b32 s44, s6
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
	s_mov_b32 s39, 0x76543210
	s_mov_b32 s48, s24
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 854 32                        ; attention.py:854:32
	v_dual_cndmask_b32 v64, 0x80000000, v101 :: v_dual_cndmask_b32 v65, 0x80000000, v100
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v118, v82 :: v_dual_add_nc_u32 v83, s48, v91
	v_add_nc_u32_e32 v81, 0, v93
	s_clause 0x1
	buffer_load_b128 v[72:75], v64, s[40:43], 0 offen
	buffer_load_b128 v[76:79], v65, s[40:43], 0 offen
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v71, s31 :: v_dual_mov_b32 v68, s28
	.loc	1 864 30                        ; attention.py:864:30
	v_add_nc_u32_e32 v123, 24, v83
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v124, 22, v83
	.loc	1 864 30                        ; attention.py:864:30
	v_add_nc_u32_e32 v125, 20, v83
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v126, 18, v83
	.loc	1 864 30                        ; attention.py:864:30
	v_add_nc_u32_e32 v127, 16, v83
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v128, 14, v83
	.loc	1 864 30                        ; attention.py:864:30
	v_add_nc_u32_e32 v129, 12, v83
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v130, 10, v83
	.loc	1 859 30                        ; attention.py:859:30
	v_mov_b32_e32 v70, s30
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s8, v123, v92
	v_cmp_le_i32_e64 s9, v124, v92
	v_cmp_le_i32_e64 s10, v125, v92
	v_cmp_le_i32_e64 s13, v126, v92
	v_cmp_le_i32_e64 s15, v127, v92
	v_cmp_le_i32_e64 s17, v128, v92
	v_cmp_le_i32_e64 s20, v129, v92
	v_cmp_le_i32_e64 s14, v130, v92
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v69, s29 :: v_dual_mov_b32 v66, s26
	v_dual_mov_b32 v67, s27 :: v_dual_mov_b32 v64, s24
	v_dual_mov_b32 v65, s25 :: v_dual_add_nc_u32 v120, 0, v95
	.loc	1 864 30                        ; attention.py:864:30
	v_add_nc_u32_e32 v131, 8, v83
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v132, 6, v83
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v80, 0x80000000, v99, s0
	v_cndmask_b32_e64 v84, 0x80000000, v98, s0
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s4, v83, v92
	v_cmp_le_i32_e64 s18, v131, v92
	v_cmp_le_i32_e64 s19, v132, v92
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s15, s2, s15
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v122.h, 0
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s11, s2, s4
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v121
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v99, s38, v99
	v_add_nc_u32_e32 v100, s22, v100
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v139.h, v122.h
	v_mov_b16_e64 v140.h, v122.h
	v_mov_b16_e64 v141.h, v122.h
	v_mov_b16_e64 v144.h, v122.h
	v_mov_b16_e64 v142.h, v122.h
	v_mov_b16_e64 v143.h, v122.h
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v101, s22, v101
	s_add_i32 s48, s48, 32
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(1)
	ds_store_b128 v90, v[72:75]
	s_waitcnt vmcnt(0)
	ds_store_b128 v90, v[76:79] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[76:79], v102
	ds_load_b128 v[72:75], v81
	ds_load_b128 v[123:126], v81 offset:2048
	ds_load_b128 v[127:130], v102 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[131:138], v[72:79], v[56:63], v[64:71]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[72:79], v[123:130], v[56:63], v[64:71]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[68:71], v104
	ds_load_b128 v[64:67], v103
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v130.h, v122.h
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[131:138], v[64:71], v[48:55], v[131:138]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[64:67], v103 offset:2048
	ds_load_b128 v[68:71], v104 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[72:79], v[64:71], v[48:55], v[72:79]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[68:71], v106
	ds_load_b128 v[64:67], v105
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[131:138], v[64:71], v[40:47], v[131:138]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[64:67], v105 offset:2048
	ds_load_b128 v[68:71], v106 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[72:79], v[64:71], v[40:47], v[72:79]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[68:71], v108
	ds_load_b128 v[64:67], v107
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[131:138], v[64:71], v[32:39], v[131:138]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[64:67], v107 offset:2048
	ds_load_b128 v[68:71], v108 offset:2048
	.loc	1 864 30                        ; attention.py:864:30
	v_add_nc_u32_e32 v82, 2, v83
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v85, 30, v83
	.loc	1 864 30                        ; attention.py:864:30
	v_add_nc_u32_e32 v86, 28, v83
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v87, 26, v83
	.loc	1 864 30                        ; attention.py:864:30
	v_add_nc_u32_e32 v83, 4, v83
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v119, 0, v97
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v98, s38, v98
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s21, v83, v92
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[72:79], v[64:71], v[32:39], v[72:79]
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v66, s35, v133
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s5, v85, v92
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v67, s35, v134
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s12, v82, v92
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[80:83], v80, s[44:47], 0 offen
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v69, s35, v136
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s7, v86, v92
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v70, s35, v137
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s6, v87, v92
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[84:87], v84, s[44:47], 0 offen
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v64, s35, v131 :: v_dual_mul_f32 v65, s35, v132
	v_dual_mul_f32 v68, s35, v135 :: v_dual_mul_f32 v73, s35, v73
	v_dual_mul_f32 v74, s35, v74 :: v_dual_mul_f32 v75, s35, v75
	v_dual_mul_f32 v76, s35, v76 :: v_dual_mul_f32 v77, s35, v77
	v_mul_f32_e32 v78, s35, v78
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s4, s2, s5
	s_and_b32 s5, s2, s6
	s_and_b32 s6, s2, s8
	s_and_b32 s8, s2, s9
	s_and_b32 s9, s2, s10
	s_and_b32 s10, s2, s13
	s_and_b32 s7, s2, s7
	s_and_b32 s16, s2, s12
	s_and_b32 s12, s2, s14
	s_and_b32 s14, s2, s18
	s_and_b32 s18, s2, s19
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v71, s35, v138 :: v_dual_mul_f32 v72, s35, v72
	v_mul_f32_e32 v79, s35, v79
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v78, 0xff800000, v78, s7
	v_cndmask_b32_e64 v76, 0xff800000, v76, s6
	v_cndmask_b32_e64 v77, 0xff800000, v77, s5
	v_cndmask_b32_e64 v74, 0xff800000, v74, s9
	v_cndmask_b32_e64 v75, 0xff800000, v75, s8
	v_cndmask_b32_e64 v73, 0xff800000, v73, s10
	v_cndmask_b32_e64 v64, 0xff800000, v64, s11
	v_cndmask_b32_e64 v65, 0xff800000, v65, s16
	v_cndmask_b32_e64 v68, 0xff800000, v68, s14
	v_cndmask_b32_e64 v69, 0xff800000, v69, s12
	v_cndmask_b32_e64 v67, 0xff800000, v67, s18
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s19, s2, s21
	s_and_b32 s13, s2, s17
	s_and_b32 s17, s2, s20
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v79, 0xff800000, v79, s4
	v_cndmask_b32_e64 v66, 0xff800000, v66, s19
	v_cndmask_b32_e64 v72, 0xff800000, v72, s15
	v_cndmask_b32_e64 v70, 0xff800000, v70, s17
	v_cndmask_b32_e64 v71, 0xff800000, v71, s13
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v123, v76, v77, v78
	v_max3_f32 v124, v73, v74, v75
	v_max_f32_e32 v125, v64, v65
	v_max3_f32 v126, v67, v68, v69
	v_max3_f32 v127, v70, v71, v72
.Ltmp2:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v123, v124, v123, v79
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v124, v125, v66, v126
.Ltmp6:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v125.h, v122.h
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s48, s34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v123, v124, v127, v123
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v124, v123, s39, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v123, v121, v123, v124
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v75, v75, v123
	v_sub_f32_e32 v78, v78, v123
	v_sub_f32_e32 v79, v79, v123
	v_sub_f32_e32 v68, v68, v123
	v_sub_f32_e32 v69, v69, v123
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v75, v75
	v_exp_f32_e32 v78, v78
	v_exp_f32_e32 v79, v79
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v70, v123
	v_sub_f32_e32 v71, v71, v123
	v_sub_f32_e32 v73, v73, v123
	v_sub_f32_e32 v74, v74, v123
	v_sub_f32_e32 v76, v76, v123
	v_sub_f32_e32 v77, v77, v123
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v70, v70
	v_exp_f32_e32 v71, v71
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v127, 0, v75, s8
	v_cndmask_b32_e64 v75, 0, v78, s7
	v_cndmask_b32_e64 v129, 0, v79, s4
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v65, v123
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v73, v73
	v_exp_f32_e32 v74, v74
	v_exp_f32_e32 v76, v76
	v_exp_f32_e32 v77, v77
	v_exp_f32_e32 v65, v65
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, 0, v68, s14
	v_cndmask_b32_e64 v69, 0, v69, s12
	v_cndmask_b32_e64 v70, 0, v70, s17
	v_cndmask_b32_e64 v71, 0, v71, s13
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v66, v66, v123
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v126, 0, v73, s10
	v_cndmask_b32_e64 v73, 0, v74, s9
	v_cndmask_b32_e64 v74, 0, v76, s6
	v_cndmask_b32_e64 v128, 0, v77, s5
	v_cndmask_b32_e64 v65, 0, v65, s16
.Ltmp10:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v78, v68, v69 :: v_dual_add_f32 v79, v70, v71
.Ltmp11:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v72, v72, v123
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v122.l, v65.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v67, v123
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v78, v78, v79
	v_dual_add_f32 v79, v74, v128 :: v_dual_sub_f32 v64, v64, v123
.Ltmp13:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	v_exp_f32_e32 v67, v67
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v121, v121, v123
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v65, v65
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v64, v64
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v66, 0, v66, s19
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v141.l, v68.h
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v121, v121
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v144.l, v73.h
	v_cmp_o_f32_e64 s7, v69, v69
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s15
	v_cndmask_b32_e64 v67, 0, v67, s18
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v140.l, v66.h
	v_cmp_o_f32_e64 s6, v66, v66
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v64, 0, v64, s11
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v124, v72, v126 :: v_dual_add_f32 v77, v66, v67
.Ltmp15:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v142.l, v70.h
	v_mov_b16_e64 v143.l, v72.h
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v76, v64, v65
.Ltmp17:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v139.l, v64.h
	v_cmp_o_f32_e64 s5, v64, v64
	v_mov_b16_e64 v130.l, v75.h
	v_and_b32_e32 v131, 1, v141
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v76, v76, v77 :: v_dual_add_f32 v77, v73, v127
.Ltmp19:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v134, 1, v144
	v_cmp_o_f32_e64 s8, v68, v68
	v_cmp_o_f32_e64 s9, v71, v71
	v_cmp_o_f32_e64 s14, v73, v73
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v77, v124, v77
	v_add_f32_e32 v124, v75, v129
.Ltmp21:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v125.l, v74.h
	v_and_b32_e32 v132, 1, v142
	v_and_b32_e32 v133, 1, v143
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v79, v79, v124 :: v_dual_and_b32 v130, 1, v130
.Ltmp23:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v124, 1, v122
	v_mov_b16_e32 v122.l, v67.h
	v_add3_u32 v68, v68, v131, 0x7fff
	v_add3_u32 v73, v73, v134, 0x7fff
	v_cmp_o_f32_e64 s10, v70, v70
	v_add3_u32 v65, v65, v124, 0x7fff
	v_and_b32_e32 v124, 1, v139
	v_and_b32_e32 v135, 1, v122
	v_mov_b16_e32 v122.l, v69.h
	v_cmp_o_f32_e64 s12, v72, v72
	v_cndmask_b16 v65.h, 0x7fff, v65.h, s4
	v_add3_u32 v64, v64, v124, 0x7fff
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v124, 0, v121, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v67, v67
	v_and_b32_e32 v121, 1, v140
	v_cmp_o_f32_e64 s18, v75, v75
	v_cndmask_b16 v65.l, 0x7fff, v64.h, s5
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v2, v2, v124
	v_mul_f32_e32 v6, v6, v124
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v64, v67, v135, 0x7fff
	v_and_b32_e32 v67, 1, v122
	v_mov_b16_e32 v122.l, v71.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v12, v12, v124
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v66, v66, v121, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v124
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v67, v69, v67, 0x7fff
	v_and_b32_e32 v69, 1, v122
	v_mov_b16_e32 v122.l, v126.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v11, v11, v124
	v_mul_f32_e32 v14, v14, v124
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v64.l, 0x7fff, v66.h, s6
	v_cndmask_b16 v66.h, 0x7fff, v67.h, s7
	v_add3_u32 v67, v71, v69, 0x7fff
	v_and_b32_e32 v69, 1, v122
	v_mov_b16_e32 v122.l, v127.h
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v0, v0, v124 :: v_dual_and_b32 v125, 1, v125
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v70, v70, v132, 0x7fff
	v_add3_u32 v72, v72, v133, 0x7fff
	v_add3_u32 v75, v75, v130, 0x7fff
	v_cndmask_b16 v66.l, 0x7fff, v68.h, s8
	v_cndmask_b16 v130.l, 0x7fff, v73.h, s14
	v_permlanex16_b32 v73, v65, s39, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v64.h, 0x7fff, v64.h, s1
	v_cndmask_b16 v68.h, 0x7fff, v67.h, s9
	v_and_b32_e32 v67, 1, v122
	v_mov_b16_e64 v122.l, v128.h
	v_cmp_o_f32_e64 s16, v74, v74
	v_add3_u32 v74, v74, v125, 0x7fff
	v_cndmask_b16 v68.l, 0x7fff, v70.h, s10
	v_cndmask_b16 v70.l, 0x7fff, v72.h, s12
	v_cndmask_b16 v132.l, 0x7fff, v75.h, s18
	v_perm_b32 v72, v73, v65, v94
	v_permlanex16_b32 v75, v64, s39, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v73, v73, v65, v96
	v_permlanex16_b32 v65, v66, s39, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v71, 1, v122
	v_mov_b16_e64 v122.l, v129.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v23, v23, v124
	v_dual_mul_f32 v4, v4, v124 :: v_dual_add_f32 v125, v77, v79
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s11, v126, v126
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v121, v76, v78
.Ltmp25:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v131.l, 0x7fff, v74.h, s16
	v_perm_b32 v74, v75, v64, v94
	v_perm_b32 v75, v75, v64, v96
	v_add3_u32 v64, v126, v69, 0x7fff
	v_perm_b32 v76, v65, v66, v94
	v_permlanex16_b32 v69, v68, s39, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v77, v65, v66, v96
	v_and_b32_e32 v65, 1, v122
	v_cmp_o_f32_e64 s13, v127, v127
	v_cmp_o_f32_e64 s15, v128, v128
	v_cmp_o_f32_e64 s17, v129, v129
	v_cndmask_b16 v70.h, 0x7fff, v64.h, s11
	v_add3_u32 v64, v127, v67, 0x7fff
	v_perm_b32 v78, v69, v68, v94
	v_add3_u32 v67, v128, v71, 0x7fff
	v_perm_b32 v79, v69, v68, v96
	v_add3_u32 v68, v129, v65, 0x7fff
	v_permlanex16_b32 v66, v70, s39, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v130.h, 0x7fff, v64.h, s13
	v_cndmask_b16 v131.h, 0x7fff, v67.h, s15
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v24, v24, v124
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v132.h, 0x7fff, v68.h, s17
	v_perm_b32 v64, v66, v70, v94
	v_permlanex16_b32 v69, v130, s39, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v65, v66, v70, v96
	v_permlanex16_b32 v70, v131, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v71, v132, s39, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v124
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v66, v69, v130, v94
	v_perm_b32 v67, v69, v130, v96
	v_perm_b32 v68, v70, v131, v94
	v_perm_b32 v69, v70, v131, v96
	v_perm_b32 v70, v71, v132, v94
	v_perm_b32 v71, v71, v132, v96
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v124
	v_mul_f32_e32 v27, v27, v124
	v_mul_f32_e32 v28, v28, v124
	v_mul_f32_e32 v29, v29, v124
	v_mul_f32_e32 v30, v30, v124
	v_mul_f32_e32 v31, v31, v124
	v_mul_f32_e32 v16, v16, v124
	v_mul_f32_e32 v17, v17, v124
	v_mul_f32_e32 v18, v18, v124
	v_mul_f32_e32 v19, v19, v124
	v_mul_f32_e32 v20, v20, v124
	v_mul_f32_e32 v21, v21, v124
	v_mul_f32_e32 v22, v22, v124
	v_mul_f32_e32 v8, v8, v124
	v_mul_f32_e32 v10, v10, v124
	v_mul_f32_e32 v13, v13, v124
	v_mul_f32_e32 v15, v15, v124
	v_mul_f32_e32 v1, v1, v124
	v_mul_f32_e32 v3, v3, v124
	v_mul_f32_e32 v5, v5, v124
	v_mul_f32_e32 v7, v7, v124
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v122.l, v80.l
	v_mov_b16_e32 v80.l, v81.l
	v_mov_b16_e32 v81.l, v82.l
	v_mov_b16_e32 v82.l, v83.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v122.h, v84.l
	v_mov_b16_e32 v84.l, v80.h
	v_mov_b16_e32 v80.h, v85.l
	v_mov_b16_e32 v85.l, v81.h
	v_mov_b16_e32 v81.h, v86.l
	v_mov_b16_e32 v86.l, v82.h
	v_mov_b16_e32 v82.h, v87.l
	v_mov_b16_e32 v87.l, v83.h
	ds_store_2addr_b32 v120, v122, v84 offset1:16
	ds_store_2addr_b32 v109, v80, v85 offset1:16
	ds_store_2addr_b32 v110, v81, v86 offset1:16
	ds_store_2addr_b32 v111, v82, v87 offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[80:83], v119
	ds_load_b128 v[84:87], v112
	ds_load_b128 v[130:133], v116
	ds_load_b128 v[126:129], v115
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[80:87], v[72:79], v[24:31]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[84:87], v112 offset:2048
	ds_load_b128 v[80:83], v119 offset:2048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[126:133], v[72:79], v[16:23]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[126:129], v115 offset:2048
	ds_load_b128 v[130:133], v116 offset:2048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[80:87], v[72:79], v[8:15]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[84:87], v114
	ds_load_b128 v[80:83], v113
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[126:133], v[72:79], v[0:7]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[72:75], v119 offset:1024
	ds_load_b128 v[126:129], v119 offset:3072
	ds_load_b128 v[134:137], v113 offset:2048
	ds_load_b128 v[76:79], v117
	ds_load_b128 v[138:141], v114 offset:2048
	ds_load_b128 v[130:133], v117 offset:2048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[80:87], v[64:71], v[24:31]
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v80, v121, v125 :: v_dual_mov_b32 v121, v123
.Ltmp27:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[72:79], v[64:71], v[16:23]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[134:141], v[64:71], v[8:15]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[126:133], v[64:71], v[0:7]
.Ltmp28:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v81, v80, s39, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v82, v80, v81
.Ltmp30:
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v82, v118, v124
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
	v_mov_b32_e32 v82, v7
.LBB0_4:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_scale_f32 v36, null, v82, v82, v24
	v_div_scale_f32 v37, null, v82, v82, v25
	v_div_scale_f32 v41, null, v82, v82, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v38, v36
	v_rcp_f32_e32 v39, v37
	v_div_scale_f32 v43, null, v82, v82, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v44, v41
	v_div_scale_f32 v40, vcc_lo, v24, v82, v24
	v_rcp_f32_e32 v46, v43
	v_div_scale_f32 v42, s0, v25, v82, v25
	v_fma_f32 v33, -v36, v38, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v34, -v37, v39, 1.0
	v_div_scale_f32 v45, s1, v26, v82, v26
	v_fma_f32 v35, -v41, v44, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v38, v33, v38 :: v_dual_fmac_f32 v39, v34, v39
	v_fma_f32 v51, -v43, v46, 1.0
	v_div_scale_f32 v48, s4, v27, v82, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v47, v40, v38 :: v_dual_fmac_f32 v44, v35, v44
	v_dual_mul_f32 v49, v42, v39 :: v_dual_fmac_f32 v46, v51, v46
	v_div_scale_f32 v51, null, v82, v82, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v50, -v36, v47, v40
	v_fma_f32 v52, -v37, v49, v42
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v32, 1, v89
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s37, s37, 0xffff
	s_mov_b32 s39, 0x31027000
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v47, v50, v38 :: v_dual_mul_f32 v50, v45, v44
	v_fmac_f32_e32 v49, v52, v39
	v_div_scale_f32 v52, null, v82, v82, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v36, v47, v40
	v_div_scale_f32 v40, null, v82, v82, v28
	v_fma_f32 v37, -v37, v49, v42
	v_fma_f32 v42, -v41, v50, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v36, v36, v38, v47
	v_rcp_f32_e32 v38, v40
	s_mov_b32 vcc_lo, s0
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v82
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v50, v42, v44
	v_div_fixup_f32 v24, v36, v82, v24
	v_div_fmas_f32 v36, v37, v39, v49
	v_rcp_f32_e32 v37, v51
	s_mov_b32 vcc_lo, s1
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v35, 16, v32
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v42, -v40, v38, 1.0
	v_div_fixup_f32 v25, v36, v82, v25
	v_fma_f32 v36, -v41, v50, v45
	v_div_scale_f32 v45, s1, v29, v82, v29
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v34, 32, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v51, v37, 1.0
	v_fmac_f32_e32 v38, v42, v38
	v_div_scale_f32 v42, null, v82, v82, v30
	v_div_fmas_f32 v36, v36, v44, v50
	v_fmac_f32_e32 v37, v41, v37
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v42
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v26, v36, v82, v26
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v33, 48, v32
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v49, -v42, v41, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v26, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v49, v41
	v_mul_f32_e32 v47, v48, v46
	v_fma_f32 v39, -v43, v47, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v47, v39, v46
	v_div_scale_f32 v39, s5, v28, v82, v28
	v_fma_f32 v43, -v43, v47, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v44, v39, v38
	v_div_scale_f32 v48, null, v82, v82, v31
	v_div_fmas_f32 v43, v43, v46, v47
	v_mul_f32_e32 v47, v45, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v46, -v40, v44, v39
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v50, v48
	v_div_fixup_f32 v27, v43, v82, v27
	v_fma_f32 v36, -v51, v47, v45
	v_fmac_f32_e32 v44, v46, v38
	v_div_scale_f32 v46, null, v82, v82, v16
	v_div_scale_f32 v43, s4, v30, v82, v30
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
	v_div_fixup_f32 v28, v38, v82, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v46, v40, 1.0
	v_div_fmas_f32 v37, v39, v37, v47
	v_rcp_f32_e32 v39, v52
	v_div_scale_f32 v47, s1, v16, v82, v16
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v40, v51, v40
	v_mul_f32_e32 v36, v43, v41
	v_div_fixup_f32 v29, v37, v82, v29
	s_mov_b32 vcc_lo, s4
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
	v_div_scale_f32 v49, s6, v31, v82, v31
	v_div_scale_f32 v43, null, v82, v82, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v42, v39
	v_mul_f32_e32 v45, v49, v50
	v_div_fmas_f32 v36, v37, v41, v36
	v_fma_f32 v41, -v46, v38, v47
	v_rcp_f32_e32 v42, v43
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v44, -v48, v45, v49
	v_div_fixup_f32 v30, v36, v82, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v38, v41, v40 :: v_dual_fmac_f32 v45, v44, v50
	v_div_scale_f32 v44, s4, v17, v82, v17
	v_fma_f32 v36, -v46, v38, v47
	v_div_scale_f32 v46, s5, v18, v82, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v48, v45, v49
	v_div_scale_f32 v48, null, v82, v82, v19
	v_fma_f32 v49, -v43, v42, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v37, v50, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v41, v48
	v_dual_mul_f32 v45, v44, v39 :: v_dual_fmac_f32 v42, v49, v42
	v_div_scale_f32 v49, null, v82, v82, v20
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v31, v37, v82, v31
	v_fma_f32 v37, -v52, v45, v44
	v_div_fmas_f32 v36, v36, v40, v38
	v_rcp_f32_e32 v38, v49
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v47, -v48, v41, 1.0
	v_div_scale_f32 v40, s1, v19, v82, v19
	v_div_fixup_f32 v16, v36, v82, v16
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v47, v41
	v_fmac_f32_e32 v45, v37, v39
	v_div_scale_f32 v47, null, v82, v82, v21
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
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v17, v36, v82, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v47, v51, 1.0
	v_fmac_f32_e32 v50, v39, v41
	v_fma_f32 v44, -v43, v37, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v51, v45, v51
	v_div_scale_f32 v45, null, v82, v82, v22
	v_fmac_f32_e32 v37, v44, v42
	v_div_scale_f32 v44, s4, v20, v82, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v43, v37, v46
	v_div_scale_f32 v43, s6, v21, v82, v21
	v_mul_f32_e32 v46, v43, v51
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v36, v36, v42, v37
	v_rcp_f32_e32 v42, v45
	v_fma_f32 v37, -v48, v50, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v48, null, v82, v82, v23
	v_div_fixup_f32 v18, v36, v82, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v37, v37, v41, v50
	v_fma_f32 v41, -v47, v46, v43
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v50, -v45, v42, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v19, v37, v82, v19
	v_div_scale_f32 v37, s1, v22, v82, v22
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
	v_div_scale_f32 v49, null, v82, v82, v9
	v_div_scale_f32 v41, null, v82, v82, v8
	v_div_fmas_f32 v36, v36, v38, v39
	v_fma_f32 v38, -v47, v46, v43
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v43, s4, v23, v82, v23
	v_rcp_f32_e32 v44, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v38, v38, v51, v46
	v_mul_f32_e32 v39, v37, v42
	v_div_fixup_f32 v20, v36, v82, v20
	v_div_scale_f32 v51, null, v82, v82, v11
	v_div_fixup_f32 v21, v38, v82, v21
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
	v_div_scale_f32 v36, s5, v8, v82, v8
	v_fmac_f32_e32 v39, v46, v42
	v_fma_f32 v46, -v41, v44, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v45, v39, v37
	v_div_scale_f32 v45, null, v82, v82, v10
	v_fmac_f32_e32 v44, v46, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v37, v37, v42, v39
	v_rcp_f32_e32 v46, v45
	v_fma_f32 v39, -v48, v47, v43
	v_div_scale_f32 v43, s1, v9, v82, v9
	s_mov_b32 vcc_lo, s4
	v_mul_f32_e32 v42, v36, v44
	v_div_fixup_f32 v22, v37, v82, v22
	v_mul_f32_e32 v52, v43, v38
	v_div_fmas_f32 v39, v39, v40, v47
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v48, -v45, v46, 1.0
	v_fma_f32 v50, -v41, v42, v36
	v_fma_f32 v40, -v49, v52, v43
	v_div_fixup_f32 v23, v39, v82, v23
	v_fma_f32 v39, -v51, v53, 1.0
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v48, s6, v10, v82, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v52, v40, v38 :: v_dual_fmac_f32 v53, v39, v53
	v_dual_fmac_f32 v42, v50, v44 :: v_dual_mul_f32 v47, v48, v46
	v_div_scale_f32 v40, null, v82, v82, v12
	v_div_scale_f32 v39, s4, v11, v82, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v45, v47, v48
	v_fma_f32 v36, -v41, v42, v36
	v_fma_f32 v41, -v49, v52, v43
	v_div_scale_f32 v43, null, v82, v82, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v47, v37, v46
	v_rcp_f32_e32 v37, v40
	v_div_fmas_f32 v36, v36, v44, v42
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v42, v39, v53
	v_div_fmas_f32 v38, v41, v38, v52
	v_fma_f32 v41, -v45, v47, v48
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v8, v36, v82, v8
	v_rcp_f32_e32 v45, v43
	v_div_fixup_f32 v9, v38, v82, v9
	v_fma_f32 v44, -v40, v37, 1.0
	v_div_fmas_f32 v41, v41, v46, v47
	v_fma_f32 v46, -v51, v42, v39
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v44, v37
	v_div_scale_f32 v44, s1, v12, v82, v12
	v_div_fixup_f32 v10, v41, v82, v10
	v_div_scale_f32 v41, null, v82, v82, v14
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
	v_div_scale_f32 v38, s5, v13, v82, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v51, v42, v39
	v_fmac_f32_e32 v36, v46, v37
	v_div_scale_f32 v46, null, v82, v82, v15
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
	v_div_fixup_f32 v11, v39, v82, v11
	v_fma_f32 v39, -v40, v36, v44
	v_fma_f32 v44, -v41, v47, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v39, v37, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v44, v47
	v_div_scale_f32 v44, null, v82, v82, v1
	v_div_scale_f32 v37, null, v82, v82, v0
	v_div_fixup_f32 v12, v36, v82, v12
	v_fma_f32 v36, -v46, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v50, v44
	v_div_scale_f32 v39, s1, v14, v82, v14
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v48, v36, v48
	v_div_scale_f32 v36, s4, v15, v82, v15
	v_mul_f32_e32 v42, v38, v45
	v_div_scale_f32 v51, s5, v0, v82, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v44, v50, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v43, v42, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v50, v52, v50
	v_div_scale_f32 v52, s6, v1, v82, v1
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
	v_div_fixup_f32 v13, v38, v82, v13
	v_fmac_f32_e32 v40, v49, v40
	v_div_scale_f32 v49, null, v82, v82, v2
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
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v36, -v46, v45, v36
	v_div_scale_f32 v43, null, v82, v82, v3
	v_fmac_f32_e32 v53, v42, v53
	v_fma_f32 v39, -v37, v54, v51
	v_div_scale_f32 v42, s1, v2, v82, v2
	v_div_fmas_f32 v36, v36, v48, v45
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v54, v39, v40
	v_fma_f32 v39, -v44, v41, v52
	v_rcp_f32_e32 v45, v43
	v_div_fixup_f32 v15, v36, v82, v15
	v_div_fixup_f32 v14, v38, v82, v14
	v_div_scale_f32 v47, null, v82, v82, v7
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
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v44, -v49, v39, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v0, v37, v82, v0
	v_div_fmas_f32 v40, v40, v50, v41
	v_div_scale_f32 v37, null, v82, v82, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v44, v53
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v1, v40, v82, v1
	v_div_scale_f32 v40, null, v82, v82, v6
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
	v_div_scale_f32 v51, s5, v6, v82, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v36, v53, v39
	v_rcp_f32_e32 v39, v37
	v_div_scale_f32 v41, vcc_lo, v3, v82, v3
	v_mul_f32_e32 v55, v51, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v2, v36, v82, v2
	v_fma_f32 v53, -v47, v49, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v37, v39, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v49, v53, v49
	v_div_scale_f32 v53, s6, v7, v82, v7
	v_fmac_f32_e32 v39, v36, v39
	v_div_scale_f32 v36, s1, v4, v82, v4
	v_fmac_f32_e32 v45, v38, v45
	v_div_scale_f32 v38, null, v82, v82, v5
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
	v_div_scale_f32 v48, s4, v5, v82, v5
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
	v_div_fixup_f32 v3, v41, v82, v3
	v_div_fmas_f32 v36, v36, v39, v52
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v56, v37, v49
	v_fmac_f32_e32 v54, v43, v42
	v_fma_f32 v37, -v40, v55, v51
	v_div_fixup_f32 v4, v36, v82, v4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v47, v56, v53
	v_fma_f32 v38, -v38, v54, v48
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_or_b32_e32 v36, s33, v88
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s23, v32
	v_cmp_gt_i32_e64 s1, s23, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v42, v54
	s_mov_b32 vcc_lo, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s5, v24, v24
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v37, v44, v55
	s_mov_b32 vcc_lo, s6
	v_div_fixup_f32 v5, v38, v82, v5
	v_div_fmas_f32 v39, v39, v49, v56
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v38, v25, 16, 1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v37, v82, v6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v37, v24, 16, 1
	v_cmp_o_f32_e64 s6, v25, v25
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v39, v82, v7
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
	v_cndmask_b16 v24.l, 0x7fff, v37.h, s5
	v_bfe_u32 v37, v28, 16, 1
	v_cmp_o_f32_e64 s5, v27, v27
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s6
	v_add3_u32 v26, v27, v26, 0x7fff
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
	v_add3_u32 v29, v31, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v31, v31
	v_add3_u32 v28, v16, v28, 0x7fff
	v_cmp_o_f32_e64 s7, v16, v16
	v_cndmask_b16 v16.l, 0x7fff, v26.h, s5
	v_bfe_u32 v26, v17, 16, 1
	v_cndmask_b16 v16.h, 0x7fff, v29.h, s6
	v_bfe_u32 v29, v18, 16, 1
	v_bfe_u32 v30, v19, 16, 1
	v_cmp_o_f32_e64 s5, v17, v17
	v_add3_u32 v26, v17, v26, 0x7fff
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s7
	v_add3_u32 v17, v18, v29, 0x7fff
	v_cmp_o_f32_e64 s6, v18, v18
	v_add3_u32 v18, v19, v30, 0x7fff
	v_cmp_o_f32_e64 s7, v19, v19
	v_cndmask_b16 v28.h, 0x7fff, v26.h, s5
	v_bfe_u32 v19, v20, 16, 1
	v_bfe_u32 v26, v21, 16, 1
	v_cndmask_b16 v17.l, 0x7fff, v17.h, s6
	v_cmp_o_f32_e64 s5, v20, v20
	v_cmp_o_f32_e64 s6, v21, v21
	v_add3_u32 v19, v20, v19, 0x7fff
	v_add3_u32 v20, v21, v26, 0x7fff
	v_cndmask_b16 v17.h, 0x7fff, v18.h, s7
	v_bfe_u32 v18, v22, 16, 1
	v_bfe_u32 v21, v23, 16, 1
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s5
	v_cndmask_b16 v19.h, 0x7fff, v20.h, s6
	v_bfe_u32 v20, v8, 16, 1
	v_add3_u32 v18, v22, v18, 0x7fff
	v_cmp_o_f32_e64 s7, v22, v22
	v_bfe_u32 v22, v9, 16, 1
	v_add3_u32 v21, v23, v21, 0x7fff
	v_cmp_o_f32_e64 s5, v23, v23
	v_add3_u32 v20, v8, v20, 0x7fff
	v_cmp_o_f32_e64 s6, v8, v8
	v_add3_u32 v8, v9, v22, 0x7fff
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s7
	v_cmp_o_f32_e64 s7, v9, v9
	v_cndmask_b16 v18.h, 0x7fff, v21.h, s5
	v_bfe_u32 v9, v10, 16, 1
	v_cndmask_b16 v8.l, 0x7fff, v20.h, s6
	v_bfe_u32 v20, v11, 16, 1
	v_bfe_u32 v21, v12, 16, 1
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s7
	v_add3_u32 v9, v10, v9, 0x7fff
	v_cmp_o_f32_e64 s5, v10, v10
	v_add3_u32 v10, v11, v20, 0x7fff
	v_cmp_o_f32_e64 s6, v11, v11
	v_add3_u32 v11, v12, v21, 0x7fff
	v_cmp_o_f32_e64 s7, v12, v12
	v_bfe_u32 v12, v13, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s5
	v_cndmask_b16 v9.h, 0x7fff, v10.h, s6
	v_bfe_u32 v10, v14, 16, 1
	v_bfe_u32 v20, v15, 16, 1
	v_add3_u32 v12, v13, v12, 0x7fff
	v_cmp_o_f32_e64 s5, v13, v13
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s7
	v_add3_u32 v10, v14, v10, 0x7fff
	v_cmp_o_f32_e64 s6, v14, v14
	v_add3_u32 v13, v15, v20, 0x7fff
	v_cmp_o_f32_e64 s7, v15, v15
	v_cndmask_b16 v11.h, 0x7fff, v12.h, s5
	v_bfe_u32 v12, v0, 16, 1
	v_bfe_u32 v14, v1, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s6
	v_cndmask_b16 v10.h, 0x7fff, v13.h, s7
	v_bfe_u32 v13, v2, 16, 1
	v_add3_u32 v12, v0, v12, 0x7fff
	v_cmp_o_f32_e64 s5, v0, v0
	v_add3_u32 v0, v1, v14, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v1, v1
	v_add3_u32 v1, v2, v13, 0x7fff
	v_cmp_o_f32_e64 s7, v2, v2
	v_bfe_u32 v2, v3, 16, 1
	v_cndmask_b16 v0.l, 0x7fff, v12.h, s5
	v_bfe_u32 v12, v4, 16, 1
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s6
	v_cmp_o_f32_e64 s5, v3, v3
	v_add3_u32 v2, v3, v2, 0x7fff
	v_bfe_u32 v3, v5, 16, 1
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
	v_cndmask_b32_e64 v6, v16, v25, s3
	v_cndmask_b32_e64 v7, v25, v16, s3
	v_mov_b32_e32 v15, 0x5410
	v_mov_b32_e32 v16, 0x7632
	v_cndmask_b32_e64 v14, v18, v17, s3
	v_cndmask_b32_e64 v17, v17, v18, s3
	v_cndmask_b32_e64 v18, v11, v8, s3
	v_cndmask_b32_e64 v8, v8, v11, s3
	v_cndmask_b32_e64 v11, 0x1054, v15, s3
	v_cndmask_b32_e64 v15, 0x3276, v16, s3
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s5
	v_cndmask_b16 v2.l, 0x7fff, v12.h, s6
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s7
	v_cndmask_b32_e64 v16, v10, v9, s3
	v_cndmask_b32_e64 v9, v9, v10, s3
	v_lshl_or_b32 v10, v11, 8, v11
	v_lshl_or_b32 v11, v15, 8, v15
	v_cndmask_b16 v3.l, 0x7fff, v5.h, s8
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s9
	v_cndmask_b32_e64 v5, v24, v27, s3
	v_cndmask_b32_e64 v12, v19, v28, s3
	v_cndmask_b32_e64 v13, v28, v19, s3
	v_cndmask_b32_e64 v19, v2, v0, s3
	v_cndmask_b32_e64 v0, v0, v2, s3
	v_and_b32_e32 v2, 0x540054, v10
	v_and_b32_e32 v10, 0x760076, v11
	s_mov_b32 s5, 0x76543210
	v_cndmask_b32_e64 v15, v3, v1, s3
	v_cndmask_b32_e64 v1, v1, v3, s3
	v_permlanex16_b32 v3, v5, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v7, s5, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v2, v2, 4, v2
	v_lshl_or_b32 v7, v10, 4, v10
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v36, s23, v36
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v4, v27, v24, s3
	v_permlanex16_b32 v10, v13, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v17, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v8, s5, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v17, 0x5040504, v2
	v_and_b32_e32 v20, 0x7060706, v7
	v_permlanex16_b32 v21, v9, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v22, v0, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v23, v1, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s23, v35
	v_cmp_gt_i32_e64 s0, s23, v34
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
	buffer_store_b128 v[0:3], v16, s[36:39], 0 offen
	buffer_store_b128 v[4:7], v17, s[36:39], 0 offen
	buffer_store_b128 v[8:11], v18, s[36:39], 0 offen
	buffer_store_b128 v[12:15], v19, s[36:39], 0 offen
	.loc	1 691 5 is_stmt 1               ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp31:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 145
		.amdhsa_next_free_sgpr 49
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.num_vgpr, 145
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.numbered_sgpr, 49
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9232
; TotalNumSgprs: 51
; NumVgprs: 145
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 51
; NumVGPRsForWavesPerEU: 145
; Occupancy: 9
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
	.quad	.Ltmp9-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     51
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     145
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
