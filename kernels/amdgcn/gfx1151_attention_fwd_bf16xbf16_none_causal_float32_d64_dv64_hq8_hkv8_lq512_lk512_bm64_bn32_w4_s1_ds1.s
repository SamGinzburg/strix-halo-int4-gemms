	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x5c
	s_load_b64 s[36:37], s[0:1], 0x0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 3, v0
	.loc	1 787 79                        ; attention.py:787:79
	v_and_b32_e32 v2, 7, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s4, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s3, s3, 9
	s_mov_b32 s39, 0x31027000
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v3, s4, v1
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v4, 3, v2
	.loc	1 787 26 is_stmt 0              ; attention.py:787:26
	s_add_i32 s30, s4, s3
	s_mov_b32 s38, 0x7ffffffe
	s_clause 0x1
	s_load_b32 s8, s[0:1], 0x84
	s_load_b64 s[28:29], s[0:1], 0x38
	.loc	1 790 23 is_stmt 1              ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x200, v3
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v81, v0, 4, 1
	s_mov_b32 s20, 0
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v5, s18, v1
	s_mul_i32 s5, s18, s30
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s18, v4
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s6, s18, 4
	s_mul_i32 s7, s18, 48
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s37, s37, 0xffff
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s2, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 787 26                        ; attention.py:787:26
	v_add3_u32 v3, v5, v4, s5
	s_lshl_b32 s5, s18, 5
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v5, 1, v3
	v_add_lshl_u32 v6, v3, s6, 1
	v_add_lshl_u32 v7, v3, s5, 1
	v_add_lshl_u32 v3, v3, s7, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	v_cndmask_b32_e64 v6, 0x80000000, v6, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v7, 0x80000000, v7, s2
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	s_clause 0x3
	buffer_load_b128 v[8:11], v5, s[36:39], 0 offen
	buffer_load_b128 v[12:15], v6, s[36:39], 0 offen
	buffer_load_b128 v[16:19], v7, s[36:39], 0 offen
	buffer_load_b128 v[20:23], v3, s[36:39], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v5, 0x60, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v6, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v7, 15, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v3, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v24, 1, v5
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v6, 0x70, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v82, v24, v7
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v24, v3, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v6, s4, v82
	.loc	1 810 48                        ; attention.py:810:48
	s_add_i32 s4, s4, s8
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v83, 0, v24
	.loc	1 810 48                        ; attention.py:810:48
	s_add_i32 s4, s4, 64
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v83, v[8:11]
	s_waitcnt vmcnt(2)
	ds_store_b128 v83, v[12:15] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v83, v[16:19] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v83, v[20:23] offset:6144
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x200, v6
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s4, 1
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v7, 7, v7
	v_lshlrev_b32_e32 v5, 6, v5
	v_dual_mov_b32 v111, 0xff800000 :: v_dual_lshlrev_b32 v8, 4, v2
	.loc	1 810 25                        ; attention.py:810:25
	s_min_i32 s4, s4, 0x200
	s_load_b32 s9, s[0:1], 0x64
	.loc	1 811 35                        ; attention.py:811:35
	s_add_i32 s10, s4, 31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 788 26                        ; attention.py:788:26
	v_or3_b32 v5, v7, v5, v8
	s_load_b128 s[4:7], s[0:1], 0x8
	.loc	1 811 34                        ; attention.py:811:34
	s_ashr_i32 s0, s10, 31
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v84, s8, v6
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v6, 0x70, v5, 0
	v_xad_u32 v10, 0x60, v5, 0
	.loc	1 811 34                        ; attention.py:811:34
	s_lshr_b32 s0, s0, 27
	.loc	1 788 26                        ; attention.py:788:26
	ds_load_b128 v[37:40], v6
	ds_load_b128 v[33:36], v10
	.loc	1 811 34                        ; attention.py:811:34
	s_add_i32 s31, s10, s0
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s19, v4
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v4, 0x50, v5, 0
	v_xad_u32 v6, v5, 64, 0
	v_xad_u32 v10, v5, 48, 0
	v_xad_u32 v11, v5, 32, 0
	v_xad_u32 v12, v5, 16, 0
	v_dual_mov_b32 v28, v25 :: v_dual_add_nc_u32 v5, 0, v5
	ds_load_b128 v[45:48], v4
	ds_load_b128 v[41:44], v6
	ds_load_b128 v[53:56], v10
	ds_load_b128 v[49:52], v11
	ds_load_b128 v[61:64], v12
	ds_load_b128 v[57:60], v5
	v_dual_mov_b32 v27, v25 :: v_dual_and_b32 v4, 16, v0
	v_dual_mov_b32 v26, v25 :: v_dual_and_b32 v9, 0x78, v0
	v_mov_b32_e32 v6, 0x5410
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_eq_u32_e64 s1, 0, v4
	v_dual_mov_b32 v31, v25 :: v_dual_lshlrev_b32 v16, 3, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v5, 2, v9
	v_dual_mov_b32 v30, v25 :: v_dual_and_b32 v3, 48, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v6, 0x1054, v6, s1
	v_lshrrev_b32_e32 v9, 1, v9
	v_bfe_i32 v17, v0, 3, 1
	v_and_b32_e32 v16, 48, v16
	v_mov_b32_e32 v4, 0x7632
	v_lshl_or_b32 v6, v6, 8, v6
	v_xor_b32_e32 v3, v3, v9
	v_dual_mov_b32 v32, v25 :: v_dual_and_b32 v9, 0x210, v17
	v_lshl_or_b32 v16, v2, 6, v16
	v_cndmask_b32_e64 v4, 0x3276, v4, s1
	v_dual_mov_b32 v29, v25 :: v_dual_and_b32 v6, 0x540054, v6
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v5, s3, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v89, v16, v9
	v_lshl_or_b32 v4, v4, 8, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v6, v6, 4, v6
	v_add_nc_u32_e32 v1, s3, v1
	v_lshl_or_b32 v87, v2, 9, v3
	v_xor_b32_e32 v20, 0x430, v89
	v_and_b32_e32 v4, 0x760076, v4
	v_xor_b32_e32 v17, 48, v89
	v_and_b32_e32 v86, 0x5040504, v6
	v_mul_lo_u32 v2, s19, v5
	v_xor_b32_e32 v9, 16, v89
	v_add_nc_u32_e32 v108, 0, v20
	v_mov_b32_e32 v20, v25
	v_add_nc_u32_e32 v6, 16, v1
	v_or_b32_e32 v85, v8, v7
	v_add_nc_u32_e32 v106, 0, v17
	v_mov_b32_e32 v17, v25
	v_lshl_or_b32 v4, v4, 4, v4
	v_mul_lo_u32 v1, s18, v1
	v_add_nc_u32_e32 v104, 0, v9
	v_mov_b32_e32 v9, v25
	v_mul_lo_u32 v6, s18, v6
	v_xor_b32_e32 v7, 16, v85
	v_xor_b32_e32 v10, 32, v85
	v_xor_b32_e32 v11, 48, v85
	v_xor_b32_e32 v12, 64, v85
	v_xor_b32_e32 v13, 0x50, v85
	v_xor_b32_e32 v14, 0x60, v85
	v_xor_b32_e32 v15, 0x70, v85
	v_dual_mov_b32 v23, v25 :: v_dual_and_b32 v88, 0x7060706, v4
	v_xor_b32_e32 v3, 0x90, v87
	v_xor_b32_e32 v4, 0x120, v87
	v_xor_b32_e32 v5, 0x1b0, v87
	v_xor_b32_e32 v16, 32, v89
	v_add_nc_u32_e32 v18, s19, v2
	v_xor_b32_e32 v19, 0x420, v89
	v_xor_b32_e32 v21, 0x410, v89
	v_lshl_add_u32 v91, v2, 1, v8
	v_lshl_add_u32 v92, v6, 1, v8
	v_lshl_add_u32 v93, v1, 1, v8
	v_add_nc_u32_e32 v94, 0, v7
	v_dual_mov_b32 v22, v25 :: v_dual_add_nc_u32 v95, 0, v10
	v_add_nc_u32_e32 v96, 0, v11
	v_dual_mov_b32 v24, v25 :: v_dual_add_nc_u32 v97, 0, v12
	v_dual_mov_b32 v1, v25 :: v_dual_add_nc_u32 v98, 0, v13
	v_dual_mov_b32 v10, v25 :: v_dual_add_nc_u32 v99, 0, v14
	v_add_nc_u32_e32 v100, 0, v15
	v_dual_mov_b32 v12, v25 :: v_dual_add_nc_u32 v101, 0, v3
	v_add_nc_u32_e32 v102, 0, v4
	v_dual_mov_b32 v14, v25 :: v_dual_add_nc_u32 v103, 0, v5
	v_add_nc_u32_e32 v105, 0, v16
	v_dual_mov_b32 v16, v25 :: v_dual_add_nc_u32 v107, 0, v19
	v_dual_mov_b32 v2, v25 :: v_dual_add_nc_u32 v109, 0, v21
	v_mov_b32_e32 v4, v25
	v_mov_b32_e32 v19, v25
	v_mov_b32_e32 v21, v25
	v_mov_b32_e32 v11, v25
	v_lshl_add_u32 v90, v18, 1, v8
	v_mov_b32_e32 v18, v25
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v15, v25
	v_mov_b32_e32 v3, v25
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v6, v25
	v_mov_b32_e32 v7, v25
	v_mov_b32_e32 v8, v25
	v_mov_b32_e32 v110, v25
	.loc	1 860 31                        ; attention.py:860:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s33, s9, 0x3fb8aa3b
	s_and_b32 s5, s5, 0xffff
	.loc	1 811 33                        ; attention.py:811:33
	s_and_not1_b32 s31, s31, 31
	s_and_b32 s41, s7, 0xffff
	.loc	1 818 13                        ; attention.py:818:13
	s_lshl_b32 s34, s19, 6
	s_lshl_b32 s35, s18, 6
	s_mov_b32 s36, s4
	s_mov_b32 s37, s5
	s_mov_b32 s21, s20
	s_mov_b32 s22, s20
	s_mov_b32 s23, s20
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	s_mov_b32 s26, s20
	s_mov_b32 s27, s20
	s_mov_b32 s40, s6
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b32 s44, 0x76543210
	s_mov_b32 s45, s20
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 854 32                        ; attention.py:854:32
	v_dual_cndmask_b32 v65, 0x80000000, v93 :: v_dual_cndmask_b32 v66, 0x80000000, v92
	v_dual_mov_b32 v112, v110 :: v_dual_add_nc_u32 v119, s45, v81
	v_add_nc_u32_e32 v114, 0, v85
	s_clause 0x1
	buffer_load_b128 v[73:76], v65, s[36:39], 0 offen
	buffer_load_b128 v[77:80], v66, s[36:39], 0 offen
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v72, s27 :: v_dual_mov_b32 v69, s24
	.loc	1 853 32                        ; attention.py:853:32
	v_add_nc_u32_e32 v110, 30, v119
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v120, 28, v119
	v_add_nc_u32_e32 v121, 26, v119
	v_add_nc_u32_e32 v122, 24, v119
	v_add_nc_u32_e32 v123, 22, v119
	v_add_nc_u32_e32 v124, 20, v119
	v_add_nc_u32_e32 v125, 18, v119
	v_add_nc_u32_e32 v126, 16, v119
	v_add_nc_u32_e32 v127, 14, v119
	v_add_nc_u32_e32 v128, 12, v119
	v_add_nc_u32_e32 v129, 10, v119
	v_add_nc_u32_e32 v130, 8, v119
	v_add_nc_u32_e32 v131, 6, v119
	v_add_nc_u32_e32 v132, 4, v119
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s3, v119, v84
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v119, 2, v119
	.loc	1 859 30                        ; attention.py:859:30
	v_mov_b32_e32 v71, s26
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s5, v120, v84
	v_cmp_le_i32_e64 s6, v121, v84
	v_cmp_le_i32_e64 s7, v122, v84
	v_cmp_le_i32_e64 s8, v123, v84
	v_cmp_le_i32_e64 s9, v124, v84
	v_cmp_le_i32_e64 s10, v125, v84
	v_cmp_le_i32_e64 s11, v126, v84
	v_cmp_le_i32_e64 s18, v119, v84
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v70, s25 :: v_dual_mov_b32 v67, s22
	v_dual_mov_b32 v68, s23 :: v_dual_mov_b32 v65, s20
	v_dual_mov_b32 v66, s21 :: v_dual_add_nc_u32 v113, 0, v87
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s12, v127, v84
	v_cmp_le_i32_e64 s13, v128, v84
	v_cmp_le_i32_e64 s14, v129, v84
	v_cmp_le_i32_e64 s15, v130, v84
	v_cmp_le_i32_e64 s16, v131, v84
	v_cmp_le_i32_e64 s17, v132, v84
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v118, 0x80000000, v91, s0
	v_cndmask_b32_e64 v117, 0x80000000, v90, s0
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s3, s2, s3
	s_and_b32 s18, s2, s18
	s_and_b32 s6, s2, s6
	s_and_b32 s7, s2, s7
	s_and_b32 s8, s2, s8
	s_and_b32 s9, s2, s9
	s_and_b32 s10, s2, s10
	s_and_b32 s5, s2, s5
	s_and_b32 s14, s2, s14
	s_and_b32 s16, s2, s16
	s_and_b32 s15, s2, s15
	s_and_b32 s17, s2, s17
	s_and_b32 s12, s2, s12
	s_and_b32 s13, s2, s13
	s_and_b32 s11, s2, s11
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v116.h, 0
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v111
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v93, s35, v93
	s_add_i32 s45, s45, 32
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(1)
	ds_store_b128 v83, v[73:76]
	s_waitcnt vmcnt(0)
	ds_store_b128 v83, v[77:80] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[77:80], v94
	ds_load_b128 v[73:76], v114
	ds_load_b128 v[119:122], v114 offset:2048
	ds_load_b128 v[123:126], v94 offset:2048
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v135.h, v116.h
	v_mov_b16_e64 v136.h, v116.h
	v_mov_b16_e64 v139.h, v116.h
	v_mov_b16_e64 v138.h, v116.h
	v_mov_b16_e64 v137.h, v116.h
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v91, s34, v91
	v_add_nc_u32_e32 v92, s35, v92
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[127:134], v[73:80], v[57:64], v[65:72]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[119:126], v[57:64], v[65:72]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[69:72], v96
	ds_load_b128 v[65:68], v95
	ds_load_b128 v[119:122], v99 offset:2048
	ds_load_b128 v[123:126], v100 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[127:134], v[65:72], v[49:56], v[127:134]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[65:68], v95 offset:2048
	ds_load_b128 v[69:72], v96 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[65:72], v[49:56], v[73:80]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[69:72], v98
	ds_load_b128 v[65:68], v97
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[127:134], v[65:72], v[41:48], v[127:134]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[65:68], v97 offset:2048
	ds_load_b128 v[69:72], v98 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[65:72], v[41:48], v[73:80]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[69:72], v100
	ds_load_b128 v[65:68], v99
	.loc	1 859 30                        ; attention.py:859:30
	v_wmma_f32_16x16x16_bf16 v[73:80], v[119:126], v[33:40], v[73:80]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v74, s33, v74
	v_dual_mul_f32 v76, s33, v76 :: v_dual_mul_f32 v77, s33, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v78, s33, v78 :: v_dual_mul_f32 v73, s33, v73
	v_mul_f32_e32 v80, s33, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v76, 0xff800000, v76, s8
	v_cndmask_b32_e64 v77, 0xff800000, v77, s7
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v78, 0xff800000, v78, s6
	v_cndmask_b32_e64 v74, 0xff800000, v74, s10
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[127:134], v[65:72], v[33:40], v[127:134]
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[65:68], v118, s[40:43], 0 offen
	buffer_load_b128 v[69:72], v117, s[40:43], 0 offen
	v_add_nc_u32_e32 v115, 0, v89
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v119, s33, v129 :: v_dual_add_nc_u32 v90, s34, v90
	v_mul_f32_e32 v114, s33, v127
	v_mul_f32_e32 v118, s33, v128
	v_dual_mul_f32 v120, s33, v130 :: v_dual_mul_f32 v121, s33, v131
	v_mul_f32_e32 v122, s33, v132
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v114, 0xff800000, v114, s3
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v79, s33, v79
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v118, 0xff800000, v118, s18
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v75, s33, v75
	v_mul_f32_e32 v123, s33, v133
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s4, v110, v84
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v124, s33, v134
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v79, 0xff800000, v79, s5
	v_cndmask_b32_e64 v75, 0xff800000, v75, s9
	v_cndmask_b32_e64 v117, 0xff800000, v121, s15
	v_cndmask_b32_e64 v121, 0xff800000, v122, s14
	v_cndmask_b32_e64 v120, 0xff800000, v120, s16
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s4, s2, s4
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v119, 0xff800000, v119, s17
	v_cndmask_b32_e64 v80, 0xff800000, v80, s4
	v_cndmask_b32_e64 v122, 0xff800000, v73, s11
	v_cndmask_b32_e64 v123, 0xff800000, v123, s13
	v_cndmask_b32_e64 v124, 0xff800000, v124, s12
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v73, v77, v78, v79
	v_max3_f32 v125, v74, v75, v76
	v_max3_f32 v126, v120, v117, v121
	v_max_f32_e32 v127, v114, v118
	v_max3_f32 v128, v123, v124, v122
