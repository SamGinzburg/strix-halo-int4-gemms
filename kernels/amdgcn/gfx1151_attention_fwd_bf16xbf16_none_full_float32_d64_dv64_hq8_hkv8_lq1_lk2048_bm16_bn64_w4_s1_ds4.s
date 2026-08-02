	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s30, s[0:1], 0x60
	s_load_b64 s[18:19], s[0:1], 0x58
.Ltmp0:
	.loc	1 748 27 prologue_end           ; attention.py:748:27
	s_abs_i32 s7, s2
	.loc	1 787 79                        ; attention.py:787:79
	v_and_b32_e32 v18, 7, v0
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x40
	s_load_b64 s[36:37], s[0:1], 0x0
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v60, 1, v0
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v17, 3, v18
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v6, 4, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v61, 15, v0
	s_mov_b32 s20, 0
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v7, 0x70, v60
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v6, v6, v7
	.loc	1 798 32                        ; attention.py:798:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s30
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s8, s2, s30
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s8, s8, 31
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s18, v17
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v62, 0, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 798 32                        ; attention.py:798:32
	v_readfirstlane_b32 s4, v1
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 3, v0
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[57:58], null, s18, v1, v[17:18]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s6, s6, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s4, s6
	s_add_i32 s6, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s4, s7, s6
	s_mul_i32 s9, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s9
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s7, s10, s7
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s9, s4
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s37, s37, 0xffff
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s8, s7, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s7, s7, s30
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s8, v1
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s4, s8, s3
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s17, s2, s7
	.loc	1 787 26                        ; attention.py:787:26
	s_mul_i32 s9, s4, s18
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s4, 1, v2
	.loc	1 788 26                        ; attention.py:788:26
	v_add_lshl_u32 v2, s9, v57, 1
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s4, vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v2, 0x80000000, v2, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s30, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 798 32 is_stmt 1              ; attention.py:798:32
	s_xor_b32 s9, s4, s30
	s_abs_i32 s4, s4
	.loc	1 788 26                        ; attention.py:788:26
	buffer_load_b128 v[2:5], v2, s[36:39], 0 offen
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s6, s4, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_add_i32 s11, s6, 1
	s_sub_i32 s4, s4, s10
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s6, s11, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	s_cselect_b32 s2, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s9
	s_sub_i32 s2, s2, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s4, s17, s2
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s31, s4, 6
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s31, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s33, s2, 0x800
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_ge_i32 s31, s33
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v62, v[2:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_clause 0x1
	s_load_b32 s2, s[0:1], 0x64
	s_load_b128 s[4:7], s[0:1], 0x8
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_lshlrev_b32_e32 v20, 4, v18
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s8, v61
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_i32 v3, v0, 4, 1
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v63, 0x800, v1
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	v_and_b32_e32 v19, 0x78, v0
	.loc	1 788 26 is_stmt 1              ; attention.py:788:26
	v_lshl_or_b32 v21, v61, 7, v20
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s1, 1, v2
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v64, 0x800, v3
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s19, v17
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v22, 1, v19
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v23, 16, v21
	v_xor_b32_e32 v24, 32, v21
	v_xor_b32_e32 v25, 48, v21
	v_xor_b32_e32 v1, 0x70, v21
	v_xor_b32_e32 v2, 0x60, v21
	v_xor_b32_e32 v3, 0x50, v21
	v_xor_b32_e32 v4, 64, v21
	v_add_nc_u32_e32 v73, 0, v21
	v_and_b32_e32 v21, 16, v0
	.loc	1 860 31                        ; attention.py:860:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s35, s2, 0x3fb8aa3b
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v72, 0, v23
	v_dual_mov_b32 v23, 0x5410 :: v_dual_add_nc_u32 v66, 0, v2
	v_cmp_eq_u32_e64 s2, 0, v21
	v_mov_b32_e32 v21, 0x7632
	.loc	1 818 13                        ; attention.py:818:13
	v_sub_nc_u32_e32 v69, 0x800, v22
	v_mad_u64_u32 v[58:59], null, s19, v22, v[17:18]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v23, 0x1054, v23, s2
	v_cndmask_b32_e64 v21, 0x3276, v21, s2
	v_and_b32_e32 v22, 0x60, v0
	v_xor_b32_e32 v19, v20, v19
	v_dual_mov_b32 v59, 0xff800000 :: v_dual_add_nc_u32 v68, 0, v4
	v_lshl_or_b32 v23, v23, 8, v23
	v_lshl_or_b32 v21, v21, 8, v21
	v_lshl_or_b32 v20, v22, 6, v20
	v_lshl_or_b32 v74, v18, 10, v19
	s_and_b32 s5, s5, 0xffff
	v_and_b32_e32 v17, 0x540054, v23
	v_bfe_i32 v23, v0, 3, 1
	v_and_b32_e32 v21, 0x760076, v21
	v_xor_b32_e32 v19, 0x90, v74
	.loc	1 852 32                        ; attention.py:852:32
	s_lshl_b32 s34, s3, 11
	v_lshl_or_b32 v17, v17, 4, v17
	v_and_or_b32 v22, 0x410, v23, v22
	v_lshl_or_b32 v21, v21, 4, v21
	v_add_nc_u32_e32 v79, 0, v19
	v_xor_b32_e32 v23, 0x360, v74
	v_and_b32_e32 v75, 0x5040504, v17
	v_xor_b32_e32 v17, v22, v20
	v_and_b32_e32 v76, 0x7060706, v21
	v_xor_b32_e32 v20, 0x120, v74
	v_xor_b32_e32 v21, 0x1b0, v74
	v_xor_b32_e32 v22, 0x2d0, v74
	v_lshl_or_b32 v77, v18, 7, v17
	v_mov_b32_e32 v17, 0
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v65, 0, v1
	v_add_nc_u32_e32 v70, 0, v25
	v_add_nc_u32_e32 v71, 0, v24
	v_xor_b32_e32 v24, 0x3f0, v74
	v_add_nc_u32_e32 v67, 0, v3
	v_add_nc_u32_e32 v80, 0, v20
	v_add_nc_u32_e32 v81, 0, v21
	v_add_nc_u32_e32 v83, 0, v22
	v_add_nc_u32_e32 v85, 0, v24
	v_mov_b32_e32 v19, v17
	v_mov_b32_e32 v20, v17
	v_mov_b32_e32 v21, v17
	v_mov_b32_e32 v22, v17
	ds_load_b128 v[5:8], v65
	ds_load_b128 v[1:4], v66
	ds_load_b128 v[13:16], v67
	ds_load_b128 v[9:12], v68
	v_mov_b32_e32 v24, v17
	v_mov_b32_e32 v78, v17
	ds_load_b128 v[29:32], v70
	ds_load_b128 v[25:28], v71
	ds_load_b128 v[37:40], v72
	ds_load_b128 v[33:36], v73
	v_xor_b32_e32 v18, 0x240, v74
	v_xor_b32_e32 v41, 16, v77
	v_xor_b32_e32 v42, 32, v77
	v_xor_b32_e32 v43, 48, v77
	v_xor_b32_e32 v44, 64, v77
	v_xor_b32_e32 v45, 0x50, v77
	v_xor_b32_e32 v46, 0x60, v77
	v_xor_b32_e32 v47, 0x70, v77
	v_add_nc_u32_e32 v82, 0, v18
	v_add_nc_u32_e32 v84, 0, v23
	v_add_nc_u32_e32 v86, 0, v41
	v_add_nc_u32_e32 v87, 0, v42
	v_add_nc_u32_e32 v88, 0, v43
	v_add_nc_u32_e32 v89, 0, v44
	v_add_nc_u32_e32 v90, 0, v45
	v_add_nc_u32_e32 v91, 0, v46
	v_add_nc_u32_e32 v92, 0, v47
	v_mov_b32_e32 v18, v17
	v_mov_b32_e32 v23, v17
	s_lshl_b32 s44, s18, 4
	s_lshl_b32 s45, s18, 5
	s_mul_i32 s46, s18, 48
	s_lshl_b32 s47, s19, 1
	s_mul_i32 s48, s19, 3
	s_and_b32 s41, s7, 0xffff
	s_mov_b32 s36, s4
	s_mov_b32 s37, s5
	s_mov_b32 s21, s20
	s_mov_b32 s22, s20
	s_mov_b32 s23, s20
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	s_mov_b32 s26, s20
	s_mov_b32 s27, s20
	s_mov_b32 s49, 0x76543210
	s_mov_b32 s40, s6
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 853 32                        ; attention.py:853:32
	s_add_i32 s4, s31, s34
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_lt_i32_e64 s2, s31, v63
	.loc	1 853 32                        ; attention.py:853:32
	v_mad_u64_u32 v[41:42], null, s4, s18, v[57:58]
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v116, s27 :: v_dual_mov_b32 v113, s24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 856 30                        ; attention.py:856:30
	s_and_b32 s2, vcc_lo, s2
	.loc	1 859 30                        ; attention.py:859:30
	v_dual_mov_b32 v114, s25 :: v_dual_mov_b32 v111, s22
	v_dual_mov_b32 v112, s23 :: v_dual_mov_b32 v109, s20
	v_dual_mov_b32 v115, s26 :: v_dual_lshlrev_b32 v42, 1, v41
	.loc	1 854 32                        ; attention.py:854:32
	v_add_lshl_u32 v43, v41, s44, 1
	v_add_lshl_u32 v44, v41, s45, 1
	v_add_lshl_u32 v41, v41, s46, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	.loc	1 859 30                        ; attention.py:859:30
	v_mov_b32_e32 v110, s21
	.loc	1 854 32                        ; attention.py:854:32
	v_cndmask_b32_e64 v45, 0x80000000, v43, s2
	v_cndmask_b32_e64 v49, 0x80000000, v44, s2
	v_cndmask_b32_e64 v53, 0x80000000, v41, s2
	s_clause 0x3
	buffer_load_b128 v[41:44], v42, s[36:39], 0 offen
	buffer_load_b128 v[45:48], v45, s[36:39], 0 offen
	buffer_load_b128 v[49:52], v49, s[36:39], 0 offen
	buffer_load_b128 v[53:56], v53, s[36:39], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_lt_i32_e64 s2, s31, v69
	.loc	1 854 32                        ; attention.py:854:32
	s_waitcnt vmcnt(3)
	ds_store_b128 v62, v[41:44]
	s_waitcnt vmcnt(2)
	ds_store_b128 v62, v[45:48] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v62, v[49:52] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v62, v[53:56] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[45:48], v72
	ds_load_b128 v[41:44], v73
	ds_load_b128 v[49:52], v73 offset:2048
	ds_load_b128 v[53:56], v72 offset:2048
	ds_load_b128 v[97:100], v72 offset:4096
	ds_load_b128 v[93:96], v73 offset:4096
	ds_load_b128 v[101:104], v73 offset:6144
	ds_load_b128 v[105:108], v72 offset:6144
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s2, s0, s2
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[117:124], v[41:48], v[33:40], v[109:116]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[45:48], v70
	ds_load_b128 v[41:44], v71
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[125:132], v[49:56], v[33:40], v[109:116]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[133:140], v[93:100], v[33:40], v[109:116]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[141:148], v[101:108], v[33:40], v[109:116]
	v_mad_u64_u32 v[109:110], null, s4, s19, v[58:59]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v110, 1, v109
	v_add_lshl_u32 v112, v109, s47, 1
	v_add_lshl_u32 v111, v109, s19, 1
	v_add_lshl_u32 v109, v109, s48, 1
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[117:124], v[41:48], v[25:32], v[117:124]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[41:44], v71 offset:2048
	ds_load_b128 v[45:48], v70 offset:2048
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v110, 0x80000000, v110, s2
	v_cndmask_b32_e64 v112, 0x80000000, v112, s2
	v_cndmask_b32_e64 v109, 0x80000000, v109, s2
	v_cndmask_b32_e64 v114, 0x80000000, v111, s2
	.loc	1 856 65                        ; attention.py:856:65
	v_cmp_lt_i32_e64 s2, s31, v64
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s31, s31, 64
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s2, s1, s2
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s31, s33
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[125:132], v[41:48], v[25:32], v[125:132]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[45:48], v70 offset:4096
	ds_load_b128 v[41:44], v71 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[133:140], v[41:48], v[25:32], v[133:140]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[41:44], v71 offset:6144
	ds_load_b128 v[45:48], v70 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[141:148], v[41:48], v[25:32], v[141:148]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[45:48], v67
	ds_load_b128 v[41:44], v68
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[117:124], v[41:48], v[9:16], v[117:124]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[41:44], v68 offset:2048
	ds_load_b128 v[45:48], v67 offset:2048
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[125:132], v[41:48], v[9:16], v[125:132]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[45:48], v67 offset:4096
	ds_load_b128 v[41:44], v68 offset:4096
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[133:140], v[41:48], v[9:16], v[133:140]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[41:44], v68 offset:6144
	ds_load_b128 v[45:48], v67 offset:6144
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[141:148], v[41:48], v[9:16], v[141:148]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[45:48], v65
	ds_load_b128 v[41:44], v66
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[117:124], v[41:48], v[1:8], v[117:124]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[41:44], v66 offset:2048
	ds_load_b128 v[45:48], v65 offset:2048
	.loc	1 860 21                        ; attention.py:860:21
	v_mul_f32_e32 v49, s35, v122
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[125:132], v[41:48], v[1:8], v[125:132]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[45:48], v65 offset:4096
	ds_load_b128 v[41:44], v66 offset:4096
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v100, s35, v126 :: v_dual_mul_f32 v101, s35, v127
	v_dual_mul_f32 v102, s35, v128 :: v_dual_mul_f32 v103, s35, v129
	v_dual_mul_f32 v104, s35, v130 :: v_dual_mul_f32 v105, s35, v131
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[133:140], v[41:48], v[1:8], v[133:140]
	.loc	1 854 32                        ; attention.py:854:32
	ds_load_b128 v[41:44], v66 offset:6144
	ds_load_b128 v[45:48], v65 offset:6144
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v106, s35, v132 :: v_dual_mul_f32 v107, s35, v133
	v_dual_mul_f32 v108, s35, v134 :: v_dual_mul_f32 v55, s35, v135
	v_dual_mul_f32 v56, s35, v136 :: v_dual_mul_f32 v93, s35, v137
	v_dual_mul_f32 v94, s35, v138 :: v_dual_mul_f32 v95, s35, v139
	.loc	1 859 30                        ; attention.py:859:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[141:148], v[41:48], v[1:8], v[141:148]
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v45, s35, v117 :: v_dual_mul_f32 v46, s35, v118
	v_mul_f32_e32 v41, s35, v119
	v_dual_mul_f32 v47, s35, v120 :: v_dual_mul_f32 v48, s35, v121
	v_dual_mul_f32 v42, s35, v123 :: v_dual_mul_f32 v43, s35, v124
	v_mul_f32_e32 v44, s35, v125
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[118:121], v110, s[40:43], 0 offen
	buffer_load_b128 v[122:125], v112, s[40:43], 0 offen
	buffer_load_b128 v[110:113], v109, s[40:43], 0 offen
	buffer_load_b128 v[114:117], v114, s[40:43], 0 offen
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v54, s35, v148 :: v_dual_add_nc_u32 v109, 0, v74
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v96, s35, v140 :: v_dual_mul_f32 v97, s35, v141
	v_dual_mul_f32 v98, s35, v142 :: v_dual_mul_f32 v99, s35, v143
	v_dual_mul_f32 v51, s35, v144 :: v_dual_mul_f32 v52, s35, v145
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v45, 0xff800000, v45, s2
	v_cndmask_b32_e64 v46, 0xff800000, v46, s2
	v_cndmask_b32_e64 v47, 0xff800000, v47, s2
	v_cndmask_b32_e64 v48, 0xff800000, v48, s2
	v_cndmask_b32_e64 v49, 0xff800000, v49, s2
	.loc	1 860 21                        ; attention.py:860:21
	v_dual_mul_f32 v50, s35, v146 :: v_dual_mul_f32 v53, s35, v147
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v126.l, v118.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v127.l, v122.l
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v127.h, v110.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v126.h, v114.l
	v_mov_b16_e32 v114.l, v118.h
	v_mov_b16_e32 v110.l, v122.h
	v_mov_b16_e32 v118.h, v116.l
	v_mov_b16_e32 v116.l, v120.h
	ds_store_b64 v109, v[126:127]
	v_mov_b16_e32 v126.h, v115.l
	v_mov_b32_e32 v109, v114
	v_mov_b16_e32 v115.l, v119.h
	v_mov_b16_e32 v127.l, v123.l
	v_mov_b16_e32 v127.h, v111.l
	v_mov_b16_e32 v126.l, v119.l
	ds_store_b64 v79, v[109:110]
	ds_store_b64 v80, v[126:127]
	v_mov_b16_e32 v111.l, v123.h
	v_mov_b32_e32 v110, v115
	v_mov_b16_e32 v119.l, v124.l
	v_mov_b16_e32 v119.h, v112.l
	v_mov_b16_e32 v118.l, v120.l
	ds_store_b64 v81, v[110:111]
	ds_store_b64 v82, v[118:119]
	v_mov_b16_e32 v110.h, v113.l
	v_mov_b16_e32 v113.l, v125.h
	v_mov_b16_e32 v112.l, v124.h
	v_mov_b32_e32 v111, v116
	v_mov_b16_e32 v110.l, v125.l
	v_mov_b16_e32 v109.l, v121.l
	v_mov_b16_e32 v109.h, v117.l
	v_mov_b32_e32 v118, v113
	v_mov_b16_e32 v117.l, v121.h
	ds_store_b64 v83, v[111:112]
	ds_store_b64 v84, v[109:110]
	ds_store_b64 v85, v[117:118]
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v115, 0xff800000, v100, s2
	v_cndmask_b32_e64 v116, 0xff800000, v101, s2
	v_cndmask_b32_e64 v117, 0xff800000, v102, s2
	v_cndmask_b32_e64 v118, 0xff800000, v103, s2
	v_cndmask_b32_e64 v119, 0xff800000, v104, s2
	v_cndmask_b32_e64 v120, 0xff800000, v105, s2
	v_cndmask_b32_e64 v121, 0xff800000, v106, s2
	v_cndmask_b32_e64 v122, 0xff800000, v107, s2
	v_cndmask_b32_e64 v123, 0xff800000, v108, s2
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v100, v115, v116, v117
	v_max3_f32 v101, v118, v119, v120
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v104, 0xff800000, v55, s2
	v_cndmask_b32_e64 v105, 0xff800000, v56, s2
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v102, v121, v122, v123
.Ltmp4:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v103, 0xff800000, v96, s2
	v_cndmask_b32_e64 v55, 0xff800000, v97, s2
	v_cndmask_b32_e64 v56, 0xff800000, v99, s2
	v_cndmask_b32_e64 v107, 0xff800000, v42, s2
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v106, v100, v101, v102
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v100, 0xff800000, v93, s2
	v_cndmask_b32_e64 v101, 0xff800000, v94, s2
	v_cndmask_b32_e64 v102, 0xff800000, v95, s2
	v_cndmask_b32_e64 v95, 0xff800000, v98, s2
	v_cndmask_b32_e64 v108, 0xff800000, v43, s2
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v93, v104, v105, v100
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v124, 0xff800000, v44, s2
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v94, v101, v102, v103
	v_max3_f32 v96, v55, v95, v56
.Ltmp10:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v97, 0xff800000, v52, s2
	v_cndmask_b32_e64 v98, 0xff800000, v54, s2
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v42, v107, v108, v124
.Ltmp12:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v99, 0xff800000, v50, s2
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v93, v93, v94, v96
.Ltmp14:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v94, 0xff800000, v41, s2
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v41, v45, v46
	v_max3_f32 v96, v47, v48, v49
	v_mov_b32_e32 v50, v59
.Ltmp16:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v41, v41, v94, v96
.Ltmp18:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v96, 0xff800000, v53, s2
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v41, v41, v42, v106
.Ltmp20:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v106, 0xff800000, v51, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v43, v96, v98 :: v_dual_max_f32 v42, v106, v97
	v_max3_f32 v42, v42, v99, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v41, v41, v93, v42
.Ltmp22:
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v93.h, 0
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v42, v41, s49, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v59, v50, v41, v42
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v41, v46, v59
	v_sub_f32_e32 v44, v47, v59
	v_sub_f32_e32 v46, v49, v59
	v_sub_f32_e32 v55, v55, v59
	v_sub_f32_e32 v96, v96, v59
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	v_exp_f32_e32 v44, v44
	v_exp_f32_e32 v46, v46
	v_exp_f32_e32 v55, v55
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v56, v56, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(TRANS32_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v56, v56
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v51, 0, v41, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v41.h, v93.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v42, v45, v59
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v54, 0, v44, s2
	v_cndmask_b32_e64 v126, 0, v46, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v93.l, v51.h
	v_cmp_o_f32_e64 s4, v51, v51
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v52, 0, v42, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v42, 1, v93
	v_mov_b16_e32 v93.l, v54.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v41.l, v52.h
	v_cmp_o_f32_e64 s5, v52, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v42, v51, v42, 0x7fff
	v_and_b32_e32 v44, 1, v93
	v_mov_b16_e32 v93.l, v126.h
	v_and_b32_e32 v41, 1, v41
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v51, v52, v51
.Ltmp26:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s4
	v_cmp_o_f32_e64 s4, v54, v54
	v_add3_u32 v44, v54, v44, 0x7fff
	v_add3_u32 v41, v52, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s4
	v_cndmask_b16 v42.l, 0x7fff, v41.h, s5
	v_cmp_o_f32_e64 s4, v126, v126
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v43, v42, s49, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v41, v43, v42, v75
	v_perm_b32 v42, v43, v42, v76
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v94, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v53, 0, v43, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v43.h, v93.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v43.l, v53.h
	v_cmp_o_f32_e64 s5, v53, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v52, v53, v54 :: v_dual_and_b32 v43, 1, v43
.Ltmp28:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v43, v53, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v44.l, 0x7fff, v43.h, s5
	v_permlanex16_b32 v45, v44, s49, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v43, v45, v44, v75
	v_perm_b32 v44, v45, v44, v76
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v45, v48, v59
	v_sub_f32_e32 v48, v108, v59
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v48, v48
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v125, 0, v45, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v45.h, v93.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v128, 0, v48, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v45.l, v125.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s5, v125, v125
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v53, v125, v126
.Ltmp30:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v45, v125, v45, 0x7fff
	v_cndmask_b16 v46.l, 0x7fff, v45.h, s5
	v_and_b32_e32 v45, 1, v93
	v_mov_b16_e64 v93.l, v128.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v45, v126, v45, 0x7fff
	v_cndmask_b16 v46.h, 0x7fff, v45.h, s4
	v_cmp_o_f32_e64 s4, v128, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v47, v46, s49, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v45, v47, v46, v75
	v_perm_b32 v46, v47, v46, v76
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v107, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v127, 0, v47, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v47.h, v93.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v47.l, v127.h
	v_cmp_o_f32_e64 s5, v127, v127
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v54, v127, v128 :: v_dual_and_b32 v47, 1, v47
.Ltmp32:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v47, v127, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v48.l, 0x7fff, v47.h, s5
	v_and_b32_e32 v47, 1, v93
	v_add3_u32 v47, v128, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v48.h, 0x7fff, v47.h, s4
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s4, 0xff800000, v50
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v49, v48, s49, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v47, v49, v48, v75
	v_perm_b32 v48, v49, v48, v76
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v49, v50, v59
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v50, v123, v59
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v50, v50
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v94, 0, v49, s4
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v49, 0, v77
	ds_load_b128 v[107:110], v49
	ds_load_b128 v[111:114], v86
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v94
	v_mul_f32_e32 v18, v18, v94
	v_mul_f32_e32 v19, v19, v94
	v_mul_f32_e32 v20, v20, v94
	v_mul_f32_e32 v21, v21, v94
	v_mul_f32_e32 v22, v22, v94
	v_mul_f32_e32 v23, v23, v94
	v_mul_f32_e32 v24, v24, v94
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[107:114], v[41:48], v[17:24]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v41, v124, v59
	v_sub_f32_e32 v42, v115, v59
	v_sub_f32_e32 v44, v117, v59
	v_sub_f32_e32 v48, v121, v59
	v_sub_f32_e32 v46, v119, v59
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v44, v44
	v_exp_f32_e32 v48, v48
	v_exp_f32_e32 v46, v46
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v107, 0, v41, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v41.h, v93.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v108, 0, v42, s2
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v110, 0, v44, s2
	v_cndmask_b32_e64 v114, 0, v48, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v41.l, v107.h
	v_cmp_o_f32_e64 s5, v107, v107
	v_mov_b16_e32 v93.l, v108.h
	v_cmp_o_f32_e64 s4, v108, v108
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v112, 0, v46, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v41, v107, v41, 0x7fff
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v107, v107, v108
.Ltmp34:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v42.l, 0x7fff, v41.h, s5
	v_and_b32_e32 v41, 1, v93
	v_mov_b16_e32 v93.l, v110.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v41, v108, v41, 0x7fff
	v_cndmask_b16 v42.h, 0x7fff, v41.h, s4
	v_cmp_o_f32_e64 s4, v110, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v43, v42, s49, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v41, v43, v42, v75
	v_perm_b32 v42, v43, v42, v76
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v116, v59
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v116, 0, v50, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v43, v43
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v109, 0, v43, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v43.h, v93.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v43.l, v109.h
	v_cmp_o_f32_e64 s5, v109, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v108, v109, v110 :: v_dual_and_b32 v43, 1, v43
	v_add_f32_e32 v107, v107, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v43, v109, v43, 0x7fff
	v_cndmask_b16 v44.l, 0x7fff, v43.h, s5
	v_and_b32_e32 v43, 1, v93
	v_mov_b16_e32 v93.l, v112.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v43, v110, v43, 0x7fff
	v_cndmask_b16 v44.h, 0x7fff, v43.h, s4
	v_cmp_o_f32_e64 s4, v112, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v45, v44, s49, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v43, v45, v44, v75
	v_perm_b32 v44, v45, v44, v76
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v45, v118, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v111, 0, v45, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v45.h, v93.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v45.l, v111.h
	v_cmp_o_f32_e64 s5, v111, v111
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v109, v111, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v45, 1, v45
	v_add3_u32 v45, v111, v45, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v46.l, 0x7fff, v45.h, s5
	v_and_b32_e32 v45, 1, v93
	v_mov_b16_e32 v93.l, v114.h
	v_add3_u32 v45, v112, v45, 0x7fff
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v112, v51, v52 :: v_dual_sub_f32 v51, v104, v59
.Ltmp40:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v52, v105, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v46.h, 0x7fff, v45.h, s4
	v_cmp_o_f32_e64 s4, v114, v114
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_exp_f32_e32 v52, v52
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v47, v46, s49, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_perm_b32 v45, v47, v46, v75
	v_perm_b32 v46, v47, v46, v76
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v120, v59
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v104, 0, v51, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v113, 0, v47, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v47.h, v93.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v47.l, v113.h
.Ltmp41:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v110, v113, v114
.Ltmp42:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s5, v113, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp43:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v108, v109, v110 :: v_dual_and_b32 v47, 1, v47
.Ltmp44:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v47, v113, v47, 0x7fff
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v113, v53, v54
.Ltmp46:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v54, 0, v52, s2
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v52, v101, v59
	v_sub_f32_e32 v53, v102, v59
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v48.l, 0x7fff, v47.h, s5
	v_and_b32_e32 v47, 1, v93
.Ltmp47:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v51, v104, v54
.Ltmp48:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v53, v53
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v93.l, v116.h
	v_add3_u32 v47, v114, v47, 0x7fff
	v_cmp_o_f32_e64 s10, v54, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_cndmask_b16 v48.h, 0x7fff, v47.h, s4
	v_cmp_o_f32_e64 s4, v116, v116
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v52, 0, v52, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v102, 0, v53, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v49, v48, s49, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s11, v52, v52
	v_perm_b32 v47, v49, v48, v75
	v_perm_b32 v48, v49, v48, v76
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v49, v122, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v49, v49
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v115, 0, v49, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v49.h, v93.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
.Ltmp49:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v111, v115, v116
.Ltmp50:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v49.l, v115.h
	v_cmp_o_f32_e64 s5, v115, v115
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v105, v111, v51
.Ltmp52:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v51, v100, v59
	v_sub_f32_e32 v100, v103, v59
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v103, 0, v55, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v51, v51
	v_exp_f32_e32 v100, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v103, v103
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v101, 0, v51, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v51, 0, v100, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v49, 1, v49
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v53, v101, v52 :: v_dual_add_f32 v100, v102, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp54:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v49, v115, v49, 0x7fff
	v_cmp_o_f32_e64 s12, v51, v51
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v100, v53, v100
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp56:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v50.l, 0x7fff, v49.h, s5
	v_and_b32_e32 v49, 1, v93
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v53, v95, v59
	v_sub_f32_e32 v95, v106, v59
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v106, 0, v56, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s5, v102, v102
	v_add3_u32 v49, v116, v49, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v53, v53
	v_exp_f32_e32 v95, v95
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v93.l, v54.h
	v_cmp_o_f32_e64 s7, v106, v106
	v_cndmask_b16 v50.h, 0x7fff, v49.h, s4
	v_cmp_o_f32_e64 s4, v101, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_permlanex16_b32 v117, v50, s49, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v53, 0, v53, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v55, 0, v95, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v49, v117, v50, v75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v56, v103, v53 :: v_dual_add_f32 v95, v106, v55
.Ltmp58:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s13, v53, v53
	v_cmp_o_f32_e64 s14, v55, v55
	v_perm_b32 v50, v117, v50, v76
.Ltmp59:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v109, v56, v95
.Ltmp60:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v56, v99, v59
	v_sub_f32_e32 v95, v97, v59
	v_sub_f32_e32 v97, v98, v59
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v98, v96
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v99.h, v93.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v56, v56
	v_exp_f32_e32 v95, v95
	v_exp_f32_e32 v97, v97
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v99.l, v102.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_and_b32_e32 v99, 1, v99
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v96, 0, v56, s2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v110, 0, v95, s2
	v_cndmask_b32_e64 v95, 0, v97, s2
	v_cndmask_b32_e64 v56, 0, v98, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s2, v104, v104
	v_add3_u32 v99, v102, v99, 0x7fff
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v97, v110, v96
	v_add_f32_e32 v102, v107, v108
	v_add_f32_e32 v98, v56, v95
.Ltmp62:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v107.h, v93.h
	v_mov_b16_e32 v107.l, v56.h
	v_cmp_o_f32_e64 s9, v56, v56
	v_cmp_o_f32_e64 s8, v110, v110
.Ltmp63:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v111, v97, v98
.Ltmp64:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v97.h, v93.h
	v_mov_b16_e32 v97.l, v104.h
	v_mov_b16_e32 v98.h, v93.h
	v_mov_b16_e32 v98.l, v101.h
	v_and_b32_e32 v107, 1, v107
	v_cmp_o_f32_e64 s15, v96, v96
	v_and_b32_e32 v97, 1, v97
	v_cmp_o_f32_e64 s16, v95, v95
	v_and_b32_e32 v98, 1, v98
	v_add3_u32 v56, v56, v107, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v97, v104, v97, 0x7fff
.Ltmp65:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v104, v105, v100
.Ltmp66:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v100.h, v93.h
	v_mov_b16_e32 v100.l, v103.h
	v_add3_u32 v98, v101, v98, 0x7fff
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v105, v109, v111
.Ltmp68:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v97.l, 0x7fff, v99.h, s5
	v_cndmask_b16 v108.l, 0x7fff, v56.h, s9
.Ltmp69:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v101, v112, v113 :: v_dual_and_b32 v100, 1, v100
.Ltmp70:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v56.l, 0x7fff, v98.h, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v100, v103, v100, 0x7fff
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v101, v101, v102 :: v_dual_add_f32 v102, v104, v105
	v_mov_b32_e32 v104, v78
.Ltmp72:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v103.h, v93.h
	v_mov_b16_e32 v103.l, v106.h
	v_cndmask_b16 v105.l, 0x7fff, v100.h, s6
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v101, v101, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp74:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v103, 1, v103
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v78, v101, s49, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp76:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v103, v106, v103, 0x7fff
	v_mov_b16_e32 v106.h, v93.h
.Ltmp77:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v78, v101, v78 :: v_dual_and_b32 v101, 1, v93
.Ltmp78:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v93.l, v52.h
	v_mov_b16_e32 v106.l, v110.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v78, v104, v94
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v54, v54, v101, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v101, 1, v93
	v_mov_b16_e32 v93.l, v51.h
	v_cndmask_b16 v54.l, 0x7fff, v97.h, s2
	v_and_b32_e32 v106, 1, v106
	v_cndmask_b16 v54.h, 0x7fff, v54.h, s10
	v_add3_u32 v52, v52, v101, 0x7fff
	v_and_b32_e32 v98, 1, v93
	v_mov_b16_e32 v93.l, v53.h
	v_add3_u32 v106, v110, v106, 0x7fff
	v_cndmask_b16 v106.l, 0x7fff, v103.h, s7
	v_cndmask_b16 v56.h, 0x7fff, v52.h, s11
	v_permlanex16_b32 v52, v54, s49, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v98, v51, v98, 0x7fff
	v_and_b32_e32 v99, 1, v93
	v_mov_b16_e32 v93.l, v55.h
	v_cndmask_b16 v107.l, 0x7fff, v106.h, s8
	v_perm_b32 v51, v52, v54, v75
	v_perm_b32 v52, v52, v54, v76
	v_permlanex16_b32 v54, v56, s49, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v97.h, 0x7fff, v98.h, s12
	v_and_b32_e32 v98, 1, v93
	v_mov_b16_e32 v93.l, v96.h
	v_add3_u32 v99, v53, v99, 0x7fff
	v_perm_b32 v53, v54, v56, v75
	v_perm_b32 v54, v54, v56, v76
	v_permlanex16_b32 v56, v97, s49, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v100, 1, v93
	v_add3_u32 v98, v55, v98, 0x7fff
	v_cndmask_b16 v105.h, 0x7fff, v99.h, s13
	v_mov_b16_e32 v93.l, v95.h
	v_perm_b32 v55, v56, v97, v75
	v_perm_b32 v56, v56, v97, v76
	v_add3_u32 v109, v96, v100, 0x7fff
	v_cndmask_b16 v106.h, 0x7fff, v98.h, s14
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[96:99], v87
	ds_load_b128 v[100:103], v88
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v93, 1, v93
	v_cndmask_b16 v107.h, 0x7fff, v109.h, s15
	v_permlanex16_b32 v109, v106, s49, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v93, v95, v93, 0x7fff
	v_cndmask_b16 v108.h, 0x7fff, v93.h, s16
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[96:103], v[41:48], v[17:24]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[41:44], v89
	ds_load_b128 v[45:48], v90
	ds_load_b128 v[95:98], v91
	ds_load_b128 v[99:102], v92
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v103, v105, s49, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[41:48], v[49:56], v[17:24]
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v46, v107, s49, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v48, v108, s49, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v41, v103, v105, v75
	v_perm_b32 v42, v103, v105, v76
	v_perm_b32 v43, v109, v106, v75
	v_perm_b32 v44, v109, v106, v76
	v_perm_b32 v45, v46, v107, v75
	v_perm_b32 v46, v46, v107, v76
	v_perm_b32 v47, v48, v108, v75
	v_perm_b32 v48, v48, v108, v76
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[95:102], v[41:48], v[17:24]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v59, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v23, v24
	v_mov_b32_e32 v22, v24
	v_mov_b32_e32 v21, v24
	v_mov_b32_e32 v20, v24
	v_mov_b32_e32 v19, v24
	v_mov_b32_e32 v18, v24
	v_mov_b32_e32 v17, v24
	v_mov_b32_e32 v78, v24
.LBB0_4:                                ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v61
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s30, s30, s3
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s19, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s17, s30
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s2, exec_lo
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v1, 0xff800000, v59 :: v_dual_cndmask_b32 v4, 0, v17
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v5, 0, v18 :: v_dual_cndmask_b32 v12, 0, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v13, 0, v22 :: v_dual_mov_b32 v2, v1
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v3, 0, v78, vcc_lo
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_cndmask_b32 v6, 0, v19
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v8, v4
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v7, v3
.Ltmp83:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v11, 0, v20 :: v_dual_cndmask_b32 v14, 0, v23
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_cndmask_b32 v15, 0, v24
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v9, v5
.Ltmp87:
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v4, v8 :: v_dual_max_f32 v1, v1, v2
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v2, v6
.Ltmp90:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	v_mov_b32_e32 v19, v14
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp92:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v3, v3, v7
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v7, v4
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v6, v2
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v6, v3
.Ltmp96:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v10, v1
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v5, v5, v9
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp99:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp101:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v10, v10
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v2
	v_mov_b32_e32 v8, v5
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp103:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v1, v9
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v1, v3, v6
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v4, v7 :: v_dual_add_f32 v2, v2, v10
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v6, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v4, v5, v8
.Ltmp109:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v5, v9 :: v_dual_mov_b32 v8, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp111:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v2
.Ltmp112:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp113:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v4
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v1, v6
.Ltmp115:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp116:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v5, v5, v5
.Ltmp117:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp118:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v5
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v3, v8
	v_dual_add_f32 v3, v4, v10 :: v_dual_add_f32 v4, v2, v16
.Ltmp120:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v16, v11
.Ltmp121:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v8, v7
.Ltmp122:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v10, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp123:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v2, v1 :: v_dual_mov_b32 v5, v3
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_e32 v6, v4
.Ltmp124:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp125:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp126:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v16
.Ltmp127:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v15
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp128:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp129:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp130:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v13, v18
.Ltmp131:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp132:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v15, v15, v20
	v_dual_add_f32 v14, v14, v19 :: v_dual_mov_b32 v17, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp133:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v16, v11 :: v_dual_mov_b32 v19, v14
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp134:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v16
.Ltmp135:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp136:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v17, v14, v19
.Ltmp137:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp138:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v16, v13, v18 :: v_dual_mov_b32 v13, v11
.Ltmp139:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v14, v12 :: v_dual_mov_b32 v19, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp140:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v11, v13
	v_dual_add_f32 v18, v15, v20 :: v_dual_mov_b32 v15, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v13, v12, v14 :: v_dual_mov_b32 v12, v11
.Ltmp141:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v14, v16, v15
	v_add_f32_e32 v15, v17, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp143:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v16, v13 :: v_dual_add_f32 v17, v18, v20
	v_dual_mov_b32 v18, v14 :: v_dual_mov_b32 v19, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp144:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp145:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v9, v9, v9
.Ltmp146:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp147:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v8
.Ltmp148:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp149:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v9, v10
.Ltmp150:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_mov_b32_e32 v9, 0
	s_add_u32 s4, s28, s4
	s_addc_u32 s5, s29, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp151:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
	v_dual_add_f32 v8, v14, v18 :: v_dual_lshlrev_b32 v15, 2, v0
	v_add_f32_e32 v7, v13, v16
	v_dual_add_f32 v14, v11, v12 :: v_dual_add_f32 v13, v4, v6
	v_dual_add_f32 v12, v3, v5 :: v_dual_lshlrev_b32 v3, 5, v0
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xc0, v15
.Ltmp152:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v5, 0xe0, v60
	v_and_b32_e32 v1, 28, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v2, 32, v3
	v_add_nc_u32_e32 v3, 0, v4
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v4, 0, v5
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v5, 63, v0
	.loc	1 1038 13                       ; attention.py:1038:13
	s_barrier
	v_add3_u32 v1, v3, v2, v1
	ds_store_b128 v4, v[11:14]
	ds_store_b128 v4, v[7:10] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_and_b32_e32 v0, 64, v0
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v2, s0, v5
	.loc	1 1041 22                       ; attention.py:1041:22
	v_cmp_gt_i32_e32 vcc_lo, s19, v5
	.loc	1 1038 13                       ; attention.py:1038:13
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s31, 0x31027000
	v_cmp_eq_u32_e64 s0, 0, v0
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[28:31], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp153:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
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
		.amdhsa_next_free_vgpr 149
		.amdhsa_next_free_sgpr 50
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
		.amdhsa_inst_pref_size 55
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.num_vgpr, 149
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.numbered_sgpr, 50
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6964
; TotalNumSgprs: 52
; NumVgprs: 149
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 52
; NumVGPRsForWavesPerEU: 149
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
	.byte	1                               ; Abbrev [1] 0xb:0xbd DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x97 DW_TAG_subprogram
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
	.byte	4                               ; Abbrev [4] 0x76:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1027                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x83:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x90:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1032                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x9d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xab:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xb8:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
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
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
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
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     149
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