.Ltmp2:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v110.h, v116.h
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v73, v125, v73, v80
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v125, v127, v119, v126
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s45, s31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v73, v125, v128, v73
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v125, v73, s44, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v73, v111, v73, v125
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v118, v118, v73
	v_sub_f32_e32 v114, v114, v73
	v_sub_f32_e32 v119, v119, v73
	v_sub_f32_e32 v117, v117, v73
	v_sub_f32_e32 v121, v121, v73
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v118, v118
	v_exp_f32_e32 v114, v114
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v123, v123, v73
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v119, v119
	v_exp_f32_e32 v117, v117
	v_exp_f32_e32 v121, v121
	.loc	1 885 74 is_stmt 1              ; attention.py:885:74
	v_sub_f32_e32 v111, v111, v73
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v123, v123
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v118, 0, v118, s18
	v_cndmask_b32_e64 v114, 0, v114, s3
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v120, v120, v73
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v119, 0, v119, s17
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v117, 0, v117, s15
	v_cndmask_b32_e64 v121, 0, v121, s14
.Ltmp10:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v125, v114, v118
.Ltmp11:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v120, v120
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v123, 0, v123, s13
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v135.l, v114.h
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v127, v117, v121
.Ltmp13:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v74, v74, v73
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v111, v111
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v116.l, v118.h
	v_and_b32_e32 v130, 1, v135
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v78, v78, v73
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v74, v74
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v120, 0, v120, s16
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v77, v77, v73
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v136.l, v119.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v80, v80, v73
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v78, v78
.Ltmp14:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v126, v119, v120
.Ltmp15:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v122, v122, v73
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v77, v77
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v141, 0, v111, s1
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v74, 0, v74, s10
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v125, v125, v126
.Ltmp17:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v122, v122
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v111, 1, v136
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v80, v80
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v78, 0, v78, s6
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v110.l, v117.h
	v_cmp_o_f32_e64 s3, v118, v118
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v77, 0, v77, s7
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v75, v75, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v27, v27, v141 :: v_dual_and_b32 v110, 1, v110
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v122, 0, v122, s11
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v124, v124, v73
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v80, 0, v80, s4
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v117, v117
	v_add3_u32 v111, v119, v111, 0x7fff
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v129, v122, v74
.Ltmp19:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v79, v79, v73
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v124, v124
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v138.l, v122.h
	v_add3_u32 v110, v117, v110, 0x7fff
	v_cmp_o_f32_e64 s15, v77, v77
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v79, v79
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v114, v114
	v_add3_u32 v114, v114, v130, 0x7fff
	v_mov_b16_e64 v130.h, v116.h
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v29, v29, v141 :: v_dual_and_b32 v132, 1, v138
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v124, 0, v124, s12
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v141
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v120, v120
	v_cmp_o_f32_e64 s6, v121, v121
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v79, 0, v79, s5
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v76, v76, v73
.Ltmp20:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v128, v123, v124
.Ltmp21:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s5, v119, v119
	v_cmp_o_f32_e64 s11, v122, v122
	v_mov_b16_e64 v130.l, v79.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v76, v76
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v127, v127, v128 :: v_dual_add_f32 v128, v77, v78
.Ltmp23:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v75, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v31, v31, v141 :: v_dual_and_b32 v130, 1, v130
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v122, v122, v132, 0x7fff
	v_cmp_o_f32_e64 s17, v79, v79
	v_cmp_o_f32_e64 s10, v74, v74
	v_cmp_o_f32_e64 s14, v78, v78
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v76, 0, v76, s8
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s8, v124, v124
	v_cndmask_b16 v111.l, 0x7fff, v122.h, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v75, 0, v75, s9
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v137.l, v123.h
	v_cmp_o_f32_e64 s12, v76, v76
	v_cmp_o_f32_e64 s9, v123, v123
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v30, v30, v141
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v126, v75, v76
.Ltmp25:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v139.l, v75.h
	v_cmp_o_f32_e64 s13, v75, v75
	v_and_b32_e32 v131, 1, v137
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v32, v32, v141
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v126, v129, v126 :: v_dual_add_f32 v129, v79, v80
.Ltmp27:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v79, v79, v130, 0x7fff
	v_and_b32_e32 v133, 1, v139
	v_add3_u32 v117, v123, v131, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v19, v19, v141 :: v_dual_add_f32 v142, v125, v127
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v128, v128, v129 :: v_dual_and_b32 v129, 1, v116
.Ltmp29:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v116.l, v120.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v26, v26, v141
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v132.l, 0x7fff, v79.h, s17
	v_add3_u32 v75, v75, v133, 0x7fff
	v_add3_u32 v118, v118, v129, 0x7fff
	v_mov_b16_e64 v129.h, v116.h
	v_mov_b16_e64 v129.l, v77.h
	v_and_b32_e32 v119, 1, v116
	v_mov_b16_e32 v116.l, v121.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v141
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v118.l, 0x7fff, v114.h, s4
	v_and_b32_e32 v129, 1, v129
	v_add3_u32 v114, v120, v119, 0x7fff
	v_cndmask_b16 v75.l, 0x7fff, v111.h, s5
	v_cndmask_b16 v114.l, 0x7fff, v75.h, s13
	v_cndmask_b16 v118.h, 0x7fff, v118.h, s3
	v_add3_u32 v77, v77, v129, 0x7fff
	v_cndmask_b16 v77.l, 0x7fff, v110.h, s7
	v_and_b32_e32 v110, 1, v116
	v_mov_b16_e32 v116.l, v124.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v21, v21, v141
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v130.l, 0x7fff, v77.h, s15
	v_cndmask_b16 v75.h, 0x7fff, v114.h, s1
	v_add3_u32 v110, v121, v110, 0x7fff
	v_and_b32_e32 v120, 1, v116
	v_mov_b16_e32 v116.l, v74.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v23, v23, v141
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v79.l, 0x7fff, v117.h, s9
	v_cndmask_b16 v77.h, 0x7fff, v110.h, s6
	v_add3_u32 v110, v124, v120, 0x7fff
	v_and_b32_e32 v122, 1, v116
	v_mov_b16_e32 v116.l, v76.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v141
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v119, v118, s44, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v79.h, 0x7fff, v110.h, s8
	v_add3_u32 v74, v74, v122, 0x7fff
	v_and_b32_e32 v110, 1, v116
	v_mov_b16_e32 v116.l, v78.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v11, v11, v141
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v121, v75, s44, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v111.h, 0x7fff, v74.h, s10
	v_add3_u32 v74, v76, v110, 0x7fff
	v_and_b32_e32 v124, 1, v116
	v_perm_b32 v117, v119, v118, v86
	v_perm_b32 v118, v119, v118, v88
	v_perm_b32 v119, v121, v75, v86
	v_cndmask_b16 v114.h, 0x7fff, v74.h, s12
	v_add3_u32 v74, v78, v124, 0x7fff
	v_permlanex16_b32 v123, v77, s44, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v120, v121, v75, v88
	v_permlanex16_b32 v75, v79, s44, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v28, v28, v141 :: v_dual_add_f32 v143, v126, v128
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v130.h, 0x7fff, v74.h, s14
	v_perm_b32 v121, v123, v77, v86
	v_perm_b32 v122, v123, v77, v88
	v_perm_b32 v123, v75, v79, v86
	v_permlanex16_b32 v77, v111, s44, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v74, v130, s44, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v124, v75, v79, v88
	v_mov_b16_e32 v116.l, v80.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v18, v18, v141
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v125, v77, v111, v86
	v_perm_b32 v129, v74, v130, v86
	v_perm_b32 v130, v74, v130, v88
	v_perm_b32 v126, v77, v111, v88
	v_dual_mov_b32 v111, v73 :: v_dual_mul_f32 v20, v20, v141
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v22, v22, v141
	v_mul_f32_e32 v24, v24, v141
	v_mul_f32_e32 v10, v10, v141
	v_mul_f32_e32 v12, v12, v141
	v_dual_mul_f32 v13, v13, v141 :: v_dual_and_b32 v76, 1, v116
	v_mul_f32_e32 v14, v14, v141
	v_mul_f32_e32 v15, v15, v141
	v_mul_f32_e32 v16, v16, v141
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s16, v80, v80
	v_add3_u32 v75, v80, v76, 0x7fff
	v_permlanex16_b32 v76, v114, s44, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v141
	v_mul_f32_e32 v2, v2, v141
	v_mul_f32_e32 v4, v4, v141
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v132.h, 0x7fff, v75.h, s16
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v5, v5, v141
	v_mul_f32_e32 v6, v6, v141
	v_mul_f32_e32 v7, v7, v141
	v_mul_f32_e32 v8, v8, v141
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v75, v132, s44, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v127, v76, v114, v86
	v_perm_b32 v128, v76, v114, v88
	s_delay_alu instid0(VALU_DEP_3)
	v_perm_b32 v131, v75, v132, v86
	v_perm_b32 v132, v75, v132, v88
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v74.l, v65.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v74.h, v69.l
	v_mov_b16_e32 v69.l, v65.h
	v_mov_b16_e32 v65.l, v66.l
	v_mov_b16_e32 v65.h, v70.l
	v_mov_b16_e32 v70.l, v66.h
	v_mov_b16_e32 v66.l, v67.l
	v_mov_b16_e32 v66.h, v71.l
	v_mov_b16_e32 v71.l, v67.h
	v_mov_b16_e32 v67.l, v68.l
	v_mov_b16_e32 v67.h, v72.l
	v_mov_b16_e32 v72.l, v68.h
	ds_store_2addr_b32 v113, v74, v69 offset1:16
	ds_store_2addr_b32 v101, v65, v70 offset1:16
	ds_store_2addr_b32 v102, v66, v71 offset1:16
	ds_store_2addr_b32 v103, v67, v72 offset1:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[65:68], v115
	ds_load_b128 v[69:72], v104
	ds_load_b128 v[137:140], v108
	ds_load_b128 v[133:136], v107
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v74, v142, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v75, v74, s44, 0xfedcba98 op_sel:[1,0]
.Ltmp32:
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v3, v3, v141 :: v_dual_add_f32 v110, v74, v75
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v110, v112, v141
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[65:72], v[117:124], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[69:72], v104 offset:2048
	ds_load_b128 v[65:68], v115 offset:2048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[133:140], v[117:124], v[17:24]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[133:136], v107 offset:2048
	ds_load_b128 v[137:140], v108 offset:2048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[65:72], v[117:124], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[69:72], v106
	ds_load_b128 v[65:68], v105
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[133:140], v[117:124], v[1:8]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[116:119], v115 offset:1024
	ds_load_b128 v[133:136], v115 offset:3072
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[65:72], v[125:132], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[65:68], v105 offset:2048
	ds_load_b128 v[120:123], v109
	ds_load_b128 v[69:72], v106 offset:2048
	ds_load_b128 v[137:140], v109 offset:2048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[116:123], v[125:132], v[17:24]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[65:72], v[125:132], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[133:140], v[125:132], v[1:8]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
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
	v_mov_b32_e32 v110, v8
.LBB0_4:                                ; %Flow103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_scale_f32 v36, null, v110, v110, v25
	v_div_scale_f32 v37, null, v110, v110, v26
	v_div_scale_f32 v40, null, v110, v110, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v38, v36
	v_rcp_f32_e32 v39, v37
	v_div_scale_f32 v42, null, v110, v110, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v43, v40
	v_div_scale_f32 v41, vcc_lo, v25, v110, v25
	v_rcp_f32_e32 v45, v42
	v_div_scale_f32 v44, s0, v26, v110, v26
	v_fma_f32 v33, -v36, v38, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v35, -v37, v39, 1.0
	v_div_scale_f32 v50, s1, v27, v110, v27
	v_fma_f32 v47, -v40, v43, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v38, v33, v38 :: v_dual_fmac_f32 v39, v35, v39
	v_fma_f32 v51, -v42, v45, 1.0
	v_div_scale_f32 v52, null, v110, v110, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v46, v41, v38 :: v_dual_fmac_f32 v43, v47, v43
	v_dual_mul_f32 v48, v44, v39 :: v_dual_fmac_f32 v45, v51, v45
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s29, s29, 0xffff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v36, v46, v41
	s_mov_b32 s31, 0x31027000
	v_fma_f32 v47, -v37, v48, v44
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v34, 16, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v51, v50, v43 :: v_dual_fmac_f32 v46, v49, v38
	v_div_scale_f32 v49, s3, v28, v110, v28
	v_fmac_f32_e32 v48, v47, v39
	v_div_scale_f32 v47, null, v110, v110, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v36, v46, v41
	v_div_scale_f32 v41, null, v110, v110, v29
	v_fma_f32 v37, -v37, v48, v44
	v_fma_f32 v44, -v40, v51, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v36, v36, v38, v46
	v_rcp_f32_e32 v38, v41
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v46, v49, v45 :: v_dual_fmac_f32 v51, v44, v43
	v_div_fixup_f32 v25, v36, v110, v25
	v_div_fmas_f32 v36, v37, v39, v48
	v_rcp_f32_e32 v37, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fma_f32 v39, -v42, v46, v49
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v48, s1, v30, v110, v30
	v_fma_f32 v44, -v41, v38, 1.0
	v_div_fixup_f32 v26, v36, v110, v26
	v_fma_f32 v36, -v40, v51, v50
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v110
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v35, 32, v81
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v44, v38
	v_fmac_f32_e32 v46, v39, v45
	v_fma_f32 v40, -v47, v37, 1.0
	v_div_scale_f32 v44, null, v110, v110, v31
	v_div_fmas_f32 v36, v36, v43, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v42, v46, v49
	v_fmac_f32_e32 v37, v40, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v40, v44
	v_div_scale_f32 v49, null, v110, v110, v32
	v_div_scale_f32 v39, s4, v29, v110, v29
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v51, v49
	v_div_fmas_f32 v42, v42, v45, v46
	v_div_fixup_f32 v27, v36, v110, v27
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v50, -v44, v40, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v28, v42, v110, v28
	v_mul_f32_e32 v46, v48, v37
	v_div_scale_f32 v42, s3, v31, v110, v31
	v_fmac_f32_e32 v40, v50, v40
	v_fma_f32 v50, -v49, v51, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v36, -v47, v46, v48
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	v_cndmask_b32_e64 v27, 0, v27, s0
	v_cndmask_b32_e64 v28, 0, v28, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v51, v50, v51
	v_mul_f32_e32 v43, v39, v38
	v_div_scale_f32 v50, s5, v32, v110, v32
	v_fmac_f32_e32 v46, v36, v37
	v_lshrrev_b32_e32 v0, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v41, v43, v39
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v33, 48, v81
	v_or_b32_e32 v0, 62, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v45, v38
	v_div_scale_f32 v45, null, v110, v110, v17
	v_fma_f32 v39, -v41, v43, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v41, v45
	v_div_fmas_f32 v38, v39, v38, v43
	v_fma_f32 v39, -v47, v46, v48
	v_mul_f32_e32 v47, v50, v51
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v29, v38, v110, v29
	v_fma_f32 v48, -v45, v41, 1.0
	v_div_fmas_f32 v37, v39, v37, v46
	v_rcp_f32_e32 v39, v52
	v_div_scale_f32 v46, s1, v17, v110, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v41, v48, v41 :: v_dual_mul_f32 v36, v42, v40
	v_div_fixup_f32 v30, v37, v110, v30
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v48, null, v110, v110, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v44, v36, v42
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	v_cndmask_b32_e64 v30, 0, v30, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v43, v40
	v_fma_f32 v43, -v49, v47, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v37, -v44, v36, v42
	v_fmac_f32_e32 v47, v43, v51
	v_fma_f32 v42, -v52, v39, 1.0
	v_div_scale_f32 v44, s3, v18, v110, v18
	v_div_scale_f32 v43, null, v110, v110, v19
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v39, v42, v39
	v_mul_f32_e32 v38, v46, v41
	v_div_fmas_f32 v36, v37, v40, v36
	v_fma_f32 v37, -v49, v47, v50
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v42, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v31, v36, v110, v31
	v_div_fmas_f32 v37, v37, v51, v47
	v_mul_f32_e32 v47, v44, v39
	v_fma_f32 v40, -v45, v38, v46
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v32, v37, v110, v32
	v_fma_f32 v37, -v52, v47, v44
	v_fmac_f32_e32 v38, v40, v41
	v_rcp_f32_e32 v40, v48
	v_fma_f32 v49, -v43, v42, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v32, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v47, v37, v39
	v_fma_f32 v36, -v45, v38, v46
	v_div_scale_f32 v45, s4, v19, v110, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v36, v36, v41, v38
	v_fma_f32 v46, -v48, v40, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v41, s1, v20, v110, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v17, v36, v110, v17
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v46, null, v110, v110, v22
	v_fma_f32 v36, -v52, v47, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v51, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v36, v36, v39, v47
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v18, v36, v110, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v46, v51, 1.0
	v_fmac_f32_e32 v42, v49, v42
	v_div_scale_f32 v49, null, v110, v110, v21
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v51, v47, v51
	v_rcp_f32_e32 v38, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v49, v38, 1.0
	v_fmac_f32_e32 v38, v52, v38
	v_mul_f32_e32 v50, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v48, v50, v41
	v_dual_mul_f32 v37, v45, v42 :: v_dual_fmac_f32 v50, v39, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v43, v37, v45
	v_fmac_f32_e32 v37, v44, v42
	v_div_scale_f32 v44, s3, v21, v110, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v43, v37, v45
	v_div_scale_f32 v43, s5, v22, v110, v22
	v_div_scale_f32 v45, null, v110, v110, v23
	v_div_fmas_f32 v36, v36, v42, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v47, v43, v51
	v_mul_f32_e32 v39, v44, v38
	v_fma_f32 v37, -v48, v50, v41
	v_rcp_f32_e32 v42, v45
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v48, null, v110, v110, v24
	v_fma_f32 v41, -v49, v39, v44
	v_div_fmas_f32 v37, v37, v40, v50
	v_div_fixup_f32 v19, v36, v110, v19
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v40, v48
	v_fmac_f32_e32 v39, v41, v38
	v_fma_f32 v41, -v46, v47, v43
	v_fma_f32 v50, -v45, v42, 1.0
	v_div_fixup_f32 v20, v37, v110, v20
	v_div_scale_f32 v37, s1, v23, v110, v23
	v_fma_f32 v36, -v49, v39, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v47, v41, v51 :: v_dual_fmac_f32 v42, v50, v42
	v_div_scale_f32 v49, null, v110, v110, v10
	v_div_fmas_f32 v36, v36, v38, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v46, v47, v43
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v41, -v48, v40, 1.0
	v_div_scale_f32 v43, s3, v24, v110, v24
	v_div_fmas_f32 v38, v38, v51, v47
	v_div_fixup_f32 v21, v36, v110, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, null, v110, v110, v9
	v_div_fixup_f32 v22, v38, v110, v22
	v_rcp_f32_e32 v38, v49
	v_div_scale_f32 v51, null, v110, v110, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v44, v41
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v53, v51
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	v_cndmask_b32_e64 v21, 0, v21, s0
	v_cndmask_b32_e64 v22, 0, v22, s0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v49, v38, 1.0
	v_dual_mul_f32 v47, v43, v40 :: v_dual_fmac_f32 v38, v50, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v48, v47, v43
	v_fmac_f32_e32 v47, v36, v40
	v_div_scale_f32 v36, s4, v9, v110, v9
	v_mul_f32_e32 v39, v37, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v45, v39, v37
	v_fmac_f32_e32 v39, v46, v42
	v_fma_f32 v46, -v41, v44, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v45, v39, v37
	v_div_scale_f32 v45, null, v110, v110, v11
	v_fmac_f32_e32 v44, v46, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v37, v37, v42, v39
	v_rcp_f32_e32 v46, v45
	v_fma_f32 v39, -v48, v47, v43
	v_div_scale_f32 v43, s1, v10, v110, v10
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v42, v36, v44
	v_div_fixup_f32 v23, v37, v110, v23
	v_mul_f32_e32 v52, v43, v38
	v_div_fmas_f32 v39, v39, v40, v47
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v48, -v45, v46, 1.0
	v_fma_f32 v50, -v41, v42, v36
	v_fma_f32 v40, -v49, v52, v43
	v_div_fixup_f32 v24, v39, v110, v24
	v_fma_f32 v39, -v51, v53, 1.0
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v48, s5, v11, v110, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v52, v40, v38 :: v_dual_fmac_f32 v53, v39, v53
	v_dual_fmac_f32 v42, v50, v44 :: v_dual_mul_f32 v47, v48, v46
	v_div_scale_f32 v40, null, v110, v110, v13
	v_div_scale_f32 v39, s3, v12, v110, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v45, v47, v48
	v_fma_f32 v36, -v41, v42, v36
	v_fma_f32 v41, -v49, v52, v43
	v_div_scale_f32 v43, null, v110, v110, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v47, v37, v46
	v_rcp_f32_e32 v37, v40
	v_div_fmas_f32 v36, v36, v44, v42
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v42, v39, v53
	v_div_fmas_f32 v38, v41, v38, v52
	v_fma_f32 v41, -v45, v47, v48
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v9, v36, v110, v9
	v_rcp_f32_e32 v45, v43
	v_div_fixup_f32 v10, v38, v110, v10
	v_fma_f32 v44, -v40, v37, 1.0
	v_div_fmas_f32 v41, v41, v46, v47
	v_fma_f32 v46, -v51, v42, v39
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v44, v37
	v_div_scale_f32 v44, s1, v13, v110, v13
	v_div_fixup_f32 v11, v41, v110, v11
	v_div_scale_f32 v41, null, v110, v110, v15
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
	v_div_scale_f32 v38, s4, v14, v110, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v51, v42, v39
	v_fmac_f32_e32 v36, v46, v37
	v_div_scale_f32 v46, null, v110, v110, v16
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
	v_div_fixup_f32 v12, v39, v110, v12
	v_fma_f32 v39, -v40, v36, v44
	v_fma_f32 v44, -v41, v47, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v39, v37, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v44, v47
	v_div_scale_f32 v44, null, v110, v110, v2
	v_div_scale_f32 v37, null, v110, v110, v1
	v_div_fixup_f32 v13, v36, v110, v13
	v_fma_f32 v36, -v46, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v50, v44
	v_div_scale_f32 v39, s1, v15, v110, v15
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v48, v36, v48
	v_div_scale_f32 v36, s3, v16, v110, v16
	v_mul_f32_e32 v42, v38, v45
	v_div_scale_f32 v51, s4, v1, v110, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v44, v50, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v43, v42, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v50, v52, v50
	v_div_scale_f32 v52, s5, v2, v110, v2
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
	v_div_fixup_f32 v14, v38, v110, v14
	v_fmac_f32_e32 v40, v49, v40
	v_div_scale_f32 v49, null, v110, v110, v3
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
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v46, v45, v36
	v_div_scale_f32 v43, null, v110, v110, v4
	v_fmac_f32_e32 v53, v42, v53
	v_fma_f32 v39, -v37, v54, v51
	v_div_scale_f32 v42, s1, v3, v110, v3
	v_div_fmas_f32 v36, v36, v48, v45
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v54, v39, v40
	v_fma_f32 v39, -v44, v41, v52
	v_rcp_f32_e32 v45, v43
	v_div_fixup_f32 v16, v36, v110, v16
	v_div_fixup_f32 v15, v38, v110, v15
	v_div_scale_f32 v47, null, v110, v110, v8
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
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v44, -v49, v39, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v1, v37, v110, v1
	v_div_fmas_f32 v40, v40, v50, v41
	v_div_scale_f32 v37, null, v110, v110, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v44, v53
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v2, v40, v110, v2
	v_div_scale_f32 v40, null, v110, v110, v7
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
	v_div_scale_f32 v51, s4, v7, v110, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v36, v53, v39
	v_rcp_f32_e32 v39, v37
	v_div_scale_f32 v41, vcc_lo, v4, v110, v4
	v_mul_f32_e32 v55, v51, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fixup_f32 v3, v36, v110, v3
	v_fma_f32 v53, -v47, v49, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v37, v39, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v49, v53, v49
	v_div_scale_f32 v53, s5, v8, v110, v8
	v_fmac_f32_e32 v39, v36, v39
	v_div_scale_f32 v36, s1, v5, v110, v5
	v_fmac_f32_e32 v45, v38, v45
	v_div_scale_f32 v38, null, v110, v110, v6
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
	v_div_scale_f32 v48, s3, v6, v110, v6
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
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	s_mul_i32 s1, s19, s30
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v39, v52
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v56, v37, v49
	v_fmac_f32_e32 v54, v43, v42
	v_fma_f32 v37, -v40, v55, v51
	v_div_fixup_f32 v5, v36, v110, v5
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v36, s19, v82
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v47, v56, v53
	v_fma_f32 v38, -v38, v54, v48
	v_div_fixup_f32 v4, v41, v110, v4
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s19, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v42, v54
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v37, v44, v55
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v38, v110, v6
	v_div_fmas_f32 v39, v39, v49, v56
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s19, v81
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v37, v110, v7
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_nc_u32_e32 v37, v36, v81
	v_add_nc_u32_e32 v36, s1, v36
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v39, v110, v8
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v38, v36, v81, 2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s19, v34
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v37, v37, s1, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s19, v35
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v39, 8, v38
	v_add_nc_u32_e32 v40, 16, v38
	v_cndmask_b32_e32 v41, 0x80000000, v38, vcc_lo
	v_add_lshl_u32 v0, v36, v0, 2
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_cndmask_b32 v40, 0x80000000, v40
	s_clause 0x2
	buffer_store_b32 v25, v41, s[28:31], 0 offen
	buffer_store_b32 v26, v39, s[28:31], 0 offen
	buffer_store_b32 v27, v40, s[28:31], 0 offen
	v_add_nc_u32_e32 v39, 48, v38
	v_add_nc_u32_e32 v40, 56, v38
	v_add_nc_u32_e32 v25, 24, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	v_dual_cndmask_b32 v40, 0x80000000, v40 :: v_dual_add_nc_u32 v27, 40, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_add_nc_u32 v26, 32, v38
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	s_clause 0x4
	buffer_store_b32 v28, v25, s[28:31], 0 offen
	buffer_store_b32 v29, v26, s[28:31], 0 offen
	buffer_store_b32 v30, v27, s[28:31], 0 offen
	buffer_store_b32 v31, v39, s[28:31], 0 offen
	buffer_store_b32 v32, v40, s[28:31], 0 offen
	v_add_lshl_u32 v25, v36, v34, 2
	v_add_nc_u32_e32 v26, 0x48, v38
	v_add_nc_u32_e32 v27, 0x50, v38
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
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
	v_add_lshl_u32 v17, v36, v35, 2
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v22, v18, s[28:31], 0 offen
	v_add_nc_u32_e32 v18, 0x88, v37
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x2
	buffer_store_b32 v23, v19, s[28:31], 0 offen
	buffer_store_b32 v24, v20, s[28:31], 0 offen
	buffer_store_b32 v9, v17, s[28:31], 0 offen
	v_add_nc_u32_e32 v9, 0x90, v37
	v_add_nc_u32_e32 v20, 0xa8, v37
	v_cndmask_b32_e32 v17, 0x80000000, v18, vcc_lo
	v_add_nc_u32_e32 v18, 0x98, v37
	v_add_nc_u32_e32 v19, 0xa0, v37
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	buffer_store_b32 v10, v17, s[28:31], 0 offen
	v_dual_cndmask_b32 v10, 0x80000000, v18 :: v_dual_cndmask_b32 v17, 0x80000000, v19
	v_cndmask_b32_e32 v18, 0x80000000, v20, vcc_lo
	buffer_store_b32 v11, v9, s[28:31], 0 offen
	v_add_nc_u32_e32 v9, 0xb0, v37
	s_clause 0x2
	buffer_store_b32 v12, v10, s[28:31], 0 offen
	buffer_store_b32 v13, v17, s[28:31], 0 offen
	buffer_store_b32 v14, v18, s[28:31], 0 offen
	v_add_nc_u32_e32 v10, 0xb8, v37
	v_add_lshl_u32 v11, v36, v33, 2
	v_add_nc_u32_e32 v12, 0xc8, v37
	v_add_nc_u32_e32 v13, 0xd0, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_cndmask_b32 v10, 0x80000000, v10
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v11, 0x80000000, v11 :: v_dual_cndmask_b32 v0, 0x80000000, v0
	v_dual_cndmask_b32 v12, 0x80000000, v12 :: v_dual_cndmask_b32 v13, 0x80000000, v13
	s_clause 0x4
	buffer_store_b32 v15, v9, s[28:31], 0 offen
	buffer_store_b32 v16, v10, s[28:31], 0 offen
	buffer_store_b32 v1, v11, s[28:31], 0 offen
	buffer_store_b32 v2, v12, s[28:31], 0 offen
	buffer_store_b32 v3, v13, s[28:31], 0 offen
	v_add_nc_u32_e32 v1, 0xd8, v37
	v_add_nc_u32_e32 v2, 0xe0, v37
	v_add_nc_u32_e32 v3, 0xe8, v37
	v_add_nc_u32_e32 v9, 0xf0, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
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
.Ltmp33:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 144
		.amdhsa_next_free_sgpr 46
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.num_vgpr, 144
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8204
; TotalNumSgprs: 48
; NumVgprs: 144
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 48
; NumVGPRsForWavesPerEU: 144
; Occupancy: 10
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
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
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
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn32_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     144
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
